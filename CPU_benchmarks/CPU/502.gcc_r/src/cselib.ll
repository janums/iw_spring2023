; ModuleID = 'cselib.bc'
source_filename = "cselib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.cselib_val_struct = type { i32, i32, %struct.rtx_def*, %struct.elt_loc_list*, %struct.elt_list*, %struct.cselib_val_struct* }
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
%struct.elt_loc_list = type { %struct.elt_loc_list*, %struct.rtx_def*, %struct.rtx_def* }
%struct.elt_list = type { %struct.elt_list*, %struct.cselib_val_struct* }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, void ()*, i8 (i64, i8*, i32)*, void ()*, i32 ()*, i32 ()*, i32 ()*, i32 ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void ()*, %union.tree_node* (i32, i8)*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, %union.tree_node* (i32, %union.tree_node*, i8*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, i8)*, %union.tree_node* (i32, i8, i8)*, i8* (%union.tree_node*)*, void ()*, i32 (%union.tree_node*, i8*, i32)*, i8 ()*, i32 ()*, i8 (i8)*, i8 ()*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, i8 (i32, %struct.rtx_def*, i8)*, i8 (i32, %struct.rtx_def*)*, i64, i64, i8 (%struct.rtx_def*)*, i8 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*, i32)*, i8* (i8*)*, i64 (i32)*, i32 (i32)*, i32 (i32, i32)*, i8 (i32)*, %struct.addr_space, i8 (i32)*, i8 (i32)*, i8 (%struct.rtx_def*, i32, i32, i32*, i8)*, i32 (%struct.rtx_def*, i8)*, %struct.rtx_def* (%struct.rtx_def*)*, i32 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, void (%union.tree_node*)*, i8 (i32*, i32*)*, i32 (i32, i32)*, void ()*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, i8* (i64*)*, i8* (i8*, i64)*, i8* (i32)*, i8 ()*, %struct.rtx_def* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*)*, void (i8*, %struct.rtx_def*, i32)*, i8 (%struct.stdarg_info*, %union.gimple_statement_d*)*, %union.tree_node* ()*, %union.tree_node* ()*, i8* (%struct.rtx_def*)*, i8 (%union.tree_node*)*, i64, %struct.calls, i8* (%union.tree_node*, %union.tree_node*)*, i8* (i32, %union.tree_node*)*, i8* (i32, %union.tree_node*, %union.tree_node*)*, i8* (%union.tree_node*)*, i8* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i32* ()*, i32 (i8, %struct.rtx_def*, i32, i32, %struct.secondary_reload_info*)*, void ()*, void ()*, i8 (i32)*, i32 ()*, i8 ()*, i8 (i32, i32)*, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, void (%struct.bitmap_head_def*)*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i8 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i8*)*, void (%struct._IO_FILE*, %union.tree_node*)*, void (%struct._IO_FILE*, %union.tree_node*, i32, i32)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, %struct.rtx_def*)*, void (%struct._IO_FILE*, i8*, i64)*, i8 (%struct.rtx_def*)*, void (%union.tree_node*, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void ()*, void (i8*, i32, %union.tree_node*)*, i32 ()*, %union.section* (%union.tree_node*, i32, i64)*, %union.section* (i32, %struct.rtx_def*, i64)*, void (%union.tree_node*, i32)*, %union.section* (%union.tree_node*)*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i64, i64, %union.tree_node*)*, i8 (%union.tree_node*, i64, i64, %union.tree_node*)*, void ()*, void ()*, void ()*, void (%struct.rtx_def*)*, void (i8*)*, i32 (i32, i8*)*, i8*, void (%struct.rtx_def*)*, void (%struct._IO_FILE*, i32, %struct.rtx_def*)*, void (%struct._IO_FILE*, %struct.rtx_def*, %struct.rtx_def**, i32)*, void (%struct._IO_FILE*)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
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
%struct.gimple_seq_d = type opaque
%struct.gimple_df = type opaque
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
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
%struct.alloc_pool_def = type { i8*, i64, %struct.alloc_pool_list_def*, i8*, i64, i64, i64, i64, %struct.alloc_pool_list_def*, i64, i64 }
%struct.alloc_pool_list_def = type { %struct.alloc_pool_list_def* }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.cselib_set = type { %struct.rtx_def*, %struct.rtx_def*, %struct.cselib_val_struct*, %struct.cselib_val_struct* }
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.expand_value_data = type { %struct.bitmap_head_def*, %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)*, i8*, i8 }
%struct.mem_attrs = type { %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32, i8 }
%struct.real_value = type { i32, [3 x i64] }
%struct.fixed_value = type { %struct.double_int, i32 }
%struct.double_int = type { i64, i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@max_value_regs = internal unnamed_addr global i32 0, align 4, !dbg !0
@cfa_base_preserved_val = internal unnamed_addr global %struct.cselib_val_struct* null, align 8, !dbg !1750
@n_used_regs = internal unnamed_addr global i32 0, align 4, !dbg !1744
@used_regs = internal unnamed_addr global i32* null, align 8, !dbg !1742
@reg_values = internal unnamed_addr global %struct.elt_list** null, align 8, !dbg !1738
@.str = private unnamed_addr constant [9 x i8] c"cselib.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@hard_regno_nregs = external dso_local local_unnamed_addr global [53 x [87 x i8]], align 16
@cselib_preserve_constants = internal unnamed_addr global i8 0, align 1, !dbg !1722
@cselib_hash_table = internal unnamed_addr global %struct.htab* null, align 8, !dbg !1724
@n_useless_values = internal unnamed_addr global i32 0, align 4, !dbg !1732
@n_useless_debug_values = internal unnamed_addr global i32 0, align 4, !dbg !1734
@n_debug_values = internal unnamed_addr global i32 0, align 4, !dbg !1736
@next_uid = internal unnamed_addr global i32 0, align 4, !dbg !1728
@dummy_val = internal global %struct.cselib_val_struct zeroinitializer, align 8, !dbg !1748
@first_containing_mem = internal unnamed_addr global %struct.cselib_val_struct* @dummy_val, align 8, !dbg !1798
@rtx_format = external dso_local local_unnamed_addr constant [139 x i8*], align 16
@rtx_length = external dso_local local_unnamed_addr constant [139 x i8], align 16
@reg_raw_mode = external dso_local local_unnamed_addr global [53 x i32], align 16
@callmem = internal global %struct.rtx_def* null, align 8, !dbg !1746
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@cselib_current_insn = internal unnamed_addr global %struct.rtx_def* null, align 8, !dbg !1726
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"cselib lookup \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" => %u:%u\0A\00", align 1
@global_rtl = external dso_local local_unnamed_addr global [11 x %struct.rtx_def*], align 16
@call_used_regs = external dso_local local_unnamed_addr global [53 x i8], align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"elt_list\00", align 1
@elt_list_pool = internal unnamed_addr global %struct.alloc_pool_def* null, align 8, !dbg !1775
@.str.5 = private unnamed_addr constant [13 x i8] c"elt_loc_list\00", align 1
@elt_loc_list_pool = internal unnamed_addr global %struct.alloc_pool_def* null, align 8, !dbg !1752
@.str.6 = private unnamed_addr constant [16 x i8] c"cselib_val_list\00", align 1
@cselib_val_pool = internal unnamed_addr global %struct.alloc_pool_def* null, align 8, !dbg !1777
@.str.7 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@rtx_code_size = external dso_local local_unnamed_addr constant [139 x i8], align 16
@value_pool = internal unnamed_addr global %struct.alloc_pool_def* null, align 8, !dbg !1779
@cselib_record_memory = internal unnamed_addr global i8 0, align 1, !dbg !1720
@cselib_nregs = internal unnamed_addr global i32 0, align 4, !dbg !1730
@reg_values_size = internal unnamed_addr global i32 0, align 4, !dbg !1740
@cselib_discard_hook = common dso_local local_unnamed_addr global void (%struct.cselib_val_struct*)* null, align 8, !dbg !1781
@.str.8 = private unnamed_addr constant [20 x i8] c"cselib hash table:\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"first mem \00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"next uid %i\0A\00", align 1
@gt_ggc_r_gt_cselib_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%struct.rtx_def** @callmem to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_rtx_def, void (i8*)* @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !1706
@cselib_record_sets_hook = common dso_local local_unnamed_addr global void (%struct.rtx_def*, %struct.cselib_set*, i32)* null, align 8, !dbg !1786
@rtx_class = external dso_local local_unnamed_addr constant [139 x i32], align 16
@values_became_useless = internal unnamed_addr global i1 false, align 4, !dbg !1802
@.str.11 = private unnamed_addr constant [22 x i8] c"expanding: r%d into: \00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"\0Aexpanding \00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c" into...\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"r%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@flag_float_store = external dso_local local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"cselib value %u:%u \00", align 1
@flag_dump_noaddr = external dso_local local_unnamed_addr global i32, align 4
@flag_dump_unnumbered = external dso_local local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"# \00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%p \00", align 1
@reload_completed = external dso_local local_unnamed_addr global i32, align 4
@reg_renumber = external dso_local local_unnamed_addr global i16*, align 8
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@.str.20 = private unnamed_addr constant [7 x i8] c" locs:\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"\0A  from insn %i \00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c" no locs\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c" addr list:\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c" no addrs\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c" last mem\0A\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c" next mem \00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1807 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1820, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1821, metadata !DIExpression()), !dbg !1822
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1823
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1824
  ret i32 %call, !dbg !1825
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1826 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1830
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1831
  ret i32 %call, !dbg !1832
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1833 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1837, metadata !DIExpression()), !dbg !1838
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1839
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1839
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1839
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1839
  %cmp = icmp uge i8* %0, %1, !dbg !1839
  %conv1 = zext i1 %cmp to i64, !dbg !1839
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1839
  %tobool = icmp eq i64 %expval, 0, !dbg !1839
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1839

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1839
  br label %cond.end, !dbg !1839

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1839
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1839
  %2 = load i8, i8* %0, align 1, !dbg !1839
  %conv3 = zext i8 %2 to i32, !dbg !1839
  br label %cond.end, !dbg !1839

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1839
  ret i32 %cond, !dbg !1840
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1841 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1843, metadata !DIExpression()), !dbg !1844
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1845
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1845
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1845
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1845
  %cmp = icmp uge i8* %0, %1, !dbg !1845
  %conv1 = zext i1 %cmp to i64, !dbg !1845
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1845
  %tobool = icmp eq i64 %expval, 0, !dbg !1845
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1845

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1845
  br label %cond.end, !dbg !1845

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1845
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1845
  %2 = load i8, i8* %0, align 1, !dbg !1845
  %conv3 = zext i8 %2 to i32, !dbg !1845
  br label %cond.end, !dbg !1845

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1845
  ret i32 %cond, !dbg !1846
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1847 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1848
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1848
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1848
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1848
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1848
  %cmp = icmp uge i8* %1, %2, !dbg !1848
  %conv1 = zext i1 %cmp to i64, !dbg !1848
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1848
  %tobool = icmp eq i64 %expval, 0, !dbg !1848
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1848

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1848
  br label %cond.end, !dbg !1848

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1848
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1848
  %3 = load i8, i8* %1, align 1, !dbg !1848
  %conv3 = zext i8 %3 to i32, !dbg !1848
  br label %cond.end, !dbg !1848

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1848
  ret i32 %cond, !dbg !1849
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1850 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1854, metadata !DIExpression()), !dbg !1855
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1856
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1857
  ret i32 %call, !dbg !1858
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1859 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1863, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1864, metadata !DIExpression()), !dbg !1865
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1866
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1866
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1866
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1866
  %cmp = icmp uge i8* %0, %1, !dbg !1866
  %conv1 = zext i1 %cmp to i64, !dbg !1866
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1866
  %tobool = icmp eq i64 %expval, 0, !dbg !1866
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1866

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1866
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1866
  br label %cond.end, !dbg !1866

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1866
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1866
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1866
  store i8 %conv2, i8* %0, align 1, !dbg !1866
  %conv6 = and i32 %__c, 255, !dbg !1866
  br label %cond.end, !dbg !1866

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1866
  ret i32 %cond, !dbg !1867
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1868 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1870, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1871, metadata !DIExpression()), !dbg !1872
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1873
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1873
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1873
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1873
  %cmp = icmp uge i8* %0, %1, !dbg !1873
  %conv1 = zext i1 %cmp to i64, !dbg !1873
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1873
  %tobool = icmp eq i64 %expval, 0, !dbg !1873
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1873

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1873
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1873
  br label %cond.end, !dbg !1873

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1873
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1873
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1873
  store i8 %conv2, i8* %0, align 1, !dbg !1873
  %conv6 = and i32 %__c, 255, !dbg !1873
  br label %cond.end, !dbg !1873

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1873
  ret i32 %cond, !dbg !1874
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1875 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1877, metadata !DIExpression()), !dbg !1878
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1879
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1879
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1879
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1879
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1879
  %cmp = icmp uge i8* %1, %2, !dbg !1879
  %conv1 = zext i1 %cmp to i64, !dbg !1879
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1879
  %tobool = icmp eq i64 %expval, 0, !dbg !1879
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1879

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1879
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1879
  br label %cond.end, !dbg !1879

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1879
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1879
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1879
  store i8 %conv4, i8* %1, align 1, !dbg !1879
  %conv6 = and i32 %__c, 255, !dbg !1879
  br label %cond.end, !dbg !1879

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1879
  ret i32 %cond, !dbg !1880
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1881 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1887, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1888, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1889, metadata !DIExpression()), !dbg !1890
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1891
  ret i64 %call, !dbg !1892
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1893 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1895, metadata !DIExpression()), !dbg !1896
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1897
  %0 = load i32, i32* %_flags, align 8, !dbg !1897
  %and = lshr i32 %0, 4, !dbg !1897
  %and.lobit = and i32 %and, 1, !dbg !1897
  ret i32 %and.lobit, !dbg !1898
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1899 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1901, metadata !DIExpression()), !dbg !1902
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1903
  %0 = load i32, i32* %_flags, align 8, !dbg !1903
  %and = lshr i32 %0, 5, !dbg !1903
  %and.lobit = and i32 %and, 1, !dbg !1903
  ret i32 %and.lobit, !dbg !1904
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1905 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1908, metadata !DIExpression()), !dbg !1909
  %__c.off = add i32 %__c, 128, !dbg !1910
  %0 = icmp ult i32 %__c.off, 384, !dbg !1910
  br i1 %0, label %cond.true, label %cond.end, !dbg !1910

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1911
  %1 = load i32*, i32** %call, align 8, !dbg !1912
  %idxprom = sext i32 %__c to i64, !dbg !1913
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1913
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1913
  br label %cond.end, !dbg !1914

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1914
  ret i32 %cond, !dbg !1915
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1916 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1918, metadata !DIExpression()), !dbg !1919
  %__c.off = add i32 %__c, 128, !dbg !1920
  %0 = icmp ult i32 %__c.off, 384, !dbg !1920
  br i1 %0, label %cond.true, label %cond.end, !dbg !1920

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1921
  %1 = load i32*, i32** %call, align 8, !dbg !1922
  %idxprom = sext i32 %__c to i64, !dbg !1923
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1923
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1923
  br label %cond.end, !dbg !1924

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1924
  ret i32 %cond, !dbg !1925
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1926 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1931, metadata !DIExpression()), !dbg !1932
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1933
  %conv = trunc i64 %call to i32, !dbg !1934
  ret i32 %conv, !dbg !1935
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1936 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1940, metadata !DIExpression()), !dbg !1941
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1942
  ret i64 %call, !dbg !1943
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1944 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1949, metadata !DIExpression()), !dbg !1950
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1951
  ret i64 %call, !dbg !1952
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1953 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1959, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1960, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1961, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1962, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1963, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 0, metadata !1964, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1965, metadata !DIExpression()), !dbg !1969
  br label %while.cond, !dbg !1970

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1971
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1969
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1965, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1964, metadata !DIExpression()), !dbg !1969
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1972
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1970

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1973
  %div = lshr i64 %add, 1, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %div, metadata !1966, metadata !DIExpression()), !dbg !1969
  %mul = mul i64 %div, %__size, !dbg !1976
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1977
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1967, metadata !DIExpression()), !dbg !1969
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1978
  call void @llvm.dbg.value(metadata i32 %call, metadata !1968, metadata !DIExpression()), !dbg !1969
  %cmp1 = icmp slt i32 %call, 0, !dbg !1979
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1981

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1982
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1984

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1985
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1964, metadata !DIExpression()), !dbg !1969
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1969
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1969
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1965, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1964, metadata !DIExpression()), !dbg !1969
  br label %while.cond, !dbg !1970, !llvm.loop !1986

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1969
  ret i8* %retval.0, !dbg !1988
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1989 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1995, metadata !DIExpression()), !dbg !1996
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1997
  ret double %call, !dbg !1998
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1999 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2008, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2009, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i32 %base, metadata !2010, metadata !DIExpression()), !dbg !2011
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2012
  ret i64 %call, !dbg !2013
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2014 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2020, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2021, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i32 %base, metadata !2022, metadata !DIExpression()), !dbg !2023
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2024
  ret i64 %call, !dbg !2025
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2026 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2037, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2038, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 %base, metadata !2039, metadata !DIExpression()), !dbg !2040
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2041
  ret i64 %call, !dbg !2042
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2043 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2047, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2048, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 %base, metadata !2049, metadata !DIExpression()), !dbg !2050
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2051
  ret i64 %call, !dbg !2052
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2053 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2093, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2094, metadata !DIExpression()), !dbg !2095
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2096
  ret i32 %call, !dbg !2097
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2098 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2100, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2101, metadata !DIExpression()), !dbg !2102
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2103
  ret i32 %call, !dbg !2104
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2105 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2109, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2110, metadata !DIExpression()), !dbg !2111
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2112
  ret i32 %call, !dbg !2113
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2114 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2118, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2119, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2120, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2121, metadata !DIExpression()), !dbg !2122
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2123
  ret i32 %call, !dbg !2124
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2125 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2129, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2130, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2131, metadata !DIExpression()), !dbg !2132
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2131, metadata !DIExpression(DW_OP_deref)), !dbg !2132
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2133
  ret i32 %call, !dbg !2134
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2135 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2139, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2140, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2141, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2142, metadata !DIExpression()), !dbg !2143
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2142, metadata !DIExpression(DW_OP_deref)), !dbg !2143
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2144
  ret i32 %call, !dbg !2145
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2146 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2170, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2171, metadata !DIExpression()), !dbg !2172
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2173
  ret i32 %call, !dbg !2174
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2175 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2177, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2178, metadata !DIExpression()), !dbg !2179
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2180
  ret i32 %call, !dbg !2181
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2182 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2186, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2187, metadata !DIExpression()), !dbg !2188
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2189
  ret i32 %call, !dbg !2190
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2191 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2195, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2196, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2197, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2198, metadata !DIExpression()), !dbg !2199
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2200
  ret i32 %call, !dbg !2201
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @cselib_clear_table() local_unnamed_addr #5 !dbg !2202 {
entry:
  tail call void @cselib_reset_table(i32 1) #7, !dbg !2205
  ret void, !dbg !2206
}

; Function Attrs: nounwind uwtable
define dso_local void @cselib_reset_table(i32 %num) local_unnamed_addr #5 !dbg !2207 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !2211, metadata !DIExpression()), !dbg !2217
  store i32 0, i32* @max_value_regs, align 4, !dbg !2218
  %0 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** @cfa_base_preserved_val, align 8, !dbg !2219
  %tobool = icmp eq %struct.cselib_val_struct* %0, null, !dbg !2219
  br i1 %tobool, label %for.cond16.preheader, label %if.then, !dbg !2220

for.cond16.preheader:                             ; preds = %entry
  %.pre1 = load i32, i32* @n_used_regs, align 4, !dbg !2221
  %wide.trip.count = zext i32 %.pre1 to i64, !dbg !2225
  br label %for.cond16, !dbg !2226

if.then:                                          ; preds = %entry
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %0, i64 0, i32 3, !dbg !2227
  %1 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !2227
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %1, i64 0, i32 1, !dbg !2227
  %2 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !2227
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %2) #7, !dbg !2227
  call void @llvm.dbg.value(metadata i32 %call, metadata !2213, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i32 0, metadata !2216, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i32 0, metadata !2212, metadata !DIExpression()), !dbg !2217
  %.pre = load i32, i32* @n_used_regs, align 4, !dbg !2229
  %wide.trip.count4 = zext i32 %.pre to i64, !dbg !2232
  br label %for.cond, !dbg !2233

for.cond:                                         ; preds = %for.inc, %if.then
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc ], [ 0, %if.then ], !dbg !2234
  %new_used_regs.0 = phi i32 [ %new_used_regs.1, %for.inc ], [ 0, %if.then ], !dbg !2228
  call void @llvm.dbg.value(metadata i32 %new_used_regs.0, metadata !2216, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !2212, metadata !DIExpression()), !dbg !2217
  %exitcond5 = icmp eq i64 %indvars.iv2, %wide.trip.count4, !dbg !2232
  br i1 %exitcond5, label %for.end, label %for.body, !dbg !2235

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** @used_regs, align 8, !dbg !2236
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %indvars.iv2, !dbg !2236
  %4 = load i32, i32* %arrayidx, align 4, !dbg !2236
  %cmp1 = icmp eq i32 %4, %call, !dbg !2238
  br i1 %cmp1, label %for.inc, label %if.else, !dbg !2239

if.else:                                          ; preds = %for.body
  %5 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !2240
  %idxprom5 = zext i32 %4 to i64, !dbg !2240
  %arrayidx6 = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %5, i64 %idxprom5, !dbg !2240
  store %struct.elt_list* null, %struct.elt_list** %arrayidx6, align 8, !dbg !2241
  br label %for.inc, !dbg !2242

for.inc:                                          ; preds = %for.body, %if.else
  %new_used_regs.1 = phi i32 [ %new_used_regs.0, %if.else ], [ 1, %for.body ], !dbg !2228
  call void @llvm.dbg.value(metadata i32 %new_used_regs.1, metadata !2216, metadata !DIExpression()), !dbg !2228
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !2243
  br label %for.cond, !dbg !2244, !llvm.loop !2245

for.end:                                          ; preds = %for.cond
  %new_used_regs.0.lcssa = phi i32 [ %new_used_regs.0, %for.cond ], !dbg !2228
  call void @llvm.dbg.value(metadata i32 %new_used_regs.0.lcssa, metadata !2216, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i32 %new_used_regs.0.lcssa, metadata !2216, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i32 %new_used_regs.0.lcssa, metadata !2216, metadata !DIExpression()), !dbg !2228
  %cmp7 = icmp eq i32 %new_used_regs.0.lcssa, 1, !dbg !2247
  br i1 %cmp7, label %cond.end, label %cond.true, !dbg !2247

cond.true:                                        ; preds = %for.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 351, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2247
  br label %cond.end, !dbg !2247

cond.end:                                         ; preds = %for.end, %cond.true
  store i32 %new_used_regs.0.lcssa, i32* @n_used_regs, align 4, !dbg !2248
  %6 = load i32*, i32** @used_regs, align 8, !dbg !2249
  store i32 %call, i32* %6, align 4, !dbg !2250
  %idxprom9 = zext i32 %call to i64, !dbg !2251
  %7 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** @cfa_base_preserved_val, align 8, !dbg !2252
  %locs11 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %7, i64 0, i32 3, !dbg !2252
  %8 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs11, align 8, !dbg !2252
  %loc12 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %8, i64 0, i32 1, !dbg !2252
  %9 = bitcast %struct.rtx_def** %loc12 to i32**, !dbg !2252
  %10 = load i32*, i32** %9, align 8, !dbg !2252
  %bf.load = load i32, i32* %10, align 8, !dbg !2252
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2252
  %bf.clear = and i32 %bf.lshr, 255, !dbg !2252
  %idxprom13 = zext i32 %bf.clear to i64, !dbg !2251
  %arrayidx14 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom9, i64 %idxprom13, !dbg !2251
  %11 = load i8, i8* %arrayidx14, align 1, !dbg !2251
  %conv = zext i8 %11 to i32, !dbg !2251
  store i32 %conv, i32* @max_value_regs, align 4, !dbg !2253
  br label %if.end27, !dbg !2254

for.cond16:                                       ; preds = %for.cond16.preheader, %for.body19
  %indvars.iv = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next, %for.body19 ], !dbg !2255
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2212, metadata !DIExpression()), !dbg !2217
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !2225
  br i1 %exitcond, label %for.end26, label %for.body19, !dbg !2226

for.body19:                                       ; preds = %for.cond16
  %12 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !2256
  %13 = load i32*, i32** @used_regs, align 8, !dbg !2256
  %arrayidx21 = getelementptr inbounds i32, i32* %13, i64 %indvars.iv, !dbg !2256
  %14 = load i32, i32* %arrayidx21, align 4, !dbg !2256
  %idxprom22 = zext i32 %14 to i64, !dbg !2256
  %arrayidx23 = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %12, i64 %idxprom22, !dbg !2256
  store %struct.elt_list* null, %struct.elt_list** %arrayidx23, align 8, !dbg !2257
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2258
  br label %for.cond16, !dbg !2259, !llvm.loop !2260

for.end26:                                        ; preds = %for.cond16
  store i32 0, i32* @n_used_regs, align 4, !dbg !2262
  br label %if.end27

if.end27:                                         ; preds = %for.end26, %cond.end
  %15 = load i8, i8* @cselib_preserve_constants, align 1, !dbg !2263
  %tobool28 = icmp eq i8 %15, 0, !dbg !2263
  %16 = load %struct.htab*, %struct.htab** @cselib_hash_table, align 8, !dbg !2265
  br i1 %tobool28, label %if.else30, label %if.then29, !dbg !2266

if.then29:                                        ; preds = %if.end27
  tail call void @htab_traverse(%struct.htab* %16, i32 (i8**, i8*)* nonnull @preserve_only_constants, i8* null) #6, !dbg !2267
  br label %if.end31, !dbg !2267

if.else30:                                        ; preds = %if.end27
  tail call void @htab_empty(%struct.htab* %16) #6, !dbg !2268
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.then29
  store i32 0, i32* @n_useless_values, align 4, !dbg !2269
  store i32 0, i32* @n_useless_debug_values, align 4, !dbg !2270
  store i32 0, i32* @n_debug_values, align 4, !dbg !2271
  store i32 %num, i32* @next_uid, align 4, !dbg !2272
  store %struct.cselib_val_struct* @dummy_val, %struct.cselib_val_struct** @first_containing_mem, align 8, !dbg !2273
  ret void, !dbg !2274
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !2275 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2279, metadata !DIExpression()), !dbg !2280
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2281
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !2281
  %0 = load i32, i32* %rt_uint, align 8, !dbg !2281
  ret i32 %0, !dbg !2282
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local void @htab_traverse(%struct.htab*, i32 (i8**, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @preserve_only_constants(i8** %x, i8* %info) #5 !dbg !2283 {
entry:
  call void @llvm.dbg.value(metadata i8** %x, metadata !2287, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8* %info, metadata !2288, metadata !DIExpression()), !dbg !2290
  %0 = bitcast i8** %x to %struct.cselib_val_struct**, !dbg !2291
  %1 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %0, align 8, !dbg !2291
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %1, metadata !2289, metadata !DIExpression()), !dbg !2290
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %1, i64 0, i32 3, !dbg !2292
  %2 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !2292
  %cmp = icmp eq %struct.elt_loc_list* %2, null, !dbg !2294
  br i1 %cmp, label %if.end42, label %land.lhs.true, !dbg !2295

land.lhs.true:                                    ; preds = %entry
  %next = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %2, i64 0, i32 0, !dbg !2296
  %3 = load %struct.elt_loc_list*, %struct.elt_loc_list** %next, align 8, !dbg !2296
  %cmp2 = icmp eq %struct.elt_loc_list* %3, null, !dbg !2297
  br i1 %cmp2, label %if.then, label %if.end42, !dbg !2298

if.then:                                          ; preds = %land.lhs.true
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %2, i64 0, i32 1, !dbg !2299
  %4 = bitcast %struct.rtx_def** %loc to i32**, !dbg !2299
  %5 = load i32*, i32** %4, align 8, !dbg !2299
  %bf.load = load i32, i32* %5, align 8, !dbg !2299
  %bf.clear = and i32 %bf.load, 65535, !dbg !2299
  %idxprom = zext i32 %bf.clear to i64, !dbg !2299
  %arrayidx = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom, !dbg !2299
  %6 = load i32, i32* %arrayidx, align 4, !dbg !2299
  %cmp4 = icmp eq i32 %6, 9, !dbg !2299
  %7 = bitcast i32* %5 to %struct.rtx_def*, !dbg !2302
  br i1 %cmp4, label %land.lhs.true5, label %if.end, !dbg !2302

land.lhs.true5:                                   ; preds = %if.then
  %cmp10 = icmp eq i32 %bf.clear, 35, !dbg !2303
  br i1 %cmp10, label %lor.lhs.false, label %cleanup, !dbg !2304

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %call = tail call i32 @references_value_p(%struct.rtx_def* %7, i32 0) #7, !dbg !2305
  %tobool = icmp eq i32 %call, 0, !dbg !2305
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2306

if.end:                                           ; preds = %lor.lhs.false, %if.then
  %8 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** @cfa_base_preserved_val, align 8, !dbg !2307
  %tobool14 = icmp eq %struct.cselib_val_struct* %8, null, !dbg !2307
  br i1 %tobool14, label %if.end42, label %if.then15, !dbg !2309

if.then15:                                        ; preds = %if.end
  %cmp16 = icmp eq %struct.cselib_val_struct* %1, %8, !dbg !2310
  br i1 %cmp16, label %cleanup, label %if.end18, !dbg !2313

if.end18:                                         ; preds = %if.then15
  %9 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !2314
  %loc20 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %9, i64 0, i32 1, !dbg !2314
  %10 = bitcast %struct.rtx_def** %loc20 to i32**, !dbg !2314
  %11 = load i32*, i32** %10, align 8, !dbg !2314
  %bf.load21 = load i32, i32* %11, align 8, !dbg !2314
  %bf.clear22 = and i32 %bf.load21, 65535, !dbg !2314
  %cmp23 = icmp eq i32 %bf.clear22, 49, !dbg !2316
  br i1 %cmp23, label %land.lhs.true24, label %if.end42, !dbg !2317

land.lhs.true24:                                  ; preds = %if.end18
  %12 = getelementptr inbounds i32, i32* %11, i64 4, !dbg !2318
  %13 = bitcast i32* %12 to i32**, !dbg !2318
  %14 = load i32*, i32** %13, align 8, !dbg !2318
  %bf.load28 = load i32, i32* %14, align 8, !dbg !2318
  %bf.clear29 = and i32 %bf.load28, 65535, !dbg !2318
  %cmp30 = icmp eq i32 %bf.clear29, 30, !dbg !2318
  br i1 %cmp30, label %land.lhs.true31, label %if.end42, !dbg !2319

land.lhs.true31:                                  ; preds = %land.lhs.true24
  %arrayidx36 = getelementptr inbounds i32, i32* %11, i64 2, !dbg !2320
  %rt_rtx37 = bitcast i32* %arrayidx36 to %struct.rtx_def**, !dbg !2320
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx37, align 8, !dbg !2320
  %val_rtx = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %8, i64 0, i32 2, !dbg !2321
  %16 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx, align 8, !dbg !2321
  %cmp38 = icmp eq %struct.rtx_def* %15, %16, !dbg !2322
  br i1 %cmp38, label %cleanup, label %if.end42, !dbg !2323

if.end42:                                         ; preds = %if.end, %entry, %land.lhs.true31, %land.lhs.true24, %if.end18, %land.lhs.true
  %17 = load %struct.htab*, %struct.htab** @cselib_hash_table, align 8, !dbg !2324
  tail call void @htab_clear_slot(%struct.htab* %17, i8** %x) #6, !dbg !2325
  br label %cleanup, !dbg !2326

cleanup:                                          ; preds = %lor.lhs.false, %land.lhs.true5, %land.lhs.true31, %if.then15, %if.end42
  ret i32 1, !dbg !2327
}

declare dso_local void @htab_empty(%struct.htab*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @cselib_get_next_uid() local_unnamed_addr #5 !dbg !2328 {
entry:
  %0 = load i32, i32* @next_uid, align 4, !dbg !2331
  ret i32 %0, !dbg !2332
}

; Function Attrs: nounwind uwtable
define dso_local i32 @references_value_p(%struct.rtx_def* %x, i32 %only_useless) local_unnamed_addr #5 !dbg !2333 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2337, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i32 %only_useless, metadata !2338, metadata !DIExpression()), !dbg !2344
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !2345
  %bf.load = load i32, i32* %0, align 8, !dbg !2345
  %bf.clear = and i32 %bf.load, 65535, !dbg !2345
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !2339, metadata !DIExpression()), !dbg !2344
  %idxprom = zext i32 %bf.clear to i64, !dbg !2346
  %arrayidx = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom, !dbg !2346
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !2346
  call void @llvm.dbg.value(metadata i8* %1, metadata !2341, metadata !DIExpression()), !dbg !2344
  %cmp = icmp eq i32 %bf.clear, 1, !dbg !2347
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2349

land.lhs.true:                                    ; preds = %entry
  %tobool = icmp eq i32 %only_useless, 0, !dbg !2350
  br i1 %tobool, label %cleanup, label %lor.lhs.false, !dbg !2351

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arrayidx3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2352
  %rt_cselib = bitcast %union.rtunion_def* %arrayidx3 to %struct.cselib_val_struct**, !dbg !2352
  %2 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib, align 8, !dbg !2352
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %2, i64 0, i32 3, !dbg !2353
  %3 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !2353
  %cmp4 = icmp eq %struct.elt_loc_list* %3, null, !dbg !2354
  br i1 %cmp4, label %cleanup, label %if.end, !dbg !2355

if.end:                                           ; preds = %lor.lhs.false, %entry
  %arrayidx6 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom, !dbg !2356
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !2356
  call void @llvm.dbg.value(metadata i8 %4, metadata !2342, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2344
  %u15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, !dbg !2358
  %fld16 = bitcast %union.u* %u15 to [1 x %union.rtunion_def]*, !dbg !2358
  %5 = zext i8 %4 to i64, !dbg !2362
  br label %for.cond, !dbg !2362

for.cond:                                         ; preds = %for.inc48, %if.end
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc48 ], [ %5, %if.end ]
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, -1, !dbg !2363
  call void @llvm.dbg.value(metadata i32 undef, metadata !2342, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2344
  %cmp7 = icmp sgt i64 %indvars.iv2, 0, !dbg !2364
  br i1 %cmp7, label %for.body, label %cleanup.loopexit1, !dbg !2365

for.body:                                         ; preds = %for.cond
  %arrayidx10 = getelementptr inbounds i8, i8* %1, i64 %indvars.iv.next3, !dbg !2366
  %6 = load i8, i8* %arrayidx10, align 1, !dbg !2366
  %cmp12 = icmp eq i8 %6, 101, !dbg !2367
  br i1 %cmp12, label %land.lhs.true14, label %if.else, !dbg !2368

land.lhs.true14:                                  ; preds = %for.body
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i64 0, i64 %indvars.iv.next3, !dbg !2369
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**, !dbg !2369
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2369
  %call = tail call i32 @references_value_p(%struct.rtx_def* %7, i32 %only_useless) #7, !dbg !2370
  %tobool19 = icmp eq i32 %call, 0, !dbg !2370
  br i1 %tobool19, label %land.lhs.true14.if.else_crit_edge, label %cleanup.loopexit1, !dbg !2371

land.lhs.true14.if.else_crit_edge:                ; preds = %land.lhs.true14
  %.pre = load i8, i8* %arrayidx10, align 1, !dbg !2372
  br label %if.else, !dbg !2371

if.else:                                          ; preds = %land.lhs.true14.if.else_crit_edge, %for.body
  %8 = phi i8 [ %.pre, %land.lhs.true14.if.else_crit_edge ], [ %6, %for.body ], !dbg !2372
  %cmp24 = icmp eq i8 %8, 69, !dbg !2374
  br i1 %cmp24, label %for.cond27.preheader, label %for.inc48, !dbg !2375

for.cond27.preheader:                             ; preds = %if.else
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i64 0, i64 %indvars.iv.next3, !dbg !2376
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtvec_def**, !dbg !2376
  br label %for.cond27, !dbg !2379

for.cond27:                                       ; preds = %for.cond27.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond27.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !2380
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2343, metadata !DIExpression()), !dbg !2344
  %9 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !2381
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %9, i64 0, i32 0, !dbg !2381
  %10 = load i32, i32* %num_elem, align 8, !dbg !2381
  %11 = sext i32 %10 to i64, !dbg !2382
  %cmp32 = icmp slt i64 %indvars.iv, %11, !dbg !2382
  br i1 %cmp32, label %for.body34, label %for.inc48.loopexit, !dbg !2379

for.body34:                                       ; preds = %for.cond27
  %arrayidx41 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %9, i64 0, i32 1, i64 %indvars.iv, !dbg !2383
  %12 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx41, align 8, !dbg !2383
  %call42 = tail call i32 @references_value_p(%struct.rtx_def* %12, i32 %only_useless) #7, !dbg !2385
  %tobool43 = icmp eq i32 %call42, 0, !dbg !2385
  br i1 %tobool43, label %for.inc, label %cleanup.loopexit, !dbg !2386

for.inc:                                          ; preds = %for.body34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2387
  call void @llvm.dbg.value(metadata i32 undef, metadata !2343, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2344
  br label %for.cond27, !dbg !2388, !llvm.loop !2389

for.inc48.loopexit:                               ; preds = %for.cond27
  br label %for.inc48, !dbg !2391

for.inc48:                                        ; preds = %for.inc48.loopexit, %if.else
  call void @llvm.dbg.value(metadata i32 undef, metadata !2342, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2344
  br label %for.cond, !dbg !2391, !llvm.loop !2392

cleanup.loopexit:                                 ; preds = %for.body34
  br label %cleanup, !dbg !2394

cleanup.loopexit1:                                ; preds = %for.cond, %land.lhs.true14
  %retval.0.ph = phi i32 [ 0, %for.cond ], [ 1, %land.lhs.true14 ]
  br label %cleanup, !dbg !2394

cleanup:                                          ; preds = %cleanup.loopexit1, %cleanup.loopexit, %land.lhs.true, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %land.lhs.true ], [ 1, %cleanup.loopexit ], [ %retval.0.ph, %cleanup.loopexit1 ], !dbg !2344
  ret i32 %retval.0, !dbg !2394
}

; Function Attrs: nounwind uwtable
define dso_local void @cselib_preserve_value(%struct.cselib_val_struct* %v) local_unnamed_addr #5 !dbg !2395 {
entry:
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %v, metadata !2397, metadata !DIExpression()), !dbg !2398
  %val_rtx = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %v, i64 0, i32 2, !dbg !2399
  %0 = bitcast %struct.rtx_def** %val_rtx to i32**, !dbg !2399
  %1 = load i32*, i32** %0, align 8, !dbg !2399
  %bf.load = load i32, i32* %1, align 8, !dbg !2400
  %bf.set = or i32 %bf.load, 67108864, !dbg !2400
  store i32 %bf.set, i32* %1, align 8, !dbg !2400
  ret void, !dbg !2401
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cselib_preserved_value_p(%struct.cselib_val_struct* %v) local_unnamed_addr #5 !dbg !2402 {
entry:
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %v, metadata !2406, metadata !DIExpression()), !dbg !2407
  %val_rtx = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %v, i64 0, i32 2, !dbg !2408
  %0 = bitcast %struct.rtx_def** %val_rtx to i32**, !dbg !2408
  %1 = load i32*, i32** %0, align 8, !dbg !2408
  %bf.load = load i32, i32* %1, align 8, !dbg !2408
  %bf.lshr = lshr i32 %bf.load, 26, !dbg !2408
  %2 = trunc i32 %bf.lshr to i8, !dbg !2408
  %conv = and i8 %2, 1, !dbg !2408
  ret i8 %conv, !dbg !2409
}

; Function Attrs: nounwind uwtable
define dso_local void @cselib_preserve_cfa_base_value(%struct.cselib_val_struct* %v) local_unnamed_addr #5 !dbg !2410 {
entry:
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %v, metadata !2412, metadata !DIExpression()), !dbg !2413
  %0 = load i8, i8* @cselib_preserve_constants, align 1, !dbg !2414
  %tobool = icmp eq i8 %0, 0, !dbg !2414
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2416

land.lhs.true:                                    ; preds = %entry
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %v, i64 0, i32 3, !dbg !2417
  %1 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !2417
  %tobool1 = icmp eq %struct.elt_loc_list* %1, null, !dbg !2418
  br i1 %tobool1, label %if.end, label %land.lhs.true2, !dbg !2419

land.lhs.true2:                                   ; preds = %land.lhs.true
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %1, i64 0, i32 1, !dbg !2420
  %2 = bitcast %struct.rtx_def** %loc to i32**, !dbg !2420
  %3 = load i32*, i32** %2, align 8, !dbg !2420
  %bf.load = load i32, i32* %3, align 8, !dbg !2420
  %bf.clear = and i32 %bf.load, 65535, !dbg !2420
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !2420
  br i1 %cmp, label %if.then, label %if.end, !dbg !2421

if.then:                                          ; preds = %land.lhs.true2
  store %struct.cselib_val_struct* %v, %struct.cselib_val_struct** @cfa_base_preserved_val, align 8, !dbg !2422
  br label %if.end, !dbg !2423

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then, %land.lhs.true2
  ret void, !dbg !2424
}

; Function Attrs: nounwind uwtable
define dso_local void @cselib_preserve_only_values() local_unnamed_addr #5 !dbg !2425 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !2427, metadata !DIExpression()), !dbg !2428
  br label %for.cond, !dbg !2429

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !2431
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2427, metadata !DIExpression()), !dbg !2428
  %exitcond = icmp eq i64 %indvars.iv, 53, !dbg !2432
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2434

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [53 x i32], [53 x i32]* @reg_raw_mode, i64 0, i64 %indvars.iv, !dbg !2435
  %0 = load i32, i32* %arrayidx, align 4, !dbg !2435
  %1 = trunc i64 %indvars.iv to i32, !dbg !2436
  tail call fastcc void @cselib_invalidate_regno(i32 %1, i32 %0) #7, !dbg !2436
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2437
  call void @llvm.dbg.value(metadata i32 undef, metadata !2427, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2428
  br label %for.cond, !dbg !2438, !llvm.loop !2439

for.end:                                          ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** @callmem, align 8, !dbg !2441
  tail call fastcc void @cselib_invalidate_mem(%struct.rtx_def* %2) #7, !dbg !2442
  tail call fastcc void @remove_useless_values() #7, !dbg !2443
  %3 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** @first_containing_mem, align 8, !dbg !2444
  %cmp1 = icmp eq %struct.cselib_val_struct* %3, @dummy_val, !dbg !2444
  br i1 %cmp1, label %cond.end, label %cond.true, !dbg !2444

cond.true:                                        ; preds = %for.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 597, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2444
  br label %cond.end, !dbg !2444

cond.end:                                         ; preds = %for.end, %cond.true
  ret void, !dbg !2445
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cselib_invalidate_regno(i32 %regno, i32 %mode) unnamed_addr #5 !dbg !2446 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !2450, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2451, metadata !DIExpression()), !dbg !2469
  %0 = load i32, i32* @reload_completed, align 4, !dbg !2470
  %tobool = icmp eq i32 %0, 0, !dbg !2470
  %cmp = icmp ult i32 %regno, 53, !dbg !2470
  %or.cond = or i1 %tobool, %cmp, !dbg !2470
  br i1 %or.cond, label %cond.end, label %lor.lhs.false1, !dbg !2470

lor.lhs.false1:                                   ; preds = %entry
  %1 = load i16*, i16** @reg_renumber, align 8, !dbg !2470
  %idxprom = zext i32 %regno to i64, !dbg !2470
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom, !dbg !2470
  %2 = load i16, i16* %arrayidx, align 2, !dbg !2470
  %cmp2 = icmp slt i16 %2, 0, !dbg !2470
  br i1 %cmp2, label %cond.end, label %cond.true, !dbg !2470

cond.true:                                        ; preds = %lor.lhs.false1
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1746, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2470
  br label %cond.end, !dbg !2470

cond.end:                                         ; preds = %lor.lhs.false1, %entry, %cond.true
  br i1 %cmp, label %if.then, label %if.else15, !dbg !2471

if.then:                                          ; preds = %cond.end
  %cmp6 = icmp eq i32 %mode, 0, !dbg !2472
  br i1 %cmp6, label %cond.true8, label %cond.end10, !dbg !2472

cond.true8:                                       ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1754, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2472
  br label %cond.end10, !dbg !2472

cond.end10:                                       ; preds = %if.then, %cond.true8
  %3 = load i32, i32* @max_value_regs, align 4, !dbg !2475
  %4 = tail call i32 @llvm.usub.sat.i32(i32 %regno, i32 %3), !dbg !2477
  call void @llvm.dbg.value(metadata i32 %4, metadata !2453, metadata !DIExpression()), !dbg !2469
  %call = tail call fastcc i32 @end_hard_regno(i32 %mode, i32 %regno) #7, !dbg !2478
  call void @llvm.dbg.value(metadata i32 %call, metadata !2452, metadata !DIExpression()), !dbg !2469
  br label %if.end16, !dbg !2479

if.else15:                                        ; preds = %cond.end
  call void @llvm.dbg.value(metadata i32 %regno, metadata !2453, metadata !DIExpression()), !dbg !2469
  %add = add i32 %regno, 1, !dbg !2480
  call void @llvm.dbg.value(metadata i32 %add, metadata !2452, metadata !DIExpression()), !dbg !2469
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %cond.end10
  %i.1 = phi i32 [ %4, %cond.end10 ], [ %regno, %if.else15 ], !dbg !2482
  %endregno.0 = phi i32 [ %call, %cond.end10 ], [ %add, %if.else15 ], !dbg !2482
  call void @llvm.dbg.value(metadata i32 %endregno.0, metadata !2452, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !2453, metadata !DIExpression()), !dbg !2469
  %5 = zext i32 %i.1 to i64, !dbg !2483
  %6 = zext i32 %endregno.0 to i64, !dbg !2483
  %7 = zext i32 %regno to i64, !dbg !2483
  br label %for.cond, !dbg !2483

for.cond:                                         ; preds = %for.inc104, %if.end16
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc104 ], [ %5, %if.end16 ], !dbg !2469
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2453, metadata !DIExpression()), !dbg !2469
  %cmp17 = icmp ult i64 %indvars.iv, %6, !dbg !2484
  br i1 %cmp17, label %for.body, label %for.end106, !dbg !2485

for.body:                                         ; preds = %for.cond
  %8 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !2486
  %arrayidx20 = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %8, i64 %indvars.iv, !dbg !2486
  call void @llvm.dbg.value(metadata %struct.elt_list** %arrayidx20, metadata !2454, metadata !DIExpression()), !dbg !2487
  %cmp22 = icmp ult i64 %indvars.iv, 53, !dbg !2488
  br i1 %cmp22, label %for.body.split.us, label %for.body.for.body.split_crit_edge, !dbg !2490

for.body.for.body.split_crit_edge:                ; preds = %for.body
  br label %while.cond, !dbg !2490

for.body.split.us:                                ; preds = %for.body
  %9 = trunc i64 %indvars.iv to i32, !dbg !2490
  br label %while.cond.us, !dbg !2490

while.cond.us:                                    ; preds = %cleanup97.us, %for.body.split.us
  %l.0.us = phi %struct.elt_list** [ %arrayidx20, %for.body.split.us ], [ %l.2.us, %cleanup97.us ], !dbg !2487
  call void @llvm.dbg.value(metadata %struct.elt_list** %l.0.us, metadata !2454, metadata !DIExpression()), !dbg !2487
  %10 = load %struct.elt_list*, %struct.elt_list** %l.0.us, align 8, !dbg !2491
  %tobool21.us = icmp eq %struct.elt_list* %10, null, !dbg !2490
  br i1 %tobool21.us, label %for.inc104.us-lcssa.us, label %while.body.us, !dbg !2490

while.body.us:                                    ; preds = %while.cond.us
  %elt.us = getelementptr inbounds %struct.elt_list, %struct.elt_list* %10, i64 0, i32 1, !dbg !2492
  %11 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt.us, align 8, !dbg !2492
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %11, metadata !2458, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2464, metadata !DIExpression()), !dbg !2493
  %cmp24.us = icmp eq %struct.cselib_val_struct* %11, null, !dbg !2494
  br i1 %cmp24.us, label %if.end29.us, label %if.then26.us, !dbg !2495

if.then26.us:                                     ; preds = %while.body.us
  %val_rtx.us = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %11, i64 0, i32 2, !dbg !2496
  %12 = bitcast %struct.rtx_def** %val_rtx.us to i32**, !dbg !2496
  %13 = load i32*, i32** %12, align 8, !dbg !2496
  %bf.load.us = load i32, i32* %13, align 8, !dbg !2496
  %bf.lshr.us = lshr i32 %bf.load.us, 16, !dbg !2496
  %bf.clear.us = and i32 %bf.lshr.us, 255, !dbg !2496
  %14 = trunc i64 %indvars.iv to i32, !dbg !2497
  %call27.us = tail call fastcc i32 @end_hard_regno(i32 %bf.clear.us, i32 %14) #7, !dbg !2497
  %sub28.us = add i32 %call27.us, -1, !dbg !2498
  call void @llvm.dbg.value(metadata i32 %sub28.us, metadata !2464, metadata !DIExpression()), !dbg !2493
  %.pre5 = load %struct.elt_list*, %struct.elt_list** %l.0.us, align 8, !dbg !2493
  br label %if.end29.us, !dbg !2499

if.end29.us:                                      ; preds = %while.body.us, %if.then26.us
  %15 = phi %struct.elt_list* [ %.pre5, %if.then26.us ], [ %10, %while.body.us ], !dbg !2493
  %this_last.0.us = phi i32 [ %sub28.us, %if.then26.us ], [ %9, %while.body.us ], !dbg !2493
  call void @llvm.dbg.value(metadata i32 %this_last.0.us, metadata !2464, metadata !DIExpression()), !dbg !2493
  %cmp30.us = icmp ult i32 %this_last.0.us, %regno, !dbg !2500
  %or.cond2.us = or i1 %cmp30.us, %cmp24.us, !dbg !2502
  %16 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** @cfa_base_preserved_val, align 8, !dbg !2503
  %cmp36.us = icmp eq %struct.cselib_val_struct* %11, %16, !dbg !2504
  %or.cond3.us = or i1 %or.cond2.us, %cmp36.us, !dbg !2502
  br i1 %or.cond3.us, label %if.then38.us, label %if.end39.us, !dbg !2502

if.end39.us:                                      ; preds = %if.end29.us
  %17 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !2505
  %arrayidx41.us = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %17, i64 %indvars.iv, !dbg !2505
  %18 = load %struct.elt_list*, %struct.elt_list** %arrayidx41.us, align 8, !dbg !2505
  %cmp42.us = icmp eq %struct.elt_list* %15, %18, !dbg !2507
  br i1 %cmp42.us, label %if.then44.us, label %if.else47.us, !dbg !2508

if.else47.us:                                     ; preds = %if.end39.us
  tail call fastcc void @unchain_one_elt_list(%struct.elt_list** %l.0.us) #7, !dbg !2509
  br label %if.end48.us

if.then44.us:                                     ; preds = %if.end39.us
  %elt45.us = getelementptr inbounds %struct.elt_list, %struct.elt_list* %15, i64 0, i32 1, !dbg !2510
  store %struct.cselib_val_struct* null, %struct.cselib_val_struct** %elt45.us, align 8, !dbg !2512
  %19 = load %struct.elt_list*, %struct.elt_list** %l.0.us, align 8, !dbg !2513
  %next46.us = getelementptr inbounds %struct.elt_list, %struct.elt_list* %19, i64 0, i32 0, !dbg !2514
  call void @llvm.dbg.value(metadata %struct.elt_list** %next46.us, metadata !2454, metadata !DIExpression()), !dbg !2487
  br label %if.end48.us, !dbg !2515

if.end48.us:                                      ; preds = %if.then44.us, %if.else47.us
  %l.1.us = phi %struct.elt_list** [ %next46.us, %if.then44.us ], [ %l.0.us, %if.else47.us ], !dbg !2487
  call void @llvm.dbg.value(metadata %struct.elt_list** %l.1.us, metadata !2454, metadata !DIExpression()), !dbg !2487
  %locs.us = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %11, i64 0, i32 3, !dbg !2516
  %20 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs.us, align 8, !dbg !2516
  %cmp49.us = icmp eq %struct.elt_loc_list* %20, null, !dbg !2517
  call void @llvm.dbg.value(metadata i1 %cmp49.us, metadata !2460, metadata !DIExpression()), !dbg !2493
  br i1 %cmp49.us, label %cond.end58.us, label %cond.true54.us, !dbg !2518

cond.true54.us:                                   ; preds = %if.end48.us
  %setting_insn56.us = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %20, i64 0, i32 2, !dbg !2519
  %21 = load %struct.rtx_def*, %struct.rtx_def** %setting_insn56.us, align 8, !dbg !2519
  br label %cond.end58.us, !dbg !2518

cond.end58.us:                                    ; preds = %cond.true54.us, %if.end48.us
  %cond59.us = phi %struct.rtx_def* [ %21, %cond.true54.us ], [ null, %if.end48.us ], !dbg !2518
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond59.us, metadata !2461, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata %struct.elt_loc_list** %locs.us, metadata !2462, metadata !DIExpression()), !dbg !2493
  br label %for.cond61.us, !dbg !2520

for.cond61.us:                                    ; preds = %for.inc.us, %cond.end58.us
  %22 = phi %struct.elt_loc_list* [ %20, %cond.end58.us ], [ %.pre6, %for.inc.us ], !dbg !2521
  %p.0.us = phi %struct.elt_loc_list** [ %locs.us, %cond.end58.us ], [ %next72.us, %for.inc.us ], !dbg !2522
  call void @llvm.dbg.value(metadata %struct.elt_loc_list** %p.0.us, metadata !2462, metadata !DIExpression()), !dbg !2493
  %loc.us = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %22, i64 0, i32 1, !dbg !2523
  %23 = load %struct.rtx_def*, %struct.rtx_def** %loc.us, align 8, !dbg !2523
  call void @llvm.dbg.value(metadata %struct.rtx_def* %23, metadata !2465, metadata !DIExpression()), !dbg !2524
  %24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i64 0, i32 0, !dbg !2525
  %bf.load62.us = load i32, i32* %24, align 8, !dbg !2525
  %bf.clear63.us = and i32 %bf.load62.us, 65535, !dbg !2525
  %cmp64.us = icmp eq i32 %bf.clear63.us, 37, !dbg !2525
  br i1 %cmp64.us, label %land.lhs.true66.us, label %cleanup.us, !dbg !2527

land.lhs.true66.us:                               ; preds = %for.cond61.us
  %call67.us = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %23) #7, !dbg !2528
  %25 = zext i32 %call67.us to i64, !dbg !2529
  %cmp68.us = icmp eq i64 %indvars.iv, %25, !dbg !2529
  br i1 %cmp68.us, label %if.then70.us, label %cleanup.us, !dbg !2530

if.then70.us:                                     ; preds = %land.lhs.true66.us
  tail call fastcc void @unchain_one_elt_loc_list(%struct.elt_loc_list** %p.0.us) #7, !dbg !2531
  br label %cleanup.us, !dbg !2533

cleanup.us:                                       ; preds = %if.then70.us, %land.lhs.true66.us, %for.cond61.us
  %cleanup.dest.slot.0.us = phi i1 [ false, %if.then70.us ], [ true, %land.lhs.true66.us ], [ true, %for.cond61.us ]
  br i1 %cleanup.dest.slot.0.us, label %for.inc.us, label %for.end.us

for.end.us:                                       ; preds = %cleanup.us
  br i1 %cmp49.us, label %cleanup97.us, label %land.lhs.true75.us, !dbg !2534

land.lhs.true75.us:                               ; preds = %for.end.us
  %26 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs.us, align 8, !dbg !2536
  %cmp77.us = icmp eq %struct.elt_loc_list* %26, null, !dbg !2537
  br i1 %cmp77.us, label %land.lhs.true79.us, label %cleanup97.us, !dbg !2538

land.lhs.true79.us:                               ; preds = %land.lhs.true75.us
  %val_rtx80.us = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %11, i64 0, i32 2, !dbg !2539
  %27 = bitcast %struct.rtx_def** %val_rtx80.us to i32**, !dbg !2539
  %28 = load i32*, i32** %27, align 8, !dbg !2539
  %bf.load81.us = load i32, i32* %28, align 8, !dbg !2539
  %bf.clear83.us = and i32 %bf.load81.us, 67108864, !dbg !2539
  %tobool84.us = icmp eq i32 %bf.clear83.us, 0, !dbg !2539
  br i1 %tobool84.us, label %if.then85.us, label %cleanup97.us, !dbg !2540

if.then85.us:                                     ; preds = %land.lhs.true79.us
  %tobool86.us = icmp eq %struct.rtx_def* %cond59.us, null, !dbg !2541
  br i1 %tobool86.us, label %if.else93.us, label %land.lhs.true87.us, !dbg !2544

land.lhs.true87.us:                               ; preds = %if.then85.us
  %29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond59.us, i64 0, i32 0, !dbg !2545
  %bf.load88.us = load i32, i32* %29, align 8, !dbg !2545
  %bf.clear89.us = and i32 %bf.load88.us, 65535, !dbg !2545
  %cmp90.us = icmp eq i32 %bf.clear89.us, 7, !dbg !2545
  br i1 %cmp90.us, label %if.then92.us, label %if.else93.us, !dbg !2546

if.then92.us:                                     ; preds = %land.lhs.true87.us
  %30 = load i32, i32* @n_useless_debug_values, align 4, !dbg !2547
  %inc.us = add nsw i32 %30, 1, !dbg !2547
  store i32 %inc.us, i32* @n_useless_debug_values, align 4, !dbg !2547
  br label %cleanup97.us, !dbg !2548

if.else93.us:                                     ; preds = %land.lhs.true87.us, %if.then85.us
  %31 = load i32, i32* @n_useless_values, align 4, !dbg !2549
  %inc94.us = add nsw i32 %31, 1, !dbg !2549
  store i32 %inc94.us, i32* @n_useless_values, align 4, !dbg !2549
  br label %cleanup97.us

for.inc.us:                                       ; preds = %cleanup.us
  %32 = load %struct.elt_loc_list*, %struct.elt_loc_list** %p.0.us, align 8, !dbg !2550
  %next72.us = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %32, i64 0, i32 0, !dbg !2551
  call void @llvm.dbg.value(metadata %struct.elt_loc_list** %next72.us, metadata !2462, metadata !DIExpression()), !dbg !2493
  %.pre6 = load %struct.elt_loc_list*, %struct.elt_loc_list** %next72.us, align 8, !dbg !2521
  br label %for.cond61.us, !dbg !2552, !llvm.loop !2553

if.then38.us:                                     ; preds = %if.end29.us
  %next.us = getelementptr inbounds %struct.elt_list, %struct.elt_list* %15, i64 0, i32 0, !dbg !2556
  call void @llvm.dbg.value(metadata %struct.elt_list** %next.us, metadata !2454, metadata !DIExpression()), !dbg !2487
  br label %cleanup97.us, !dbg !2558, !llvm.loop !2559

cleanup97.us:                                     ; preds = %if.then38.us, %if.else93.us, %if.then92.us, %land.lhs.true79.us, %land.lhs.true75.us, %for.end.us
  %l.2.us = phi %struct.elt_list** [ %next.us, %if.then38.us ], [ %l.1.us, %if.then92.us ], [ %l.1.us, %if.else93.us ], [ %l.1.us, %land.lhs.true79.us ], [ %l.1.us, %land.lhs.true75.us ], [ %l.1.us, %for.end.us ], !dbg !2493
  call void @llvm.dbg.value(metadata %struct.elt_list** %l.2.us, metadata !2454, metadata !DIExpression()), !dbg !2487
  br label %while.cond.us

for.inc104.us-lcssa.us:                           ; preds = %while.cond.us
  br label %for.inc104, !dbg !2561

while.cond:                                       ; preds = %cleanup97, %for.body.for.body.split_crit_edge
  %l.0 = phi %struct.elt_list** [ %arrayidx20, %for.body.for.body.split_crit_edge ], [ %l.2, %cleanup97 ], !dbg !2487
  call void @llvm.dbg.value(metadata %struct.elt_list** %l.0, metadata !2454, metadata !DIExpression()), !dbg !2487
  %33 = load %struct.elt_list*, %struct.elt_list** %l.0, align 8, !dbg !2491
  %tobool21 = icmp eq %struct.elt_list* %33, null, !dbg !2490
  br i1 %tobool21, label %for.inc104.us-lcssa, label %while.body, !dbg !2490

while.body:                                       ; preds = %while.cond
  %elt = getelementptr inbounds %struct.elt_list, %struct.elt_list* %33, i64 0, i32 1, !dbg !2492
  %34 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt, align 8, !dbg !2492
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %34, metadata !2458, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2464, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2464, metadata !DIExpression()), !dbg !2493
  %cmp30 = icmp ult i64 %indvars.iv, %7, !dbg !2500
  %cmp33 = icmp eq %struct.cselib_val_struct* %34, null, !dbg !2562
  %or.cond2 = or i1 %cmp30, %cmp33, !dbg !2502
  %35 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** @cfa_base_preserved_val, align 8, !dbg !2503
  %cmp36 = icmp eq %struct.cselib_val_struct* %34, %35, !dbg !2504
  %or.cond3 = or i1 %or.cond2, %cmp36, !dbg !2502
  br i1 %or.cond3, label %if.then38, label %if.end39, !dbg !2502

if.then38:                                        ; preds = %while.body
  %next = getelementptr inbounds %struct.elt_list, %struct.elt_list* %33, i64 0, i32 0, !dbg !2556
  call void @llvm.dbg.value(metadata %struct.elt_list** %next, metadata !2454, metadata !DIExpression()), !dbg !2487
  br label %cleanup97, !dbg !2558, !llvm.loop !2559

if.end39:                                         ; preds = %while.body
  %36 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !2505
  %arrayidx41 = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %36, i64 %indvars.iv, !dbg !2505
  %37 = load %struct.elt_list*, %struct.elt_list** %arrayidx41, align 8, !dbg !2505
  %cmp42 = icmp eq %struct.elt_list* %33, %37, !dbg !2507
  br i1 %cmp42, label %if.then44, label %if.else47, !dbg !2508

if.then44:                                        ; preds = %if.end39
  store %struct.cselib_val_struct* null, %struct.cselib_val_struct** %elt, align 8, !dbg !2512
  %38 = load %struct.elt_list*, %struct.elt_list** %l.0, align 8, !dbg !2513
  %next46 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %38, i64 0, i32 0, !dbg !2514
  call void @llvm.dbg.value(metadata %struct.elt_list** %next46, metadata !2454, metadata !DIExpression()), !dbg !2487
  br label %if.end48, !dbg !2515

if.else47:                                        ; preds = %if.end39
  tail call fastcc void @unchain_one_elt_list(%struct.elt_list** %l.0) #7, !dbg !2509
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then44
  %l.1 = phi %struct.elt_list** [ %next46, %if.then44 ], [ %l.0, %if.else47 ], !dbg !2487
  call void @llvm.dbg.value(metadata %struct.elt_list** %l.1, metadata !2454, metadata !DIExpression()), !dbg !2487
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %34, i64 0, i32 3, !dbg !2516
  %39 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !2516
  %cmp49 = icmp eq %struct.elt_loc_list* %39, null, !dbg !2517
  call void @llvm.dbg.value(metadata i1 %cmp49, metadata !2460, metadata !DIExpression()), !dbg !2493
  br i1 %cmp49, label %cond.end58, label %cond.true54, !dbg !2518

cond.true54:                                      ; preds = %if.end48
  %setting_insn56 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %39, i64 0, i32 2, !dbg !2519
  %40 = load %struct.rtx_def*, %struct.rtx_def** %setting_insn56, align 8, !dbg !2519
  br label %cond.end58, !dbg !2518

cond.end58:                                       ; preds = %if.end48, %cond.true54
  %cond59 = phi %struct.rtx_def* [ %40, %cond.true54 ], [ null, %if.end48 ], !dbg !2518
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond59, metadata !2461, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata %struct.elt_loc_list** %locs, metadata !2462, metadata !DIExpression()), !dbg !2493
  br label %for.cond61, !dbg !2520

for.cond61:                                       ; preds = %for.inc, %cond.end58
  %41 = phi %struct.elt_loc_list* [ %39, %cond.end58 ], [ %.pre, %for.inc ], !dbg !2521
  %p.0 = phi %struct.elt_loc_list** [ %locs, %cond.end58 ], [ %next72, %for.inc ], !dbg !2522
  call void @llvm.dbg.value(metadata %struct.elt_loc_list** %p.0, metadata !2462, metadata !DIExpression()), !dbg !2493
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %41, i64 0, i32 1, !dbg !2523
  %42 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !2523
  call void @llvm.dbg.value(metadata %struct.rtx_def* %42, metadata !2465, metadata !DIExpression()), !dbg !2524
  %43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i64 0, i32 0, !dbg !2525
  %bf.load62 = load i32, i32* %43, align 8, !dbg !2525
  %bf.clear63 = and i32 %bf.load62, 65535, !dbg !2525
  %cmp64 = icmp eq i32 %bf.clear63, 37, !dbg !2525
  br i1 %cmp64, label %land.lhs.true66, label %cleanup, !dbg !2527

land.lhs.true66:                                  ; preds = %for.cond61
  %call67 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %42) #7, !dbg !2528
  %44 = zext i32 %call67 to i64, !dbg !2529
  %cmp68 = icmp eq i64 %indvars.iv, %44, !dbg !2529
  br i1 %cmp68, label %if.then70, label %cleanup, !dbg !2530

if.then70:                                        ; preds = %land.lhs.true66
  tail call fastcc void @unchain_one_elt_loc_list(%struct.elt_loc_list** %p.0) #7, !dbg !2531
  br label %cleanup, !dbg !2533

cleanup:                                          ; preds = %for.cond61, %land.lhs.true66, %if.then70
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then70 ], [ true, %land.lhs.true66 ], [ true, %for.cond61 ]
  br i1 %cleanup.dest.slot.0, label %for.inc, label %for.end

for.inc:                                          ; preds = %cleanup
  %45 = load %struct.elt_loc_list*, %struct.elt_loc_list** %p.0, align 8, !dbg !2550
  %next72 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %45, i64 0, i32 0, !dbg !2551
  call void @llvm.dbg.value(metadata %struct.elt_loc_list** %next72, metadata !2462, metadata !DIExpression()), !dbg !2493
  %.pre = load %struct.elt_loc_list*, %struct.elt_loc_list** %next72, align 8, !dbg !2521
  br label %for.cond61, !dbg !2552, !llvm.loop !2553

for.end:                                          ; preds = %cleanup
  br i1 %cmp49, label %cleanup97, label %land.lhs.true75, !dbg !2534

land.lhs.true75:                                  ; preds = %for.end
  %46 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !2536
  %cmp77 = icmp eq %struct.elt_loc_list* %46, null, !dbg !2537
  br i1 %cmp77, label %land.lhs.true79, label %cleanup97, !dbg !2538

land.lhs.true79:                                  ; preds = %land.lhs.true75
  %val_rtx80 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %34, i64 0, i32 2, !dbg !2539
  %47 = bitcast %struct.rtx_def** %val_rtx80 to i32**, !dbg !2539
  %48 = load i32*, i32** %47, align 8, !dbg !2539
  %bf.load81 = load i32, i32* %48, align 8, !dbg !2539
  %bf.clear83 = and i32 %bf.load81, 67108864, !dbg !2539
  %tobool84 = icmp eq i32 %bf.clear83, 0, !dbg !2539
  br i1 %tobool84, label %if.then85, label %cleanup97, !dbg !2540

if.then85:                                        ; preds = %land.lhs.true79
  %tobool86 = icmp eq %struct.rtx_def* %cond59, null, !dbg !2541
  br i1 %tobool86, label %if.else93, label %land.lhs.true87, !dbg !2544

land.lhs.true87:                                  ; preds = %if.then85
  %49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond59, i64 0, i32 0, !dbg !2545
  %bf.load88 = load i32, i32* %49, align 8, !dbg !2545
  %bf.clear89 = and i32 %bf.load88, 65535, !dbg !2545
  %cmp90 = icmp eq i32 %bf.clear89, 7, !dbg !2545
  br i1 %cmp90, label %if.then92, label %if.else93, !dbg !2546

if.then92:                                        ; preds = %land.lhs.true87
  %50 = load i32, i32* @n_useless_debug_values, align 4, !dbg !2547
  %inc = add nsw i32 %50, 1, !dbg !2547
  store i32 %inc, i32* @n_useless_debug_values, align 4, !dbg !2547
  br label %cleanup97, !dbg !2548

if.else93:                                        ; preds = %if.then85, %land.lhs.true87
  %51 = load i32, i32* @n_useless_values, align 4, !dbg !2549
  %inc94 = add nsw i32 %51, 1, !dbg !2549
  store i32 %inc94, i32* @n_useless_values, align 4, !dbg !2549
  br label %cleanup97

cleanup97:                                        ; preds = %land.lhs.true79, %for.end, %land.lhs.true75, %if.else93, %if.then92, %if.then38
  %l.2 = phi %struct.elt_list** [ %next, %if.then38 ], [ %l.1, %if.then92 ], [ %l.1, %if.else93 ], [ %l.1, %land.lhs.true79 ], [ %l.1, %land.lhs.true75 ], [ %l.1, %for.end ], !dbg !2493
  call void @llvm.dbg.value(metadata %struct.elt_list** %l.2, metadata !2454, metadata !DIExpression()), !dbg !2487
  br label %while.cond

for.inc104.us-lcssa:                              ; preds = %while.cond
  br label %for.inc104, !dbg !2561

for.inc104:                                       ; preds = %for.inc104.us-lcssa.us, %for.inc104.us-lcssa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2561
  br label %for.cond, !dbg !2563, !llvm.loop !2564

for.end106:                                       ; preds = %for.cond
  ret void, !dbg !2566
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cselib_invalidate_mem(%struct.rtx_def* %mem_rtx) unnamed_addr #5 !dbg !2567 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %mem_rtx, metadata !2571, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i32 0, metadata !2576, metadata !DIExpression()), !dbg !2589
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %mem_rtx, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2590
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2590
  %0 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2590
  %call = tail call %struct.rtx_def* @get_addr(%struct.rtx_def* %0) #6, !dbg !2591
  %call1 = tail call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %call) #6, !dbg !2592
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call1, metadata !2577, metadata !DIExpression()), !dbg !2589
  %call2 = tail call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %mem_rtx) #6, !dbg !2593
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call2, metadata !2571, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct** @first_containing_mem, metadata !2572, metadata !DIExpression()), !dbg !2589
  %1 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** @first_containing_mem, align 8, !dbg !2594
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %1, metadata !2574, metadata !DIExpression()), !dbg !2589
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call2, i64 0, i32 0, !dbg !2595
  br label %for.cond, !dbg !2597

for.cond:                                         ; preds = %for.inc, %entry
  %num_mems.0 = phi i32 [ 0, %entry ], [ %num_mems.1.lcssa, %for.inc ], !dbg !2598
  %v.0 = phi %struct.cselib_val_struct* [ %1, %entry ], [ %20, %for.inc ], !dbg !2599
  %vp.0 = phi %struct.cselib_val_struct** [ @first_containing_mem, %entry ], [ %vp.1, %for.inc ], !dbg !2589
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct** %vp.0, metadata !2572, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %v.0, metadata !2574, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i32 %num_mems.0, metadata !2576, metadata !DIExpression()), !dbg !2589
  %cmp = icmp eq %struct.cselib_val_struct* %v.0, @dummy_val, !dbg !2600
  br i1 %cmp, label %for.end65, label %for.body, !dbg !2601

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i8 0, metadata !2578, metadata !DIExpression()), !dbg !2602
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %v.0, i64 0, i32 3, !dbg !2603
  call void @llvm.dbg.value(metadata %struct.elt_loc_list** %locs, metadata !2582, metadata !DIExpression()), !dbg !2602
  %3 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !2604
  %cmp4 = icmp eq %struct.elt_loc_list* %3, null, !dbg !2605
  call void @llvm.dbg.value(metadata i1 %cmp4, metadata !2583, metadata !DIExpression()), !dbg !2602
  br i1 %cmp4, label %cond.end, label %cond.true, !dbg !2606

cond.true:                                        ; preds = %for.body
  %setting_insn8 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %3, i64 0, i32 2, !dbg !2607
  %4 = load %struct.rtx_def*, %struct.rtx_def** %setting_insn8, align 8, !dbg !2607
  br label %cond.end, !dbg !2606

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.rtx_def* [ %4, %cond.true ], [ null, %for.body ], !dbg !2606
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond, metadata !2584, metadata !DIExpression()), !dbg !2602
  br label %while.cond, !dbg !2608

while.cond:                                       ; preds = %cleanup, %cond.end
  %5 = phi %struct.elt_loc_list* [ %3, %cond.end ], [ %.pre, %cleanup ], !dbg !2609
  %p.0 = phi %struct.elt_loc_list** [ %locs, %cond.end ], [ %p.1, %cleanup ], !dbg !2610
  %has_mem.0 = phi i8 [ 0, %cond.end ], [ %has_mem.1, %cleanup ], !dbg !2611
  %num_mems.1 = phi i32 [ %num_mems.0, %cond.end ], [ %num_mems.2, %cleanup ], !dbg !2598
  call void @llvm.dbg.value(metadata i32 %num_mems.1, metadata !2576, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 %has_mem.0, metadata !2578, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata %struct.elt_loc_list** %p.0, metadata !2582, metadata !DIExpression()), !dbg !2602
  %tobool9 = icmp eq %struct.elt_loc_list* %5, null, !dbg !2608
  br i1 %tobool9, label %while.end, label %while.body, !dbg !2608

while.body:                                       ; preds = %while.cond
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %5, i64 0, i32 1, !dbg !2612
  %6 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !2612
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !2585, metadata !DIExpression()), !dbg !2613
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 0, !dbg !2614
  %bf.load = load i32, i32* %7, align 8, !dbg !2614
  %bf.clear = and i32 %bf.load, 65535, !dbg !2614
  %cmp10 = icmp eq i32 %bf.clear, 43, !dbg !2614
  br i1 %cmp10, label %if.end, label %if.then, !dbg !2616

if.then:                                          ; preds = %while.body
  %next12 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %5, i64 0, i32 0, !dbg !2617
  call void @llvm.dbg.value(metadata %struct.elt_loc_list** %next12, metadata !2582, metadata !DIExpression()), !dbg !2602
  br label %cleanup, !dbg !2619, !llvm.loop !2620

if.end:                                           ; preds = %while.body
  %8 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2622
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %8, i64 73, i32 1, !dbg !2622
  %9 = load i32, i32* %value, align 8, !dbg !2622
  %cmp14 = icmp slt i32 %num_mems.1, %9, !dbg !2623
  br i1 %cmp14, label %land.lhs.true, label %if.end22, !dbg !2624

land.lhs.true:                                    ; preds = %if.end
  %bf.load16 = load i32, i32* %2, align 8, !dbg !2625
  %bf.lshr = lshr i32 %bf.load16, 16, !dbg !2625
  %bf.clear17 = and i32 %bf.lshr, 255, !dbg !2625
  %call18 = tail call i32 @canon_true_dependence(%struct.rtx_def* %call2, i32 %bf.clear17, %struct.rtx_def* %call1, %struct.rtx_def* %6, %struct.rtx_def* null, i8 (%struct.rtx_def*, i8)* nonnull @cselib_rtx_varies_p) #6, !dbg !2626
  %tobool19 = icmp eq i32 %call18, 0, !dbg !2626
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !2627

if.then20:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i8 1, metadata !2578, metadata !DIExpression()), !dbg !2602
  %inc = add nsw i32 %num_mems.1, 1, !dbg !2628
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2576, metadata !DIExpression()), !dbg !2589
  %10 = load %struct.elt_loc_list*, %struct.elt_loc_list** %p.0, align 8, !dbg !2630
  %next21 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %10, i64 0, i32 0, !dbg !2631
  call void @llvm.dbg.value(metadata %struct.elt_loc_list** %next21, metadata !2582, metadata !DIExpression()), !dbg !2602
  br label %cleanup, !dbg !2632, !llvm.loop !2620

if.end22:                                         ; preds = %land.lhs.true, %if.end
  %arrayidx25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2633
  %rt_rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**, !dbg !2633
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx26, align 8, !dbg !2633
  %call27 = tail call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %11, i32 0, i32 0) #7, !dbg !2634
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %call27, metadata !2587, metadata !DIExpression()), !dbg !2613
  %addr_list = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %call27, i64 0, i32 4, !dbg !2635
  call void @llvm.dbg.value(metadata %struct.elt_list** %addr_list, metadata !2588, metadata !DIExpression()), !dbg !2613
  br label %for.cond28, !dbg !2636

for.cond28:                                       ; preds = %if.end32, %if.end22
  %mem_chain.0 = phi %struct.elt_list** [ %addr_list, %if.end22 ], [ %next33, %if.end32 ], !dbg !2613
  call void @llvm.dbg.value(metadata %struct.elt_list** %mem_chain.0, metadata !2588, metadata !DIExpression()), !dbg !2613
  %12 = load %struct.elt_list*, %struct.elt_list** %mem_chain.0, align 8, !dbg !2637
  %elt = getelementptr inbounds %struct.elt_list, %struct.elt_list* %12, i64 0, i32 1, !dbg !2642
  %13 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt, align 8, !dbg !2642
  %cmp29 = icmp eq %struct.cselib_val_struct* %13, %v.0, !dbg !2643
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !2644

if.then31:                                        ; preds = %for.cond28
  %mem_chain.0.lcssa = phi %struct.elt_list** [ %mem_chain.0, %for.cond28 ], !dbg !2613
  call void @llvm.dbg.value(metadata %struct.elt_list** %mem_chain.0.lcssa, metadata !2588, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata %struct.elt_list** %mem_chain.0.lcssa, metadata !2588, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata %struct.elt_list** %mem_chain.0.lcssa, metadata !2588, metadata !DIExpression()), !dbg !2613
  tail call fastcc void @unchain_one_elt_list(%struct.elt_list** %mem_chain.0.lcssa) #7, !dbg !2645
  tail call fastcc void @unchain_one_elt_loc_list(%struct.elt_loc_list** %p.0) #7, !dbg !2647
  br label %cleanup, !dbg !2621

if.end32:                                         ; preds = %for.cond28
  %next33 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %12, i64 0, i32 0, !dbg !2648
  call void @llvm.dbg.value(metadata %struct.elt_list** %next33, metadata !2588, metadata !DIExpression()), !dbg !2613
  br label %for.cond28, !dbg !2649, !llvm.loop !2650

cleanup:                                          ; preds = %if.then31, %if.then20, %if.then
  %p.1 = phi %struct.elt_loc_list** [ %p.0, %if.then31 ], [ %next21, %if.then20 ], [ %next12, %if.then ], !dbg !2602
  %has_mem.1 = phi i8 [ %has_mem.0, %if.then31 ], [ 1, %if.then20 ], [ %has_mem.0, %if.then ], !dbg !2602
  %num_mems.2 = phi i32 [ %num_mems.1, %if.then31 ], [ %inc, %if.then20 ], [ %num_mems.1, %if.then ], !dbg !2589
  call void @llvm.dbg.value(metadata i32 %num_mems.2, metadata !2576, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 %has_mem.1, metadata !2578, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata %struct.elt_loc_list** %p.1, metadata !2582, metadata !DIExpression()), !dbg !2602
  %.pre = load %struct.elt_loc_list*, %struct.elt_loc_list** %p.1, align 8, !dbg !2609
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %has_mem.0.lcssa = phi i8 [ %has_mem.0, %while.cond ], !dbg !2611
  %num_mems.1.lcssa = phi i32 [ %num_mems.1, %while.cond ], !dbg !2598
  call void @llvm.dbg.value(metadata i8 %has_mem.0.lcssa, metadata !2578, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i32 %num_mems.1.lcssa, metadata !2576, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 %has_mem.0.lcssa, metadata !2578, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i32 %num_mems.1.lcssa, metadata !2576, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 %has_mem.0.lcssa, metadata !2578, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i32 %num_mems.1.lcssa, metadata !2576, metadata !DIExpression()), !dbg !2589
  br i1 %cmp4, label %if.end58, label %land.lhs.true38, !dbg !2653

land.lhs.true38:                                  ; preds = %while.end
  %14 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !2655
  %cmp40 = icmp eq %struct.elt_loc_list* %14, null, !dbg !2656
  br i1 %cmp40, label %land.lhs.true42, label %if.end58, !dbg !2657

land.lhs.true42:                                  ; preds = %land.lhs.true38
  %val_rtx = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %v.0, i64 0, i32 2, !dbg !2658
  %15 = bitcast %struct.rtx_def** %val_rtx to i32**, !dbg !2658
  %16 = load i32*, i32** %15, align 8, !dbg !2658
  %bf.load43 = load i32, i32* %16, align 8, !dbg !2658
  %bf.clear45 = and i32 %bf.load43, 67108864, !dbg !2658
  %tobool46 = icmp eq i32 %bf.clear45, 0, !dbg !2658
  br i1 %tobool46, label %if.then47, label %if.end58, !dbg !2659

if.then47:                                        ; preds = %land.lhs.true42
  %tobool48 = icmp eq %struct.rtx_def* %cond, null, !dbg !2660
  br i1 %tobool48, label %if.else, label %land.lhs.true49, !dbg !2663

land.lhs.true49:                                  ; preds = %if.then47
  %17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i64 0, i32 0, !dbg !2664
  %bf.load50 = load i32, i32* %17, align 8, !dbg !2664
  %bf.clear51 = and i32 %bf.load50, 65535, !dbg !2664
  %cmp52 = icmp eq i32 %bf.clear51, 7, !dbg !2664
  br i1 %cmp52, label %if.then54, label %if.else, !dbg !2665

if.then54:                                        ; preds = %land.lhs.true49
  %18 = load i32, i32* @n_useless_debug_values, align 4, !dbg !2666
  %inc55 = add nsw i32 %18, 1, !dbg !2666
  store i32 %inc55, i32* @n_useless_debug_values, align 4, !dbg !2666
  br label %if.end58, !dbg !2667

if.else:                                          ; preds = %if.then47, %land.lhs.true49
  %19 = load i32, i32* @n_useless_values, align 4, !dbg !2668
  %inc56 = add nsw i32 %19, 1, !dbg !2668
  store i32 %inc56, i32* @n_useless_values, align 4, !dbg !2668
  br label %if.end58

if.end58:                                         ; preds = %land.lhs.true42, %while.end, %if.then54, %if.else, %land.lhs.true38
  %next_containing_mem = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %v.0, i64 0, i32 5, !dbg !2669
  %20 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %next_containing_mem, align 8, !dbg !2669
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %20, metadata !2575, metadata !DIExpression()), !dbg !2589
  %tobool59 = icmp eq i8 %has_mem.0.lcssa, 0, !dbg !2670
  br i1 %tobool59, label %if.else62, label %if.then60, !dbg !2672

if.then60:                                        ; preds = %if.end58
  store %struct.cselib_val_struct* %v.0, %struct.cselib_val_struct** %vp.0, align 8, !dbg !2673
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct** %next_containing_mem, metadata !2572, metadata !DIExpression()), !dbg !2589
  br label %for.inc, !dbg !2675

if.else62:                                        ; preds = %if.end58
  store %struct.cselib_val_struct* null, %struct.cselib_val_struct** %next_containing_mem, align 8, !dbg !2676
  br label %for.inc

for.inc:                                          ; preds = %if.then60, %if.else62
  %vp.1 = phi %struct.cselib_val_struct** [ %next_containing_mem, %if.then60 ], [ %vp.0, %if.else62 ], !dbg !2589
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct** %vp.1, metadata !2572, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %20, metadata !2574, metadata !DIExpression()), !dbg !2589
  br label %for.cond, !dbg !2677, !llvm.loop !2678

for.end65:                                        ; preds = %for.cond
  %vp.0.lcssa = phi %struct.cselib_val_struct** [ %vp.0, %for.cond ], !dbg !2589
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct** %vp.0.lcssa, metadata !2572, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct** %vp.0.lcssa, metadata !2572, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct** %vp.0.lcssa, metadata !2572, metadata !DIExpression()), !dbg !2589
  store %struct.cselib_val_struct* @dummy_val, %struct.cselib_val_struct** %vp.0.lcssa, align 8, !dbg !2680
  ret void, !dbg !2681
}

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_useless_values() unnamed_addr #5 !dbg !2682 {
entry:
  br label %do.body, !dbg !2686

do.body:                                          ; preds = %do.body, %entry
  store i1 false, i1* @values_became_useless, align 4, !dbg !2687
  %0 = load %struct.htab*, %struct.htab** @cselib_hash_table, align 8, !dbg !2689
  tail call void @htab_traverse(%struct.htab* %0, i32 (i8**, i8*)* nonnull @discard_useless_locs, i8* null) #6, !dbg !2690
  %.b = load i1, i1* @values_became_useless, align 4, !dbg !2691
  br i1 %.b, label %do.body, label %do.end, !dbg !2692, !llvm.loop !2693

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct** @first_containing_mem, metadata !2684, metadata !DIExpression()), !dbg !2695
  br label %for.cond, !dbg !2696

for.cond:                                         ; preds = %for.inc, %do.end
  %v.0.in = phi %struct.cselib_val_struct** [ @first_containing_mem, %do.end ], [ %next_containing_mem2, %for.inc ]
  %p.0 = phi %struct.cselib_val_struct** [ @first_containing_mem, %do.end ], [ %p.1, %for.inc ], !dbg !2695
  %v.0 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v.0.in, align 8, !dbg !2698
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct** %p.0, metadata !2684, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %v.0, metadata !2685, metadata !DIExpression()), !dbg !2695
  %cmp = icmp eq %struct.cselib_val_struct* %v.0, @dummy_val, !dbg !2699
  br i1 %cmp, label %for.end, label %for.body, !dbg !2701

for.body:                                         ; preds = %for.cond
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %v.0, i64 0, i32 3, !dbg !2702
  %1 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !2702
  %tobool1 = icmp eq %struct.elt_loc_list* %1, null, !dbg !2704
  br i1 %tobool1, label %for.inc, label %if.then, !dbg !2705

if.then:                                          ; preds = %for.body
  store %struct.cselib_val_struct* %v.0, %struct.cselib_val_struct** %p.0, align 8, !dbg !2706
  %next_containing_mem = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %v.0, i64 0, i32 5, !dbg !2708
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct** %next_containing_mem, metadata !2684, metadata !DIExpression()), !dbg !2695
  br label %for.inc, !dbg !2709

for.inc:                                          ; preds = %for.body, %if.then
  %p.1 = phi %struct.cselib_val_struct** [ %next_containing_mem, %if.then ], [ %p.0, %for.body ], !dbg !2695
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct** %p.1, metadata !2684, metadata !DIExpression()), !dbg !2695
  %next_containing_mem2 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %v.0, i64 0, i32 5, !dbg !2710
  br label %for.cond, !dbg !2711, !llvm.loop !2712

for.end:                                          ; preds = %for.cond
  %p.0.lcssa = phi %struct.cselib_val_struct** [ %p.0, %for.cond ], !dbg !2695
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct** %p.0.lcssa, metadata !2684, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct** %p.0.lcssa, metadata !2684, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct** %p.0.lcssa, metadata !2684, metadata !DIExpression()), !dbg !2695
  store %struct.cselib_val_struct* @dummy_val, %struct.cselib_val_struct** %p.0.lcssa, align 8, !dbg !2714
  %2 = load i32, i32* @n_useless_debug_values, align 4, !dbg !2715
  %3 = load i32, i32* @n_useless_values, align 4, !dbg !2716
  %add = add nsw i32 %3, %2, !dbg !2716
  store i32 %add, i32* @n_useless_values, align 4, !dbg !2716
  %4 = load i32, i32* @n_debug_values, align 4, !dbg !2717
  %sub = sub nsw i32 %4, %2, !dbg !2717
  store i32 %sub, i32* @n_debug_values, align 4, !dbg !2717
  store i32 0, i32* @n_useless_debug_values, align 4, !dbg !2718
  %5 = load %struct.htab*, %struct.htab** @cselib_hash_table, align 8, !dbg !2719
  tail call void @htab_traverse(%struct.htab* %5, i32 (i8**, i8*)* nonnull @discard_useless_values, i8* null) #6, !dbg !2720
  %6 = load i32, i32* @n_useless_values, align 4, !dbg !2721
  %tobool3 = icmp eq i32 %6, 0, !dbg !2721
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !2721

cond.true:                                        ; preds = %for.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 550, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2721
  br label %cond.end, !dbg !2721

cond.end:                                         ; preds = %for.end, %cond.true
  ret void, !dbg !2722
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cselib_reg_set_mode(%struct.rtx_def* %x) local_unnamed_addr #5 !dbg !2723 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2727, metadata !DIExpression()), !dbg !2728
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !2729
  %bf.load = load i32, i32* %0, align 8, !dbg !2729
  %bf.clear = and i32 %bf.load, 65535, !dbg !2729
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !2729
  br i1 %cmp, label %if.end, label %if.then, !dbg !2731

if.then:                                          ; preds = %entry
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2732
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !2732
  br label %return, !dbg !2733

if.end:                                           ; preds = %entry
  %1 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !2734
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x) #7, !dbg !2734
  %idxprom = zext i32 %call to i64, !dbg !2734
  %arrayidx = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %1, i64 %idxprom, !dbg !2734
  %2 = load %struct.elt_list*, %struct.elt_list** %arrayidx, align 8, !dbg !2734
  %cmp3 = icmp eq %struct.elt_list* %2, null, !dbg !2736
  br i1 %cmp3, label %return, label %lor.lhs.false, !dbg !2737

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !2738
  %call4 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x) #7, !dbg !2738
  %idxprom5 = zext i32 %call4 to i64, !dbg !2738
  %arrayidx6 = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %3, i64 %idxprom5, !dbg !2738
  %4 = load %struct.elt_list*, %struct.elt_list** %arrayidx6, align 8, !dbg !2738
  %elt = getelementptr inbounds %struct.elt_list, %struct.elt_list* %4, i64 0, i32 1, !dbg !2739
  %5 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt, align 8, !dbg !2739
  %cmp7 = icmp eq %struct.cselib_val_struct* %5, null, !dbg !2740
  br i1 %cmp7, label %return, label %if.end9, !dbg !2741

if.end9:                                          ; preds = %lor.lhs.false
  %6 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !2742
  %call10 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x) #7, !dbg !2742
  %idxprom11 = zext i32 %call10 to i64, !dbg !2742
  %arrayidx12 = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %6, i64 %idxprom11, !dbg !2742
  %7 = load %struct.elt_list*, %struct.elt_list** %arrayidx12, align 8, !dbg !2742
  %elt13 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %7, i64 0, i32 1, !dbg !2742
  %8 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt13, align 8, !dbg !2742
  %val_rtx = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %8, i64 0, i32 2, !dbg !2742
  %9 = bitcast %struct.rtx_def** %val_rtx to i32**, !dbg !2742
  %10 = load i32*, i32** %9, align 8, !dbg !2742
  %bf.load14 = load i32, i32* %10, align 8, !dbg !2742
  %bf.lshr15 = lshr i32 %bf.load14, 16, !dbg !2742
  %bf.clear16 = and i32 %bf.lshr15, 255, !dbg !2742
  br label %return, !dbg !2743

return:                                           ; preds = %if.end, %lor.lhs.false, %if.end9, %if.then
  %retval.0 = phi i32 [ %bf.clear16, %if.end9 ], [ %bf.clear2, %if.then ], [ 0, %lor.lhs.false ], [ 0, %if.end ], !dbg !2728
  ret i32 %retval.0, !dbg !2744
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rtx_equal_for_cselib_p(%struct.rtx_def* %x, %struct.rtx_def* %y) local_unnamed_addr #5 !dbg !2745 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2749, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata %struct.rtx_def* %y, metadata !2750, metadata !DIExpression()), !dbg !2780
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !2781
  %bf.load = load i32, i32* %0, align 8, !dbg !2781
  %bf.clear = and i32 %bf.load, 65535, !dbg !2781
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !2781
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2782

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 43, !dbg !2783
  br i1 %cmp3, label %if.then, label %if.end7, !dbg !2784

if.then:                                          ; preds = %lor.lhs.false, %entry
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2785
  %bf.clear5 = and i32 %bf.lshr, 255, !dbg !2785
  %call = tail call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %x, i32 %bf.clear5, i32 0) #7, !dbg !2786
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %call, metadata !2754, metadata !DIExpression()), !dbg !2787
  %tobool = icmp eq %struct.cselib_val_struct* %call, null, !dbg !2788
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !2790

if.then6:                                         ; preds = %if.then
  %val_rtx = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %call, i64 0, i32 2, !dbg !2791
  %1 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx, align 8, !dbg !2791
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !2749, metadata !DIExpression()), !dbg !2780
  br label %if.end7, !dbg !2792

if.end7:                                          ; preds = %if.then, %if.then6, %lor.lhs.false
  %x.addr.1 = phi %struct.rtx_def* [ %x, %lor.lhs.false ], [ %1, %if.then6 ], [ %x, %if.then ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.1, metadata !2749, metadata !DIExpression()), !dbg !2780
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %y, i64 0, i32 0, !dbg !2793
  %bf.load8 = load i32, i32* %2, align 8, !dbg !2793
  %bf.clear9 = and i32 %bf.load8, 65535, !dbg !2793
  %cmp10 = icmp eq i32 %bf.clear9, 37, !dbg !2793
  br i1 %cmp10, label %if.then15, label %lor.lhs.false11, !dbg !2794

lor.lhs.false11:                                  ; preds = %if.end7
  %cmp14 = icmp eq i32 %bf.clear9, 43, !dbg !2795
  br i1 %cmp14, label %if.then15, label %if.end25, !dbg !2796

if.then15:                                        ; preds = %lor.lhs.false11, %if.end7
  %bf.lshr18 = lshr i32 %bf.load8, 16, !dbg !2797
  %bf.clear19 = and i32 %bf.lshr18, 255, !dbg !2797
  %call20 = tail call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %y, i32 %bf.clear19, i32 0) #7, !dbg !2798
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %call20, metadata !2757, metadata !DIExpression()), !dbg !2799
  %tobool21 = icmp eq %struct.cselib_val_struct* %call20, null, !dbg !2800
  br i1 %tobool21, label %if.end25, label %if.then22, !dbg !2802

if.then22:                                        ; preds = %if.then15
  %val_rtx23 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %call20, i64 0, i32 2, !dbg !2803
  %3 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx23, align 8, !dbg !2803
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !2750, metadata !DIExpression()), !dbg !2780
  br label %if.end25, !dbg !2804

if.end25:                                         ; preds = %if.then15, %if.then22, %lor.lhs.false11
  %y.addr.1 = phi %struct.rtx_def* [ %y, %lor.lhs.false11 ], [ %3, %if.then22 ], [ %y, %if.then15 ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %y.addr.1, metadata !2750, metadata !DIExpression()), !dbg !2780
  %cmp26 = icmp eq %struct.rtx_def* %x.addr.1, %y.addr.1, !dbg !2805
  br i1 %cmp26, label %cleanup294, label %if.end28, !dbg !2807

if.end28:                                         ; preds = %if.end25
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.1, i64 0, i32 0, !dbg !2808
  %bf.load29 = load i32, i32* %4, align 8, !dbg !2808
  %bf.clear30 = and i32 %bf.load29, 65535, !dbg !2808
  %cmp31 = icmp eq i32 %bf.clear30, 1, !dbg !2810
  br i1 %cmp31, label %land.lhs.true, label %if.end41, !dbg !2811

land.lhs.true:                                    ; preds = %if.end28
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %y.addr.1, i64 0, i32 0, !dbg !2812
  %bf.load32 = load i32, i32* %5, align 8, !dbg !2812
  %bf.clear33 = and i32 %bf.load32, 65535, !dbg !2812
  %cmp34 = icmp eq i32 %bf.clear33, 1, !dbg !2813
  br i1 %cmp34, label %if.then35, label %if.end41, !dbg !2814

if.then35:                                        ; preds = %land.lhs.true
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2815
  %rt_cselib = bitcast %union.rtunion_def* %arrayidx to %struct.cselib_val_struct**, !dbg !2815
  %6 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib, align 8, !dbg !2815
  %arrayidx38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %y.addr.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2816
  %rt_cselib39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.cselib_val_struct**, !dbg !2816
  %7 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib39, align 8, !dbg !2816
  %cmp40 = icmp eq %struct.cselib_val_struct* %6, %7, !dbg !2817
  %conv = zext i1 %cmp40 to i32, !dbg !2817
  br label %cleanup294, !dbg !2818

if.end41:                                         ; preds = %land.lhs.true, %if.end28
  br i1 %cmp31, label %if.then46, label %if.end70, !dbg !2819

if.then46:                                        ; preds = %if.end41
  %arrayidx50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2820
  %rt_cselib51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.cselib_val_struct**, !dbg !2820
  %8 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib51, align 8, !dbg !2820
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %8, metadata !2760, metadata !DIExpression()), !dbg !2821
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %8, i64 0, i32 3, !dbg !2822
  br label %for.cond, !dbg !2823

for.cond:                                         ; preds = %for.inc, %if.then46
  %l.0.in = phi %struct.elt_loc_list** [ %locs, %if.then46 ], [ %next, %for.inc ]
  %l.0 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l.0.in, align 8, !dbg !2824
  call void @llvm.dbg.value(metadata %struct.elt_loc_list* %l.0, metadata !2763, metadata !DIExpression()), !dbg !2821
  %tobool52 = icmp eq %struct.elt_loc_list* %l.0, null, !dbg !2825
  br i1 %tobool52, label %cleanup294.loopexit, label %for.body, !dbg !2825

for.body:                                         ; preds = %for.cond
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %l.0, i64 0, i32 1, !dbg !2826
  %9 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !2826
  call void @llvm.dbg.value(metadata %struct.rtx_def* %9, metadata !2764, metadata !DIExpression()), !dbg !2827
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i64 0, i32 0, !dbg !2828
  %bf.load53 = load i32, i32* %10, align 8, !dbg !2828
  %bf.clear54 = and i32 %bf.load53, 65535, !dbg !2828
  %cmp55 = icmp eq i32 %bf.clear54, 37, !dbg !2828
  br i1 %cmp55, label %cleanup, label %lor.lhs.false57, !dbg !2830

lor.lhs.false57:                                  ; preds = %for.body
  %cmp60 = icmp eq i32 %bf.clear54, 43, !dbg !2831
  br i1 %cmp60, label %cleanup, label %if.else, !dbg !2832

if.else:                                          ; preds = %lor.lhs.false57
  %call63 = tail call i32 @rtx_equal_for_cselib_p(%struct.rtx_def* %9, %struct.rtx_def* %y.addr.1) #7, !dbg !2833
  %tobool64 = icmp ne i32 %call63, 0, !dbg !2833
  %spec.select = zext i1 %tobool64 to i32, !dbg !2835
  br label %cleanup, !dbg !2835

cleanup:                                          ; preds = %if.else, %for.body, %lor.lhs.false57
  %cleanup.dest.slot.0 = phi i32 [ 4, %lor.lhs.false57 ], [ 4, %for.body ], [ %spec.select, %if.else ]
  switch i32 %cleanup.dest.slot.0, label %cleanup294.loopexit [
    i32 0, label %for.inc
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup, %cleanup
  %next = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %l.0, i64 0, i32 0, !dbg !2836
  br label %for.cond, !dbg !2837, !llvm.loop !2838

if.end70:                                         ; preds = %if.end41
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %y.addr.1, i64 0, i32 0, !dbg !2840
  %bf.load71 = load i32, i32* %11, align 8, !dbg !2840
  %bf.clear72 = and i32 %bf.load71, 65535, !dbg !2840
  %cmp73 = icmp eq i32 %bf.clear72, 1, !dbg !2841
  br i1 %cmp73, label %if.then75, label %if.end112, !dbg !2842

if.then75:                                        ; preds = %if.end70
  %arrayidx79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %y.addr.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2843
  %rt_cselib80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.cselib_val_struct**, !dbg !2843
  %12 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib80, align 8, !dbg !2843
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %12, metadata !2768, metadata !DIExpression()), !dbg !2844
  %locs82 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %12, i64 0, i32 3, !dbg !2845
  br label %for.cond83, !dbg !2846

for.cond83:                                       ; preds = %for.inc107, %if.then75
  %l81.0.in = phi %struct.elt_loc_list** [ %locs82, %if.then75 ], [ %next108, %for.inc107 ]
  %l81.0 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l81.0.in, align 8, !dbg !2847
  call void @llvm.dbg.value(metadata %struct.elt_loc_list* %l81.0, metadata !2771, metadata !DIExpression()), !dbg !2844
  %tobool84 = icmp eq %struct.elt_loc_list* %l81.0, null, !dbg !2848
  br i1 %tobool84, label %cleanup294.loopexit5, label %for.body85, !dbg !2848

for.body85:                                       ; preds = %for.cond83
  %loc87 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %l81.0, i64 0, i32 1, !dbg !2849
  %13 = load %struct.rtx_def*, %struct.rtx_def** %loc87, align 8, !dbg !2849
  call void @llvm.dbg.value(metadata %struct.rtx_def* %13, metadata !2772, metadata !DIExpression()), !dbg !2850
  %14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i64 0, i32 0, !dbg !2851
  %bf.load88 = load i32, i32* %14, align 8, !dbg !2851
  %bf.clear89 = and i32 %bf.load88, 65535, !dbg !2851
  %cmp90 = icmp eq i32 %bf.clear89, 37, !dbg !2851
  br i1 %cmp90, label %cleanup104, label %lor.lhs.false92, !dbg !2853

lor.lhs.false92:                                  ; preds = %for.body85
  %cmp95 = icmp eq i32 %bf.clear89, 43, !dbg !2854
  br i1 %cmp95, label %cleanup104, label %if.else98, !dbg !2855

if.else98:                                        ; preds = %lor.lhs.false92
  %call99 = tail call i32 @rtx_equal_for_cselib_p(%struct.rtx_def* %x.addr.1, %struct.rtx_def* %13) #7, !dbg !2856
  %tobool100 = icmp ne i32 %call99, 0, !dbg !2856
  %spec.select2 = zext i1 %tobool100 to i32, !dbg !2858
  br label %cleanup104, !dbg !2858

cleanup104:                                       ; preds = %if.else98, %for.body85, %lor.lhs.false92
  %cleanup.dest.slot.1 = phi i32 [ 7, %lor.lhs.false92 ], [ 7, %for.body85 ], [ %spec.select2, %if.else98 ]
  switch i32 %cleanup.dest.slot.1, label %cleanup294.loopexit5 [
    i32 0, label %for.inc107
    i32 7, label %for.inc107
  ]

for.inc107:                                       ; preds = %cleanup104, %cleanup104
  %next108 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %l81.0, i64 0, i32 0, !dbg !2859
  br label %for.cond83, !dbg !2860, !llvm.loop !2861

if.end112:                                        ; preds = %if.end70
  %15 = xor i32 %bf.load29, %bf.load71, !dbg !2863
  %16 = and i32 %15, 65535, !dbg !2863
  %cmp117 = icmp eq i32 %16, 0, !dbg !2863
  br i1 %cmp117, label %lor.lhs.false119, label %cleanup294, !dbg !2865

lor.lhs.false119:                                 ; preds = %if.end112
  %17 = and i32 %15, 16711680, !dbg !2866
  %cmp126 = icmp eq i32 %17, 0, !dbg !2866
  br i1 %cmp126, label %if.end129, label %cleanup294, !dbg !2867

if.end129:                                        ; preds = %lor.lhs.false119
  %trunc = trunc i32 %bf.load29 to i16, !dbg !2868
  switch i16 %trunc, label %sw.epilog [
    i16 32, label %cleanup294
    i16 31, label %cleanup294
    i16 2, label %cleanup294
    i16 44, label %sw.bb132
  ], !dbg !2868

sw.bb132:                                         ; preds = %if.end129
  %arrayidx135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2869
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx135 to %struct.rtx_def**, !dbg !2869
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2869
  %arrayidx138 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %y.addr.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2871
  %rt_rtx139 = bitcast %union.rtunion_def* %arrayidx138 to %struct.rtx_def**, !dbg !2871
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx139, align 8, !dbg !2871
  %cmp140 = icmp eq %struct.rtx_def* %18, %19, !dbg !2872
  %conv141 = zext i1 %cmp140 to i32, !dbg !2872
  br label %cleanup294, !dbg !2873

sw.epilog:                                        ; preds = %if.end129
  call void @llvm.dbg.value(metadata i32 %bf.clear30, metadata !2751, metadata !DIExpression()), !dbg !2780
  %idxprom = zext i32 %bf.clear30 to i64, !dbg !2874
  %arrayidx144 = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom, !dbg !2874
  %20 = load i8*, i8** %arrayidx144, align 8, !dbg !2874
  call void @llvm.dbg.value(metadata i8* %20, metadata !2752, metadata !DIExpression()), !dbg !2780
  %arrayidx146 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom, !dbg !2875
  %21 = load i8, i8* %arrayidx146, align 1, !dbg !2875
  call void @llvm.dbg.value(metadata i8 %21, metadata !2753, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2780
  %u273 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.1, i64 0, i32 1, !dbg !2876
  %fld274 = bitcast %union.u* %u273 to [1 x %union.rtunion_def]*, !dbg !2876
  %u277 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %y.addr.1, i64 0, i32 1, !dbg !2876
  %fld278 = bitcast %union.u* %u277 to [1 x %union.rtunion_def]*, !dbg !2876
  %22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2879
  %rt_rtx238 = bitcast %union.rtunion_def* %22 to %struct.rtx_def**, !dbg !2879
  %arrayidx241 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %y.addr.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2879
  %rt_rtx242 = bitcast %union.rtunion_def* %arrayidx241 to %struct.rtx_def**, !dbg !2879
  %arrayidx248 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2879
  %rt_rtx249 = bitcast %union.rtunion_def* %arrayidx248 to %struct.rtx_def**, !dbg !2879
  %23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %y.addr.1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2879
  %rt_rtx253 = bitcast %union.rtunion_def* %23 to %struct.rtx_def**, !dbg !2879
  %hwint = bitcast %union.u* %u273 to [1 x i64]*, !dbg !2881
  %hwint160 = bitcast %union.u* %u277 to [1 x i64]*, !dbg !2881
  %24 = zext i8 %21 to i64, !dbg !2883
  br label %for.cond148, !dbg !2883

for.cond148:                                      ; preds = %for.inc292, %sw.epilog
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc292 ], [ %24, %sw.epilog ]
  %retval.6 = phi i32 [ %retval.7, %for.inc292 ], [ undef, %sw.epilog ]
  %indvars.iv.next11 = add nsw i64 %indvars.iv10, -1, !dbg !2884
  call void @llvm.dbg.value(metadata i32 undef, metadata !2753, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2780
  %cmp149 = icmp sgt i64 %indvars.iv10, 0, !dbg !2885
  br i1 %cmp149, label %for.body151, label %cleanup294.loopexit7, !dbg !2886

for.body151:                                      ; preds = %for.cond148
  %arrayidx153 = getelementptr inbounds i8, i8* %20, i64 %indvars.iv.next11, !dbg !2887
  %25 = load i8, i8* %arrayidx153, align 1, !dbg !2887
  %conv154 = sext i8 %25 to i32, !dbg !2887
  switch i32 %conv154, label %sw.default287 [
    i32 119, label %sw.bb155
    i32 110, label %sw.bb167
    i32 105, label %sw.bb167
    i32 86, label %sw.bb181
    i32 69, label %sw.bb181
    i32 101, label %sw.bb227
    i32 83, label %sw.bb272
    i32 115, label %sw.bb272
    i32 117, label %sw.epilog288
    i32 48, label %sw.epilog288
    i32 116, label %sw.epilog288
  ], !dbg !2888

sw.bb155:                                         ; preds = %for.body151
  %arrayidx158 = getelementptr inbounds [1 x i64], [1 x i64]* %hwint, i64 0, i64 %indvars.iv.next11, !dbg !2889
  %26 = load i64, i64* %arrayidx158, align 8, !dbg !2889
  %arrayidx162 = getelementptr inbounds [1 x i64], [1 x i64]* %hwint160, i64 0, i64 %indvars.iv.next11, !dbg !2890
  %27 = load i64, i64* %arrayidx162, align 8, !dbg !2890
  %cmp163 = icmp eq i64 %26, %27, !dbg !2891
  br i1 %cmp163, label %sw.epilog288, label %cleanup289, !dbg !2892

sw.bb167:                                         ; preds = %for.body151, %for.body151
  %arrayidx171 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld274, i64 0, i64 %indvars.iv.next11, !dbg !2893
  %rt_int = bitcast %union.rtunion_def* %arrayidx171 to i32*, !dbg !2893
  %28 = load i32, i32* %rt_int, align 8, !dbg !2893
  %arrayidx175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld278, i64 0, i64 %indvars.iv.next11, !dbg !2895
  %rt_int176 = bitcast %union.rtunion_def* %arrayidx175 to i32*, !dbg !2895
  %29 = load i32, i32* %rt_int176, align 8, !dbg !2895
  %cmp177 = icmp eq i32 %28, %29, !dbg !2896
  br i1 %cmp177, label %sw.epilog288, label %cleanup289, !dbg !2897

sw.bb181:                                         ; preds = %for.body151, %for.body151
  %arrayidx185 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld274, i64 0, i64 %indvars.iv.next11, !dbg !2898
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx185 to %struct.rtvec_def**, !dbg !2898
  %30 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !2898
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %30, i64 0, i32 0, !dbg !2898
  %31 = load i32, i32* %num_elem, align 8, !dbg !2898
  %arrayidx189 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld278, i64 0, i64 %indvars.iv.next11, !dbg !2900
  %rt_rtvec190 = bitcast %union.rtunion_def* %arrayidx189 to %struct.rtvec_def**, !dbg !2900
  %32 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec190, align 8, !dbg !2900
  %num_elem191 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %32, i64 0, i32 0, !dbg !2900
  %33 = load i32, i32* %num_elem191, align 8, !dbg !2900
  %cmp192 = icmp eq i32 %31, %33, !dbg !2901
  br i1 %cmp192, label %for.cond196.preheader, label %cleanup289, !dbg !2902

for.cond196.preheader:                            ; preds = %sw.bb181
  br label %for.cond196, !dbg !2903

for.cond196:                                      ; preds = %for.cond196.preheader, %for.inc225
  %indvars.iv = phi i64 [ 0, %for.cond196.preheader ], [ %indvars.iv.next, %for.inc225 ], !dbg !2905
  %34 = phi i32 [ %31, %for.cond196.preheader ], [ %.pre9, %for.inc225 ], !dbg !2905
  %35 = phi %struct.rtvec_def* [ %30, %for.cond196.preheader ], [ %.pre, %for.inc225 ], !dbg !2905
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2776, metadata !DIExpression()), !dbg !2907
  %36 = sext i32 %34 to i64, !dbg !2908
  %cmp203 = icmp slt i64 %indvars.iv, %36, !dbg !2908
  br i1 %cmp203, label %for.body205, label %sw.epilog288.loopexit, !dbg !2903

for.body205:                                      ; preds = %for.cond196
  %arrayidx212 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %35, i64 0, i32 1, i64 %indvars.iv, !dbg !2909
  %37 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx212, align 8, !dbg !2909
  %38 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec190, align 8, !dbg !2911
  %arrayidx220 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %38, i64 0, i32 1, i64 %indvars.iv, !dbg !2911
  %39 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx220, align 8, !dbg !2911
  %call221 = tail call i32 @rtx_equal_for_cselib_p(%struct.rtx_def* %37, %struct.rtx_def* %39) #7, !dbg !2912
  %tobool222 = icmp eq i32 %call221, 0, !dbg !2912
  br i1 %tobool222, label %cleanup289.loopexit, label %for.inc225, !dbg !2913

for.inc225:                                       ; preds = %for.body205
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2914
  call void @llvm.dbg.value(metadata i32 undef, metadata !2776, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2907
  %.pre = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !2905
  %num_elem202.phi.trans.insert = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %.pre, i64 0, i32 0, !dbg !2915
  %.pre9 = load i32, i32* %num_elem202.phi.trans.insert, align 8, !dbg !2905
  br label %for.cond196, !dbg !2916, !llvm.loop !2917

sw.bb227:                                         ; preds = %for.body151
  %40 = icmp eq i64 %indvars.iv.next11, 1
  br i1 %40, label %land.lhs.true230, label %if.end257, !dbg !2919

land.lhs.true230:                                 ; preds = %sw.bb227
  %41 = load i8 (%struct.rtx_def*, i32)*, i8 (%struct.rtx_def*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 38), align 8, !dbg !2920
  %call231 = tail call zeroext i8 %41(%struct.rtx_def* %x.addr.1, i32 0) #6, !dbg !2921
  %tobool233 = icmp eq i8 %call231, 0, !dbg !2921
  br i1 %tobool233, label %if.end257, label %land.lhs.true234, !dbg !2922

land.lhs.true234:                                 ; preds = %land.lhs.true230
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx238, align 8, !dbg !2923
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx242, align 8, !dbg !2924
  %call243 = tail call i32 @rtx_equal_for_cselib_p(%struct.rtx_def* %42, %struct.rtx_def* %43) #7, !dbg !2925
  %tobool244 = icmp eq i32 %call243, 0, !dbg !2925
  br i1 %tobool244, label %if.end257, label %land.lhs.true245, !dbg !2926

land.lhs.true245:                                 ; preds = %land.lhs.true234
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx249, align 8, !dbg !2927
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx253, align 8, !dbg !2928
  %call254 = tail call i32 @rtx_equal_for_cselib_p(%struct.rtx_def* %44, %struct.rtx_def* %45) #7, !dbg !2929
  %tobool255 = icmp eq i32 %call254, 0, !dbg !2929
  br i1 %tobool255, label %if.end257, label %cleanup289, !dbg !2930

if.end257:                                        ; preds = %land.lhs.true245, %land.lhs.true234, %land.lhs.true230, %sw.bb227
  %arrayidx261 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld274, i64 0, i64 %indvars.iv.next11, !dbg !2931
  %rt_rtx262 = bitcast %union.rtunion_def* %arrayidx261 to %struct.rtx_def**, !dbg !2931
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx262, align 8, !dbg !2931
  %arrayidx266 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld278, i64 0, i64 %indvars.iv.next11, !dbg !2933
  %rt_rtx267 = bitcast %union.rtunion_def* %arrayidx266 to %struct.rtx_def**, !dbg !2933
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx267, align 8, !dbg !2933
  %call268 = tail call i32 @rtx_equal_for_cselib_p(%struct.rtx_def* %46, %struct.rtx_def* %47) #7, !dbg !2934
  %tobool269 = icmp eq i32 %call268, 0, !dbg !2934
  br i1 %tobool269, label %cleanup289, label %sw.epilog288, !dbg !2935

sw.bb272:                                         ; preds = %for.body151, %for.body151
  %rt_str = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld274, i64 0, i64 %indvars.iv.next11, i32 0, !dbg !2936
  %48 = load i8*, i8** %rt_str, align 8, !dbg !2936
  %rt_str281 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld278, i64 0, i64 %indvars.iv.next11, i32 0, !dbg !2937
  %49 = load i8*, i8** %rt_str281, align 8, !dbg !2937
  %call282 = tail call i32 @strcmp(i8* %48, i8* %49) #6, !dbg !2938
  %tobool283 = icmp eq i32 %call282, 0, !dbg !2938
  br i1 %tobool283, label %sw.epilog288, label %cleanup289, !dbg !2939

sw.default287:                                    ; preds = %for.body151
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 766, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2940
  br label %sw.epilog288, !dbg !2941

sw.epilog288.loopexit:                            ; preds = %for.cond196
  br label %sw.epilog288, !dbg !2942

sw.epilog288:                                     ; preds = %sw.epilog288.loopexit, %sw.bb155, %sw.bb167, %if.end257, %sw.bb272, %for.body151, %for.body151, %sw.default287, %for.body151
  br label %cleanup289, !dbg !2942

cleanup289.loopexit:                              ; preds = %for.body205
  br label %cleanup289

cleanup289:                                       ; preds = %cleanup289.loopexit, %sw.bb155, %sw.bb167, %sw.bb181, %land.lhs.true245, %if.end257, %sw.bb272, %sw.epilog288
  %cleanup.dest.slot.2 = phi i1 [ true, %sw.epilog288 ], [ false, %sw.bb155 ], [ false, %sw.bb167 ], [ false, %sw.bb181 ], [ false, %land.lhs.true245 ], [ false, %if.end257 ], [ false, %sw.bb272 ], [ false, %cleanup289.loopexit ]
  %retval.7 = phi i32 [ %retval.6, %sw.epilog288 ], [ 0, %sw.bb155 ], [ 0, %sw.bb167 ], [ 0, %sw.bb181 ], [ 1, %land.lhs.true245 ], [ 0, %if.end257 ], [ 0, %sw.bb272 ], [ 0, %cleanup289.loopexit ]
  br i1 %cleanup.dest.slot.2, label %for.inc292, label %cleanup294.loopexit7

for.inc292:                                       ; preds = %cleanup289
  call void @llvm.dbg.value(metadata i32 undef, metadata !2753, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2780
  br label %for.cond148, !dbg !2943, !llvm.loop !2944

cleanup294.loopexit:                              ; preds = %cleanup, %for.cond
  %retval.8.ph = phi i32 [ 0, %for.cond ], [ 1, %cleanup ]
  br label %cleanup294, !dbg !2946

cleanup294.loopexit5:                             ; preds = %cleanup104, %for.cond83
  %retval.8.ph6 = phi i32 [ 0, %for.cond83 ], [ 1, %cleanup104 ]
  br label %cleanup294, !dbg !2946

cleanup294.loopexit7:                             ; preds = %cleanup289, %for.cond148
  %retval.8.ph8 = phi i32 [ 1, %for.cond148 ], [ %retval.7, %cleanup289 ]
  br label %cleanup294, !dbg !2946

cleanup294:                                       ; preds = %cleanup294.loopexit7, %cleanup294.loopexit5, %cleanup294.loopexit, %lor.lhs.false119, %if.end112, %if.end129, %if.end129, %if.end129, %if.end25, %sw.bb132, %if.then35
  %retval.8 = phi i32 [ %conv, %if.then35 ], [ %conv141, %sw.bb132 ], [ 1, %if.end25 ], [ 0, %lor.lhs.false119 ], [ 0, %if.end112 ], [ 0, %if.end129 ], [ 0, %if.end129 ], [ 0, %if.end129 ], [ %retval.8.ph, %cleanup294.loopexit ], [ %retval.8.ph6, %cleanup294.loopexit5 ], [ %retval.8.ph8, %cleanup294.loopexit7 ]
  ret i32 %retval.8, !dbg !2946
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %x, i32 %mode, i32 %create) local_unnamed_addr #5 !dbg !2947 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2951, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2952, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 %create, metadata !2953, metadata !DIExpression()), !dbg !2955
  %call = tail call fastcc %struct.cselib_val_struct* @cselib_lookup_1(%struct.rtx_def* %x, i32 %mode, i32 %create) #7, !dbg !2956
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %call, metadata !2954, metadata !DIExpression()), !dbg !2955
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2957
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2957
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2959

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @dump_flags, align 4, !dbg !2960
  %and = and i32 %1, 8, !dbg !2961
  %tobool1 = icmp eq i32 %and, 0, !dbg !2961
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2962

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* nonnull %0) #6, !dbg !2963
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2965
  tail call void @print_inline_rtx(%struct._IO_FILE* %2, %struct.rtx_def* %x, i32 2) #6, !dbg !2966
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2967
  %tobool3 = icmp eq %struct.cselib_val_struct* %call, null, !dbg !2968
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !2968

cond.true:                                        ; preds = %if.then
  %uid = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %call, i64 0, i32 1, !dbg !2969
  %4 = load i32, i32* %uid, align 4, !dbg !2969
  br label %cond.end, !dbg !2968

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %if.then ], !dbg !2968
  br i1 %tobool3, label %cond.end7, label %cond.true5, !dbg !2970

cond.true5:                                       ; preds = %cond.end
  %hash = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %call, i64 0, i32 0, !dbg !2971
  %5 = load i32, i32* %hash, align 8, !dbg !2971
  br label %cond.end7, !dbg !2970

cond.end7:                                        ; preds = %cond.end, %cond.true5
  %cond8 = phi i32 [ %5, %cond.true5 ], [ 0, %cond.end ], !dbg !2970
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %cond, i32 %cond8) #6, !dbg !2972
  br label %if.end, !dbg !2973

if.end:                                           ; preds = %land.lhs.true, %entry, %cond.end7
  ret %struct.cselib_val_struct* %call, !dbg !2974
}

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @cselib_expand_value_rtx(%struct.rtx_def* %orig, %struct.bitmap_head_def* %regs_active, i32 %max_depth) local_unnamed_addr #5 !dbg !2975 {
entry:
  %evd = alloca %struct.expand_value_data, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %orig, metadata !2980, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %regs_active, metadata !2981, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i32 %max_depth, metadata !2982, metadata !DIExpression()), !dbg !2994
  %0 = bitcast %struct.expand_value_data* %evd to i8*, !dbg !2995
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !2995
  %regs_active1 = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 0, !dbg !2996
  store %struct.bitmap_head_def* %regs_active, %struct.bitmap_head_def** %regs_active1, align 8, !dbg !2997
  %callback = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 1, !dbg !2998
  store %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)* null, %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)** %callback, align 8, !dbg !2999
  %callback_arg = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 2, !dbg !3000
  store i8* null, i8** %callback_arg, align 8, !dbg !3001
  %dummy = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 3, !dbg !3002
  store i8 0, i8* %dummy, align 8, !dbg !3003
  call void @llvm.dbg.value(metadata %struct.expand_value_data* %evd, metadata !2983, metadata !DIExpression(DW_OP_deref)), !dbg !2994
  %call = call fastcc %struct.rtx_def* @cselib_expand_value_rtx_1(%struct.rtx_def* %orig, %struct.expand_value_data* nonnull %evd, i32 %max_depth) #7, !dbg !3004
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !3005
  ret %struct.rtx_def* %call, !dbg !3006
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @cselib_expand_value_rtx_1(%struct.rtx_def* %orig, %struct.expand_value_data* %evd, i32 %max_depth) unnamed_addr #5 !dbg !3007 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %orig, metadata !3012, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata %struct.expand_value_data* %evd, metadata !3013, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i32 %max_depth, metadata !3014, metadata !DIExpression()), !dbg !3047
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig, i64 0, i32 0, !dbg !3048
  %bf.load = load i32, i32* %0, align 8, !dbg !3048
  %bf.clear = and i32 %bf.load, 65535, !dbg !3048
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3019, metadata !DIExpression()), !dbg !3047
  %cmp = icmp slt i32 %max_depth, 1, !dbg !3049
  br i1 %cmp, label %cleanup436, label %if.end, !dbg !3051

if.end:                                           ; preds = %entry
  %trunc = trunc i32 %bf.load to i16, !dbg !3052
  switch i16 %trunc, label %sw.epilog [
    i16 37, label %sw.bb
    i16 30, label %sw.bb37
    i16 32, label %sw.bb37
    i16 33, label %sw.bb37
    i16 45, label %sw.bb37
    i16 12, label %sw.bb37
    i16 36, label %sw.bb37
    i16 46, label %sw.bb37
    i16 38, label %sw.bb37
    i16 25, label %sw.bb38
    i16 35, label %sw.bb52
    i16 39, label %sw.bb57
    i16 1, label %sw.bb113
    i16 2, label %sw.bb141
  ], !dbg !3052

sw.bb:                                            ; preds = %if.end
  %1 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !3053
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %orig) #7, !dbg !3053
  %idxprom = zext i32 %call to i64, !dbg !3053
  %arrayidx = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %1, i64 %idxprom, !dbg !3053
  %2 = load %struct.elt_list*, %struct.elt_list** %arrayidx, align 8, !dbg !3053
  call void @llvm.dbg.value(metadata %struct.elt_list* %2, metadata !3022, metadata !DIExpression()), !dbg !3054
  %tobool = icmp eq %struct.elt_list* %2, null, !dbg !3055
  br i1 %tobool, label %if.end3, label %land.lhs.true, !dbg !3057

land.lhs.true:                                    ; preds = %sw.bb
  %elt = getelementptr inbounds %struct.elt_list, %struct.elt_list* %2, i64 0, i32 1, !dbg !3058
  %3 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt, align 8, !dbg !3058
  %cmp1 = icmp eq %struct.cselib_val_struct* %3, null, !dbg !3059
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3060

if.then2:                                         ; preds = %land.lhs.true
  %next = getelementptr inbounds %struct.elt_list, %struct.elt_list* %2, i64 0, i32 0, !dbg !3061
  %4 = load %struct.elt_list*, %struct.elt_list** %next, align 8, !dbg !3061
  call void @llvm.dbg.value(metadata %struct.elt_list* %4, metadata !3022, metadata !DIExpression()), !dbg !3054
  br label %if.end3, !dbg !3062

if.end3:                                          ; preds = %sw.bb, %if.then2, %land.lhs.true
  %l.0 = phi %struct.elt_list* [ %4, %if.then2 ], [ %2, %land.lhs.true ], [ null, %sw.bb ], !dbg !3054
  call void @llvm.dbg.value(metadata %struct.elt_list* %l.0, metadata !3022, metadata !DIExpression()), !dbg !3054
  br label %for.cond, !dbg !3063

for.cond:                                         ; preds = %for.inc, %if.end3
  %l.1 = phi %struct.elt_list* [ %l.0, %if.end3 ], [ %15, %for.inc ], !dbg !3054
  call void @llvm.dbg.value(metadata %struct.elt_list* %l.1, metadata !3022, metadata !DIExpression()), !dbg !3054
  %tobool4 = icmp eq %struct.elt_list* %l.1, null, !dbg !3064
  br i1 %tobool4, label %cleanup36.loopexit, label %for.body, !dbg !3064

for.body:                                         ; preds = %for.cond
  %elt5 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %l.1, i64 0, i32 1, !dbg !3065
  %5 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt5, align 8, !dbg !3065
  %val_rtx = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %5, i64 0, i32 2, !dbg !3065
  %6 = bitcast %struct.rtx_def** %val_rtx to i32**, !dbg !3065
  %7 = load i32*, i32** %6, align 8, !dbg !3065
  %bf.load6 = load i32, i32* %7, align 8, !dbg !3065
  %bf.load8 = load i32, i32* %0, align 8, !dbg !3066
  %bf.lshr4 = xor i32 %bf.load6, %bf.load8, !dbg !3067
  %8 = and i32 %bf.lshr4, 16711680, !dbg !3067
  %cmp11 = icmp eq i32 %8, 0, !dbg !3067
  br i1 %cmp11, label %if.then12, label %for.inc, !dbg !3068

if.then12:                                        ; preds = %for.body
  %elt5.lcssa = phi %struct.cselib_val_struct** [ %elt5, %for.body ], !dbg !3065
  call void @llvm.dbg.value(metadata %struct.elt_list* %l.1, metadata !3022, metadata !DIExpression()), !dbg !3054
  %call13 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %orig) #7, !dbg !3069
  call void @llvm.dbg.value(metadata i32 %call13, metadata !3030, metadata !DIExpression()), !dbg !3070
  switch i32 %call13, label %if.end19 [
    i32 7, label %cleanup36
    i32 20, label %cleanup36
    i32 6, label %cleanup36
  ], !dbg !3071

if.end19:                                         ; preds = %if.then12
  %regs_active = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 0, !dbg !3073
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %regs_active, align 8, !dbg !3073
  %call20 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %9, i32 %call13) #6, !dbg !3074
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3075
  %tobool21 = icmp eq %struct._IO_FILE* %10, null, !dbg !3075
  br i1 %tobool21, label %if.end26, label %land.lhs.true22, !dbg !3077

land.lhs.true22:                                  ; preds = %if.end19
  %11 = load i32, i32* @dump_flags, align 4, !dbg !3078
  %and = and i32 %11, 8, !dbg !3079
  %tobool23 = icmp eq i32 %and, 0, !dbg !3079
  br i1 %tobool23, label %if.end26, label %if.then24, !dbg !3080

if.then24:                                        ; preds = %land.lhs.true22
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %call13) #6, !dbg !3081
  br label %if.end26, !dbg !3081

if.end26:                                         ; preds = %land.lhs.true22, %if.end19, %if.then24
  %12 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt5.lcssa, align 8, !dbg !3082
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %12, i64 0, i32 3, !dbg !3083
  %13 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !3083
  %call28 = tail call fastcc %struct.rtx_def* @expand_loc(%struct.elt_loc_list* %13, %struct.expand_value_data* %evd, i32 %max_depth) #7, !dbg !3084
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call28, metadata !3025, metadata !DIExpression()), !dbg !3070
  %14 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %regs_active, align 8, !dbg !3085
  %call30 = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %14, i32 %call13) #6, !dbg !3086
  %tobool31 = icmp eq %struct.rtx_def* %call28, null, !dbg !3087
  %call28.orig = select i1 %tobool31, %struct.rtx_def* %orig, %struct.rtx_def* %call28, !dbg !3089
  br label %cleanup36, !dbg !3089

for.inc:                                          ; preds = %for.body
  %next35 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %l.1, i64 0, i32 0, !dbg !3090
  %15 = load %struct.elt_list*, %struct.elt_list** %next35, align 8, !dbg !3090
  call void @llvm.dbg.value(metadata %struct.elt_list* %15, metadata !3022, metadata !DIExpression()), !dbg !3054
  br label %for.cond, !dbg !3091, !llvm.loop !3092

cleanup36.loopexit:                               ; preds = %for.cond
  br label %cleanup36

cleanup36:                                        ; preds = %cleanup36.loopexit, %if.then12, %if.then12, %if.then12, %if.end26
  %cleanup.dest.slot.1 = phi i1 [ false, %if.end26 ], [ false, %if.then12 ], [ false, %if.then12 ], [ false, %if.then12 ], [ true, %cleanup36.loopexit ]
  %retval.1 = phi %struct.rtx_def* [ %call28.orig, %if.end26 ], [ %orig, %if.then12 ], [ %orig, %if.then12 ], [ %orig, %if.then12 ], [ undef, %cleanup36.loopexit ]
  br i1 %cleanup.dest.slot.1, label %sw.bb37, label %cleanup436

sw.bb37:                                          ; preds = %cleanup36, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  br label %cleanup436, !dbg !3094

sw.bb38:                                          ; preds = %if.end
  %arrayidx39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3095
  %16 = bitcast %union.rtunion_def* %arrayidx39 to i32**, !dbg !3095
  %17 = load i32*, i32** %16, align 8, !dbg !3095
  %bf.load40 = load i32, i32* %17, align 8, !dbg !3095
  %bf.clear41 = and i32 %bf.load40, 65535, !dbg !3095
  %cmp42 = icmp eq i32 %bf.clear41, 37, !dbg !3095
  br i1 %cmp42, label %land.lhs.true43, label %sw.epilog, !dbg !3097

land.lhs.true43:                                  ; preds = %sw.bb38
  %18 = bitcast i32* %17 to %struct.rtx_def*, !dbg !3097
  %call48 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %18) #7, !dbg !3098
  %cmp49 = icmp ult i32 %call48, 53, !dbg !3098
  br i1 %cmp49, label %cleanup436, label %sw.epilog, !dbg !3099

sw.bb52:                                          ; preds = %if.end
  %call53 = tail call zeroext i8 @shared_const_p(%struct.rtx_def* %orig) #6, !dbg !3100
  %tobool54 = icmp eq i8 %call53, 0, !dbg !3100
  br i1 %tobool54, label %sw.epilog, label %cleanup436, !dbg !3102

sw.bb57:                                          ; preds = %if.end
  %callback = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 1, !dbg !3103
  %19 = load %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)*, %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)** %callback, align 8, !dbg !3103
  %tobool58 = icmp eq %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)* %19, null, !dbg !3105
  br i1 %tobool58, label %if.end66, label %if.then59, !dbg !3106

if.then59:                                        ; preds = %sw.bb57
  %regs_active61 = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 0, !dbg !3107
  %20 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %regs_active61, align 8, !dbg !3107
  %callback_arg = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 2, !dbg !3109
  %21 = load i8*, i8** %callback_arg, align 8, !dbg !3109
  %call62 = tail call %struct.rtx_def* %19(%struct.rtx_def* %orig, %struct.bitmap_head_def* %20, i32 %max_depth, i8* %21) #6, !dbg !3110
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call62, metadata !3031, metadata !DIExpression()), !dbg !3111
  %cmp63 = icmp eq %struct.rtx_def* %call62, %orig, !dbg !3112
  br i1 %cmp63, label %if.end66, label %cleanup436, !dbg !3114

if.end66:                                         ; preds = %if.then59, %sw.bb57
  %arrayidx69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3115
  %rt_rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**, !dbg !3115
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx70, align 8, !dbg !3115
  %sub = add nsw i32 %max_depth, -1, !dbg !3116
  %call71 = tail call fastcc %struct.rtx_def* @cselib_expand_value_rtx_1(%struct.rtx_def* %22, %struct.expand_value_data* %evd, i32 %sub) #7, !dbg !3117
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call71, metadata !3031, metadata !DIExpression()), !dbg !3111
  %tobool72 = icmp eq %struct.rtx_def* %call71, null, !dbg !3118
  br i1 %tobool72, label %cleanup436, label %if.end74, !dbg !3120

if.end74:                                         ; preds = %if.end66
  %bf.load75 = load i32, i32* %0, align 8, !dbg !3121
  %bf.lshr76 = lshr i32 %bf.load75, 16, !dbg !3121
  %bf.clear77 = and i32 %bf.lshr76, 255, !dbg !3121
  %23 = bitcast %union.rtunion_def* %arrayidx69 to i32**, !dbg !3122
  %24 = load i32*, i32** %23, align 8, !dbg !3122
  %bf.load82 = load i32, i32* %24, align 8, !dbg !3122
  %bf.lshr83 = lshr i32 %bf.load82, 16, !dbg !3122
  %bf.clear84 = and i32 %bf.lshr83, 255, !dbg !3122
  %25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3123
  %rt_uint = bitcast %union.rtunion_def* %25 to i32*, !dbg !3123
  %26 = load i32, i32* %rt_uint, align 8, !dbg !3123
  %call88 = tail call %struct.rtx_def* @simplify_gen_subreg(i32 %bf.clear77, %struct.rtx_def* nonnull %call71, i32 %bf.clear84, i32 %26) #6, !dbg !3124
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call88, metadata !3016, metadata !DIExpression()), !dbg !3047
  %cmp89 = icmp eq %struct.rtx_def* %call88, null, !dbg !3125
  br i1 %cmp89, label %cleanup436, label %lor.lhs.false90, !dbg !3127

lor.lhs.false90:                                  ; preds = %if.end74
  %27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call88, i64 0, i32 0, !dbg !3128
  %bf.load91 = load i32, i32* %27, align 8, !dbg !3128
  %bf.clear92 = and i32 %bf.load91, 65535, !dbg !3128
  %cmp93 = icmp eq i32 %bf.clear92, 39, !dbg !3129
  br i1 %cmp93, label %land.lhs.true94, label %if.end111, !dbg !3130

land.lhs.true94:                                  ; preds = %lor.lhs.false90
  %arrayidx97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call88, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3131
  %28 = bitcast %union.rtunion_def* %arrayidx97 to i32**, !dbg !3131
  %29 = load i32*, i32** %28, align 8, !dbg !3131
  %bf.load99 = load i32, i32* %29, align 8, !dbg !3131
  %bf.clear100 = and i32 %bf.load99, 65535, !dbg !3131
  %cmp101 = icmp eq i32 %bf.clear100, 37, !dbg !3131
  br i1 %cmp101, label %if.end111, label %land.lhs.true102, !dbg !3132

land.lhs.true102:                                 ; preds = %land.lhs.true94
  %cmp109 = icmp eq i32 %bf.clear100, 43, !dbg !3133
  br i1 %cmp109, label %if.end111, label %cleanup436, !dbg !3134

if.end111:                                        ; preds = %land.lhs.true102, %land.lhs.true94, %lor.lhs.false90
  br label %cleanup436, !dbg !3135

sw.bb113:                                         ; preds = %if.end
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3136
  %tobool115 = icmp eq %struct._IO_FILE* %30, null, !dbg !3136
  br i1 %tobool115, label %if.end123, label %land.lhs.true116, !dbg !3138

land.lhs.true116:                                 ; preds = %sw.bb113
  %31 = load i32, i32* @dump_flags, align 4, !dbg !3139
  %and117 = and i32 %31, 8, !dbg !3140
  %tobool118 = icmp eq i32 %and117, 0, !dbg !3140
  br i1 %tobool118, label %if.end123, label %if.then119, !dbg !3141

if.then119:                                       ; preds = %land.lhs.true116
  %call120 = tail call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), %struct._IO_FILE* nonnull %30) #6, !dbg !3142
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3144
  %call121 = tail call i32 @print_rtl_single(%struct._IO_FILE* %32, %struct.rtx_def* %orig) #6, !dbg !3145
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3146
  %call122 = tail call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), %struct._IO_FILE* %33) #6, !dbg !3147
  br label %if.end123, !dbg !3148

if.end123:                                        ; preds = %land.lhs.true116, %sw.bb113, %if.then119
  %callback124 = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 1, !dbg !3149
  %34 = load %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)*, %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)** %callback124, align 8, !dbg !3149
  %tobool125 = icmp eq %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)* %34, null, !dbg !3151
  br i1 %tobool125, label %if.end134, label %if.then126, !dbg !3152

if.then126:                                       ; preds = %if.end123
  %regs_active128 = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 0, !dbg !3153
  %35 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %regs_active128, align 8, !dbg !3153
  %callback_arg129 = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 2, !dbg !3155
  %36 = load i8*, i8** %callback_arg129, align 8, !dbg !3155
  %call130 = tail call %struct.rtx_def* %34(%struct.rtx_def* %orig, %struct.bitmap_head_def* %35, i32 %max_depth, i8* %36) #6, !dbg !3156
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call130, metadata !3033, metadata !DIExpression()), !dbg !3157
  %cmp131 = icmp eq %struct.rtx_def* %call130, %orig, !dbg !3158
  br i1 %cmp131, label %if.end134, label %cleanup436, !dbg !3160

if.end134:                                        ; preds = %if.then126, %if.end123
  %arrayidx137 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3161
  %rt_cselib = bitcast %union.rtunion_def* %arrayidx137 to %struct.cselib_val_struct**, !dbg !3161
  %37 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib, align 8, !dbg !3161
  %locs138 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %37, i64 0, i32 3, !dbg !3162
  %38 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs138, align 8, !dbg !3162
  %call139 = tail call fastcc %struct.rtx_def* @expand_loc(%struct.elt_loc_list* %38, %struct.expand_value_data* %evd, i32 %max_depth) #7, !dbg !3163
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call139, metadata !3033, metadata !DIExpression()), !dbg !3157
  br label %cleanup436, !dbg !3164

sw.bb141:                                         ; preds = %if.end
  %callback142 = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 1, !dbg !3165
  %39 = load %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)*, %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)** %callback142, align 8, !dbg !3165
  %tobool143 = icmp eq %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)* %39, null, !dbg !3167
  br i1 %tobool143, label %cleanup436, label %if.then144, !dbg !3168

if.then144:                                       ; preds = %sw.bb141
  %regs_active146 = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 0, !dbg !3169
  %40 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %regs_active146, align 8, !dbg !3169
  %callback_arg147 = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 2, !dbg !3170
  %41 = load i8*, i8** %callback_arg147, align 8, !dbg !3170
  %call148 = tail call %struct.rtx_def* %39(%struct.rtx_def* %orig, %struct.bitmap_head_def* %40, i32 %max_depth, i8* %41) #6, !dbg !3171
  br label %cleanup436, !dbg !3172

sw.epilog:                                        ; preds = %sw.bb52, %if.end, %sw.bb38, %land.lhs.true43
  %dummy = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 3, !dbg !3173
  %42 = load i8, i8* %dummy, align 8, !dbg !3173
  %tobool150 = icmp eq i8 %42, 0, !dbg !3175
  br i1 %tobool150, label %if.else152, label %if.end154, !dbg !3176

if.else152:                                       ; preds = %sw.epilog
  %call153 = tail call %struct.rtx_def* @shallow_copy_rtx_stat(%struct.rtx_def* %orig) #6, !dbg !3177
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call153, metadata !3015, metadata !DIExpression()), !dbg !3047
  br label %if.end154

if.end154:                                        ; preds = %sw.epilog, %if.else152
  %copy.0 = phi %struct.rtx_def* [ %call153, %if.else152 ], [ null, %sw.epilog ], !dbg !3178
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy.0, metadata !3015, metadata !DIExpression()), !dbg !3047
  %idxprom155 = zext i32 %bf.clear to i64, !dbg !3179
  %arrayidx156 = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom155, !dbg !3179
  %43 = load i8*, i8** %arrayidx156, align 8, !dbg !3179
  call void @llvm.dbg.value(metadata i8* %43, metadata !3020, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i32 0, metadata !3017, metadata !DIExpression()), !dbg !3047
  %arrayidx159 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom155, !dbg !3180
  %44 = load i8, i8* %arrayidx159, align 1, !dbg !3180
  %u197 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig, i64 0, i32 1, !dbg !3181
  %fld198 = bitcast %union.u* %u197 to [1 x %union.rtunion_def]*, !dbg !3181
  %tobool204 = icmp eq %struct.rtx_def* %copy.0, null, !dbg !3182
  %u212 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %copy.0, i64 0, i32 1, !dbg !3182
  %fld213 = bitcast %union.u* %u212 to [1 x %union.rtunion_def]*, !dbg !3182
  %sub236 = add nsw i32 %max_depth, -1, !dbg !3184
  br i1 %tobool204, label %if.end154.split.us, label %if.end154.if.end154.split_crit_edge, !dbg !3185

if.end154.if.end154.split_crit_edge:              ; preds = %if.end154
  %wide.trip.count42 = zext i8 %44 to i64, !dbg !3186
  br label %for.cond157, !dbg !3185

if.end154.split.us:                               ; preds = %if.end154
  %wide.trip.count = zext i8 %44 to i64, !dbg !3186
  br label %for.cond157.us, !dbg !3185

for.cond157.us:                                   ; preds = %for.inc261.us, %if.end154.split.us
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.inc261.us ], [ 0, %if.end154.split.us ], !dbg !3047
  %format_ptr.0.us = phi i8* [ %incdec.ptr.us, %for.inc261.us ], [ %43, %if.end154.split.us ], !dbg !3047
  call void @llvm.dbg.value(metadata i64 %indvars.iv34, metadata !3017, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i8* %format_ptr.0.us, metadata !3020, metadata !DIExpression()), !dbg !3047
  %exitcond = icmp eq i64 %indvars.iv34, %wide.trip.count, !dbg !3186
  br i1 %exitcond, label %for.end263.us-lcssa.us, label %for.body162.us, !dbg !3187

for.body162.us:                                   ; preds = %for.cond157.us
  %incdec.ptr.us = getelementptr inbounds i8, i8* %format_ptr.0.us, i64 1, !dbg !3188
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.us, metadata !3020, metadata !DIExpression()), !dbg !3047
  %45 = load i8, i8* %format_ptr.0.us, align 1, !dbg !3189
  %conv163.us = sext i8 %45 to i32, !dbg !3189
  switch i32 %conv163.us, label %sw.default259.us [
    i32 101, label %sw.bb164.us
    i32 69, label %sw.bb196.us
    i32 86, label %sw.bb196.us
    i32 116, label %for.inc261.us
    i32 119, label %for.inc261.us
    i32 105, label %for.inc261.us
    i32 115, label %for.inc261.us
    i32 83, label %for.inc261.us
    i32 84, label %for.inc261.us
    i32 117, label %for.inc261.us
    i32 66, label %for.inc261.us
    i32 48, label %for.inc261.us
  ], !dbg !3190

sw.bb196.us:                                      ; preds = %for.body162.us, %for.body162.us
  %arrayidx200.us = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld198, i64 0, i64 %indvars.iv34, !dbg !3191
  %rt_rtvec.us = bitcast %union.rtunion_def* %arrayidx200.us to %struct.rtvec_def**, !dbg !3191
  %46 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec.us, align 8, !dbg !3191
  %cmp201.us = icmp eq %struct.rtvec_def* %46, null, !dbg !3192
  br i1 %cmp201.us, label %for.inc261.us, label %if.then203.us, !dbg !3193

if.then203.us:                                    ; preds = %sw.bb196.us
  call void @llvm.dbg.value(metadata i32 0, metadata !3018, metadata !DIExpression()), !dbg !3047
  br i1 true, label %if.end217.split.us.us, label %if.end217.if.end217.split_crit_edge.us, !dbg !3194

for.cond218.us8:                                  ; preds = %if.end217.if.end217.split_crit_edge.us, %for.inc255.us25
  br i1 false, label %for.body227.us13, label %for.inc261.loopexit.us-lcssa.us28, !dbg !3195

for.body227.us13:                                 ; preds = %for.cond218.us8
  br i1 undef, label %cleanup252.us22, label %if.end240.us18, !dbg !3196

if.end240.us18:                                   ; preds = %for.body227.us13
  br label %cleanup252.us22, !dbg !3197

cleanup252.us22:                                  ; preds = %if.end240.us18, %for.body227.us13
  br i1 false, label %for.inc255.us25, label %cleanup436.loopexit.us-lcssa.us-lcssa.us

for.inc255.us25:                                  ; preds = %cleanup252.us22
  br label %for.cond218.us8, !dbg !3199, !llvm.loop !3200

sw.bb164.us:                                      ; preds = %for.body162.us
  %arrayidx168.us = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld198, i64 0, i64 %indvars.iv34, !dbg !3202
  %rt_rtx169.us = bitcast %union.rtunion_def* %arrayidx168.us to %struct.rtx_def**, !dbg !3202
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx169.us, align 8, !dbg !3202
  %cmp170.us = icmp eq %struct.rtx_def* %47, null, !dbg !3203
  br i1 %cmp170.us, label %for.inc261.us, label %if.then172.us, !dbg !3204

if.then172.us:                                    ; preds = %sw.bb164.us
  %call180.us = tail call fastcc %struct.rtx_def* @cselib_expand_value_rtx_1(%struct.rtx_def* nonnull %47, %struct.expand_value_data* %evd, i32 %sub236) #7, !dbg !3205
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call180.us, metadata !3035, metadata !DIExpression()), !dbg !3206
  %tobool181.us = icmp eq %struct.rtx_def* %call180.us, null, !dbg !3207
  br i1 %tobool181.us, label %cleanup192.us, label %if.end183.us, !dbg !3209

if.end183.us:                                     ; preds = %if.then172.us
  br i1 true, label %cleanup192.us, label %if.then185.us, !dbg !3210

if.then185.us:                                    ; preds = %if.end183.us
  br label %cleanup192.us, !dbg !3211

cleanup192.us:                                    ; preds = %if.then185.us, %if.end183.us, %if.then172.us
  %cleanup.dest.slot.2.us = phi i1 [ false, %if.then172.us ], [ undef, %if.then185.us ], [ true, %if.end183.us ]
  br i1 %cleanup.dest.slot.2.us, label %for.inc261.us, label %cleanup436.loopexit5.us-lcssa.us

sw.default259.us:                                 ; preds = %for.body162.us
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1438, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3213
  br label %for.inc261.us, !dbg !3214

for.inc261.us:                                    ; preds = %for.inc261.loopexit.us, %sw.default259.us, %cleanup192.us, %sw.bb164.us, %sw.bb196.us, %for.body162.us, %for.body162.us, %for.body162.us, %for.body162.us, %for.body162.us, %for.body162.us, %for.body162.us, %for.body162.us, %for.body162.us
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1, !dbg !3215
  call void @llvm.dbg.value(metadata i32 undef, metadata !3017, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3047
  br label %for.cond157.us, !dbg !3216, !llvm.loop !3217

for.inc261.loopexit.us:                           ; preds = %for.inc261.loopexit.us-lcssa.us.us, %for.inc261.loopexit.us-lcssa.us28
  br label %for.inc261.us, !dbg !3215

for.inc261.loopexit.us-lcssa.us28:                ; preds = %for.cond218.us8
  br label %for.inc261.loopexit.us, !dbg !3215

for.cond218.us.us:                                ; preds = %if.end217.split.us.us, %for.inc255.us.us
  %indvars.iv32 = phi i64 [ 0, %if.end217.split.us.us ], [ %indvars.iv.next33, %for.inc255.us.us ], !dbg !3219
  %48 = phi %struct.rtvec_def* [ %46, %if.end217.split.us.us ], [ %.pre, %for.inc255.us.us ], !dbg !3219
  call void @llvm.dbg.value(metadata i64 %indvars.iv32, metadata !3018, metadata !DIExpression()), !dbg !3047
  %num_elem224.us.us = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %48, i64 0, i32 0, !dbg !3219
  %49 = load i32, i32* %num_elem224.us.us, align 8, !dbg !3219
  %50 = sext i32 %49 to i64, !dbg !3220
  %cmp225.us.us = icmp slt i64 %indvars.iv32, %50, !dbg !3220
  br i1 %cmp225.us.us, label %for.body227.us.us, label %for.inc261.loopexit.us-lcssa.us.us, !dbg !3195

for.body227.us.us:                                ; preds = %for.cond218.us.us
  %arrayidx235.us.us = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %48, i64 0, i32 1, i64 %indvars.iv32, !dbg !3221
  %51 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx235.us.us, align 8, !dbg !3221
  %call237.us.us = tail call fastcc %struct.rtx_def* @cselib_expand_value_rtx_1(%struct.rtx_def* %51, %struct.expand_value_data* %evd, i32 %sub236) #7, !dbg !3222
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call237.us.us, metadata !3041, metadata !DIExpression()), !dbg !3184
  %tobool238.us.us = icmp eq %struct.rtx_def* %call237.us.us, null, !dbg !3223
  br i1 %tobool238.us.us, label %cleanup252.us.us, label %if.end240.us.us, !dbg !3196

if.end240.us.us:                                  ; preds = %for.body227.us.us
  br label %cleanup252.us.us, !dbg !3225

cleanup252.us.us:                                 ; preds = %if.end240.us.us, %for.body227.us.us
  %cleanup.dest.slot.3.us.us = phi i1 [ false, %for.body227.us.us ], [ true, %if.end240.us.us ]
  br i1 %cleanup.dest.slot.3.us.us, label %for.inc255.us.us, label %cleanup436.loopexit.us-lcssa.us.us-lcssa.us

for.inc255.us.us:                                 ; preds = %cleanup252.us.us
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1, !dbg !3226
  call void @llvm.dbg.value(metadata i32 undef, metadata !3018, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3047
  %.pre = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec.us, align 8, !dbg !3219
  br label %for.cond218.us.us, !dbg !3199, !llvm.loop !3200

if.end217.split.us.us:                            ; preds = %if.then203.us
  br label %for.cond218.us.us, !dbg !3194

for.inc261.loopexit.us-lcssa.us.us:               ; preds = %for.cond218.us.us
  br label %for.inc261.loopexit.us, !dbg !3215

if.end217.if.end217.split_crit_edge.us:           ; preds = %if.then203.us
  br label %for.cond218.us8, !dbg !3194

for.end263.us-lcssa.us:                           ; preds = %for.cond157.us
  br label %for.end263, !dbg !3227

cleanup436.loopexit.us-lcssa.us-lcssa.us:         ; preds = %cleanup252.us22
  br label %cleanup436.loopexit.us-lcssa, !dbg !3229

cleanup436.loopexit5.us-lcssa.us:                 ; preds = %cleanup192.us
  br label %cleanup436.loopexit5, !dbg !3229

cleanup436.loopexit.us-lcssa.us.us-lcssa.us:      ; preds = %cleanup252.us.us
  br label %cleanup436.loopexit.us-lcssa.us, !dbg !3229

for.cond157:                                      ; preds = %for.inc261, %if.end154.if.end154.split_crit_edge
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.inc261 ], [ 0, %if.end154.if.end154.split_crit_edge ], !dbg !3047
  %format_ptr.0 = phi i8* [ %incdec.ptr, %for.inc261 ], [ %43, %if.end154.if.end154.split_crit_edge ], !dbg !3047
  call void @llvm.dbg.value(metadata i64 %indvars.iv40, metadata !3017, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i8* %format_ptr.0, metadata !3020, metadata !DIExpression()), !dbg !3047
  %exitcond43 = icmp eq i64 %indvars.iv40, %wide.trip.count42, !dbg !3186
  br i1 %exitcond43, label %for.end263.us-lcssa, label %for.body162, !dbg !3187

for.body162:                                      ; preds = %for.cond157
  %incdec.ptr = getelementptr inbounds i8, i8* %format_ptr.0, i64 1, !dbg !3188
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !3020, metadata !DIExpression()), !dbg !3047
  %52 = load i8, i8* %format_ptr.0, align 1, !dbg !3189
  %conv163 = sext i8 %52 to i32, !dbg !3189
  switch i32 %conv163, label %sw.default259 [
    i32 101, label %sw.bb164
    i32 69, label %sw.bb196
    i32 86, label %sw.bb196
    i32 116, label %for.inc261
    i32 119, label %for.inc261
    i32 105, label %for.inc261
    i32 115, label %for.inc261
    i32 83, label %for.inc261
    i32 84, label %for.inc261
    i32 117, label %for.inc261
    i32 66, label %for.inc261
    i32 48, label %for.inc261
  ], !dbg !3190

sw.bb164:                                         ; preds = %for.body162
  %arrayidx168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld198, i64 0, i64 %indvars.iv40, !dbg !3202
  %rt_rtx169 = bitcast %union.rtunion_def* %arrayidx168 to %struct.rtx_def**, !dbg !3202
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx169, align 8, !dbg !3202
  %cmp170 = icmp eq %struct.rtx_def* %53, null, !dbg !3203
  br i1 %cmp170, label %for.inc261, label %if.then172, !dbg !3204

if.then172:                                       ; preds = %sw.bb164
  %call180 = tail call fastcc %struct.rtx_def* @cselib_expand_value_rtx_1(%struct.rtx_def* nonnull %53, %struct.expand_value_data* %evd, i32 %sub236) #7, !dbg !3205
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call180, metadata !3035, metadata !DIExpression()), !dbg !3206
  %tobool181 = icmp eq %struct.rtx_def* %call180, null, !dbg !3207
  br i1 %tobool181, label %cleanup192, label %if.end183, !dbg !3209

if.end183:                                        ; preds = %if.then172
  br i1 false, label %if.end183.cleanup192_crit_edge, label %if.then185, !dbg !3210

if.end183.cleanup192_crit_edge:                   ; preds = %if.end183
  br label %cleanup192, !dbg !3210

if.then185:                                       ; preds = %if.end183
  %arrayidx189 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld213, i64 0, i64 %indvars.iv40, !dbg !3211
  %rt_rtx190 = bitcast %union.rtunion_def* %arrayidx189 to %struct.rtx_def**, !dbg !3211
  store %struct.rtx_def* %call180, %struct.rtx_def** %rt_rtx190, align 8, !dbg !3230
  br label %cleanup192, !dbg !3211

cleanup192:                                       ; preds = %if.end183.cleanup192_crit_edge, %if.then172, %if.then185
  %cleanup.dest.slot.2 = phi i1 [ false, %if.then172 ], [ true, %if.then185 ], [ undef, %if.end183.cleanup192_crit_edge ]
  br i1 %cleanup.dest.slot.2, label %for.inc261, label %cleanup436.loopexit5.us-lcssa

sw.bb196:                                         ; preds = %for.body162, %for.body162
  %arrayidx200 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld198, i64 0, i64 %indvars.iv40, !dbg !3191
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx200 to %struct.rtvec_def**, !dbg !3191
  %54 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3191
  %cmp201 = icmp eq %struct.rtvec_def* %54, null, !dbg !3192
  br i1 %cmp201, label %for.inc261, label %if.then203, !dbg !3193

if.then203:                                       ; preds = %sw.bb196
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %54, i64 0, i32 0, !dbg !3231
  %55 = load i32, i32* %num_elem, align 8, !dbg !3231
  %call211 = tail call %struct.rtvec_def* @rtvec_alloc(i32 %55) #6, !dbg !3232
  %arrayidx215 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld213, i64 0, i64 %indvars.iv40, !dbg !3233
  %rt_rtvec216 = bitcast %union.rtunion_def* %arrayidx215 to %struct.rtvec_def**, !dbg !3233
  store %struct.rtvec_def* %call211, %struct.rtvec_def** %rt_rtvec216, align 8, !dbg !3234
  call void @llvm.dbg.value(metadata i32 0, metadata !3018, metadata !DIExpression()), !dbg !3047
  br i1 false, label %if.end217.split.us, label %if.end217.if.end217.split_crit_edge, !dbg !3194

if.end217.if.end217.split_crit_edge:              ; preds = %if.then203
  br label %for.cond218, !dbg !3194

if.end217.split.us:                               ; preds = %if.then203
  br label %for.cond218.us, !dbg !3194

for.cond218.us:                                   ; preds = %for.inc255.us, %if.end217.split.us
  br i1 false, label %for.body227.us, label %for.inc261.loopexit.us-lcssa.us, !dbg !3195

for.body227.us:                                   ; preds = %for.cond218.us
  br i1 undef, label %cleanup252.us, label %if.end240.us, !dbg !3196

if.end240.us:                                     ; preds = %for.body227.us
  br label %cleanup252.us, !dbg !3225

cleanup252.us:                                    ; preds = %if.end240.us, %for.body227.us
  br i1 false, label %for.inc255.us, label %cleanup436.loopexit.us-lcssa.us.us-lcssa

for.inc255.us:                                    ; preds = %cleanup252.us
  br label %for.cond218.us, !dbg !3199, !llvm.loop !3200

for.inc261.loopexit.us-lcssa.us:                  ; preds = %for.cond218.us
  br label %for.inc261.loopexit, !dbg !3215

cleanup436.loopexit.us-lcssa.us.us-lcssa:         ; preds = %cleanup252.us
  br label %cleanup436.loopexit.us-lcssa.us, !dbg !3229

cleanup436.loopexit.us-lcssa.us:                  ; preds = %cleanup436.loopexit.us-lcssa.us.us-lcssa.us, %cleanup436.loopexit.us-lcssa.us.us-lcssa
  br label %cleanup436.loopexit, !dbg !3229

for.cond218:                                      ; preds = %for.inc255, %if.end217.if.end217.split_crit_edge
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.inc255 ], [ 0, %if.end217.if.end217.split_crit_edge ], !dbg !3235
  call void @llvm.dbg.value(metadata i64 %indvars.iv36, metadata !3018, metadata !DIExpression()), !dbg !3047
  %56 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3219
  %num_elem224 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %56, i64 0, i32 0, !dbg !3219
  %57 = load i32, i32* %num_elem224, align 8, !dbg !3219
  %58 = sext i32 %57 to i64, !dbg !3220
  %cmp225 = icmp slt i64 %indvars.iv36, %58, !dbg !3220
  br i1 %cmp225, label %for.body227, label %for.inc261.loopexit.us-lcssa, !dbg !3195

for.body227:                                      ; preds = %for.cond218
  %arrayidx235 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %56, i64 0, i32 1, i64 %indvars.iv36, !dbg !3221
  %59 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx235, align 8, !dbg !3221
  %call237 = tail call fastcc %struct.rtx_def* @cselib_expand_value_rtx_1(%struct.rtx_def* %59, %struct.expand_value_data* %evd, i32 %sub236) #7, !dbg !3222
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call237, metadata !3041, metadata !DIExpression()), !dbg !3184
  %tobool238 = icmp eq %struct.rtx_def* %call237, null, !dbg !3223
  br i1 %tobool238, label %cleanup252, label %if.end240, !dbg !3196

if.end240:                                        ; preds = %for.body227
  %60 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec216, align 8, !dbg !3197
  %arrayidx250 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %60, i64 0, i32 1, i64 %indvars.iv36, !dbg !3197
  store %struct.rtx_def* %call237, %struct.rtx_def** %arrayidx250, align 8, !dbg !3236
  br label %cleanup252, !dbg !3197

cleanup252:                                       ; preds = %for.body227, %if.end240
  %cleanup.dest.slot.3 = phi i1 [ false, %for.body227 ], [ true, %if.end240 ]
  br i1 %cleanup.dest.slot.3, label %for.inc255, label %cleanup436.loopexit.us-lcssa.us-lcssa

for.inc255:                                       ; preds = %cleanup252
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1, !dbg !3226
  call void @llvm.dbg.value(metadata i32 undef, metadata !3018, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3047
  br label %for.cond218, !dbg !3199, !llvm.loop !3200

sw.default259:                                    ; preds = %for.body162
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1438, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3213
  br label %for.inc261, !dbg !3214

for.inc261.loopexit.us-lcssa:                     ; preds = %for.cond218
  br label %for.inc261.loopexit, !dbg !3215

for.inc261.loopexit:                              ; preds = %for.inc261.loopexit.us-lcssa.us, %for.inc261.loopexit.us-lcssa
  br label %for.inc261, !dbg !3215

for.inc261:                                       ; preds = %for.inc261.loopexit, %sw.bb164, %sw.bb196, %sw.default259, %cleanup192, %for.body162, %for.body162, %for.body162, %for.body162, %for.body162, %for.body162, %for.body162, %for.body162, %for.body162
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1, !dbg !3215
  call void @llvm.dbg.value(metadata i32 undef, metadata !3017, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3047
  br label %for.cond157, !dbg !3216, !llvm.loop !3217

for.end263.us-lcssa:                              ; preds = %for.cond157
  br label %for.end263, !dbg !3227

for.end263:                                       ; preds = %for.end263.us-lcssa.us, %for.end263.us-lcssa
  %61 = load i8, i8* %dummy, align 8, !dbg !3227
  %tobool265 = icmp eq i8 %61, 0, !dbg !3237
  br i1 %tobool265, label %if.end267, label %cleanup436, !dbg !3238

if.end267:                                        ; preds = %for.end263
  %62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %copy.0, i64 0, i32 0, !dbg !3239
  %bf.load268 = load i32, i32* %62, align 8, !dbg !3239
  %bf.lshr269 = lshr i32 %bf.load268, 16, !dbg !3239
  %bf.clear270 = and i32 %bf.lshr269, 255, !dbg !3239
  call void @llvm.dbg.value(metadata i32 %bf.clear270, metadata !3021, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy.0, metadata !3016, metadata !DIExpression()), !dbg !3047
  %arrayidx272 = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom155, !dbg !3240
  %63 = load i32, i32* %arrayidx272, align 4, !dbg !3240
  switch i32 %63, label %sw.epilog431 [
    i32 4, label %sw.bb273
    i32 1, label %sw.bb354
    i32 0, label %sw.bb354
    i32 10, label %sw.bb310
    i32 11, label %sw.bb310
  ], !dbg !3241

sw.bb273:                                         ; preds = %if.end267
  %arrayidx276 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %copy.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3242
  %64 = bitcast %union.rtunion_def* %arrayidx276 to i32**, !dbg !3242
  %65 = load i32*, i32** %64, align 8, !dbg !3242
  %bf.load278 = load i32, i32* %65, align 8, !dbg !3242
  %bf.clear279 = and i32 %bf.load278, 65535, !dbg !3242
  %cmp280 = icmp eq i32 %bf.clear279, 30, !dbg !3242
  %66 = bitcast i32* %65 to %struct.rtx_def*, !dbg !3245
  br i1 %cmp280, label %land.lhs.true282, label %sw.epilog431, !dbg !3245

land.lhs.true282:                                 ; preds = %sw.bb273
  %arrayidx285 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3246
  %67 = bitcast %union.rtunion_def* %arrayidx285 to i32**, !dbg !3246
  %68 = load i32*, i32** %67, align 8, !dbg !3246
  %bf.load287 = load i32, i32* %68, align 8, !dbg !3246
  %bf.clear289 = and i32 %bf.load287, 16711680, !dbg !3246
  %cmp290 = icmp eq i32 %bf.clear289, 0, !dbg !3247
  br i1 %cmp290, label %sw.epilog431, label %if.then292, !dbg !3248

if.then292:                                       ; preds = %land.lhs.true282
  %bf.lshr302 = lshr i32 %bf.load287, 16, !dbg !3249
  %bf.clear303 = and i32 %bf.lshr302, 255, !dbg !3249
  %call304 = tail call %struct.rtx_def* @simplify_unary_operation(i32 %bf.clear, i32 %bf.clear270, %struct.rtx_def* %66, i32 %bf.clear303) #6, !dbg !3251
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call304, metadata !3016, metadata !DIExpression()), !dbg !3047
  %tobool305 = icmp eq %struct.rtx_def* %call304, null, !dbg !3252
  br i1 %tobool305, label %sw.epilog431, label %cleanup436, !dbg !3254

sw.bb310:                                         ; preds = %if.end267, %if.end267
  %arrayidx313 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %copy.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3255
  %69 = bitcast %union.rtunion_def* %arrayidx313 to i32**, !dbg !3255
  %70 = load i32*, i32** %69, align 8, !dbg !3255
  %bf.load315 = load i32, i32* %70, align 8, !dbg !3255
  %bf.clear316 = and i32 %bf.load315, 65535, !dbg !3255
  %cmp317 = icmp eq i32 %bf.clear316, 30, !dbg !3255
  %71 = bitcast i32* %70 to %struct.rtx_def*, !dbg !3257
  br i1 %cmp317, label %land.lhs.true319, label %sw.epilog431, !dbg !3257

land.lhs.true319:                                 ; preds = %sw.bb310
  %arrayidx322 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3258
  %72 = bitcast %union.rtunion_def* %arrayidx322 to i32**, !dbg !3258
  %73 = load i32*, i32** %72, align 8, !dbg !3258
  %bf.load324 = load i32, i32* %73, align 8, !dbg !3258
  %bf.clear326 = and i32 %bf.load324, 16711680, !dbg !3258
  %cmp327 = icmp eq i32 %bf.clear326, 0, !dbg !3259
  br i1 %cmp327, label %sw.epilog431, label %if.then329, !dbg !3260

if.then329:                                       ; preds = %land.lhs.true319
  %bf.lshr335 = lshr i32 %bf.load324, 16, !dbg !3261
  %bf.clear336 = and i32 %bf.lshr335, 255, !dbg !3261
  %74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %copy.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3263
  %rt_rtx344 = bitcast %union.rtunion_def* %74 to %struct.rtx_def**, !dbg !3263
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx344, align 8, !dbg !3263
  %76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %copy.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3264
  %rt_rtx348 = bitcast %union.rtunion_def* %76 to %struct.rtx_def**, !dbg !3264
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx348, align 8, !dbg !3264
  %call349 = tail call %struct.rtx_def* @simplify_ternary_operation(i32 %bf.clear, i32 %bf.clear270, i32 %bf.clear336, %struct.rtx_def* %71, %struct.rtx_def* %75, %struct.rtx_def* %77) #6, !dbg !3265
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call349, metadata !3016, metadata !DIExpression()), !dbg !3047
  %tobool350 = icmp eq %struct.rtx_def* %call349, null, !dbg !3266
  br i1 %tobool350, label %sw.epilog431, label %cleanup436, !dbg !3268

sw.bb354:                                         ; preds = %if.end267, %if.end267
  %arrayidx357 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %copy.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3269
  %78 = bitcast %union.rtunion_def* %arrayidx357 to i32**, !dbg !3269
  %79 = load i32*, i32** %78, align 8, !dbg !3269
  %bf.load359 = load i32, i32* %79, align 8, !dbg !3269
  %bf.clear360 = and i32 %bf.load359, 65535, !dbg !3269
  %cmp361 = icmp eq i32 %bf.clear360, 30, !dbg !3269
  %80 = bitcast i32* %79 to %struct.rtx_def*, !dbg !3271
  br i1 %cmp361, label %land.lhs.true363, label %sw.epilog431, !dbg !3271

land.lhs.true363:                                 ; preds = %sw.bb354
  %81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %copy.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3272
  %82 = bitcast %union.rtunion_def* %81 to i32**, !dbg !3272
  %83 = load i32*, i32** %82, align 8, !dbg !3272
  %bf.load368 = load i32, i32* %83, align 8, !dbg !3272
  %bf.clear370 = and i32 %bf.load368, 16711680, !dbg !3272
  %cmp371 = icmp eq i32 %bf.clear370, 0, !dbg !3273
  %84 = bitcast i32* %83 to %struct.rtx_def*, !dbg !3274
  br i1 %cmp371, label %land.lhs.true373, label %sw.epilog431, !dbg !3274

land.lhs.true373:                                 ; preds = %land.lhs.true363
  %arrayidx376 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3275
  %85 = bitcast %union.rtunion_def* %arrayidx376 to i32**, !dbg !3275
  %86 = load i32*, i32** %85, align 8, !dbg !3275
  %bf.load378 = load i32, i32* %86, align 8, !dbg !3275
  %bf.clear380 = and i32 %bf.load378, 16711680, !dbg !3275
  %cmp381 = icmp eq i32 %bf.clear380, 0, !dbg !3276
  br i1 %cmp381, label %lor.lhs.false383, label %if.then393, !dbg !3277

lor.lhs.false383:                                 ; preds = %land.lhs.true373
  %87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3278
  %88 = bitcast %union.rtunion_def* %87 to i32**, !dbg !3278
  %89 = load i32*, i32** %88, align 8, !dbg !3278
  %bf.load388 = load i32, i32* %89, align 8, !dbg !3278
  %bf.clear390 = and i32 %bf.load388, 16711680, !dbg !3278
  %cmp391 = icmp eq i32 %bf.clear390, 0, !dbg !3279
  br i1 %cmp391, label %sw.epilog431, label %if.then393, !dbg !3280

if.then393:                                       ; preds = %lor.lhs.false383, %land.lhs.true373
  br i1 %cmp381, label %cond.false, label %cond.true, !dbg !3281

cond.true:                                        ; preds = %if.then393
  br label %cond.end, !dbg !3281

cond.false:                                       ; preds = %if.then393
  %90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3283
  %cond.in.in.in.in.phi.trans.insert = bitcast %union.rtunion_def* %90 to i32**, !dbg !3284
  %cond.in.in.in.pre = load i32*, i32** %cond.in.in.in.in.phi.trans.insert, align 8, !dbg !3284
  %cond.in.in.pre = load i32, i32* %cond.in.in.in.pre, align 8, !dbg !3284
  br label %cond.end, !dbg !3281

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in.in = phi i32 [ %bf.load378, %cond.true ], [ %cond.in.in.pre, %cond.false ], !dbg !3284
  %cond.in = lshr i32 %cond.in.in, 16, !dbg !3284
  %cond = and i32 %cond.in, 255, !dbg !3281
  %call425 = tail call %struct.rtx_def* @simplify_relational_operation(i32 %bf.clear, i32 %bf.clear270, i32 %cond, %struct.rtx_def* %80, %struct.rtx_def* %84) #6, !dbg !3285
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call425, metadata !3016, metadata !DIExpression()), !dbg !3047
  %tobool426 = icmp eq %struct.rtx_def* %call425, null, !dbg !3286
  br i1 %tobool426, label %sw.epilog431, label %cleanup436, !dbg !3288

sw.epilog431:                                     ; preds = %if.then292, %land.lhs.true282, %cond.end, %lor.lhs.false383, %if.then329, %land.lhs.true319, %if.end267, %sw.bb354, %land.lhs.true363, %sw.bb310, %sw.bb273
  %call432 = tail call %struct.rtx_def* @simplify_rtx(%struct.rtx_def* %copy.0) #6, !dbg !3289
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call432, metadata !3016, metadata !DIExpression()), !dbg !3047
  %tobool433 = icmp eq %struct.rtx_def* %call432, null, !dbg !3290
  %call432.copy.0 = select i1 %tobool433, %struct.rtx_def* %copy.0, %struct.rtx_def* %call432, !dbg !3047
  br label %cleanup436, !dbg !3047

cleanup436.loopexit.us-lcssa.us-lcssa:            ; preds = %cleanup252
  br label %cleanup436.loopexit.us-lcssa, !dbg !3229

cleanup436.loopexit.us-lcssa:                     ; preds = %cleanup436.loopexit.us-lcssa.us-lcssa.us, %cleanup436.loopexit.us-lcssa.us-lcssa
  br label %cleanup436.loopexit, !dbg !3229

cleanup436.loopexit:                              ; preds = %cleanup436.loopexit.us-lcssa.us, %cleanup436.loopexit.us-lcssa
  br label %cleanup436, !dbg !3229

cleanup436.loopexit5.us-lcssa:                    ; preds = %cleanup192
  br label %cleanup436.loopexit5, !dbg !3229

cleanup436.loopexit5:                             ; preds = %cleanup436.loopexit5.us-lcssa.us, %cleanup436.loopexit5.us-lcssa
  br label %cleanup436, !dbg !3229

cleanup436:                                       ; preds = %cleanup436.loopexit5, %cleanup436.loopexit, %if.then292, %cond.end, %if.then329, %for.end263, %sw.bb52, %if.then59, %if.end66, %if.then126, %sw.bb141, %sw.epilog431, %if.end134, %if.end111, %land.lhs.true102, %if.end74, %land.lhs.true43, %entry, %cleanup36, %if.then144, %sw.bb37
  %retval.11 = phi %struct.rtx_def* [ %call148, %if.then144 ], [ %orig, %sw.bb37 ], [ %retval.1, %cleanup36 ], [ null, %entry ], [ %orig, %land.lhs.true43 ], [ %orig, %sw.bb52 ], [ %call88, %if.end111 ], [ %call62, %if.then59 ], [ null, %if.end66 ], [ null, %land.lhs.true102 ], [ null, %if.end74 ], [ %call139, %if.end134 ], [ %call130, %if.then126 ], [ %orig, %sw.bb141 ], [ %orig, %for.end263 ], [ %call304, %if.then292 ], [ %call349, %if.then329 ], [ %call425, %cond.end ], [ %call432.copy.0, %sw.epilog431 ], [ null, %cleanup436.loopexit ], [ null, %cleanup436.loopexit5 ]
  ret %struct.rtx_def* %retval.11, !dbg !3229
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @cselib_expand_value_rtx_cb(%struct.rtx_def* %orig, %struct.bitmap_head_def* %regs_active, i32 %max_depth, %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)* %cb, i8* %data) local_unnamed_addr #5 !dbg !3292 {
entry:
  %evd = alloca %struct.expand_value_data, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %orig, metadata !3296, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %regs_active, metadata !3297, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i32 %max_depth, metadata !3298, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)* %cb, metadata !3299, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8* %data, metadata !3300, metadata !DIExpression()), !dbg !3302
  %0 = bitcast %struct.expand_value_data* %evd to i8*, !dbg !3303
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !3303
  %regs_active1 = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 0, !dbg !3304
  store %struct.bitmap_head_def* %regs_active, %struct.bitmap_head_def** %regs_active1, align 8, !dbg !3305
  %callback = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 1, !dbg !3306
  store %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)* %cb, %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)** %callback, align 8, !dbg !3307
  %callback_arg = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 2, !dbg !3308
  store i8* %data, i8** %callback_arg, align 8, !dbg !3309
  %dummy = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 3, !dbg !3310
  store i8 0, i8* %dummy, align 8, !dbg !3311
  call void @llvm.dbg.value(metadata %struct.expand_value_data* %evd, metadata !3301, metadata !DIExpression(DW_OP_deref)), !dbg !3302
  %call = call fastcc %struct.rtx_def* @cselib_expand_value_rtx_1(%struct.rtx_def* %orig, %struct.expand_value_data* nonnull %evd, i32 %max_depth) #7, !dbg !3312
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !3313
  ret %struct.rtx_def* %call, !dbg !3314
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cselib_dummy_expand_value_rtx_cb(%struct.rtx_def* %orig, %struct.bitmap_head_def* %regs_active, i32 %max_depth, %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)* %cb, i8* %data) local_unnamed_addr #5 !dbg !3315 {
entry:
  %evd = alloca %struct.expand_value_data, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %orig, metadata !3319, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %regs_active, metadata !3320, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i32 %max_depth, metadata !3321, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)* %cb, metadata !3322, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i8* %data, metadata !3323, metadata !DIExpression()), !dbg !3325
  %0 = bitcast %struct.expand_value_data* %evd to i8*, !dbg !3326
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !3326
  %regs_active1 = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 0, !dbg !3327
  store %struct.bitmap_head_def* %regs_active, %struct.bitmap_head_def** %regs_active1, align 8, !dbg !3328
  %callback = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 1, !dbg !3329
  store %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)* %cb, %struct.rtx_def* (%struct.rtx_def*, %struct.bitmap_head_def*, i32, i8*)** %callback, align 8, !dbg !3330
  %callback_arg = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 2, !dbg !3331
  store i8* %data, i8** %callback_arg, align 8, !dbg !3332
  %dummy = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 3, !dbg !3333
  store i8 1, i8* %dummy, align 8, !dbg !3334
  call void @llvm.dbg.value(metadata %struct.expand_value_data* %evd, metadata !3324, metadata !DIExpression(DW_OP_deref)), !dbg !3325
  %call = call fastcc %struct.rtx_def* @cselib_expand_value_rtx_1(%struct.rtx_def* %orig, %struct.expand_value_data* nonnull %evd, i32 %max_depth) #7, !dbg !3335
  %cmp = icmp ne %struct.rtx_def* %call, null, !dbg !3336
  %conv2 = zext i1 %cmp to i8, !dbg !3335
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !3337
  ret i8 %conv2, !dbg !3338
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @cselib_subst_to_values(%struct.rtx_def* %x) local_unnamed_addr #5 !dbg !3339 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3343, metadata !DIExpression()), !dbg !3363
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !3364
  %bf.load = load i32, i32* %0, align 8, !dbg !3364
  %bf.clear = and i32 %bf.load, 65535, !dbg !3364
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3344, metadata !DIExpression()), !dbg !3363
  %idxprom = zext i32 %bf.clear to i64, !dbg !3365
  %arrayidx = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom, !dbg !3365
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !3365
  call void @llvm.dbg.value(metadata i8* %1, metadata !3345, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3348, metadata !DIExpression()), !dbg !3363
  %trunc = trunc i32 %bf.load to i16, !dbg !3366
  switch i16 %trunc, label %sw.epilog [
    i16 37, label %sw.bb
    i16 43, label %sw.bb16
    i16 32, label %cleanup
    i16 33, label %cleanup
    i16 30, label %cleanup
    i16 31, label %cleanup
    i16 77, label %sw.bb27
    i16 75, label %sw.bb27
    i16 76, label %sw.bb27
    i16 74, label %sw.bb27
    i16 79, label %sw.bb27
    i16 78, label %sw.bb27
  ], !dbg !3366

sw.bb:                                            ; preds = %entry
  %2 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !3367
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x) #7, !dbg !3367
  %idxprom1 = zext i32 %call to i64, !dbg !3367
  %arrayidx2 = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %2, i64 %idxprom1, !dbg !3367
  %3 = load %struct.elt_list*, %struct.elt_list** %arrayidx2, align 8, !dbg !3367
  call void @llvm.dbg.value(metadata %struct.elt_list* %3, metadata !3347, metadata !DIExpression()), !dbg !3363
  %tobool = icmp eq %struct.elt_list* %3, null, !dbg !3369
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3371

land.lhs.true:                                    ; preds = %sw.bb
  %elt = getelementptr inbounds %struct.elt_list, %struct.elt_list* %3, i64 0, i32 1, !dbg !3372
  %4 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt, align 8, !dbg !3372
  %cmp = icmp eq %struct.cselib_val_struct* %4, null, !dbg !3373
  br i1 %cmp, label %if.then, label %if.end, !dbg !3374

if.then:                                          ; preds = %land.lhs.true
  %next = getelementptr inbounds %struct.elt_list, %struct.elt_list* %3, i64 0, i32 0, !dbg !3375
  %5 = load %struct.elt_list*, %struct.elt_list** %next, align 8, !dbg !3375
  call void @llvm.dbg.value(metadata %struct.elt_list* %5, metadata !3347, metadata !DIExpression()), !dbg !3363
  br label %if.end, !dbg !3376

if.end:                                           ; preds = %sw.bb, %if.then, %land.lhs.true
  %l.0 = phi %struct.elt_list* [ %5, %if.then ], [ %3, %land.lhs.true ], [ null, %sw.bb ], !dbg !3377
  call void @llvm.dbg.value(metadata %struct.elt_list* %l.0, metadata !3347, metadata !DIExpression()), !dbg !3363
  br label %for.cond, !dbg !3378

for.cond:                                         ; preds = %for.inc, %if.end
  %l.1 = phi %struct.elt_list* [ %l.0, %if.end ], [ %11, %for.inc ], !dbg !3377
  call void @llvm.dbg.value(metadata %struct.elt_list* %l.1, metadata !3347, metadata !DIExpression()), !dbg !3363
  %tobool3 = icmp eq %struct.elt_list* %l.1, null, !dbg !3379
  br i1 %tobool3, label %for.end, label %for.body, !dbg !3379

for.body:                                         ; preds = %for.cond
  %elt4 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %l.1, i64 0, i32 1, !dbg !3381
  %6 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt4, align 8, !dbg !3381
  %val_rtx = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %6, i64 0, i32 2, !dbg !3381
  %7 = bitcast %struct.rtx_def** %val_rtx to i32**, !dbg !3381
  %8 = load i32*, i32** %7, align 8, !dbg !3381
  %bf.load5 = load i32, i32* %8, align 8, !dbg !3381
  %bf.load7 = load i32, i32* %0, align 8, !dbg !3384
  %bf.lshr1 = xor i32 %bf.load5, %bf.load7, !dbg !3385
  %9 = and i32 %bf.lshr1, 16711680, !dbg !3385
  %cmp10 = icmp eq i32 %9, 0, !dbg !3385
  br i1 %cmp10, label %if.then11, label %for.inc, !dbg !3386

if.then11:                                        ; preds = %for.body
  %.lcssa = phi i32* [ %8, %for.body ], !dbg !3381
  %10 = bitcast i32* %.lcssa to %struct.rtx_def*, !dbg !3386
  call void @llvm.dbg.value(metadata %struct.elt_list* %l.1, metadata !3347, metadata !DIExpression()), !dbg !3363
  br label %cleanup, !dbg !3387

for.inc:                                          ; preds = %for.body
  %next15 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %l.1, i64 0, i32 0, !dbg !3388
  %11 = load %struct.elt_list*, %struct.elt_list** %next15, align 8, !dbg !3388
  call void @llvm.dbg.value(metadata %struct.elt_list* %11, metadata !3347, metadata !DIExpression()), !dbg !3363
  br label %for.cond, !dbg !3389, !llvm.loop !3390

for.end:                                          ; preds = %for.cond
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1532, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3392
  br label %sw.bb16, !dbg !3392

sw.bb16:                                          ; preds = %entry, %for.end
  %call17 = tail call fastcc %struct.cselib_val_struct* @cselib_lookup_mem(%struct.rtx_def* %x, i32 0) #7, !dbg !3393
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %call17, metadata !3346, metadata !DIExpression()), !dbg !3363
  %tobool18 = icmp eq %struct.cselib_val_struct* %call17, null, !dbg !3394
  br i1 %tobool18, label %if.then19, label %if.end24, !dbg !3396

if.then19:                                        ; preds = %sw.bb16
  %12 = load i32, i32* @next_uid, align 4, !dbg !3397
  %bf.load20 = load i32, i32* %0, align 8, !dbg !3399
  %bf.lshr21 = lshr i32 %bf.load20, 16, !dbg !3399
  %bf.clear22 = and i32 %bf.lshr21, 255, !dbg !3399
  %call23 = tail call fastcc %struct.cselib_val_struct* @new_cselib_val(i32 %12, i32 %bf.clear22, %struct.rtx_def* %x) #7, !dbg !3400
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %call23, metadata !3346, metadata !DIExpression()), !dbg !3363
  br label %if.end24, !dbg !3401

if.end24:                                         ; preds = %sw.bb16, %if.then19
  %e.0 = phi %struct.cselib_val_struct* [ %call17, %sw.bb16 ], [ %call23, %if.then19 ], !dbg !3377
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %e.0, metadata !3346, metadata !DIExpression()), !dbg !3363
  %val_rtx25 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %e.0, i64 0, i32 2, !dbg !3402
  %13 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx25, align 8, !dbg !3402
  br label %cleanup, !dbg !3403

sw.bb27:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %14 = load i32, i32* @next_uid, align 4, !dbg !3404
  %bf.lshr29 = lshr i32 %bf.load, 16, !dbg !3405
  %bf.clear30 = and i32 %bf.lshr29, 255, !dbg !3405
  %call31 = tail call fastcc %struct.cselib_val_struct* @new_cselib_val(i32 %14, i32 %bf.clear30, %struct.rtx_def* %x) #7, !dbg !3406
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %call31, metadata !3346, metadata !DIExpression()), !dbg !3363
  %val_rtx32 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %call31, i64 0, i32 2, !dbg !3407
  %15 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx32, align 8, !dbg !3407
  br label %cleanup, !dbg !3408

sw.epilog:                                        ; preds = %entry
  %arrayidx34 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom, !dbg !3409
  %16 = load i8, i8* %arrayidx34, align 1, !dbg !3409
  call void @llvm.dbg.value(metadata i8 %16, metadata !3349, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3363
  %u74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, !dbg !3410
  %fld75 = bitcast %union.u* %u74 to [1 x %union.rtunion_def]*, !dbg !3410
  %17 = zext i8 %16 to i64, !dbg !3411
  br label %for.cond35, !dbg !3411

for.cond35:                                       ; preds = %for.inc144, %sw.epilog
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc144 ], [ %17, %sw.epilog ], !dbg !3363
  %copy.0 = phi %struct.rtx_def* [ %copy.8, %for.inc144 ], [ %x, %sw.epilog ], !dbg !3363
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, -1, !dbg !3412
  call void @llvm.dbg.value(metadata i32 undef, metadata !3349, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3363
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy.0, metadata !3348, metadata !DIExpression()), !dbg !3363
  %cmp36 = icmp sgt i64 %indvars.iv3, 0, !dbg !3413
  br i1 %cmp36, label %for.body38, label %cleanup.loopexit, !dbg !3414

for.body38:                                       ; preds = %for.cond35
  %arrayidx40 = getelementptr inbounds i8, i8* %1, i64 %indvars.iv.next4, !dbg !3415
  %18 = load i8, i8* %arrayidx40, align 1, !dbg !3415
  %cmp42 = icmp eq i8 %18, 101, !dbg !3416
  br i1 %cmp42, label %if.then44, label %if.else, !dbg !3417

if.then44:                                        ; preds = %for.body38
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i64 0, i64 %indvars.iv.next4, !dbg !3418
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**, !dbg !3418
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3418
  %call47 = tail call %struct.rtx_def* @cselib_subst_to_values(%struct.rtx_def* %19) #7, !dbg !3419
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call47, metadata !3350, metadata !DIExpression()), !dbg !3420
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3421
  %cmp53 = icmp eq %struct.rtx_def* %call47, %20, !dbg !3423
  br i1 %cmp53, label %for.inc144, label %if.then55, !dbg !3424

if.then55:                                        ; preds = %if.then44
  %cmp56 = icmp eq %struct.rtx_def* %copy.0, %x, !dbg !3425
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !3428

if.then58:                                        ; preds = %if.then55
  %call59 = tail call %struct.rtx_def* @shallow_copy_rtx_stat(%struct.rtx_def* %x) #6, !dbg !3429
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call59, metadata !3348, metadata !DIExpression()), !dbg !3363
  br label %if.end60, !dbg !3430

if.end60:                                         ; preds = %if.then58, %if.then55
  %copy.1 = phi %struct.rtx_def* [ %call59, %if.then58 ], [ %copy.0, %if.then55 ], !dbg !3363
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy.1, metadata !3348, metadata !DIExpression()), !dbg !3363
  %u61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %copy.1, i64 0, i32 1, !dbg !3431
  %fld62 = bitcast %union.u* %u61 to [1 x %union.rtunion_def]*, !dbg !3431
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i64 0, i64 %indvars.iv.next4, !dbg !3431
  %rt_rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**, !dbg !3431
  store %struct.rtx_def* %call47, %struct.rtx_def** %rt_rtx65, align 8, !dbg !3432
  br label %for.inc144, !dbg !3433

if.else:                                          ; preds = %for.body38
  %cmp70 = icmp eq i8 %18, 69, !dbg !3434
  br i1 %cmp70, label %for.cond73.preheader, label %for.inc144, !dbg !3435

for.cond73.preheader:                             ; preds = %if.else
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i64 0, i64 %indvars.iv.next4, !dbg !3410
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx77 to %struct.rtvec_def**, !dbg !3410
  br label %for.cond73, !dbg !3436

for.cond73:                                       ; preds = %for.cond73.preheader, %for.inc140
  %indvars.iv = phi i64 [ 0, %for.cond73.preheader ], [ %indvars.iv.next, %for.inc140 ], !dbg !3363
  %copy.3 = phi %struct.rtx_def* [ %copy.0, %for.cond73.preheader ], [ %copy.6, %for.inc140 ], !dbg !3363
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3356, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy.3, metadata !3348, metadata !DIExpression()), !dbg !3363
  %21 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3438
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %21, i64 0, i32 0, !dbg !3438
  %22 = load i32, i32* %num_elem, align 8, !dbg !3438
  %23 = sext i32 %22 to i64, !dbg !3439
  %cmp78 = icmp slt i64 %indvars.iv, %23, !dbg !3439
  br i1 %cmp78, label %for.body80, label %for.inc144.loopexit, !dbg !3436

for.body80:                                       ; preds = %for.cond73
  %arrayidx88 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %21, i64 0, i32 1, i64 %indvars.iv, !dbg !3440
  %24 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx88, align 8, !dbg !3440
  %call89 = tail call %struct.rtx_def* @cselib_subst_to_values(%struct.rtx_def* %24) #7, !dbg !3441
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call89, metadata !3359, metadata !DIExpression()), !dbg !3442
  %25 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3443
  %arrayidx97 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %25, i64 0, i32 1, i64 %indvars.iv, !dbg !3443
  %26 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx97, align 8, !dbg !3443
  %cmp98 = icmp eq %struct.rtx_def* %call89, %26, !dbg !3445
  br i1 %cmp98, label %for.inc140, label %if.then100, !dbg !3446

if.then100:                                       ; preds = %for.body80
  %u106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %copy.3, i64 0, i32 1, !dbg !3447
  %fld107 = bitcast %union.u* %u106 to [1 x %union.rtunion_def]*, !dbg !3447
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i64 0, i64 %indvars.iv.next4, !dbg !3447
  %rt_rtvec110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtvec_def**, !dbg !3447
  %27 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec110, align 8, !dbg !3447
  %cmp111 = icmp eq %struct.rtvec_def* %25, %27, !dbg !3450
  br i1 %cmp111, label %if.then113, label %if.end130, !dbg !3451

if.then113:                                       ; preds = %if.then100
  %cmp114 = icmp eq %struct.rtx_def* %copy.3, %x, !dbg !3452
  br i1 %cmp114, label %if.then116, label %if.end118, !dbg !3455

if.then116:                                       ; preds = %if.then113
  %call117 = tail call %struct.rtx_def* @shallow_copy_rtx_stat(%struct.rtx_def* %x) #6, !dbg !3456
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call117, metadata !3348, metadata !DIExpression()), !dbg !3363
  %.pre = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3457
  br label %if.end118, !dbg !3458

if.end118:                                        ; preds = %if.then116, %if.then113
  %28 = phi %struct.rtvec_def* [ %.pre, %if.then116 ], [ %25, %if.then113 ], !dbg !3457
  %copy.4 = phi %struct.rtx_def* [ %call117, %if.then116 ], [ %copy.3, %if.then113 ], !dbg !3363
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy.4, metadata !3348, metadata !DIExpression()), !dbg !3363
  %call124 = tail call %struct.rtvec_def* @shallow_copy_rtvec(%struct.rtvec_def* %28) #6, !dbg !3459
  %u125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %copy.4, i64 0, i32 1, !dbg !3460
  %fld126 = bitcast %union.u* %u125 to [1 x %union.rtunion_def]*, !dbg !3460
  %arrayidx128 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i64 0, i64 %indvars.iv.next4, !dbg !3460
  %rt_rtvec129 = bitcast %union.rtunion_def* %arrayidx128 to %struct.rtvec_def**, !dbg !3460
  store %struct.rtvec_def* %call124, %struct.rtvec_def** %rt_rtvec129, align 8, !dbg !3461
  br label %if.end130, !dbg !3462

if.end130:                                        ; preds = %if.end118, %if.then100
  %29 = phi %struct.rtvec_def* [ %call124, %if.end118 ], [ %27, %if.then100 ], !dbg !3463
  %copy.5 = phi %struct.rtx_def* [ %copy.4, %if.end118 ], [ %copy.3, %if.then100 ], !dbg !3363
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy.5, metadata !3348, metadata !DIExpression()), !dbg !3363
  %arrayidx138 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %29, i64 0, i32 1, i64 %indvars.iv, !dbg !3463
  store %struct.rtx_def* %call89, %struct.rtx_def** %arrayidx138, align 8, !dbg !3464
  br label %for.inc140, !dbg !3465

for.inc140:                                       ; preds = %for.body80, %if.end130
  %copy.6 = phi %struct.rtx_def* [ %copy.5, %if.end130 ], [ %copy.3, %for.body80 ], !dbg !3363
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy.6, metadata !3348, metadata !DIExpression()), !dbg !3363
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3466
  call void @llvm.dbg.value(metadata i32 undef, metadata !3356, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3437
  br label %for.cond73, !dbg !3467, !llvm.loop !3468

for.inc144.loopexit:                              ; preds = %for.cond73
  %copy.3.lcssa = phi %struct.rtx_def* [ %copy.3, %for.cond73 ], !dbg !3363
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy.3.lcssa, metadata !3348, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy.3.lcssa, metadata !3348, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy.3.lcssa, metadata !3348, metadata !DIExpression()), !dbg !3363
  br label %for.inc144, !dbg !3470

for.inc144:                                       ; preds = %for.inc144.loopexit, %if.then44, %if.end60, %if.else
  %copy.8 = phi %struct.rtx_def* [ %copy.1, %if.end60 ], [ %copy.0, %if.then44 ], [ %copy.0, %if.else ], [ %copy.3.lcssa, %for.inc144.loopexit ], !dbg !3363
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy.8, metadata !3348, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i32 undef, metadata !3349, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3363
  br label %for.cond35, !dbg !3470, !llvm.loop !3471

cleanup.loopexit:                                 ; preds = %for.cond35
  %copy.0.lcssa = phi %struct.rtx_def* [ %copy.0, %for.cond35 ], !dbg !3363
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy.0.lcssa, metadata !3348, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy.0.lcssa, metadata !3348, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata %struct.rtx_def* %copy.0.lcssa, metadata !3348, metadata !DIExpression()), !dbg !3363
  br label %cleanup, !dbg !3473

cleanup:                                          ; preds = %cleanup.loopexit, %entry, %entry, %entry, %entry, %sw.bb27, %if.end24, %if.then11
  %retval.0 = phi %struct.rtx_def* [ %15, %sw.bb27 ], [ %13, %if.end24 ], [ %10, %if.then11 ], [ %x, %entry ], [ %x, %entry ], [ %x, %entry ], [ %x, %entry ], [ %copy.0.lcssa, %cleanup.loopexit ], !dbg !3363
  ret %struct.rtx_def* %retval.0, !dbg !3473
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cselib_val_struct* @cselib_lookup_mem(%struct.rtx_def* %x, i32 %create) unnamed_addr #5 !dbg !3474 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3478, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 %create, metadata !3479, metadata !DIExpression()), !dbg !3485
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !3486
  %bf.load = load i32, i32* %0, align 8, !dbg !3486
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3486
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3486
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3480, metadata !DIExpression()), !dbg !3485
  %bf.clear3 = and i32 %bf.load, 134217728, !dbg !3487
  %tobool = icmp eq i32 %bf.clear3, 0, !dbg !3487
  %cmp = icmp ne i32 %bf.clear, 1, !dbg !3489
  %or.cond.not = and i1 %cmp, %tobool, !dbg !3490
  %1 = load i8, i8* @cselib_record_memory, align 1, !dbg !3491
  %tobool5 = icmp ne i8 %1, 0, !dbg !3491
  %or.cond1 = and i1 %or.cond.not, %tobool5, !dbg !3490
  br i1 %or.cond1, label %lor.lhs.false6, label %cleanup, !dbg !3490

lor.lhs.false6:                                   ; preds = %entry
  %idxprom = zext i32 %bf.clear to i64, !dbg !3492
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !3492
  %2 = load i8, i8* %arrayidx, align 1, !dbg !3492
  %cmp7 = icmp eq i8 %2, 8, !dbg !3492
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false9, !dbg !3492

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %cmp13 = icmp eq i8 %2, 9, !dbg !3492
  br i1 %cmp13, label %land.lhs.true, label %lor.lhs.false15, !dbg !3492

lor.lhs.false15:                                  ; preds = %lor.lhs.false9
  %cmp19 = icmp eq i8 %2, 11, !dbg !3492
  br i1 %cmp19, label %land.lhs.true, label %lor.lhs.false21, !dbg !3492

lor.lhs.false21:                                  ; preds = %lor.lhs.false15
  %cmp25 = icmp eq i8 %2, 17, !dbg !3492
  br i1 %cmp25, label %land.lhs.true, label %if.end, !dbg !3493

land.lhs.true:                                    ; preds = %lor.lhs.false21, %lor.lhs.false15, %lor.lhs.false9, %lor.lhs.false6
  %3 = load i32, i32* @flag_float_store, align 4, !dbg !3494
  %tobool27 = icmp eq i32 %3, 0, !dbg !3494
  br i1 %tobool27, label %if.end, label %cleanup, !dbg !3495

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false21
  %arrayidx28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3496
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**, !dbg !3496
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3496
  %call = tail call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %4, i32 %bf.clear, i32 %create) #7, !dbg !3497
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %call, metadata !3482, metadata !DIExpression()), !dbg !3485
  %tobool29 = icmp eq %struct.cselib_val_struct* %call, null, !dbg !3498
  br i1 %tobool29, label %cleanup, label %if.end31, !dbg !3500

if.end31:                                         ; preds = %if.end
  %addr_list = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %call, i64 0, i32 4, !dbg !3501
  br label %for.cond, !dbg !3503

for.cond:                                         ; preds = %for.inc, %if.end31
  %l.0.in = phi %struct.elt_list** [ %addr_list, %if.end31 ], [ %next, %for.inc ]
  %l.0 = load %struct.elt_list*, %struct.elt_list** %l.0.in, align 8, !dbg !3504
  call void @llvm.dbg.value(metadata %struct.elt_list* %l.0, metadata !3484, metadata !DIExpression()), !dbg !3485
  %tobool32 = icmp eq %struct.elt_list* %l.0, null, !dbg !3505
  br i1 %tobool32, label %for.end, label %for.body, !dbg !3505

for.body:                                         ; preds = %for.cond
  %elt = getelementptr inbounds %struct.elt_list, %struct.elt_list* %l.0, i64 0, i32 1, !dbg !3506
  %5 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt, align 8, !dbg !3506
  %val_rtx = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %5, i64 0, i32 2, !dbg !3506
  %6 = bitcast %struct.rtx_def** %val_rtx to i32**, !dbg !3506
  %7 = load i32*, i32** %6, align 8, !dbg !3506
  %bf.load33 = load i32, i32* %7, align 8, !dbg !3506
  %bf.lshr34 = lshr i32 %bf.load33, 16, !dbg !3506
  %bf.clear35 = and i32 %bf.lshr34, 255, !dbg !3506
  %cmp36 = icmp eq i32 %bf.clear35, %bf.clear, !dbg !3509
  br i1 %cmp36, label %if.then38, label %for.inc, !dbg !3510

if.then38:                                        ; preds = %for.body
  %elt.lcssa = phi %struct.cselib_val_struct** [ %elt, %for.body ], !dbg !3506
  %.lcssa = phi %struct.cselib_val_struct* [ %5, %for.body ], !dbg !3506
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %.lcssa, i64 0, i32 3, !dbg !3511
  %8 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !3511
  tail call fastcc void @promote_debug_loc(%struct.elt_loc_list* %8) #7, !dbg !3513
  %9 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt.lcssa, align 8, !dbg !3514
  br label %cleanup, !dbg !3515

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.elt_list, %struct.elt_list* %l.0, i64 0, i32 0, !dbg !3516
  br label %for.cond, !dbg !3517, !llvm.loop !3518

for.end:                                          ; preds = %for.cond
  %tobool42 = icmp eq i32 %create, 0, !dbg !3520
  br i1 %tobool42, label %cleanup, label %if.end44, !dbg !3522

if.end44:                                         ; preds = %for.end
  %10 = load i32, i32* @next_uid, align 4, !dbg !3523
  %call45 = tail call fastcc %struct.cselib_val_struct* @new_cselib_val(i32 %10, i32 %bf.clear, %struct.rtx_def* %x) #7, !dbg !3524
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %call45, metadata !3483, metadata !DIExpression()), !dbg !3485
  tail call fastcc void @add_mem_for_addr(%struct.cselib_val_struct* nonnull %call, %struct.cselib_val_struct* %call45, %struct.rtx_def* %x) #7, !dbg !3525
  %11 = load %struct.htab*, %struct.htab** @cselib_hash_table, align 8, !dbg !3526
  %call46 = tail call fastcc %struct.rtx_def* @wrap_constant(i32 %bf.clear, %struct.rtx_def* %x) #7, !dbg !3527
  %12 = bitcast %struct.rtx_def* %call46 to i8*, !dbg !3527
  %hash = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %call45, i64 0, i32 0, !dbg !3528
  %13 = load i32, i32* %hash, align 8, !dbg !3528
  %call47 = tail call i8** @htab_find_slot_with_hash(%struct.htab* %11, i8* %12, i32 %13, i32 1) #6, !dbg !3529
  call void @llvm.dbg.value(metadata i8** %call47, metadata !3481, metadata !DIExpression()), !dbg !3485
  %14 = bitcast i8** %call47 to %struct.cselib_val_struct**, !dbg !3530
  store %struct.cselib_val_struct* %call45, %struct.cselib_val_struct** %14, align 8, !dbg !3530
  br label %cleanup, !dbg !3531

cleanup:                                          ; preds = %land.lhs.true, %for.end, %if.end, %entry, %if.end44, %if.then38
  %retval.0 = phi %struct.cselib_val_struct* [ %9, %if.then38 ], [ %call45, %if.end44 ], [ null, %entry ], [ null, %land.lhs.true ], [ null, %if.end ], [ null, %for.end ], !dbg !3485
  ret %struct.cselib_val_struct* %retval.0, !dbg !3532
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cselib_val_struct* @new_cselib_val(i32 %hash, i32 %mode, %struct.rtx_def* %x) unnamed_addr #0 !dbg !3533 {
entry:
  call void @llvm.dbg.value(metadata i32 %hash, metadata !3537, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3538, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3539, metadata !DIExpression()), !dbg !3541
  %0 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @cselib_val_pool, align 8, !dbg !3542
  %call = tail call i8* @pool_alloc(%struct.alloc_pool_def* %0) #6, !dbg !3543
  %1 = bitcast i8* %call to %struct.cselib_val_struct*, !dbg !3544
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %1, metadata !3540, metadata !DIExpression()), !dbg !3541
  %tobool = icmp eq i32 %hash, 0, !dbg !3545
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3545

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 980, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3545
  br label %cond.end, !dbg !3545

cond.end:                                         ; preds = %entry, %cond.true
  %2 = load i32, i32* @next_uid, align 4, !dbg !3546
  %tobool1 = icmp eq i32 %2, 0, !dbg !3546
  br i1 %tobool1, label %cond.true2, label %cond.end4, !dbg !3546

cond.true2:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 981, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3546
  br label %cond.end4, !dbg !3546

cond.end4:                                        ; preds = %cond.end, %cond.true2
  %hash6 = bitcast i8* %call to i32*, !dbg !3547
  store i32 %hash, i32* %hash6, align 8, !dbg !3548
  %3 = load i32, i32* @next_uid, align 4, !dbg !3549
  %inc = add i32 %3, 1, !dbg !3549
  store i32 %inc, i32* @next_uid, align 4, !dbg !3549
  %uid = getelementptr inbounds i8, i8* %call, i64 4, !dbg !3550
  %4 = bitcast i8* %uid to i32*, !dbg !3550
  store i32 %3, i32* %4, align 4, !dbg !3551
  %5 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @value_pool, align 8, !dbg !3552
  %call7 = tail call i8* @pool_alloc(%struct.alloc_pool_def* %5) #6, !dbg !3553
  %val_rtx = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3554
  %6 = bitcast i8* %val_rtx to i8**, !dbg !3555
  store i8* %call7, i8** %6, align 8, !dbg !3555
  %call9 = tail call i8* @memset(i8* %call7, i32 0, i64 8) #6, !dbg !3556
  %7 = bitcast i8* %val_rtx to i32**, !dbg !3557
  %8 = load i32*, i32** %7, align 8, !dbg !3557
  %bf.load = load i32, i32* %8, align 8, !dbg !3557
  %bf.clear = and i32 %bf.load, -65536, !dbg !3557
  %bf.set = or i32 %bf.clear, 1, !dbg !3557
  store i32 %bf.set, i32* %8, align 8, !dbg !3557
  %9 = load i32*, i32** %7, align 8, !dbg !3558
  %bf.load12 = load i32, i32* %9, align 8, !dbg !3558
  %bf.value = shl i32 %mode, 16, !dbg !3558
  %bf.shl = and i32 %bf.value, 16711680, !dbg !3558
  %bf.clear13 = and i32 %bf.load12, -16711681, !dbg !3558
  %bf.set14 = or i32 %bf.clear13, %bf.shl, !dbg !3558
  store i32 %bf.set14, i32* %9, align 8, !dbg !3558
  %10 = bitcast i8* %val_rtx to %struct.rtx_def**, !dbg !3559
  %11 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8, !dbg !3559
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i64 0, i32 1, i32 0, i32 0, i64 0, i32 0, !dbg !3560
  store i8* %call, i8** %12, align 8, !dbg !3560
  %addr_list = getelementptr inbounds i8, i8* %call, i64 24, !dbg !3561
  %13 = bitcast i8* %addr_list to %struct.elt_list**, !dbg !3561
  store %struct.elt_list* null, %struct.elt_list** %13, align 8, !dbg !3562
  %locs = getelementptr inbounds i8, i8* %call, i64 16, !dbg !3563
  %14 = bitcast i8* %locs to %struct.elt_loc_list**, !dbg !3563
  store %struct.elt_loc_list* null, %struct.elt_loc_list** %14, align 8, !dbg !3564
  %next_containing_mem = getelementptr inbounds i8, i8* %call, i64 32, !dbg !3565
  %15 = bitcast i8* %next_containing_mem to %struct.cselib_val_struct**, !dbg !3565
  store %struct.cselib_val_struct* null, %struct.cselib_val_struct** %15, align 8, !dbg !3566
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3567
  %tobool16 = icmp eq %struct._IO_FILE* %16, null, !dbg !3567
  br i1 %tobool16, label %if.end27, label %land.lhs.true, !dbg !3569

land.lhs.true:                                    ; preds = %cond.end4
  %17 = load i32, i32* @dump_flags, align 4, !dbg !3570
  %and = and i32 %17, 8, !dbg !3571
  %tobool17 = icmp eq i32 %and, 0, !dbg !3571
  br i1 %tobool17, label %if.end27, label %if.then, !dbg !3572

if.then:                                          ; preds = %land.lhs.true
  %18 = load i32, i32* %4, align 4, !dbg !3573
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %18, i32 %hash) #6, !dbg !3575
  %19 = load i32, i32* @flag_dump_noaddr, align 4, !dbg !3576
  %20 = load i32, i32* @flag_dump_unnumbered, align 4, !dbg !3578
  %21 = or i32 %19, %20, !dbg !3579
  %22 = icmp eq i32 %21, 0, !dbg !3579
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3580
  br i1 %22, label %if.else, label %if.then22, !dbg !3579

if.then22:                                        ; preds = %if.then
  %call23 = tail call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), %struct._IO_FILE* %23) #6, !dbg !3581
  br label %if.end, !dbg !3581

if.else:                                          ; preds = %if.then
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* %call) #6, !dbg !3582
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then22
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3583
  %call25 = tail call i32 @print_rtl_single(%struct._IO_FILE* %24, %struct.rtx_def* %x) #6, !dbg !3584
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3585
  %call26 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %25) #6, !dbg !3586
  br label %if.end27, !dbg !3587

if.end27:                                         ; preds = %land.lhs.true, %cond.end4, %if.end
  ret %struct.cselib_val_struct* %1, !dbg !3588
}

declare dso_local %struct.rtx_def* @shallow_copy_rtx_stat(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtvec_def* @shallow_copy_rtvec(%struct.rtvec_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.cselib_val_struct* @cselib_lookup_from_insn(%struct.rtx_def* %x, i32 %mode, i32 %create, %struct.rtx_def* %insn) local_unnamed_addr #5 !dbg !3589 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3593, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3594, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i32 %create, metadata !3595, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3596, metadata !DIExpression()), !dbg !3598
  %0 = load %struct.rtx_def*, %struct.rtx_def** @cselib_current_insn, align 8, !dbg !3599
  %tobool = icmp eq %struct.rtx_def* %0, null, !dbg !3599
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3599

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1696, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3599
  br label %cond.end, !dbg !3599

cond.end:                                         ; preds = %entry, %cond.true
  store %struct.rtx_def* %insn, %struct.rtx_def** @cselib_current_insn, align 8, !dbg !3600
  %call = tail call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %x, i32 %mode, i32 %create) #7, !dbg !3601
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %call, metadata !3597, metadata !DIExpression()), !dbg !3598
  store %struct.rtx_def* null, %struct.rtx_def** @cselib_current_insn, align 8, !dbg !3602
  ret %struct.cselib_val_struct* %call, !dbg !3603
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cselib_val_struct* @cselib_lookup_1(%struct.rtx_def* %x, i32 %mode, i32 %create) unnamed_addr #5 !dbg !3604 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3606, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3607, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i32 %create, metadata !3608, metadata !DIExpression()), !dbg !3619
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !3620
  %bf.load = load i32, i32* %0, align 8, !dbg !3620
  %bf.clear = and i32 %bf.load, 16711680, !dbg !3620
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !3622
  br i1 %cmp, label %if.end, label %if.then, !dbg !3623

if.then:                                          ; preds = %entry
  %bf.lshr2 = lshr i32 %bf.load, 16, !dbg !3624
  %bf.clear3 = and i32 %bf.lshr2, 255, !dbg !3624
  call void @llvm.dbg.value(metadata i32 %bf.clear3, metadata !3607, metadata !DIExpression()), !dbg !3619
  br label %if.end, !dbg !3625

if.end:                                           ; preds = %entry, %if.then
  %mode.addr.0 = phi i32 [ %bf.clear3, %if.then ], [ %mode, %entry ]
  call void @llvm.dbg.value(metadata i32 %mode.addr.0, metadata !3607, metadata !DIExpression()), !dbg !3619
  %bf.clear5 = and i32 %bf.load, 65535, !dbg !3626
  %cmp6 = icmp eq i32 %bf.clear5, 1, !dbg !3628
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !3629

if.then7:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3630
  %rt_cselib = bitcast %union.rtunion_def* %arrayidx to %struct.cselib_val_struct**, !dbg !3630
  %1 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib, align 8, !dbg !3630
  br label %cleanup98, !dbg !3631

if.end8:                                          ; preds = %if.end
  %cmp11 = icmp eq i32 %bf.clear5, 37, !dbg !3632
  br i1 %cmp11, label %if.then12, label %if.end71, !dbg !3633

if.then12:                                        ; preds = %if.end8
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x) #7, !dbg !3634
  call void @llvm.dbg.value(metadata i32 %call, metadata !3615, metadata !DIExpression()), !dbg !3635
  %2 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !3636
  %idxprom = zext i32 %call to i64, !dbg !3636
  %arrayidx13 = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %2, i64 %idxprom, !dbg !3636
  %3 = load %struct.elt_list*, %struct.elt_list** %arrayidx13, align 8, !dbg !3636
  call void @llvm.dbg.value(metadata %struct.elt_list* %3, metadata !3612, metadata !DIExpression()), !dbg !3635
  %tobool = icmp eq %struct.elt_list* %3, null, !dbg !3637
  br i1 %tobool, label %if.end16, label %land.lhs.true, !dbg !3639

land.lhs.true:                                    ; preds = %if.then12
  %elt = getelementptr inbounds %struct.elt_list, %struct.elt_list* %3, i64 0, i32 1, !dbg !3640
  %4 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt, align 8, !dbg !3640
  %cmp14 = icmp eq %struct.cselib_val_struct* %4, null, !dbg !3641
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !3642

if.then15:                                        ; preds = %land.lhs.true
  %next = getelementptr inbounds %struct.elt_list, %struct.elt_list* %3, i64 0, i32 0, !dbg !3643
  %5 = load %struct.elt_list*, %struct.elt_list** %next, align 8, !dbg !3643
  call void @llvm.dbg.value(metadata %struct.elt_list* %5, metadata !3612, metadata !DIExpression()), !dbg !3635
  br label %if.end16, !dbg !3644

if.end16:                                         ; preds = %if.then12, %if.then15, %land.lhs.true
  %l.0 = phi %struct.elt_list* [ %5, %if.then15 ], [ %3, %land.lhs.true ], [ null, %if.then12 ], !dbg !3635
  call void @llvm.dbg.value(metadata %struct.elt_list* %l.0, metadata !3612, metadata !DIExpression()), !dbg !3635
  br label %for.cond, !dbg !3645

for.cond:                                         ; preds = %for.inc, %if.end16
  %l.1 = phi %struct.elt_list* [ %l.0, %if.end16 ], [ %11, %for.inc ], !dbg !3635
  call void @llvm.dbg.value(metadata %struct.elt_list* %l.1, metadata !3612, metadata !DIExpression()), !dbg !3635
  %tobool17 = icmp eq %struct.elt_list* %l.1, null, !dbg !3646
  br i1 %tobool17, label %for.end, label %for.body, !dbg !3646

for.body:                                         ; preds = %for.cond
  %elt18 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %l.1, i64 0, i32 1, !dbg !3648
  %6 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt18, align 8, !dbg !3648
  %val_rtx = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %6, i64 0, i32 2, !dbg !3648
  %7 = bitcast %struct.rtx_def** %val_rtx to i32**, !dbg !3648
  %8 = load i32*, i32** %7, align 8, !dbg !3648
  %bf.load19 = load i32, i32* %8, align 8, !dbg !3648
  %bf.lshr20 = lshr i32 %bf.load19, 16, !dbg !3648
  %bf.clear21 = and i32 %bf.lshr20, 255, !dbg !3648
  %cmp22 = icmp eq i32 %mode.addr.0, %bf.clear21, !dbg !3651
  br i1 %cmp22, label %if.then23, label %for.inc, !dbg !3652

if.then23:                                        ; preds = %for.body
  %elt18.lcssa = phi %struct.cselib_val_struct** [ %elt18, %for.body ], !dbg !3648
  %.lcssa = phi %struct.cselib_val_struct* [ %6, %for.body ], !dbg !3648
  call void @llvm.dbg.value(metadata %struct.elt_list* %l.1, metadata !3612, metadata !DIExpression()), !dbg !3635
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %.lcssa, i64 0, i32 3, !dbg !3653
  %9 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !3653
  tail call fastcc void @promote_debug_loc(%struct.elt_loc_list* %9) #7, !dbg !3655
  %10 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt18.lcssa, align 8, !dbg !3656
  br label %cleanup98, !dbg !3657

for.inc:                                          ; preds = %for.body
  %next27 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %l.1, i64 0, i32 0, !dbg !3658
  %11 = load %struct.elt_list*, %struct.elt_list** %next27, align 8, !dbg !3658
  call void @llvm.dbg.value(metadata %struct.elt_list* %11, metadata !3612, metadata !DIExpression()), !dbg !3635
  br label %for.cond, !dbg !3659, !llvm.loop !3660

for.end:                                          ; preds = %for.cond
  %tobool28 = icmp eq i32 %create, 0, !dbg !3662
  br i1 %tobool28, label %cleanup98, label %if.end30, !dbg !3664

if.end30:                                         ; preds = %for.end
  %cmp31 = icmp ult i32 %call, 53, !dbg !3665
  br i1 %cmp31, label %if.then32, label %if.end41, !dbg !3666

if.then32:                                        ; preds = %if.end30
  %idxprom35 = zext i32 %mode.addr.0 to i64, !dbg !3667
  %arrayidx36 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom35, !dbg !3667
  %12 = load i8, i8* %arrayidx36, align 1, !dbg !3667
  %conv = zext i8 %12 to i32, !dbg !3667
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3616, metadata !DIExpression()), !dbg !3668
  %13 = load i32, i32* @max_value_regs, align 4, !dbg !3669
  %cmp37 = icmp ult i32 %13, %conv, !dbg !3671
  br i1 %cmp37, label %if.then39, label %if.end41, !dbg !3672

if.then39:                                        ; preds = %if.then32
  store i32 %conv, i32* @max_value_regs, align 4, !dbg !3673
  br label %if.end41, !dbg !3674

if.end41:                                         ; preds = %if.then32, %if.then39, %if.end30
  %14 = load i32, i32* @next_uid, align 4, !dbg !3675
  %bf.load42 = load i32, i32* %0, align 8, !dbg !3676
  %bf.lshr43 = lshr i32 %bf.load42, 16, !dbg !3676
  %bf.clear44 = and i32 %bf.lshr43, 255, !dbg !3676
  %call45 = tail call fastcc %struct.cselib_val_struct* @new_cselib_val(i32 %14, i32 %bf.clear44, %struct.rtx_def* %x) #7, !dbg !3677
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %call45, metadata !3610, metadata !DIExpression()), !dbg !3619
  %locs46 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %call45, i64 0, i32 3, !dbg !3678
  %15 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs46, align 8, !dbg !3678
  %call47 = tail call fastcc %struct.elt_loc_list* @new_elt_loc_list(%struct.elt_loc_list* %15, %struct.rtx_def* %x) #7, !dbg !3679
  store %struct.elt_loc_list* %call47, %struct.elt_loc_list** %locs46, align 8, !dbg !3680
  %16 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !3681
  %arrayidx50 = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %16, i64 %idxprom, !dbg !3681
  %17 = load %struct.elt_list*, %struct.elt_list** %arrayidx50, align 8, !dbg !3681
  %cmp51 = icmp eq %struct.elt_list* %17, null, !dbg !3683
  br i1 %cmp51, label %if.then53, label %if.end61, !dbg !3684

if.then53:                                        ; preds = %if.end41
  %18 = load i32*, i32** @used_regs, align 8, !dbg !3685
  %19 = load i32, i32* @n_used_regs, align 4, !dbg !3687
  %inc = add i32 %19, 1, !dbg !3687
  store i32 %inc, i32* @n_used_regs, align 4, !dbg !3687
  %idxprom54 = zext i32 %19 to i64, !dbg !3685
  %arrayidx55 = getelementptr inbounds i32, i32* %18, i64 %idxprom54, !dbg !3685
  store i32 %call, i32* %arrayidx55, align 4, !dbg !3688
  %20 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !3689
  %arrayidx57 = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %20, i64 %idxprom, !dbg !3689
  %21 = load %struct.elt_list*, %struct.elt_list** %arrayidx57, align 8, !dbg !3689
  %call58 = tail call fastcc %struct.elt_list* @new_elt_list(%struct.elt_list* %21, %struct.cselib_val_struct* null) #7, !dbg !3690
  %22 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !3691
  %arrayidx60 = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %22, i64 %idxprom, !dbg !3691
  store %struct.elt_list* %call58, %struct.elt_list** %arrayidx60, align 8, !dbg !3692
  %.pre = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !3693
  %arrayidx63.phi.trans.insert = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %.pre, i64 %idxprom, !dbg !3635
  %.pre3 = load %struct.elt_list*, %struct.elt_list** %arrayidx63.phi.trans.insert, align 8, !dbg !3693
  br label %if.end61, !dbg !3694

if.end61:                                         ; preds = %if.then53, %if.end41
  %23 = phi %struct.elt_list* [ %.pre3, %if.then53 ], [ %17, %if.end41 ], !dbg !3693
  %next64 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %23, i64 0, i32 0, !dbg !3695
  %24 = load %struct.elt_list*, %struct.elt_list** %next64, align 8, !dbg !3695
  %call65 = tail call fastcc %struct.elt_list* @new_elt_list(%struct.elt_list* %24, %struct.cselib_val_struct* %call45) #7, !dbg !3696
  %25 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !3697
  %arrayidx67 = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %25, i64 %idxprom, !dbg !3697
  %26 = load %struct.elt_list*, %struct.elt_list** %arrayidx67, align 8, !dbg !3697
  %next68 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %26, i64 0, i32 0, !dbg !3698
  store %struct.elt_list* %call65, %struct.elt_list** %next68, align 8, !dbg !3699
  %27 = load %struct.htab*, %struct.htab** @cselib_hash_table, align 8, !dbg !3700
  %28 = bitcast %struct.rtx_def* %x to i8*, !dbg !3701
  %hash = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %call45, i64 0, i32 0, !dbg !3702
  %29 = load i32, i32* %hash, align 8, !dbg !3702
  %call69 = tail call i8** @htab_find_slot_with_hash(%struct.htab* %27, i8* %28, i32 %29, i32 1) #6, !dbg !3703
  call void @llvm.dbg.value(metadata i8** %call69, metadata !3609, metadata !DIExpression()), !dbg !3619
  %30 = bitcast i8** %call69 to %struct.cselib_val_struct**, !dbg !3704
  store %struct.cselib_val_struct* %call45, %struct.cselib_val_struct** %30, align 8, !dbg !3704
  br label %cleanup98, !dbg !3705

if.end71:                                         ; preds = %if.end8
  %cmp74 = icmp eq i32 %bf.clear5, 43, !dbg !3706
  br i1 %cmp74, label %if.then76, label %if.end78, !dbg !3708

if.then76:                                        ; preds = %if.end71
  %call77 = tail call fastcc %struct.cselib_val_struct* @cselib_lookup_mem(%struct.rtx_def* %x, i32 %create) #7, !dbg !3709
  br label %cleanup98, !dbg !3710

if.end78:                                         ; preds = %if.end71
  %call79 = tail call fastcc i32 @cselib_hash_rtx(%struct.rtx_def* %x, i32 %create) #7, !dbg !3711
  call void @llvm.dbg.value(metadata i32 %call79, metadata !3611, metadata !DIExpression()), !dbg !3619
  %tobool80 = icmp eq i32 %call79, 0, !dbg !3712
  br i1 %tobool80, label %cleanup98, label %if.end82, !dbg !3714

if.end82:                                         ; preds = %if.end78
  %31 = load %struct.htab*, %struct.htab** @cselib_hash_table, align 8, !dbg !3715
  %call83 = tail call fastcc %struct.rtx_def* @wrap_constant(i32 %mode.addr.0, %struct.rtx_def* %x) #7, !dbg !3716
  %32 = bitcast %struct.rtx_def* %call83 to i8*, !dbg !3716
  %tobool84 = icmp ne i32 %create, 0, !dbg !3717
  %cond = zext i1 %tobool84 to i32, !dbg !3717
  %call85 = tail call i8** @htab_find_slot_with_hash(%struct.htab* %31, i8* %32, i32 %call79, i32 %cond) #6, !dbg !3718
  call void @llvm.dbg.value(metadata i8** %call85, metadata !3609, metadata !DIExpression()), !dbg !3619
  %cmp86 = icmp eq i8** %call85, null, !dbg !3719
  br i1 %cmp86, label %cleanup98, label %if.end89, !dbg !3721

if.end89:                                         ; preds = %if.end82
  %33 = bitcast i8** %call85 to %struct.cselib_val_struct**, !dbg !3722
  %34 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %33, align 8, !dbg !3722
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %34, metadata !3610, metadata !DIExpression()), !dbg !3619
  %tobool90 = icmp eq %struct.cselib_val_struct* %34, null, !dbg !3723
  br i1 %tobool90, label %if.end92, label %cleanup98, !dbg !3725

if.end92:                                         ; preds = %if.end89
  %call93 = tail call fastcc %struct.cselib_val_struct* @new_cselib_val(i32 %call79, i32 %mode.addr.0, %struct.rtx_def* %x) #7, !dbg !3726
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %call93, metadata !3610, metadata !DIExpression()), !dbg !3619
  store %struct.cselib_val_struct* %call93, %struct.cselib_val_struct** %33, align 8, !dbg !3727
  %locs94 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %call93, i64 0, i32 3, !dbg !3728
  %35 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs94, align 8, !dbg !3728
  %call95 = tail call %struct.rtx_def* @cselib_subst_to_values(%struct.rtx_def* %x) #7, !dbg !3729
  %call96 = tail call fastcc %struct.elt_loc_list* @new_elt_loc_list(%struct.elt_loc_list* %35, %struct.rtx_def* %call95) #7, !dbg !3730
  store %struct.elt_loc_list* %call96, %struct.elt_loc_list** %locs94, align 8, !dbg !3731
  br label %cleanup98, !dbg !3732

cleanup98:                                        ; preds = %for.end, %if.end89, %if.end78, %if.end82, %if.then23, %if.end61, %if.end92, %if.then76, %if.then7
  %retval.1 = phi %struct.cselib_val_struct* [ %1, %if.then7 ], [ %call77, %if.then76 ], [ %call93, %if.end92 ], [ %10, %if.then23 ], [ %call45, %if.end61 ], [ null, %for.end ], [ null, %if.end78 ], [ null, %if.end82 ], [ %34, %if.end89 ], !dbg !3619
  ret %struct.cselib_val_struct* %retval.1, !dbg !3733
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @print_inline_rtx(%struct._IO_FILE*, %struct.rtx_def*, i32) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @cselib_invalidate_rtx(%struct.rtx_def* %dest) local_unnamed_addr #5 !dbg !3734 {
entry:
  br label %tailrecurse, !dbg !3737

tailrecurse:                                      ; preds = %if.then21, %entry
  %dest.tr = phi %struct.rtx_def* [ %dest, %entry ], [ %2, %if.then21 ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest.tr, metadata !3736, metadata !DIExpression()), !dbg !3739
  br label %while.cond, !dbg !3740

while.cond:                                       ; preds = %while.body, %tailrecurse
  %dest.addr.0 = phi %struct.rtx_def* [ %dest.tr, %tailrecurse ], [ %1, %while.body ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest.addr.0, metadata !3736, metadata !DIExpression()), !dbg !3739
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest.addr.0, i64 0, i32 0, !dbg !3741
  %bf.load = load i32, i32* %0, align 8, !dbg !3741
  %bf.clear = and i32 %bf.load, 65535, !dbg !3741
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !3742
  br i1 %cmp, label %while.body, label %lor.lhs.false, !dbg !3743

lor.lhs.false:                                    ; preds = %while.cond
  %cmp3 = icmp eq i32 %bf.clear, 120, !dbg !3744
  %cmp6 = icmp eq i32 %bf.clear, 40, !dbg !3745
  %or.cond = or i1 %cmp3, %cmp6, !dbg !3746
  br i1 %or.cond, label %while.body, label %while.end, !dbg !3746

while.body:                                       ; preds = %while.cond, %lor.lhs.false
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest.addr.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3747
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3747
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3747
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3736, metadata !DIExpression()), !dbg !3739
  br label %while.cond, !dbg !3740, !llvm.loop !3748

while.end:                                        ; preds = %lor.lhs.false
  %dest.addr.0.lcssa = phi %struct.rtx_def* [ %dest.addr.0, %lor.lhs.false ]
  %.lcssa = phi i32* [ %0, %lor.lhs.false ], !dbg !3741
  %bf.clear.lcssa = phi i32 [ %bf.clear, %lor.lhs.false ], !dbg !3741
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest.addr.0.lcssa, metadata !3736, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest.addr.0.lcssa, metadata !3736, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest.addr.0.lcssa, metadata !3736, metadata !DIExpression()), !dbg !3739
  %cmp9 = icmp eq i32 %bf.clear.lcssa, 37, !dbg !3749
  br i1 %cmp9, label %if.then, label %if.else, !dbg !3751

if.then:                                          ; preds = %while.end
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dest.addr.0.lcssa) #7, !dbg !3752
  %bf.load10 = load i32, i32* %.lcssa, align 8, !dbg !3753
  %bf.lshr = lshr i32 %bf.load10, 16, !dbg !3753
  %bf.clear11 = and i32 %bf.lshr, 255, !dbg !3753
  tail call fastcc void @cselib_invalidate_regno(i32 %call, i32 %bf.clear11) #7, !dbg !3754
  br label %if.end16, !dbg !3754

if.else:                                          ; preds = %while.end
  %cmp14 = icmp eq i32 %bf.clear.lcssa, 43, !dbg !3755
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !3757

if.then15:                                        ; preds = %if.else
  tail call fastcc void @cselib_invalidate_mem(%struct.rtx_def* %dest.addr.0.lcssa) #7, !dbg !3758
  br label %if.end16, !dbg !3758

if.end16:                                         ; preds = %if.else, %if.then15, %if.then
  %bf.load17 = load i32, i32* %.lcssa, align 8, !dbg !3759
  %bf.lshr18 = lshr i32 %bf.load17, 16, !dbg !3759
  %bf.clear19 = and i32 %bf.lshr18, 255, !dbg !3759
  %call20 = tail call i32 @push_operand(%struct.rtx_def* %dest.addr.0.lcssa, i32 %bf.clear19) #6, !dbg !3760
  %tobool = icmp eq i32 %call20, 0, !dbg !3760
  br i1 %tobool, label %if.end22, label %if.then21, !dbg !3761

if.then21:                                        ; preds = %if.end16
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3762
  br label %tailrecurse, !dbg !3737

if.end22:                                         ; preds = %if.end16
  ret void, !dbg !3763
}

declare dso_local i32 @push_operand(%struct.rtx_def*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @cselib_process_insn(%struct.rtx_def* %insn) local_unnamed_addr #5 !dbg !3764 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3766, metadata !DIExpression()), !dbg !3769
  store %struct.rtx_def* %insn, %struct.rtx_def** @cselib_current_insn, align 8, !dbg !3770
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !3771
  %bf.load = load i32, i32* %0, align 8, !dbg !3771
  %bf.clear = and i32 %bf.load, 65535, !dbg !3771
  %cmp = icmp eq i32 %bf.clear, 12, !dbg !3771
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3773

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 10, !dbg !3774
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false4, !dbg !3775

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %insn, i32 30, %struct.rtx_def* null) #6, !dbg !3776
  %tobool = icmp eq %struct.rtx_def* %call, null, !dbg !3776
  br i1 %tobool, label %land.lhs.true.lor.lhs.false4_crit_edge, label %if.then, !dbg !3777

land.lhs.true.lor.lhs.false4_crit_edge:           ; preds = %land.lhs.true
  %bf.load5.pre = load i32, i32* %0, align 8, !dbg !3778
  br label %lor.lhs.false4, !dbg !3777

lor.lhs.false4:                                   ; preds = %land.lhs.true.lor.lhs.false4_crit_edge, %lor.lhs.false
  %bf.load37 = phi i32 [ %bf.load5.pre, %land.lhs.true.lor.lhs.false4_crit_edge ], [ %bf.load, %lor.lhs.false ], !dbg !3778
  %bf.clear6 = and i32 %bf.load37, 65535, !dbg !3778
  %cmp7 = icmp eq i32 %bf.clear6, 8, !dbg !3778
  br i1 %cmp7, label %land.lhs.true8, label %if.end, !dbg !3779

land.lhs.true8:                                   ; preds = %lor.lhs.false4
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3780
  %1 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3780
  %2 = bitcast %union.rtunion_def* %1 to i32**, !dbg !3780
  %3 = load i32*, i32** %2, align 8, !dbg !3780
  %bf.load9 = load i32, i32* %3, align 8, !dbg !3780
  %bf.clear10 = and i32 %bf.load9, 65535, !dbg !3780
  %cmp11 = icmp eq i32 %bf.clear10, 17, !dbg !3781
  br i1 %cmp11, label %land.lhs.true12, label %if.end, !dbg !3782

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %bf.clear18 = and i32 %bf.load9, 134217728, !dbg !3783
  %tobool19 = icmp eq i32 %bf.clear18, 0, !dbg !3783
  br i1 %tobool19, label %if.end, label %if.then, !dbg !3784

if.then:                                          ; preds = %land.lhs.true, %land.lhs.true12, %entry
  %4 = load i32, i32* @next_uid, align 4, !dbg !3785
  tail call void @cselib_reset_table(i32 %4) #7, !dbg !3787
  store %struct.rtx_def* null, %struct.rtx_def** @cselib_current_insn, align 8, !dbg !3788
  br label %cleanup.cont, !dbg !3789

if.end:                                           ; preds = %land.lhs.true12, %land.lhs.true8, %lor.lhs.false4
  br i1 %cmp7, label %if.end36, label %lor.lhs.false23, !dbg !3790

lor.lhs.false23:                                  ; preds = %if.end
  %cmp26 = icmp eq i32 %bf.clear6, 7, !dbg !3790
  br i1 %cmp26, label %if.end36, label %lor.lhs.false27, !dbg !3790

lor.lhs.false27:                                  ; preds = %lor.lhs.false23
  %cmp30 = icmp eq i32 %bf.clear6, 9, !dbg !3790
  br i1 %cmp30, label %if.end36, label %lor.lhs.false31, !dbg !3790

lor.lhs.false31:                                  ; preds = %lor.lhs.false27
  %cmp34 = icmp eq i32 %bf.clear6, 10, !dbg !3790
  br i1 %cmp34, label %if.end36, label %if.then35, !dbg !3792

if.then35:                                        ; preds = %lor.lhs.false31
  store %struct.rtx_def* null, %struct.rtx_def** @cselib_current_insn, align 8, !dbg !3793
  br label %cleanup.cont, !dbg !3795

if.end36:                                         ; preds = %lor.lhs.false31, %lor.lhs.false27, %lor.lhs.false23, %if.end
  %cmp39 = icmp eq i32 %bf.clear6, 10, !dbg !3796
  br i1 %cmp39, label %for.cond.preheader, label %if.end72, !dbg !3798

for.cond.preheader:                               ; preds = %if.end36
  br label %for.cond, !dbg !3799

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !3802
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3767, metadata !DIExpression()), !dbg !3769
  %exitcond = icmp eq i64 %indvars.iv, 53, !dbg !3803
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3799

for.body:                                         ; preds = %for.cond
  %arrayidx42 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 %indvars.iv, !dbg !3805
  %5 = load i8, i8* %arrayidx42, align 1, !dbg !3805
  %tobool43 = icmp eq i8 %5, 0, !dbg !3805
  br i1 %tobool43, label %for.inc, label %if.then53, !dbg !3807

if.then53:                                        ; preds = %for.body
  %arrayidx55 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_raw_mode, i64 0, i64 %indvars.iv, !dbg !3808
  %6 = load i32, i32* %arrayidx55, align 4, !dbg !3808
  %7 = trunc i64 %indvars.iv to i32, !dbg !3809
  tail call fastcc void @cselib_invalidate_regno(i32 %7, i32 %6) #7, !dbg !3809
  br label %for.inc, !dbg !3809

for.inc:                                          ; preds = %for.body, %if.then53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3810
  call void @llvm.dbg.value(metadata i32 undef, metadata !3767, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3769
  br label %for.cond, !dbg !3811, !llvm.loop !3812

for.end:                                          ; preds = %for.cond
  %bf.load57 = load i32, i32* %0, align 8, !dbg !3814
  %bf.clear59 = and i32 %bf.load57, 33554432, !dbg !3814
  %tobool60 = icmp eq i32 %bf.clear59, 0, !dbg !3814
  br i1 %tobool60, label %lor.lhs.false61, label %if.then70, !dbg !3816

lor.lhs.false61:                                  ; preds = %for.end
  %bf.clear64 = and i32 %bf.load57, 67108864, !dbg !3817
  %tobool65 = icmp eq i32 %bf.clear64, 0, !dbg !3817
  br i1 %tobool65, label %lor.lhs.false66, label %if.end72, !dbg !3817

lor.lhs.false66:                                  ; preds = %lor.lhs.false61
  %tobool69 = icmp slt i32 %bf.load57, 0, !dbg !3817
  br i1 %tobool69, label %if.end72, label %if.then70, !dbg !3818

if.then70:                                        ; preds = %for.end, %lor.lhs.false66
  %8 = load %struct.rtx_def*, %struct.rtx_def** @callmem, align 8, !dbg !3819
  tail call fastcc void @cselib_invalidate_mem(%struct.rtx_def* %8) #7, !dbg !3820
  br label %if.end72, !dbg !3820

if.end72:                                         ; preds = %lor.lhs.false61, %lor.lhs.false66, %if.then70, %if.end36
  tail call fastcc void @cselib_record_sets(%struct.rtx_def* %insn) #7, !dbg !3821
  %bf.load73 = load i32, i32* %0, align 8, !dbg !3822
  %bf.clear74 = and i32 %bf.load73, 65535, !dbg !3822
  %cmp75 = icmp eq i32 %bf.clear74, 10, !dbg !3822
  br i1 %cmp75, label %if.then77, label %if.end109, !dbg !3824

if.then77:                                        ; preds = %if.end72
  %u78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3825
  %arrayidx80 = getelementptr inbounds %union.u, %union.u* %u78, i64 1, i32 0, i32 1, !dbg !3825
  %rt_rtx81 = bitcast %struct.object_block** %arrayidx80 to %struct.rtx_def**, !dbg !3825
  br label %for.cond82, !dbg !3827

for.cond82:                                       ; preds = %for.inc103, %if.then77
  %x.0.in = phi %struct.rtx_def** [ %rt_rtx81, %if.then77 ], [ %rt_rtx107, %for.inc103 ]
  %x.0 = load %struct.rtx_def*, %struct.rtx_def** %x.0.in, align 8, !dbg !3828
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.0, metadata !3768, metadata !DIExpression()), !dbg !3769
  %tobool83 = icmp eq %struct.rtx_def* %x.0, null, !dbg !3829
  br i1 %tobool83, label %if.end109.loopexit, label %for.body84, !dbg !3829

for.body84:                                       ; preds = %for.cond82
  %arrayidx87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3830
  %9 = bitcast %union.rtunion_def* %arrayidx87 to i32**, !dbg !3830
  %10 = load i32*, i32** %9, align 8, !dbg !3830
  %bf.load89 = load i32, i32* %10, align 8, !dbg !3830
  %bf.clear90 = and i32 %bf.load89, 65535, !dbg !3830
  %cmp91 = icmp eq i32 %bf.clear90, 25, !dbg !3833
  br i1 %cmp91, label %if.then93, label %for.inc103, !dbg !3834

if.then93:                                        ; preds = %for.body84
  %arrayidx100 = getelementptr inbounds i32, i32* %10, i64 2, !dbg !3835
  %rt_rtx101 = bitcast i32* %arrayidx100 to %struct.rtx_def**, !dbg !3835
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx101, align 8, !dbg !3835
  tail call void @cselib_invalidate_rtx(%struct.rtx_def* %11) #7, !dbg !3836
  br label %for.inc103, !dbg !3836

for.inc103:                                       ; preds = %for.body84, %if.then93
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3837
  %rt_rtx107 = bitcast %union.rtunion_def* %12 to %struct.rtx_def**, !dbg !3837
  br label %for.cond82, !dbg !3838, !llvm.loop !3839

if.end109.loopexit:                               ; preds = %for.cond82
  br label %if.end109, !dbg !3841

if.end109:                                        ; preds = %if.end109.loopexit, %if.end72
  store %struct.rtx_def* null, %struct.rtx_def** @cselib_current_insn, align 8, !dbg !3841
  %13 = load i32, i32* @n_useless_values, align 4, !dbg !3842
  %cmp110 = icmp sgt i32 %13, 32, !dbg !3844
  br i1 %cmp110, label %land.lhs.true112, label %cleanup.cont, !dbg !3845

land.lhs.true112:                                 ; preds = %if.end109
  %conv113 = zext i32 %13 to i64, !dbg !3846
  %14 = load %struct.htab*, %struct.htab** @cselib_hash_table, align 8, !dbg !3847
  %n_elements = getelementptr inbounds %struct.htab, %struct.htab* %14, i64 0, i32 5, !dbg !3848
  %15 = load i64, i64* %n_elements, align 8, !dbg !3848
  %n_deleted = getelementptr inbounds %struct.htab, %struct.htab* %14, i64 0, i32 6, !dbg !3849
  %16 = load i64, i64* %n_deleted, align 8, !dbg !3849
  %sub = sub i64 %15, %16, !dbg !3850
  %17 = load i32, i32* @n_debug_values, align 4, !dbg !3851
  %conv114 = sext i32 %17 to i64, !dbg !3851
  %sub115 = sub i64 %sub, %conv114, !dbg !3852
  %div = lshr i64 %sub115, 2, !dbg !3853
  %cmp116 = icmp ult i64 %div, %conv113, !dbg !3854
  br i1 %cmp116, label %if.then118, label %cleanup.cont, !dbg !3855

if.then118:                                       ; preds = %land.lhs.true112
  tail call fastcc void @remove_useless_values() #7, !dbg !3856
  br label %cleanup.cont, !dbg !3856

cleanup.cont:                                     ; preds = %if.then, %if.then35, %if.then118, %land.lhs.true112, %if.end109
  ret void, !dbg !3857
}

declare dso_local %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cselib_record_sets(%struct.rtx_def* %insn) unnamed_addr #5 !dbg !3858 {
entry:
  %sets = alloca [106 x %struct.cselib_set], align 16
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3860, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i32 0, metadata !3861, metadata !DIExpression()), !dbg !3902
  %0 = bitcast [106 x %struct.cselib_set]* %sets to i8*, !dbg !3903
  call void @llvm.lifetime.start.p0i8(i64 3392, i8* nonnull %0) #8, !dbg !3903
  call void @llvm.dbg.declare(metadata [106 x %struct.cselib_set]* %sets, metadata !3863, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata %struct.rtx_def* undef, metadata !3867, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3868, metadata !DIExpression()), !dbg !3902
  %u1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3905
  %1 = getelementptr inbounds %union.u, %union.u* %u1, i64 1, i32 0, i32 0, i64 0, !dbg !3905
  %rt_rtx4 = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !3905
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx4, align 8, !dbg !3905
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !3867, metadata !DIExpression()), !dbg !3902
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 0, !dbg !3906
  %bf.load = load i32, i32* %3, align 8, !dbg !3906
  %bf.clear = and i32 %bf.load, 65535, !dbg !3906
  %cmp = icmp eq i32 %bf.clear, 14, !dbg !3908
  br i1 %cmp, label %if.then, label %if.end, !dbg !3909

if.then:                                          ; preds = %entry
  %arrayidx7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3910
  %rt_rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**, !dbg !3910
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx8, align 8, !dbg !3910
  call void @llvm.dbg.value(metadata %struct.rtx_def* %4, metadata !3868, metadata !DIExpression()), !dbg !3902
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3912
  %rt_rtx12 = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !3912
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx12, align 8, !dbg !3912
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !3867, metadata !DIExpression()), !dbg !3902
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 0, !dbg !3913
  %bf.load13.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !3914
  br label %if.end, !dbg !3915

if.end:                                           ; preds = %if.then, %entry
  %bf.load27 = phi i32 [ %bf.load13.pre, %if.then ], [ %bf.load, %entry ], !dbg !3914
  %cond.0 = phi %struct.rtx_def* [ %4, %if.then ], [ null, %entry ], !dbg !3902
  %body.0 = phi %struct.rtx_def* [ %6, %if.then ], [ %2, %entry ], !dbg !3902
  call void @llvm.dbg.value(metadata %struct.rtx_def* %body.0, metadata !3867, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond.0, metadata !3868, metadata !DIExpression()), !dbg !3902
  %bf.clear14 = and i32 %bf.load27, 65535, !dbg !3914
  %cmp15 = icmp eq i32 %bf.clear14, 23, !dbg !3916
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !3917

if.then16:                                        ; preds = %if.end
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %body.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3918
  %8 = bitcast %union.rtunion_def* %7 to i64*, !dbg !3918
  %9 = load i64, i64* %8, align 8, !dbg !3918
  %10 = bitcast [106 x %struct.cselib_set]* %sets to i64*, !dbg !3920
  store i64 %9, i64* %10, align 16, !dbg !3920
  %arrayidx24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %body.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3921
  %11 = bitcast %union.rtunion_def* %arrayidx24 to i64*, !dbg !3921
  %12 = load i64, i64* %11, align 8, !dbg !3921
  %dest = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 0, i32 1, !dbg !3922
  %13 = bitcast %struct.rtx_def** %dest to i64*, !dbg !3923
  store i64 %12, i64* %13, align 8, !dbg !3923
  call void @llvm.dbg.value(metadata i32 1, metadata !3861, metadata !DIExpression()), !dbg !3902
  br label %if.end60, !dbg !3924

if.else:                                          ; preds = %if.end
  %cmp29 = icmp eq i32 %bf.clear14, 15, !dbg !3925
  br i1 %cmp29, label %if.then30, label %if.end60, !dbg !3926

if.then30:                                        ; preds = %if.else
  %arrayidx33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %body.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3927
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtvec_def**, !dbg !3927
  %14 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3927
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %14, i64 0, i32 0, !dbg !3927
  %15 = load i32, i32* %num_elem, align 8, !dbg !3927
  call void @llvm.dbg.value(metadata i32 %15, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3902
  %16 = sext i32 %15 to i64, !dbg !3928
  br label %for.cond, !dbg !3928

for.cond:                                         ; preds = %for.inc, %if.then30
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc ], [ %16, %if.then30 ]
  %n_sets.0 = phi i32 [ %n_sets.1, %for.inc ], [ 0, %if.then30 ], !dbg !3902
  %indvars.iv.next11 = add nsw i64 %indvars.iv10, -1, !dbg !3929
  call void @llvm.dbg.value(metadata i32 %n_sets.0, metadata !3861, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i32 undef, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3902
  %cmp34 = icmp sgt i64 %indvars.iv10, 0, !dbg !3930
  br i1 %cmp34, label %for.body, label %if.end60.loopexit, !dbg !3931

for.body:                                         ; preds = %for.cond
  %17 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3932
  %arrayidx39 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %17, i64 0, i32 1, i64 %indvars.iv.next11, !dbg !3932
  %18 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx39, align 8, !dbg !3932
  call void @llvm.dbg.value(metadata %struct.rtx_def* %18, metadata !3869, metadata !DIExpression()), !dbg !3933
  %19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i64 0, i32 0, !dbg !3934
  %bf.load40 = load i32, i32* %19, align 8, !dbg !3934
  %bf.clear41 = and i32 %bf.load40, 65535, !dbg !3934
  %cmp42 = icmp eq i32 %bf.clear41, 23, !dbg !3936
  br i1 %cmp42, label %if.then43, label %for.inc, !dbg !3937

if.then43:                                        ; preds = %for.body
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3938
  %21 = bitcast %union.rtunion_def* %20 to i64*, !dbg !3938
  %22 = load i64, i64* %21, align 8, !dbg !3938
  %idxprom48 = sext i32 %n_sets.0 to i64, !dbg !3940
  %arrayidx49 = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 %idxprom48, !dbg !3940
  %23 = bitcast %struct.cselib_set* %arrayidx49 to i64*, !dbg !3941
  store i64 %22, i64* %23, align 16, !dbg !3941
  %arrayidx53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3942
  %24 = bitcast %union.rtunion_def* %arrayidx53 to i64*, !dbg !3942
  %25 = load i64, i64* %24, align 8, !dbg !3942
  %dest57 = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 %idxprom48, i32 1, !dbg !3943
  %26 = bitcast %struct.rtx_def** %dest57 to i64*, !dbg !3944
  store i64 %25, i64* %26, align 8, !dbg !3944
  %inc = add nsw i32 %n_sets.0, 1, !dbg !3945
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3861, metadata !DIExpression()), !dbg !3902
  br label %for.inc, !dbg !3946

for.inc:                                          ; preds = %for.body, %if.then43
  %n_sets.1 = phi i32 [ %inc, %if.then43 ], [ %n_sets.0, %for.body ], !dbg !3902
  call void @llvm.dbg.value(metadata i32 %n_sets.1, metadata !3861, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i32 undef, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3902
  br label %for.cond, !dbg !3947, !llvm.loop !3948

if.end60.loopexit:                                ; preds = %for.cond
  %n_sets.0.lcssa = phi i32 [ %n_sets.0, %for.cond ], !dbg !3902
  call void @llvm.dbg.value(metadata i32 %n_sets.0.lcssa, metadata !3861, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i32 %n_sets.0.lcssa, metadata !3861, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i32 %n_sets.0.lcssa, metadata !3861, metadata !DIExpression()), !dbg !3902
  br label %if.end60, !dbg !3950

if.end60:                                         ; preds = %if.end60.loopexit, %if.else, %if.then16
  %n_sets.3 = phi i32 [ 1, %if.then16 ], [ 0, %if.else ], [ %n_sets.0.lcssa, %if.end60.loopexit ], !dbg !3902
  call void @llvm.dbg.value(metadata i32 %n_sets.3, metadata !3861, metadata !DIExpression()), !dbg !3902
  %cmp61 = icmp eq i32 %n_sets.3, 1, !dbg !3950
  br i1 %cmp61, label %land.lhs.true, label %if.end94, !dbg !3951

land.lhs.true:                                    ; preds = %if.end60
  %27 = bitcast [106 x %struct.cselib_set]* %sets to i32**, !dbg !3952
  %28 = load i32*, i32** %27, align 16, !dbg !3952
  %bf.load64 = load i32, i32* %28, align 8, !dbg !3952
  %bf.clear65 = and i32 %bf.load64, 65535, !dbg !3952
  %cmp66 = icmp ne i32 %bf.clear65, 43, !dbg !3952
  %29 = load i8, i8* @cselib_record_memory, align 1, !dbg !3953
  %tobool = icmp ne i8 %29, 0, !dbg !3953
  %or.cond = or i1 %cmp66, %tobool, !dbg !3954
  br i1 %or.cond, label %if.end94, label %land.lhs.true68, !dbg !3954

land.lhs.true68:                                  ; preds = %land.lhs.true
  %bf.clear72 = and i32 %bf.load64, 67108864, !dbg !3955
  %tobool73 = icmp eq i32 %bf.clear72, 0, !dbg !3955
  br i1 %tobool73, label %if.end94, label %if.then74, !dbg !3956

if.then74:                                        ; preds = %land.lhs.true68
  %call = tail call %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def* %insn) #6, !dbg !3957
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3876, metadata !DIExpression()), !dbg !3958
  %tobool75 = icmp eq %struct.rtx_def* %call, null, !dbg !3959
  br i1 %tobool75, label %if.end94, label %land.lhs.true76, !dbg !3961

land.lhs.true76:                                  ; preds = %if.then74
  %arrayidx79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3962
  %30 = bitcast %union.rtunion_def* %arrayidx79 to i32**, !dbg !3962
  %31 = load i32*, i32** %30, align 8, !dbg !3962
  %bf.load81 = load i32, i32* %31, align 8, !dbg !3962
  %bf.clear82 = and i32 %bf.load81, 65535, !dbg !3962
  %idxprom83 = zext i32 %bf.clear82 to i64, !dbg !3962
  %arrayidx84 = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom83, !dbg !3962
  %32 = load i32, i32* %arrayidx84, align 4, !dbg !3962
  %cmp85 = icmp eq i32 %32, 9, !dbg !3962
  br i1 %cmp85, label %if.then86, label %if.end94, !dbg !3963

if.then86:                                        ; preds = %land.lhs.true76
  %33 = ptrtoint i32* %31 to i64, !dbg !3963
  %34 = bitcast [106 x %struct.cselib_set]* %sets to i64*, !dbg !3964
  store i64 %33, i64* %34, align 16, !dbg !3964
  br label %if.end94, !dbg !3965

if.end94:                                         ; preds = %if.then74, %land.lhs.true68, %land.lhs.true76, %if.then86, %land.lhs.true, %if.end60
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()), !dbg !3902
  %tobool130 = icmp eq %struct.rtx_def* %cond.0, null, !dbg !3966
  br i1 %tobool130, label %if.end94.split.us, label %if.end94.if.end94.split_crit_edge, !dbg !3968

if.end94.if.end94.split_crit_edge:                ; preds = %if.end94
  %35 = sext i32 %n_sets.3 to i64, !dbg !3968
  br label %for.cond95, !dbg !3968

if.end94.split.us:                                ; preds = %if.end94
  %36 = sext i32 %n_sets.3 to i64, !dbg !3968
  br label %for.cond95.us, !dbg !3968

for.cond95.us:                                    ; preds = %for.inc174.us, %if.end94.split.us
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.inc174.us ], [ 0, %if.end94.split.us ], !dbg !3969
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !3862, metadata !DIExpression()), !dbg !3902
  %cmp96.us = icmp slt i64 %indvars.iv6, %36, !dbg !3970
  br i1 %cmp96.us, label %for.body97.us, label %for.end176.us-lcssa.us, !dbg !3971

for.body97.us:                                    ; preds = %for.cond95.us
  %dest101.us = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 %indvars.iv6, i32 1, !dbg !3972
  %37 = load %struct.rtx_def*, %struct.rtx_def** %dest101.us, align 8, !dbg !3972
  call void @llvm.dbg.value(metadata %struct.rtx_def* %37, metadata !3879, metadata !DIExpression()), !dbg !3973
  %38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i64 0, i32 0, !dbg !3974
  %bf.load105.us = load i32, i32* %38, align 8, !dbg !3974
  %bf.clear106.us = and i32 %bf.load105.us, 65535, !dbg !3974
  %cmp107.us = icmp eq i32 %bf.clear106.us, 40, !dbg !3976
  br i1 %cmp107.us, label %if.then108.us, label %if.end116.us, !dbg !3977

if.then108.us:                                    ; preds = %for.body97.us
  %arrayidx111.us = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3978
  %rt_rtx112.us = bitcast %union.rtunion_def* %arrayidx111.us to %struct.rtx_def**, !dbg !3978
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx112.us, align 8, !dbg !3978
  call void @llvm.dbg.value(metadata %struct.rtx_def* %39, metadata !3879, metadata !DIExpression()), !dbg !3973
  store %struct.rtx_def* %39, %struct.rtx_def** %dest101.us, align 8, !dbg !3979
  br label %if.end116.us, !dbg !3980

if.end116.us:                                     ; preds = %if.then108.us, %for.body97.us
  %dest98.0.us = phi %struct.rtx_def* [ %39, %if.then108.us ], [ %37, %for.body97.us ], !dbg !3973
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest98.0.us, metadata !3879, metadata !DIExpression()), !dbg !3973
  %40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest98.0.us, i64 0, i32 0, !dbg !3981
  %bf.load117.us = load i32, i32* %40, align 8, !dbg !3981
  %bf.clear118.us = and i32 %bf.load117.us, 65535, !dbg !3981
  %cmp119.us = icmp eq i32 %bf.clear118.us, 37, !dbg !3981
  br i1 %cmp119.us, label %if.then125.us, label %lor.lhs.false.us, !dbg !3982

lor.lhs.false.us:                                 ; preds = %if.end116.us
  %cmp122.us = icmp eq i32 %bf.clear118.us, 43, !dbg !3983
  br i1 %cmp122.us, label %land.lhs.true123.us, label %for.inc174.us, !dbg !3984

land.lhs.true123.us:                              ; preds = %lor.lhs.false.us
  %41 = load i8, i8* @cselib_record_memory, align 1, !dbg !3985
  %tobool124.us = icmp eq i8 %41, 0, !dbg !3985
  br i1 %tobool124.us, label %for.inc174.us, label %if.then125.us, !dbg !3986

if.then125.us:                                    ; preds = %land.lhs.true123.us, %if.end116.us
  call void @llvm.dbg.value(metadata %struct.rtx_def* undef, metadata !3883, metadata !DIExpression()), !dbg !3987
  %src129.us = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 %indvars.iv6, i32 0, !dbg !3988
  %42 = load %struct.rtx_def*, %struct.rtx_def** %src129.us, align 16, !dbg !3988
  call void @llvm.dbg.value(metadata %struct.rtx_def* %42, metadata !3883, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata %struct.rtx_def* %42, metadata !3883, metadata !DIExpression()), !dbg !3987
  %bf.lshr138.us = lshr i32 %bf.load117.us, 16, !dbg !3989
  %bf.clear139.us = and i32 %bf.lshr138.us, 255, !dbg !3989
  %call140.us = tail call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %42, i32 %bf.clear139.us, i32 1) #7, !dbg !3990
  %src_elt.us = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 %indvars.iv6, i32 2, !dbg !3991
  store %struct.cselib_val_struct* %call140.us, %struct.cselib_val_struct** %src_elt.us, align 16, !dbg !3992
  %bf.load143.us = load i32, i32* %40, align 8, !dbg !3993
  %bf.clear144.us = and i32 %bf.load143.us, 65535, !dbg !3993
  %cmp145.us = icmp eq i32 %bf.clear144.us, 43, !dbg !3993
  br i1 %cmp145.us, label %if.then147.us, label %if.else168.us, !dbg !3994

if.else168.us:                                    ; preds = %if.then125.us
  %dest_addr_elt171.us = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 %indvars.iv6, i32 3, !dbg !3995
  store %struct.cselib_val_struct* null, %struct.cselib_val_struct** %dest_addr_elt171.us, align 8, !dbg !3996
  br label %for.inc174.us

if.then147.us:                                    ; preds = %if.then125.us
  %43 = load i32 (i8)*, i32 (i8)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 57, i32 1), align 8, !dbg !3997
  %44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest98.0.us, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3998
  %rt_mem.us = bitcast %union.rtunion_def* %44 to %struct.mem_attrs**, !dbg !3998
  %45 = load %struct.mem_attrs*, %struct.mem_attrs** %rt_mem.us, align 8, !dbg !3998
  %cmp151.us = icmp eq %struct.mem_attrs* %45, null, !dbg !3998
  br i1 %cmp151.us, label %cond.end.us, label %cond.false.us, !dbg !3998

cond.false.us:                                    ; preds = %if.then147.us
  %addrspace.us = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %45, i64 0, i32 5, !dbg !3998
  %46 = load i8, i8* %addrspace.us, align 8, !dbg !3998
  br label %cond.end.us, !dbg !3998

cond.end.us:                                      ; preds = %cond.false.us, %if.then147.us
  %cond158.us = phi i8 [ %46, %cond.false.us ], [ 0, %if.then147.us ], !dbg !3998
  %call160.us = tail call i32 %43(i8 zeroext %cond158.us) #6, !dbg !3999
  call void @llvm.dbg.value(metadata i32 %call160.us, metadata !3886, metadata !DIExpression()), !dbg !4000
  %arrayidx163.us = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest98.0.us, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4001
  %rt_rtx164.us = bitcast %union.rtunion_def* %arrayidx163.us to %struct.rtx_def**, !dbg !4001
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx164.us, align 8, !dbg !4001
  %call165.us = tail call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %47, i32 %call160.us, i32 1) #7, !dbg !4002
  %dest_addr_elt.us = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 %indvars.iv6, i32 3, !dbg !4003
  store %struct.cselib_val_struct* %call165.us, %struct.cselib_val_struct** %dest_addr_elt.us, align 8, !dbg !4004
  br label %for.inc174.us, !dbg !4005

for.inc174.us:                                    ; preds = %cond.end.us, %if.else168.us, %land.lhs.true123.us, %lor.lhs.false.us
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !4006
  call void @llvm.dbg.value(metadata i32 undef, metadata !3862, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3902
  br label %for.cond95.us, !dbg !4007, !llvm.loop !4008

for.end176.us-lcssa.us:                           ; preds = %for.cond95.us
  br label %for.end176, !dbg !4010

for.cond95:                                       ; preds = %for.inc174, %if.end94.if.end94.split_crit_edge
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.inc174 ], [ 0, %if.end94.if.end94.split_crit_edge ], !dbg !3969
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !3862, metadata !DIExpression()), !dbg !3902
  %cmp96 = icmp slt i64 %indvars.iv8, %35, !dbg !3970
  br i1 %cmp96, label %for.body97, label %for.end176.us-lcssa, !dbg !3971

for.body97:                                       ; preds = %for.cond95
  %dest101 = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 %indvars.iv8, i32 1, !dbg !3972
  %48 = load %struct.rtx_def*, %struct.rtx_def** %dest101, align 8, !dbg !3972
  call void @llvm.dbg.value(metadata %struct.rtx_def* %48, metadata !3879, metadata !DIExpression()), !dbg !3973
  %49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i64 0, i32 0, !dbg !3974
  %bf.load105 = load i32, i32* %49, align 8, !dbg !3974
  %bf.clear106 = and i32 %bf.load105, 65535, !dbg !3974
  %cmp107 = icmp eq i32 %bf.clear106, 40, !dbg !3976
  br i1 %cmp107, label %if.then108, label %if.end116, !dbg !3977

if.then108:                                       ; preds = %for.body97
  %arrayidx111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3978
  %rt_rtx112 = bitcast %union.rtunion_def* %arrayidx111 to %struct.rtx_def**, !dbg !3978
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx112, align 8, !dbg !3978
  call void @llvm.dbg.value(metadata %struct.rtx_def* %50, metadata !3879, metadata !DIExpression()), !dbg !3973
  store %struct.rtx_def* %50, %struct.rtx_def** %dest101, align 8, !dbg !3979
  br label %if.end116, !dbg !3980

if.end116:                                        ; preds = %if.then108, %for.body97
  %dest98.0 = phi %struct.rtx_def* [ %50, %if.then108 ], [ %48, %for.body97 ], !dbg !3973
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest98.0, metadata !3879, metadata !DIExpression()), !dbg !3973
  %51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest98.0, i64 0, i32 0, !dbg !3981
  %bf.load117 = load i32, i32* %51, align 8, !dbg !3981
  %bf.clear118 = and i32 %bf.load117, 65535, !dbg !3981
  %cmp119 = icmp eq i32 %bf.clear118, 37, !dbg !3981
  br i1 %cmp119, label %if.then125, label %lor.lhs.false, !dbg !3982

lor.lhs.false:                                    ; preds = %if.end116
  %cmp122 = icmp eq i32 %bf.clear118, 43, !dbg !3983
  br i1 %cmp122, label %land.lhs.true123, label %for.inc174, !dbg !3984

land.lhs.true123:                                 ; preds = %lor.lhs.false
  %52 = load i8, i8* @cselib_record_memory, align 1, !dbg !3985
  %tobool124 = icmp eq i8 %52, 0, !dbg !3985
  br i1 %tobool124, label %for.inc174, label %if.then125, !dbg !3986

if.then125:                                       ; preds = %land.lhs.true123, %if.end116
  call void @llvm.dbg.value(metadata %struct.rtx_def* undef, metadata !3883, metadata !DIExpression()), !dbg !3987
  %src129 = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 %indvars.iv8, i32 0, !dbg !3988
  %53 = load %struct.rtx_def*, %struct.rtx_def** %src129, align 16, !dbg !3988
  call void @llvm.dbg.value(metadata %struct.rtx_def* %53, metadata !3883, metadata !DIExpression()), !dbg !3987
  %bf.lshr133 = lshr i32 %bf.load117, 16, !dbg !4012
  %bf.clear134 = and i32 %bf.lshr133, 255, !dbg !4012
  %call135 = tail call %struct.rtx_def* @gen_rtx_fmt_eee_stat(i32 47, i32 %bf.clear134, %struct.rtx_def* nonnull %cond.0, %struct.rtx_def* %53, %struct.rtx_def* %dest98.0) #6, !dbg !4012
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call135, metadata !3883, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call135, metadata !3883, metadata !DIExpression()), !dbg !3987
  %bf.load137 = load i32, i32* %51, align 8, !dbg !3989
  %bf.lshr138 = lshr i32 %bf.load137, 16, !dbg !3989
  %bf.clear139 = and i32 %bf.lshr138, 255, !dbg !3989
  %call140 = tail call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %call135, i32 %bf.clear139, i32 1) #7, !dbg !3990
  %src_elt = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 %indvars.iv8, i32 2, !dbg !3991
  store %struct.cselib_val_struct* %call140, %struct.cselib_val_struct** %src_elt, align 16, !dbg !3992
  %bf.load143 = load i32, i32* %51, align 8, !dbg !3993
  %bf.clear144 = and i32 %bf.load143, 65535, !dbg !3993
  %cmp145 = icmp eq i32 %bf.clear144, 43, !dbg !3993
  br i1 %cmp145, label %if.then147, label %if.else168, !dbg !3994

if.then147:                                       ; preds = %if.then125
  %54 = load i32 (i8)*, i32 (i8)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 57, i32 1), align 8, !dbg !3997
  %55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest98.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3998
  %rt_mem = bitcast %union.rtunion_def* %55 to %struct.mem_attrs**, !dbg !3998
  %56 = load %struct.mem_attrs*, %struct.mem_attrs** %rt_mem, align 8, !dbg !3998
  %cmp151 = icmp eq %struct.mem_attrs* %56, null, !dbg !3998
  br i1 %cmp151, label %cond.end, label %cond.false, !dbg !3998

cond.false:                                       ; preds = %if.then147
  %addrspace = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %56, i64 0, i32 5, !dbg !3998
  %57 = load i8, i8* %addrspace, align 8, !dbg !3998
  br label %cond.end, !dbg !3998

cond.end:                                         ; preds = %if.then147, %cond.false
  %cond158 = phi i8 [ %57, %cond.false ], [ 0, %if.then147 ], !dbg !3998
  %call160 = tail call i32 %54(i8 zeroext %cond158) #6, !dbg !3999
  call void @llvm.dbg.value(metadata i32 %call160, metadata !3886, metadata !DIExpression()), !dbg !4000
  %arrayidx163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest98.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4001
  %rt_rtx164 = bitcast %union.rtunion_def* %arrayidx163 to %struct.rtx_def**, !dbg !4001
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx164, align 8, !dbg !4001
  %call165 = tail call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %58, i32 %call160, i32 1) #7, !dbg !4002
  %dest_addr_elt = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 %indvars.iv8, i32 3, !dbg !4003
  store %struct.cselib_val_struct* %call165, %struct.cselib_val_struct** %dest_addr_elt, align 8, !dbg !4004
  br label %for.inc174, !dbg !4005

if.else168:                                       ; preds = %if.then125
  %dest_addr_elt171 = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 %indvars.iv8, i32 3, !dbg !3995
  store %struct.cselib_val_struct* null, %struct.cselib_val_struct** %dest_addr_elt171, align 8, !dbg !3996
  br label %for.inc174

for.inc174:                                       ; preds = %land.lhs.true123, %lor.lhs.false, %if.else168, %cond.end
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !4006
  call void @llvm.dbg.value(metadata i32 undef, metadata !3862, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3902
  br label %for.cond95, !dbg !4007, !llvm.loop !4008

for.end176.us-lcssa:                              ; preds = %for.cond95
  br label %for.end176, !dbg !4010

for.end176:                                       ; preds = %for.end176.us-lcssa.us, %for.end176.us-lcssa
  %59 = load void (%struct.rtx_def*, %struct.cselib_set*, i32)*, void (%struct.rtx_def*, %struct.cselib_set*, i32)** @cselib_record_sets_hook, align 8, !dbg !4010
  %tobool177 = icmp eq void (%struct.rtx_def*, %struct.cselib_set*, i32)* %59, null, !dbg !4010
  br i1 %tobool177, label %if.end179, label %if.then178, !dbg !4013

if.then178:                                       ; preds = %for.end176
  %arraydecay = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 0, !dbg !4014
  call void %59(%struct.rtx_def* %insn, %struct.cselib_set* nonnull %arraydecay, i32 %n_sets.3) #6, !dbg !4015
  br label %if.end179, !dbg !4015

if.end179:                                        ; preds = %for.end176, %if.then178
  call void @note_stores(%struct.rtx_def* %body.0, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @cselib_invalidate_rtx_note_stores, i8* null) #6, !dbg !4016
  %cmp180 = icmp sgt i32 %n_sets.3, 1, !dbg !4017
  br i1 %cmp180, label %land.lhs.true182, label %if.end229, !dbg !4018

land.lhs.true182:                                 ; preds = %if.end179
  %call183 = call i32 @asm_noperands(%struct.rtx_def* %body.0) #6, !dbg !4019
  %cmp184 = icmp sgt i32 %call183, -1, !dbg !4020
  br i1 %cmp184, label %for.cond187.preheader, label %if.end229, !dbg !4021

for.cond187.preheader:                            ; preds = %land.lhs.true182
  %wide.trip.count = zext i32 %n_sets.3 to i64, !dbg !4022
  br label %for.cond187, !dbg !4023

for.cond187:                                      ; preds = %for.cond187.preheader, %for.inc226
  %indvars.iv2 = phi i64 [ 0, %for.cond187.preheader ], [ %indvars.iv.next3, %for.inc226 ], !dbg !4024
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !3862, metadata !DIExpression()), !dbg !3902
  %exitcond = icmp eq i64 %indvars.iv2, %wide.trip.count, !dbg !4022
  br i1 %exitcond, label %if.end229.loopexit, label %for.body190, !dbg !4023

for.body190:                                      ; preds = %for.cond187
  %dest194 = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 %indvars.iv2, i32 1, !dbg !4025
  %60 = load %struct.rtx_def*, %struct.rtx_def** %dest194, align 8, !dbg !4025
  call void @llvm.dbg.value(metadata %struct.rtx_def* %60, metadata !3889, metadata !DIExpression()), !dbg !4026
  %61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i64 0, i32 0, !dbg !4027
  %bf.load195 = load i32, i32* %61, align 8, !dbg !4027
  %bf.clear196 = and i32 %bf.load195, 65535, !dbg !4027
  %cmp197 = icmp eq i32 %bf.clear196, 37, !dbg !4027
  br i1 %cmp197, label %if.then204, label %lor.lhs.false199, !dbg !4028

lor.lhs.false199:                                 ; preds = %for.body190
  %cmp202 = icmp eq i32 %bf.clear196, 43, !dbg !4029
  br i1 %cmp202, label %if.then204, label %for.inc226, !dbg !4030

if.then204:                                       ; preds = %lor.lhs.false199, %for.body190
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !3895, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4031
  %62 = bitcast %struct.rtx_def** %dest194 to i64*, !dbg !4032
  br label %for.cond205, !dbg !4037

for.cond205:                                      ; preds = %for.inc222, %if.then204
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc222 ], [ %indvars.iv2, %if.then204 ]
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !dbg !4038
  call void @llvm.dbg.value(metadata i32 undef, metadata !3895, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4031
  %63 = trunc i64 %indvars.iv.next5 to i32, !dbg !4039
  %cmp206 = icmp sgt i32 %n_sets.3, %63, !dbg !4039
  br i1 %cmp206, label %for.body208, label %for.inc226.loopexit, !dbg !4040

for.body208:                                      ; preds = %for.cond205
  %dest211 = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 %indvars.iv.next5, i32 1, !dbg !4041
  %64 = load %struct.rtx_def*, %struct.rtx_def** %dest211, align 8, !dbg !4041
  %call212 = call i32 @rtx_equal_p(%struct.rtx_def* %60, %struct.rtx_def* %64) #6, !dbg !4042
  %tobool213 = icmp eq i32 %call212, 0, !dbg !4042
  br i1 %tobool213, label %for.inc222, label %if.then214, !dbg !4043

if.then214:                                       ; preds = %for.body208
  %65 = load i64, i64* bitcast ([11 x %struct.rtx_def*]* @global_rtl to i64*), align 16, !dbg !4044
  store i64 %65, i64* %62, align 8, !dbg !4045
  %66 = bitcast %struct.rtx_def** %dest211 to i64*, !dbg !4046
  store i64 %65, i64* %66, align 8, !dbg !4046
  br label %for.inc222, !dbg !4047

for.inc222:                                       ; preds = %for.body208, %if.then214
  call void @llvm.dbg.value(metadata i32 undef, metadata !3895, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4031
  br label %for.cond205, !dbg !4048, !llvm.loop !4049

for.inc226.loopexit:                              ; preds = %for.cond205
  br label %for.inc226, !dbg !4051

for.inc226:                                       ; preds = %for.inc226.loopexit, %lor.lhs.false199
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !4051
  call void @llvm.dbg.value(metadata i32 undef, metadata !3862, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3902
  br label %for.cond187, !dbg !4052, !llvm.loop !4053

if.end229.loopexit:                               ; preds = %for.cond187
  br label %if.end229, !dbg !4055

if.end229:                                        ; preds = %if.end229.loopexit, %land.lhs.true182, %if.end179
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()), !dbg !3902
  %67 = sext i32 %n_sets.3 to i64, !dbg !4055
  br label %for.cond230, !dbg !4055

for.cond230:                                      ; preds = %for.inc258, %if.end229
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc258 ], [ 0, %if.end229 ], !dbg !4056
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3862, metadata !DIExpression()), !dbg !3902
  %cmp231 = icmp slt i64 %indvars.iv, %67, !dbg !4057
  br i1 %cmp231, label %for.body233, label %for.end260, !dbg !4058

for.body233:                                      ; preds = %for.cond230
  %dest237 = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 %indvars.iv, i32 1, !dbg !4059
  %68 = load %struct.rtx_def*, %struct.rtx_def** %dest237, align 8, !dbg !4059
  call void @llvm.dbg.value(metadata %struct.rtx_def* %68, metadata !3898, metadata !DIExpression()), !dbg !4060
  %69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i64 0, i32 0, !dbg !4061
  %bf.load238 = load i32, i32* %69, align 8, !dbg !4061
  %bf.clear239 = and i32 %bf.load238, 65535, !dbg !4061
  %cmp240 = icmp eq i32 %bf.clear239, 37, !dbg !4061
  br i1 %cmp240, label %if.then250, label %lor.lhs.false242, !dbg !4063

lor.lhs.false242:                                 ; preds = %for.body233
  %cmp245 = icmp eq i32 %bf.clear239, 43, !dbg !4064
  br i1 %cmp245, label %land.lhs.true247, label %for.inc258, !dbg !4065

land.lhs.true247:                                 ; preds = %lor.lhs.false242
  %70 = load i8, i8* @cselib_record_memory, align 1, !dbg !4066
  %tobool249 = icmp eq i8 %70, 0, !dbg !4066
  br i1 %tobool249, label %for.inc258, label %if.then250, !dbg !4067

if.then250:                                       ; preds = %land.lhs.true247, %for.body233
  %src_elt253 = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 %indvars.iv, i32 2, !dbg !4068
  %71 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %src_elt253, align 16, !dbg !4068
  %dest_addr_elt256 = getelementptr inbounds [106 x %struct.cselib_set], [106 x %struct.cselib_set]* %sets, i64 0, i64 %indvars.iv, i32 3, !dbg !4069
  %72 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %dest_addr_elt256, align 8, !dbg !4069
  call fastcc void @cselib_record_set(%struct.rtx_def* %68, %struct.cselib_val_struct* %71, %struct.cselib_val_struct* %72) #7, !dbg !4070
  br label %for.inc258, !dbg !4070

for.inc258:                                       ; preds = %land.lhs.true247, %lor.lhs.false242, %if.then250
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4071
  call void @llvm.dbg.value(metadata i32 undef, metadata !3862, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3902
  br label %for.cond230, !dbg !4072, !llvm.loop !4073

for.end260:                                       ; preds = %for.cond230
  call void @llvm.lifetime.end.p0i8(i64 3392, i8* nonnull %0) #8, !dbg !4075
  ret void, !dbg !4075
}

; Function Attrs: nounwind uwtable
define dso_local void @cselib_init(i32 %record_what) local_unnamed_addr #5 !dbg !4076 {
entry:
  call void @llvm.dbg.value(metadata i32 %record_what, metadata !4080, metadata !DIExpression()), !dbg !4081
  %call = tail call %struct.alloc_pool_def* @create_alloc_pool(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 16, i64 10) #6, !dbg !4082
  store %struct.alloc_pool_def* %call, %struct.alloc_pool_def** @elt_list_pool, align 8, !dbg !4083
  %call1 = tail call %struct.alloc_pool_def* @create_alloc_pool(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 24, i64 10) #6, !dbg !4084
  store %struct.alloc_pool_def* %call1, %struct.alloc_pool_def** @elt_loc_list_pool, align 8, !dbg !4085
  %call2 = tail call %struct.alloc_pool_def* @create_alloc_pool(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64 40, i64 10) #6, !dbg !4086
  store %struct.alloc_pool_def* %call2, %struct.alloc_pool_def** @cselib_val_pool, align 8, !dbg !4087
  %0 = load i8, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @rtx_code_size, i64 0, i64 1), align 1, !dbg !4088
  %conv = zext i8 %0 to i64, !dbg !4088
  %call3 = tail call %struct.alloc_pool_def* @create_alloc_pool(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %conv, i64 100) #6, !dbg !4089
  store %struct.alloc_pool_def* %call3, %struct.alloc_pool_def** @value_pool, align 8, !dbg !4090
  %1 = trunc i32 %record_what to i8, !dbg !4091
  %conv4 = and i8 %1, 1, !dbg !4091
  store i8 %conv4, i8* @cselib_record_memory, align 1, !dbg !4092
  %conv6 = and i8 %1, 2, !dbg !4093
  store i8 %conv6, i8* @cselib_preserve_constants, align 1, !dbg !4094
  %2 = load %struct.rtx_def*, %struct.rtx_def** @callmem, align 8, !dbg !4095
  %tobool = icmp eq %struct.rtx_def* %2, null, !dbg !4095
  br i1 %tobool, label %if.then, label %if.end, !dbg !4097

if.then:                                          ; preds = %entry
  %call7 = tail call %struct.rtx_def* @gen_rtx_fmt_0_stat(i32 38, i32 0) #6, !dbg !4098
  %call8 = tail call %struct.rtx_def* @gen_rtx_MEM(i32 1, %struct.rtx_def* %call7) #6, !dbg !4099
  store %struct.rtx_def* %call8, %struct.rtx_def** @callmem, align 8, !dbg !4100
  br label %if.end, !dbg !4101

if.end:                                           ; preds = %entry, %if.then
  %call9 = tail call i32 @max_reg_num() #6, !dbg !4102
  store i32 %call9, i32* @cselib_nregs, align 4, !dbg !4103
  %3 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !4104
  %tobool10 = icmp eq %struct.elt_list** %3, null, !dbg !4104
  %4 = bitcast %struct.elt_list** %3 to i8*, !dbg !4106
  br i1 %tobool10, label %if.then17, label %lor.lhs.false, !dbg !4106

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* @reg_values_size, align 4, !dbg !4107
  %cmp = icmp ult i32 %5, %call9, !dbg !4108
  br i1 %cmp, label %if.then17, label %lor.lhs.false12, !dbg !4109

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %cmp13 = icmp ugt i32 %5, 10, !dbg !4110
  br i1 %cmp13, label %land.lhs.true, label %if.end24, !dbg !4111

land.lhs.true:                                    ; preds = %lor.lhs.false12
  %mul = shl i32 %call9, 2, !dbg !4112
  %cmp15 = icmp ugt i32 %5, %mul, !dbg !4113
  br i1 %cmp15, label %if.then17, label %if.end24, !dbg !4114

if.then17:                                        ; preds = %if.end, %land.lhs.true, %lor.lhs.false
  br i1 %tobool10, label %if.end20, label %if.then19, !dbg !4115

if.then19:                                        ; preds = %if.then17
  tail call void @free(i8* nonnull %4) #6, !dbg !4117
  %.pre = load i32, i32* @cselib_nregs, align 4, !dbg !4119
  br label %if.end20, !dbg !4117

if.end20:                                         ; preds = %if.then17, %if.then19
  %6 = phi i32 [ %call9, %if.then17 ], [ %.pre, %if.then19 ], !dbg !4119
  %add = add i32 %6, 63, !dbg !4120
  %div = lshr i32 %add, 4, !dbg !4121
  %add21 = add i32 %6, %div, !dbg !4122
  store i32 %add21, i32* @reg_values_size, align 4, !dbg !4123
  %conv22 = zext i32 %add21 to i64, !dbg !4124
  %call23 = tail call i8* @xcalloc(i64 %conv22, i64 8) #6, !dbg !4124
  store i8* %call23, i8** bitcast (%struct.elt_list*** @reg_values to i8**), align 8, !dbg !4125
  %.pre1 = load i32, i32* @cselib_nregs, align 4, !dbg !4126
  br label %if.end24, !dbg !4127

if.end24:                                         ; preds = %if.end20, %land.lhs.true, %lor.lhs.false12
  %7 = phi i32 [ %.pre1, %if.end20 ], [ %call9, %land.lhs.true ], [ %call9, %lor.lhs.false12 ], !dbg !4126
  %conv25 = zext i32 %7 to i64, !dbg !4126
  %mul26 = shl nuw nsw i64 %conv25, 2, !dbg !4126
  %call27 = tail call i8* @xmalloc(i64 %mul26) #6, !dbg !4126
  store i8* %call27, i8** bitcast (i32** @used_regs to i8**), align 8, !dbg !4128
  store i32 0, i32* @n_used_regs, align 4, !dbg !4129
  %call28 = tail call %struct.htab* @htab_create(i64 31, i32 (i8*)* nonnull @get_value_hash, i32 (i8*, i8*)* nonnull @entry_and_rtx_equal_p, void (i8*)* null) #6, !dbg !4130
  store %struct.htab* %call28, %struct.htab** @cselib_hash_table, align 8, !dbg !4131
  store i32 1, i32* @next_uid, align 4, !dbg !4132
  ret void, !dbg !4133
}

declare dso_local %struct.alloc_pool_def* @create_alloc_pool(i8*, i64, i64) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_rtx_MEM(i32, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_rtx_fmt_0_stat(i32, i32) local_unnamed_addr #2

declare dso_local i32 @max_reg_num() local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @get_value_hash(i8* %entry1) #5 !dbg !4134 {
entry:
  call void @llvm.dbg.value(metadata i8* %entry1, metadata !4136, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i8* %entry1, metadata !4137, metadata !DIExpression()), !dbg !4139
  %hash = bitcast i8* %entry1 to i32*, !dbg !4140
  %0 = load i32, i32* %hash, align 8, !dbg !4140
  ret i32 %0, !dbg !4141
}

; Function Attrs: nounwind uwtable
define internal i32 @entry_and_rtx_equal_p(i8* %entry1, i8* %x_arg) #5 !dbg !4142 {
entry:
  call void @llvm.dbg.value(metadata i8* %entry1, metadata !4144, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata i8* %x_arg, metadata !4145, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata i8* %entry1, metadata !4147, metadata !DIExpression()), !dbg !4150
  %0 = bitcast i8* %x_arg to %struct.rtx_def*, !dbg !4151
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !4148, metadata !DIExpression()), !dbg !4150
  %1 = bitcast i8* %x_arg to i32*, !dbg !4152
  %bf.load = load i32, i32* %1, align 8, !dbg !4152
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4152
  %bf.clear = and i32 %bf.lshr, 255, !dbg !4152
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4149, metadata !DIExpression()), !dbg !4150
  %bf.clear3 = and i32 %bf.load, 65535, !dbg !4153
  %cmp = icmp eq i32 %bf.clear3, 30, !dbg !4153
  br i1 %cmp, label %cond.true, label %land.lhs.true, !dbg !4153

land.lhs.true:                                    ; preds = %entry
  %cmp6 = icmp eq i32 %bf.clear3, 31, !dbg !4153
  br i1 %cmp6, label %cond.true, label %land.lhs.true7, !dbg !4153

land.lhs.true7:                                   ; preds = %land.lhs.true
  %cmp8 = icmp eq i32 %bf.clear, 0, !dbg !4153
  br i1 %cmp8, label %lor.lhs.false, label %cond.end, !dbg !4153

lor.lhs.false:                                    ; preds = %land.lhs.true7
  %cmp11 = icmp eq i32 %bf.clear3, 32, !dbg !4153
  br i1 %cmp11, label %cond.true, label %cond.end, !dbg !4153

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 400, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4153
  br label %cond.end, !dbg !4153

cond.end:                                         ; preds = %lor.lhs.false, %land.lhs.true7, %cond.true
  %val_rtx = getelementptr inbounds i8, i8* %entry1, i64 8, !dbg !4154
  %2 = bitcast i8* %val_rtx to i32**, !dbg !4154
  %3 = load i32*, i32** %2, align 8, !dbg !4154
  %bf.load12 = load i32, i32* %3, align 8, !dbg !4154
  %bf.lshr13 = lshr i32 %bf.load12, 16, !dbg !4154
  %bf.clear14 = and i32 %bf.lshr13, 255, !dbg !4154
  %cmp15 = icmp eq i32 %bf.clear, %bf.clear14, !dbg !4156
  br i1 %cmp15, label %if.end, label %cleanup, !dbg !4157

if.end:                                           ; preds = %cond.end
  %bf.load16 = load i32, i32* %1, align 8, !dbg !4158
  %bf.clear17 = and i32 %bf.load16, 65535, !dbg !4158
  %cmp18 = icmp eq i32 %bf.clear17, 35, !dbg !4160
  br i1 %cmp18, label %land.lhs.true19, label %if.end44, !dbg !4161

land.lhs.true19:                                  ; preds = %if.end
  %u = getelementptr inbounds i8, i8* %x_arg, i64 8, !dbg !4162
  %4 = bitcast i8* %u to i32**, !dbg !4162
  %5 = load i32*, i32** %4, align 8, !dbg !4162
  %bf.load20 = load i32, i32* %5, align 8, !dbg !4162
  %bf.clear21 = and i32 %bf.load20, 65535, !dbg !4162
  %cmp22 = icmp eq i32 %bf.clear21, 30, !dbg !4162
  %6 = bitcast i32* %5 to %struct.rtx_def*, !dbg !4163
  br i1 %cmp22, label %if.then39, label %lor.lhs.false23, !dbg !4163

lor.lhs.false23:                                  ; preds = %land.lhs.true19
  %cmp30 = icmp eq i32 %bf.clear21, 31, !dbg !4164
  br i1 %cmp30, label %if.then39, label %lor.lhs.false31, !dbg !4165

lor.lhs.false31:                                  ; preds = %lor.lhs.false23
  %cmp38 = icmp eq i32 %bf.clear21, 32, !dbg !4166
  br i1 %cmp38, label %if.then39, label %if.end44, !dbg !4167

if.then39:                                        ; preds = %lor.lhs.false31, %lor.lhs.false23, %land.lhs.true19
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !4148, metadata !DIExpression()), !dbg !4150
  br label %if.end44, !dbg !4168

if.end44:                                         ; preds = %if.then39, %lor.lhs.false31, %if.end
  %x.0 = phi %struct.rtx_def* [ %6, %if.then39 ], [ %0, %lor.lhs.false31 ], [ %0, %if.end ], !dbg !4150
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.0, metadata !4148, metadata !DIExpression()), !dbg !4150
  %locs = getelementptr inbounds i8, i8* %entry1, i64 16, !dbg !4169
  %7 = bitcast i8* %locs to %struct.elt_loc_list**, !dbg !4169
  br label %for.cond, !dbg !4171

for.cond:                                         ; preds = %for.inc, %if.end44
  %l.0.in = phi %struct.elt_loc_list** [ %7, %if.end44 ], [ %next, %for.inc ]
  %l.0 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l.0.in, align 8, !dbg !4172
  call void @llvm.dbg.value(metadata %struct.elt_loc_list* %l.0, metadata !4146, metadata !DIExpression()), !dbg !4150
  %tobool = icmp eq %struct.elt_loc_list* %l.0, null, !dbg !4173
  br i1 %tobool, label %cleanup.loopexit, label %for.body, !dbg !4173

for.body:                                         ; preds = %for.cond
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %l.0, i64 0, i32 1, !dbg !4174
  %8 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !4174
  %call = tail call i32 @rtx_equal_for_cselib_p(%struct.rtx_def* %8, %struct.rtx_def* %x.0) #7, !dbg !4177
  %tobool45 = icmp eq i32 %call, 0, !dbg !4177
  br i1 %tobool45, label %for.inc, label %if.then46, !dbg !4178

if.then46:                                        ; preds = %for.body
  %l.0.lcssa3 = phi %struct.elt_loc_list* [ %l.0, %for.body ], !dbg !4172
  tail call fastcc void @promote_debug_loc(%struct.elt_loc_list* nonnull %l.0.lcssa3) #7, !dbg !4179
  br label %cleanup, !dbg !4181

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %l.0, i64 0, i32 0, !dbg !4182
  br label %for.cond, !dbg !4183, !llvm.loop !4184

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !4186

cleanup:                                          ; preds = %cleanup.loopexit, %cond.end, %if.then46
  %retval.0 = phi i32 [ 1, %if.then46 ], [ 0, %cond.end ], [ 0, %cleanup.loopexit ], !dbg !4150
  ret i32 %retval.0, !dbg !4186
}

; Function Attrs: nounwind uwtable
define dso_local void @cselib_finish() local_unnamed_addr #5 !dbg !4187 {
entry:
  store void (%struct.cselib_val_struct*)* null, void (%struct.cselib_val_struct*)** @cselib_discard_hook, align 8, !dbg !4188
  store i8 0, i8* @cselib_preserve_constants, align 1, !dbg !4189
  store %struct.cselib_val_struct* null, %struct.cselib_val_struct** @cfa_base_preserved_val, align 8, !dbg !4190
  %0 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @elt_list_pool, align 8, !dbg !4191
  tail call void @free_alloc_pool(%struct.alloc_pool_def* %0) #6, !dbg !4192
  %1 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @elt_loc_list_pool, align 8, !dbg !4193
  tail call void @free_alloc_pool(%struct.alloc_pool_def* %1) #6, !dbg !4194
  %2 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @cselib_val_pool, align 8, !dbg !4195
  tail call void @free_alloc_pool(%struct.alloc_pool_def* %2) #6, !dbg !4196
  %3 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @value_pool, align 8, !dbg !4197
  tail call void @free_alloc_pool(%struct.alloc_pool_def* %3) #6, !dbg !4198
  tail call void @cselib_clear_table() #7, !dbg !4199
  %4 = load %struct.htab*, %struct.htab** @cselib_hash_table, align 8, !dbg !4200
  tail call void @htab_delete(%struct.htab* %4) #6, !dbg !4201
  %5 = load i8*, i8** bitcast (i32** @used_regs to i8**), align 8, !dbg !4202
  tail call void @free(i8* %5) #6, !dbg !4203
  store i32* null, i32** @used_regs, align 8, !dbg !4204
  store %struct.htab* null, %struct.htab** @cselib_hash_table, align 8, !dbg !4205
  store i32 0, i32* @n_useless_values, align 4, !dbg !4206
  store i32 0, i32* @n_useless_debug_values, align 4, !dbg !4207
  store i32 0, i32* @n_debug_values, align 4, !dbg !4208
  store i32 0, i32* @next_uid, align 4, !dbg !4209
  ret void, !dbg !4210
}

declare dso_local void @free_alloc_pool(%struct.alloc_pool_def*) local_unnamed_addr #2

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @dump_cselib_table(%struct._IO_FILE* %out) local_unnamed_addr #5 !dbg !4211 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %out, metadata !4215, metadata !DIExpression()), !dbg !4216
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4217
  %0 = load %struct.htab*, %struct.htab** @cselib_hash_table, align 8, !dbg !4218
  %1 = bitcast %struct._IO_FILE* %out to i8*, !dbg !4219
  tail call void @htab_traverse(%struct.htab* %0, i32 (i8**, i8*)* nonnull @dump_cselib_val, i8* %1) #6, !dbg !4220
  %2 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** @first_containing_mem, align 8, !dbg !4221
  %cmp = icmp eq %struct.cselib_val_struct* %2, @dummy_val, !dbg !4223
  br i1 %cmp, label %if.end, label %if.then, !dbg !4224

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), %struct._IO_FILE* %out) #6, !dbg !4225
  %3 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** @first_containing_mem, align 8, !dbg !4227
  %val_rtx = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %3, i64 0, i32 2, !dbg !4228
  %4 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx, align 8, !dbg !4228
  tail call void @print_inline_rtx(%struct._IO_FILE* %out, %struct.rtx_def* %4, i32 2) #6, !dbg !4229
  %call2 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %out) #6, !dbg !4230
  br label %if.end, !dbg !4231

if.end:                                           ; preds = %entry, %if.then
  %5 = load i32, i32* @next_uid, align 4, !dbg !4232
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %5) #6, !dbg !4233
  ret void, !dbg !4234
}

; Function Attrs: nounwind uwtable
define internal i32 @dump_cselib_val(i8** %x, i8* %info) #5 !dbg !4235 {
entry:
  call void @llvm.dbg.value(metadata i8** %x, metadata !4237, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i8* %info, metadata !4238, metadata !DIExpression()), !dbg !4248
  %0 = bitcast i8** %x to %struct.cselib_val_struct**, !dbg !4249
  %1 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %0, align 8, !dbg !4249
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %1, metadata !4239, metadata !DIExpression()), !dbg !4248
  %2 = bitcast i8* %info to %struct._IO_FILE*, !dbg !4250
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !4240, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i8 1, metadata !4241, metadata !DIExpression()), !dbg !4248
  %val_rtx = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %1, i64 0, i32 2, !dbg !4251
  %3 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx, align 8, !dbg !4251
  tail call void @print_inline_rtx(%struct._IO_FILE* %2, %struct.rtx_def* %3, i32 0) #6, !dbg !4252
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %1, i64 0, i32 3, !dbg !4253
  %4 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !4253
  %tobool = icmp eq %struct.elt_loc_list* %4, null, !dbg !4254
  br i1 %tobool, label %if.else, label %if.then, !dbg !4255

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.elt_loc_list* %4, metadata !4242, metadata !DIExpression()), !dbg !4256
  %call = tail call i32 @fputc(i32 10, %struct._IO_FILE* %2) #6, !dbg !4257
  call void @llvm.dbg.value(metadata i8 0, metadata !4241, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i8 0, metadata !4241, metadata !DIExpression()), !dbg !4248
  %call4 = tail call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), %struct._IO_FILE* %2) #6, !dbg !4260
  br label %do.body, !dbg !4261

do.body:                                          ; preds = %do.body, %if.then
  %l.0 = phi %struct.elt_loc_list* [ %4, %if.then ], [ %8, %do.body ], !dbg !4256
  call void @llvm.dbg.value(metadata %struct.elt_loc_list* %l.0, metadata !4242, metadata !DIExpression()), !dbg !4256
  %setting_insn = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %l.0, i64 0, i32 2, !dbg !4262
  %5 = load %struct.rtx_def*, %struct.rtx_def** %setting_insn, align 8, !dbg !4262
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4262
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !4262
  %6 = load i32, i32* %rt_int, align 8, !dbg !4262
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 %6) #6, !dbg !4264
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %l.0, i64 0, i32 1, !dbg !4265
  %7 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !4265
  tail call void @print_inline_rtx(%struct._IO_FILE* %2, %struct.rtx_def* %7, i32 4) #6, !dbg !4266
  %next = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %l.0, i64 0, i32 0, !dbg !4267
  %8 = load %struct.elt_loc_list*, %struct.elt_loc_list** %next, align 8, !dbg !4267
  call void @llvm.dbg.value(metadata %struct.elt_loc_list* %8, metadata !4242, metadata !DIExpression()), !dbg !4256
  %tobool6 = icmp eq %struct.elt_loc_list* %8, null, !dbg !4268
  br i1 %tobool6, label %do.end, label %do.body, !dbg !4268, !llvm.loop !4269

do.end:                                           ; preds = %do.body
  %call7 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %2) #6, !dbg !4271
  br label %if.end9, !dbg !4272

if.else:                                          ; preds = %entry
  %call8 = tail call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), %struct._IO_FILE* %2) #6, !dbg !4273
  call void @llvm.dbg.value(metadata i8 1, metadata !4241, metadata !DIExpression()), !dbg !4248
  br label %if.end9

if.end9:                                          ; preds = %if.else, %do.end
  %need_lf.1 = phi i8 [ 0, %do.end ], [ 1, %if.else ], !dbg !4275
  call void @llvm.dbg.value(metadata i8 %need_lf.1, metadata !4241, metadata !DIExpression()), !dbg !4248
  %addr_list = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %1, i64 0, i32 4, !dbg !4276
  %9 = load %struct.elt_list*, %struct.elt_list** %addr_list, align 8, !dbg !4276
  %tobool10 = icmp eq %struct.elt_list* %9, null, !dbg !4277
  br i1 %tobool10, label %if.else26, label %if.then11, !dbg !4278

if.then11:                                        ; preds = %if.end9
  call void @llvm.dbg.value(metadata %struct.elt_list* %9, metadata !4245, metadata !DIExpression()), !dbg !4279
  %tobool13 = icmp eq i8 %need_lf.1, 0, !dbg !4280
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !4282

if.then14:                                        ; preds = %if.then11
  %call15 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %2) #6, !dbg !4283
  call void @llvm.dbg.value(metadata i8 0, metadata !4241, metadata !DIExpression()), !dbg !4248
  br label %if.end16, !dbg !4285

if.end16:                                         ; preds = %if.then11, %if.then14
  call void @llvm.dbg.value(metadata i8 0, metadata !4241, metadata !DIExpression()), !dbg !4248
  %call17 = tail call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), %struct._IO_FILE* %2) #6, !dbg !4286
  br label %do.body18, !dbg !4287

do.body18:                                        ; preds = %do.body18, %if.end16
  %e.0 = phi %struct.elt_list* [ %9, %if.end16 ], [ %12, %do.body18 ], !dbg !4279
  call void @llvm.dbg.value(metadata %struct.elt_list* %e.0, metadata !4245, metadata !DIExpression()), !dbg !4279
  %call19 = tail call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), %struct._IO_FILE* %2) #6, !dbg !4288
  %elt = getelementptr inbounds %struct.elt_list, %struct.elt_list* %e.0, i64 0, i32 1, !dbg !4290
  %10 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt, align 8, !dbg !4290
  %val_rtx20 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %10, i64 0, i32 2, !dbg !4291
  %11 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx20, align 8, !dbg !4291
  tail call void @print_inline_rtx(%struct._IO_FILE* %2, %struct.rtx_def* %11, i32 2) #6, !dbg !4292
  %next22 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %e.0, i64 0, i32 0, !dbg !4293
  %12 = load %struct.elt_list*, %struct.elt_list** %next22, align 8, !dbg !4293
  call void @llvm.dbg.value(metadata %struct.elt_list* %12, metadata !4245, metadata !DIExpression()), !dbg !4279
  %tobool23 = icmp eq %struct.elt_list* %12, null, !dbg !4294
  br i1 %tobool23, label %do.end24, label %do.body18, !dbg !4294, !llvm.loop !4295

do.end24:                                         ; preds = %do.body18
  %call25 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %2) #6, !dbg !4297
  br label %if.end28, !dbg !4298

if.else26:                                        ; preds = %if.end9
  %call27 = tail call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), %struct._IO_FILE* %2) #6, !dbg !4299
  call void @llvm.dbg.value(metadata i8 1, metadata !4241, metadata !DIExpression()), !dbg !4248
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %do.end24
  %need_lf.3 = phi i8 [ 0, %do.end24 ], [ 1, %if.else26 ], !dbg !4301
  call void @llvm.dbg.value(metadata i8 %need_lf.3, metadata !4241, metadata !DIExpression()), !dbg !4248
  %next_containing_mem = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %1, i64 0, i32 5, !dbg !4302
  %13 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %next_containing_mem, align 8, !dbg !4302
  %cmp = icmp eq %struct.cselib_val_struct* %13, @dummy_val, !dbg !4304
  br i1 %cmp, label %if.then29, label %if.else31, !dbg !4305

if.then29:                                        ; preds = %if.end28
  %call30 = tail call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), %struct._IO_FILE* %2) #6, !dbg !4306
  br label %if.end45, !dbg !4306

if.else31:                                        ; preds = %if.end28
  %tobool33 = icmp eq %struct.cselib_val_struct* %13, null, !dbg !4307
  br i1 %tobool33, label %if.else39, label %if.then34, !dbg !4309

if.then34:                                        ; preds = %if.else31
  %call35 = tail call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), %struct._IO_FILE* %2) #6, !dbg !4310
  %14 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %next_containing_mem, align 8, !dbg !4312
  %val_rtx37 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %14, i64 0, i32 2, !dbg !4313
  %15 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx37, align 8, !dbg !4313
  tail call void @print_inline_rtx(%struct._IO_FILE* %2, %struct.rtx_def* %15, i32 2) #6, !dbg !4314
  %call38 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %2) #6, !dbg !4315
  br label %if.end45, !dbg !4316

if.else39:                                        ; preds = %if.else31
  %tobool40 = icmp eq i8 %need_lf.3, 0, !dbg !4317
  br i1 %tobool40, label %if.end45, label %if.then41, !dbg !4319

if.then41:                                        ; preds = %if.else39
  %call42 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %2) #6, !dbg !4320
  br label %if.end45, !dbg !4320

if.end45:                                         ; preds = %if.else39, %if.then34, %if.then41, %if.then29
  ret i32 1, !dbg !4321
}

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @gt_ggc_mx_rtx_def(i8*) #2

declare dso_local void @gt_pch_nx_rtx_def(i8*) #2

declare dso_local void @htab_clear_slot(%struct.htab*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @discard_useless_locs(i8** %x, i8* %info) #5 !dbg !4322 {
entry:
  call void @llvm.dbg.value(metadata i8** %x, metadata !4324, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i8* %info, metadata !4325, metadata !DIExpression()), !dbg !4330
  %0 = bitcast i8** %x to %struct.cselib_val_struct**, !dbg !4331
  %1 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %0, align 8, !dbg !4331
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %1, metadata !4326, metadata !DIExpression()), !dbg !4330
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %1, i64 0, i32 3, !dbg !4332
  call void @llvm.dbg.value(metadata %struct.elt_loc_list** %locs, metadata !4327, metadata !DIExpression()), !dbg !4330
  %2 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !4333
  %cmp = icmp eq %struct.elt_loc_list* %2, null, !dbg !4334
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !4328, metadata !DIExpression()), !dbg !4330
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4335

cond.true:                                        ; preds = %entry
  %setting_insn5 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %2, i64 0, i32 2, !dbg !4336
  %3 = load %struct.rtx_def*, %struct.rtx_def** %setting_insn5, align 8, !dbg !4336
  br label %cond.end, !dbg !4335

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.rtx_def* [ %3, %cond.true ], [ null, %entry ], !dbg !4335
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond, metadata !4329, metadata !DIExpression()), !dbg !4330
  br label %while.cond, !dbg !4337

while.cond:                                       ; preds = %if.end, %cond.end
  %4 = phi %struct.elt_loc_list* [ %2, %cond.end ], [ %.pre, %if.end ], !dbg !4338
  %p.0 = phi %struct.elt_loc_list** [ %locs, %cond.end ], [ %p.1, %if.end ], !dbg !4339
  call void @llvm.dbg.value(metadata %struct.elt_loc_list** %p.0, metadata !4327, metadata !DIExpression()), !dbg !4330
  %tobool6 = icmp eq %struct.elt_loc_list* %4, null, !dbg !4337
  br i1 %tobool6, label %while.end, label %while.body, !dbg !4337

while.body:                                       ; preds = %while.cond
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %4, i64 0, i32 1, !dbg !4340
  %5 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !4340
  %call = tail call i32 @references_value_p(%struct.rtx_def* %5, i32 1) #7, !dbg !4343
  %tobool7 = icmp eq i32 %call, 0, !dbg !4343
  br i1 %tobool7, label %if.else, label %if.then, !dbg !4344

if.then:                                          ; preds = %while.body
  tail call fastcc void @unchain_one_elt_loc_list(%struct.elt_loc_list** %p.0) #7, !dbg !4345
  br label %if.end, !dbg !4345

if.else:                                          ; preds = %while.body
  %6 = load %struct.elt_loc_list*, %struct.elt_loc_list** %p.0, align 8, !dbg !4346
  %next = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %6, i64 0, i32 0, !dbg !4347
  call void @llvm.dbg.value(metadata %struct.elt_loc_list** %next, metadata !4327, metadata !DIExpression()), !dbg !4330
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %p.1 = phi %struct.elt_loc_list** [ %p.0, %if.then ], [ %next, %if.else ], !dbg !4330
  call void @llvm.dbg.value(metadata %struct.elt_loc_list** %p.1, metadata !4327, metadata !DIExpression()), !dbg !4330
  %.pre = load %struct.elt_loc_list*, %struct.elt_loc_list** %p.1, align 8, !dbg !4338
  br label %while.cond, !dbg !4337, !llvm.loop !4348

while.end:                                        ; preds = %while.cond
  br i1 %cmp, label %if.end26, label %land.lhs.true, !dbg !4350

land.lhs.true:                                    ; preds = %while.end
  %7 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !4352
  %cmp11 = icmp eq %struct.elt_loc_list* %7, null, !dbg !4353
  br i1 %cmp11, label %land.lhs.true13, label %if.end26, !dbg !4354

land.lhs.true13:                                  ; preds = %land.lhs.true
  %val_rtx = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %1, i64 0, i32 2, !dbg !4355
  %8 = bitcast %struct.rtx_def** %val_rtx to i32**, !dbg !4355
  %9 = load i32*, i32** %8, align 8, !dbg !4355
  %bf.load = load i32, i32* %9, align 8, !dbg !4355
  %bf.clear = and i32 %bf.load, 67108864, !dbg !4355
  %tobool14 = icmp eq i32 %bf.clear, 0, !dbg !4355
  br i1 %tobool14, label %if.then15, label %if.end26, !dbg !4356

if.then15:                                        ; preds = %land.lhs.true13
  %tobool16 = icmp eq %struct.rtx_def* %cond, null, !dbg !4357
  br i1 %tobool16, label %if.else23, label %land.lhs.true17, !dbg !4360

land.lhs.true17:                                  ; preds = %if.then15
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i64 0, i32 0, !dbg !4361
  %bf.load18 = load i32, i32* %10, align 8, !dbg !4361
  %bf.clear19 = and i32 %bf.load18, 65535, !dbg !4361
  %cmp20 = icmp eq i32 %bf.clear19, 7, !dbg !4361
  br i1 %cmp20, label %if.then22, label %if.else23, !dbg !4362

if.then22:                                        ; preds = %land.lhs.true17
  %11 = load i32, i32* @n_useless_debug_values, align 4, !dbg !4363
  %inc = add nsw i32 %11, 1, !dbg !4363
  store i32 %inc, i32* @n_useless_debug_values, align 4, !dbg !4363
  br label %if.end25, !dbg !4364

if.else23:                                        ; preds = %if.then15, %land.lhs.true17
  %12 = load i32, i32* @n_useless_values, align 4, !dbg !4365
  %inc24 = add nsw i32 %12, 1, !dbg !4365
  store i32 %inc24, i32* @n_useless_values, align 4, !dbg !4365
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then22
  store i1 true, i1* @values_became_useless, align 4, !dbg !4366
  br label %if.end26, !dbg !4367

if.end26:                                         ; preds = %land.lhs.true13, %while.end, %if.end25, %land.lhs.true
  ret i32 1, !dbg !4368
}

; Function Attrs: nounwind uwtable
define internal i32 @discard_useless_values(i8** %x, i8* %info) #5 !dbg !4369 {
entry:
  call void @llvm.dbg.value(metadata i8** %x, metadata !4371, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i8* %info, metadata !4372, metadata !DIExpression()), !dbg !4374
  %0 = bitcast i8** %x to %struct.cselib_val_struct**, !dbg !4375
  %1 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %0, align 8, !dbg !4375
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %1, metadata !4373, metadata !DIExpression()), !dbg !4374
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %1, i64 0, i32 3, !dbg !4376
  %2 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !4376
  %cmp = icmp eq %struct.elt_loc_list* %2, null, !dbg !4378
  br i1 %cmp, label %land.lhs.true, label %if.end4, !dbg !4379

land.lhs.true:                                    ; preds = %entry
  %val_rtx = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %1, i64 0, i32 2, !dbg !4380
  %3 = bitcast %struct.rtx_def** %val_rtx to i32**, !dbg !4380
  %4 = load i32*, i32** %3, align 8, !dbg !4380
  %bf.load = load i32, i32* %4, align 8, !dbg !4380
  %bf.clear = and i32 %bf.load, 67108864, !dbg !4380
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !4380
  br i1 %tobool, label %if.then, label %if.end4, !dbg !4381

if.then:                                          ; preds = %land.lhs.true
  %5 = bitcast i32* %4 to %struct.rtx_def*, !dbg !4381
  %6 = load void (%struct.cselib_val_struct*)*, void (%struct.cselib_val_struct*)** @cselib_discard_hook, align 8, !dbg !4382
  %tobool1 = icmp eq void (%struct.cselib_val_struct*)* %6, null, !dbg !4382
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !4385

if.then2:                                         ; preds = %if.then
  tail call void %6(%struct.cselib_val_struct* %1) #6, !dbg !4386
  %.pre = load %struct.rtx_def*, %struct.rtx_def** %val_rtx, align 8, !dbg !4387
  br label %if.end, !dbg !4386

if.end:                                           ; preds = %if.then, %if.then2
  %7 = phi %struct.rtx_def* [ %5, %if.then ], [ %.pre, %if.then2 ], !dbg !4387
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4387
  %rt_cselib = bitcast %union.rtunion_def* %arrayidx to %struct.cselib_val_struct**, !dbg !4387
  store %struct.cselib_val_struct* null, %struct.cselib_val_struct** %rt_cselib, align 8, !dbg !4388
  %8 = load %struct.htab*, %struct.htab** @cselib_hash_table, align 8, !dbg !4389
  tail call void @htab_clear_slot(%struct.htab* %8, i8** %x) #6, !dbg !4390
  tail call fastcc void @unchain_one_value(%struct.cselib_val_struct* %1) #7, !dbg !4391
  %9 = load i32, i32* @n_useless_values, align 4, !dbg !4392
  %dec = add nsw i32 %9, -1, !dbg !4392
  store i32 %dec, i32* @n_useless_values, align 4, !dbg !4392
  br label %if.end4, !dbg !4393

if.end4:                                          ; preds = %land.lhs.true, %if.end, %entry
  ret i32 1, !dbg !4394
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unchain_one_elt_loc_list(%struct.elt_loc_list** %pl) unnamed_addr #5 !dbg !4395 {
entry:
  call void @llvm.dbg.value(metadata %struct.elt_loc_list** %pl, metadata !4399, metadata !DIExpression()), !dbg !4401
  %0 = load %struct.elt_loc_list*, %struct.elt_loc_list** %pl, align 8, !dbg !4402
  call void @llvm.dbg.value(metadata %struct.elt_loc_list* %0, metadata !4400, metadata !DIExpression()), !dbg !4401
  %1 = bitcast %struct.elt_loc_list* %0 to i64*, !dbg !4403
  %2 = load i64, i64* %1, align 8, !dbg !4403
  %3 = bitcast %struct.elt_loc_list** %pl to i64*, !dbg !4404
  store i64 %2, i64* %3, align 8, !dbg !4404
  %4 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @elt_loc_list_pool, align 8, !dbg !4405
  %5 = bitcast %struct.elt_loc_list* %0 to i8*, !dbg !4406
  tail call void @pool_free(%struct.alloc_pool_def* %4, i8* %5) #6, !dbg !4407
  ret void, !dbg !4408
}

declare dso_local void @pool_free(%struct.alloc_pool_def*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @unchain_one_value(%struct.cselib_val_struct* %v) unnamed_addr #5 !dbg !4409 {
entry:
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %v, metadata !4411, metadata !DIExpression()), !dbg !4412
  %addr_list = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %v, i64 0, i32 4, !dbg !4412
  br label %while.cond, !dbg !4413

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.elt_list*, %struct.elt_list** %addr_list, align 8, !dbg !4414
  %tobool = icmp eq %struct.elt_list* %0, null, !dbg !4413
  br i1 %tobool, label %while.end, label %while.body, !dbg !4413

while.body:                                       ; preds = %while.cond
  tail call fastcc void @unchain_one_elt_list(%struct.elt_list** nonnull %addr_list) #7, !dbg !4415
  br label %while.cond, !dbg !4413, !llvm.loop !4416

while.end:                                        ; preds = %while.cond
  %1 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @cselib_val_pool, align 8, !dbg !4418
  %2 = bitcast %struct.cselib_val_struct* %v to i8*, !dbg !4419
  tail call void @pool_free(%struct.alloc_pool_def* %1, i8* %2) #6, !dbg !4420
  ret void, !dbg !4421
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @unchain_one_elt_list(%struct.elt_list** %pl) unnamed_addr #0 !dbg !4422 {
entry:
  call void @llvm.dbg.value(metadata %struct.elt_list** %pl, metadata !4426, metadata !DIExpression()), !dbg !4428
  %0 = load %struct.elt_list*, %struct.elt_list** %pl, align 8, !dbg !4429
  call void @llvm.dbg.value(metadata %struct.elt_list* %0, metadata !4427, metadata !DIExpression()), !dbg !4428
  %1 = bitcast %struct.elt_list* %0 to i64*, !dbg !4430
  %2 = load i64, i64* %1, align 8, !dbg !4430
  %3 = bitcast %struct.elt_list** %pl to i64*, !dbg !4431
  store i64 %2, i64* %3, align 8, !dbg !4431
  %4 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @elt_list_pool, align 8, !dbg !4432
  %5 = bitcast %struct.elt_list* %0 to i8*, !dbg !4433
  tail call void @pool_free(%struct.alloc_pool_def* %4, i8* %5) #6, !dbg !4434
  ret void, !dbg !4435
}

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @expand_loc(%struct.elt_loc_list* %p, %struct.expand_value_data* %evd, i32 %max_depth) unnamed_addr #5 !dbg !4436 {
entry:
  call void @llvm.dbg.value(metadata %struct.elt_loc_list* %p, metadata !4440, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata %struct.expand_value_data* %evd, metadata !4441, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 %max_depth, metadata !4442, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !4443, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 -1, metadata !4444, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata %struct.elt_loc_list* %p, metadata !4445, metadata !DIExpression()), !dbg !4458
  %regs_active = getelementptr inbounds %struct.expand_value_data, %struct.expand_value_data* %evd, i64 0, i32 0, !dbg !4459
  %sub = add nsw i32 %max_depth, -1, !dbg !4460
  br label %for.cond, !dbg !4461

for.cond:                                         ; preds = %for.inc, %entry
  %reg_result.0 = phi %struct.rtx_def* [ null, %entry ], [ %reg_result.2, %for.inc ], !dbg !4462
  %regno.0 = phi i32 [ -1, %entry ], [ %regno.2, %for.inc ], !dbg !4463
  %p.addr.0 = phi %struct.elt_loc_list* [ %p, %entry ], [ %25, %for.inc ]
  %retval.0 = phi %struct.rtx_def* [ undef, %entry ], [ %retval.4, %for.inc ]
  call void @llvm.dbg.value(metadata %struct.elt_loc_list* %p.addr.0, metadata !4440, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 %regno.0, metadata !4444, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg_result.0, metadata !4443, metadata !DIExpression()), !dbg !4458
  %tobool = icmp eq %struct.elt_loc_list* %p.addr.0, null, !dbg !4464
  br i1 %tobool, label %for.end, label %for.body, !dbg !4464

for.body:                                         ; preds = %for.cond
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %p.addr.0, i64 0, i32 1, !dbg !4465
  %0 = bitcast %struct.rtx_def** %loc to i32**, !dbg !4465
  %1 = load i32*, i32** %0, align 8, !dbg !4465
  %bf.load = load i32, i32* %1, align 8, !dbg !4465
  %bf.clear = and i32 %bf.load, 65535, !dbg !4465
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !4465
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !4466

land.lhs.true:                                    ; preds = %for.body
  %2 = bitcast i32* %1 to %struct.rtx_def*, !dbg !4466
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %2) #7, !dbg !4467
  %cmp2 = icmp ult i32 %call, %regno.0, !dbg !4468
  br i1 %cmp2, label %land.lhs.true3, label %if.else, !dbg !4469

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %regs_active, align 8, !dbg !4470
  %4 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !4471
  %call5 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %4) #7, !dbg !4471
  %call6 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %3, i32 %call5) #6, !dbg !4472
  %tobool7 = icmp eq i32 %call6, 0, !dbg !4472
  br i1 %tobool7, label %if.then, label %if.else, !dbg !4473

if.then:                                          ; preds = %land.lhs.true3
  %5 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !4474
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !4443, metadata !DIExpression()), !dbg !4458
  %call10 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %5) #7, !dbg !4476
  call void @llvm.dbg.value(metadata i32 %call10, metadata !4444, metadata !DIExpression()), !dbg !4458
  br label %for.inc, !dbg !4477

if.else:                                          ; preds = %land.lhs.true3, %land.lhs.true, %for.body
  %6 = load i32*, i32** %0, align 8, !dbg !4478
  %bf.load12 = load i32, i32* %6, align 8, !dbg !4478
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !4478
  %cmp14 = icmp eq i32 %bf.clear13, 1, !dbg !4479
  %7 = bitcast i32* %6 to %struct.rtx_def*, !dbg !4480
  br i1 %cmp14, label %land.lhs.true15, label %if.else19, !dbg !4480

land.lhs.true15:                                  ; preds = %if.else
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 2, !dbg !4481
  %rt_cselib = bitcast i32* %arrayidx to %struct.cselib_val_struct**, !dbg !4481
  %8 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib, align 8, !dbg !4481
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %8, i64 0, i32 3, !dbg !4482
  %9 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !4482
  %cmp17 = icmp eq %struct.elt_loc_list* %9, %p, !dbg !4483
  br i1 %cmp17, label %for.inc, label %if.else19, !dbg !4484

if.else19:                                        ; preds = %land.lhs.true15, %if.else
  %cmp23 = icmp eq i32 %bf.clear13, 37, !dbg !4485
  br i1 %cmp23, label %for.inc, label %if.then24, !dbg !4486

if.then24:                                        ; preds = %if.else19
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4487
  %tobool25 = icmp eq %struct._IO_FILE* %10, null, !dbg !4487
  br i1 %tobool25, label %if.end, label %land.lhs.true26, !dbg !4489

land.lhs.true26:                                  ; preds = %if.then24
  %11 = load i32, i32* @dump_flags, align 4, !dbg !4490
  %and = and i32 %11, 8, !dbg !4491
  %tobool27 = icmp eq i32 %and, 0, !dbg !4491
  br i1 %tobool27, label %if.end, label %if.then28, !dbg !4492

if.then28:                                        ; preds = %land.lhs.true26
  tail call void @print_inline_rtx(%struct._IO_FILE* nonnull %10, %struct.rtx_def* %7, i32 0) #6, !dbg !4493
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4495
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !4496
  %.pre = load i32*, i32** %0, align 8, !dbg !4497
  %bf.load32.pre = load i32, i32* %.pre, align 8, !dbg !4497
  %13 = bitcast i32* %.pre to %struct.rtx_def*, !dbg !4499
  br label %if.end, !dbg !4499

if.end:                                           ; preds = %land.lhs.true26, %if.then24, %if.then28
  %14 = phi %struct.rtx_def* [ %7, %land.lhs.true26 ], [ %7, %if.then24 ], [ %13, %if.then28 ]
  %15 = phi %struct.rtx_def* [ %7, %land.lhs.true26 ], [ %7, %if.then24 ], [ %13, %if.then28 ]
  %bf.load32 = phi i32 [ %bf.load12, %land.lhs.true26 ], [ %bf.load12, %if.then24 ], [ %bf.load32.pre, %if.then28 ], !dbg !4497
  %bf.clear33 = and i32 %bf.load32, 65535, !dbg !4497
  %cmp34 = icmp eq i32 %bf.clear33, 122, !dbg !4500
  br i1 %cmp34, label %land.lhs.true35, label %if.end66, !dbg !4501

land.lhs.true35:                                  ; preds = %if.end
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4502
  %17 = bitcast %union.rtunion_def* %16 to i32**, !dbg !4502
  %18 = load i32*, i32** %17, align 8, !dbg !4502
  %bf.load40 = load i32, i32* %18, align 8, !dbg !4502
  %bf.clear41 = and i32 %bf.load40, 65535, !dbg !4502
  %cmp42 = icmp eq i32 %bf.clear41, 45, !dbg !4503
  br i1 %cmp42, label %land.lhs.true43, label %if.end66, !dbg !4504

land.lhs.true43:                                  ; preds = %land.lhs.true35
  %setting_insn = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %p.addr.0, i64 0, i32 2, !dbg !4505
  %19 = load %struct.rtx_def*, %struct.rtx_def** %setting_insn, align 8, !dbg !4505
  %tobool44 = icmp eq %struct.rtx_def* %19, null, !dbg !4506
  br i1 %tobool44, label %if.end66, label %land.lhs.true45, !dbg !4507

land.lhs.true45:                                  ; preds = %land.lhs.true43
  %call47 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* nonnull %19, i32 4, %struct.rtx_def* null) #6, !dbg !4508
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call47, metadata !4454, metadata !DIExpression()), !dbg !4460
  %tobool48 = icmp eq %struct.rtx_def* %call47, null, !dbg !4509
  br i1 %tobool48, label %land.lhs.true45.if.end66_crit_edge, label %land.lhs.true49, !dbg !4510

land.lhs.true45.if.end66_crit_edge:               ; preds = %land.lhs.true45
  %.pre7 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !4511
  br label %if.end66, !dbg !4510

land.lhs.true49:                                  ; preds = %land.lhs.true45
  %arrayidx52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call47, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4512
  %rt_rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**, !dbg !4512
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx53, align 8, !dbg !4512
  %21 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !4513
  %22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4513
  %rt_rtx58 = bitcast %union.rtunion_def* %22 to %struct.rtx_def**, !dbg !4513
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx58, align 8, !dbg !4513
  %cmp59 = icmp eq %struct.rtx_def* %20, %23, !dbg !4514
  br i1 %cmp59, label %if.then60, label %if.end66, !dbg !4515

if.then60:                                        ; preds = %land.lhs.true49
  br label %cleanup, !dbg !4516

if.end66:                                         ; preds = %land.lhs.true45.if.end66_crit_edge, %land.lhs.true43, %land.lhs.true49, %land.lhs.true35, %if.end
  %24 = phi %struct.rtx_def* [ %.pre7, %land.lhs.true45.if.end66_crit_edge ], [ %14, %land.lhs.true43 ], [ %21, %land.lhs.true49 ], [ %14, %land.lhs.true35 ], [ %14, %if.end ], !dbg !4511
  %call68 = tail call fastcc %struct.rtx_def* @cselib_expand_value_rtx_1(%struct.rtx_def* %24, %struct.expand_value_data* %evd, i32 %sub) #7, !dbg !4517
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call68, metadata !4446, metadata !DIExpression()), !dbg !4460
  %tobool69 = icmp ne %struct.rtx_def* %call68, null, !dbg !4518
  %. = zext i1 %tobool69 to i32, !dbg !4520
  %call68.retval.0 = select i1 %tobool69, %struct.rtx_def* %call68, %struct.rtx_def* %retval.0, !dbg !4520
  br label %cleanup, !dbg !4520

cleanup:                                          ; preds = %if.end66, %if.then60
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then60 ], [ %., %if.end66 ]
  %retval.1 = phi %struct.rtx_def* [ %20, %if.then60 ], [ %call68.retval.0, %if.end66 ]
  %cond1 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond1, label %for.inc, label %cleanup107.loopexit

for.inc:                                          ; preds = %if.then, %if.else19, %cleanup, %land.lhs.true15
  %reg_result.2 = phi %struct.rtx_def* [ %reg_result.0, %land.lhs.true15 ], [ %5, %if.then ], [ %reg_result.0, %if.else19 ], [ %reg_result.0, %cleanup ], !dbg !4462
  %regno.2 = phi i32 [ %regno.0, %land.lhs.true15 ], [ %call10, %if.then ], [ %regno.0, %if.else19 ], [ %regno.0, %cleanup ], !dbg !4463
  %retval.4 = phi %struct.rtx_def* [ %retval.0, %land.lhs.true15 ], [ %retval.0, %if.then ], [ %retval.0, %if.else19 ], [ %retval.1, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %regno.2, metadata !4444, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg_result.2, metadata !4443, metadata !DIExpression()), !dbg !4458
  %next = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %p.addr.0, i64 0, i32 0, !dbg !4521
  %25 = load %struct.elt_loc_list*, %struct.elt_loc_list** %next, align 8, !dbg !4521
  call void @llvm.dbg.value(metadata %struct.elt_loc_list* %25, metadata !4440, metadata !DIExpression()), !dbg !4458
  br label %for.cond, !dbg !4522, !llvm.loop !4523

for.end:                                          ; preds = %for.cond
  %reg_result.0.lcssa = phi %struct.rtx_def* [ %reg_result.0, %for.cond ], !dbg !4462
  %regno.0.lcssa = phi i32 [ %regno.0, %for.cond ], !dbg !4463
  %retval.0.lcssa = phi %struct.rtx_def* [ %retval.0, %for.cond ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg_result.0.lcssa, metadata !4443, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 %regno.0.lcssa, metadata !4444, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg_result.0.lcssa, metadata !4443, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 %regno.0.lcssa, metadata !4444, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg_result.0.lcssa, metadata !4443, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 %regno.0.lcssa, metadata !4444, metadata !DIExpression()), !dbg !4458
  %cmp76 = icmp eq i32 %regno.0.lcssa, -1, !dbg !4525
  br i1 %cmp76, label %if.end94, label %if.then77, !dbg !4526

if.then77:                                        ; preds = %for.end
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4527
  %tobool79 = icmp eq %struct._IO_FILE* %26, null, !dbg !4527
  br i1 %tobool79, label %if.end85, label %land.lhs.true80, !dbg !4529

land.lhs.true80:                                  ; preds = %if.then77
  %27 = load i32, i32* @dump_flags, align 4, !dbg !4530
  %and81 = and i32 %27, 8, !dbg !4531
  %tobool82 = icmp eq i32 %and81, 0, !dbg !4531
  br i1 %tobool82, label %if.end85, label %if.then83, !dbg !4532

if.then83:                                        ; preds = %land.lhs.true80
  %call84 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %regno.0.lcssa) #6, !dbg !4533
  br label %if.end85, !dbg !4533

if.end85:                                         ; preds = %land.lhs.true80, %if.then77, %if.then83
  %call87 = tail call fastcc %struct.rtx_def* @cselib_expand_value_rtx_1(%struct.rtx_def* %reg_result.0.lcssa, %struct.expand_value_data* %evd, i32 %sub) #7, !dbg !4534
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call87, metadata !4455, metadata !DIExpression()), !dbg !4535
  %tobool88 = icmp ne %struct.rtx_def* %call87, null, !dbg !4536
  %call87.retval.0 = select i1 %tobool88, %struct.rtx_def* %call87, %struct.rtx_def* %retval.0.lcssa, !dbg !4538
  br i1 %tobool88, label %cleanup107, label %if.end94

if.end94:                                         ; preds = %if.end85, %for.end
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4539
  %tobool95 = icmp eq %struct._IO_FILE* %28, null, !dbg !4539
  br i1 %tobool95, label %cleanup107, label %land.lhs.true96, !dbg !4541

land.lhs.true96:                                  ; preds = %if.end94
  %29 = load i32, i32* @dump_flags, align 4, !dbg !4542
  %and97 = and i32 %29, 8, !dbg !4543
  %tobool98 = icmp eq i32 %and97, 0, !dbg !4543
  br i1 %tobool98, label %cleanup107, label %if.then99, !dbg !4544

if.then99:                                        ; preds = %land.lhs.true96
  %tobool100 = icmp eq %struct.rtx_def* %reg_result.0.lcssa, null, !dbg !4545
  br i1 %tobool100, label %if.else103, label %if.then101, !dbg !4548

if.then101:                                       ; preds = %if.then99
  tail call void @print_inline_rtx(%struct._IO_FILE* nonnull %28, %struct.rtx_def* nonnull %reg_result.0.lcssa, i32 0) #6, !dbg !4549
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4551
  %call102 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !4552
  br label %cleanup107, !dbg !4553

if.else103:                                       ; preds = %if.then99
  %call104 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !4554
  br label %cleanup107

cleanup107.loopexit:                              ; preds = %cleanup
  %retval.1.lcssa = phi %struct.rtx_def* [ %retval.1, %cleanup ]
  br label %cleanup107, !dbg !4555

cleanup107:                                       ; preds = %cleanup107.loopexit, %if.end85, %land.lhs.true96, %if.end94, %if.else103, %if.then101
  %retval.6 = phi %struct.rtx_def* [ %call87.retval.0, %if.end85 ], [ %reg_result.0.lcssa, %if.then101 ], [ null, %if.else103 ], [ %reg_result.0.lcssa, %land.lhs.true96 ], [ %reg_result.0.lcssa, %if.end94 ], [ %retval.1.lcssa, %cleanup107.loopexit ], !dbg !4458
  ret %struct.rtx_def* %retval.6, !dbg !4555
}

declare dso_local zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @shared_const_p(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @simplify_gen_subreg(i32, %struct.rtx_def*, i32, i32) local_unnamed_addr #2

declare dso_local i32 @print_rtl_single(%struct._IO_FILE*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtvec_def* @rtvec_alloc(i32) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @simplify_unary_operation(i32, i32, %struct.rtx_def*, i32) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @simplify_ternary_operation(i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @simplify_relational_operation(i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @simplify_rtx(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @promote_debug_loc(%struct.elt_loc_list* %l) unnamed_addr #0 !dbg !4556 {
entry:
  call void @llvm.dbg.value(metadata %struct.elt_loc_list* %l, metadata !4560, metadata !DIExpression()), !dbg !4561
  %setting_insn = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %l, i64 0, i32 2, !dbg !4562
  %0 = load %struct.rtx_def*, %struct.rtx_def** %setting_insn, align 8, !dbg !4562
  %tobool = icmp eq %struct.rtx_def* %0, null, !dbg !4564
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4565

land.lhs.true:                                    ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0, !dbg !4565
  %bf.load = load i32, i32* %1, align 8, !dbg !4566
  %bf.clear = and i32 %bf.load, 65535, !dbg !4566
  %cmp = icmp eq i32 %bf.clear, 7, !dbg !4566
  br i1 %cmp, label %land.lhs.true2, label %if.end, !dbg !4567

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load %struct.rtx_def*, %struct.rtx_def** @cselib_current_insn, align 8, !dbg !4568
  %tobool3 = icmp eq %struct.rtx_def* %2, null, !dbg !4568
  %3 = ptrtoint %struct.rtx_def* %2 to i64, !dbg !4569
  br i1 %tobool3, label %if.then, label %lor.lhs.false, !dbg !4569

lor.lhs.false:                                    ; preds = %land.lhs.true2
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 0, !dbg !4569
  %bf.load4 = load i32, i32* %4, align 8, !dbg !4570
  %bf.clear5 = and i32 %bf.load4, 65535, !dbg !4570
  %cmp6 = icmp eq i32 %bf.clear5, 7, !dbg !4570
  br i1 %cmp6, label %if.end, label %if.then, !dbg !4571

if.then:                                          ; preds = %land.lhs.true2, %lor.lhs.false
  %5 = load i32, i32* @n_debug_values, align 4, !dbg !4572
  %dec = add nsw i32 %5, -1, !dbg !4572
  store i32 %dec, i32* @n_debug_values, align 4, !dbg !4572
  %6 = bitcast %struct.rtx_def** %setting_insn to i64*, !dbg !4574
  store i64 %3, i64* %6, align 8, !dbg !4574
  %next = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %l, i64 0, i32 0, !dbg !4575
  %7 = load %struct.elt_loc_list*, %struct.elt_loc_list** %next, align 8, !dbg !4575
  %tobool8 = icmp eq %struct.elt_loc_list* %7, null, !dbg !4575
  br i1 %tobool8, label %if.end, label %cond.true, !dbg !4575

cond.true:                                        ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4575
  br label %if.end, !dbg !4575

if.end:                                           ; preds = %if.then, %entry, %cond.true, %lor.lhs.false, %land.lhs.true
  ret void, !dbg !4576
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_mem_for_addr(%struct.cselib_val_struct* %addr_elt, %struct.cselib_val_struct* %mem_elt, %struct.rtx_def* %x) unnamed_addr #5 !dbg !4577 {
entry:
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %addr_elt, metadata !4581, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %mem_elt, metadata !4582, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !4583, metadata !DIExpression()), !dbg !4585
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %mem_elt, i64 0, i32 3, !dbg !4586
  br label %for.cond, !dbg !4588

for.cond:                                         ; preds = %for.inc, %entry
  %l.0.in = phi %struct.elt_loc_list** [ %locs, %entry ], [ %next, %for.inc ]
  %l.0 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l.0.in, align 8, !dbg !4589
  call void @llvm.dbg.value(metadata %struct.elt_loc_list* %l.0, metadata !4584, metadata !DIExpression()), !dbg !4585
  %tobool = icmp eq %struct.elt_loc_list* %l.0, null, !dbg !4590
  br i1 %tobool, label %for.end, label %for.body, !dbg !4590

for.body:                                         ; preds = %for.cond
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %l.0, i64 0, i32 1, !dbg !4591
  %0 = bitcast %struct.rtx_def** %loc to i32**, !dbg !4591
  %1 = load i32*, i32** %0, align 8, !dbg !4591
  %bf.load = load i32, i32* %1, align 8, !dbg !4591
  %bf.clear = and i32 %bf.load, 65535, !dbg !4591
  %cmp = icmp eq i32 %bf.clear, 43, !dbg !4591
  br i1 %cmp, label %land.lhs.true, label %for.inc, !dbg !4594

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 2, !dbg !4595
  %rt_rtx = bitcast i32* %arrayidx to %struct.rtx_def**, !dbg !4595
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4595
  %arrayidx4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4595
  %rt_cselib = bitcast %union.rtunion_def* %arrayidx4 to %struct.cselib_val_struct**, !dbg !4595
  %3 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib, align 8, !dbg !4595
  %cmp5 = icmp eq %struct.cselib_val_struct* %3, %addr_elt, !dbg !4596
  br i1 %cmp5, label %if.then, label %for.inc, !dbg !4597

if.then:                                          ; preds = %land.lhs.true
  %l.0.lcssa3 = phi %struct.elt_loc_list* [ %l.0, %land.lhs.true ], !dbg !4589
  tail call fastcc void @promote_debug_loc(%struct.elt_loc_list* nonnull %l.0.lcssa3) #7, !dbg !4598
  br label %cleanup.cont, !dbg !4600

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %next = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %l.0, i64 0, i32 0, !dbg !4601
  br label %for.cond, !dbg !4602, !llvm.loop !4603

for.end:                                          ; preds = %for.cond
  %addr_list = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %addr_elt, i64 0, i32 4, !dbg !4605
  %4 = load %struct.elt_list*, %struct.elt_list** %addr_list, align 8, !dbg !4605
  %call = tail call fastcc %struct.elt_list* @new_elt_list(%struct.elt_list* %4, %struct.cselib_val_struct* %mem_elt) #7, !dbg !4606
  store %struct.elt_list* %call, %struct.elt_list** %addr_list, align 8, !dbg !4607
  %5 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !4608
  %val_rtx = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %addr_elt, i64 0, i32 2, !dbg !4609
  %6 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx, align 8, !dbg !4609
  %call8 = tail call %struct.rtx_def* @replace_equiv_address_nv(%struct.rtx_def* %x, %struct.rtx_def* %6) #6, !dbg !4610
  %call9 = tail call fastcc %struct.elt_loc_list* @new_elt_loc_list(%struct.elt_loc_list* %5, %struct.rtx_def* %call8) #7, !dbg !4611
  store %struct.elt_loc_list* %call9, %struct.elt_loc_list** %locs, align 8, !dbg !4612
  %next_containing_mem = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %mem_elt, i64 0, i32 5, !dbg !4613
  %7 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %next_containing_mem, align 8, !dbg !4613
  %cmp11 = icmp eq %struct.cselib_val_struct* %7, null, !dbg !4615
  br i1 %cmp11, label %if.then12, label %cleanup.cont, !dbg !4616

if.then12:                                        ; preds = %for.end
  %8 = load i64, i64* bitcast (%struct.cselib_val_struct** @first_containing_mem to i64*), align 8, !dbg !4617
  %9 = bitcast %struct.cselib_val_struct** %next_containing_mem to i64*, !dbg !4619
  store i64 %8, i64* %9, align 8, !dbg !4619
  store %struct.cselib_val_struct* %mem_elt, %struct.cselib_val_struct** @first_containing_mem, align 8, !dbg !4620
  br label %cleanup.cont, !dbg !4621

cleanup.cont:                                     ; preds = %if.then, %if.then12, %for.end
  ret void, !dbg !4622
}

declare dso_local i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @wrap_constant(i32 %mode, %struct.rtx_def* %x) unnamed_addr #5 !dbg !4623 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4627, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !4628, metadata !DIExpression()), !dbg !4629
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !4630
  %bf.load = load i32, i32* %0, align 8, !dbg !4630
  %bf.clear = and i32 %bf.load, 65535, !dbg !4630
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !4630
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !4632

land.lhs.true:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 31, !dbg !4633
  br i1 %cmp3, label %if.end, label %land.lhs.true4, !dbg !4634

land.lhs.true4:                                   ; preds = %land.lhs.true
  %cmp7 = icmp eq i32 %bf.clear, 32, !dbg !4635
  br i1 %cmp7, label %lor.lhs.false, label %return, !dbg !4636

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %bf.clear9 = and i32 %bf.load, 16711680, !dbg !4637
  %cmp10 = icmp eq i32 %bf.clear9, 0, !dbg !4638
  br i1 %cmp10, label %if.end, label %return, !dbg !4639

if.end:                                           ; preds = %lor.lhs.false, %land.lhs.true, %entry
  %cmp11 = icmp eq i32 %mode, 0, !dbg !4640
  br i1 %cmp11, label %cond.true, label %cond.end, !dbg !4640

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 781, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4640
  br label %cond.end, !dbg !4640

cond.end:                                         ; preds = %if.end, %cond.true
  %call = tail call %struct.rtx_def* @gen_rtx_fmt_e_stat(i32 35, i32 %mode, %struct.rtx_def* %x) #6, !dbg !4641
  br label %return, !dbg !4642

return:                                           ; preds = %lor.lhs.false, %land.lhs.true4, %cond.end
  %retval.0 = phi %struct.rtx_def* [ %call, %cond.end ], [ %x, %lor.lhs.false ], [ %x, %land.lhs.true4 ], !dbg !4629
  ret %struct.rtx_def* %retval.0, !dbg !4643
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.elt_list* @new_elt_list(%struct.elt_list* %next, %struct.cselib_val_struct* %elt) unnamed_addr #0 !dbg !4644 {
entry:
  call void @llvm.dbg.value(metadata %struct.elt_list* %next, metadata !4648, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %elt, metadata !4649, metadata !DIExpression()), !dbg !4651
  %0 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @elt_list_pool, align 8, !dbg !4652
  %call = tail call i8* @pool_alloc(%struct.alloc_pool_def* %0) #6, !dbg !4653
  %1 = bitcast i8* %call to %struct.elt_list*, !dbg !4654
  call void @llvm.dbg.value(metadata %struct.elt_list* %1, metadata !4650, metadata !DIExpression()), !dbg !4651
  %next1 = bitcast i8* %call to %struct.elt_list**, !dbg !4655
  store %struct.elt_list* %next, %struct.elt_list** %next1, align 8, !dbg !4656
  %elt2 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !4657
  %2 = bitcast i8* %elt2 to %struct.cselib_val_struct**, !dbg !4657
  store %struct.cselib_val_struct* %elt, %struct.cselib_val_struct** %2, align 8, !dbg !4658
  ret %struct.elt_list* %1, !dbg !4659
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.elt_loc_list* @new_elt_loc_list(%struct.elt_loc_list* %next, %struct.rtx_def* %loc) unnamed_addr #0 !dbg !4660 {
entry:
  call void @llvm.dbg.value(metadata %struct.elt_loc_list* %next, metadata !4664, metadata !DIExpression()), !dbg !4667
  call void @llvm.dbg.value(metadata %struct.rtx_def* %loc, metadata !4665, metadata !DIExpression()), !dbg !4667
  %0 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @elt_loc_list_pool, align 8, !dbg !4668
  %call = tail call i8* @pool_alloc(%struct.alloc_pool_def* %0) #6, !dbg !4669
  %1 = bitcast i8* %call to %struct.elt_loc_list*, !dbg !4670
  call void @llvm.dbg.value(metadata %struct.elt_loc_list* %1, metadata !4666, metadata !DIExpression()), !dbg !4667
  %next1 = bitcast i8* %call to %struct.elt_loc_list**, !dbg !4671
  store %struct.elt_loc_list* %next, %struct.elt_loc_list** %next1, align 8, !dbg !4672
  %loc2 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !4673
  %2 = bitcast i8* %loc2 to %struct.rtx_def**, !dbg !4673
  store %struct.rtx_def* %loc, %struct.rtx_def** %2, align 8, !dbg !4674
  %3 = load i64, i64* bitcast (%struct.rtx_def** @cselib_current_insn to i64*), align 8, !dbg !4675
  %setting_insn = getelementptr inbounds i8, i8* %call, i64 16, !dbg !4676
  %4 = bitcast i8* %setting_insn to i64*, !dbg !4677
  store i64 %3, i64* %4, align 8, !dbg !4677
  %tobool = icmp eq %struct.elt_loc_list* %next, null, !dbg !4678
  %5 = inttoptr i64 %3 to %struct.rtx_def*, !dbg !4678
  %6 = inttoptr i64 %3 to i32*, !dbg !4678
  br i1 %tobool, label %cond.end, label %lor.lhs.false, !dbg !4678

lor.lhs.false:                                    ; preds = %entry
  %setting_insn3 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %next, i64 0, i32 2, !dbg !4678
  %7 = load %struct.rtx_def*, %struct.rtx_def** %setting_insn3, align 8, !dbg !4678
  %tobool4 = icmp eq %struct.rtx_def* %7, null, !dbg !4678
  br i1 %tobool4, label %cond.end, label %lor.lhs.false5, !dbg !4678

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 0, !dbg !4678
  %bf.load = load i32, i32* %8, align 8, !dbg !4678
  %bf.clear = and i32 %bf.load, 65535, !dbg !4678
  %cmp = icmp eq i32 %bf.clear, 7, !dbg !4678
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4678

cond.true:                                        ; preds = %lor.lhs.false5
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 230, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4678
  %.pre = load %struct.rtx_def*, %struct.rtx_def** @cselib_current_insn, align 8, !dbg !4679
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %.pre, i64 0, i32 0, !dbg !4678
  br label %cond.end, !dbg !4678

cond.end:                                         ; preds = %lor.lhs.false, %entry, %lor.lhs.false5, %cond.true
  %10 = phi i32* [ %6, %lor.lhs.false ], [ %6, %entry ], [ %6, %lor.lhs.false5 ], [ %9, %cond.true ]
  %11 = phi %struct.rtx_def* [ %5, %lor.lhs.false ], [ %5, %entry ], [ %5, %lor.lhs.false5 ], [ %.pre, %cond.true ], !dbg !4679
  %tobool8 = icmp ne %struct.rtx_def* %11, null, !dbg !4679
  %or.cond = and i1 %tobool, %tobool8, !dbg !4681
  br i1 %or.cond, label %land.lhs.true9, label %if.end, !dbg !4681

land.lhs.true9:                                   ; preds = %cond.end
  %bf.load10 = load i32, i32* %10, align 8, !dbg !4682
  %bf.clear11 = and i32 %bf.load10, 65535, !dbg !4682
  %cmp12 = icmp eq i32 %bf.clear11, 7, !dbg !4682
  br i1 %cmp12, label %if.then, label %if.end, !dbg !4683

if.then:                                          ; preds = %land.lhs.true9
  %12 = load i32, i32* @n_debug_values, align 4, !dbg !4684
  %inc = add nsw i32 %12, 1, !dbg !4684
  store i32 %inc, i32* @n_debug_values, align 4, !dbg !4684
  br label %if.end, !dbg !4685

if.end:                                           ; preds = %cond.end, %if.then, %land.lhs.true9
  ret %struct.elt_loc_list* %1, !dbg !4686
}

declare dso_local %struct.rtx_def* @replace_equiv_address_nv(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local i8* @pool_alloc(%struct.alloc_pool_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_rtx_fmt_e_stat(i32, i32, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cselib_hash_rtx(%struct.rtx_def* %x, i32 %create) unnamed_addr #5 !dbg !4687 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !4691, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata i32 %create, metadata !4692, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata i32 0, metadata !4698, metadata !DIExpression()), !dbg !4719
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !4720
  %bf.load = load i32, i32* %0, align 8, !dbg !4720
  %bf.clear = and i32 %bf.load, 65535, !dbg !4720
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4696, metadata !DIExpression()), !dbg !4719
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4721
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !4721
  %add = add nuw nsw i32 %bf.clear, %bf.clear2, !dbg !4722
  call void @llvm.dbg.value(metadata i32 %add, metadata !4698, metadata !DIExpression()), !dbg !4719
  %trunc = trunc i32 %bf.load to i16, !dbg !4723
  switch i16 %trunc, label %sw.epilog [
    i16 43, label %sw.bb
    i16 37, label %sw.bb
    i16 2, label %sw.bb8
    i16 30, label %sw.bb12
    i16 32, label %sw.bb23
    i16 31, label %sw.bb53
    i16 33, label %sw.bb67
    i16 44, label %sw.bb80
    i16 45, label %sw.bb94
    i16 74, label %cleanup213
    i16 75, label %cleanup213
    i16 76, label %cleanup213
    i16 77, label %cleanup213
    i16 79, label %cleanup213
    i16 78, label %cleanup213
    i16 36, label %cleanup213
    i16 46, label %cleanup213
    i16 26, label %cleanup213
    i16 19, label %cleanup213
    i16 17, label %sw.bb110
  ], !dbg !4723

sw.bb:                                            ; preds = %entry, %entry
  %call = tail call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %x, i32 %bf.clear2, i32 %create) #7, !dbg !4724
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %call, metadata !4693, metadata !DIExpression()), !dbg !4719
  %tobool = icmp eq %struct.cselib_val_struct* %call, null, !dbg !4725
  br i1 %tobool, label %cleanup213, label %if.end, !dbg !4727

if.end:                                           ; preds = %sw.bb
  %hash7 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %call, i64 0, i32 0, !dbg !4728
  %1 = load i32, i32* %hash7, align 8, !dbg !4728
  br label %cleanup213, !dbg !4729

sw.bb8:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4730
  %2 = bitcast %union.rtunion_def* %arrayidx to %struct.tree_decl_minimal**, !dbg !4730
  %3 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %2, align 8, !dbg !4730
  %uid = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %3, i64 0, i32 2, !dbg !4730
  %4 = load i32, i32* %uid, align 4, !dbg !4730
  %add9 = sub i32 256, %4, !dbg !4731
  %add10 = add i32 %add, %add9, !dbg !4732
  call void @llvm.dbg.value(metadata i32 %add10, metadata !4698, metadata !DIExpression()), !dbg !4719
  %tobool11 = icmp eq i32 %add10, 0, !dbg !4733
  %add10. = select i1 %tobool11, i32 2, i32 %add10, !dbg !4733
  br label %cleanup213, !dbg !4734

sw.bb12:                                          ; preds = %entry
  %u13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, !dbg !4735
  %arrayidx14 = bitcast %union.u* %u13 to i64*, !dbg !4735
  %5 = load i64, i64* %arrayidx14, align 8, !dbg !4735
  %6 = trunc i64 %5 to i32, !dbg !4736
  %7 = add i32 %6, 3840, !dbg !4736
  %conv17 = add i32 %add, %7, !dbg !4736
  call void @llvm.dbg.value(metadata i32 %conv17, metadata !4698, metadata !DIExpression()), !dbg !4719
  %tobool18 = icmp eq i32 %conv17, 0, !dbg !4737
  %conv17. = select i1 %tobool18, i32 30, i32 %conv17, !dbg !4737
  br label %cleanup213, !dbg !4738

sw.bb23:                                          ; preds = %entry
  %add28 = shl nuw nsw i32 %add, 1, !dbg !4739
  call void @llvm.dbg.value(metadata i32 %add28, metadata !4698, metadata !DIExpression()), !dbg !4719
  %bf.clear31 = and i32 %bf.load, 16711680, !dbg !4740
  %cmp = icmp eq i32 %bf.clear31, 0, !dbg !4742
  %u34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, !dbg !4743
  br i1 %cmp, label %if.else, label %if.then33, !dbg !4744

if.then33:                                        ; preds = %sw.bb23
  %rv = bitcast %union.u* %u34 to %struct.real_value*, !dbg !4745
  %call35 = tail call i32 @real_hash(%struct.real_value* nonnull %rv) #6, !dbg !4746
  br label %if.end47, !dbg !4747

if.else:                                          ; preds = %sw.bb23
  %arrayidx39 = bitcast %union.u* %u34 to i64*, !dbg !4748
  %8 = load i64, i64* %arrayidx39, align 8, !dbg !4748
  %conv40 = trunc i64 %8 to i32, !dbg !4749
  %arrayidx43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4750
  %9 = bitcast %union.rtunion_def* %arrayidx43 to i64*, !dbg !4750
  %10 = load i64, i64* %9, align 8, !dbg !4750
  %conv44 = trunc i64 %10 to i32, !dbg !4751
  %add45 = add i32 %conv40, %conv44, !dbg !4752
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then33
  %call35.pn = phi i32 [ %call35, %if.then33 ], [ %add45, %if.else ]
  %hash.0 = add i32 %add28, %call35.pn, !dbg !4743
  call void @llvm.dbg.value(metadata i32 %hash.0, metadata !4698, metadata !DIExpression()), !dbg !4719
  %tobool48 = icmp eq i32 %hash.0, 0, !dbg !4753
  %hash.0. = select i1 %tobool48, i32 32, i32 %hash.0, !dbg !4753
  br label %cleanup213, !dbg !4754

sw.bb53:                                          ; preds = %entry
  %add58 = shl nuw nsw i32 %add, 1, !dbg !4755
  call void @llvm.dbg.value(metadata i32 %add58, metadata !4698, metadata !DIExpression()), !dbg !4719
  %u59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, !dbg !4756
  %fv = bitcast %union.u* %u59 to %struct.fixed_value*, !dbg !4756
  %call60 = tail call i32 @fixed_hash(%struct.fixed_value* nonnull %fv) #6, !dbg !4757
  %add61 = add i32 %add58, %call60, !dbg !4758
  call void @llvm.dbg.value(metadata i32 %add61, metadata !4698, metadata !DIExpression()), !dbg !4719
  %tobool62 = icmp eq i32 %add61, 0, !dbg !4759
  %add61. = select i1 %tobool62, i32 31, i32 %add61, !dbg !4759
  br label %cleanup213, !dbg !4760

sw.bb67:                                          ; preds = %entry
  %arrayidx70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4761
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx70 to %struct.rtvec_def**, !dbg !4761
  %11 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4761
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %11, i64 0, i32 0, !dbg !4761
  %12 = load i32, i32* %num_elem, align 8, !dbg !4761
  call void @llvm.dbg.value(metadata i32 %12, metadata !4699, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.value(metadata i32 0, metadata !4694, metadata !DIExpression()), !dbg !4719
  %13 = sext i32 %12 to i64, !dbg !4763
  br label %for.cond, !dbg !4763

for.cond:                                         ; preds = %for.body, %sw.bb67
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.body ], [ 0, %sw.bb67 ], !dbg !4719
  %hash.1 = phi i32 [ %add79, %for.body ], [ %add, %sw.bb67 ], !dbg !4719
  call void @llvm.dbg.value(metadata i64 %indvars.iv15, metadata !4694, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata i32 %hash.1, metadata !4698, metadata !DIExpression()), !dbg !4719
  %cmp71 = icmp slt i64 %indvars.iv15, %13, !dbg !4765
  br i1 %cmp71, label %for.body, label %cleanup213.loopexit5, !dbg !4767

for.body:                                         ; preds = %for.cond
  %14 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4768
  %arrayidx77 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %14, i64 0, i32 1, i64 %indvars.iv15, !dbg !4768
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx77, align 8, !dbg !4768
  call void @llvm.dbg.value(metadata %struct.rtx_def* %15, metadata !4702, metadata !DIExpression()), !dbg !4762
  %call78 = tail call fastcc i32 @cselib_hash_rtx(%struct.rtx_def* %15, i32 0) #7, !dbg !4770
  %add79 = add i32 %hash.1, %call78, !dbg !4771
  call void @llvm.dbg.value(metadata i32 %add79, metadata !4698, metadata !DIExpression()), !dbg !4719
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !4772
  call void @llvm.dbg.value(metadata i32 undef, metadata !4694, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4719
  br label %for.cond, !dbg !4773, !llvm.loop !4774

sw.bb80:                                          ; preds = %entry
  %arrayidx83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4776
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtx_def**, !dbg !4776
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4776
  %u84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i64 0, i32 1, !dbg !4776
  %17 = getelementptr inbounds %union.u, %union.u* %u84, i64 1, i32 0, i32 0, i64 1, !dbg !4776
  %rt_int = bitcast %union.rtunion_def* %17 to i32*, !dbg !4776
  %18 = load i32, i32* %rt_int, align 8, !dbg !4776
  %add87 = add i32 %18, 5632, !dbg !4777
  %add88 = add i32 %add, %add87, !dbg !4778
  call void @llvm.dbg.value(metadata i32 %add88, metadata !4698, metadata !DIExpression()), !dbg !4719
  %tobool89 = icmp eq i32 %add88, 0, !dbg !4779
  %add88. = select i1 %tobool89, i32 44, i32 %add88, !dbg !4779
  br label %cleanup213, !dbg !4780

sw.bb94:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !4703, metadata !DIExpression()), !dbg !4781
  %rt_str = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, i32 0, !dbg !4782
  %19 = load i8*, i8** %rt_str, align 8, !dbg !4782
  call void @llvm.dbg.value(metadata i8* %19, metadata !4705, metadata !DIExpression()), !dbg !4781
  br label %while.cond, !dbg !4783

while.cond:                                       ; preds = %while.body, %sw.bb94
  %h.0 = phi i32 [ 0, %sw.bb94 ], [ %add101, %while.body ], !dbg !4781
  %p.0 = phi i8* [ %19, %sw.bb94 ], [ %incdec.ptr, %while.body ], !dbg !4781
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !4705, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i32 %h.0, metadata !4703, metadata !DIExpression()), !dbg !4781
  %20 = load i8, i8* %p.0, align 1, !dbg !4784
  %tobool98 = icmp eq i8 %20, 0, !dbg !4783
  br i1 %tobool98, label %while.end, label %while.body, !dbg !4783

while.body:                                       ; preds = %while.cond
  %shl = shl i32 %h.0, 7, !dbg !4785
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !4786
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !4705, metadata !DIExpression()), !dbg !4781
  %conv99 = zext i8 %20 to i32, !dbg !4787
  %add100 = add i32 %shl, %conv99, !dbg !4788
  %add101 = add i32 %h.0, %add100, !dbg !4789
  call void @llvm.dbg.value(metadata i32 %add101, metadata !4703, metadata !DIExpression()), !dbg !4781
  br label %while.cond, !dbg !4783, !llvm.loop !4790

while.end:                                        ; preds = %while.cond
  %h.0.lcssa = phi i32 [ %h.0, %while.cond ], !dbg !4781
  call void @llvm.dbg.value(metadata i32 %h.0.lcssa, metadata !4703, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i32 %h.0.lcssa, metadata !4703, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i32 %h.0.lcssa, metadata !4703, metadata !DIExpression()), !dbg !4781
  %add102 = add i32 %h.0.lcssa, 5760, !dbg !4791
  %add103 = add i32 %add, %add102, !dbg !4792
  call void @llvm.dbg.value(metadata i32 %add103, metadata !4698, metadata !DIExpression()), !dbg !4719
  %tobool104 = icmp eq i32 %add103, 0, !dbg !4793
  %add103. = select i1 %tobool104, i32 45, i32 %add103, !dbg !4793
  br label %cleanup213

sw.bb110:                                         ; preds = %entry
  %bf.clear113 = and i32 %bf.load, 134217728, !dbg !4794
  %tobool114 = icmp eq i32 %bf.clear113, 0, !dbg !4794
  br i1 %tobool114, label %sw.epilog, label %cleanup213, !dbg !4796

sw.epilog:                                        ; preds = %sw.bb110, %entry
  %idxprom117 = zext i32 %bf.clear to i64, !dbg !4797
  %arrayidx118 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom117, !dbg !4797
  %21 = load i8, i8* %arrayidx118, align 1, !dbg !4797
  call void @llvm.dbg.value(metadata i8 %21, metadata !4694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4719
  %arrayidx122 = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom117, !dbg !4798
  %22 = load i8*, i8** %arrayidx122, align 8, !dbg !4798
  call void @llvm.dbg.value(metadata i8* %22, metadata !4697, metadata !DIExpression()), !dbg !4719
  %u194 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, !dbg !4799
  %fld195 = bitcast %union.u* %u194 to [1 x %union.rtunion_def]*, !dbg !4799
  %23 = zext i8 %21 to i64, !dbg !4800
  br label %for.cond123, !dbg !4800

for.cond123:                                      ; preds = %for.inc203, %sw.epilog
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.inc203 ], [ %23, %sw.epilog ], !dbg !4801
  %hash.2 = phi i32 [ %hash.8, %for.inc203 ], [ %add, %sw.epilog ], !dbg !4801
  %indvars.iv.next14 = add nsw i64 %indvars.iv13, -1, !dbg !4719
  call void @llvm.dbg.value(metadata i32 undef, metadata !4694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4719
  call void @llvm.dbg.value(metadata i32 %hash.2, metadata !4698, metadata !DIExpression()), !dbg !4719
  %cmp124 = icmp sgt i64 %indvars.iv13, 0, !dbg !4802
  br i1 %cmp124, label %for.body126, label %for.end204, !dbg !4803

for.body126:                                      ; preds = %for.cond123
  %arrayidx128 = getelementptr inbounds i8, i8* %22, i64 %indvars.iv.next14, !dbg !4804
  %24 = load i8, i8* %arrayidx128, align 1, !dbg !4804
  %conv129 = sext i8 %24 to i32, !dbg !4804
  switch i32 %conv129, label %sw.default201 [
    i32 101, label %sw.bb130
    i32 69, label %for.cond144.preheader
    i32 115, label %sw.bb175
    i32 105, label %sw.bb193
    i32 48, label %for.inc203
    i32 116, label %for.inc203
  ], !dbg !4805

for.cond144.preheader:                            ; preds = %for.body126
  %arrayidx148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld195, i64 0, i64 %indvars.iv.next14, !dbg !4806
  %rt_rtvec149 = bitcast %union.rtunion_def* %arrayidx148 to %struct.rtvec_def**, !dbg !4806
  br label %for.cond144, !dbg !4807

sw.bb130:                                         ; preds = %for.body126
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld195, i64 0, i64 %indvars.iv.next14, !dbg !4808
  %rt_rtx135 = bitcast %union.rtunion_def* %arrayidx134 to %struct.rtx_def**, !dbg !4808
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx135, align 8, !dbg !4808
  call void @llvm.dbg.value(metadata %struct.rtx_def* %25, metadata !4706, metadata !DIExpression()), !dbg !4809
  %call136 = tail call fastcc i32 @cselib_hash_rtx(%struct.rtx_def* %25, i32 %create) #7, !dbg !4810
  call void @llvm.dbg.value(metadata i32 %call136, metadata !4712, metadata !DIExpression()), !dbg !4809
  %cmp137 = icmp eq i32 %call136, 0, !dbg !4811
  %add141 = add i32 %hash.2, %call136, !dbg !4813
  call void @llvm.dbg.value(metadata i32 %add141, metadata !4698, metadata !DIExpression()), !dbg !4719
  br i1 %cmp137, label %cleanup213.loopexit4, label %for.inc203

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc172
  %indvars.iv = phi i64 [ 0, %for.cond144.preheader ], [ %indvars.iv.next, %for.inc172 ], !dbg !4801
  %hash.4 = phi i32 [ %hash.2, %for.cond144.preheader ], [ %add168, %for.inc172 ], !dbg !4801
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4695, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata i32 %hash.4, metadata !4698, metadata !DIExpression()), !dbg !4719
  %26 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec149, align 8, !dbg !4814
  %num_elem150 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %26, i64 0, i32 0, !dbg !4814
  %27 = load i32, i32* %num_elem150, align 8, !dbg !4814
  %28 = sext i32 %27 to i64, !dbg !4815
  %cmp151 = icmp slt i64 %indvars.iv, %28, !dbg !4815
  br i1 %cmp151, label %for.body153, label %for.inc203.loopexit, !dbg !4807

for.body153:                                      ; preds = %for.cond144
  %arrayidx162 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %26, i64 0, i32 1, i64 %indvars.iv, !dbg !4816
  %29 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx162, align 8, !dbg !4816
  %call163 = tail call fastcc i32 @cselib_hash_rtx(%struct.rtx_def* %29, i32 %create) #7, !dbg !4817
  call void @llvm.dbg.value(metadata i32 %call163, metadata !4713, metadata !DIExpression()), !dbg !4818
  %cmp164 = icmp eq i32 %call163, 0, !dbg !4819
  call void @llvm.dbg.value(metadata i32 undef, metadata !4698, metadata !DIExpression()), !dbg !4719
  br i1 %cmp164, label %cleanup213.loopexit, label %for.inc172

for.inc172:                                       ; preds = %for.body153
  %add168 = add i32 %hash.4, %call163, !dbg !4821
  call void @llvm.dbg.value(metadata i32 %add168, metadata !4698, metadata !DIExpression()), !dbg !4719
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4822
  call void @llvm.dbg.value(metadata i32 undef, metadata !4695, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4719
  br label %for.cond144, !dbg !4823, !llvm.loop !4824

sw.bb175:                                         ; preds = %for.body126
  %rt_str181 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld195, i64 0, i64 %indvars.iv.next14, i32 0, !dbg !4826
  %30 = load i8*, i8** %rt_str181, align 8, !dbg !4826
  call void @llvm.dbg.value(metadata i8* %30, metadata !4717, metadata !DIExpression()), !dbg !4827
  %tobool182 = icmp eq i8* %30, null, !dbg !4828
  br i1 %tobool182, label %for.inc203, label %while.cond184.preheader, !dbg !4830

while.cond184.preheader:                          ; preds = %sw.bb175
  br label %while.cond184, !dbg !4831

while.cond184:                                    ; preds = %while.cond184.preheader, %while.body186
  %hash.6 = phi i32 [ %add189, %while.body186 ], [ %hash.2, %while.cond184.preheader ], !dbg !4719
  %p176.0 = phi i8* [ %incdec.ptr187, %while.body186 ], [ %30, %while.cond184.preheader ], !dbg !4827
  call void @llvm.dbg.value(metadata i8* %p176.0, metadata !4717, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i32 %hash.6, metadata !4698, metadata !DIExpression()), !dbg !4719
  %31 = load i8, i8* %p176.0, align 1, !dbg !4832
  %tobool185 = icmp eq i8 %31, 0, !dbg !4831
  br i1 %tobool185, label %for.inc203.loopexit3, label %while.body186, !dbg !4831

while.body186:                                    ; preds = %while.cond184
  %incdec.ptr187 = getelementptr inbounds i8, i8* %p176.0, i64 1, !dbg !4833
  call void @llvm.dbg.value(metadata i8* %incdec.ptr187, metadata !4717, metadata !DIExpression()), !dbg !4827
  %conv188 = zext i8 %31 to i32, !dbg !4834
  %add189 = add i32 %hash.6, %conv188, !dbg !4835
  call void @llvm.dbg.value(metadata i32 %add189, metadata !4698, metadata !DIExpression()), !dbg !4719
  br label %while.cond184, !dbg !4831, !llvm.loop !4836

sw.bb193:                                         ; preds = %for.body126
  %arrayidx197 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld195, i64 0, i64 %indvars.iv.next14, !dbg !4837
  %rt_int198 = bitcast %union.rtunion_def* %arrayidx197 to i32*, !dbg !4837
  %32 = load i32, i32* %rt_int198, align 8, !dbg !4837
  %add199 = add i32 %hash.2, %32, !dbg !4838
  call void @llvm.dbg.value(metadata i32 %add199, metadata !4698, metadata !DIExpression()), !dbg !4719
  br label %for.inc203, !dbg !4839

sw.default201:                                    ; preds = %for.body126
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 965, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4840
  br label %for.inc203, !dbg !4841

for.inc203.loopexit:                              ; preds = %for.cond144
  %hash.4.lcssa = phi i32 [ %hash.4, %for.cond144 ], !dbg !4801
  call void @llvm.dbg.value(metadata i32 %hash.4.lcssa, metadata !4698, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata i32 %hash.4.lcssa, metadata !4698, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata i32 %hash.4.lcssa, metadata !4698, metadata !DIExpression()), !dbg !4719
  br label %for.inc203, !dbg !4842

for.inc203.loopexit3:                             ; preds = %while.cond184
  %hash.6.lcssa = phi i32 [ %hash.6, %while.cond184 ], !dbg !4719
  call void @llvm.dbg.value(metadata i32 %hash.6.lcssa, metadata !4698, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata i32 %hash.6.lcssa, metadata !4698, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata i32 %hash.6.lcssa, metadata !4698, metadata !DIExpression()), !dbg !4719
  br label %for.inc203, !dbg !4842

for.inc203:                                       ; preds = %for.inc203.loopexit3, %for.inc203.loopexit, %sw.bb130, %sw.bb175, %sw.bb193, %sw.default201, %for.body126, %for.body126
  %hash.8 = phi i32 [ %hash.2, %sw.default201 ], [ %add199, %sw.bb193 ], [ %add141, %sw.bb130 ], [ %hash.2, %sw.bb175 ], [ %hash.2, %for.body126 ], [ %hash.2, %for.body126 ], [ %hash.4.lcssa, %for.inc203.loopexit ], [ %hash.6.lcssa, %for.inc203.loopexit3 ], !dbg !4719
  call void @llvm.dbg.value(metadata i32 %hash.8, metadata !4698, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata i32 undef, metadata !4694, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4719
  br label %for.cond123, !dbg !4842, !llvm.loop !4843

for.end204:                                       ; preds = %for.cond123
  %hash.2.lcssa = phi i32 [ %hash.2, %for.cond123 ], !dbg !4801
  call void @llvm.dbg.value(metadata i32 %hash.2.lcssa, metadata !4698, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata i32 %hash.2.lcssa, metadata !4698, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata i32 %hash.2.lcssa, metadata !4698, metadata !DIExpression()), !dbg !4719
  %tobool205 = icmp eq i32 %hash.2.lcssa, 0, !dbg !4845
  br i1 %tobool205, label %cond.false207, label %cleanup213, !dbg !4845

cond.false207:                                    ; preds = %for.end204
  %bf.load208 = load i32, i32* %0, align 8, !dbg !4846
  %bf.clear209 = and i32 %bf.load208, 65535, !dbg !4846
  %add210 = add nuw nsw i32 %bf.clear209, 1, !dbg !4847
  br label %cleanup213, !dbg !4845

cleanup213.loopexit:                              ; preds = %for.body153
  br label %cleanup213, !dbg !4848

cleanup213.loopexit4:                             ; preds = %sw.bb130
  br label %cleanup213, !dbg !4848

cleanup213.loopexit5:                             ; preds = %for.cond
  %hash.1.lcssa = phi i32 [ %hash.1, %for.cond ], !dbg !4719
  call void @llvm.dbg.value(metadata i32 %hash.1.lcssa, metadata !4698, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata i32 %hash.1.lcssa, metadata !4698, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.value(metadata i32 %hash.1.lcssa, metadata !4698, metadata !DIExpression()), !dbg !4719
  br label %cleanup213, !dbg !4848

cleanup213:                                       ; preds = %cleanup213.loopexit5, %cleanup213.loopexit4, %cleanup213.loopexit, %sw.bb, %for.end204, %sw.bb110, %cond.false207, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %while.end, %sw.bb80, %sw.bb53, %if.end47, %sw.bb12, %sw.bb8, %if.end
  %retval.5 = phi i32 [ %add103., %while.end ], [ %add88., %sw.bb80 ], [ %add61., %sw.bb53 ], [ %hash.0., %if.end47 ], [ %conv17., %sw.bb12 ], [ %add10., %sw.bb8 ], [ %1, %if.end ], [ 0, %sw.bb ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %sw.bb110 ], [ %add210, %cond.false207 ], [ %hash.2.lcssa, %for.end204 ], [ 0, %cleanup213.loopexit ], [ 0, %cleanup213.loopexit4 ], [ %hash.1.lcssa, %cleanup213.loopexit5 ], !dbg !4719
  ret i32 %retval.5, !dbg !4848
}

declare dso_local i32 @real_hash(%struct.real_value*) local_unnamed_addr #2

declare dso_local i32 @fixed_hash(%struct.fixed_value*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @end_hard_regno(i32 %mode, i32 %regno) unnamed_addr #0 !dbg !4849 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4854, metadata !DIExpression()), !dbg !4856
  call void @llvm.dbg.value(metadata i32 %regno, metadata !4855, metadata !DIExpression()), !dbg !4856
  %idxprom = zext i32 %regno to i64, !dbg !4857
  %idxprom1 = sext i32 %mode to i64, !dbg !4857
  %arrayidx2 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom1, !dbg !4857
  %0 = load i8, i8* %arrayidx2, align 1, !dbg !4857
  %conv = zext i8 %0 to i32, !dbg !4857
  %add = add i32 %conv, %regno, !dbg !4858
  ret i32 %add, !dbg !4859
}

declare dso_local %struct.rtx_def* @canon_rtx(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @get_addr(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @canon_true_dependence(%struct.rtx_def*, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i8 (%struct.rtx_def*, i8)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @cselib_rtx_varies_p(%struct.rtx_def* %x, i8 zeroext %from_alias) #5 !dbg !4860 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !4864, metadata !DIExpression()), !dbg !4866
  call void @llvm.dbg.value(metadata i8 %from_alias, metadata !4865, metadata !DIExpression()), !dbg !4866
  ret i8 0, !dbg !4867
}

declare dso_local %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_rtx_fmt_eee_stat(i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @cselib_invalidate_rtx_note_stores(%struct.rtx_def* %dest, %struct.rtx_def* %ignore, i8* %data) #5 !dbg !4868 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest, metadata !4872, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata %struct.rtx_def* %ignore, metadata !4873, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i8* %data, metadata !4874, metadata !DIExpression()), !dbg !4875
  tail call void @cselib_invalidate_rtx(%struct.rtx_def* %dest) #7, !dbg !4876
  ret void, !dbg !4877
}

declare dso_local i32 @asm_noperands(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cselib_record_set(%struct.rtx_def* %dest, %struct.cselib_val_struct* %src_elt, %struct.cselib_val_struct* %dest_addr_elt) unnamed_addr #5 !dbg !4878 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest, metadata !4882, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %src_elt, metadata !4883, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata %struct.cselib_val_struct* %dest_addr_elt, metadata !4884, metadata !DIExpression()), !dbg !4891
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest, i64 0, i32 0, !dbg !4892
  %bf.load = load i32, i32* %0, align 8, !dbg !4892
  %bf.clear = and i32 %bf.load, 65535, !dbg !4892
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !4892
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4892

cond.true:                                        ; preds = %entry
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dest) #7, !dbg !4893
  br label %cond.end, !dbg !4892

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -1, %entry ], !dbg !4892
  call void @llvm.dbg.value(metadata i32 %cond, metadata !4885, metadata !DIExpression()), !dbg !4891
  %cmp1 = icmp eq %struct.cselib_val_struct* %src_elt, null, !dbg !4894
  br i1 %cmp1, label %cleanup.cont, label %lor.lhs.false, !dbg !4896

lor.lhs.false:                                    ; preds = %cond.end
  %call2 = tail call i32 @side_effects_p(%struct.rtx_def* %dest) #6, !dbg !4897
  %tobool = icmp eq i32 %call2, 0, !dbg !4897
  br i1 %tobool, label %if.end, label %cleanup.cont, !dbg !4898

if.end:                                           ; preds = %lor.lhs.false
  %cmp3 = icmp sgt i32 %cond, -1, !dbg !4899
  br i1 %cmp3, label %if.then4, label %if.else51, !dbg !4900

if.then4:                                         ; preds = %if.end
  %cmp5 = icmp slt i32 %cond, 53, !dbg !4901
  br i1 %cmp5, label %if.then6, label %if.then4.if.end15_crit_edge, !dbg !4902

if.then4.if.end15_crit_edge:                      ; preds = %if.then4
  %.pre2 = sext i32 %cond to i64, !dbg !4903
  br label %if.end15, !dbg !4902

if.then6:                                         ; preds = %if.then4
  %idxprom = sext i32 %cond to i64, !dbg !4905
  %bf.load7 = load i32, i32* %0, align 8, !dbg !4906
  %bf.lshr = lshr i32 %bf.load7, 16, !dbg !4906
  %bf.clear8 = and i32 %bf.lshr, 255, !dbg !4906
  %idxprom9 = zext i32 %bf.clear8 to i64, !dbg !4905
  %arrayidx10 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom9, !dbg !4905
  %1 = load i8, i8* %arrayidx10, align 1, !dbg !4905
  %conv = zext i8 %1 to i32, !dbg !4905
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4886, metadata !DIExpression()), !dbg !4907
  %2 = load i32, i32* @max_value_regs, align 4, !dbg !4908
  %cmp11 = icmp ult i32 %2, %conv, !dbg !4910
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !4911

if.then13:                                        ; preds = %if.then6
  store i32 %conv, i32* @max_value_regs, align 4, !dbg !4912
  br label %if.end15, !dbg !4913

if.end15:                                         ; preds = %if.then4.if.end15_crit_edge, %if.then6, %if.then13
  %idxprom16.pre-phi = phi i64 [ %.pre2, %if.then4.if.end15_crit_edge ], [ %idxprom, %if.then6 ], [ %idxprom, %if.then13 ], !dbg !4903
  %3 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !4903
  %arrayidx17 = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %3, i64 %idxprom16.pre-phi, !dbg !4903
  %4 = load %struct.elt_list*, %struct.elt_list** %arrayidx17, align 8, !dbg !4903
  %cmp18 = icmp eq %struct.elt_list* %4, null, !dbg !4914
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !4915

if.then20:                                        ; preds = %if.end15
  %5 = load i32*, i32** @used_regs, align 8, !dbg !4916
  %6 = load i32, i32* @n_used_regs, align 4, !dbg !4918
  %inc = add i32 %6, 1, !dbg !4918
  store i32 %inc, i32* @n_used_regs, align 4, !dbg !4918
  %idxprom21 = zext i32 %6 to i64, !dbg !4916
  %arrayidx22 = getelementptr inbounds i32, i32* %5, i64 %idxprom21, !dbg !4916
  store i32 %cond, i32* %arrayidx22, align 4, !dbg !4919
  %7 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !4920
  %arrayidx24 = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %7, i64 %idxprom16.pre-phi, !dbg !4920
  %8 = load %struct.elt_list*, %struct.elt_list** %arrayidx24, align 8, !dbg !4920
  %call25 = tail call fastcc %struct.elt_list* @new_elt_list(%struct.elt_list* %8, %struct.cselib_val_struct* nonnull %src_elt) #7, !dbg !4921
  %9 = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !4922
  %arrayidx27 = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %9, i64 %idxprom16.pre-phi, !dbg !4922
  store %struct.elt_list* %call25, %struct.elt_list** %arrayidx27, align 8, !dbg !4923
  br label %if.end39, !dbg !4924

if.else:                                          ; preds = %if.end15
  %elt = getelementptr inbounds %struct.elt_list, %struct.elt_list* %4, i64 0, i32 1, !dbg !4925
  %10 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt, align 8, !dbg !4925
  %cmp30 = icmp eq %struct.cselib_val_struct* %10, null, !dbg !4925
  br i1 %cmp30, label %cond.end34, label %cond.true32, !dbg !4925

cond.true32:                                      ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1993, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4925
  %.pre = load %struct.elt_list**, %struct.elt_list*** @reg_values, align 8, !dbg !4927
  %arrayidx37.phi.trans.insert = getelementptr inbounds %struct.elt_list*, %struct.elt_list** %.pre, i64 %idxprom16.pre-phi, !dbg !4928
  %.pre1 = load %struct.elt_list*, %struct.elt_list** %arrayidx37.phi.trans.insert, align 8, !dbg !4927
  br label %cond.end34, !dbg !4925

cond.end34:                                       ; preds = %if.else, %cond.true32
  %11 = phi %struct.elt_list* [ %4, %if.else ], [ %.pre1, %cond.true32 ], !dbg !4927
  %elt38 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %11, i64 0, i32 1, !dbg !4929
  store %struct.cselib_val_struct* %src_elt, %struct.cselib_val_struct** %elt38, align 8, !dbg !4930
  br label %if.end39

if.end39:                                         ; preds = %cond.end34, %if.then20
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %src_elt, i64 0, i32 3, !dbg !4931
  %12 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8, !dbg !4931
  %cmp40 = icmp eq %struct.elt_loc_list* %12, null, !dbg !4933
  br i1 %cmp40, label %land.lhs.true, label %if.end47, !dbg !4934

land.lhs.true:                                    ; preds = %if.end39
  %val_rtx = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %src_elt, i64 0, i32 2, !dbg !4935
  %13 = bitcast %struct.rtx_def** %val_rtx to i32**, !dbg !4935
  %14 = load i32*, i32** %13, align 8, !dbg !4935
  %bf.load42 = load i32, i32* %14, align 8, !dbg !4935
  %bf.clear44 = and i32 %bf.load42, 67108864, !dbg !4935
  %tobool45 = icmp eq i32 %bf.clear44, 0, !dbg !4935
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !4936

if.then46:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* @n_useless_values, align 4, !dbg !4937
  %dec = add nsw i32 %15, -1, !dbg !4937
  store i32 %dec, i32* @n_useless_values, align 4, !dbg !4937
  br label %if.end47, !dbg !4938

if.end47:                                         ; preds = %land.lhs.true, %if.then46, %if.end39
  %call49 = tail call fastcc %struct.elt_loc_list* @new_elt_loc_list(%struct.elt_loc_list* %12, %struct.rtx_def* %dest) #7, !dbg !4939
  store %struct.elt_loc_list* %call49, %struct.elt_loc_list** %locs, align 8, !dbg !4940
  br label %cleanup.cont, !dbg !4941

if.else51:                                        ; preds = %if.end
  %bf.load52 = load i32, i32* %0, align 8, !dbg !4942
  %bf.clear53 = and i32 %bf.load52, 65535, !dbg !4942
  %cmp54 = icmp eq i32 %bf.clear53, 43, !dbg !4942
  %cmp57 = icmp ne %struct.cselib_val_struct* %dest_addr_elt, null, !dbg !4944
  %or.cond = and i1 %cmp54, %cmp57, !dbg !4945
  br i1 %or.cond, label %land.lhs.true59, label %cleanup.cont, !dbg !4945

land.lhs.true59:                                  ; preds = %if.else51
  %16 = load i8, i8* @cselib_record_memory, align 1, !dbg !4946
  %tobool61 = icmp eq i8 %16, 0, !dbg !4946
  br i1 %tobool61, label %cleanup.cont, label %if.then62, !dbg !4947

if.then62:                                        ; preds = %land.lhs.true59
  %locs63 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %src_elt, i64 0, i32 3, !dbg !4948
  %17 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs63, align 8, !dbg !4948
  %cmp64 = icmp eq %struct.elt_loc_list* %17, null, !dbg !4951
  br i1 %cmp64, label %land.lhs.true66, label %if.end74, !dbg !4952

land.lhs.true66:                                  ; preds = %if.then62
  %val_rtx67 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %src_elt, i64 0, i32 2, !dbg !4953
  %18 = bitcast %struct.rtx_def** %val_rtx67 to i32**, !dbg !4953
  %19 = load i32*, i32** %18, align 8, !dbg !4953
  %bf.load68 = load i32, i32* %19, align 8, !dbg !4953
  %bf.clear70 = and i32 %bf.load68, 67108864, !dbg !4953
  %tobool71 = icmp eq i32 %bf.clear70, 0, !dbg !4953
  br i1 %tobool71, label %if.then72, label %if.end74, !dbg !4954

if.then72:                                        ; preds = %land.lhs.true66
  %20 = load i32, i32* @n_useless_values, align 4, !dbg !4955
  %dec73 = add nsw i32 %20, -1, !dbg !4955
  store i32 %dec73, i32* @n_useless_values, align 4, !dbg !4955
  br label %if.end74, !dbg !4956

if.end74:                                         ; preds = %land.lhs.true66, %if.then72, %if.then62
  tail call fastcc void @add_mem_for_addr(%struct.cselib_val_struct* nonnull %dest_addr_elt, %struct.cselib_val_struct* nonnull %src_elt, %struct.rtx_def* %dest) #7, !dbg !4957
  br label %cleanup.cont, !dbg !4958

cleanup.cont:                                     ; preds = %land.lhs.true59, %lor.lhs.false, %cond.end, %if.else51, %if.end74, %if.end47
  ret void, !dbg !4959
}

declare dso_local i32 @side_effects_p(%struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.usub.sat.i32(i32, i32) #1

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
!llvm.module.flags = !{!1803, !1804, !1805}
!llvm.ident = !{!1806}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "max_value_regs", scope: !2, file: !3, line: 158, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !542, globals: !1705, nameTableKind: None)
!3 = !DIFile(filename: "cselib.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !140, !145, !150, !169, !176, !183, !377, !520}
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
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !378, line: 45, baseType: !7, size: 32, elements: !379)
!378 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519}
!380 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!381 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!382 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!383 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!384 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!385 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!386 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!387 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!388 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!389 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!390 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!391 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!392 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!393 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!394 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!395 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!396 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!397 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!398 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!399 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!400 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!401 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!402 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!403 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!404 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!405 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!406 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!407 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!408 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!409 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!410 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!411 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!412 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!413 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!414 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!415 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!416 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!417 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!418 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!419 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!420 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!421 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!422 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!423 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!424 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!425 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!426 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!427 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!428 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!429 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!430 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!431 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!432 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!433 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!434 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!435 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!436 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!437 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!438 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!439 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!440 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!441 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!442 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!443 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!444 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!445 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!446 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!447 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!448 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!449 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!450 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!451 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!452 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!453 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!454 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!455 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!456 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!457 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!458 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!459 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!460 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!461 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!462 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!463 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!464 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!465 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!466 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!467 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!468 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!469 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!470 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!471 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!472 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!473 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!474 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!475 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!476 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!477 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!478 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!479 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!480 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!481 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!482 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!483 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!484 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!485 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!486 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!487 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!488 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!489 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!490 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!491 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!492 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!493 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!494 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!495 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!496 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!497 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!498 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!499 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!500 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!501 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!502 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!503 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!504 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!505 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!506 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!507 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!508 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!509 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!510 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!511 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!512 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!513 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!514 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!515 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!516 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!517 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!518 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!519 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!520 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !521, line: 36, baseType: !7, size: 32, elements: !522)
!521 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!522 = !{!523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541}
!523 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!524 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!525 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!526 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!527 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!528 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!529 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!530 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!531 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!532 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!533 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!534 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!535 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!536 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!537 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!538 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!539 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!540 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!541 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!542 = !{!543, !544, !545, !546, !549, !550, !5, !377, !552, !7, !1643, !1644, !623, !520, !618, !611, !1645, !1647, !800, !1649, !554, !1651, !1653, !1654}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!545 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !553, line: 50, baseType: !554)
!553 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !378, line: 240, size: 384, elements: !556)
!556 = !{!557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !555, file: !378, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !555, file: !378, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !555, file: !378, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !555, file: !378, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !555, file: !378, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !555, file: !378, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !555, file: !378, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !555, file: !378, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !555, file: !378, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !555, file: !378, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !555, file: !378, line: 321, baseType: !568, size: 320, offset: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !378, line: 315, size: 320, elements: !569)
!569 = !{!570, !1578, !1580, !1641, !1642}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !568, file: !378, line: 316, baseType: !571, size: 64)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 64, elements: !587)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !378, line: 183, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !378, line: 166, size: 64, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !589, !590, !602, !626, !688, !1556, !1557, !1568, !1575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !573, file: !378, line: 168, baseType: !545, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !573, file: !378, line: 169, baseType: !7, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !573, file: !378, line: 170, baseType: !550, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !573, file: !378, line: 171, baseType: !552, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !573, file: !378, line: 172, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !553, line: 53, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !378, line: 359, size: 128, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !582, file: !378, line: 360, baseType: !545, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !582, file: !378, line: 361, baseType: !586, size: 64, offset: 64)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 64, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 1)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !573, file: !378, line: 173, baseType: !5, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !573, file: !378, line: 174, baseType: !591, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !378, line: 133, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 115, size: 32, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600, !601}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !592, file: !378, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !592, file: !378, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !592, file: !378, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !592, file: !378, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !592, file: !378, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !592, file: !378, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !592, file: !378, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !592, file: !378, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !573, file: !378, line: 175, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !605, line: 23, size: 320, elements: !606)
!605 = !DIFile(filename: "./cselib.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!606 = !{!607, !608, !609, !610, !617, !625}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !604, file: !605, line: 25, baseType: !7, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !604, file: !605, line: 28, baseType: !545, size: 32, offset: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "val_rtx", scope: !604, file: !605, line: 31, baseType: !552, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "locs", scope: !604, file: !605, line: 35, baseType: !611, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elt_loc_list", file: !605, line: 45, size: 192, elements: !613)
!613 = !{!614, !615, !616}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !612, file: !605, line: 47, baseType: !611, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !612, file: !605, line: 49, baseType: !552, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "setting_insn", scope: !612, file: !605, line: 51, baseType: !552, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list", scope: !604, file: !605, line: 39, baseType: !618, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elt_list", file: !605, line: 55, size: 128, elements: !620)
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !619, file: !605, line: 56, baseType: !618, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "elt", scope: !619, file: !605, line: 57, baseType: !623, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "cselib_val", file: !605, line: 42, baseType: !604)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next_containing_mem", scope: !604, file: !605, line: 41, baseType: !603, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !573, file: !378, line: 176, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !629, line: 75, size: 256, elements: !630)
!629 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!630 = !{!631, !646, !647, !648}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !628, file: !629, line: 76, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !629, line: 68, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !629, line: 63, size: 320, elements: !635)
!635 = !{!636, !638, !639, !640}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !634, file: !629, line: 64, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !634, file: !629, line: 65, baseType: !637, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !634, file: !629, line: 66, baseType: !7, size: 32, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !634, file: !629, line: 67, baseType: !641, size: 128, offset: 192)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 128, elements: !644)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !629, line: 29, baseType: !643)
!643 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!644 = !{!645}
!645 = !DISubrange(count: 2)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !628, file: !629, line: 77, baseType: !632, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !628, file: !629, line: 78, baseType: !7, size: 32, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !628, file: !629, line: 79, baseType: !649, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !629, line: 49, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !629, line: 45, size: 832, elements: !652)
!652 = !{!653, !654, !655}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !651, file: !629, line: 46, baseType: !637, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !651, file: !629, line: 47, baseType: !627, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !651, file: !629, line: 48, baseType: !656, size: 704, offset: 128)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !657, line: 164, size: 704, elements: !658)
!657 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!658 = !{!659, !661, !671, !672, !673, !674, !675, !676, !680, !684, !685, !686, !687}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !656, file: !657, line: 166, baseType: !660, size: 64)
!660 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !656, file: !657, line: 167, baseType: !662, size: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !657, line: 157, size: 192, elements: !664)
!664 = !{!665, !666, !667}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !663, file: !657, line: 159, baseType: !547, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !663, file: !657, line: 160, baseType: !662, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !663, file: !657, line: 161, baseType: !668, size: 32, offset: 128)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 32, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 4)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !656, file: !657, line: 168, baseType: !547, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !656, file: !657, line: 169, baseType: !547, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !656, file: !657, line: 170, baseType: !547, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !656, file: !657, line: 171, baseType: !660, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !656, file: !657, line: 172, baseType: !545, size: 32, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !656, file: !657, line: 176, baseType: !677, size: 64, offset: 448)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!662, !549, !660}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !656, file: !657, line: 177, baseType: !681, size: 64, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !549, !662}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !656, file: !657, line: 178, baseType: !549, size: 64, offset: 576)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !656, file: !657, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !656, file: !657, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !656, file: !657, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !573, file: !378, line: 177, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !553, line: 56, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !151, line: 3371, size: 1792, elements: !692)
!692 = !{!693, !726, !732, !743, !762, !773, !778, !785, !791, !804, !816, !854, !859, !887, !895, !896, !901, !910, !916, !921, !925, !929, !1180, !1229, !1235, !1242, !1249, !1275, !1300, !1317, !1329, !1351, !1366, !1538}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !691, file: !151, line: 3372, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !151, line: 360, size: 64, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !694, file: !151, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !694, file: !151, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !694, file: !151, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !694, file: !151, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !694, file: !151, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !694, file: !151, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !694, file: !151, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !694, file: !151, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !694, file: !151, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !694, file: !151, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !694, file: !151, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !694, file: !151, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !694, file: !151, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !694, file: !151, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !694, file: !151, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !694, file: !151, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !694, file: !151, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !694, file: !151, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !694, file: !151, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !694, file: !151, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !694, file: !151, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !694, file: !151, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !694, file: !151, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !694, file: !151, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !694, file: !151, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !694, file: !151, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !694, file: !151, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !694, file: !151, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !694, file: !151, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !694, file: !151, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !691, file: !151, line: 3373, baseType: !727, size: 192)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !151, line: 402, size: 192, elements: !728)
!728 = !{!729, !730, !731}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !727, file: !151, line: 403, baseType: !694, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !727, file: !151, line: 404, baseType: !689, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !727, file: !151, line: 405, baseType: !689, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !691, file: !151, line: 3374, baseType: !733, size: 320)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !151, line: 1384, size: 320, elements: !734)
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !733, file: !151, line: 1385, baseType: !727, size: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !733, file: !151, line: 1386, baseType: !737, size: 128, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !738, line: 58, baseType: !739)
!738 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 54, size: 128, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !739, file: !738, line: 56, baseType: !643, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !739, file: !738, line: 57, baseType: !660, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !691, file: !151, line: 3375, baseType: !744, size: 256)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !151, line: 1397, size: 256, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !744, file: !151, line: 1398, baseType: !727, size: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !744, file: !151, line: 1399, baseType: !748, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !750, line: 52, size: 256, elements: !751)
!750 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!751 = !{!752, !753, !754, !755, !756, !757, !758}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !749, file: !750, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !749, file: !750, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !749, file: !750, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !749, file: !750, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !749, file: !750, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !749, file: !750, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !749, file: !750, line: 62, baseType: !759, size: 192, offset: 64)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 192, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 3)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !691, file: !151, line: 3376, baseType: !763, size: 256)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !151, line: 1408, size: 256, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !763, file: !151, line: 1409, baseType: !727, size: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !763, file: !151, line: 1410, baseType: !767, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !769, line: 27, size: 192, elements: !770)
!769 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !768, file: !769, line: 29, baseType: !737, size: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !768, file: !769, line: 30, baseType: !5, size: 32, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !691, file: !151, line: 3377, baseType: !774, size: 256)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !151, line: 1437, size: 256, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !774, file: !151, line: 1438, baseType: !727, size: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !774, file: !151, line: 1439, baseType: !689, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !691, file: !151, line: 3378, baseType: !779, size: 256)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !151, line: 1418, size: 256, elements: !780)
!780 = !{!781, !782, !783}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !779, file: !151, line: 1419, baseType: !727, size: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !779, file: !151, line: 1420, baseType: !545, size: 32, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !779, file: !151, line: 1421, baseType: !784, size: 8, offset: 224)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 8, elements: !587)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !691, file: !151, line: 3379, baseType: !786, size: 320)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !151, line: 1428, size: 320, elements: !787)
!787 = !{!788, !789, !790}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !786, file: !151, line: 1429, baseType: !727, size: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !786, file: !151, line: 1430, baseType: !689, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !786, file: !151, line: 1431, baseType: !689, size: 64, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !691, file: !151, line: 3380, baseType: !792, size: 320)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !151, line: 1460, size: 320, elements: !793)
!793 = !{!794, !795}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !792, file: !151, line: 1461, baseType: !727, size: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !792, file: !151, line: 1462, baseType: !796, size: 128, offset: 192)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !797, line: 31, size: 128, elements: !798)
!797 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!798 = !{!799, !802, !803}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !796, file: !797, line: 32, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !796, file: !797, line: 33, baseType: !7, size: 32, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !796, file: !797, line: 34, baseType: !7, size: 32, offset: 96)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !691, file: !151, line: 3381, baseType: !805, size: 384)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !151, line: 2507, size: 384, elements: !806)
!806 = !{!807, !808, !813, !814, !815}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !805, file: !151, line: 2508, baseType: !727, size: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !805, file: !151, line: 2509, baseType: !809, size: 32, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !810, line: 58, baseType: !811)
!810 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !812, line: 44, baseType: !7)
!812 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!813 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !805, file: !151, line: 2510, baseType: !7, size: 32, offset: 224)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !805, file: !151, line: 2511, baseType: !689, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !805, file: !151, line: 2512, baseType: !689, size: 64, offset: 320)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !691, file: !151, line: 3382, baseType: !817, size: 896)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !151, line: 2652, size: 896, elements: !818)
!818 = !{!819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !817, file: !151, line: 2653, baseType: !805, size: 384)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !817, file: !151, line: 2654, baseType: !689, size: 64, offset: 384)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !817, file: !151, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !817, file: !151, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !817, file: !151, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !817, file: !151, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !817, file: !151, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !817, file: !151, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !817, file: !151, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !817, file: !151, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !817, file: !151, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !817, file: !151, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !817, file: !151, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !817, file: !151, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !817, file: !151, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !817, file: !151, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !817, file: !151, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !817, file: !151, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !817, file: !151, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !817, file: !151, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !817, file: !151, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !817, file: !151, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !817, file: !151, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !817, file: !151, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !817, file: !151, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !817, file: !151, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !817, file: !151, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !817, file: !151, line: 2703, baseType: !7, size: 32, offset: 512)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !817, file: !151, line: 2705, baseType: !689, size: 64, offset: 576)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !817, file: !151, line: 2706, baseType: !689, size: 64, offset: 640)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !817, file: !151, line: 2707, baseType: !689, size: 64, offset: 704)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !817, file: !151, line: 2708, baseType: !689, size: 64, offset: 768)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !817, file: !151, line: 2711, baseType: !852, size: 64, offset: 832)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !151, line: 2711, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !691, file: !151, line: 3383, baseType: !855, size: 960)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !151, line: 2756, size: 960, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !855, file: !151, line: 2757, baseType: !817, size: 896)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !855, file: !151, line: 2758, baseType: !552, size: 64, offset: 896)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !691, file: !151, line: 3384, baseType: !860, size: 1472)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !151, line: 3114, size: 1472, elements: !861)
!861 = !{!862, !883, !884, !885, !886}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !860, file: !151, line: 3115, baseType: !863, size: 1216)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !151, line: 2984, size: 1216, elements: !864)
!864 = !{!865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !863, file: !151, line: 2985, baseType: !855, size: 960)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !863, file: !151, line: 2986, baseType: !689, size: 64, offset: 960)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !863, file: !151, line: 2987, baseType: !689, size: 64, offset: 1024)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !863, file: !151, line: 2988, baseType: !689, size: 64, offset: 1088)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !863, file: !151, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !863, file: !151, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !863, file: !151, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !863, file: !151, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !863, file: !151, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !863, file: !151, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !863, file: !151, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !863, file: !151, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !863, file: !151, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !863, file: !151, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !863, file: !151, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !863, file: !151, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !863, file: !151, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !863, file: !151, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !860, file: !151, line: 3117, baseType: !689, size: 64, offset: 1216)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !860, file: !151, line: 3119, baseType: !689, size: 64, offset: 1280)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !860, file: !151, line: 3121, baseType: !689, size: 64, offset: 1344)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !860, file: !151, line: 3123, baseType: !689, size: 64, offset: 1408)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !691, file: !151, line: 3385, baseType: !888, size: 1088)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !151, line: 2874, size: 1088, elements: !889)
!889 = !{!890, !891, !892}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !888, file: !151, line: 2875, baseType: !855, size: 960)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !888, file: !151, line: 2876, baseType: !552, size: 64, offset: 960)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !888, file: !151, line: 2877, baseType: !893, size: 64, offset: 1024)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !151, line: 2856, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !691, file: !151, line: 3386, baseType: !863, size: 1216)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !691, file: !151, line: 3387, baseType: !897, size: 1280)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !151, line: 3093, size: 1280, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !897, file: !151, line: 3094, baseType: !863, size: 1216)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !897, file: !151, line: 3095, baseType: !893, size: 64, offset: 1216)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !691, file: !151, line: 3388, baseType: !902, size: 1216)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !151, line: 2824, size: 1216, elements: !903)
!903 = !{!904, !905, !906, !907, !908, !909}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !902, file: !151, line: 2825, baseType: !817, size: 896)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !902, file: !151, line: 2827, baseType: !689, size: 64, offset: 896)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !902, file: !151, line: 2828, baseType: !689, size: 64, offset: 960)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !902, file: !151, line: 2829, baseType: !689, size: 64, offset: 1024)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !902, file: !151, line: 2830, baseType: !689, size: 64, offset: 1088)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !902, file: !151, line: 2831, baseType: !689, size: 64, offset: 1152)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !691, file: !151, line: 3389, baseType: !911, size: 1024)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !151, line: 2850, size: 1024, elements: !912)
!912 = !{!913, !914, !915}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !911, file: !151, line: 2851, baseType: !855, size: 960)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !911, file: !151, line: 2852, baseType: !545, size: 32, offset: 960)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !911, file: !151, line: 2853, baseType: !545, size: 32, offset: 992)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !691, file: !151, line: 3390, baseType: !917, size: 1024)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !151, line: 2857, size: 1024, elements: !918)
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !917, file: !151, line: 2858, baseType: !855, size: 960)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !917, file: !151, line: 2859, baseType: !893, size: 64, offset: 960)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !691, file: !151, line: 3391, baseType: !922, size: 960)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !151, line: 2862, size: 960, elements: !923)
!923 = !{!924}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !922, file: !151, line: 2863, baseType: !855, size: 960)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !691, file: !151, line: 3392, baseType: !926, size: 1472)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !151, line: 3304, size: 1472, elements: !927)
!927 = !{!928}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !926, file: !151, line: 3305, baseType: !860, size: 1472)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !691, file: !151, line: 3393, baseType: !930, size: 1792)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !151, line: 3248, size: 1792, elements: !931)
!931 = !{!932, !933, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !930, file: !151, line: 3249, baseType: !860, size: 1472)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !930, file: !151, line: 3251, baseType: !934, size: 64, offset: 1472)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !936, line: 463, size: 1152, elements: !937)
!936 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!937 = !{!938, !941, !1045, !1046, !1049, !1052, !1104, !1105, !1106, !1107, !1108, !1132, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !935, file: !936, line: 464, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !936, line: 464, flags: DIFlagFwdDecl)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !935, file: !936, line: 467, baseType: !942, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !135, line: 374, size: 640, elements: !944)
!944 = !{!945, !1020, !1021, !1034, !1035, !1036, !1037, !1038, !1039, !1041, !1043, !1044}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !943, file: !135, line: 377, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !553, line: 111, baseType: !947)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !135, line: 217, size: 832, elements: !949)
!949 = !{!950, !985, !986, !987, !990, !994, !995, !996, !1014, !1015, !1016, !1017, !1018, !1019}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !948, file: !135, line: 219, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !135, line: 151, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !135, line: 151, size: 128, elements: !954)
!954 = !{!955}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !953, file: !135, line: 151, baseType: !956, size: 128)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !135, line: 150, baseType: !957)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !135, line: 150, size: 128, elements: !958)
!958 = !{!959, !960, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !957, file: !135, line: 150, baseType: !7, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !957, file: !135, line: 150, baseType: !7, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !957, file: !135, line: 150, baseType: !962, size: 64, offset: 64)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !963, size: 64, elements: !587)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !553, line: 108, baseType: !964)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !135, line: 122, size: 512, elements: !966)
!966 = !{!967, !968, !969, !977, !978, !979, !980, !981, !982, !983}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !965, file: !135, line: 124, baseType: !947, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !965, file: !135, line: 125, baseType: !947, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !965, file: !135, line: 131, baseType: !970, size: 64, offset: 128)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !135, line: 128, size: 64, elements: !971)
!971 = !{!972, !976}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !970, file: !135, line: 129, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !553, line: 66, baseType: !974)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !553, line: 65, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !970, file: !135, line: 130, baseType: !552, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !965, file: !135, line: 134, baseType: !549, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !965, file: !135, line: 137, baseType: !689, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !965, file: !135, line: 138, baseType: !809, size: 32, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !965, file: !135, line: 142, baseType: !7, size: 32, offset: 352)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !965, file: !135, line: 144, baseType: !545, size: 32, offset: 384)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !965, file: !135, line: 145, baseType: !545, size: 32, offset: 416)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !965, file: !135, line: 146, baseType: !984, size: 64, offset: 448)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !135, line: 119, baseType: !660)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !948, file: !135, line: 220, baseType: !951, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !948, file: !135, line: 223, baseType: !549, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !948, file: !135, line: 226, baseType: !988, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !135, line: 185, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !948, file: !135, line: 229, baseType: !991, size: 128, offset: 256)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !992, size: 128, elements: !644)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !135, line: 229, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !948, file: !135, line: 232, baseType: !947, size: 64, offset: 384)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !948, file: !135, line: 233, baseType: !947, size: 64, offset: 448)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !948, file: !135, line: 238, baseType: !997, size: 64, offset: 512)
!997 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !135, line: 235, size: 64, elements: !998)
!998 = !{!999, !1005}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !997, file: !135, line: 236, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !135, line: 273, size: 128, elements: !1002)
!1002 = !{!1003, !1004}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1001, file: !135, line: 275, baseType: !973, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1001, file: !135, line: 278, baseType: !973, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !997, file: !135, line: 237, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !135, line: 259, size: 320, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012, !1013}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1007, file: !135, line: 261, baseType: !552, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1007, file: !135, line: 262, baseType: !552, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1007, file: !135, line: 266, baseType: !552, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1007, file: !135, line: 267, baseType: !552, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1007, file: !135, line: 270, baseType: !545, size: 32, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !948, file: !135, line: 241, baseType: !984, size: 64, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !948, file: !135, line: 244, baseType: !545, size: 32, offset: 640)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !948, file: !135, line: 247, baseType: !545, size: 32, offset: 672)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !948, file: !135, line: 250, baseType: !545, size: 32, offset: 704)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !948, file: !135, line: 253, baseType: !545, size: 32, offset: 736)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !948, file: !135, line: 256, baseType: !545, size: 32, offset: 768)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !943, file: !135, line: 378, baseType: !946, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !943, file: !135, line: 381, baseType: !1022, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !135, line: 282, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !135, line: 282, size: 128, elements: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1024, file: !135, line: 282, baseType: !1027, size: 128)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !135, line: 281, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !135, line: 281, size: 128, elements: !1029)
!1029 = !{!1030, !1031, !1032}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1028, file: !135, line: 281, baseType: !7, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1028, file: !135, line: 281, baseType: !7, size: 32, offset: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1028, file: !135, line: 281, baseType: !1033, size: 64, offset: 64)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !946, size: 64, elements: !587)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !943, file: !135, line: 384, baseType: !545, size: 32, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !943, file: !135, line: 387, baseType: !545, size: 32, offset: 224)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !943, file: !135, line: 390, baseType: !545, size: 32, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !943, file: !135, line: 394, baseType: !1022, size: 64, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !943, file: !135, line: 396, baseType: !134, size: 32, offset: 384)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !943, file: !135, line: 399, baseType: !1040, size: 64, offset: 416)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !644)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !943, file: !135, line: 402, baseType: !1042, size: 64, offset: 480)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !644)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !943, file: !135, line: 406, baseType: !545, size: 32, offset: 544)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !943, file: !135, line: 409, baseType: !545, size: 32, offset: 576)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !935, file: !936, line: 470, baseType: !974, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !935, file: !936, line: 473, baseType: !1047, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !936, line: 166, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !935, file: !936, line: 476, baseType: !1050, size: 64, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !936, line: 476, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !935, file: !936, line: 479, baseType: !1053, size: 64, offset: 320)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1054, line: 144, baseType: !1055)
!1054 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1054, line: 100, size: 896, elements: !1057)
!1057 = !{!1058, !1066, !1071, !1076, !1078, !1081, !1082, !1083, !1084, !1085, !1090, !1092, !1093, !1098, !1103}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1056, file: !1054, line: 102, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1054, line: 52, baseType: !1060)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1054, line: 47, baseType: !7)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1056, file: !1054, line: 105, baseType: !1067, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1054, line: 59, baseType: !1068)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!545, !1064, !1064}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1056, file: !1054, line: 108, baseType: !1072, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1054, line: 63, baseType: !1073)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null, !549}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1056, file: !1054, line: 111, baseType: !1077, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1056, file: !1054, line: 114, baseType: !1079, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1080, line: 46, baseType: !643)
!1080 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1056, file: !1054, line: 117, baseType: !1079, size: 64, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1056, file: !1054, line: 120, baseType: !1079, size: 64, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1056, file: !1054, line: 124, baseType: !7, size: 32, offset: 448)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1056, file: !1054, line: 128, baseType: !7, size: 32, offset: 480)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1056, file: !1054, line: 131, baseType: !1086, size: 64, offset: 512)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1054, line: 75, baseType: !1087)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!549, !1079, !1079}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1056, file: !1054, line: 132, baseType: !1091, size: 64, offset: 576)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1054, line: 78, baseType: !1073)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1056, file: !1054, line: 135, baseType: !549, size: 64, offset: 640)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1056, file: !1054, line: 136, baseType: !1094, size: 64, offset: 704)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1054, line: 82, baseType: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!549, !549, !1079, !1079}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1056, file: !1054, line: 137, baseType: !1099, size: 64, offset: 768)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1054, line: 83, baseType: !1100)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{null, !549, !549}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1056, file: !1054, line: 141, baseType: !7, size: 32, offset: 832)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !935, file: !936, line: 484, baseType: !689, size: 64, offset: 384)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !935, file: !936, line: 488, baseType: !689, size: 64, offset: 448)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !935, file: !936, line: 493, baseType: !689, size: 64, offset: 512)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !935, file: !936, line: 496, baseType: !689, size: 64, offset: 576)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !935, file: !936, line: 501, baseType: !1109, size: 64, offset: 640)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !146, line: 2355, size: 576, elements: !1111)
!1111 = !{!1112, !1115, !1116, !1117, !1118, !1120, !1121, !1126, !1127, !1128, !1129, !1130, !1131}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1110, file: !146, line: 2356, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !146, line: 2356, flags: DIFlagFwdDecl)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1110, file: !146, line: 2357, baseType: !550, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1110, file: !146, line: 2358, baseType: !545, size: 32, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1110, file: !146, line: 2359, baseType: !545, size: 32, offset: 160)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1110, file: !146, line: 2360, baseType: !1119, size: 128, offset: 192)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 128, elements: !669)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1110, file: !146, line: 2364, baseType: !545, size: 32, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1110, file: !146, line: 2367, baseType: !1122, size: 128, offset: 384)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !146, line: 2349, size: 128, elements: !1123)
!1123 = !{!1124, !1125}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1122, file: !146, line: 2351, baseType: !552, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1122, file: !146, line: 2352, baseType: !660, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1110, file: !146, line: 2371, baseType: !145, size: 32, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1110, file: !146, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1110, file: !146, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1110, file: !146, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1110, file: !146, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1110, file: !146, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !935, file: !936, line: 504, baseType: !1133, size: 64, offset: 704)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !936, line: 504, flags: DIFlagFwdDecl)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !935, file: !936, line: 507, baseType: !1053, size: 64, offset: 768)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !935, file: !936, line: 510, baseType: !545, size: 32, offset: 832)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !935, file: !936, line: 513, baseType: !545, size: 32, offset: 864)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !935, file: !936, line: 516, baseType: !809, size: 32, offset: 896)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !935, file: !936, line: 519, baseType: !809, size: 32, offset: 928)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !935, file: !936, line: 522, baseType: !7, size: 32, offset: 960)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !935, file: !936, line: 523, baseType: !7, size: 32, offset: 992)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !935, file: !936, line: 528, baseType: !550, size: 64, offset: 1024)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !935, file: !936, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !935, file: !936, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !935, file: !936, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !935, file: !936, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !935, file: !936, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !935, file: !936, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !935, file: !936, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !935, file: !936, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !935, file: !936, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !935, file: !936, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !935, file: !936, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !935, file: !936, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !935, file: !936, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !935, file: !936, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !935, file: !936, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !935, file: !936, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !930, file: !151, line: 3254, baseType: !689, size: 64, offset: 1536)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !930, file: !151, line: 3257, baseType: !689, size: 64, offset: 1600)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !930, file: !151, line: 3258, baseType: !689, size: 64, offset: 1664)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !930, file: !151, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !930, file: !151, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !930, file: !151, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !930, file: !151, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !930, file: !151, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !930, file: !151, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !930, file: !151, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !930, file: !151, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !930, file: !151, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !930, file: !151, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !930, file: !151, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !930, file: !151, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !930, file: !151, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !930, file: !151, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !930, file: !151, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !930, file: !151, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !930, file: !151, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !930, file: !151, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !691, file: !151, line: 3394, baseType: !1181, size: 1344)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !151, line: 2279, size: 1344, elements: !1182)
!1182 = !{!1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1208, !1209, !1210, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1181, file: !151, line: 2280, baseType: !727, size: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1181, file: !151, line: 2281, baseType: !689, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1181, file: !151, line: 2282, baseType: !689, size: 64, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1181, file: !151, line: 2283, baseType: !689, size: 64, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1181, file: !151, line: 2284, baseType: !689, size: 64, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1181, file: !151, line: 2285, baseType: !7, size: 32, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1181, file: !151, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1181, file: !151, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1181, file: !151, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1181, file: !151, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1181, file: !151, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1181, file: !151, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1181, file: !151, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1181, file: !151, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1181, file: !151, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1181, file: !151, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1181, file: !151, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1181, file: !151, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1181, file: !151, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1181, file: !151, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1181, file: !151, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1181, file: !151, line: 2305, baseType: !7, size: 32, offset: 512)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1181, file: !151, line: 2306, baseType: !1206, size: 32, offset: 544)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1207, line: 31, baseType: !545)
!1207 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1181, file: !151, line: 2307, baseType: !689, size: 64, offset: 576)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1181, file: !151, line: 2308, baseType: !689, size: 64, offset: 640)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1181, file: !151, line: 2314, baseType: !1211, size: 64, offset: 704)
!1211 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !151, line: 2309, size: 64, elements: !1212)
!1212 = !{!1213, !1214, !1215}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1211, file: !151, line: 2310, baseType: !545, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1211, file: !151, line: 2311, baseType: !550, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1211, file: !151, line: 2312, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !151, line: 2277, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1181, file: !151, line: 2315, baseType: !689, size: 64, offset: 768)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1181, file: !151, line: 2316, baseType: !689, size: 64, offset: 832)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1181, file: !151, line: 2317, baseType: !689, size: 64, offset: 896)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1181, file: !151, line: 2318, baseType: !689, size: 64, offset: 960)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1181, file: !151, line: 2319, baseType: !689, size: 64, offset: 1024)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1181, file: !151, line: 2320, baseType: !689, size: 64, offset: 1088)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1181, file: !151, line: 2321, baseType: !689, size: 64, offset: 1152)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1181, file: !151, line: 2322, baseType: !689, size: 64, offset: 1216)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1181, file: !151, line: 2324, baseType: !1227, size: 64, offset: 1280)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !151, line: 2324, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !691, file: !151, line: 3395, baseType: !1230, size: 320)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !151, line: 1469, size: 320, elements: !1231)
!1231 = !{!1232, !1233, !1234}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1230, file: !151, line: 1470, baseType: !727, size: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1230, file: !151, line: 1471, baseType: !689, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1230, file: !151, line: 1472, baseType: !689, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !691, file: !151, line: 3396, baseType: !1236, size: 320)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !151, line: 1482, size: 320, elements: !1237)
!1237 = !{!1238, !1239, !1240}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1236, file: !151, line: 1483, baseType: !727, size: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1236, file: !151, line: 1484, baseType: !545, size: 32, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1236, file: !151, line: 1485, baseType: !1241, size: 64, offset: 256)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 64, elements: !587)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !691, file: !151, line: 3397, baseType: !1243, size: 384)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !151, line: 1829, size: 384, elements: !1244)
!1244 = !{!1245, !1246, !1247, !1248}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1243, file: !151, line: 1830, baseType: !727, size: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1243, file: !151, line: 1831, baseType: !809, size: 32, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1243, file: !151, line: 1832, baseType: !689, size: 64, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1243, file: !151, line: 1835, baseType: !1241, size: 64, offset: 320)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !691, file: !151, line: 3398, baseType: !1250, size: 704)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !151, line: 1898, size: 704, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1258, !1259, !1262}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1250, file: !151, line: 1899, baseType: !727, size: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1250, file: !151, line: 1902, baseType: !689, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1250, file: !151, line: 1905, baseType: !1255, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !553, line: 58, baseType: !1256)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !553, line: 57, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1250, file: !151, line: 1908, baseType: !7, size: 32, offset: 320)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1250, file: !151, line: 1911, baseType: !1260, size: 64, offset: 384)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !151, line: 1876, flags: DIFlagFwdDecl)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1250, file: !151, line: 1914, baseType: !1263, size: 256, offset: 448)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !151, line: 1883, size: 256, elements: !1264)
!1264 = !{!1265, !1267, !1268, !1273}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1263, file: !151, line: 1884, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1263, file: !151, line: 1885, baseType: !1266, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1263, file: !151, line: 1891, baseType: !1269, size: 64, offset: 128)
!1269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1263, file: !151, line: 1891, size: 64, elements: !1270)
!1270 = !{!1271, !1272}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1269, file: !151, line: 1891, baseType: !1255, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1269, file: !151, line: 1891, baseType: !689, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1263, file: !151, line: 1892, baseType: !1274, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !691, file: !151, line: 3399, baseType: !1276, size: 704)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !151, line: 2008, size: 704, elements: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283, !1295, !1296, !1297, !1298, !1299}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1276, file: !151, line: 2009, baseType: !727, size: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1276, file: !151, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1276, file: !151, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1276, file: !151, line: 2014, baseType: !809, size: 32, offset: 224)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1276, file: !151, line: 2016, baseType: !689, size: 64, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1276, file: !151, line: 2017, baseType: !1284, size: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !151, line: 183, baseType: !1286)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !151, line: 183, size: 128, elements: !1287)
!1287 = !{!1288}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1286, file: !151, line: 183, baseType: !1289, size: 128)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !151, line: 182, baseType: !1290)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !151, line: 182, size: 128, elements: !1291)
!1291 = !{!1292, !1293, !1294}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1290, file: !151, line: 182, baseType: !7, size: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1290, file: !151, line: 182, baseType: !7, size: 32, offset: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1290, file: !151, line: 182, baseType: !1241, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1276, file: !151, line: 2019, baseType: !689, size: 64, offset: 384)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1276, file: !151, line: 2020, baseType: !689, size: 64, offset: 448)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1276, file: !151, line: 2021, baseType: !689, size: 64, offset: 512)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1276, file: !151, line: 2022, baseType: !689, size: 64, offset: 576)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1276, file: !151, line: 2023, baseType: !689, size: 64, offset: 640)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !691, file: !151, line: 3400, baseType: !1301, size: 832)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !151, line: 2430, size: 832, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1301, file: !151, line: 2431, baseType: !727, size: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1301, file: !151, line: 2433, baseType: !689, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1301, file: !151, line: 2434, baseType: !689, size: 64, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1301, file: !151, line: 2435, baseType: !689, size: 64, offset: 320)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1301, file: !151, line: 2436, baseType: !689, size: 64, offset: 384)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1301, file: !151, line: 2437, baseType: !1284, size: 64, offset: 448)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1301, file: !151, line: 2438, baseType: !689, size: 64, offset: 512)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1301, file: !151, line: 2440, baseType: !689, size: 64, offset: 576)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1301, file: !151, line: 2441, baseType: !689, size: 64, offset: 640)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1301, file: !151, line: 2443, baseType: !1313, size: 128, offset: 704)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !151, line: 182, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !151, line: 182, size: 128, elements: !1315)
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1314, file: !151, line: 182, baseType: !1289, size: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !691, file: !151, line: 3401, baseType: !1318, size: 320)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !151, line: 3327, size: 320, elements: !1319)
!1319 = !{!1320, !1321, !1328}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1318, file: !151, line: 3329, baseType: !727, size: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1318, file: !151, line: 3330, baseType: !1322, size: 64, offset: 192)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !151, line: 3320, size: 192, elements: !1324)
!1324 = !{!1325, !1326, !1327}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1323, file: !151, line: 3322, baseType: !1322, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1323, file: !151, line: 3323, baseType: !1322, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1323, file: !151, line: 3324, baseType: !689, size: 64, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1318, file: !151, line: 3331, baseType: !1322, size: 64, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !691, file: !151, line: 3402, baseType: !1330, size: 256)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !151, line: 1540, size: 256, elements: !1331)
!1331 = !{!1332, !1333}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1330, file: !151, line: 1541, baseType: !727, size: 192)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1330, file: !151, line: 1542, baseType: !1334, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !151, line: 1538, baseType: !1336)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !151, line: 1538, size: 192, elements: !1337)
!1337 = !{!1338}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1336, file: !151, line: 1538, baseType: !1339, size: 192)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !151, line: 1537, baseType: !1340)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !151, line: 1537, size: 192, elements: !1341)
!1341 = !{!1342, !1343, !1344}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1340, file: !151, line: 1537, baseType: !7, size: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1340, file: !151, line: 1537, baseType: !7, size: 32, offset: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1340, file: !151, line: 1537, baseType: !1345, size: 128, offset: 64)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 128, elements: !587)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !151, line: 1535, baseType: !1347)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !151, line: 1532, size: 128, elements: !1348)
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1347, file: !151, line: 1533, baseType: !689, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1347, file: !151, line: 1534, baseType: !689, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !691, file: !151, line: 3403, baseType: !1352, size: 512)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !151, line: 1938, size: 512, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1357, !1363, !1364, !1365}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1352, file: !151, line: 1939, baseType: !727, size: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1352, file: !151, line: 1940, baseType: !809, size: 32, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1352, file: !151, line: 1941, baseType: !150, size: 32, offset: 224)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1352, file: !151, line: 1946, baseType: !1358, size: 32, offset: 256)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !151, line: 1942, size: 32, elements: !1359)
!1359 = !{!1360, !1361, !1362}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1358, file: !151, line: 1943, baseType: !169, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1358, file: !151, line: 1944, baseType: !176, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1358, file: !151, line: 1945, baseType: !183, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1352, file: !151, line: 1950, baseType: !973, size: 64, offset: 320)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1352, file: !151, line: 1951, baseType: !973, size: 64, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1352, file: !151, line: 1953, baseType: !1241, size: 64, offset: 448)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !691, file: !151, line: 3404, baseType: !1367, size: 1664)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !151, line: 3337, size: 1664, elements: !1368)
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1367, file: !151, line: 3338, baseType: !727, size: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1367, file: !151, line: 3341, baseType: !1371, size: 1472, offset: 192)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1372, line: 410, size: 1472, elements: !1373)
!1372 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1371, file: !1372, line: 412, baseType: !545, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1371, file: !1372, line: 413, baseType: !545, size: 32, offset: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1371, file: !1372, line: 414, baseType: !545, size: 32, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1371, file: !1372, line: 415, baseType: !545, size: 32, offset: 96)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1371, file: !1372, line: 416, baseType: !545, size: 32, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1371, file: !1372, line: 417, baseType: !545, size: 32, offset: 160)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1371, file: !1372, line: 418, baseType: !544, size: 8, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1371, file: !1372, line: 419, baseType: !544, size: 8, offset: 200)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1371, file: !1372, line: 420, baseType: !1383, size: 8, offset: 208)
!1383 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1371, file: !1372, line: 421, baseType: !1383, size: 8, offset: 216)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1371, file: !1372, line: 422, baseType: !1383, size: 8, offset: 224)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1371, file: !1372, line: 423, baseType: !1383, size: 8, offset: 232)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1371, file: !1372, line: 424, baseType: !1383, size: 8, offset: 240)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1371, file: !1372, line: 425, baseType: !1383, size: 8, offset: 248)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1371, file: !1372, line: 426, baseType: !1383, size: 8, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1371, file: !1372, line: 427, baseType: !1383, size: 8, offset: 264)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1371, file: !1372, line: 428, baseType: !1383, size: 8, offset: 272)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1371, file: !1372, line: 429, baseType: !1383, size: 8, offset: 280)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1371, file: !1372, line: 430, baseType: !1383, size: 8, offset: 288)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1371, file: !1372, line: 431, baseType: !1383, size: 8, offset: 296)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1371, file: !1372, line: 432, baseType: !1383, size: 8, offset: 304)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1371, file: !1372, line: 433, baseType: !1383, size: 8, offset: 312)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1371, file: !1372, line: 434, baseType: !1383, size: 8, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1371, file: !1372, line: 435, baseType: !1383, size: 8, offset: 328)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1371, file: !1372, line: 436, baseType: !1383, size: 8, offset: 336)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1371, file: !1372, line: 437, baseType: !1383, size: 8, offset: 344)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1371, file: !1372, line: 438, baseType: !1383, size: 8, offset: 352)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1371, file: !1372, line: 439, baseType: !1383, size: 8, offset: 360)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1371, file: !1372, line: 440, baseType: !1383, size: 8, offset: 368)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1371, file: !1372, line: 441, baseType: !1383, size: 8, offset: 376)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1371, file: !1372, line: 442, baseType: !1383, size: 8, offset: 384)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1371, file: !1372, line: 443, baseType: !1383, size: 8, offset: 392)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1371, file: !1372, line: 444, baseType: !1383, size: 8, offset: 400)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1371, file: !1372, line: 445, baseType: !1383, size: 8, offset: 408)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1371, file: !1372, line: 446, baseType: !1383, size: 8, offset: 416)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1371, file: !1372, line: 447, baseType: !1383, size: 8, offset: 424)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1371, file: !1372, line: 448, baseType: !1383, size: 8, offset: 432)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1371, file: !1372, line: 449, baseType: !1383, size: 8, offset: 440)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1371, file: !1372, line: 450, baseType: !1383, size: 8, offset: 448)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1371, file: !1372, line: 451, baseType: !1383, size: 8, offset: 456)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1371, file: !1372, line: 452, baseType: !1383, size: 8, offset: 464)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1371, file: !1372, line: 453, baseType: !1383, size: 8, offset: 472)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1371, file: !1372, line: 454, baseType: !1383, size: 8, offset: 480)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1371, file: !1372, line: 455, baseType: !1383, size: 8, offset: 488)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1371, file: !1372, line: 456, baseType: !1383, size: 8, offset: 496)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1371, file: !1372, line: 457, baseType: !1383, size: 8, offset: 504)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1371, file: !1372, line: 458, baseType: !1383, size: 8, offset: 512)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1371, file: !1372, line: 459, baseType: !1383, size: 8, offset: 520)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1371, file: !1372, line: 460, baseType: !1383, size: 8, offset: 528)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1371, file: !1372, line: 461, baseType: !1383, size: 8, offset: 536)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1371, file: !1372, line: 462, baseType: !1383, size: 8, offset: 544)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1371, file: !1372, line: 463, baseType: !1383, size: 8, offset: 552)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1371, file: !1372, line: 464, baseType: !1383, size: 8, offset: 560)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1371, file: !1372, line: 465, baseType: !1383, size: 8, offset: 568)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1371, file: !1372, line: 466, baseType: !1383, size: 8, offset: 576)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1371, file: !1372, line: 467, baseType: !1383, size: 8, offset: 584)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1371, file: !1372, line: 468, baseType: !1383, size: 8, offset: 592)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1371, file: !1372, line: 469, baseType: !1383, size: 8, offset: 600)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1371, file: !1372, line: 470, baseType: !1383, size: 8, offset: 608)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1371, file: !1372, line: 471, baseType: !1383, size: 8, offset: 616)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1371, file: !1372, line: 472, baseType: !1383, size: 8, offset: 624)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1371, file: !1372, line: 473, baseType: !1383, size: 8, offset: 632)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1371, file: !1372, line: 474, baseType: !1383, size: 8, offset: 640)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1371, file: !1372, line: 475, baseType: !1383, size: 8, offset: 648)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1371, file: !1372, line: 476, baseType: !1383, size: 8, offset: 656)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1371, file: !1372, line: 477, baseType: !1383, size: 8, offset: 664)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1371, file: !1372, line: 478, baseType: !1383, size: 8, offset: 672)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1371, file: !1372, line: 479, baseType: !1383, size: 8, offset: 680)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1371, file: !1372, line: 480, baseType: !1383, size: 8, offset: 688)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1371, file: !1372, line: 481, baseType: !1383, size: 8, offset: 696)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1371, file: !1372, line: 482, baseType: !1383, size: 8, offset: 704)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1371, file: !1372, line: 483, baseType: !1383, size: 8, offset: 712)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1371, file: !1372, line: 484, baseType: !1383, size: 8, offset: 720)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1371, file: !1372, line: 485, baseType: !1383, size: 8, offset: 728)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1371, file: !1372, line: 486, baseType: !1383, size: 8, offset: 736)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1371, file: !1372, line: 487, baseType: !1383, size: 8, offset: 744)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1371, file: !1372, line: 488, baseType: !1383, size: 8, offset: 752)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1371, file: !1372, line: 489, baseType: !1383, size: 8, offset: 760)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1371, file: !1372, line: 490, baseType: !1383, size: 8, offset: 768)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1371, file: !1372, line: 491, baseType: !1383, size: 8, offset: 776)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1371, file: !1372, line: 492, baseType: !1383, size: 8, offset: 784)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1371, file: !1372, line: 493, baseType: !1383, size: 8, offset: 792)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1371, file: !1372, line: 494, baseType: !1383, size: 8, offset: 800)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1371, file: !1372, line: 495, baseType: !1383, size: 8, offset: 808)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1371, file: !1372, line: 496, baseType: !1383, size: 8, offset: 816)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1371, file: !1372, line: 497, baseType: !1383, size: 8, offset: 824)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1371, file: !1372, line: 498, baseType: !1383, size: 8, offset: 832)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1371, file: !1372, line: 499, baseType: !1383, size: 8, offset: 840)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1371, file: !1372, line: 500, baseType: !1383, size: 8, offset: 848)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1371, file: !1372, line: 501, baseType: !1383, size: 8, offset: 856)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1371, file: !1372, line: 502, baseType: !1383, size: 8, offset: 864)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1371, file: !1372, line: 503, baseType: !1383, size: 8, offset: 872)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1371, file: !1372, line: 504, baseType: !1383, size: 8, offset: 880)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1371, file: !1372, line: 505, baseType: !1383, size: 8, offset: 888)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1371, file: !1372, line: 506, baseType: !1383, size: 8, offset: 896)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1371, file: !1372, line: 507, baseType: !1383, size: 8, offset: 904)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1371, file: !1372, line: 508, baseType: !1383, size: 8, offset: 912)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1371, file: !1372, line: 509, baseType: !1383, size: 8, offset: 920)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1371, file: !1372, line: 510, baseType: !1383, size: 8, offset: 928)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1371, file: !1372, line: 511, baseType: !1383, size: 8, offset: 936)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1371, file: !1372, line: 512, baseType: !1383, size: 8, offset: 944)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1371, file: !1372, line: 513, baseType: !1383, size: 8, offset: 952)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1371, file: !1372, line: 514, baseType: !1383, size: 8, offset: 960)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1371, file: !1372, line: 515, baseType: !1383, size: 8, offset: 968)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1371, file: !1372, line: 516, baseType: !1383, size: 8, offset: 976)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1371, file: !1372, line: 517, baseType: !1383, size: 8, offset: 984)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1371, file: !1372, line: 518, baseType: !1383, size: 8, offset: 992)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1371, file: !1372, line: 519, baseType: !1383, size: 8, offset: 1000)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1371, file: !1372, line: 520, baseType: !1383, size: 8, offset: 1008)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1371, file: !1372, line: 521, baseType: !1383, size: 8, offset: 1016)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1371, file: !1372, line: 522, baseType: !1383, size: 8, offset: 1024)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1371, file: !1372, line: 523, baseType: !1383, size: 8, offset: 1032)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1371, file: !1372, line: 524, baseType: !1383, size: 8, offset: 1040)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1371, file: !1372, line: 525, baseType: !1383, size: 8, offset: 1048)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1371, file: !1372, line: 526, baseType: !1383, size: 8, offset: 1056)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1371, file: !1372, line: 527, baseType: !1383, size: 8, offset: 1064)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1371, file: !1372, line: 528, baseType: !1383, size: 8, offset: 1072)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1371, file: !1372, line: 529, baseType: !1383, size: 8, offset: 1080)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1371, file: !1372, line: 530, baseType: !1383, size: 8, offset: 1088)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1371, file: !1372, line: 531, baseType: !1383, size: 8, offset: 1096)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1371, file: !1372, line: 532, baseType: !1383, size: 8, offset: 1104)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1371, file: !1372, line: 533, baseType: !1383, size: 8, offset: 1112)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1371, file: !1372, line: 534, baseType: !1383, size: 8, offset: 1120)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1371, file: !1372, line: 535, baseType: !1383, size: 8, offset: 1128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1371, file: !1372, line: 536, baseType: !1383, size: 8, offset: 1136)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1371, file: !1372, line: 537, baseType: !1383, size: 8, offset: 1144)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1371, file: !1372, line: 538, baseType: !1383, size: 8, offset: 1152)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1371, file: !1372, line: 539, baseType: !1383, size: 8, offset: 1160)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1371, file: !1372, line: 540, baseType: !1383, size: 8, offset: 1168)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1371, file: !1372, line: 541, baseType: !1383, size: 8, offset: 1176)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1371, file: !1372, line: 542, baseType: !1383, size: 8, offset: 1184)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1371, file: !1372, line: 543, baseType: !1383, size: 8, offset: 1192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1371, file: !1372, line: 544, baseType: !1383, size: 8, offset: 1200)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1371, file: !1372, line: 545, baseType: !1383, size: 8, offset: 1208)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1371, file: !1372, line: 546, baseType: !1383, size: 8, offset: 1216)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1371, file: !1372, line: 547, baseType: !1383, size: 8, offset: 1224)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1371, file: !1372, line: 548, baseType: !1383, size: 8, offset: 1232)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1371, file: !1372, line: 549, baseType: !1383, size: 8, offset: 1240)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1371, file: !1372, line: 550, baseType: !1383, size: 8, offset: 1248)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1371, file: !1372, line: 551, baseType: !1383, size: 8, offset: 1256)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1371, file: !1372, line: 552, baseType: !1383, size: 8, offset: 1264)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1371, file: !1372, line: 553, baseType: !1383, size: 8, offset: 1272)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1371, file: !1372, line: 554, baseType: !1383, size: 8, offset: 1280)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1371, file: !1372, line: 555, baseType: !1383, size: 8, offset: 1288)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1371, file: !1372, line: 556, baseType: !1383, size: 8, offset: 1296)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1371, file: !1372, line: 557, baseType: !1383, size: 8, offset: 1304)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1371, file: !1372, line: 558, baseType: !1383, size: 8, offset: 1312)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1371, file: !1372, line: 559, baseType: !1383, size: 8, offset: 1320)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1371, file: !1372, line: 560, baseType: !1383, size: 8, offset: 1328)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1371, file: !1372, line: 561, baseType: !1383, size: 8, offset: 1336)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1371, file: !1372, line: 562, baseType: !1383, size: 8, offset: 1344)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1371, file: !1372, line: 563, baseType: !1383, size: 8, offset: 1352)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1371, file: !1372, line: 564, baseType: !1383, size: 8, offset: 1360)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1371, file: !1372, line: 565, baseType: !1383, size: 8, offset: 1368)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1371, file: !1372, line: 566, baseType: !1383, size: 8, offset: 1376)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1371, file: !1372, line: 567, baseType: !1383, size: 8, offset: 1384)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1371, file: !1372, line: 568, baseType: !1383, size: 8, offset: 1392)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1371, file: !1372, line: 569, baseType: !1383, size: 8, offset: 1400)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1371, file: !1372, line: 570, baseType: !1383, size: 8, offset: 1408)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1371, file: !1372, line: 571, baseType: !1383, size: 8, offset: 1416)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1371, file: !1372, line: 572, baseType: !1383, size: 8, offset: 1424)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1371, file: !1372, line: 573, baseType: !1383, size: 8, offset: 1432)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1371, file: !1372, line: 574, baseType: !1383, size: 8, offset: 1440)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !691, file: !151, line: 3405, baseType: !1539, size: 384)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !151, line: 3352, size: 384, elements: !1540)
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1539, file: !151, line: 3353, baseType: !727, size: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1539, file: !151, line: 3356, baseType: !1543, size: 192, offset: 192)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1372, line: 578, size: 192, elements: !1544)
!1544 = !{!1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1543, file: !1372, line: 580, baseType: !545, size: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1543, file: !1372, line: 581, baseType: !545, size: 32, offset: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1543, file: !1372, line: 582, baseType: !545, size: 32, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1543, file: !1372, line: 583, baseType: !545, size: 32, offset: 96)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1543, file: !1372, line: 584, baseType: !544, size: 8, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1543, file: !1372, line: 585, baseType: !544, size: 8, offset: 136)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1543, file: !1372, line: 586, baseType: !544, size: 8, offset: 144)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1543, file: !1372, line: 587, baseType: !544, size: 8, offset: 152)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1543, file: !1372, line: 588, baseType: !544, size: 8, offset: 160)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1543, file: !1372, line: 589, baseType: !544, size: 8, offset: 168)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1543, file: !1372, line: 590, baseType: !544, size: 8, offset: 176)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !573, file: !378, line: 178, baseType: !947, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !573, file: !378, line: 179, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !378, line: 150, baseType: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !378, line: 142, size: 320, elements: !1561)
!1561 = !{!1562, !1563, !1564, !1565, !1566, !1567}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1560, file: !378, line: 144, baseType: !689, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1560, file: !378, line: 145, baseType: !552, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1560, file: !378, line: 146, baseType: !552, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1560, file: !378, line: 147, baseType: !1206, size: 32, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1560, file: !378, line: 148, baseType: !7, size: 32, offset: 224)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1560, file: !378, line: 149, baseType: !544, size: 8, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !573, file: !378, line: 180, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !378, line: 162, baseType: !1571)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !378, line: 159, size: 128, elements: !1572)
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1571, file: !378, line: 160, baseType: !689, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1571, file: !378, line: 161, baseType: !660, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !573, file: !378, line: 181, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !378, line: 181, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !568, file: !378, line: 317, baseType: !1579, size: 64)
!1579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 64, elements: !587)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !568, file: !378, line: 318, baseType: !1581, size: 320)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !378, line: 188, size: 320, elements: !1582)
!1582 = !{!1583, !1585, !1640}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1581, file: !378, line: 190, baseType: !1584, size: 192)
!1584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 192, elements: !760)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1581, file: !378, line: 193, baseType: !1586, size: 64, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !378, line: 206, size: 320, elements: !1588)
!1588 = !{!1589, !1625, !1626, !1627, !1639}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1587, file: !378, line: 208, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !553, line: 62, baseType: !1592)
!1592 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1593, line: 538, size: 256, elements: !1594)
!1593 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1594 = !{!1595, !1599, !1605, !1616}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1592, file: !1593, line: 539, baseType: !1596, size: 32)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1593, line: 482, size: 32, elements: !1597)
!1597 = !{!1598}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1596, file: !1593, line: 484, baseType: !7, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1592, file: !1593, line: 540, baseType: !1600, size: 192)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1593, line: 488, size: 192, elements: !1601)
!1601 = !{!1602, !1603, !1604}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1600, file: !1593, line: 489, baseType: !1596, size: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1600, file: !1593, line: 492, baseType: !550, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1600, file: !1593, line: 496, baseType: !689, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1592, file: !1593, line: 541, baseType: !1606, size: 256)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1593, line: 504, size: 256, elements: !1607)
!1607 = !{!1608, !1609, !1614, !1615}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1606, file: !1593, line: 505, baseType: !1596, size: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1606, file: !1593, line: 509, baseType: !1610, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1593, line: 501, baseType: !1611)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !1064}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1606, file: !1593, line: 510, baseType: !1064, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1606, file: !1593, line: 513, baseType: !1590, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1592, file: !1593, line: 542, baseType: !1617, size: 128)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1593, line: 530, size: 128, elements: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1617, file: !1593, line: 531, baseType: !1596, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1617, file: !1593, line: 534, baseType: !1621, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1593, line: 525, baseType: !1622)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!544, !689, !550, !643, !643}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1587, file: !378, line: 211, baseType: !7, size: 32, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1587, file: !378, line: 214, baseType: !660, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1587, file: !378, line: 224, baseType: !1628, size: 64, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !378, line: 202, baseType: !1630)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !378, line: 202, size: 128, elements: !1631)
!1631 = !{!1632}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1630, file: !378, line: 202, baseType: !1633, size: 128)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !378, line: 200, baseType: !1634)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !378, line: 200, size: 128, elements: !1635)
!1635 = !{!1636, !1637, !1638}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1634, file: !378, line: 200, baseType: !7, size: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1634, file: !378, line: 200, baseType: !7, size: 32, offset: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1634, file: !378, line: 200, baseType: !586, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1587, file: !378, line: 234, baseType: !1628, size: 64, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1581, file: !378, line: 197, baseType: !660, size: 64, offset: 256)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !568, file: !378, line: 319, baseType: !749, size: 256)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !568, file: !378, line: 320, baseType: !768, size: 192)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !749)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !768)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !553, line: 51, baseType: !1651)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1656, line: 7, baseType: !1657)
!1656 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1658, line: 49, size: 1728, elements: !1659)
!1658 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1659 = !{!1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1675, !1677, !1678, !1679, !1682, !1684, !1685, !1686, !1689, !1691, !1694, !1697, !1698, !1699, !1700, !1701}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1657, file: !1658, line: 51, baseType: !545, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1657, file: !1658, line: 54, baseType: !547, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1657, file: !1658, line: 55, baseType: !547, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1657, file: !1658, line: 56, baseType: !547, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1657, file: !1658, line: 57, baseType: !547, size: 64, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1657, file: !1658, line: 58, baseType: !547, size: 64, offset: 320)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1657, file: !1658, line: 59, baseType: !547, size: 64, offset: 384)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1657, file: !1658, line: 60, baseType: !547, size: 64, offset: 448)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1657, file: !1658, line: 61, baseType: !547, size: 64, offset: 512)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1657, file: !1658, line: 64, baseType: !547, size: 64, offset: 576)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1657, file: !1658, line: 65, baseType: !547, size: 64, offset: 640)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1657, file: !1658, line: 66, baseType: !547, size: 64, offset: 704)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1657, file: !1658, line: 68, baseType: !1673, size: 64, offset: 768)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1658, line: 36, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1657, file: !1658, line: 70, baseType: !1676, size: 64, offset: 832)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1657, file: !1658, line: 72, baseType: !545, size: 32, offset: 896)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1657, file: !1658, line: 73, baseType: !545, size: 32, offset: 928)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1657, file: !1658, line: 74, baseType: !1680, size: 64, offset: 960)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1681, line: 152, baseType: !660)
!1681 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1657, file: !1658, line: 77, baseType: !1683, size: 16, offset: 1024)
!1683 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1657, file: !1658, line: 78, baseType: !1383, size: 8, offset: 1040)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1657, file: !1658, line: 79, baseType: !784, size: 8, offset: 1048)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1657, file: !1658, line: 81, baseType: !1687, size: 64, offset: 1088)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1658, line: 43, baseType: null)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1657, file: !1658, line: 89, baseType: !1690, size: 64, offset: 1152)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1681, line: 153, baseType: !660)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1657, file: !1658, line: 91, baseType: !1692, size: 64, offset: 1216)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1658, line: 37, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1657, file: !1658, line: 92, baseType: !1695, size: 64, offset: 1280)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1658, line: 38, flags: DIFlagFwdDecl)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1657, file: !1658, line: 93, baseType: !1676, size: 64, offset: 1344)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1657, file: !1658, line: 94, baseType: !549, size: 64, offset: 1408)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1657, file: !1658, line: 95, baseType: !1079, size: 64, offset: 1472)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1657, file: !1658, line: 96, baseType: !545, size: 32, offset: 1536)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1657, file: !1658, line: 98, baseType: !1702, size: 160, offset: 1568)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 160, elements: !1703)
!1703 = !{!1704}
!1704 = !DISubrange(count: 20)
!1705 = !{!1706, !1720, !1722, !1724, !1726, !1728, !1730, !1732, !1734, !1736, !1738, !1740, !0, !1742, !1744, !1746, !1748, !1750, !1752, !1775, !1777, !1779, !1781, !1786, !1798, !1800}
!1706 = !DIGlobalVariableExpression(var: !1707, expr: !DIExpression())
!1707 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_cselib_h", scope: !2, file: !1708, line: 24, type: !1709, isLocal: false, isDefinition: true)
!1708 = !DIFile(filename: "./gt-cselib.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1710, size: 640, elements: !644)
!1710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1711)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !1712, line: 69, size: 320, elements: !1713)
!1712 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1713 = !{!1714, !1715, !1716, !1717, !1719}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1711, file: !1712, line: 70, baseType: !549, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !1711, file: !1712, line: 71, baseType: !1079, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1711, file: !1712, line: 72, baseType: !1079, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1711, file: !1712, line: 73, baseType: !1718, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !1712, line: 65, baseType: !1073)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !1711, file: !1712, line: 74, baseType: !1718, size: 64, offset: 256)
!1720 = !DIGlobalVariableExpression(var: !1721, expr: !DIExpression())
!1721 = distinct !DIGlobalVariable(name: "cselib_record_memory", scope: !2, file: !3, line: 47, type: !544, isLocal: true, isDefinition: true)
!1722 = !DIGlobalVariableExpression(var: !1723, expr: !DIExpression())
!1723 = distinct !DIGlobalVariable(name: "cselib_preserve_constants", scope: !2, file: !3, line: 48, type: !544, isLocal: true, isDefinition: true)
!1724 = !DIGlobalVariableExpression(var: !1725, expr: !DIExpression())
!1725 = distinct !DIGlobalVariable(name: "cselib_hash_table", scope: !2, file: !3, line: 88, type: !1053, isLocal: true, isDefinition: true)
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(name: "cselib_current_insn", scope: !2, file: !3, line: 92, type: !552, isLocal: true, isDefinition: true)
!1728 = !DIGlobalVariableExpression(var: !1729, expr: !DIExpression())
!1729 = distinct !DIGlobalVariable(name: "next_uid", scope: !2, file: !3, line: 95, type: !7, isLocal: true, isDefinition: true)
!1730 = !DIGlobalVariableExpression(var: !1731, expr: !DIExpression())
!1731 = distinct !DIGlobalVariable(name: "cselib_nregs", scope: !2, file: !3, line: 98, type: !7, isLocal: true, isDefinition: true)
!1732 = !DIGlobalVariableExpression(var: !1733, expr: !DIExpression())
!1733 = distinct !DIGlobalVariable(name: "n_useless_values", scope: !2, file: !3, line: 135, type: !545, isLocal: true, isDefinition: true)
!1734 = !DIGlobalVariableExpression(var: !1735, expr: !DIExpression())
!1735 = distinct !DIGlobalVariable(name: "n_useless_debug_values", scope: !2, file: !3, line: 136, type: !545, isLocal: true, isDefinition: true)
!1736 = !DIGlobalVariableExpression(var: !1737, expr: !DIExpression())
!1737 = distinct !DIGlobalVariable(name: "n_debug_values", scope: !2, file: !3, line: 140, type: !545, isLocal: true, isDefinition: true)
!1738 = !DIGlobalVariableExpression(var: !1739, expr: !DIExpression())
!1739 = distinct !DIGlobalVariable(name: "reg_values", scope: !2, file: !3, line: 152, type: !1643, isLocal: true, isDefinition: true)
!1740 = !DIGlobalVariableExpression(var: !1741, expr: !DIExpression())
!1741 = distinct !DIGlobalVariable(name: "reg_values_size", scope: !2, file: !3, line: 153, type: !7, isLocal: true, isDefinition: true)
!1742 = !DIGlobalVariableExpression(var: !1743, expr: !DIExpression())
!1743 = distinct !DIGlobalVariable(name: "used_regs", scope: !2, file: !3, line: 162, type: !1644, isLocal: true, isDefinition: true)
!1744 = !DIGlobalVariableExpression(var: !1745, expr: !DIExpression())
!1745 = distinct !DIGlobalVariable(name: "n_used_regs", scope: !2, file: !3, line: 163, type: !7, isLocal: true, isDefinition: true)
!1746 = !DIGlobalVariableExpression(var: !1747, expr: !DIExpression())
!1747 = distinct !DIGlobalVariable(name: "callmem", scope: !2, file: !3, line: 167, type: !552, isLocal: true, isDefinition: true)
!1748 = !DIGlobalVariableExpression(var: !1749, expr: !DIExpression())
!1749 = distinct !DIGlobalVariable(name: "dummy_val", scope: !2, file: !3, line: 175, type: !624, isLocal: true, isDefinition: true)
!1750 = !DIGlobalVariableExpression(var: !1751, expr: !DIExpression())
!1751 = distinct !DIGlobalVariable(name: "cfa_base_preserved_val", scope: !2, file: !3, line: 180, type: !623, isLocal: true, isDefinition: true)
!1752 = !DIGlobalVariableExpression(var: !1753, expr: !DIExpression())
!1753 = distinct !DIGlobalVariable(name: "elt_loc_list_pool", scope: !2, file: !3, line: 186, type: !1754, isLocal: true, isDefinition: true)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_pool", file: !1755, line: 58, baseType: !1756)
!1755 = !DIFile(filename: "./alloc-pool.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc_pool_def", file: !1755, line: 32, size: 704, elements: !1758)
!1758 = !{!1759, !1760, !1761, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1757, file: !1755, line: 34, baseType: !550, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "elts_per_block", scope: !1757, file: !1755, line: 38, baseType: !1079, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "returned_free_list", scope: !1757, file: !1755, line: 41, baseType: !1762, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_pool_list", file: !1755, line: 30, baseType: !1763)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc_pool_list_def", file: !1755, line: 26, size: 64, elements: !1765)
!1765 = !{!1766}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1764, file: !1755, line: 28, baseType: !1763, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "virgin_free_list", scope: !1757, file: !1755, line: 45, baseType: !547, size: 64, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "virgin_elts_remaining", scope: !1757, file: !1755, line: 49, baseType: !1079, size: 64, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "elts_allocated", scope: !1757, file: !1755, line: 51, baseType: !1079, size: 64, offset: 320)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "elts_free", scope: !1757, file: !1755, line: 52, baseType: !1079, size: 64, offset: 384)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_allocated", scope: !1757, file: !1755, line: 53, baseType: !1079, size: 64, offset: 448)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "block_list", scope: !1757, file: !1755, line: 54, baseType: !1762, size: 64, offset: 512)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !1757, file: !1755, line: 55, baseType: !1079, size: 64, offset: 576)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "elt_size", scope: !1757, file: !1755, line: 56, baseType: !1079, size: 64, offset: 640)
!1775 = !DIGlobalVariableExpression(var: !1776, expr: !DIExpression())
!1776 = distinct !DIGlobalVariable(name: "elt_list_pool", scope: !2, file: !3, line: 186, type: !1754, isLocal: true, isDefinition: true)
!1777 = !DIGlobalVariableExpression(var: !1778, expr: !DIExpression())
!1778 = distinct !DIGlobalVariable(name: "cselib_val_pool", scope: !2, file: !3, line: 186, type: !1754, isLocal: true, isDefinition: true)
!1779 = !DIGlobalVariableExpression(var: !1780, expr: !DIExpression())
!1780 = distinct !DIGlobalVariable(name: "value_pool", scope: !2, file: !3, line: 186, type: !1754, isLocal: true, isDefinition: true)
!1781 = !DIGlobalVariableExpression(var: !1782, expr: !DIExpression())
!1782 = distinct !DIGlobalVariable(name: "cselib_discard_hook", scope: !2, file: !3, line: 190, type: !1783, isLocal: false, isDefinition: true)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null, !623}
!1786 = !DIGlobalVariableExpression(var: !1787, expr: !DIExpression())
!1787 = distinct !DIGlobalVariable(name: "cselib_record_sets_hook", scope: !2, file: !3, line: 197, type: !1788, isLocal: false, isDefinition: true)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{null, !552, !1791, !545}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_set", file: !605, line: 61, size: 256, elements: !1793)
!1793 = !{!1794, !1795, !1796, !1797}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1792, file: !605, line: 63, baseType: !552, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1792, file: !605, line: 64, baseType: !552, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "src_elt", scope: !1792, file: !605, line: 65, baseType: !623, size: 64, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "dest_addr_elt", scope: !1792, file: !605, line: 66, baseType: !623, size: 64, offset: 192)
!1798 = !DIGlobalVariableExpression(var: !1799, expr: !DIExpression())
!1799 = distinct !DIGlobalVariable(name: "first_containing_mem", scope: !2, file: !3, line: 185, type: !623, isLocal: true, isDefinition: true)
!1800 = !DIGlobalVariableExpression(var: !1801, expr: !DIExpression())
!1801 = distinct !DIGlobalVariable(name: "values_became_useless", scope: !2, file: !3, line: 171, type: !545, isLocal: true, isDefinition: true)
!1802 = !DIGlobalVariableExpression(var: !1801, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1803 = !{i32 2, !"Dwarf Version", i32 4}
!1804 = !{i32 2, !"Debug Info Version", i32 3}
!1805 = !{i32 1, !"wchar_size", i32 4}
!1806 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1807 = distinct !DISubprogram(name: "vprintf", scope: !1808, file: !1808, line: 39, type: !1809, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1819)
!1808 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!545, !1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !550)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1814)
!1814 = !{!1815, !1816, !1817, !1818}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1813, file: !3, baseType: !7, size: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1813, file: !3, baseType: !7, size: 32, offset: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1813, file: !3, baseType: !549, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1813, file: !3, baseType: !549, size: 64, offset: 128)
!1819 = !{!1820, !1821}
!1820 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1807, file: !1808, line: 39, type: !1811)
!1821 = !DILocalVariable(name: "__arg", arg: 2, scope: !1807, file: !1808, line: 39, type: !1812)
!1822 = !DILocation(line: 0, scope: !1807)
!1823 = !DILocation(line: 41, column: 20, scope: !1807)
!1824 = !DILocation(line: 41, column: 10, scope: !1807)
!1825 = !DILocation(line: 41, column: 3, scope: !1807)
!1826 = distinct !DISubprogram(name: "getchar", scope: !1808, file: !1808, line: 47, type: !1827, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1829)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!545}
!1829 = !{}
!1830 = !DILocation(line: 49, column: 16, scope: !1826)
!1831 = !DILocation(line: 49, column: 10, scope: !1826)
!1832 = !DILocation(line: 49, column: 3, scope: !1826)
!1833 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1808, file: !1808, line: 56, type: !1834, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1836)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!545, !1654}
!1836 = !{!1837}
!1837 = !DILocalVariable(name: "__fp", arg: 1, scope: !1833, file: !1808, line: 56, type: !1654)
!1838 = !DILocation(line: 0, scope: !1833)
!1839 = !DILocation(line: 58, column: 10, scope: !1833)
!1840 = !DILocation(line: 58, column: 3, scope: !1833)
!1841 = distinct !DISubprogram(name: "getc_unlocked", scope: !1808, file: !1808, line: 66, type: !1834, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1842)
!1842 = !{!1843}
!1843 = !DILocalVariable(name: "__fp", arg: 1, scope: !1841, file: !1808, line: 66, type: !1654)
!1844 = !DILocation(line: 0, scope: !1841)
!1845 = !DILocation(line: 68, column: 10, scope: !1841)
!1846 = !DILocation(line: 68, column: 3, scope: !1841)
!1847 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1808, file: !1808, line: 73, type: !1827, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1829)
!1848 = !DILocation(line: 75, column: 10, scope: !1847)
!1849 = !DILocation(line: 75, column: 3, scope: !1847)
!1850 = distinct !DISubprogram(name: "putchar", scope: !1808, file: !1808, line: 82, type: !1851, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1853)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!545, !545}
!1853 = !{!1854}
!1854 = !DILocalVariable(name: "__c", arg: 1, scope: !1850, file: !1808, line: 82, type: !545)
!1855 = !DILocation(line: 0, scope: !1850)
!1856 = !DILocation(line: 84, column: 21, scope: !1850)
!1857 = !DILocation(line: 84, column: 10, scope: !1850)
!1858 = !DILocation(line: 84, column: 3, scope: !1850)
!1859 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1808, file: !1808, line: 91, type: !1860, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1862)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!545, !545, !1654}
!1862 = !{!1863, !1864}
!1863 = !DILocalVariable(name: "__c", arg: 1, scope: !1859, file: !1808, line: 91, type: !545)
!1864 = !DILocalVariable(name: "__stream", arg: 2, scope: !1859, file: !1808, line: 91, type: !1654)
!1865 = !DILocation(line: 0, scope: !1859)
!1866 = !DILocation(line: 93, column: 10, scope: !1859)
!1867 = !DILocation(line: 93, column: 3, scope: !1859)
!1868 = distinct !DISubprogram(name: "putc_unlocked", scope: !1808, file: !1808, line: 101, type: !1860, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1869)
!1869 = !{!1870, !1871}
!1870 = !DILocalVariable(name: "__c", arg: 1, scope: !1868, file: !1808, line: 101, type: !545)
!1871 = !DILocalVariable(name: "__stream", arg: 2, scope: !1868, file: !1808, line: 101, type: !1654)
!1872 = !DILocation(line: 0, scope: !1868)
!1873 = !DILocation(line: 103, column: 10, scope: !1868)
!1874 = !DILocation(line: 103, column: 3, scope: !1868)
!1875 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1808, file: !1808, line: 108, type: !1851, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1876)
!1876 = !{!1877}
!1877 = !DILocalVariable(name: "__c", arg: 1, scope: !1875, file: !1808, line: 108, type: !545)
!1878 = !DILocation(line: 0, scope: !1875)
!1879 = !DILocation(line: 110, column: 10, scope: !1875)
!1880 = !DILocation(line: 110, column: 3, scope: !1875)
!1881 = distinct !DISubprogram(name: "getline", scope: !1808, file: !1808, line: 118, type: !1882, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1886)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!1884, !546, !1885, !1654}
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1681, line: 193, baseType: !660)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1886 = !{!1887, !1888, !1889}
!1887 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1881, file: !1808, line: 118, type: !546)
!1888 = !DILocalVariable(name: "__n", arg: 2, scope: !1881, file: !1808, line: 118, type: !1885)
!1889 = !DILocalVariable(name: "__stream", arg: 3, scope: !1881, file: !1808, line: 118, type: !1654)
!1890 = !DILocation(line: 0, scope: !1881)
!1891 = !DILocation(line: 120, column: 10, scope: !1881)
!1892 = !DILocation(line: 120, column: 3, scope: !1881)
!1893 = distinct !DISubprogram(name: "feof_unlocked", scope: !1808, file: !1808, line: 128, type: !1834, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1894)
!1894 = !{!1895}
!1895 = !DILocalVariable(name: "__stream", arg: 1, scope: !1893, file: !1808, line: 128, type: !1654)
!1896 = !DILocation(line: 0, scope: !1893)
!1897 = !DILocation(line: 130, column: 10, scope: !1893)
!1898 = !DILocation(line: 130, column: 3, scope: !1893)
!1899 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1808, file: !1808, line: 135, type: !1834, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1900)
!1900 = !{!1901}
!1901 = !DILocalVariable(name: "__stream", arg: 1, scope: !1899, file: !1808, line: 135, type: !1654)
!1902 = !DILocation(line: 0, scope: !1899)
!1903 = !DILocation(line: 137, column: 10, scope: !1899)
!1904 = !DILocation(line: 137, column: 3, scope: !1899)
!1905 = distinct !DISubprogram(name: "tolower", scope: !1906, file: !1906, line: 207, type: !1851, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1907)
!1906 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1907 = !{!1908}
!1908 = !DILocalVariable(name: "__c", arg: 1, scope: !1905, file: !1906, line: 207, type: !545)
!1909 = !DILocation(line: 0, scope: !1905)
!1910 = !DILocation(line: 209, column: 22, scope: !1905)
!1911 = !DILocation(line: 209, column: 39, scope: !1905)
!1912 = !DILocation(line: 209, column: 38, scope: !1905)
!1913 = !DILocation(line: 209, column: 37, scope: !1905)
!1914 = !DILocation(line: 209, column: 10, scope: !1905)
!1915 = !DILocation(line: 209, column: 3, scope: !1905)
!1916 = distinct !DISubprogram(name: "toupper", scope: !1906, file: !1906, line: 213, type: !1851, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1917)
!1917 = !{!1918}
!1918 = !DILocalVariable(name: "__c", arg: 1, scope: !1916, file: !1906, line: 213, type: !545)
!1919 = !DILocation(line: 0, scope: !1916)
!1920 = !DILocation(line: 215, column: 22, scope: !1916)
!1921 = !DILocation(line: 215, column: 39, scope: !1916)
!1922 = !DILocation(line: 215, column: 38, scope: !1916)
!1923 = !DILocation(line: 215, column: 37, scope: !1916)
!1924 = !DILocation(line: 215, column: 10, scope: !1916)
!1925 = !DILocation(line: 215, column: 3, scope: !1916)
!1926 = distinct !DISubprogram(name: "atoi", scope: !1927, file: !1927, line: 361, type: !1928, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1930)
!1927 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!545, !550}
!1930 = !{!1931}
!1931 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1926, file: !1927, line: 361, type: !550)
!1932 = !DILocation(line: 0, scope: !1926)
!1933 = !DILocation(line: 363, column: 16, scope: !1926)
!1934 = !DILocation(line: 363, column: 10, scope: !1926)
!1935 = !DILocation(line: 363, column: 3, scope: !1926)
!1936 = distinct !DISubprogram(name: "atol", scope: !1927, file: !1927, line: 366, type: !1937, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1939)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!660, !550}
!1939 = !{!1940}
!1940 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1936, file: !1927, line: 366, type: !550)
!1941 = !DILocation(line: 0, scope: !1936)
!1942 = !DILocation(line: 368, column: 10, scope: !1936)
!1943 = !DILocation(line: 368, column: 3, scope: !1936)
!1944 = distinct !DISubprogram(name: "atoll", scope: !1927, file: !1927, line: 373, type: !1945, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1948)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!1947, !550}
!1947 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1948 = !{!1949}
!1949 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1944, file: !1927, line: 373, type: !550)
!1950 = !DILocation(line: 0, scope: !1944)
!1951 = !DILocation(line: 375, column: 10, scope: !1944)
!1952 = !DILocation(line: 375, column: 3, scope: !1944)
!1953 = distinct !DISubprogram(name: "bsearch", scope: !1954, file: !1954, line: 20, type: !1955, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1958)
!1954 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!549, !1064, !1064, !1079, !1079, !1957}
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1927, line: 808, baseType: !1068)
!1958 = !{!1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968}
!1959 = !DILocalVariable(name: "__key", arg: 1, scope: !1953, file: !1954, line: 20, type: !1064)
!1960 = !DILocalVariable(name: "__base", arg: 2, scope: !1953, file: !1954, line: 20, type: !1064)
!1961 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1953, file: !1954, line: 20, type: !1079)
!1962 = !DILocalVariable(name: "__size", arg: 4, scope: !1953, file: !1954, line: 20, type: !1079)
!1963 = !DILocalVariable(name: "__compar", arg: 5, scope: !1953, file: !1954, line: 21, type: !1957)
!1964 = !DILocalVariable(name: "__l", scope: !1953, file: !1954, line: 23, type: !1079)
!1965 = !DILocalVariable(name: "__u", scope: !1953, file: !1954, line: 23, type: !1079)
!1966 = !DILocalVariable(name: "__idx", scope: !1953, file: !1954, line: 23, type: !1079)
!1967 = !DILocalVariable(name: "__p", scope: !1953, file: !1954, line: 24, type: !1064)
!1968 = !DILocalVariable(name: "__comparison", scope: !1953, file: !1954, line: 25, type: !545)
!1969 = !DILocation(line: 0, scope: !1953)
!1970 = !DILocation(line: 29, column: 3, scope: !1953)
!1971 = !DILocation(line: 27, column: 7, scope: !1953)
!1972 = !DILocation(line: 29, column: 14, scope: !1953)
!1973 = !DILocation(line: 31, column: 20, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1953, file: !1954, line: 30, column: 5)
!1975 = !DILocation(line: 31, column: 27, scope: !1974)
!1976 = !DILocation(line: 32, column: 56, scope: !1974)
!1977 = !DILocation(line: 32, column: 47, scope: !1974)
!1978 = !DILocation(line: 33, column: 22, scope: !1974)
!1979 = !DILocation(line: 34, column: 24, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1974, file: !1954, line: 34, column: 11)
!1981 = !DILocation(line: 34, column: 11, scope: !1974)
!1982 = !DILocation(line: 36, column: 29, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1980, file: !1954, line: 36, column: 16)
!1984 = !DILocation(line: 36, column: 16, scope: !1980)
!1985 = !DILocation(line: 37, column: 14, scope: !1983)
!1986 = distinct !{!1986, !1970, !1987}
!1987 = !DILocation(line: 40, column: 5, scope: !1953)
!1988 = !DILocation(line: 43, column: 1, scope: !1953)
!1989 = distinct !DISubprogram(name: "atof", scope: !1990, file: !1990, line: 25, type: !1991, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1994)
!1990 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!1993, !550}
!1993 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1994 = !{!1995}
!1995 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1989, file: !1990, line: 25, type: !550)
!1996 = !DILocation(line: 0, scope: !1989)
!1997 = !DILocation(line: 27, column: 10, scope: !1989)
!1998 = !DILocation(line: 27, column: 3, scope: !1989)
!1999 = distinct !DISubprogram(name: "strtoimax", scope: !2000, file: !2000, line: 324, type: !2001, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2007)
!2000 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!2003, !1811, !2006, !545}
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2004, line: 101, baseType: !2005)
!2004 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1681, line: 72, baseType: !660)
!2006 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !546)
!2007 = !{!2008, !2009, !2010}
!2008 = !DILocalVariable(name: "nptr", arg: 1, scope: !1999, file: !2000, line: 324, type: !1811)
!2009 = !DILocalVariable(name: "endptr", arg: 2, scope: !1999, file: !2000, line: 324, type: !2006)
!2010 = !DILocalVariable(name: "base", arg: 3, scope: !1999, file: !2000, line: 324, type: !545)
!2011 = !DILocation(line: 0, scope: !1999)
!2012 = !DILocation(line: 327, column: 10, scope: !1999)
!2013 = !DILocation(line: 327, column: 3, scope: !1999)
!2014 = distinct !DISubprogram(name: "strtoumax", scope: !2000, file: !2000, line: 336, type: !2015, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2019)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!2017, !1811, !2006, !545}
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2004, line: 102, baseType: !2018)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1681, line: 73, baseType: !643)
!2019 = !{!2020, !2021, !2022}
!2020 = !DILocalVariable(name: "nptr", arg: 1, scope: !2014, file: !2000, line: 336, type: !1811)
!2021 = !DILocalVariable(name: "endptr", arg: 2, scope: !2014, file: !2000, line: 336, type: !2006)
!2022 = !DILocalVariable(name: "base", arg: 3, scope: !2014, file: !2000, line: 336, type: !545)
!2023 = !DILocation(line: 0, scope: !2014)
!2024 = !DILocation(line: 339, column: 10, scope: !2014)
!2025 = !DILocation(line: 339, column: 3, scope: !2014)
!2026 = distinct !DISubprogram(name: "wcstoimax", scope: !2000, file: !2000, line: 348, type: !2027, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2036)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!2003, !2029, !2033, !545}
!2029 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2030)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2032)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2000, line: 34, baseType: !545)
!2033 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2034)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2036 = !{!2037, !2038, !2039}
!2037 = !DILocalVariable(name: "nptr", arg: 1, scope: !2026, file: !2000, line: 348, type: !2029)
!2038 = !DILocalVariable(name: "endptr", arg: 2, scope: !2026, file: !2000, line: 348, type: !2033)
!2039 = !DILocalVariable(name: "base", arg: 3, scope: !2026, file: !2000, line: 348, type: !545)
!2040 = !DILocation(line: 0, scope: !2026)
!2041 = !DILocation(line: 351, column: 10, scope: !2026)
!2042 = !DILocation(line: 351, column: 3, scope: !2026)
!2043 = distinct !DISubprogram(name: "wcstoumax", scope: !2000, file: !2000, line: 362, type: !2044, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2046)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!2017, !2029, !2033, !545}
!2046 = !{!2047, !2048, !2049}
!2047 = !DILocalVariable(name: "nptr", arg: 1, scope: !2043, file: !2000, line: 362, type: !2029)
!2048 = !DILocalVariable(name: "endptr", arg: 2, scope: !2043, file: !2000, line: 362, type: !2033)
!2049 = !DILocalVariable(name: "base", arg: 3, scope: !2043, file: !2000, line: 362, type: !545)
!2050 = !DILocation(line: 0, scope: !2043)
!2051 = !DILocation(line: 365, column: 10, scope: !2043)
!2052 = !DILocation(line: 365, column: 3, scope: !2043)
!2053 = distinct !DISubprogram(name: "stat", scope: !2054, file: !2054, line: 453, type: !2055, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2092)
!2054 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!545, !550, !2057}
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2059, line: 46, size: 1152, elements: !2060)
!2059 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2060 = !{!2061, !2063, !2065, !2067, !2069, !2071, !2073, !2074, !2075, !2076, !2078, !2080, !2088, !2089, !2090}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2058, file: !2059, line: 48, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1681, line: 145, baseType: !643)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2058, file: !2059, line: 53, baseType: !2064, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1681, line: 148, baseType: !643)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2058, file: !2059, line: 61, baseType: !2066, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1681, line: 151, baseType: !643)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2058, file: !2059, line: 62, baseType: !2068, size: 32, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1681, line: 150, baseType: !7)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2058, file: !2059, line: 64, baseType: !2070, size: 32, offset: 224)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1681, line: 146, baseType: !7)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2058, file: !2059, line: 65, baseType: !2072, size: 32, offset: 256)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1681, line: 147, baseType: !7)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2058, file: !2059, line: 67, baseType: !545, size: 32, offset: 288)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2058, file: !2059, line: 69, baseType: !2062, size: 64, offset: 320)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2058, file: !2059, line: 74, baseType: !1680, size: 64, offset: 384)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2058, file: !2059, line: 78, baseType: !2077, size: 64, offset: 448)
!2077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1681, line: 174, baseType: !660)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2058, file: !2059, line: 80, baseType: !2079, size: 64, offset: 512)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1681, line: 179, baseType: !660)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2058, file: !2059, line: 91, baseType: !2081, size: 128, offset: 576)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2082, line: 10, size: 128, elements: !2083)
!2082 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2083 = !{!2084, !2086}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2081, file: !2082, line: 12, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1681, line: 160, baseType: !660)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2081, file: !2082, line: 16, baseType: !2087, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1681, line: 196, baseType: !660)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2058, file: !2059, line: 92, baseType: !2081, size: 128, offset: 704)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2058, file: !2059, line: 93, baseType: !2081, size: 128, offset: 832)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2058, file: !2059, line: 106, baseType: !2091, size: 192, offset: 960)
!2091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2087, size: 192, elements: !760)
!2092 = !{!2093, !2094}
!2093 = !DILocalVariable(name: "__path", arg: 1, scope: !2053, file: !2054, line: 453, type: !550)
!2094 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2053, file: !2054, line: 453, type: !2057)
!2095 = !DILocation(line: 0, scope: !2053)
!2096 = !DILocation(line: 455, column: 10, scope: !2053)
!2097 = !DILocation(line: 455, column: 3, scope: !2053)
!2098 = distinct !DISubprogram(name: "lstat", scope: !2054, file: !2054, line: 460, type: !2055, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2099)
!2099 = !{!2100, !2101}
!2100 = !DILocalVariable(name: "__path", arg: 1, scope: !2098, file: !2054, line: 460, type: !550)
!2101 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2098, file: !2054, line: 460, type: !2057)
!2102 = !DILocation(line: 0, scope: !2098)
!2103 = !DILocation(line: 462, column: 10, scope: !2098)
!2104 = !DILocation(line: 462, column: 3, scope: !2098)
!2105 = distinct !DISubprogram(name: "fstat", scope: !2054, file: !2054, line: 467, type: !2106, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2108)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!545, !545, !2057}
!2108 = !{!2109, !2110}
!2109 = !DILocalVariable(name: "__fd", arg: 1, scope: !2105, file: !2054, line: 467, type: !545)
!2110 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2105, file: !2054, line: 467, type: !2057)
!2111 = !DILocation(line: 0, scope: !2105)
!2112 = !DILocation(line: 469, column: 10, scope: !2105)
!2113 = !DILocation(line: 469, column: 3, scope: !2105)
!2114 = distinct !DISubprogram(name: "fstatat", scope: !2054, file: !2054, line: 474, type: !2115, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2117)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!545, !545, !550, !2057, !545}
!2117 = !{!2118, !2119, !2120, !2121}
!2118 = !DILocalVariable(name: "__fd", arg: 1, scope: !2114, file: !2054, line: 474, type: !545)
!2119 = !DILocalVariable(name: "__filename", arg: 2, scope: !2114, file: !2054, line: 474, type: !550)
!2120 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2114, file: !2054, line: 474, type: !2057)
!2121 = !DILocalVariable(name: "__flag", arg: 4, scope: !2114, file: !2054, line: 474, type: !545)
!2122 = !DILocation(line: 0, scope: !2114)
!2123 = !DILocation(line: 477, column: 10, scope: !2114)
!2124 = !DILocation(line: 477, column: 3, scope: !2114)
!2125 = distinct !DISubprogram(name: "mknod", scope: !2054, file: !2054, line: 483, type: !2126, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2128)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!545, !550, !2068, !2062}
!2128 = !{!2129, !2130, !2131}
!2129 = !DILocalVariable(name: "__path", arg: 1, scope: !2125, file: !2054, line: 483, type: !550)
!2130 = !DILocalVariable(name: "__mode", arg: 2, scope: !2125, file: !2054, line: 483, type: !2068)
!2131 = !DILocalVariable(name: "__dev", arg: 3, scope: !2125, file: !2054, line: 483, type: !2062)
!2132 = !DILocation(line: 0, scope: !2125)
!2133 = !DILocation(line: 485, column: 10, scope: !2125)
!2134 = !DILocation(line: 485, column: 3, scope: !2125)
!2135 = distinct !DISubprogram(name: "mknodat", scope: !2054, file: !2054, line: 491, type: !2136, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!545, !545, !550, !2068, !2062}
!2138 = !{!2139, !2140, !2141, !2142}
!2139 = !DILocalVariable(name: "__fd", arg: 1, scope: !2135, file: !2054, line: 491, type: !545)
!2140 = !DILocalVariable(name: "__path", arg: 2, scope: !2135, file: !2054, line: 491, type: !550)
!2141 = !DILocalVariable(name: "__mode", arg: 3, scope: !2135, file: !2054, line: 491, type: !2068)
!2142 = !DILocalVariable(name: "__dev", arg: 4, scope: !2135, file: !2054, line: 491, type: !2062)
!2143 = !DILocation(line: 0, scope: !2135)
!2144 = !DILocation(line: 494, column: 10, scope: !2135)
!2145 = !DILocation(line: 494, column: 3, scope: !2135)
!2146 = distinct !DISubprogram(name: "stat64", scope: !2054, file: !2054, line: 502, type: !2147, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2169)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!545, !550, !2149}
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2059, line: 119, size: 1152, elements: !2151)
!2151 = !{!2152, !2153, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2165, !2166, !2167, !2168}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2150, file: !2059, line: 121, baseType: !2062, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2150, file: !2059, line: 123, baseType: !2154, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1681, line: 149, baseType: !643)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2150, file: !2059, line: 124, baseType: !2066, size: 64, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2150, file: !2059, line: 125, baseType: !2068, size: 32, offset: 192)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2150, file: !2059, line: 132, baseType: !2070, size: 32, offset: 224)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2150, file: !2059, line: 133, baseType: !2072, size: 32, offset: 256)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2150, file: !2059, line: 135, baseType: !545, size: 32, offset: 288)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2150, file: !2059, line: 136, baseType: !2062, size: 64, offset: 320)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2150, file: !2059, line: 137, baseType: !1680, size: 64, offset: 384)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2150, file: !2059, line: 143, baseType: !2077, size: 64, offset: 448)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2150, file: !2059, line: 144, baseType: !2164, size: 64, offset: 512)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1681, line: 180, baseType: !660)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2150, file: !2059, line: 152, baseType: !2081, size: 128, offset: 576)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2150, file: !2059, line: 153, baseType: !2081, size: 128, offset: 704)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2150, file: !2059, line: 154, baseType: !2081, size: 128, offset: 832)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2150, file: !2059, line: 164, baseType: !2091, size: 192, offset: 960)
!2169 = !{!2170, !2171}
!2170 = !DILocalVariable(name: "__path", arg: 1, scope: !2146, file: !2054, line: 502, type: !550)
!2171 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2146, file: !2054, line: 502, type: !2149)
!2172 = !DILocation(line: 0, scope: !2146)
!2173 = !DILocation(line: 504, column: 10, scope: !2146)
!2174 = !DILocation(line: 504, column: 3, scope: !2146)
!2175 = distinct !DISubprogram(name: "lstat64", scope: !2054, file: !2054, line: 509, type: !2147, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2176)
!2176 = !{!2177, !2178}
!2177 = !DILocalVariable(name: "__path", arg: 1, scope: !2175, file: !2054, line: 509, type: !550)
!2178 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2175, file: !2054, line: 509, type: !2149)
!2179 = !DILocation(line: 0, scope: !2175)
!2180 = !DILocation(line: 511, column: 10, scope: !2175)
!2181 = !DILocation(line: 511, column: 3, scope: !2175)
!2182 = distinct !DISubprogram(name: "fstat64", scope: !2054, file: !2054, line: 516, type: !2183, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2185)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!545, !545, !2149}
!2185 = !{!2186, !2187}
!2186 = !DILocalVariable(name: "__fd", arg: 1, scope: !2182, file: !2054, line: 516, type: !545)
!2187 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2182, file: !2054, line: 516, type: !2149)
!2188 = !DILocation(line: 0, scope: !2182)
!2189 = !DILocation(line: 518, column: 10, scope: !2182)
!2190 = !DILocation(line: 518, column: 3, scope: !2182)
!2191 = distinct !DISubprogram(name: "fstatat64", scope: !2054, file: !2054, line: 523, type: !2192, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2194)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!545, !545, !550, !2149, !545}
!2194 = !{!2195, !2196, !2197, !2198}
!2195 = !DILocalVariable(name: "__fd", arg: 1, scope: !2191, file: !2054, line: 523, type: !545)
!2196 = !DILocalVariable(name: "__filename", arg: 2, scope: !2191, file: !2054, line: 523, type: !550)
!2197 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2191, file: !2054, line: 523, type: !2149)
!2198 = !DILocalVariable(name: "__flag", arg: 4, scope: !2191, file: !2054, line: 523, type: !545)
!2199 = !DILocation(line: 0, scope: !2191)
!2200 = !DILocation(line: 526, column: 10, scope: !2191)
!2201 = !DILocation(line: 526, column: 3, scope: !2191)
!2202 = distinct !DISubprogram(name: "cselib_clear_table", scope: !3, file: !3, line: 295, type: !2203, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1829)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{null}
!2205 = !DILocation(line: 297, column: 3, scope: !2202)
!2206 = !DILocation(line: 298, column: 1, scope: !2202)
!2207 = distinct !DISubprogram(name: "cselib_reset_table", scope: !3, file: !3, line: 333, type: !2208, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2210)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !7}
!2210 = !{!2211, !2212, !2213, !2216}
!2211 = !DILocalVariable(name: "num", arg: 1, scope: !2207, file: !3, line: 333, type: !7)
!2212 = !DILocalVariable(name: "i", scope: !2207, file: !3, line: 335, type: !7)
!2213 = !DILocalVariable(name: "regno", scope: !2214, file: !3, line: 341, type: !7)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 340, column: 5)
!2215 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 339, column: 7)
!2216 = !DILocalVariable(name: "new_used_regs", scope: !2214, file: !3, line: 342, type: !7)
!2217 = !DILocation(line: 0, scope: !2207)
!2218 = !DILocation(line: 337, column: 18, scope: !2207)
!2219 = !DILocation(line: 339, column: 7, scope: !2215)
!2220 = !DILocation(line: 339, column: 7, scope: !2207)
!2221 = !DILocation(line: 359, column: 23, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 359, column: 7)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 359, column: 7)
!2224 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 358, column: 5)
!2225 = !DILocation(line: 359, column: 21, scope: !2222)
!2226 = !DILocation(line: 359, column: 7, scope: !2223)
!2227 = !DILocation(line: 341, column: 28, scope: !2214)
!2228 = !DILocation(line: 0, scope: !2214)
!2229 = !DILocation(line: 343, column: 23, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 343, column: 7)
!2231 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 343, column: 7)
!2232 = !DILocation(line: 343, column: 21, scope: !2230)
!2233 = !DILocation(line: 343, column: 12, scope: !2231)
!2234 = !DILocation(line: 0, scope: !2231)
!2235 = !DILocation(line: 343, column: 7, scope: !2231)
!2236 = !DILocation(line: 344, column: 6, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 344, column: 6)
!2238 = !DILocation(line: 344, column: 19, scope: !2237)
!2239 = !DILocation(line: 344, column: 6, scope: !2230)
!2240 = !DILocation(line: 350, column: 4, scope: !2237)
!2241 = !DILocation(line: 350, column: 30, scope: !2237)
!2242 = !DILocation(line: 344, column: 22, scope: !2237)
!2243 = !DILocation(line: 343, column: 37, scope: !2230)
!2244 = !DILocation(line: 343, column: 7, scope: !2230)
!2245 = distinct !{!2245, !2235, !2246}
!2246 = !DILocation(line: 350, column: 32, scope: !2231)
!2247 = !DILocation(line: 351, column: 7, scope: !2214)
!2248 = !DILocation(line: 352, column: 19, scope: !2214)
!2249 = !DILocation(line: 353, column: 7, scope: !2214)
!2250 = !DILocation(line: 353, column: 20, scope: !2214)
!2251 = !DILocation(line: 355, column: 4, scope: !2214)
!2252 = !DILocation(line: 355, column: 28, scope: !2214)
!2253 = !DILocation(line: 355, column: 2, scope: !2214)
!2254 = !DILocation(line: 356, column: 5, scope: !2214)
!2255 = !DILocation(line: 0, scope: !2223)
!2256 = !DILocation(line: 360, column: 2, scope: !2222)
!2257 = !DILocation(line: 360, column: 28, scope: !2222)
!2258 = !DILocation(line: 359, column: 37, scope: !2222)
!2259 = !DILocation(line: 359, column: 7, scope: !2222)
!2260 = distinct !{!2260, !2226, !2261}
!2261 = !DILocation(line: 360, column: 30, scope: !2223)
!2262 = !DILocation(line: 361, column: 19, scope: !2224)
!2263 = !DILocation(line: 364, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 364, column: 7)
!2265 = !DILocation(line: 0, scope: !2264)
!2266 = !DILocation(line: 364, column: 7, scope: !2207)
!2267 = !DILocation(line: 365, column: 5, scope: !2264)
!2268 = !DILocation(line: 367, column: 5, scope: !2264)
!2269 = !DILocation(line: 369, column: 20, scope: !2207)
!2270 = !DILocation(line: 370, column: 26, scope: !2207)
!2271 = !DILocation(line: 371, column: 18, scope: !2207)
!2272 = !DILocation(line: 373, column: 12, scope: !2207)
!2273 = !DILocation(line: 375, column: 24, scope: !2207)
!2274 = !DILocation(line: 376, column: 1, scope: !2207)
!2275 = distinct !DISubprogram(name: "rhs_regno", scope: !378, file: !378, line: 1051, type: !2276, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2278)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!7, !1653}
!2278 = !{!2279}
!2279 = !DILocalVariable(name: "x", arg: 1, scope: !2275, file: !378, line: 1051, type: !1653)
!2280 = !DILocation(line: 0, scope: !2275)
!2281 = !DILocation(line: 1053, column: 10, scope: !2275)
!2282 = !DILocation(line: 1053, column: 3, scope: !2275)
!2283 = distinct !DISubprogram(name: "preserve_only_constants", scope: !3, file: !3, line: 303, type: !2284, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2286)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!545, !1077, !549}
!2286 = !{!2287, !2288, !2289}
!2287 = !DILocalVariable(name: "x", arg: 1, scope: !2283, file: !3, line: 303, type: !1077)
!2288 = !DILocalVariable(name: "info", arg: 2, scope: !2283, file: !3, line: 303, type: !549)
!2289 = !DILocalVariable(name: "v", scope: !2283, file: !3, line: 305, type: !623)
!2290 = !DILocation(line: 0, scope: !2283)
!2291 = !DILocation(line: 305, column: 33, scope: !2283)
!2292 = !DILocation(line: 307, column: 10, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 307, column: 7)
!2294 = !DILocation(line: 307, column: 15, scope: !2293)
!2295 = !DILocation(line: 308, column: 7, scope: !2293)
!2296 = !DILocation(line: 308, column: 19, scope: !2293)
!2297 = !DILocation(line: 308, column: 24, scope: !2293)
!2298 = !DILocation(line: 307, column: 7, scope: !2283)
!2299 = !DILocation(line: 310, column: 11, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 310, column: 11)
!2301 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 309, column: 5)
!2302 = !DILocation(line: 311, column: 4, scope: !2300)
!2303 = !DILocation(line: 311, column: 32, scope: !2300)
!2304 = !DILocation(line: 312, column: 8, scope: !2300)
!2305 = !DILocation(line: 312, column: 12, scope: !2300)
!2306 = !DILocation(line: 310, column: 11, scope: !2301)
!2307 = !DILocation(line: 314, column: 11, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 314, column: 11)
!2309 = !DILocation(line: 314, column: 11, scope: !2301)
!2310 = !DILocation(line: 316, column: 10, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 316, column: 8)
!2312 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 315, column: 2)
!2313 = !DILocation(line: 316, column: 8, scope: !2312)
!2314 = !DILocation(line: 318, column: 8, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 318, column: 8)
!2316 = !DILocation(line: 318, column: 32, scope: !2315)
!2317 = !DILocation(line: 319, column: 8, scope: !2315)
!2318 = !DILocation(line: 319, column: 11, scope: !2315)
!2319 = !DILocation(line: 320, column: 8, scope: !2315)
!2320 = !DILocation(line: 320, column: 11, scope: !2315)
!2321 = !DILocation(line: 320, column: 61, scope: !2315)
!2322 = !DILocation(line: 320, column: 34, scope: !2315)
!2323 = !DILocation(line: 318, column: 8, scope: !2312)
!2324 = !DILocation(line: 325, column: 20, scope: !2283)
!2325 = !DILocation(line: 325, column: 3, scope: !2283)
!2326 = !DILocation(line: 326, column: 3, scope: !2283)
!2327 = !DILocation(line: 327, column: 1, scope: !2283)
!2328 = distinct !DISubprogram(name: "cselib_get_next_uid", scope: !3, file: !3, line: 381, type: !2329, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1829)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!7}
!2331 = !DILocation(line: 383, column: 10, scope: !2328)
!2332 = !DILocation(line: 383, column: 3, scope: !2328)
!2333 = distinct !DISubprogram(name: "references_value_p", scope: !3, file: !3, line: 441, type: !2334, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2336)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!545, !1653, !545}
!2336 = !{!2337, !2338, !2339, !2341, !2342, !2343}
!2337 = !DILocalVariable(name: "x", arg: 1, scope: !2333, file: !3, line: 441, type: !1653)
!2338 = !DILocalVariable(name: "only_useless", arg: 2, scope: !2333, file: !3, line: 441, type: !545)
!2339 = !DILocalVariable(name: "code", scope: !2333, file: !3, line: 443, type: !2340)
!2340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!2341 = !DILocalVariable(name: "fmt", scope: !2333, file: !3, line: 444, type: !550)
!2342 = !DILocalVariable(name: "i", scope: !2333, file: !3, line: 445, type: !545)
!2343 = !DILocalVariable(name: "j", scope: !2333, file: !3, line: 445, type: !545)
!2344 = !DILocation(line: 0, scope: !2333)
!2345 = !DILocation(line: 443, column: 30, scope: !2333)
!2346 = !DILocation(line: 444, column: 21, scope: !2333)
!2347 = !DILocation(line: 447, column: 20, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 447, column: 7)
!2349 = !DILocation(line: 448, column: 7, scope: !2348)
!2350 = !DILocation(line: 448, column: 13, scope: !2348)
!2351 = !DILocation(line: 448, column: 26, scope: !2348)
!2352 = !DILocation(line: 448, column: 29, scope: !2348)
!2353 = !DILocation(line: 448, column: 49, scope: !2348)
!2354 = !DILocation(line: 448, column: 54, scope: !2348)
!2355 = !DILocation(line: 447, column: 7, scope: !2333)
!2356 = !DILocation(line: 451, column: 12, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 451, column: 3)
!2358 = !DILocation(line: 0, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 453, column: 11)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 452, column: 5)
!2361 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 451, column: 3)
!2362 = !DILocation(line: 451, column: 8, scope: !2357)
!2363 = !DILocation(line: 0, scope: !2357)
!2364 = !DILocation(line: 451, column: 41, scope: !2361)
!2365 = !DILocation(line: 451, column: 3, scope: !2357)
!2366 = !DILocation(line: 453, column: 11, scope: !2359)
!2367 = !DILocation(line: 453, column: 18, scope: !2359)
!2368 = !DILocation(line: 453, column: 25, scope: !2359)
!2369 = !DILocation(line: 453, column: 48, scope: !2359)
!2370 = !DILocation(line: 453, column: 28, scope: !2359)
!2371 = !DILocation(line: 453, column: 11, scope: !2360)
!2372 = !DILocation(line: 455, column: 16, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 455, column: 16)
!2374 = !DILocation(line: 455, column: 23, scope: !2373)
!2375 = !DILocation(line: 455, column: 16, scope: !2359)
!2376 = !DILocation(line: 0, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 456, column: 2)
!2378 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 456, column: 2)
!2379 = !DILocation(line: 456, column: 2, scope: !2378)
!2380 = !DILocation(line: 0, scope: !2378)
!2381 = !DILocation(line: 456, column: 18, scope: !2377)
!2382 = !DILocation(line: 456, column: 16, scope: !2377)
!2383 = !DILocation(line: 457, column: 28, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 457, column: 8)
!2385 = !DILocation(line: 457, column: 8, scope: !2384)
!2386 = !DILocation(line: 457, column: 8, scope: !2377)
!2387 = !DILocation(line: 456, column: 35, scope: !2377)
!2388 = !DILocation(line: 456, column: 2, scope: !2377)
!2389 = distinct !{!2389, !2379, !2390}
!2390 = !DILocation(line: 458, column: 13, scope: !2378)
!2391 = !DILocation(line: 451, column: 3, scope: !2361)
!2392 = distinct !{!2392, !2365, !2393}
!2393 = !DILocation(line: 459, column: 5, scope: !2357)
!2394 = !DILocation(line: 462, column: 1, scope: !2333)
!2395 = distinct !DISubprogram(name: "cselib_preserve_value", scope: !3, file: !3, line: 557, type: !1784, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2396)
!2396 = !{!2397}
!2397 = !DILocalVariable(name: "v", arg: 1, scope: !2395, file: !3, line: 557, type: !623)
!2398 = !DILocation(line: 0, scope: !2395)
!2399 = !DILocation(line: 559, column: 3, scope: !2395)
!2400 = !DILocation(line: 559, column: 34, scope: !2395)
!2401 = !DILocation(line: 560, column: 1, scope: !2395)
!2402 = distinct !DISubprogram(name: "cselib_preserved_value_p", scope: !3, file: !3, line: 565, type: !2403, scopeLine: 566, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!544, !623}
!2405 = !{!2406}
!2406 = !DILocalVariable(name: "v", arg: 1, scope: !2402, file: !3, line: 565, type: !623)
!2407 = !DILocation(line: 0, scope: !2402)
!2408 = !DILocation(line: 567, column: 10, scope: !2402)
!2409 = !DILocation(line: 567, column: 3, scope: !2402)
!2410 = distinct !DISubprogram(name: "cselib_preserve_cfa_base_value", scope: !3, file: !3, line: 574, type: !1784, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2411)
!2411 = !{!2412}
!2412 = !DILocalVariable(name: "v", arg: 1, scope: !2410, file: !3, line: 574, type: !623)
!2413 = !DILocation(line: 0, scope: !2410)
!2414 = !DILocation(line: 576, column: 7, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 576, column: 7)
!2416 = !DILocation(line: 577, column: 7, scope: !2415)
!2417 = !DILocation(line: 577, column: 13, scope: !2415)
!2418 = !DILocation(line: 577, column: 10, scope: !2415)
!2419 = !DILocation(line: 578, column: 7, scope: !2415)
!2420 = !DILocation(line: 578, column: 10, scope: !2415)
!2421 = !DILocation(line: 576, column: 7, scope: !2410)
!2422 = !DILocation(line: 579, column: 28, scope: !2415)
!2423 = !DILocation(line: 579, column: 5, scope: !2415)
!2424 = !DILocation(line: 580, column: 1, scope: !2410)
!2425 = distinct !DISubprogram(name: "cselib_preserve_only_values", scope: !3, file: !3, line: 586, type: !2203, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2426)
!2426 = !{!2427}
!2427 = !DILocalVariable(name: "i", scope: !2425, file: !3, line: 588, type: !545)
!2428 = !DILocation(line: 0, scope: !2425)
!2429 = !DILocation(line: 590, column: 8, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 590, column: 3)
!2431 = !DILocation(line: 0, scope: !2430)
!2432 = !DILocation(line: 590, column: 17, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 590, column: 3)
!2434 = !DILocation(line: 590, column: 3, scope: !2430)
!2435 = !DILocation(line: 591, column: 33, scope: !2433)
!2436 = !DILocation(line: 591, column: 5, scope: !2433)
!2437 = !DILocation(line: 590, column: 43, scope: !2433)
!2438 = !DILocation(line: 590, column: 3, scope: !2433)
!2439 = distinct !{!2439, !2434, !2440}
!2440 = !DILocation(line: 591, column: 48, scope: !2430)
!2441 = !DILocation(line: 593, column: 26, scope: !2425)
!2442 = !DILocation(line: 593, column: 3, scope: !2425)
!2443 = !DILocation(line: 595, column: 3, scope: !2425)
!2444 = !DILocation(line: 597, column: 3, scope: !2425)
!2445 = !DILocation(line: 598, column: 1, scope: !2425)
!2446 = distinct !DISubprogram(name: "cselib_invalidate_regno", scope: !3, file: !3, line: 1739, type: !2447, scopeLine: 1740, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2449)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{null, !7, !5}
!2449 = !{!2450, !2451, !2452, !2453, !2454, !2458, !2460, !2461, !2462, !2464, !2465}
!2450 = !DILocalVariable(name: "regno", arg: 1, scope: !2446, file: !3, line: 1739, type: !7)
!2451 = !DILocalVariable(name: "mode", arg: 2, scope: !2446, file: !3, line: 1739, type: !5)
!2452 = !DILocalVariable(name: "endregno", scope: !2446, file: !3, line: 1741, type: !7)
!2453 = !DILocalVariable(name: "i", scope: !2446, file: !3, line: 1742, type: !7)
!2454 = !DILocalVariable(name: "l", scope: !2455, file: !3, line: 1771, type: !1643)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 1770, column: 5)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 1769, column: 3)
!2457 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 1769, column: 3)
!2458 = !DILocalVariable(name: "v", scope: !2459, file: !3, line: 1777, type: !623)
!2459 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 1776, column: 2)
!2460 = !DILocalVariable(name: "had_locs", scope: !2459, file: !3, line: 1778, type: !544)
!2461 = !DILocalVariable(name: "setting_insn", scope: !2459, file: !3, line: 1779, type: !552)
!2462 = !DILocalVariable(name: "p", scope: !2459, file: !3, line: 1780, type: !2463)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!2464 = !DILocalVariable(name: "this_last", scope: !2459, file: !3, line: 1781, type: !7)
!2465 = !DILocalVariable(name: "x", scope: !2466, file: !3, line: 1813, type: !552)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 1812, column: 6)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 1811, column: 4)
!2468 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 1811, column: 4)
!2469 = !DILocation(line: 0, scope: !2446)
!2470 = !DILocation(line: 1745, column: 3, scope: !2446)
!2471 = !DILocation(line: 1752, column: 7, scope: !2446)
!2472 = !DILocation(line: 1754, column: 7, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 1753, column: 5)
!2474 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 1752, column: 7)
!2475 = !DILocation(line: 1756, column: 19, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 1756, column: 11)
!2477 = !DILocation(line: 1756, column: 11, scope: !2473)
!2478 = !DILocation(line: 1761, column: 18, scope: !2473)
!2479 = !DILocation(line: 1762, column: 5, scope: !2473)
!2480 = !DILocation(line: 1766, column: 24, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 1764, column: 5)
!2482 = !DILocation(line: 0, scope: !2474)
!2483 = !DILocation(line: 1769, column: 3, scope: !2446)
!2484 = !DILocation(line: 1769, column: 12, scope: !2456)
!2485 = !DILocation(line: 1769, column: 3, scope: !2457)
!2486 = !DILocation(line: 1771, column: 30, scope: !2455)
!2487 = !DILocation(line: 0, scope: !2455)
!2488 = !DILocation(line: 0, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 1783, column: 8)
!2490 = !DILocation(line: 1775, column: 7, scope: !2455)
!2491 = !DILocation(line: 1775, column: 14, scope: !2455)
!2492 = !DILocation(line: 1777, column: 26, scope: !2459)
!2493 = !DILocation(line: 0, scope: !2459)
!2494 = !DILocation(line: 1783, column: 39, scope: !2489)
!2495 = !DILocation(line: 1783, column: 34, scope: !2489)
!2496 = !DILocation(line: 1784, column: 34, scope: !2489)
!2497 = !DILocation(line: 1784, column: 18, scope: !2489)
!2498 = !DILocation(line: 1784, column: 60, scope: !2489)
!2499 = !DILocation(line: 1784, column: 6, scope: !2489)
!2500 = !DILocation(line: 1786, column: 18, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 1786, column: 8)
!2502 = !DILocation(line: 1786, column: 26, scope: !2501)
!2503 = !DILocation(line: 1786, column: 47, scope: !2501)
!2504 = !DILocation(line: 1786, column: 44, scope: !2501)
!2505 = !DILocation(line: 1793, column: 14, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 1793, column: 8)
!2507 = !DILocation(line: 1793, column: 11, scope: !2506)
!2508 = !DILocation(line: 1793, column: 8, scope: !2459)
!2509 = !DILocation(line: 1804, column: 6, scope: !2506)
!2510 = !DILocation(line: 1800, column: 14, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 1794, column: 6)
!2512 = !DILocation(line: 1800, column: 18, scope: !2511)
!2513 = !DILocation(line: 1801, column: 14, scope: !2511)
!2514 = !DILocation(line: 1801, column: 19, scope: !2511)
!2515 = !DILocation(line: 1802, column: 6, scope: !2511)
!2516 = !DILocation(line: 1806, column: 18, scope: !2459)
!2517 = !DILocation(line: 1806, column: 23, scope: !2459)
!2518 = !DILocation(line: 1807, column: 19, scope: !2459)
!2519 = !DILocation(line: 1807, column: 38, scope: !2459)
!2520 = !DILocation(line: 1811, column: 9, scope: !2468)
!2521 = !DILocation(line: 1813, column: 17, scope: !2466)
!2522 = !DILocation(line: 0, scope: !2468)
!2523 = !DILocation(line: 1813, column: 22, scope: !2466)
!2524 = !DILocation(line: 0, scope: !2466)
!2525 = !DILocation(line: 1815, column: 12, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 1815, column: 12)
!2527 = !DILocation(line: 1815, column: 22, scope: !2526)
!2528 = !DILocation(line: 1815, column: 25, scope: !2526)
!2529 = !DILocation(line: 1815, column: 35, scope: !2526)
!2530 = !DILocation(line: 1815, column: 12, scope: !2466)
!2531 = !DILocation(line: 1817, column: 5, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 1816, column: 3)
!2533 = !DILocation(line: 1818, column: 5, scope: !2532)
!2534 = !DILocation(line: 1822, column: 17, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 1822, column: 8)
!2536 = !DILocation(line: 1822, column: 23, scope: !2535)
!2537 = !DILocation(line: 1822, column: 28, scope: !2535)
!2538 = !DILocation(line: 1822, column: 33, scope: !2535)
!2539 = !DILocation(line: 1822, column: 37, scope: !2535)
!2540 = !DILocation(line: 1822, column: 8, scope: !2459)
!2541 = !DILocation(line: 1824, column: 12, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 1824, column: 12)
!2543 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1823, column: 6)
!2544 = !DILocation(line: 1824, column: 25, scope: !2542)
!2545 = !DILocation(line: 1824, column: 28, scope: !2542)
!2546 = !DILocation(line: 1824, column: 12, scope: !2543)
!2547 = !DILocation(line: 1825, column: 25, scope: !2542)
!2548 = !DILocation(line: 1825, column: 3, scope: !2542)
!2549 = !DILocation(line: 1827, column: 19, scope: !2542)
!2550 = !DILocation(line: 1811, column: 31, scope: !2467)
!2551 = !DILocation(line: 1811, column: 36, scope: !2467)
!2552 = !DILocation(line: 1811, column: 4, scope: !2467)
!2553 = distinct !{!2553, !2554, !2555}
!2554 = !DILocation(line: 1811, column: 4, scope: !2468)
!2555 = !DILocation(line: 1820, column: 6, scope: !2468)
!2556 = !DILocation(line: 1788, column: 19, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 1787, column: 6)
!2558 = !DILocation(line: 1789, column: 8, scope: !2557)
!2559 = distinct !{!2559, !2490, !2560}
!2560 = !DILocation(line: 1829, column: 2, scope: !2455)
!2561 = !DILocation(line: 1769, column: 25, scope: !2456)
!2562 = !DILocation(line: 1786, column: 31, scope: !2501)
!2563 = !DILocation(line: 1769, column: 3, scope: !2456)
!2564 = distinct !{!2564, !2485, !2565}
!2565 = !DILocation(line: 1830, column: 5, scope: !2457)
!2566 = !DILocation(line: 1831, column: 1, scope: !2446)
!2567 = distinct !DISubprogram(name: "cselib_invalidate_mem", scope: !3, file: !3, line: 1852, type: !2568, scopeLine: 1853, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2570)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{null, !552}
!2570 = !{!2571, !2572, !2574, !2575, !2576, !2577, !2578, !2582, !2583, !2584, !2585, !2587, !2588}
!2571 = !DILocalVariable(name: "mem_rtx", arg: 1, scope: !2567, file: !3, line: 1852, type: !552)
!2572 = !DILocalVariable(name: "vp", scope: !2567, file: !3, line: 1854, type: !2573)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!2574 = !DILocalVariable(name: "v", scope: !2567, file: !3, line: 1854, type: !623)
!2575 = !DILocalVariable(name: "next", scope: !2567, file: !3, line: 1854, type: !623)
!2576 = !DILocalVariable(name: "num_mems", scope: !2567, file: !3, line: 1855, type: !545)
!2577 = !DILocalVariable(name: "mem_addr", scope: !2567, file: !3, line: 1856, type: !552)
!2578 = !DILocalVariable(name: "has_mem", scope: !2579, file: !3, line: 1864, type: !544)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 1863, column: 5)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 1862, column: 3)
!2581 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 1862, column: 3)
!2582 = !DILocalVariable(name: "p", scope: !2579, file: !3, line: 1865, type: !2463)
!2583 = !DILocalVariable(name: "had_locs", scope: !2579, file: !3, line: 1866, type: !544)
!2584 = !DILocalVariable(name: "setting_insn", scope: !2579, file: !3, line: 1867, type: !552)
!2585 = !DILocalVariable(name: "x", scope: !2586, file: !3, line: 1871, type: !552)
!2586 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 1870, column: 2)
!2587 = !DILocalVariable(name: "addr", scope: !2586, file: !3, line: 1872, type: !623)
!2588 = !DILocalVariable(name: "mem_chain", scope: !2586, file: !3, line: 1873, type: !1643)
!2589 = !DILocation(line: 0, scope: !2567)
!2590 = !DILocation(line: 1858, column: 35, scope: !2567)
!2591 = !DILocation(line: 1858, column: 25, scope: !2567)
!2592 = !DILocation(line: 1858, column: 14, scope: !2567)
!2593 = !DILocation(line: 1859, column: 13, scope: !2567)
!2594 = !DILocation(line: 1862, column: 12, scope: !2581)
!2595 = !DILocation(line: 0, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 1882, column: 8)
!2597 = !DILocation(line: 1862, column: 8, scope: !2581)
!2598 = !DILocation(line: 1855, column: 7, scope: !2567)
!2599 = !DILocation(line: 0, scope: !2581)
!2600 = !DILocation(line: 1862, column: 19, scope: !2580)
!2601 = !DILocation(line: 1862, column: 3, scope: !2581)
!2602 = !DILocation(line: 0, scope: !2579)
!2603 = !DILocation(line: 1865, column: 37, scope: !2579)
!2604 = !DILocation(line: 1866, column: 26, scope: !2579)
!2605 = !DILocation(line: 1866, column: 31, scope: !2579)
!2606 = !DILocation(line: 1867, column: 26, scope: !2579)
!2607 = !DILocation(line: 1867, column: 45, scope: !2579)
!2608 = !DILocation(line: 1869, column: 7, scope: !2579)
!2609 = !DILocation(line: 1869, column: 14, scope: !2579)
!2610 = !DILocation(line: 1865, column: 29, scope: !2579)
!2611 = !DILocation(line: 1864, column: 12, scope: !2579)
!2612 = !DILocation(line: 1871, column: 18, scope: !2586)
!2613 = !DILocation(line: 0, scope: !2586)
!2614 = !DILocation(line: 1877, column: 9, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 1877, column: 8)
!2616 = !DILocation(line: 1877, column: 8, scope: !2586)
!2617 = !DILocation(line: 1879, column: 19, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 1878, column: 6)
!2619 = !DILocation(line: 1880, column: 8, scope: !2618)
!2620 = distinct !{!2620, !2608, !2621}
!2621 = !DILocation(line: 1909, column: 2, scope: !2579)
!2622 = !DILocation(line: 1882, column: 19, scope: !2596)
!2623 = !DILocation(line: 1882, column: 17, scope: !2596)
!2624 = !DILocation(line: 1883, column: 8, scope: !2596)
!2625 = !DILocation(line: 1883, column: 45, scope: !2596)
!2626 = !DILocation(line: 1883, column: 13, scope: !2596)
!2627 = !DILocation(line: 1882, column: 8, scope: !2586)
!2628 = !DILocation(line: 1887, column: 16, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 1885, column: 6)
!2630 = !DILocation(line: 1888, column: 14, scope: !2629)
!2631 = !DILocation(line: 1888, column: 19, scope: !2629)
!2632 = !DILocation(line: 1889, column: 8, scope: !2629)
!2633 = !DILocation(line: 1895, column: 26, scope: !2586)
!2634 = !DILocation(line: 1895, column: 11, scope: !2586)
!2635 = !DILocation(line: 1896, column: 23, scope: !2586)
!2636 = !DILocation(line: 1897, column: 4, scope: !2586)
!2637 = !DILocation(line: 1899, column: 13, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 1899, column: 12)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 1898, column: 6)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 1897, column: 4)
!2641 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 1897, column: 4)
!2642 = !DILocation(line: 1899, column: 26, scope: !2638)
!2643 = !DILocation(line: 1899, column: 30, scope: !2638)
!2644 = !DILocation(line: 1899, column: 12, scope: !2639)
!2645 = !DILocation(line: 1901, column: 5, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 1900, column: 3)
!2647 = !DILocation(line: 1908, column: 4, scope: !2586)
!2648 = !DILocation(line: 1905, column: 35, scope: !2639)
!2649 = !DILocation(line: 1897, column: 4, scope: !2640)
!2650 = distinct !{!2650, !2651, !2652}
!2651 = !DILocation(line: 1897, column: 4, scope: !2641)
!2652 = !DILocation(line: 1906, column: 6, scope: !2641)
!2653 = !DILocation(line: 1911, column: 20, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 1911, column: 11)
!2655 = !DILocation(line: 1911, column: 26, scope: !2654)
!2656 = !DILocation(line: 1911, column: 31, scope: !2654)
!2657 = !DILocation(line: 1911, column: 36, scope: !2654)
!2658 = !DILocation(line: 1911, column: 40, scope: !2654)
!2659 = !DILocation(line: 1911, column: 11, scope: !2579)
!2660 = !DILocation(line: 1913, column: 8, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1913, column: 8)
!2662 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 1912, column: 2)
!2663 = !DILocation(line: 1913, column: 21, scope: !2661)
!2664 = !DILocation(line: 1913, column: 24, scope: !2661)
!2665 = !DILocation(line: 1913, column: 8, scope: !2662)
!2666 = !DILocation(line: 1914, column: 28, scope: !2661)
!2667 = !DILocation(line: 1914, column: 6, scope: !2661)
!2668 = !DILocation(line: 1916, column: 22, scope: !2661)
!2669 = !DILocation(line: 1919, column: 17, scope: !2579)
!2670 = !DILocation(line: 1920, column: 11, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 1920, column: 11)
!2672 = !DILocation(line: 1920, column: 11, scope: !2579)
!2673 = !DILocation(line: 1922, column: 8, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1921, column: 2)
!2675 = !DILocation(line: 1924, column: 2, scope: !2674)
!2676 = !DILocation(line: 1926, column: 25, scope: !2671)
!2677 = !DILocation(line: 1862, column: 3, scope: !2580)
!2678 = distinct !{!2678, !2601, !2679}
!2679 = !DILocation(line: 1927, column: 5, scope: !2581)
!2680 = !DILocation(line: 1928, column: 7, scope: !2567)
!2681 = !DILocation(line: 1929, column: 1, scope: !2567)
!2682 = distinct !DISubprogram(name: "remove_useless_values", scope: !3, file: !3, line: 520, type: !2203, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2683)
!2683 = !{!2684, !2685}
!2684 = !DILocalVariable(name: "p", scope: !2682, file: !3, line: 522, type: !2573)
!2685 = !DILocalVariable(name: "v", scope: !2682, file: !3, line: 522, type: !623)
!2686 = !DILocation(line: 526, column: 3, scope: !2682)
!2687 = !DILocation(line: 528, column: 29, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 527, column: 5)
!2689 = !DILocation(line: 529, column: 22, scope: !2688)
!2690 = !DILocation(line: 529, column: 7, scope: !2688)
!2691 = !DILocation(line: 531, column: 10, scope: !2682)
!2692 = !DILocation(line: 530, column: 5, scope: !2688)
!2693 = distinct !{!2693, !2686, !2694}
!2694 = !DILocation(line: 531, column: 31, scope: !2682)
!2695 = !DILocation(line: 0, scope: !2682)
!2696 = !DILocation(line: 536, column: 8, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 536, column: 3)
!2698 = !DILocation(line: 0, scope: !2697)
!2699 = !DILocation(line: 536, column: 18, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 536, column: 3)
!2701 = !DILocation(line: 536, column: 3, scope: !2697)
!2702 = !DILocation(line: 537, column: 12, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 537, column: 9)
!2704 = !DILocation(line: 537, column: 9, scope: !2703)
!2705 = !DILocation(line: 537, column: 9, scope: !2700)
!2706 = !DILocation(line: 539, column: 5, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 538, column: 7)
!2708 = !DILocation(line: 540, column: 13, scope: !2707)
!2709 = !DILocation(line: 541, column: 7, scope: !2707)
!2710 = !DILocation(line: 536, column: 40, scope: !2700)
!2711 = !DILocation(line: 536, column: 3, scope: !2700)
!2712 = distinct !{!2712, !2701, !2713}
!2713 = !DILocation(line: 541, column: 7, scope: !2697)
!2714 = !DILocation(line: 542, column: 6, scope: !2682)
!2715 = !DILocation(line: 544, column: 23, scope: !2682)
!2716 = !DILocation(line: 544, column: 20, scope: !2682)
!2717 = !DILocation(line: 545, column: 18, scope: !2682)
!2718 = !DILocation(line: 546, column: 26, scope: !2682)
!2719 = !DILocation(line: 548, column: 18, scope: !2682)
!2720 = !DILocation(line: 548, column: 3, scope: !2682)
!2721 = !DILocation(line: 550, column: 3, scope: !2682)
!2722 = !DILocation(line: 551, column: 1, scope: !2682)
!2723 = distinct !DISubprogram(name: "cselib_reg_set_mode", scope: !3, file: !3, line: 606, type: !2724, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!5, !1653}
!2726 = !{!2727}
!2727 = !DILocalVariable(name: "x", arg: 1, scope: !2723, file: !3, line: 606, type: !1653)
!2728 = !DILocation(line: 0, scope: !2723)
!2729 = !DILocation(line: 608, column: 8, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 608, column: 7)
!2731 = !DILocation(line: 608, column: 7, scope: !2723)
!2732 = !DILocation(line: 609, column: 12, scope: !2730)
!2733 = !DILocation(line: 609, column: 5, scope: !2730)
!2734 = !DILocation(line: 611, column: 7, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 611, column: 7)
!2736 = !DILocation(line: 611, column: 30, scope: !2735)
!2737 = !DILocation(line: 612, column: 7, scope: !2735)
!2738 = !DILocation(line: 612, column: 10, scope: !2735)
!2739 = !DILocation(line: 612, column: 34, scope: !2735)
!2740 = !DILocation(line: 612, column: 38, scope: !2735)
!2741 = !DILocation(line: 611, column: 7, scope: !2723)
!2742 = !DILocation(line: 615, column: 10, scope: !2723)
!2743 = !DILocation(line: 615, column: 3, scope: !2723)
!2744 = !DILocation(line: 616, column: 1, scope: !2723)
!2745 = distinct !DISubprogram(name: "rtx_equal_for_cselib_p", scope: !3, file: !3, line: 622, type: !2746, scopeLine: 623, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2748)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!545, !552, !552}
!2748 = !{!2749, !2750, !2751, !2752, !2753, !2754, !2757, !2760, !2763, !2764, !2768, !2771, !2772, !2776}
!2749 = !DILocalVariable(name: "x", arg: 1, scope: !2745, file: !3, line: 622, type: !552)
!2750 = !DILocalVariable(name: "y", arg: 2, scope: !2745, file: !3, line: 622, type: !552)
!2751 = !DILocalVariable(name: "code", scope: !2745, file: !3, line: 624, type: !377)
!2752 = !DILocalVariable(name: "fmt", scope: !2745, file: !3, line: 625, type: !550)
!2753 = !DILocalVariable(name: "i", scope: !2745, file: !3, line: 626, type: !545)
!2754 = !DILocalVariable(name: "e", scope: !2755, file: !3, line: 630, type: !623)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !3, line: 629, column: 5)
!2756 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 628, column: 7)
!2757 = !DILocalVariable(name: "e", scope: !2758, file: !3, line: 638, type: !623)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 637, column: 5)
!2759 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 636, column: 7)
!2760 = !DILocalVariable(name: "e", scope: !2761, file: !3, line: 652, type: !623)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 651, column: 5)
!2762 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 650, column: 7)
!2763 = !DILocalVariable(name: "l", scope: !2761, file: !3, line: 653, type: !611)
!2764 = !DILocalVariable(name: "t", scope: !2765, file: !3, line: 657, type: !552)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 656, column: 2)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 655, column: 7)
!2767 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 655, column: 7)
!2768 = !DILocalVariable(name: "e", scope: !2769, file: !3, line: 671, type: !623)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 670, column: 5)
!2770 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 669, column: 7)
!2771 = !DILocalVariable(name: "l", scope: !2769, file: !3, line: 672, type: !611)
!2772 = !DILocalVariable(name: "t", scope: !2773, file: !3, line: 676, type: !552)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 675, column: 2)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 674, column: 7)
!2775 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 674, column: 7)
!2776 = !DILocalVariable(name: "j", scope: !2777, file: !3, line: 710, type: !545)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 709, column: 5)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 708, column: 3)
!2779 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 708, column: 3)
!2780 = !DILocation(line: 0, scope: !2745)
!2781 = !DILocation(line: 628, column: 7, scope: !2756)
!2782 = !DILocation(line: 628, column: 17, scope: !2756)
!2783 = !DILocation(line: 628, column: 20, scope: !2756)
!2784 = !DILocation(line: 628, column: 7, scope: !2745)
!2785 = !DILocation(line: 630, column: 41, scope: !2755)
!2786 = !DILocation(line: 630, column: 23, scope: !2755)
!2787 = !DILocation(line: 0, scope: !2755)
!2788 = !DILocation(line: 632, column: 11, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 632, column: 11)
!2790 = !DILocation(line: 632, column: 11, scope: !2755)
!2791 = !DILocation(line: 633, column: 9, scope: !2789)
!2792 = !DILocation(line: 633, column: 2, scope: !2789)
!2793 = !DILocation(line: 636, column: 7, scope: !2759)
!2794 = !DILocation(line: 636, column: 17, scope: !2759)
!2795 = !DILocation(line: 636, column: 20, scope: !2759)
!2796 = !DILocation(line: 636, column: 7, scope: !2745)
!2797 = !DILocation(line: 638, column: 41, scope: !2758)
!2798 = !DILocation(line: 638, column: 23, scope: !2758)
!2799 = !DILocation(line: 0, scope: !2758)
!2800 = !DILocation(line: 640, column: 11, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 640, column: 11)
!2802 = !DILocation(line: 640, column: 11, scope: !2758)
!2803 = !DILocation(line: 641, column: 9, scope: !2801)
!2804 = !DILocation(line: 641, column: 2, scope: !2801)
!2805 = !DILocation(line: 644, column: 9, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 644, column: 7)
!2807 = !DILocation(line: 644, column: 7, scope: !2745)
!2808 = !DILocation(line: 647, column: 7, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 647, column: 7)
!2810 = !DILocation(line: 647, column: 20, scope: !2809)
!2811 = !DILocation(line: 647, column: 29, scope: !2809)
!2812 = !DILocation(line: 647, column: 32, scope: !2809)
!2813 = !DILocation(line: 647, column: 45, scope: !2809)
!2814 = !DILocation(line: 647, column: 7, scope: !2745)
!2815 = !DILocation(line: 648, column: 12, scope: !2809)
!2816 = !DILocation(line: 648, column: 34, scope: !2809)
!2817 = !DILocation(line: 648, column: 31, scope: !2809)
!2818 = !DILocation(line: 648, column: 5, scope: !2809)
!2819 = !DILocation(line: 650, column: 7, scope: !2745)
!2820 = !DILocation(line: 652, column: 23, scope: !2761)
!2821 = !DILocation(line: 0, scope: !2761)
!2822 = !DILocation(line: 655, column: 19, scope: !2767)
!2823 = !DILocation(line: 655, column: 12, scope: !2767)
!2824 = !DILocation(line: 0, scope: !2767)
!2825 = !DILocation(line: 655, column: 7, scope: !2767)
!2826 = !DILocation(line: 657, column: 15, scope: !2765)
!2827 = !DILocation(line: 0, scope: !2765)
!2828 = !DILocation(line: 660, column: 8, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 660, column: 8)
!2830 = !DILocation(line: 660, column: 18, scope: !2829)
!2831 = !DILocation(line: 660, column: 21, scope: !2829)
!2832 = !DILocation(line: 660, column: 8, scope: !2765)
!2833 = !DILocation(line: 662, column: 13, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 662, column: 13)
!2835 = !DILocation(line: 662, column: 13, scope: !2829)
!2836 = !DILocation(line: 655, column: 35, scope: !2766)
!2837 = !DILocation(line: 655, column: 7, scope: !2766)
!2838 = distinct !{!2838, !2825, !2839}
!2839 = !DILocation(line: 664, column: 2, scope: !2767)
!2840 = !DILocation(line: 669, column: 7, scope: !2770)
!2841 = !DILocation(line: 669, column: 20, scope: !2770)
!2842 = !DILocation(line: 669, column: 7, scope: !2745)
!2843 = !DILocation(line: 671, column: 23, scope: !2769)
!2844 = !DILocation(line: 0, scope: !2769)
!2845 = !DILocation(line: 674, column: 19, scope: !2775)
!2846 = !DILocation(line: 674, column: 12, scope: !2775)
!2847 = !DILocation(line: 0, scope: !2775)
!2848 = !DILocation(line: 674, column: 7, scope: !2775)
!2849 = !DILocation(line: 676, column: 15, scope: !2773)
!2850 = !DILocation(line: 0, scope: !2773)
!2851 = !DILocation(line: 678, column: 8, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 678, column: 8)
!2853 = !DILocation(line: 678, column: 18, scope: !2852)
!2854 = !DILocation(line: 678, column: 21, scope: !2852)
!2855 = !DILocation(line: 678, column: 8, scope: !2773)
!2856 = !DILocation(line: 680, column: 13, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 680, column: 13)
!2858 = !DILocation(line: 680, column: 13, scope: !2852)
!2859 = !DILocation(line: 674, column: 35, scope: !2774)
!2860 = !DILocation(line: 674, column: 7, scope: !2774)
!2861 = distinct !{!2861, !2848, !2862}
!2862 = !DILocation(line: 682, column: 2, scope: !2775)
!2863 = !DILocation(line: 687, column: 20, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 687, column: 7)
!2865 = !DILocation(line: 687, column: 36, scope: !2864)
!2866 = !DILocation(line: 687, column: 52, scope: !2864)
!2867 = !DILocation(line: 687, column: 7, scope: !2745)
!2868 = !DILocation(line: 691, column: 3, scope: !2745)
!2869 = !DILocation(line: 699, column: 14, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 692, column: 5)
!2871 = !DILocation(line: 699, column: 29, scope: !2870)
!2872 = !DILocation(line: 699, column: 26, scope: !2870)
!2873 = !DILocation(line: 699, column: 7, scope: !2870)
!2874 = !DILocation(line: 706, column: 9, scope: !2745)
!2875 = !DILocation(line: 708, column: 12, scope: !2779)
!2876 = !DILocation(line: 0, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 750, column: 8)
!2878 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 713, column: 2)
!2879 = !DILocation(line: 0, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 739, column: 8)
!2881 = !DILocation(line: 0, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 715, column: 8)
!2883 = !DILocation(line: 708, column: 8, scope: !2779)
!2884 = !DILocation(line: 0, scope: !2779)
!2885 = !DILocation(line: 708, column: 41, scope: !2778)
!2886 = !DILocation(line: 708, column: 3, scope: !2779)
!2887 = !DILocation(line: 712, column: 15, scope: !2777)
!2888 = !DILocation(line: 712, column: 7, scope: !2777)
!2889 = !DILocation(line: 715, column: 8, scope: !2882)
!2890 = !DILocation(line: 715, column: 24, scope: !2882)
!2891 = !DILocation(line: 715, column: 21, scope: !2882)
!2892 = !DILocation(line: 715, column: 8, scope: !2878)
!2893 = !DILocation(line: 721, column: 8, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 721, column: 8)
!2895 = !DILocation(line: 721, column: 23, scope: !2894)
!2896 = !DILocation(line: 721, column: 20, scope: !2894)
!2897 = !DILocation(line: 721, column: 8, scope: !2878)
!2898 = !DILocation(line: 728, column: 8, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 728, column: 8)
!2900 = !DILocation(line: 728, column: 26, scope: !2899)
!2901 = !DILocation(line: 728, column: 23, scope: !2899)
!2902 = !DILocation(line: 728, column: 8, scope: !2878)
!2903 = !DILocation(line: 732, column: 4, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 732, column: 4)
!2905 = !DILocation(line: 732, column: 20, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 732, column: 4)
!2907 = !DILocation(line: 0, scope: !2777)
!2908 = !DILocation(line: 732, column: 18, scope: !2906)
!2909 = !DILocation(line: 733, column: 36, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 733, column: 10)
!2911 = !DILocation(line: 734, column: 8, scope: !2910)
!2912 = !DILocation(line: 733, column: 12, scope: !2910)
!2913 = !DILocation(line: 733, column: 10, scope: !2906)
!2914 = !DILocation(line: 732, column: 37, scope: !2906)
!2915 = !DILocation(line: 0, scope: !2906)
!2916 = !DILocation(line: 732, column: 4, scope: !2906)
!2917 = distinct !{!2917, !2903, !2918}
!2918 = !DILocation(line: 735, column: 15, scope: !2904)
!2919 = !DILocation(line: 740, column: 8, scope: !2880)
!2920 = !DILocation(line: 740, column: 19, scope: !2880)
!2921 = !DILocation(line: 740, column: 11, scope: !2880)
!2922 = !DILocation(line: 741, column: 8, scope: !2880)
!2923 = !DILocation(line: 741, column: 35, scope: !2880)
!2924 = !DILocation(line: 741, column: 48, scope: !2880)
!2925 = !DILocation(line: 741, column: 11, scope: !2880)
!2926 = !DILocation(line: 742, column: 8, scope: !2880)
!2927 = !DILocation(line: 742, column: 35, scope: !2880)
!2928 = !DILocation(line: 742, column: 48, scope: !2880)
!2929 = !DILocation(line: 742, column: 11, scope: !2880)
!2930 = !DILocation(line: 739, column: 8, scope: !2878)
!2931 = !DILocation(line: 744, column: 34, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 744, column: 8)
!2933 = !DILocation(line: 744, column: 47, scope: !2932)
!2934 = !DILocation(line: 744, column: 10, scope: !2932)
!2935 = !DILocation(line: 744, column: 8, scope: !2878)
!2936 = !DILocation(line: 750, column: 16, scope: !2877)
!2937 = !DILocation(line: 750, column: 29, scope: !2877)
!2938 = !DILocation(line: 750, column: 8, scope: !2877)
!2939 = !DILocation(line: 750, column: 8, scope: !2878)
!2940 = !DILocation(line: 766, column: 4, scope: !2878)
!2941 = !DILocation(line: 767, column: 2, scope: !2878)
!2942 = !DILocation(line: 768, column: 5, scope: !2778)
!2943 = !DILocation(line: 708, column: 3, scope: !2778)
!2944 = distinct !{!2944, !2886, !2945}
!2945 = !DILocation(line: 768, column: 5, scope: !2779)
!2946 = !DILocation(line: 770, column: 1, scope: !2745)
!2947 = distinct !DISubprogram(name: "cselib_lookup", scope: !3, file: !3, line: 1710, type: !2948, scopeLine: 1711, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!623, !552, !5, !545}
!2950 = !{!2951, !2952, !2953, !2954}
!2951 = !DILocalVariable(name: "x", arg: 1, scope: !2947, file: !3, line: 1710, type: !552)
!2952 = !DILocalVariable(name: "mode", arg: 2, scope: !2947, file: !3, line: 1710, type: !5)
!2953 = !DILocalVariable(name: "create", arg: 3, scope: !2947, file: !3, line: 1710, type: !545)
!2954 = !DILocalVariable(name: "ret", scope: !2947, file: !3, line: 1712, type: !623)
!2955 = !DILocation(line: 0, scope: !2947)
!2956 = !DILocation(line: 1712, column: 21, scope: !2947)
!2957 = !DILocation(line: 1720, column: 7, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 1720, column: 7)
!2959 = !DILocation(line: 1720, column: 17, scope: !2958)
!2960 = !DILocation(line: 1720, column: 21, scope: !2958)
!2961 = !DILocation(line: 1720, column: 32, scope: !2958)
!2962 = !DILocation(line: 1720, column: 7, scope: !2947)
!2963 = !DILocation(line: 1722, column: 7, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 1721, column: 5)
!2965 = !DILocation(line: 1723, column: 25, scope: !2964)
!2966 = !DILocation(line: 1723, column: 7, scope: !2964)
!2967 = !DILocation(line: 1724, column: 16, scope: !2964)
!2968 = !DILocation(line: 1725, column: 9, scope: !2964)
!2969 = !DILocation(line: 1725, column: 20, scope: !2964)
!2970 = !DILocation(line: 1726, column: 9, scope: !2964)
!2971 = !DILocation(line: 1726, column: 20, scope: !2964)
!2972 = !DILocation(line: 1724, column: 7, scope: !2964)
!2973 = !DILocation(line: 1727, column: 5, scope: !2964)
!2974 = !DILocation(line: 1729, column: 3, scope: !2947)
!2975 = distinct !DISubprogram(name: "cselib_expand_value_rtx", scope: !3, file: !3, line: 1178, type: !2976, scopeLine: 1179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2979)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!552, !552, !2978, !545}
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !553, line: 47, baseType: !627)
!2979 = !{!2980, !2981, !2982, !2983}
!2980 = !DILocalVariable(name: "orig", arg: 1, scope: !2975, file: !3, line: 1178, type: !552)
!2981 = !DILocalVariable(name: "regs_active", arg: 2, scope: !2975, file: !3, line: 1178, type: !2978)
!2982 = !DILocalVariable(name: "max_depth", arg: 3, scope: !2975, file: !3, line: 1178, type: !545)
!2983 = !DILocalVariable(name: "evd", scope: !2975, file: !3, line: 1180, type: !2984)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expand_value_data", file: !3, line: 68, size: 256, elements: !2985)
!2985 = !{!2986, !2987, !2992, !2993}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "regs_active", scope: !2984, file: !3, line: 70, baseType: !2978, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !2984, file: !3, line: 71, baseType: !2988, size: 64, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "cselib_expand_callback", file: !605, line: 89, baseType: !2989)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!552, !552, !2978, !545, !549}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "callback_arg", scope: !2984, file: !3, line: 72, baseType: !549, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !2984, file: !3, line: 73, baseType: !544, size: 8, offset: 192)
!2994 = !DILocation(line: 0, scope: !2975)
!2995 = !DILocation(line: 1180, column: 3, scope: !2975)
!2996 = !DILocation(line: 1182, column: 7, scope: !2975)
!2997 = !DILocation(line: 1182, column: 19, scope: !2975)
!2998 = !DILocation(line: 1183, column: 7, scope: !2975)
!2999 = !DILocation(line: 1183, column: 16, scope: !2975)
!3000 = !DILocation(line: 1184, column: 7, scope: !2975)
!3001 = !DILocation(line: 1184, column: 20, scope: !2975)
!3002 = !DILocation(line: 1185, column: 7, scope: !2975)
!3003 = !DILocation(line: 1185, column: 13, scope: !2975)
!3004 = !DILocation(line: 1187, column: 10, scope: !2975)
!3005 = !DILocation(line: 1188, column: 1, scope: !2975)
!3006 = !DILocation(line: 1187, column: 3, scope: !2975)
!3007 = distinct !DISubprogram(name: "cselib_expand_value_rtx_1", scope: !3, file: !3, line: 1232, type: !3008, scopeLine: 1234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3011)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!552, !552, !3010, !545}
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!3011 = !{!3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3025, !3030, !3031, !3033, !3035, !3041}
!3012 = !DILocalVariable(name: "orig", arg: 1, scope: !3007, file: !3, line: 1232, type: !552)
!3013 = !DILocalVariable(name: "evd", arg: 2, scope: !3007, file: !3, line: 1232, type: !3010)
!3014 = !DILocalVariable(name: "max_depth", arg: 3, scope: !3007, file: !3, line: 1233, type: !545)
!3015 = !DILocalVariable(name: "copy", scope: !3007, file: !3, line: 1235, type: !552)
!3016 = !DILocalVariable(name: "scopy", scope: !3007, file: !3, line: 1235, type: !552)
!3017 = !DILocalVariable(name: "i", scope: !3007, file: !3, line: 1236, type: !545)
!3018 = !DILocalVariable(name: "j", scope: !3007, file: !3, line: 1236, type: !545)
!3019 = !DILocalVariable(name: "code", scope: !3007, file: !3, line: 1237, type: !377)
!3020 = !DILocalVariable(name: "format_ptr", scope: !3007, file: !3, line: 1238, type: !550)
!3021 = !DILocalVariable(name: "mode", scope: !3007, file: !3, line: 1239, type: !5)
!3022 = !DILocalVariable(name: "l", scope: !3023, file: !3, line: 1253, type: !618)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1252, column: 7)
!3024 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 1250, column: 5)
!3025 = !DILocalVariable(name: "result", scope: !3026, file: !3, line: 1260, type: !552)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 1259, column: 6)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 1258, column: 8)
!3028 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 1257, column: 2)
!3029 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 1257, column: 2)
!3030 = !DILocalVariable(name: "regno", scope: !3026, file: !3, line: 1261, type: !545)
!3031 = !DILocalVariable(name: "subreg", scope: !3032, file: !3, line: 1321, type: !552)
!3032 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1320, column: 7)
!3033 = !DILocalVariable(name: "result", scope: !3034, file: !3, line: 1349, type: !552)
!3034 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1348, column: 7)
!3035 = !DILocalVariable(name: "result", scope: !3036, file: !3, line: 1398, type: !552)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 1397, column: 4)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1396, column: 6)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 1394, column: 7)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 1392, column: 3)
!3040 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 1392, column: 3)
!3041 = !DILocalVariable(name: "result", scope: !3042, file: !3, line: 1415, type: !552)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 1414, column: 8)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 1413, column: 6)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1413, column: 6)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 1410, column: 4)
!3046 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1409, column: 6)
!3047 = !DILocation(line: 0, scope: !3007)
!3048 = !DILocation(line: 1241, column: 10, scope: !3007)
!3049 = !DILocation(line: 1246, column: 17, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 1246, column: 7)
!3051 = !DILocation(line: 1246, column: 7, scope: !3007)
!3052 = !DILocation(line: 1249, column: 3, scope: !3007)
!3053 = !DILocation(line: 1253, column: 23, scope: !3023)
!3054 = !DILocation(line: 0, scope: !3023)
!3055 = !DILocation(line: 1255, column: 6, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 1255, column: 6)
!3057 = !DILocation(line: 1255, column: 8, scope: !3056)
!3058 = !DILocation(line: 1255, column: 14, scope: !3056)
!3059 = !DILocation(line: 1255, column: 18, scope: !3056)
!3060 = !DILocation(line: 1255, column: 6, scope: !3023)
!3061 = !DILocation(line: 1256, column: 11, scope: !3056)
!3062 = !DILocation(line: 1256, column: 4, scope: !3056)
!3063 = !DILocation(line: 1257, column: 2, scope: !3023)
!3064 = !DILocation(line: 1257, column: 2, scope: !3029)
!3065 = !DILocation(line: 1258, column: 8, scope: !3027)
!3066 = !DILocation(line: 1258, column: 38, scope: !3027)
!3067 = !DILocation(line: 1258, column: 35, scope: !3027)
!3068 = !DILocation(line: 1258, column: 8, scope: !3028)
!3069 = !DILocation(line: 1261, column: 20, scope: !3026)
!3070 = !DILocation(line: 0, scope: !3026)
!3071 = !DILocation(line: 1280, column: 5, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 1279, column: 12)
!3073 = !DILocation(line: 1284, column: 29, scope: !3026)
!3074 = !DILocation(line: 1284, column: 8, scope: !3026)
!3075 = !DILocation(line: 1286, column: 12, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 1286, column: 12)
!3077 = !DILocation(line: 1286, column: 22, scope: !3076)
!3078 = !DILocation(line: 1286, column: 26, scope: !3076)
!3079 = !DILocation(line: 1286, column: 37, scope: !3076)
!3080 = !DILocation(line: 1286, column: 12, scope: !3026)
!3081 = !DILocation(line: 1287, column: 3, scope: !3076)
!3082 = !DILocation(line: 1289, column: 32, scope: !3026)
!3083 = !DILocation(line: 1289, column: 37, scope: !3026)
!3084 = !DILocation(line: 1289, column: 17, scope: !3026)
!3085 = !DILocation(line: 1290, column: 31, scope: !3026)
!3086 = !DILocation(line: 1290, column: 8, scope: !3026)
!3087 = !DILocation(line: 1292, column: 12, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 1292, column: 12)
!3089 = !DILocation(line: 0, scope: !3088)
!3090 = !DILocation(line: 1257, column: 19, scope: !3028)
!3091 = !DILocation(line: 1257, column: 2, scope: !3028)
!3092 = distinct !{!3092, !3064, !3093}
!3093 = !DILocation(line: 1296, column: 6, scope: !3029)
!3094 = !DILocation(line: 1308, column: 7, scope: !3024)
!3095 = !DILocation(line: 1310, column: 11, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1310, column: 11)
!3097 = !DILocation(line: 1310, column: 34, scope: !3096)
!3098 = !DILocation(line: 1310, column: 37, scope: !3096)
!3099 = !DILocation(line: 1310, column: 11, scope: !3024)
!3100 = !DILocation(line: 1315, column: 11, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1315, column: 11)
!3102 = !DILocation(line: 1315, column: 11, scope: !3024)
!3103 = !DILocation(line: 1323, column: 11, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 1323, column: 6)
!3105 = !DILocation(line: 1323, column: 6, scope: !3104)
!3106 = !DILocation(line: 1323, column: 6, scope: !3032)
!3107 = !DILocation(line: 1325, column: 41, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 1324, column: 4)
!3109 = !DILocation(line: 1326, column: 14, scope: !3108)
!3110 = !DILocation(line: 1325, column: 15, scope: !3108)
!3111 = !DILocation(line: 0, scope: !3032)
!3112 = !DILocation(line: 1327, column: 17, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 1327, column: 10)
!3114 = !DILocation(line: 1327, column: 10, scope: !3108)
!3115 = !DILocation(line: 1331, column: 38, scope: !3032)
!3116 = !DILocation(line: 1332, column: 20, scope: !3032)
!3117 = !DILocation(line: 1331, column: 11, scope: !3032)
!3118 = !DILocation(line: 1333, column: 7, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 1333, column: 6)
!3120 = !DILocation(line: 1333, column: 6, scope: !3032)
!3121 = !DILocation(line: 1335, column: 31, scope: !3032)
!3122 = !DILocation(line: 1336, column: 10, scope: !3032)
!3123 = !DILocation(line: 1337, column: 10, scope: !3032)
!3124 = !DILocation(line: 1335, column: 10, scope: !3032)
!3125 = !DILocation(line: 1338, column: 12, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 1338, column: 6)
!3127 = !DILocation(line: 1339, column: 6, scope: !3126)
!3128 = !DILocation(line: 1339, column: 10, scope: !3126)
!3129 = !DILocation(line: 1339, column: 27, scope: !3126)
!3130 = !DILocation(line: 1340, column: 3, scope: !3126)
!3131 = !DILocation(line: 1340, column: 7, scope: !3126)
!3132 = !DILocation(line: 1341, column: 3, scope: !3126)
!3133 = !DILocation(line: 1341, column: 7, scope: !3126)
!3134 = !DILocation(line: 1338, column: 6, scope: !3032)
!3135 = !DILocation(line: 1344, column: 2, scope: !3032)
!3136 = !DILocation(line: 1351, column: 6, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 1351, column: 6)
!3138 = !DILocation(line: 1351, column: 16, scope: !3137)
!3139 = !DILocation(line: 1351, column: 20, scope: !3137)
!3140 = !DILocation(line: 1351, column: 31, scope: !3137)
!3141 = !DILocation(line: 1351, column: 6, scope: !3034)
!3142 = !DILocation(line: 1353, column: 6, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 1352, column: 4)
!3144 = !DILocation(line: 1354, column: 24, scope: !3143)
!3145 = !DILocation(line: 1354, column: 6, scope: !3143)
!3146 = !DILocation(line: 1355, column: 25, scope: !3143)
!3147 = !DILocation(line: 1355, column: 6, scope: !3143)
!3148 = !DILocation(line: 1356, column: 4, scope: !3143)
!3149 = !DILocation(line: 1358, column: 11, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 1358, column: 6)
!3151 = !DILocation(line: 1358, column: 6, scope: !3150)
!3152 = !DILocation(line: 1358, column: 6, scope: !3034)
!3153 = !DILocation(line: 1360, column: 41, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 1359, column: 4)
!3155 = !DILocation(line: 1361, column: 14, scope: !3154)
!3156 = !DILocation(line: 1360, column: 15, scope: !3154)
!3157 = !DILocation(line: 0, scope: !3034)
!3158 = !DILocation(line: 1363, column: 17, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3154, file: !3, line: 1363, column: 10)
!3160 = !DILocation(line: 1363, column: 10, scope: !3154)
!3161 = !DILocation(line: 1367, column: 23, scope: !3034)
!3162 = !DILocation(line: 1367, column: 46, scope: !3034)
!3163 = !DILocation(line: 1367, column: 11, scope: !3034)
!3164 = !DILocation(line: 1368, column: 2, scope: !3034)
!3165 = !DILocation(line: 1372, column: 16, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1372, column: 11)
!3167 = !DILocation(line: 1372, column: 11, scope: !3166)
!3168 = !DILocation(line: 1372, column: 11, scope: !3024)
!3169 = !DILocation(line: 1373, column: 35, scope: !3166)
!3170 = !DILocation(line: 1374, column: 15, scope: !3166)
!3171 = !DILocation(line: 1373, column: 9, scope: !3166)
!3172 = !DILocation(line: 1373, column: 2, scope: !3166)
!3173 = !DILocation(line: 1385, column: 12, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 1385, column: 7)
!3175 = !DILocation(line: 1385, column: 7, scope: !3174)
!3176 = !DILocation(line: 1385, column: 7, scope: !3007)
!3177 = !DILocation(line: 1388, column: 12, scope: !3174)
!3178 = !DILocation(line: 0, scope: !3174)
!3179 = !DILocation(line: 1390, column: 16, scope: !3007)
!3180 = !DILocation(line: 0, scope: !3039)
!3181 = !DILocation(line: 0, scope: !3046)
!3182 = !DILocation(line: 0, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1411, column: 10)
!3184 = !DILocation(line: 0, scope: !3042)
!3185 = !DILocation(line: 1392, column: 8, scope: !3040)
!3186 = !DILocation(line: 1392, column: 17, scope: !3039)
!3187 = !DILocation(line: 1392, column: 3, scope: !3040)
!3188 = !DILocation(line: 1393, column: 24, scope: !3039)
!3189 = !DILocation(line: 1393, column: 13, scope: !3039)
!3190 = !DILocation(line: 1393, column: 5, scope: !3039)
!3191 = !DILocation(line: 1409, column: 6, scope: !3046)
!3192 = !DILocation(line: 1409, column: 21, scope: !3046)
!3193 = !DILocation(line: 1409, column: 6, scope: !3038)
!3194 = !DILocation(line: 1413, column: 11, scope: !3044)
!3195 = !DILocation(line: 1413, column: 6, scope: !3044)
!3196 = !DILocation(line: 1417, column: 7, scope: !3042)
!3197 = !DILocation(line: 1420, column: 5, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 1419, column: 7)
!3199 = !DILocation(line: 1413, column: 6, scope: !3043)
!3200 = distinct !{!3200, !3195, !3201}
!3201 = !DILocation(line: 1421, column: 8, scope: !3044)
!3202 = !DILocation(line: 1396, column: 6, scope: !3037)
!3203 = !DILocation(line: 1396, column: 21, scope: !3037)
!3204 = !DILocation(line: 1396, column: 6, scope: !3038)
!3205 = !DILocation(line: 1398, column: 19, scope: !3036)
!3206 = !DILocation(line: 0, scope: !3036)
!3207 = !DILocation(line: 1400, column: 11, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 1400, column: 10)
!3209 = !DILocation(line: 1400, column: 10, scope: !3036)
!3210 = !DILocation(line: 1402, column: 10, scope: !3036)
!3211 = !DILocation(line: 1403, column: 8, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 1402, column: 10)
!3213 = !DILocation(line: 1438, column: 2, scope: !3038)
!3214 = !DILocation(line: 1439, column: 7, scope: !3038)
!3215 = !DILocation(line: 1392, column: 43, scope: !3039)
!3216 = !DILocation(line: 1392, column: 3, scope: !3039)
!3217 = distinct !{!3217, !3187, !3218}
!3218 = !DILocation(line: 1439, column: 7, scope: !3040)
!3219 = !DILocation(line: 1413, column: 22, scope: !3043)
!3220 = !DILocation(line: 1413, column: 20, scope: !3043)
!3221 = !DILocation(line: 1415, column: 43, scope: !3042)
!3222 = !DILocation(line: 1415, column: 16, scope: !3042)
!3223 = !DILocation(line: 1417, column: 8, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 1417, column: 7)
!3225 = !DILocation(line: 1419, column: 7, scope: !3042)
!3226 = !DILocation(line: 1413, column: 42, scope: !3043)
!3227 = !DILocation(line: 1441, column: 12, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 1441, column: 7)
!3229 = !DILocation(line: 1504, column: 1, scope: !3007)
!3230 = !DILocation(line: 1403, column: 23, scope: !3212)
!3231 = !DILocation(line: 1412, column: 38, scope: !3183)
!3232 = !DILocation(line: 1412, column: 25, scope: !3183)
!3233 = !DILocation(line: 1412, column: 8, scope: !3183)
!3234 = !DILocation(line: 1412, column: 23, scope: !3183)
!3235 = !DILocation(line: 0, scope: !3044)
!3236 = !DILocation(line: 1420, column: 26, scope: !3198)
!3237 = !DILocation(line: 1441, column: 7, scope: !3228)
!3238 = !DILocation(line: 1441, column: 7, scope: !3007)
!3239 = !DILocation(line: 1444, column: 10, scope: !3007)
!3240 = !DILocation(line: 1450, column: 11, scope: !3007)
!3241 = !DILocation(line: 1450, column: 3, scope: !3007)
!3242 = !DILocation(line: 1453, column: 11, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1453, column: 11)
!3244 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 1451, column: 5)
!3245 = !DILocation(line: 1454, column: 4, scope: !3243)
!3246 = !DILocation(line: 1454, column: 7, scope: !3243)
!3247 = !DILocation(line: 1454, column: 33, scope: !3243)
!3248 = !DILocation(line: 1453, column: 11, scope: !3244)
!3249 = !DILocation(line: 1457, column: 10, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3243, file: !3, line: 1455, column: 2)
!3251 = !DILocation(line: 1456, column: 12, scope: !3250)
!3252 = !DILocation(line: 1458, column: 8, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 1458, column: 8)
!3254 = !DILocation(line: 1458, column: 8, scope: !3250)
!3255 = !DILocation(line: 1468, column: 11, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1468, column: 11)
!3257 = !DILocation(line: 1469, column: 4, scope: !3256)
!3258 = !DILocation(line: 1469, column: 7, scope: !3256)
!3259 = !DILocation(line: 1469, column: 33, scope: !3256)
!3260 = !DILocation(line: 1468, column: 11, scope: !3244)
!3261 = !DILocation(line: 1472, column: 12, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3256, file: !3, line: 1470, column: 2)
!3263 = !DILocation(line: 1473, column: 28, scope: !3262)
!3264 = !DILocation(line: 1474, column: 12, scope: !3262)
!3265 = !DILocation(line: 1471, column: 12, scope: !3262)
!3266 = !DILocation(line: 1475, column: 8, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3262, file: !3, line: 1475, column: 8)
!3268 = !DILocation(line: 1475, column: 8, scope: !3262)
!3269 = !DILocation(line: 1481, column: 11, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1481, column: 11)
!3271 = !DILocation(line: 1482, column: 4, scope: !3270)
!3272 = !DILocation(line: 1482, column: 7, scope: !3270)
!3273 = !DILocation(line: 1482, column: 33, scope: !3270)
!3274 = !DILocation(line: 1483, column: 4, scope: !3270)
!3275 = !DILocation(line: 1483, column: 8, scope: !3270)
!3276 = !DILocation(line: 1483, column: 34, scope: !3270)
!3277 = !DILocation(line: 1484, column: 8, scope: !3270)
!3278 = !DILocation(line: 1484, column: 11, scope: !3270)
!3279 = !DILocation(line: 1484, column: 37, scope: !3270)
!3280 = !DILocation(line: 1481, column: 11, scope: !3244)
!3281 = !DILocation(line: 1487, column: 8, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 1485, column: 2)
!3283 = !DILocation(line: 1490, column: 10, scope: !3282)
!3284 = !DILocation(line: 0, scope: !3282)
!3285 = !DILocation(line: 1486, column: 12, scope: !3282)
!3286 = !DILocation(line: 1493, column: 8, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 1493, column: 8)
!3288 = !DILocation(line: 1493, column: 8, scope: !3282)
!3289 = !DILocation(line: 1500, column: 11, scope: !3007)
!3290 = !DILocation(line: 1501, column: 7, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 1501, column: 7)
!3292 = distinct !DISubprogram(name: "cselib_expand_value_rtx_cb", scope: !3, file: !3, line: 1197, type: !3293, scopeLine: 1199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3295)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!552, !552, !2978, !545, !2988, !549}
!3295 = !{!3296, !3297, !3298, !3299, !3300, !3301}
!3296 = !DILocalVariable(name: "orig", arg: 1, scope: !3292, file: !3, line: 1197, type: !552)
!3297 = !DILocalVariable(name: "regs_active", arg: 2, scope: !3292, file: !3, line: 1197, type: !2978)
!3298 = !DILocalVariable(name: "max_depth", arg: 3, scope: !3292, file: !3, line: 1197, type: !545)
!3299 = !DILocalVariable(name: "cb", arg: 4, scope: !3292, file: !3, line: 1198, type: !2988)
!3300 = !DILocalVariable(name: "data", arg: 5, scope: !3292, file: !3, line: 1198, type: !549)
!3301 = !DILocalVariable(name: "evd", scope: !3292, file: !3, line: 1200, type: !2984)
!3302 = !DILocation(line: 0, scope: !3292)
!3303 = !DILocation(line: 1200, column: 3, scope: !3292)
!3304 = !DILocation(line: 1202, column: 7, scope: !3292)
!3305 = !DILocation(line: 1202, column: 19, scope: !3292)
!3306 = !DILocation(line: 1203, column: 7, scope: !3292)
!3307 = !DILocation(line: 1203, column: 16, scope: !3292)
!3308 = !DILocation(line: 1204, column: 7, scope: !3292)
!3309 = !DILocation(line: 1204, column: 20, scope: !3292)
!3310 = !DILocation(line: 1205, column: 7, scope: !3292)
!3311 = !DILocation(line: 1205, column: 13, scope: !3292)
!3312 = !DILocation(line: 1207, column: 10, scope: !3292)
!3313 = !DILocation(line: 1208, column: 1, scope: !3292)
!3314 = !DILocation(line: 1207, column: 3, scope: !3292)
!3315 = distinct !DISubprogram(name: "cselib_dummy_expand_value_rtx_cb", scope: !3, file: !3, line: 1215, type: !3316, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!544, !552, !2978, !545, !2988, !549}
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3324}
!3319 = !DILocalVariable(name: "orig", arg: 1, scope: !3315, file: !3, line: 1215, type: !552)
!3320 = !DILocalVariable(name: "regs_active", arg: 2, scope: !3315, file: !3, line: 1215, type: !2978)
!3321 = !DILocalVariable(name: "max_depth", arg: 3, scope: !3315, file: !3, line: 1215, type: !545)
!3322 = !DILocalVariable(name: "cb", arg: 4, scope: !3315, file: !3, line: 1216, type: !2988)
!3323 = !DILocalVariable(name: "data", arg: 5, scope: !3315, file: !3, line: 1216, type: !549)
!3324 = !DILocalVariable(name: "evd", scope: !3315, file: !3, line: 1218, type: !2984)
!3325 = !DILocation(line: 0, scope: !3315)
!3326 = !DILocation(line: 1218, column: 3, scope: !3315)
!3327 = !DILocation(line: 1220, column: 7, scope: !3315)
!3328 = !DILocation(line: 1220, column: 19, scope: !3315)
!3329 = !DILocation(line: 1221, column: 7, scope: !3315)
!3330 = !DILocation(line: 1221, column: 16, scope: !3315)
!3331 = !DILocation(line: 1222, column: 7, scope: !3315)
!3332 = !DILocation(line: 1222, column: 20, scope: !3315)
!3333 = !DILocation(line: 1223, column: 7, scope: !3315)
!3334 = !DILocation(line: 1223, column: 13, scope: !3315)
!3335 = !DILocation(line: 1225, column: 10, scope: !3315)
!3336 = !DILocation(line: 1225, column: 60, scope: !3315)
!3337 = !DILocation(line: 1226, column: 1, scope: !3315)
!3338 = !DILocation(line: 1225, column: 3, scope: !3315)
!3339 = distinct !DISubprogram(name: "cselib_subst_to_values", scope: !3, file: !3, line: 1513, type: !3340, scopeLine: 1514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3342)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!552, !552}
!3342 = !{!3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3356, !3359}
!3343 = !DILocalVariable(name: "x", arg: 1, scope: !3339, file: !3, line: 1513, type: !552)
!3344 = !DILocalVariable(name: "code", scope: !3339, file: !3, line: 1515, type: !377)
!3345 = !DILocalVariable(name: "fmt", scope: !3339, file: !3, line: 1516, type: !550)
!3346 = !DILocalVariable(name: "e", scope: !3339, file: !3, line: 1517, type: !623)
!3347 = !DILocalVariable(name: "l", scope: !3339, file: !3, line: 1518, type: !618)
!3348 = !DILocalVariable(name: "copy", scope: !3339, file: !3, line: 1519, type: !552)
!3349 = !DILocalVariable(name: "i", scope: !3339, file: !3, line: 1520, type: !545)
!3350 = !DILocalVariable(name: "t", scope: !3351, file: !3, line: 1567, type: !552)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 1566, column: 2)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 1565, column: 11)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 1564, column: 5)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 1563, column: 3)
!3355 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 1563, column: 3)
!3356 = !DILocalVariable(name: "j", scope: !3357, file: !3, line: 1578, type: !545)
!3357 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 1577, column: 2)
!3358 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 1576, column: 16)
!3359 = !DILocalVariable(name: "t", scope: !3360, file: !3, line: 1582, type: !552)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 1581, column: 6)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 1580, column: 4)
!3362 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 1580, column: 4)
!3363 = !DILocation(line: 0, scope: !3339)
!3364 = !DILocation(line: 1515, column: 24, scope: !3339)
!3365 = !DILocation(line: 1516, column: 21, scope: !3339)
!3366 = !DILocation(line: 1522, column: 3, scope: !3339)
!3367 = !DILocation(line: 1525, column: 11, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 1523, column: 5)
!3369 = !DILocation(line: 1526, column: 11, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 1526, column: 11)
!3371 = !DILocation(line: 1526, column: 13, scope: !3370)
!3372 = !DILocation(line: 1526, column: 19, scope: !3370)
!3373 = !DILocation(line: 1526, column: 23, scope: !3370)
!3374 = !DILocation(line: 1526, column: 11, scope: !3368)
!3375 = !DILocation(line: 1527, column: 9, scope: !3370)
!3376 = !DILocation(line: 1527, column: 2, scope: !3370)
!3377 = !DILocation(line: 0, scope: !3368)
!3378 = !DILocation(line: 1528, column: 7, scope: !3368)
!3379 = !DILocation(line: 1528, column: 7, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 1528, column: 7)
!3381 = !DILocation(line: 1529, column: 6, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 1529, column: 6)
!3383 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 1528, column: 7)
!3384 = !DILocation(line: 1529, column: 36, scope: !3382)
!3385 = !DILocation(line: 1529, column: 33, scope: !3382)
!3386 = !DILocation(line: 1529, column: 6, scope: !3383)
!3387 = !DILocation(line: 1530, column: 4, scope: !3382)
!3388 = !DILocation(line: 1528, column: 24, scope: !3383)
!3389 = !DILocation(line: 1528, column: 7, scope: !3383)
!3390 = distinct !{!3390, !3379, !3391}
!3391 = !DILocation(line: 1530, column: 19, scope: !3380)
!3392 = !DILocation(line: 1532, column: 7, scope: !3368)
!3393 = !DILocation(line: 1535, column: 11, scope: !3368)
!3394 = !DILocation(line: 1536, column: 13, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 1536, column: 11)
!3396 = !DILocation(line: 1536, column: 11, scope: !3368)
!3397 = !DILocation(line: 1540, column: 24, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 1537, column: 2)
!3399 = !DILocation(line: 1540, column: 34, scope: !3398)
!3400 = !DILocation(line: 1540, column: 8, scope: !3398)
!3401 = !DILocation(line: 1541, column: 2, scope: !3398)
!3402 = !DILocation(line: 1542, column: 17, scope: !3368)
!3403 = !DILocation(line: 1542, column: 7, scope: !3368)
!3404 = !DILocation(line: 1556, column: 27, scope: !3368)
!3405 = !DILocation(line: 1556, column: 37, scope: !3368)
!3406 = !DILocation(line: 1556, column: 11, scope: !3368)
!3407 = !DILocation(line: 1557, column: 17, scope: !3368)
!3408 = !DILocation(line: 1557, column: 7, scope: !3368)
!3409 = !DILocation(line: 1563, column: 12, scope: !3355)
!3410 = !DILocation(line: 0, scope: !3361)
!3411 = !DILocation(line: 1563, column: 8, scope: !3355)
!3412 = !DILocation(line: 0, scope: !3355)
!3413 = !DILocation(line: 1563, column: 41, scope: !3354)
!3414 = !DILocation(line: 1563, column: 3, scope: !3355)
!3415 = !DILocation(line: 1565, column: 11, scope: !3352)
!3416 = !DILocation(line: 1565, column: 18, scope: !3352)
!3417 = !DILocation(line: 1565, column: 11, scope: !3353)
!3418 = !DILocation(line: 1567, column: 36, scope: !3351)
!3419 = !DILocation(line: 1567, column: 12, scope: !3351)
!3420 = !DILocation(line: 0, scope: !3351)
!3421 = !DILocation(line: 1569, column: 13, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3351, file: !3, line: 1569, column: 8)
!3423 = !DILocation(line: 1569, column: 10, scope: !3422)
!3424 = !DILocation(line: 1569, column: 8, scope: !3351)
!3425 = !DILocation(line: 1571, column: 14, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 1571, column: 12)
!3427 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 1570, column: 6)
!3428 = !DILocation(line: 1571, column: 12, scope: !3427)
!3429 = !DILocation(line: 1572, column: 10, scope: !3426)
!3430 = !DILocation(line: 1572, column: 3, scope: !3426)
!3431 = !DILocation(line: 1573, column: 8, scope: !3427)
!3432 = !DILocation(line: 1573, column: 23, scope: !3427)
!3433 = !DILocation(line: 1574, column: 6, scope: !3427)
!3434 = !DILocation(line: 1576, column: 23, scope: !3358)
!3435 = !DILocation(line: 1576, column: 16, scope: !3352)
!3436 = !DILocation(line: 1580, column: 4, scope: !3362)
!3437 = !DILocation(line: 0, scope: !3357)
!3438 = !DILocation(line: 1580, column: 20, scope: !3361)
!3439 = !DILocation(line: 1580, column: 18, scope: !3361)
!3440 = !DILocation(line: 1582, column: 40, scope: !3360)
!3441 = !DILocation(line: 1582, column: 16, scope: !3360)
!3442 = !DILocation(line: 0, scope: !3360)
!3443 = !DILocation(line: 1584, column: 17, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 1584, column: 12)
!3445 = !DILocation(line: 1584, column: 14, scope: !3444)
!3446 = !DILocation(line: 1584, column: 12, scope: !3360)
!3447 = !DILocation(line: 1586, column: 24, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !3, line: 1586, column: 9)
!3449 = distinct !DILexicalBlock(scope: !3444, file: !3, line: 1585, column: 3)
!3450 = !DILocation(line: 1586, column: 21, scope: !3448)
!3451 = !DILocation(line: 1586, column: 9, scope: !3449)
!3452 = !DILocation(line: 1588, column: 15, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3454, file: !3, line: 1588, column: 13)
!3454 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 1587, column: 7)
!3455 = !DILocation(line: 1588, column: 13, scope: !3454)
!3456 = !DILocation(line: 1589, column: 11, scope: !3453)
!3457 = !DILocation(line: 1590, column: 46, scope: !3454)
!3458 = !DILocation(line: 1589, column: 4, scope: !3453)
!3459 = !DILocation(line: 1590, column: 26, scope: !3454)
!3460 = !DILocation(line: 1590, column: 9, scope: !3454)
!3461 = !DILocation(line: 1590, column: 24, scope: !3454)
!3462 = !DILocation(line: 1591, column: 7, scope: !3454)
!3463 = !DILocation(line: 1592, column: 5, scope: !3449)
!3464 = !DILocation(line: 1592, column: 26, scope: !3449)
!3465 = !DILocation(line: 1593, column: 3, scope: !3449)
!3466 = !DILocation(line: 1580, column: 37, scope: !3361)
!3467 = !DILocation(line: 1580, column: 4, scope: !3361)
!3468 = distinct !{!3468, !3436, !3469}
!3469 = !DILocation(line: 1594, column: 6, scope: !3362)
!3470 = !DILocation(line: 1563, column: 3, scope: !3354)
!3471 = distinct !{!3471, !3414, !3472}
!3472 = !DILocation(line: 1596, column: 5, scope: !3355)
!3473 = !DILocation(line: 1599, column: 1, scope: !3339)
!3474 = distinct !DISubprogram(name: "cselib_lookup_mem", scope: !3, file: !3, line: 1046, type: !3475, scopeLine: 1047, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!623, !552, !545}
!3477 = !{!3478, !3479, !3480, !3481, !3482, !3483, !3484}
!3478 = !DILocalVariable(name: "x", arg: 1, scope: !3474, file: !3, line: 1046, type: !552)
!3479 = !DILocalVariable(name: "create", arg: 2, scope: !3474, file: !3, line: 1046, type: !545)
!3480 = !DILocalVariable(name: "mode", scope: !3474, file: !3, line: 1048, type: !5)
!3481 = !DILocalVariable(name: "slot", scope: !3474, file: !3, line: 1049, type: !1077)
!3482 = !DILocalVariable(name: "addr", scope: !3474, file: !3, line: 1050, type: !623)
!3483 = !DILocalVariable(name: "mem_elt", scope: !3474, file: !3, line: 1051, type: !623)
!3484 = !DILocalVariable(name: "l", scope: !3474, file: !3, line: 1052, type: !618)
!3485 = !DILocation(line: 0, scope: !3474)
!3486 = !DILocation(line: 1048, column: 28, scope: !3474)
!3487 = !DILocation(line: 1054, column: 7, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 1054, column: 7)
!3489 = !DILocation(line: 1054, column: 34, scope: !3488)
!3490 = !DILocation(line: 1054, column: 26, scope: !3488)
!3491 = !DILocation(line: 1055, column: 11, scope: !3488)
!3492 = !DILocation(line: 1056, column: 11, scope: !3488)
!3493 = !DILocation(line: 1056, column: 31, scope: !3488)
!3494 = !DILocation(line: 1056, column: 34, scope: !3488)
!3495 = !DILocation(line: 1054, column: 7, scope: !3474)
!3496 = !DILocation(line: 1060, column: 25, scope: !3474)
!3497 = !DILocation(line: 1060, column: 10, scope: !3474)
!3498 = !DILocation(line: 1061, column: 9, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 1061, column: 7)
!3500 = !DILocation(line: 1061, column: 7, scope: !3474)
!3501 = !DILocation(line: 1065, column: 18, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 1065, column: 3)
!3503 = !DILocation(line: 1065, column: 8, scope: !3502)
!3504 = !DILocation(line: 0, scope: !3502)
!3505 = !DILocation(line: 1065, column: 3, scope: !3502)
!3506 = !DILocation(line: 1066, column: 9, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 1066, column: 9)
!3508 = distinct !DILexicalBlock(scope: !3502, file: !3, line: 1065, column: 3)
!3509 = !DILocation(line: 1066, column: 36, scope: !3507)
!3510 = !DILocation(line: 1066, column: 9, scope: !3508)
!3511 = !DILocation(line: 1068, column: 29, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 1067, column: 7)
!3513 = !DILocation(line: 1068, column: 2, scope: !3512)
!3514 = !DILocation(line: 1069, column: 12, scope: !3512)
!3515 = !DILocation(line: 1069, column: 2, scope: !3512)
!3516 = !DILocation(line: 1065, column: 39, scope: !3508)
!3517 = !DILocation(line: 1065, column: 3, scope: !3508)
!3518 = distinct !{!3518, !3505, !3519}
!3519 = !DILocation(line: 1070, column: 7, scope: !3502)
!3520 = !DILocation(line: 1072, column: 9, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 1072, column: 7)
!3522 = !DILocation(line: 1072, column: 7, scope: !3474)
!3523 = !DILocation(line: 1075, column: 29, scope: !3474)
!3524 = !DILocation(line: 1075, column: 13, scope: !3474)
!3525 = !DILocation(line: 1076, column: 3, scope: !3474)
!3526 = !DILocation(line: 1077, column: 36, scope: !3474)
!3527 = !DILocation(line: 1077, column: 55, scope: !3474)
!3528 = !DILocation(line: 1078, column: 17, scope: !3474)
!3529 = !DILocation(line: 1077, column: 10, scope: !3474)
!3530 = !DILocation(line: 1079, column: 9, scope: !3474)
!3531 = !DILocation(line: 1080, column: 3, scope: !3474)
!3532 = !DILocation(line: 1081, column: 1, scope: !3474)
!3533 = distinct !DISubprogram(name: "new_cselib_val", scope: !3, file: !3, line: 976, type: !3534, scopeLine: 977, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3536)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!623, !7, !5, !552}
!3536 = !{!3537, !3538, !3539, !3540}
!3537 = !DILocalVariable(name: "hash", arg: 1, scope: !3533, file: !3, line: 976, type: !7)
!3538 = !DILocalVariable(name: "mode", arg: 2, scope: !3533, file: !3, line: 976, type: !5)
!3539 = !DILocalVariable(name: "x", arg: 3, scope: !3533, file: !3, line: 976, type: !552)
!3540 = !DILocalVariable(name: "e", scope: !3533, file: !3, line: 978, type: !623)
!3541 = !DILocation(line: 0, scope: !3533)
!3542 = !DILocation(line: 978, column: 46, scope: !3533)
!3543 = !DILocation(line: 978, column: 34, scope: !3533)
!3544 = !DILocation(line: 978, column: 19, scope: !3533)
!3545 = !DILocation(line: 980, column: 3, scope: !3533)
!3546 = !DILocation(line: 981, column: 3, scope: !3533)
!3547 = !DILocation(line: 983, column: 6, scope: !3533)
!3548 = !DILocation(line: 983, column: 11, scope: !3533)
!3549 = !DILocation(line: 984, column: 20, scope: !3533)
!3550 = !DILocation(line: 984, column: 6, scope: !3533)
!3551 = !DILocation(line: 984, column: 10, scope: !3533)
!3552 = !DILocation(line: 990, column: 34, scope: !3533)
!3553 = !DILocation(line: 990, column: 22, scope: !3533)
!3554 = !DILocation(line: 990, column: 6, scope: !3533)
!3555 = !DILocation(line: 990, column: 14, scope: !3533)
!3556 = !DILocation(line: 991, column: 3, scope: !3533)
!3557 = !DILocation(line: 992, column: 3, scope: !3533)
!3558 = !DILocation(line: 993, column: 3, scope: !3533)
!3559 = !DILocation(line: 994, column: 3, scope: !3533)
!3560 = !DILocation(line: 994, column: 31, scope: !3533)
!3561 = !DILocation(line: 995, column: 6, scope: !3533)
!3562 = !DILocation(line: 995, column: 16, scope: !3533)
!3563 = !DILocation(line: 996, column: 6, scope: !3533)
!3564 = !DILocation(line: 996, column: 11, scope: !3533)
!3565 = !DILocation(line: 997, column: 6, scope: !3533)
!3566 = !DILocation(line: 997, column: 26, scope: !3533)
!3567 = !DILocation(line: 999, column: 7, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 999, column: 7)
!3569 = !DILocation(line: 999, column: 17, scope: !3568)
!3570 = !DILocation(line: 999, column: 21, scope: !3568)
!3571 = !DILocation(line: 999, column: 32, scope: !3568)
!3572 = !DILocation(line: 999, column: 7, scope: !3533)
!3573 = !DILocation(line: 1001, column: 53, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 1000, column: 5)
!3575 = !DILocation(line: 1001, column: 7, scope: !3574)
!3576 = !DILocation(line: 1002, column: 11, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3574, file: !3, line: 1002, column: 11)
!3578 = !DILocation(line: 1002, column: 31, scope: !3577)
!3579 = !DILocation(line: 1002, column: 28, scope: !3577)
!3580 = !DILocation(line: 0, scope: !3577)
!3581 = !DILocation(line: 1003, column: 2, scope: !3577)
!3582 = !DILocation(line: 1005, column: 2, scope: !3577)
!3583 = !DILocation(line: 1006, column: 25, scope: !3574)
!3584 = !DILocation(line: 1006, column: 7, scope: !3574)
!3585 = !DILocation(line: 1007, column: 20, scope: !3574)
!3586 = !DILocation(line: 1007, column: 7, scope: !3574)
!3587 = !DILocation(line: 1008, column: 5, scope: !3574)
!3588 = !DILocation(line: 1010, column: 3, scope: !3533)
!3589 = distinct !DISubprogram(name: "cselib_lookup_from_insn", scope: !3, file: !3, line: 1691, type: !3590, scopeLine: 1693, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3592)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!623, !552, !5, !545, !552}
!3592 = !{!3593, !3594, !3595, !3596, !3597}
!3593 = !DILocalVariable(name: "x", arg: 1, scope: !3589, file: !3, line: 1691, type: !552)
!3594 = !DILocalVariable(name: "mode", arg: 2, scope: !3589, file: !3, line: 1691, type: !5)
!3595 = !DILocalVariable(name: "create", arg: 3, scope: !3589, file: !3, line: 1692, type: !545)
!3596 = !DILocalVariable(name: "insn", arg: 4, scope: !3589, file: !3, line: 1692, type: !552)
!3597 = !DILocalVariable(name: "ret", scope: !3589, file: !3, line: 1694, type: !623)
!3598 = !DILocation(line: 0, scope: !3589)
!3599 = !DILocation(line: 1696, column: 3, scope: !3589)
!3600 = !DILocation(line: 1697, column: 23, scope: !3589)
!3601 = !DILocation(line: 1699, column: 9, scope: !3589)
!3602 = !DILocation(line: 1701, column: 23, scope: !3589)
!3603 = !DILocation(line: 1703, column: 3, scope: !3589)
!3604 = distinct !DISubprogram(name: "cselib_lookup_1", scope: !3, file: !3, line: 1607, type: !2948, scopeLine: 1608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3605)
!3605 = !{!3606, !3607, !3608, !3609, !3610, !3611, !3612, !3615, !3616}
!3606 = !DILocalVariable(name: "x", arg: 1, scope: !3604, file: !3, line: 1607, type: !552)
!3607 = !DILocalVariable(name: "mode", arg: 2, scope: !3604, file: !3, line: 1607, type: !5)
!3608 = !DILocalVariable(name: "create", arg: 3, scope: !3604, file: !3, line: 1607, type: !545)
!3609 = !DILocalVariable(name: "slot", scope: !3604, file: !3, line: 1609, type: !1077)
!3610 = !DILocalVariable(name: "e", scope: !3604, file: !3, line: 1610, type: !623)
!3611 = !DILocalVariable(name: "hashval", scope: !3604, file: !3, line: 1611, type: !7)
!3612 = !DILocalVariable(name: "l", scope: !3613, file: !3, line: 1621, type: !618)
!3613 = distinct !DILexicalBlock(scope: !3614, file: !3, line: 1620, column: 5)
!3614 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 1619, column: 7)
!3615 = !DILocalVariable(name: "i", scope: !3613, file: !3, line: 1622, type: !7)
!3616 = !DILocalVariable(name: "n", scope: !3617, file: !3, line: 1639, type: !7)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !3, line: 1638, column: 2)
!3618 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 1637, column: 11)
!3619 = !DILocation(line: 0, scope: !3604)
!3620 = !DILocation(line: 1613, column: 7, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 1613, column: 7)
!3622 = !DILocation(line: 1613, column: 20, scope: !3621)
!3623 = !DILocation(line: 1613, column: 7, scope: !3604)
!3624 = !DILocation(line: 1614, column: 12, scope: !3621)
!3625 = !DILocation(line: 1614, column: 5, scope: !3621)
!3626 = !DILocation(line: 1616, column: 7, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 1616, column: 7)
!3628 = !DILocation(line: 1616, column: 20, scope: !3627)
!3629 = !DILocation(line: 1616, column: 7, scope: !3604)
!3630 = !DILocation(line: 1617, column: 12, scope: !3627)
!3631 = !DILocation(line: 1617, column: 5, scope: !3627)
!3632 = !DILocation(line: 1619, column: 7, scope: !3614)
!3633 = !DILocation(line: 1619, column: 7, scope: !3604)
!3634 = !DILocation(line: 1622, column: 24, scope: !3613)
!3635 = !DILocation(line: 0, scope: !3613)
!3636 = !DILocation(line: 1624, column: 11, scope: !3613)
!3637 = !DILocation(line: 1625, column: 11, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 1625, column: 11)
!3639 = !DILocation(line: 1625, column: 13, scope: !3638)
!3640 = !DILocation(line: 1625, column: 19, scope: !3638)
!3641 = !DILocation(line: 1625, column: 23, scope: !3638)
!3642 = !DILocation(line: 1625, column: 11, scope: !3613)
!3643 = !DILocation(line: 1626, column: 9, scope: !3638)
!3644 = !DILocation(line: 1626, column: 2, scope: !3638)
!3645 = !DILocation(line: 1627, column: 7, scope: !3613)
!3646 = !DILocation(line: 1627, column: 7, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 1627, column: 7)
!3648 = !DILocation(line: 1628, column: 14, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 1628, column: 6)
!3650 = distinct !DILexicalBlock(scope: !3647, file: !3, line: 1627, column: 7)
!3651 = !DILocation(line: 1628, column: 11, scope: !3649)
!3652 = !DILocation(line: 1628, column: 6, scope: !3650)
!3653 = !DILocation(line: 1630, column: 33, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3649, file: !3, line: 1629, column: 4)
!3655 = !DILocation(line: 1630, column: 6, scope: !3654)
!3656 = !DILocation(line: 1631, column: 16, scope: !3654)
!3657 = !DILocation(line: 1631, column: 6, scope: !3654)
!3658 = !DILocation(line: 1627, column: 24, scope: !3650)
!3659 = !DILocation(line: 1627, column: 7, scope: !3650)
!3660 = distinct !{!3660, !3646, !3661}
!3661 = !DILocation(line: 1632, column: 4, scope: !3647)
!3662 = !DILocation(line: 1634, column: 13, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 1634, column: 11)
!3664 = !DILocation(line: 1634, column: 11, scope: !3613)
!3665 = !DILocation(line: 1637, column: 13, scope: !3618)
!3666 = !DILocation(line: 1637, column: 11, scope: !3613)
!3667 = !DILocation(line: 1639, column: 21, scope: !3617)
!3668 = !DILocation(line: 0, scope: !3617)
!3669 = !DILocation(line: 1641, column: 12, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 1641, column: 8)
!3671 = !DILocation(line: 1641, column: 10, scope: !3670)
!3672 = !DILocation(line: 1641, column: 8, scope: !3617)
!3673 = !DILocation(line: 1642, column: 21, scope: !3670)
!3674 = !DILocation(line: 1642, column: 6, scope: !3670)
!3675 = !DILocation(line: 1645, column: 27, scope: !3613)
!3676 = !DILocation(line: 1645, column: 37, scope: !3613)
!3677 = !DILocation(line: 1645, column: 11, scope: !3613)
!3678 = !DILocation(line: 1646, column: 38, scope: !3613)
!3679 = !DILocation(line: 1646, column: 17, scope: !3613)
!3680 = !DILocation(line: 1646, column: 15, scope: !3613)
!3681 = !DILocation(line: 1647, column: 11, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 1647, column: 11)
!3683 = !DILocation(line: 1647, column: 26, scope: !3682)
!3684 = !DILocation(line: 1647, column: 11, scope: !3613)
!3685 = !DILocation(line: 1652, column: 4, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3682, file: !3, line: 1648, column: 2)
!3687 = !DILocation(line: 1652, column: 25, scope: !3686)
!3688 = !DILocation(line: 1652, column: 29, scope: !3686)
!3689 = !DILocation(line: 1653, column: 35, scope: !3686)
!3690 = !DILocation(line: 1653, column: 21, scope: !3686)
!3691 = !DILocation(line: 1653, column: 4, scope: !3686)
!3692 = !DILocation(line: 1653, column: 19, scope: !3686)
!3693 = !DILocation(line: 1655, column: 44, scope: !3613)
!3694 = !DILocation(line: 1654, column: 2, scope: !3686)
!3695 = !DILocation(line: 1655, column: 60, scope: !3613)
!3696 = !DILocation(line: 1655, column: 30, scope: !3613)
!3697 = !DILocation(line: 1655, column: 7, scope: !3613)
!3698 = !DILocation(line: 1655, column: 23, scope: !3613)
!3699 = !DILocation(line: 1655, column: 28, scope: !3613)
!3700 = !DILocation(line: 1656, column: 40, scope: !3613)
!3701 = !DILocation(line: 1656, column: 59, scope: !3613)
!3702 = !DILocation(line: 1656, column: 65, scope: !3613)
!3703 = !DILocation(line: 1656, column: 14, scope: !3613)
!3704 = !DILocation(line: 1657, column: 13, scope: !3613)
!3705 = !DILocation(line: 1658, column: 7, scope: !3613)
!3706 = !DILocation(line: 1661, column: 7, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 1661, column: 7)
!3708 = !DILocation(line: 1661, column: 7, scope: !3604)
!3709 = !DILocation(line: 1662, column: 12, scope: !3707)
!3710 = !DILocation(line: 1662, column: 5, scope: !3707)
!3711 = !DILocation(line: 1664, column: 13, scope: !3604)
!3712 = !DILocation(line: 1666, column: 9, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 1666, column: 7)
!3714 = !DILocation(line: 1666, column: 7, scope: !3604)
!3715 = !DILocation(line: 1669, column: 36, scope: !3604)
!3716 = !DILocation(line: 1669, column: 55, scope: !3604)
!3717 = !DILocation(line: 1670, column: 17, scope: !3604)
!3718 = !DILocation(line: 1669, column: 10, scope: !3604)
!3719 = !DILocation(line: 1671, column: 12, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 1671, column: 7)
!3721 = !DILocation(line: 1671, column: 7, scope: !3604)
!3722 = !DILocation(line: 1674, column: 22, scope: !3604)
!3723 = !DILocation(line: 1675, column: 7, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 1675, column: 7)
!3725 = !DILocation(line: 1675, column: 7, scope: !3604)
!3726 = !DILocation(line: 1678, column: 7, scope: !3604)
!3727 = !DILocation(line: 1683, column: 9, scope: !3604)
!3728 = !DILocation(line: 1684, column: 34, scope: !3604)
!3729 = !DILocation(line: 1684, column: 40, scope: !3604)
!3730 = !DILocation(line: 1684, column: 13, scope: !3604)
!3731 = !DILocation(line: 1684, column: 11, scope: !3604)
!3732 = !DILocation(line: 1685, column: 3, scope: !3604)
!3733 = !DILocation(line: 1686, column: 1, scope: !3604)
!3734 = distinct !DISubprogram(name: "cselib_invalidate_rtx", scope: !3, file: !3, line: 1934, type: !2568, scopeLine: 1935, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3735)
!3735 = !{!3736}
!3736 = !DILocalVariable(name: "dest", arg: 1, scope: !3734, file: !3, line: 1934, type: !552)
!3737 = !DILocation(line: 1951, column: 5, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 1950, column: 7)
!3739 = !DILocation(line: 0, scope: !3734)
!3740 = !DILocation(line: 1936, column: 3, scope: !3734)
!3741 = !DILocation(line: 1936, column: 10, scope: !3734)
!3742 = !DILocation(line: 1936, column: 26, scope: !3734)
!3743 = !DILocation(line: 1937, column: 3, scope: !3734)
!3744 = !DILocation(line: 1937, column: 22, scope: !3734)
!3745 = !DILocation(line: 1938, column: 22, scope: !3734)
!3746 = !DILocation(line: 1938, column: 3, scope: !3734)
!3747 = !DILocation(line: 1939, column: 12, scope: !3734)
!3748 = distinct !{!3748, !3740, !3747}
!3749 = !DILocation(line: 1941, column: 7, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 1941, column: 7)
!3751 = !DILocation(line: 1941, column: 7, scope: !3734)
!3752 = !DILocation(line: 1942, column: 30, scope: !3750)
!3753 = !DILocation(line: 1942, column: 44, scope: !3750)
!3754 = !DILocation(line: 1942, column: 5, scope: !3750)
!3755 = !DILocation(line: 1943, column: 12, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3750, file: !3, line: 1943, column: 12)
!3757 = !DILocation(line: 1943, column: 12, scope: !3750)
!3758 = !DILocation(line: 1944, column: 5, scope: !3756)
!3759 = !DILocation(line: 1950, column: 27, scope: !3738)
!3760 = !DILocation(line: 1950, column: 7, scope: !3738)
!3761 = !DILocation(line: 1950, column: 7, scope: !3734)
!3762 = !DILocation(line: 1951, column: 28, scope: !3738)
!3763 = !DILocation(line: 1952, column: 1, scope: !3734)
!3764 = distinct !DISubprogram(name: "cselib_process_insn", scope: !3, file: !3, line: 2142, type: !2568, scopeLine: 2143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3765)
!3765 = !{!3766, !3767, !3768}
!3766 = !DILocalVariable(name: "insn", arg: 1, scope: !3764, file: !3, line: 2142, type: !552)
!3767 = !DILocalVariable(name: "i", scope: !3764, file: !3, line: 2144, type: !545)
!3768 = !DILocalVariable(name: "x", scope: !3764, file: !3, line: 2145, type: !552)
!3769 = !DILocation(line: 0, scope: !3764)
!3770 = !DILocation(line: 2147, column: 23, scope: !3764)
!3771 = !DILocation(line: 2150, column: 7, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 2150, column: 7)
!3773 = !DILocation(line: 2151, column: 7, scope: !3772)
!3774 = !DILocation(line: 2151, column: 11, scope: !3772)
!3775 = !DILocation(line: 2152, column: 4, scope: !3772)
!3776 = !DILocation(line: 2152, column: 7, scope: !3772)
!3777 = !DILocation(line: 2153, column: 7, scope: !3772)
!3778 = !DILocation(line: 2153, column: 11, scope: !3772)
!3779 = !DILocation(line: 2154, column: 4, scope: !3772)
!3780 = !DILocation(line: 2154, column: 7, scope: !3772)
!3781 = !DILocation(line: 2154, column: 33, scope: !3772)
!3782 = !DILocation(line: 2155, column: 4, scope: !3772)
!3783 = !DILocation(line: 2155, column: 7, scope: !3772)
!3784 = !DILocation(line: 2150, column: 7, scope: !3764)
!3785 = !DILocation(line: 2157, column: 27, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3772, file: !3, line: 2156, column: 5)
!3787 = !DILocation(line: 2157, column: 7, scope: !3786)
!3788 = !DILocation(line: 2158, column: 27, scope: !3786)
!3789 = !DILocation(line: 2159, column: 7, scope: !3786)
!3790 = !DILocation(line: 2162, column: 9, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 2162, column: 7)
!3792 = !DILocation(line: 2162, column: 7, scope: !3764)
!3793 = !DILocation(line: 2164, column: 27, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3791, file: !3, line: 2163, column: 5)
!3795 = !DILocation(line: 2165, column: 7, scope: !3794)
!3796 = !DILocation(line: 2171, column: 7, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 2171, column: 7)
!3798 = !DILocation(line: 2171, column: 7, scope: !3764)
!3799 = !DILocation(line: 2173, column: 7, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !3, line: 2173, column: 7)
!3801 = distinct !DILexicalBlock(scope: !3797, file: !3, line: 2172, column: 5)
!3802 = !DILocation(line: 0, scope: !3800)
!3803 = !DILocation(line: 2173, column: 21, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3800, file: !3, line: 2173, column: 7)
!3805 = !DILocation(line: 2174, column: 6, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 2174, column: 6)
!3807 = !DILocation(line: 2175, column: 6, scope: !3806)
!3808 = !DILocation(line: 2178, column: 32, scope: !3806)
!3809 = !DILocation(line: 2178, column: 4, scope: !3806)
!3810 = !DILocation(line: 2173, column: 47, scope: !3804)
!3811 = !DILocation(line: 2173, column: 7, scope: !3804)
!3812 = distinct !{!3812, !3799, !3813}
!3813 = !DILocation(line: 2178, column: 47, scope: !3800)
!3814 = !DILocation(line: 2183, column: 11, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3801, file: !3, line: 2183, column: 11)
!3816 = !DILocation(line: 2184, column: 4, scope: !3815)
!3817 = !DILocation(line: 2184, column: 9, scope: !3815)
!3818 = !DILocation(line: 2183, column: 11, scope: !3801)
!3819 = !DILocation(line: 2185, column: 25, scope: !3815)
!3820 = !DILocation(line: 2185, column: 2, scope: !3815)
!3821 = !DILocation(line: 2188, column: 3, scope: !3764)
!3822 = !DILocation(line: 2201, column: 7, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 2201, column: 7)
!3824 = !DILocation(line: 2201, column: 7, scope: !3764)
!3825 = !DILocation(line: 2202, column: 14, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3823, file: !3, line: 2202, column: 5)
!3827 = !DILocation(line: 2202, column: 10, scope: !3826)
!3828 = !DILocation(line: 0, scope: !3826)
!3829 = !DILocation(line: 2202, column: 5, scope: !3826)
!3830 = !DILocation(line: 2203, column: 11, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 2203, column: 11)
!3832 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 2202, column: 5)
!3833 = !DILocation(line: 2203, column: 34, scope: !3831)
!3834 = !DILocation(line: 2203, column: 11, scope: !3832)
!3835 = !DILocation(line: 2204, column: 25, scope: !3831)
!3836 = !DILocation(line: 2204, column: 2, scope: !3831)
!3837 = !DILocation(line: 2202, column: 54, scope: !3832)
!3838 = !DILocation(line: 2202, column: 5, scope: !3832)
!3839 = distinct !{!3839, !3829, !3840}
!3840 = !DILocation(line: 2204, column: 46, scope: !3826)
!3841 = !DILocation(line: 2206, column: 23, scope: !3764)
!3842 = !DILocation(line: 2208, column: 7, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 2208, column: 7)
!3844 = !DILocation(line: 2208, column: 24, scope: !3843)
!3845 = !DILocation(line: 2212, column: 7, scope: !3843)
!3846 = !DILocation(line: 2212, column: 11, scope: !3843)
!3847 = !DILocation(line: 2213, column: 7, scope: !3843)
!3848 = !DILocation(line: 2213, column: 26, scope: !3843)
!3849 = !DILocation(line: 2214, column: 28, scope: !3843)
!3850 = !DILocation(line: 2214, column: 7, scope: !3843)
!3851 = !DILocation(line: 2215, column: 9, scope: !3843)
!3852 = !DILocation(line: 2215, column: 7, scope: !3843)
!3853 = !DILocation(line: 2215, column: 25, scope: !3843)
!3854 = !DILocation(line: 2213, column: 4, scope: !3843)
!3855 = !DILocation(line: 2208, column: 7, scope: !3764)
!3856 = !DILocation(line: 2216, column: 5, scope: !3843)
!3857 = !DILocation(line: 2217, column: 1, scope: !3764)
!3858 = distinct !DISubprogram(name: "cselib_record_sets", scope: !3, file: !3, line: 2016, type: !2568, scopeLine: 2017, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3859)
!3859 = !{!3860, !3861, !3862, !3863, !3867, !3868, !3869, !3876, !3879, !3883, !3886, !3889, !3895, !3898}
!3860 = !DILocalVariable(name: "insn", arg: 1, scope: !3858, file: !3, line: 2016, type: !552)
!3861 = !DILocalVariable(name: "n_sets", scope: !3858, file: !3, line: 2018, type: !545)
!3862 = !DILocalVariable(name: "i", scope: !3858, file: !3, line: 2019, type: !545)
!3863 = !DILocalVariable(name: "sets", scope: !3858, file: !3, line: 2020, type: !3864)
!3864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1792, size: 27136, elements: !3865)
!3865 = !{!3866}
!3866 = !DISubrange(count: 106)
!3867 = !DILocalVariable(name: "body", scope: !3858, file: !3, line: 2021, type: !552)
!3868 = !DILocalVariable(name: "cond", scope: !3858, file: !3, line: 2022, type: !552)
!3869 = !DILocalVariable(name: "x", scope: !3870, file: !3, line: 2044, type: !552)
!3870 = distinct !DILexicalBlock(scope: !3871, file: !3, line: 2043, column: 2)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 2042, column: 7)
!3872 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 2042, column: 7)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 2039, column: 5)
!3874 = distinct !DILexicalBlock(scope: !3875, file: !3, line: 2038, column: 12)
!3875 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 2032, column: 7)
!3876 = !DILocalVariable(name: "note", scope: !3877, file: !3, line: 2060, type: !552)
!3877 = distinct !DILexicalBlock(scope: !3878, file: !3, line: 2059, column: 5)
!3878 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 2055, column: 7)
!3879 = !DILocalVariable(name: "dest", scope: !3880, file: !3, line: 2070, type: !552)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 2069, column: 5)
!3881 = distinct !DILexicalBlock(scope: !3882, file: !3, line: 2068, column: 3)
!3882 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 2068, column: 3)
!3883 = !DILocalVariable(name: "src", scope: !3884, file: !3, line: 2081, type: !552)
!3884 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 2080, column: 9)
!3885 = distinct !DILexicalBlock(scope: !3880, file: !3, line: 2078, column: 11)
!3886 = !DILocalVariable(name: "address_mode", scope: !3887, file: !3, line: 2087, type: !5)
!3887 = distinct !DILexicalBlock(scope: !3888, file: !3, line: 2086, column: 6)
!3888 = distinct !DILexicalBlock(scope: !3884, file: !3, line: 2085, column: 8)
!3889 = !DILocalVariable(name: "dest", scope: !3890, file: !3, line: 2115, type: !552)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 2114, column: 2)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 2113, column: 7)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 2113, column: 7)
!3893 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 2112, column: 5)
!3894 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 2111, column: 7)
!3895 = !DILocalVariable(name: "j", scope: !3896, file: !3, line: 2118, type: !545)
!3896 = distinct !DILexicalBlock(scope: !3897, file: !3, line: 2117, column: 6)
!3897 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 2116, column: 8)
!3898 = !DILocalVariable(name: "dest", scope: !3899, file: !3, line: 2132, type: !552)
!3899 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 2131, column: 5)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 2130, column: 3)
!3901 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 2130, column: 3)
!3902 = !DILocation(line: 0, scope: !3858)
!3903 = !DILocation(line: 2020, column: 3, scope: !3858)
!3904 = !DILocation(line: 2020, column: 21, scope: !3858)
!3905 = !DILocation(line: 2024, column: 10, scope: !3858)
!3906 = !DILocation(line: 2025, column: 7, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 2025, column: 7)
!3908 = !DILocation(line: 2025, column: 23, scope: !3907)
!3909 = !DILocation(line: 2025, column: 7, scope: !3858)
!3910 = !DILocation(line: 2027, column: 14, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 2026, column: 5)
!3912 = !DILocation(line: 2028, column: 14, scope: !3911)
!3913 = !DILocation(line: 0, scope: !3875)
!3914 = !DILocation(line: 2032, column: 7, scope: !3875)
!3915 = !DILocation(line: 2029, column: 5, scope: !3911)
!3916 = !DILocation(line: 2032, column: 23, scope: !3875)
!3917 = !DILocation(line: 2032, column: 7, scope: !3858)
!3918 = !DILocation(line: 2034, column: 21, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3875, file: !3, line: 2033, column: 5)
!3920 = !DILocation(line: 2034, column: 19, scope: !3919)
!3921 = !DILocation(line: 2035, column: 22, scope: !3919)
!3922 = !DILocation(line: 2035, column: 15, scope: !3919)
!3923 = !DILocation(line: 2035, column: 20, scope: !3919)
!3924 = !DILocation(line: 2037, column: 5, scope: !3919)
!3925 = !DILocation(line: 2038, column: 28, scope: !3874)
!3926 = !DILocation(line: 2038, column: 12, scope: !3875)
!3927 = !DILocation(line: 2042, column: 16, scope: !3872)
!3928 = !DILocation(line: 2042, column: 12, scope: !3872)
!3929 = !DILocation(line: 0, scope: !3872)
!3930 = !DILocation(line: 2042, column: 41, scope: !3871)
!3931 = !DILocation(line: 2042, column: 7, scope: !3872)
!3932 = !DILocation(line: 2044, column: 12, scope: !3870)
!3933 = !DILocation(line: 0, scope: !3870)
!3934 = !DILocation(line: 2046, column: 8, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3870, file: !3, line: 2046, column: 8)
!3936 = !DILocation(line: 2046, column: 21, scope: !3935)
!3937 = !DILocation(line: 2046, column: 8, scope: !3870)
!3938 = !DILocation(line: 2048, column: 27, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 2047, column: 6)
!3940 = !DILocation(line: 2048, column: 8, scope: !3939)
!3941 = !DILocation(line: 2048, column: 25, scope: !3939)
!3942 = !DILocation(line: 2049, column: 28, scope: !3939)
!3943 = !DILocation(line: 2049, column: 21, scope: !3939)
!3944 = !DILocation(line: 2049, column: 26, scope: !3939)
!3945 = !DILocation(line: 2050, column: 14, scope: !3939)
!3946 = !DILocation(line: 2051, column: 6, scope: !3939)
!3947 = !DILocation(line: 2042, column: 7, scope: !3871)
!3948 = distinct !{!3948, !3931, !3949}
!3949 = !DILocation(line: 2052, column: 2, scope: !3872)
!3950 = !DILocation(line: 2055, column: 14, scope: !3878)
!3951 = !DILocation(line: 2056, column: 7, scope: !3878)
!3952 = !DILocation(line: 2056, column: 10, scope: !3878)
!3953 = !DILocation(line: 2057, column: 11, scope: !3878)
!3954 = !DILocation(line: 2057, column: 7, scope: !3878)
!3955 = !DILocation(line: 2058, column: 10, scope: !3878)
!3956 = !DILocation(line: 2055, column: 7, scope: !3858)
!3957 = !DILocation(line: 2060, column: 18, scope: !3877)
!3958 = !DILocation(line: 0, scope: !3877)
!3959 = !DILocation(line: 2062, column: 11, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 2062, column: 11)
!3961 = !DILocation(line: 2062, column: 16, scope: !3960)
!3962 = !DILocation(line: 2062, column: 19, scope: !3960)
!3963 = !DILocation(line: 2062, column: 11, scope: !3877)
!3964 = !DILocation(line: 2063, column: 14, scope: !3960)
!3965 = !DILocation(line: 2063, column: 2, scope: !3960)
!3966 = !DILocation(line: 0, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3884, file: !3, line: 2082, column: 8)
!3968 = !DILocation(line: 2068, column: 8, scope: !3882)
!3969 = !DILocation(line: 0, scope: !3882)
!3970 = !DILocation(line: 2068, column: 17, scope: !3881)
!3971 = !DILocation(line: 2068, column: 3, scope: !3882)
!3972 = !DILocation(line: 2070, column: 26, scope: !3880)
!3973 = !DILocation(line: 0, scope: !3880)
!3974 = !DILocation(line: 2074, column: 11, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3880, file: !3, line: 2074, column: 11)
!3976 = !DILocation(line: 2074, column: 35, scope: !3975)
!3977 = !DILocation(line: 2074, column: 11, scope: !3880)
!3978 = !DILocation(line: 2075, column: 24, scope: !3975)
!3979 = !DILocation(line: 2075, column: 15, scope: !3975)
!3980 = !DILocation(line: 2075, column: 2, scope: !3975)
!3981 = !DILocation(line: 2078, column: 11, scope: !3885)
!3982 = !DILocation(line: 2079, column: 4, scope: !3885)
!3983 = !DILocation(line: 2079, column: 8, scope: !3885)
!3984 = !DILocation(line: 2079, column: 21, scope: !3885)
!3985 = !DILocation(line: 2079, column: 24, scope: !3885)
!3986 = !DILocation(line: 2078, column: 11, scope: !3880)
!3987 = !DILocation(line: 0, scope: !3884)
!3988 = !DILocation(line: 2081, column: 22, scope: !3884)
!3989 = !DILocation(line: 2084, column: 42, scope: !3884)
!3990 = !DILocation(line: 2084, column: 22, scope: !3884)
!3991 = !DILocation(line: 2084, column: 12, scope: !3884)
!3992 = !DILocation(line: 2084, column: 20, scope: !3884)
!3993 = !DILocation(line: 2085, column: 8, scope: !3888)
!3994 = !DILocation(line: 2085, column: 8, scope: !3884)
!3995 = !DILocation(line: 2094, column: 14, scope: !3888)
!3996 = !DILocation(line: 2094, column: 28, scope: !3888)
!3997 = !DILocation(line: 2088, column: 24, scope: !3887)
!3998 = !DILocation(line: 2088, column: 38, scope: !3887)
!3999 = !DILocation(line: 2088, column: 5, scope: !3887)
!4000 = !DILocation(line: 0, scope: !3887)
!4001 = !DILocation(line: 2090, column: 47, scope: !3887)
!4002 = !DILocation(line: 2090, column: 32, scope: !3887)
!4003 = !DILocation(line: 2090, column: 16, scope: !3887)
!4004 = !DILocation(line: 2090, column: 30, scope: !3887)
!4005 = !DILocation(line: 2092, column: 6, scope: !3887)
!4006 = !DILocation(line: 2068, column: 28, scope: !3881)
!4007 = !DILocation(line: 2068, column: 3, scope: !3881)
!4008 = distinct !{!4008, !3971, !4009}
!4009 = !DILocation(line: 2096, column: 5, scope: !3882)
!4010 = !DILocation(line: 2098, column: 7, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 2098, column: 7)
!4012 = !DILocation(line: 2083, column: 12, scope: !3967)
!4013 = !DILocation(line: 2098, column: 7, scope: !3858)
!4014 = !DILocation(line: 2099, column: 36, scope: !4011)
!4015 = !DILocation(line: 2099, column: 5, scope: !4011)
!4016 = !DILocation(line: 2104, column: 3, scope: !3858)
!4017 = !DILocation(line: 2111, column: 14, scope: !3894)
!4018 = !DILocation(line: 2111, column: 19, scope: !3894)
!4019 = !DILocation(line: 2111, column: 22, scope: !3894)
!4020 = !DILocation(line: 2111, column: 43, scope: !3894)
!4021 = !DILocation(line: 2111, column: 7, scope: !3858)
!4022 = !DILocation(line: 2113, column: 21, scope: !3891)
!4023 = !DILocation(line: 2113, column: 7, scope: !3892)
!4024 = !DILocation(line: 0, scope: !3892)
!4025 = !DILocation(line: 2115, column: 23, scope: !3890)
!4026 = !DILocation(line: 0, scope: !3890)
!4027 = !DILocation(line: 2116, column: 8, scope: !3897)
!4028 = !DILocation(line: 2116, column: 21, scope: !3897)
!4029 = !DILocation(line: 2116, column: 24, scope: !3897)
!4030 = !DILocation(line: 2116, column: 8, scope: !3890)
!4031 = !DILocation(line: 0, scope: !3896)
!4032 = !DILocation(line: 0, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4034, file: !3, line: 2121, column: 5)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !3, line: 2120, column: 7)
!4035 = distinct !DILexicalBlock(scope: !4036, file: !3, line: 2119, column: 8)
!4036 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 2119, column: 8)
!4037 = !DILocation(line: 2119, column: 13, scope: !4036)
!4038 = !DILocation(line: 0, scope: !4036)
!4039 = !DILocation(line: 2119, column: 26, scope: !4035)
!4040 = !DILocation(line: 2119, column: 8, scope: !4036)
!4041 = !DILocation(line: 2120, column: 34, scope: !4034)
!4042 = !DILocation(line: 2120, column: 7, scope: !4034)
!4043 = !DILocation(line: 2120, column: 7, scope: !4035)
!4044 = !DILocation(line: 2122, column: 22, scope: !4033)
!4045 = !DILocation(line: 2122, column: 20, scope: !4033)
!4046 = !DILocation(line: 2123, column: 20, scope: !4033)
!4047 = !DILocation(line: 2124, column: 5, scope: !4033)
!4048 = !DILocation(line: 2119, column: 8, scope: !4035)
!4049 = distinct !{!4049, !4040, !4050}
!4050 = !DILocation(line: 2124, column: 5, scope: !4036)
!4051 = !DILocation(line: 2113, column: 32, scope: !3891)
!4052 = !DILocation(line: 2113, column: 7, scope: !3891)
!4053 = distinct !{!4053, !4023, !4054}
!4054 = !DILocation(line: 2126, column: 2, scope: !3892)
!4055 = !DILocation(line: 2130, column: 8, scope: !3901)
!4056 = !DILocation(line: 0, scope: !3901)
!4057 = !DILocation(line: 2130, column: 17, scope: !3900)
!4058 = !DILocation(line: 2130, column: 3, scope: !3901)
!4059 = !DILocation(line: 2132, column: 26, scope: !3899)
!4060 = !DILocation(line: 0, scope: !3899)
!4061 = !DILocation(line: 2133, column: 11, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !3899, file: !3, line: 2133, column: 11)
!4063 = !DILocation(line: 2134, column: 4, scope: !4062)
!4064 = !DILocation(line: 2134, column: 8, scope: !4062)
!4065 = !DILocation(line: 2134, column: 21, scope: !4062)
!4066 = !DILocation(line: 2134, column: 24, scope: !4062)
!4067 = !DILocation(line: 2133, column: 11, scope: !3899)
!4068 = !DILocation(line: 2135, column: 35, scope: !4062)
!4069 = !DILocation(line: 2135, column: 52, scope: !4062)
!4070 = !DILocation(line: 2135, column: 2, scope: !4062)
!4071 = !DILocation(line: 2130, column: 28, scope: !3900)
!4072 = !DILocation(line: 2130, column: 3, scope: !3900)
!4073 = distinct !{!4073, !4058, !4074}
!4074 = !DILocation(line: 2136, column: 5, scope: !3901)
!4075 = !DILocation(line: 2137, column: 1, scope: !3858)
!4076 = distinct !DISubprogram(name: "cselib_init", scope: !3, file: !3, line: 2223, type: !4077, scopeLine: 2224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4079)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{null, !545}
!4079 = !{!4080}
!4080 = !DILocalVariable(name: "record_what", arg: 1, scope: !4076, file: !3, line: 2223, type: !545)
!4081 = !DILocation(line: 0, scope: !4076)
!4082 = !DILocation(line: 2225, column: 19, scope: !4076)
!4083 = !DILocation(line: 2225, column: 17, scope: !4076)
!4084 = !DILocation(line: 2227, column: 23, scope: !4076)
!4085 = !DILocation(line: 2227, column: 21, scope: !4076)
!4086 = !DILocation(line: 2229, column: 21, scope: !4076)
!4087 = !DILocation(line: 2229, column: 19, scope: !4076)
!4088 = !DILocation(line: 2231, column: 44, scope: !4076)
!4089 = !DILocation(line: 2231, column: 16, scope: !4076)
!4090 = !DILocation(line: 2231, column: 14, scope: !4076)
!4091 = !DILocation(line: 2232, column: 26, scope: !4076)
!4092 = !DILocation(line: 2232, column: 24, scope: !4076)
!4093 = !DILocation(line: 2233, column: 31, scope: !4076)
!4094 = !DILocation(line: 2233, column: 29, scope: !4076)
!4095 = !DILocation(line: 2237, column: 9, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4076, file: !3, line: 2237, column: 7)
!4097 = !DILocation(line: 2237, column: 7, scope: !4076)
!4098 = !DILocation(line: 2238, column: 37, scope: !4096)
!4099 = !DILocation(line: 2238, column: 15, scope: !4096)
!4100 = !DILocation(line: 2238, column: 13, scope: !4096)
!4101 = !DILocation(line: 2238, column: 5, scope: !4096)
!4102 = !DILocation(line: 2240, column: 18, scope: !4076)
!4103 = !DILocation(line: 2240, column: 16, scope: !4076)
!4104 = !DILocation(line: 2244, column: 8, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4076, file: !3, line: 2244, column: 7)
!4106 = !DILocation(line: 2244, column: 19, scope: !4105)
!4107 = !DILocation(line: 2244, column: 22, scope: !4105)
!4108 = !DILocation(line: 2244, column: 38, scope: !4105)
!4109 = !DILocation(line: 2245, column: 7, scope: !4105)
!4110 = !DILocation(line: 2245, column: 27, scope: !4105)
!4111 = !DILocation(line: 2245, column: 32, scope: !4105)
!4112 = !DILocation(line: 2245, column: 66, scope: !4105)
!4113 = !DILocation(line: 2245, column: 51, scope: !4105)
!4114 = !DILocation(line: 2244, column: 7, scope: !4076)
!4115 = !DILocation(line: 2247, column: 11, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4105, file: !3, line: 2246, column: 5)
!4117 = !DILocation(line: 2248, column: 2, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 2247, column: 11)
!4119 = !DILocation(line: 2251, column: 25, scope: !4116)
!4120 = !DILocation(line: 2251, column: 44, scope: !4116)
!4121 = !DILocation(line: 2251, column: 60, scope: !4116)
!4122 = !DILocation(line: 2251, column: 38, scope: !4116)
!4123 = !DILocation(line: 2251, column: 23, scope: !4116)
!4124 = !DILocation(line: 2252, column: 20, scope: !4116)
!4125 = !DILocation(line: 2252, column: 18, scope: !4116)
!4126 = !DILocation(line: 2254, column: 15, scope: !4076)
!4127 = !DILocation(line: 2253, column: 5, scope: !4116)
!4128 = !DILocation(line: 2254, column: 13, scope: !4076)
!4129 = !DILocation(line: 2255, column: 15, scope: !4076)
!4130 = !DILocation(line: 2256, column: 23, scope: !4076)
!4131 = !DILocation(line: 2256, column: 21, scope: !4076)
!4132 = !DILocation(line: 2258, column: 12, scope: !4076)
!4133 = !DILocation(line: 2259, column: 1, scope: !4076)
!4134 = distinct !DISubprogram(name: "get_value_hash", scope: !3, file: !3, line: 429, type: !1061, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4135)
!4135 = !{!4136, !4137}
!4136 = !DILocalVariable(name: "entry", arg: 1, scope: !4134, file: !3, line: 429, type: !1064)
!4137 = !DILocalVariable(name: "v", scope: !4134, file: !3, line: 431, type: !4138)
!4138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1649)
!4139 = !DILocation(line: 0, scope: !4134)
!4140 = !DILocation(line: 432, column: 13, scope: !4134)
!4141 = !DILocation(line: 432, column: 3, scope: !4134)
!4142 = distinct !DISubprogram(name: "entry_and_rtx_equal_p", scope: !3, file: !3, line: 392, type: !1069, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4143)
!4143 = !{!4144, !4145, !4146, !4147, !4148, !4149}
!4144 = !DILocalVariable(name: "entry", arg: 1, scope: !4142, file: !3, line: 392, type: !1064)
!4145 = !DILocalVariable(name: "x_arg", arg: 2, scope: !4142, file: !3, line: 392, type: !1064)
!4146 = !DILocalVariable(name: "l", scope: !4142, file: !3, line: 394, type: !611)
!4147 = !DILocalVariable(name: "v", scope: !4142, file: !3, line: 395, type: !4138)
!4148 = !DILocalVariable(name: "x", scope: !4142, file: !3, line: 396, type: !552)
!4149 = !DILocalVariable(name: "mode", scope: !4142, file: !3, line: 397, type: !5)
!4150 = !DILocation(line: 0, scope: !4142)
!4151 = !DILocation(line: 396, column: 11, scope: !4142)
!4152 = !DILocation(line: 397, column: 28, scope: !4142)
!4153 = !DILocation(line: 399, column: 3, scope: !4142)
!4154 = !DILocation(line: 402, column: 15, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 402, column: 7)
!4156 = !DILocation(line: 402, column: 12, scope: !4155)
!4157 = !DILocation(line: 402, column: 7, scope: !4142)
!4158 = !DILocation(line: 406, column: 7, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 406, column: 7)
!4160 = !DILocation(line: 406, column: 20, scope: !4159)
!4161 = !DILocation(line: 407, column: 7, scope: !4159)
!4162 = !DILocation(line: 407, column: 11, scope: !4159)
!4163 = !DILocation(line: 408, column: 4, scope: !4159)
!4164 = !DILocation(line: 408, column: 30, scope: !4159)
!4165 = !DILocation(line: 409, column: 4, scope: !4159)
!4166 = !DILocation(line: 409, column: 30, scope: !4159)
!4167 = !DILocation(line: 406, column: 7, scope: !4142)
!4168 = !DILocation(line: 410, column: 5, scope: !4159)
!4169 = !DILocation(line: 414, column: 15, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 414, column: 3)
!4171 = !DILocation(line: 414, column: 8, scope: !4170)
!4172 = !DILocation(line: 0, scope: !4170)
!4173 = !DILocation(line: 414, column: 3, scope: !4170)
!4174 = !DILocation(line: 415, column: 36, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 415, column: 9)
!4176 = distinct !DILexicalBlock(scope: !4170, file: !3, line: 414, column: 3)
!4177 = !DILocation(line: 415, column: 9, scope: !4175)
!4178 = !DILocation(line: 415, column: 9, scope: !4176)
!4179 = !DILocation(line: 417, column: 2, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 416, column: 7)
!4181 = !DILocation(line: 418, column: 2, scope: !4180)
!4182 = !DILocation(line: 414, column: 31, scope: !4176)
!4183 = !DILocation(line: 414, column: 3, scope: !4176)
!4184 = distinct !{!4184, !4173, !4185}
!4185 = !DILocation(line: 419, column: 7, scope: !4170)
!4186 = !DILocation(line: 422, column: 1, scope: !4142)
!4187 = distinct !DISubprogram(name: "cselib_finish", scope: !3, file: !3, line: 2264, type: !2203, scopeLine: 2265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1829)
!4188 = !DILocation(line: 2266, column: 23, scope: !4187)
!4189 = !DILocation(line: 2267, column: 29, scope: !4187)
!4190 = !DILocation(line: 2268, column: 26, scope: !4187)
!4191 = !DILocation(line: 2269, column: 20, scope: !4187)
!4192 = !DILocation(line: 2269, column: 3, scope: !4187)
!4193 = !DILocation(line: 2270, column: 20, scope: !4187)
!4194 = !DILocation(line: 2270, column: 3, scope: !4187)
!4195 = !DILocation(line: 2271, column: 20, scope: !4187)
!4196 = !DILocation(line: 2271, column: 3, scope: !4187)
!4197 = !DILocation(line: 2272, column: 20, scope: !4187)
!4198 = !DILocation(line: 2272, column: 3, scope: !4187)
!4199 = !DILocation(line: 2273, column: 3, scope: !4187)
!4200 = !DILocation(line: 2274, column: 16, scope: !4187)
!4201 = !DILocation(line: 2274, column: 3, scope: !4187)
!4202 = !DILocation(line: 2275, column: 9, scope: !4187)
!4203 = !DILocation(line: 2275, column: 3, scope: !4187)
!4204 = !DILocation(line: 2276, column: 13, scope: !4187)
!4205 = !DILocation(line: 2277, column: 21, scope: !4187)
!4206 = !DILocation(line: 2278, column: 20, scope: !4187)
!4207 = !DILocation(line: 2279, column: 26, scope: !4187)
!4208 = !DILocation(line: 2280, column: 18, scope: !4187)
!4209 = !DILocation(line: 2281, column: 12, scope: !4187)
!4210 = !DILocation(line: 2282, column: 1, scope: !4187)
!4211 = distinct !DISubprogram(name: "dump_cselib_table", scope: !3, file: !3, line: 2359, type: !4212, scopeLine: 2360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4214)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{null, !1654}
!4214 = !{!4215}
!4215 = !DILocalVariable(name: "out", arg: 1, scope: !4211, file: !3, line: 2359, type: !1654)
!4216 = !DILocation(line: 0, scope: !4211)
!4217 = !DILocation(line: 2361, column: 3, scope: !4211)
!4218 = !DILocation(line: 2362, column: 18, scope: !4211)
!4219 = !DILocation(line: 2362, column: 54, scope: !4211)
!4220 = !DILocation(line: 2362, column: 3, scope: !4211)
!4221 = !DILocation(line: 2363, column: 7, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4211, file: !3, line: 2363, column: 7)
!4223 = !DILocation(line: 2363, column: 28, scope: !4222)
!4224 = !DILocation(line: 2363, column: 7, scope: !4211)
!4225 = !DILocation(line: 2365, column: 7, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4222, file: !3, line: 2364, column: 5)
!4227 = !DILocation(line: 2366, column: 30, scope: !4226)
!4228 = !DILocation(line: 2366, column: 52, scope: !4226)
!4229 = !DILocation(line: 2366, column: 7, scope: !4226)
!4230 = !DILocation(line: 2367, column: 7, scope: !4226)
!4231 = !DILocation(line: 2368, column: 5, scope: !4226)
!4232 = !DILocation(line: 2369, column: 34, scope: !4211)
!4233 = !DILocation(line: 2369, column: 3, scope: !4211)
!4234 = !DILocation(line: 2370, column: 1, scope: !4211)
!4235 = distinct !DISubprogram(name: "dump_cselib_val", scope: !3, file: !3, line: 2287, type: !2284, scopeLine: 2288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4236)
!4236 = !{!4237, !4238, !4239, !4240, !4241, !4242, !4245}
!4237 = !DILocalVariable(name: "x", arg: 1, scope: !4235, file: !3, line: 2287, type: !1077)
!4238 = !DILocalVariable(name: "info", arg: 2, scope: !4235, file: !3, line: 2287, type: !549)
!4239 = !DILocalVariable(name: "v", scope: !4235, file: !3, line: 2289, type: !623)
!4240 = !DILocalVariable(name: "out", scope: !4235, file: !3, line: 2290, type: !1654)
!4241 = !DILocalVariable(name: "need_lf", scope: !4235, file: !3, line: 2291, type: !544)
!4242 = !DILocalVariable(name: "l", scope: !4243, file: !3, line: 2297, type: !611)
!4243 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 2296, column: 5)
!4244 = distinct !DILexicalBlock(scope: !4235, file: !3, line: 2295, column: 7)
!4245 = !DILocalVariable(name: "e", scope: !4246, file: !3, line: 2321, type: !618)
!4246 = distinct !DILexicalBlock(scope: !4247, file: !3, line: 2320, column: 5)
!4247 = distinct !DILexicalBlock(scope: !4235, file: !3, line: 2319, column: 7)
!4248 = !DILocation(line: 0, scope: !4235)
!4249 = !DILocation(line: 2289, column: 33, scope: !4235)
!4250 = !DILocation(line: 2290, column: 15, scope: !4235)
!4251 = !DILocation(line: 2293, column: 29, scope: !4235)
!4252 = !DILocation(line: 2293, column: 3, scope: !4235)
!4253 = !DILocation(line: 2295, column: 10, scope: !4244)
!4254 = !DILocation(line: 2295, column: 7, scope: !4244)
!4255 = !DILocation(line: 2295, column: 7, scope: !4235)
!4256 = !DILocation(line: 0, scope: !4243)
!4257 = !DILocation(line: 2300, column: 4, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4259, file: !3, line: 2299, column: 2)
!4259 = distinct !DILexicalBlock(scope: !4243, file: !3, line: 2298, column: 11)
!4260 = !DILocation(line: 2303, column: 7, scope: !4243)
!4261 = !DILocation(line: 2304, column: 7, scope: !4243)
!4262 = !DILocation(line: 2307, column: 6, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4243, file: !3, line: 2305, column: 2)
!4264 = !DILocation(line: 2306, column: 4, scope: !4263)
!4265 = !DILocation(line: 2308, column: 30, scope: !4263)
!4266 = !DILocation(line: 2308, column: 4, scope: !4263)
!4267 = !DILocation(line: 2310, column: 22, scope: !4243)
!4268 = !DILocation(line: 2309, column: 2, scope: !4263)
!4269 = distinct !{!4269, !4261, !4270}
!4270 = !DILocation(line: 2310, column: 27, scope: !4243)
!4271 = !DILocation(line: 2311, column: 7, scope: !4243)
!4272 = !DILocation(line: 2312, column: 5, scope: !4243)
!4273 = !DILocation(line: 2315, column: 7, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 2314, column: 5)
!4275 = !DILocation(line: 0, scope: !4244)
!4276 = !DILocation(line: 2319, column: 10, scope: !4247)
!4277 = !DILocation(line: 2319, column: 7, scope: !4247)
!4278 = !DILocation(line: 2319, column: 7, scope: !4235)
!4279 = !DILocation(line: 0, scope: !4246)
!4280 = !DILocation(line: 2322, column: 11, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 2322, column: 11)
!4282 = !DILocation(line: 2322, column: 11, scope: !4246)
!4283 = !DILocation(line: 2324, column: 4, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 2323, column: 2)
!4285 = !DILocation(line: 2326, column: 2, scope: !4284)
!4286 = !DILocation(line: 2327, column: 7, scope: !4246)
!4287 = !DILocation(line: 2328, column: 7, scope: !4246)
!4288 = !DILocation(line: 2330, column: 4, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 2329, column: 2)
!4290 = !DILocation(line: 2331, column: 30, scope: !4289)
!4291 = !DILocation(line: 2331, column: 35, scope: !4289)
!4292 = !DILocation(line: 2331, column: 4, scope: !4289)
!4293 = !DILocation(line: 2333, column: 22, scope: !4246)
!4294 = !DILocation(line: 2332, column: 2, scope: !4289)
!4295 = distinct !{!4295, !4287, !4296}
!4296 = !DILocation(line: 2333, column: 27, scope: !4246)
!4297 = !DILocation(line: 2334, column: 7, scope: !4246)
!4298 = !DILocation(line: 2335, column: 5, scope: !4246)
!4299 = !DILocation(line: 2338, column: 7, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4247, file: !3, line: 2337, column: 5)
!4301 = !DILocation(line: 0, scope: !4247)
!4302 = !DILocation(line: 2342, column: 10, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4235, file: !3, line: 2342, column: 7)
!4304 = !DILocation(line: 2342, column: 30, scope: !4303)
!4305 = !DILocation(line: 2342, column: 7, scope: !4235)
!4306 = !DILocation(line: 2343, column: 5, scope: !4303)
!4307 = !DILocation(line: 2344, column: 12, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4303, file: !3, line: 2344, column: 12)
!4309 = !DILocation(line: 2344, column: 12, scope: !4303)
!4310 = !DILocation(line: 2346, column: 7, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 2345, column: 5)
!4312 = !DILocation(line: 2347, column: 33, scope: !4311)
!4313 = !DILocation(line: 2347, column: 54, scope: !4311)
!4314 = !DILocation(line: 2347, column: 7, scope: !4311)
!4315 = !DILocation(line: 2348, column: 7, scope: !4311)
!4316 = !DILocation(line: 2349, column: 5, scope: !4311)
!4317 = !DILocation(line: 2350, column: 12, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 2350, column: 12)
!4319 = !DILocation(line: 2350, column: 12, scope: !4308)
!4320 = !DILocation(line: 2351, column: 5, scope: !4318)
!4321 = !DILocation(line: 2353, column: 3, scope: !4235)
!4322 = distinct !DISubprogram(name: "discard_useless_locs", scope: !3, file: !3, line: 469, type: !2284, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4323)
!4323 = !{!4324, !4325, !4326, !4327, !4328, !4329}
!4324 = !DILocalVariable(name: "x", arg: 1, scope: !4322, file: !3, line: 469, type: !1077)
!4325 = !DILocalVariable(name: "info", arg: 2, scope: !4322, file: !3, line: 469, type: !549)
!4326 = !DILocalVariable(name: "v", scope: !4322, file: !3, line: 471, type: !623)
!4327 = !DILocalVariable(name: "p", scope: !4322, file: !3, line: 472, type: !2463)
!4328 = !DILocalVariable(name: "had_locs", scope: !4322, file: !3, line: 473, type: !544)
!4329 = !DILocalVariable(name: "setting_insn", scope: !4322, file: !3, line: 474, type: !552)
!4330 = !DILocation(line: 0, scope: !4322)
!4331 = !DILocation(line: 471, column: 33, scope: !4322)
!4332 = !DILocation(line: 472, column: 33, scope: !4322)
!4333 = !DILocation(line: 473, column: 22, scope: !4322)
!4334 = !DILocation(line: 473, column: 27, scope: !4322)
!4335 = !DILocation(line: 474, column: 22, scope: !4322)
!4336 = !DILocation(line: 474, column: 41, scope: !4322)
!4337 = !DILocation(line: 476, column: 3, scope: !4322)
!4338 = !DILocation(line: 476, column: 10, scope: !4322)
!4339 = !DILocation(line: 472, column: 25, scope: !4322)
!4340 = !DILocation(line: 478, column: 37, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 478, column: 11)
!4342 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 477, column: 5)
!4343 = !DILocation(line: 478, column: 11, scope: !4341)
!4344 = !DILocation(line: 478, column: 11, scope: !4342)
!4345 = !DILocation(line: 479, column: 2, scope: !4341)
!4346 = !DILocation(line: 481, column: 8, scope: !4341)
!4347 = !DILocation(line: 481, column: 13, scope: !4341)
!4348 = distinct !{!4348, !4337, !4349}
!4349 = !DILocation(line: 482, column: 5, scope: !4322)
!4350 = !DILocation(line: 484, column: 16, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 484, column: 7)
!4352 = !DILocation(line: 484, column: 22, scope: !4351)
!4353 = !DILocation(line: 484, column: 27, scope: !4351)
!4354 = !DILocation(line: 484, column: 32, scope: !4351)
!4355 = !DILocation(line: 484, column: 36, scope: !4351)
!4356 = !DILocation(line: 484, column: 7, scope: !4322)
!4357 = !DILocation(line: 486, column: 11, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4359, file: !3, line: 486, column: 11)
!4359 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 485, column: 5)
!4360 = !DILocation(line: 486, column: 24, scope: !4358)
!4361 = !DILocation(line: 486, column: 27, scope: !4358)
!4362 = !DILocation(line: 486, column: 11, scope: !4359)
!4363 = !DILocation(line: 487, column: 24, scope: !4358)
!4364 = !DILocation(line: 487, column: 2, scope: !4358)
!4365 = !DILocation(line: 489, column: 18, scope: !4358)
!4366 = !DILocation(line: 490, column: 29, scope: !4359)
!4367 = !DILocation(line: 491, column: 5, scope: !4359)
!4368 = !DILocation(line: 492, column: 3, scope: !4322)
!4369 = distinct !DISubprogram(name: "discard_useless_values", scope: !3, file: !3, line: 498, type: !2284, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4370)
!4370 = !{!4371, !4372, !4373}
!4371 = !DILocalVariable(name: "x", arg: 1, scope: !4369, file: !3, line: 498, type: !1077)
!4372 = !DILocalVariable(name: "info", arg: 2, scope: !4369, file: !3, line: 498, type: !549)
!4373 = !DILocalVariable(name: "v", scope: !4369, file: !3, line: 500, type: !623)
!4374 = !DILocation(line: 0, scope: !4369)
!4375 = !DILocation(line: 500, column: 33, scope: !4369)
!4376 = !DILocation(line: 502, column: 10, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 502, column: 7)
!4378 = !DILocation(line: 502, column: 15, scope: !4377)
!4379 = !DILocation(line: 502, column: 20, scope: !4377)
!4380 = !DILocation(line: 502, column: 24, scope: !4377)
!4381 = !DILocation(line: 502, column: 7, scope: !4369)
!4382 = !DILocation(line: 504, column: 11, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 504, column: 11)
!4384 = distinct !DILexicalBlock(scope: !4377, file: !3, line: 503, column: 5)
!4385 = !DILocation(line: 504, column: 11, scope: !4384)
!4386 = !DILocation(line: 505, column: 2, scope: !4383)
!4387 = !DILocation(line: 507, column: 7, scope: !4384)
!4388 = !DILocation(line: 507, column: 35, scope: !4384)
!4389 = !DILocation(line: 508, column: 24, scope: !4384)
!4390 = !DILocation(line: 508, column: 7, scope: !4384)
!4391 = !DILocation(line: 509, column: 7, scope: !4384)
!4392 = !DILocation(line: 510, column: 23, scope: !4384)
!4393 = !DILocation(line: 511, column: 5, scope: !4384)
!4394 = !DILocation(line: 513, column: 3, scope: !4369)
!4395 = distinct !DISubprogram(name: "unchain_one_elt_loc_list", scope: !3, file: !3, line: 271, type: !4396, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4398)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{null, !2463}
!4398 = !{!4399, !4400}
!4399 = !DILocalVariable(name: "pl", arg: 1, scope: !4395, file: !3, line: 271, type: !2463)
!4400 = !DILocalVariable(name: "l", scope: !4395, file: !3, line: 273, type: !611)
!4401 = !DILocation(line: 0, scope: !4395)
!4402 = !DILocation(line: 273, column: 28, scope: !4395)
!4403 = !DILocation(line: 275, column: 12, scope: !4395)
!4404 = !DILocation(line: 275, column: 7, scope: !4395)
!4405 = !DILocation(line: 276, column: 14, scope: !4395)
!4406 = !DILocation(line: 276, column: 33, scope: !4395)
!4407 = !DILocation(line: 276, column: 3, scope: !4395)
!4408 = !DILocation(line: 277, column: 1, scope: !4395)
!4409 = distinct !DISubprogram(name: "unchain_one_value", scope: !3, file: !3, line: 283, type: !1784, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4410)
!4410 = !{!4411}
!4411 = !DILocalVariable(name: "v", arg: 1, scope: !4409, file: !3, line: 283, type: !623)
!4412 = !DILocation(line: 0, scope: !4409)
!4413 = !DILocation(line: 285, column: 3, scope: !4409)
!4414 = !DILocation(line: 285, column: 13, scope: !4409)
!4415 = !DILocation(line: 286, column: 5, scope: !4409)
!4416 = distinct !{!4416, !4413, !4417}
!4417 = !DILocation(line: 286, column: 40, scope: !4409)
!4418 = !DILocation(line: 288, column: 14, scope: !4409)
!4419 = !DILocation(line: 288, column: 31, scope: !4409)
!4420 = !DILocation(line: 288, column: 3, scope: !4409)
!4421 = !DILocation(line: 289, column: 1, scope: !4409)
!4422 = distinct !DISubprogram(name: "unchain_one_elt_list", scope: !3, file: !3, line: 260, type: !4423, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4425)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{null, !1643}
!4425 = !{!4426, !4427}
!4426 = !DILocalVariable(name: "pl", arg: 1, scope: !4422, file: !3, line: 260, type: !1643)
!4427 = !DILocalVariable(name: "l", scope: !4422, file: !3, line: 262, type: !618)
!4428 = !DILocation(line: 0, scope: !4422)
!4429 = !DILocation(line: 262, column: 24, scope: !4422)
!4430 = !DILocation(line: 264, column: 12, scope: !4422)
!4431 = !DILocation(line: 264, column: 7, scope: !4422)
!4432 = !DILocation(line: 265, column: 14, scope: !4422)
!4433 = !DILocation(line: 265, column: 29, scope: !4422)
!4434 = !DILocation(line: 265, column: 3, scope: !4422)
!4435 = !DILocation(line: 266, column: 1, scope: !4422)
!4436 = distinct !DISubprogram(name: "expand_loc", scope: !3, file: !3, line: 1090, type: !4437, scopeLine: 1092, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4439)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!552, !611, !3010, !545}
!4439 = !{!4440, !4441, !4442, !4443, !4444, !4445, !4446, !4454, !4455}
!4440 = !DILocalVariable(name: "p", arg: 1, scope: !4436, file: !3, line: 1090, type: !611)
!4441 = !DILocalVariable(name: "evd", arg: 2, scope: !4436, file: !3, line: 1090, type: !3010)
!4442 = !DILocalVariable(name: "max_depth", arg: 3, scope: !4436, file: !3, line: 1091, type: !545)
!4443 = !DILocalVariable(name: "reg_result", scope: !4436, file: !3, line: 1093, type: !552)
!4444 = !DILocalVariable(name: "regno", scope: !4436, file: !3, line: 1094, type: !7)
!4445 = !DILocalVariable(name: "p_in", scope: !4436, file: !3, line: 1095, type: !611)
!4446 = !DILocalVariable(name: "result", scope: !4447, file: !3, line: 1115, type: !552)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 1114, column: 2)
!4448 = distinct !DILexicalBlock(scope: !4449, file: !3, line: 1113, column: 16)
!4449 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 1110, column: 16)
!4450 = distinct !DILexicalBlock(scope: !4451, file: !3, line: 1101, column: 11)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 1098, column: 5)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 1097, column: 3)
!4453 = distinct !DILexicalBlock(scope: !4436, file: !3, line: 1097, column: 3)
!4454 = !DILocalVariable(name: "note", scope: !4447, file: !3, line: 1115, type: !552)
!4455 = !DILocalVariable(name: "result", scope: !4456, file: !3, line: 1136, type: !552)
!4456 = distinct !DILexicalBlock(scope: !4457, file: !3, line: 1135, column: 5)
!4457 = distinct !DILexicalBlock(scope: !4436, file: !3, line: 1134, column: 7)
!4458 = !DILocation(line: 0, scope: !4436)
!4459 = !DILocation(line: 0, scope: !4450)
!4460 = !DILocation(line: 0, scope: !4447)
!4461 = !DILocation(line: 1097, column: 3, scope: !4436)
!4462 = !DILocation(line: 1093, column: 7, scope: !4436)
!4463 = !DILocation(line: 1094, column: 16, scope: !4436)
!4464 = !DILocation(line: 1097, column: 3, scope: !4453)
!4465 = !DILocation(line: 1101, column: 12, scope: !4450)
!4466 = !DILocation(line: 1102, column: 4, scope: !4450)
!4467 = !DILocation(line: 1102, column: 8, scope: !4450)
!4468 = !DILocation(line: 1102, column: 23, scope: !4450)
!4469 = !DILocation(line: 1103, column: 4, scope: !4450)
!4470 = !DILocation(line: 1103, column: 27, scope: !4450)
!4471 = !DILocation(line: 1103, column: 40, scope: !4450)
!4472 = !DILocation(line: 1103, column: 8, scope: !4450)
!4473 = !DILocation(line: 1101, column: 11, scope: !4451)
!4474 = !DILocation(line: 1105, column: 20, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 1104, column: 2)
!4476 = !DILocation(line: 1106, column: 12, scope: !4475)
!4477 = !DILocation(line: 1107, column: 2, scope: !4475)
!4478 = !DILocation(line: 1110, column: 16, scope: !4449)
!4479 = !DILocation(line: 1110, column: 34, scope: !4449)
!4480 = !DILocation(line: 1111, column: 9, scope: !4449)
!4481 = !DILocation(line: 1111, column: 12, scope: !4449)
!4482 = !DILocation(line: 1111, column: 37, scope: !4449)
!4483 = !DILocation(line: 1111, column: 42, scope: !4449)
!4484 = !DILocation(line: 1110, column: 16, scope: !4450)
!4485 = !DILocation(line: 1113, column: 17, scope: !4448)
!4486 = !DILocation(line: 1113, column: 16, scope: !4449)
!4487 = !DILocation(line: 1116, column: 8, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 1116, column: 8)
!4489 = !DILocation(line: 1116, column: 18, scope: !4488)
!4490 = !DILocation(line: 1116, column: 22, scope: !4488)
!4491 = !DILocation(line: 1116, column: 33, scope: !4488)
!4492 = !DILocation(line: 1116, column: 8, scope: !4447)
!4493 = !DILocation(line: 1118, column: 8, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 1117, column: 6)
!4495 = !DILocation(line: 1119, column: 17, scope: !4494)
!4496 = !DILocation(line: 1119, column: 8, scope: !4494)
!4497 = !DILocation(line: 1121, column: 8, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 1121, column: 8)
!4499 = !DILocation(line: 1120, column: 6, scope: !4494)
!4500 = !DILocation(line: 1121, column: 26, scope: !4498)
!4501 = !DILocation(line: 1122, column: 8, scope: !4498)
!4502 = !DILocation(line: 1122, column: 11, scope: !4498)
!4503 = !DILocation(line: 1122, column: 39, scope: !4498)
!4504 = !DILocation(line: 1123, column: 8, scope: !4498)
!4505 = !DILocation(line: 1123, column: 14, scope: !4498)
!4506 = !DILocation(line: 1123, column: 11, scope: !4498)
!4507 = !DILocation(line: 1124, column: 8, scope: !4498)
!4508 = !DILocation(line: 1124, column: 19, scope: !4498)
!4509 = !DILocation(line: 1124, column: 17, scope: !4498)
!4510 = !DILocation(line: 1125, column: 8, scope: !4498)
!4511 = !DILocation(line: 1127, column: 43, scope: !4447)
!4512 = !DILocation(line: 1125, column: 11, scope: !4498)
!4513 = !DILocation(line: 1125, column: 29, scope: !4498)
!4514 = !DILocation(line: 1125, column: 26, scope: !4498)
!4515 = !DILocation(line: 1121, column: 8, scope: !4447)
!4516 = !DILocation(line: 1126, column: 6, scope: !4498)
!4517 = !DILocation(line: 1127, column: 13, scope: !4447)
!4518 = !DILocation(line: 1128, column: 8, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 1128, column: 8)
!4520 = !DILocation(line: 0, scope: !4448)
!4521 = !DILocation(line: 1097, column: 22, scope: !4452)
!4522 = !DILocation(line: 1097, column: 3, scope: !4452)
!4523 = distinct !{!4523, !4464, !4524}
!4524 = !DILocation(line: 1132, column: 5, scope: !4453)
!4525 = !DILocation(line: 1134, column: 13, scope: !4457)
!4526 = !DILocation(line: 1134, column: 7, scope: !4436)
!4527 = !DILocation(line: 1137, column: 11, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4456, file: !3, line: 1137, column: 11)
!4529 = !DILocation(line: 1137, column: 21, scope: !4528)
!4530 = !DILocation(line: 1137, column: 25, scope: !4528)
!4531 = !DILocation(line: 1137, column: 36, scope: !4528)
!4532 = !DILocation(line: 1137, column: 11, scope: !4456)
!4533 = !DILocation(line: 1138, column: 2, scope: !4528)
!4534 = !DILocation(line: 1140, column: 16, scope: !4456)
!4535 = !DILocation(line: 0, scope: !4456)
!4536 = !DILocation(line: 1141, column: 11, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4456, file: !3, line: 1141, column: 11)
!4538 = !DILocation(line: 0, scope: !4457)
!4539 = !DILocation(line: 1145, column: 7, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4436, file: !3, line: 1145, column: 7)
!4541 = !DILocation(line: 1145, column: 17, scope: !4540)
!4542 = !DILocation(line: 1145, column: 21, scope: !4540)
!4543 = !DILocation(line: 1145, column: 32, scope: !4540)
!4544 = !DILocation(line: 1145, column: 7, scope: !4436)
!4545 = !DILocation(line: 1147, column: 11, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 1147, column: 11)
!4547 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 1146, column: 5)
!4548 = !DILocation(line: 1147, column: 11, scope: !4547)
!4549 = !DILocation(line: 1149, column: 4, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 1148, column: 2)
!4551 = !DILocation(line: 1150, column: 13, scope: !4550)
!4552 = !DILocation(line: 1150, column: 4, scope: !4550)
!4553 = !DILocation(line: 1151, column: 2, scope: !4550)
!4554 = !DILocation(line: 1153, column: 2, scope: !4546)
!4555 = !DILocation(line: 1156, column: 1, scope: !4436)
!4556 = distinct !DISubprogram(name: "promote_debug_loc", scope: !3, file: !3, line: 245, type: !4557, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4559)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{null, !611}
!4559 = !{!4560}
!4560 = !DILocalVariable(name: "l", arg: 1, scope: !4556, file: !3, line: 245, type: !611)
!4561 = !DILocation(line: 0, scope: !4556)
!4562 = !DILocation(line: 247, column: 10, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 247, column: 7)
!4564 = !DILocation(line: 247, column: 7, scope: !4563)
!4565 = !DILocation(line: 247, column: 23, scope: !4563)
!4566 = !DILocation(line: 247, column: 26, scope: !4563)
!4567 = !DILocation(line: 248, column: 7, scope: !4563)
!4568 = !DILocation(line: 248, column: 12, scope: !4563)
!4569 = !DILocation(line: 248, column: 32, scope: !4563)
!4570 = !DILocation(line: 248, column: 36, scope: !4563)
!4571 = !DILocation(line: 247, column: 7, scope: !4556)
!4572 = !DILocation(line: 250, column: 21, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 249, column: 5)
!4574 = !DILocation(line: 251, column: 23, scope: !4573)
!4575 = !DILocation(line: 252, column: 7, scope: !4573)
!4576 = !DILocation(line: 254, column: 1, scope: !4556)
!4577 = distinct !DISubprogram(name: "add_mem_for_addr", scope: !3, file: !3, line: 1018, type: !4578, scopeLine: 1019, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4580)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{null, !623, !623, !552}
!4580 = !{!4581, !4582, !4583, !4584}
!4581 = !DILocalVariable(name: "addr_elt", arg: 1, scope: !4577, file: !3, line: 1018, type: !623)
!4582 = !DILocalVariable(name: "mem_elt", arg: 2, scope: !4577, file: !3, line: 1018, type: !623)
!4583 = !DILocalVariable(name: "x", arg: 3, scope: !4577, file: !3, line: 1018, type: !552)
!4584 = !DILocalVariable(name: "l", scope: !4577, file: !3, line: 1020, type: !611)
!4585 = !DILocation(line: 0, scope: !4577)
!4586 = !DILocation(line: 1023, column: 21, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4577, file: !3, line: 1023, column: 3)
!4588 = !DILocation(line: 1023, column: 8, scope: !4587)
!4589 = !DILocation(line: 0, scope: !4587)
!4590 = !DILocation(line: 1023, column: 3, scope: !4587)
!4591 = !DILocation(line: 1024, column: 9, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4593, file: !3, line: 1024, column: 9)
!4593 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 1023, column: 3)
!4594 = !DILocation(line: 1025, column: 2, scope: !4592)
!4595 = !DILocation(line: 1025, column: 5, scope: !4592)
!4596 = !DILocation(line: 1025, column: 39, scope: !4592)
!4597 = !DILocation(line: 1024, column: 9, scope: !4593)
!4598 = !DILocation(line: 1027, column: 2, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 1026, column: 7)
!4600 = !DILocation(line: 1028, column: 2, scope: !4599)
!4601 = !DILocation(line: 1023, column: 37, scope: !4593)
!4602 = !DILocation(line: 1023, column: 3, scope: !4593)
!4603 = distinct !{!4603, !4590, !4604}
!4604 = !DILocation(line: 1029, column: 7, scope: !4587)
!4605 = !DILocation(line: 1031, column: 49, scope: !4577)
!4606 = !DILocation(line: 1031, column: 25, scope: !4577)
!4607 = !DILocation(line: 1031, column: 23, scope: !4577)
!4608 = !DILocation(line: 1033, column: 34, scope: !4577)
!4609 = !DILocation(line: 1034, column: 43, scope: !4577)
!4610 = !DILocation(line: 1034, column: 4, scope: !4577)
!4611 = !DILocation(line: 1033, column: 7, scope: !4577)
!4612 = !DILocation(line: 1033, column: 5, scope: !4577)
!4613 = !DILocation(line: 1035, column: 16, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4577, file: !3, line: 1035, column: 7)
!4615 = !DILocation(line: 1035, column: 36, scope: !4614)
!4616 = !DILocation(line: 1035, column: 7, scope: !4577)
!4617 = !DILocation(line: 1037, column: 38, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 1036, column: 5)
!4619 = !DILocation(line: 1037, column: 36, scope: !4618)
!4620 = !DILocation(line: 1038, column: 28, scope: !4618)
!4621 = !DILocation(line: 1039, column: 5, scope: !4618)
!4622 = !DILocation(line: 1040, column: 1, scope: !4577)
!4623 = distinct !DISubprogram(name: "wrap_constant", scope: !3, file: !3, line: 776, type: !4624, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4626)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!552, !5, !552}
!4626 = !{!4627, !4628}
!4627 = !DILocalVariable(name: "mode", arg: 1, scope: !4623, file: !3, line: 776, type: !5)
!4628 = !DILocalVariable(name: "x", arg: 2, scope: !4623, file: !3, line: 776, type: !552)
!4629 = !DILocation(line: 0, scope: !4623)
!4630 = !DILocation(line: 778, column: 8, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4623, file: !3, line: 778, column: 7)
!4632 = !DILocation(line: 778, column: 24, scope: !4631)
!4633 = !DILocation(line: 778, column: 40, scope: !4631)
!4634 = !DILocation(line: 779, column: 7, scope: !4631)
!4635 = !DILocation(line: 779, column: 24, scope: !4631)
!4636 = !DILocation(line: 779, column: 40, scope: !4631)
!4637 = !DILocation(line: 779, column: 43, scope: !4631)
!4638 = !DILocation(line: 779, column: 56, scope: !4631)
!4639 = !DILocation(line: 778, column: 7, scope: !4623)
!4640 = !DILocation(line: 781, column: 3, scope: !4623)
!4641 = !DILocation(line: 782, column: 10, scope: !4623)
!4642 = !DILocation(line: 782, column: 3, scope: !4623)
!4643 = !DILocation(line: 783, column: 1, scope: !4623)
!4644 = distinct !DISubprogram(name: "new_elt_list", scope: !3, file: !3, line: 209, type: !4645, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4647)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!618, !618, !623}
!4647 = !{!4648, !4649, !4650}
!4648 = !DILocalVariable(name: "next", arg: 1, scope: !4644, file: !3, line: 209, type: !618)
!4649 = !DILocalVariable(name: "elt", arg: 2, scope: !4644, file: !3, line: 209, type: !623)
!4650 = !DILocalVariable(name: "el", scope: !4644, file: !3, line: 211, type: !618)
!4651 = !DILocation(line: 0, scope: !4644)
!4652 = !DILocation(line: 212, column: 40, scope: !4644)
!4653 = !DILocation(line: 212, column: 28, scope: !4644)
!4654 = !DILocation(line: 212, column: 8, scope: !4644)
!4655 = !DILocation(line: 213, column: 7, scope: !4644)
!4656 = !DILocation(line: 213, column: 12, scope: !4644)
!4657 = !DILocation(line: 214, column: 7, scope: !4644)
!4658 = !DILocation(line: 214, column: 11, scope: !4644)
!4659 = !DILocation(line: 215, column: 3, scope: !4644)
!4660 = distinct !DISubprogram(name: "new_elt_loc_list", scope: !3, file: !3, line: 222, type: !4661, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4663)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!611, !611, !552}
!4663 = !{!4664, !4665, !4666}
!4664 = !DILocalVariable(name: "next", arg: 1, scope: !4660, file: !3, line: 222, type: !611)
!4665 = !DILocalVariable(name: "loc", arg: 2, scope: !4660, file: !3, line: 222, type: !552)
!4666 = !DILocalVariable(name: "el", scope: !4660, file: !3, line: 224, type: !611)
!4667 = !DILocation(line: 0, scope: !4660)
!4668 = !DILocation(line: 225, column: 44, scope: !4660)
!4669 = !DILocation(line: 225, column: 32, scope: !4660)
!4670 = !DILocation(line: 225, column: 8, scope: !4660)
!4671 = !DILocation(line: 226, column: 7, scope: !4660)
!4672 = !DILocation(line: 226, column: 12, scope: !4660)
!4673 = !DILocation(line: 227, column: 7, scope: !4660)
!4674 = !DILocation(line: 227, column: 11, scope: !4660)
!4675 = !DILocation(line: 228, column: 22, scope: !4660)
!4676 = !DILocation(line: 228, column: 7, scope: !4660)
!4677 = !DILocation(line: 228, column: 20, scope: !4660)
!4678 = !DILocation(line: 229, column: 3, scope: !4660)
!4679 = !DILocation(line: 234, column: 16, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4660, file: !3, line: 234, column: 7)
!4681 = !DILocation(line: 234, column: 13, scope: !4680)
!4682 = !DILocation(line: 234, column: 39, scope: !4680)
!4683 = !DILocation(line: 234, column: 7, scope: !4660)
!4684 = !DILocation(line: 235, column: 19, scope: !4680)
!4685 = !DILocation(line: 235, column: 5, scope: !4680)
!4686 = !DILocation(line: 237, column: 3, scope: !4660)
!4687 = distinct !DISubprogram(name: "cselib_hash_rtx", scope: !3, file: !3, line: 806, type: !4688, scopeLine: 807, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4690)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!7, !552, !545}
!4690 = !{!4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4702, !4703, !4705, !4706, !4712, !4713, !4717}
!4691 = !DILocalVariable(name: "x", arg: 1, scope: !4687, file: !3, line: 806, type: !552)
!4692 = !DILocalVariable(name: "create", arg: 2, scope: !4687, file: !3, line: 806, type: !545)
!4693 = !DILocalVariable(name: "e", scope: !4687, file: !3, line: 808, type: !623)
!4694 = !DILocalVariable(name: "i", scope: !4687, file: !3, line: 809, type: !545)
!4695 = !DILocalVariable(name: "j", scope: !4687, file: !3, line: 809, type: !545)
!4696 = !DILocalVariable(name: "code", scope: !4687, file: !3, line: 810, type: !377)
!4697 = !DILocalVariable(name: "fmt", scope: !4687, file: !3, line: 811, type: !550)
!4698 = !DILocalVariable(name: "hash", scope: !4687, file: !3, line: 812, type: !7)
!4699 = !DILocalVariable(name: "units", scope: !4700, file: !3, line: 854, type: !545)
!4700 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 853, column: 7)
!4701 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 818, column: 5)
!4702 = !DILocalVariable(name: "elt", scope: !4700, file: !3, line: 855, type: !552)
!4703 = !DILocalVariable(name: "h", scope: !4704, file: !3, line: 883, type: !7)
!4704 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 877, column: 7)
!4705 = !DILocalVariable(name: "p", scope: !4704, file: !3, line: 884, type: !800)
!4706 = !DILocalVariable(name: "tem", scope: !4707, file: !3, line: 923, type: !552)
!4707 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 922, column: 4)
!4708 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 920, column: 2)
!4709 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 918, column: 5)
!4710 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 917, column: 3)
!4711 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 917, column: 3)
!4712 = !DILocalVariable(name: "tem_hash", scope: !4707, file: !3, line: 924, type: !7)
!4713 = !DILocalVariable(name: "tem_hash", scope: !4714, file: !3, line: 935, type: !7)
!4714 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 934, column: 6)
!4715 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 933, column: 4)
!4716 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 933, column: 4)
!4717 = !DILocalVariable(name: "p", scope: !4718, file: !3, line: 947, type: !800)
!4718 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 946, column: 4)
!4719 = !DILocation(line: 0, scope: !4687)
!4720 = !DILocation(line: 814, column: 10, scope: !4687)
!4721 = !DILocation(line: 815, column: 40, scope: !4687)
!4722 = !DILocation(line: 815, column: 27, scope: !4687)
!4723 = !DILocation(line: 817, column: 3, scope: !4687)
!4724 = !DILocation(line: 821, column: 11, scope: !4701)
!4725 = !DILocation(line: 822, column: 13, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 822, column: 11)
!4727 = !DILocation(line: 822, column: 11, scope: !4701)
!4728 = !DILocation(line: 825, column: 17, scope: !4701)
!4729 = !DILocation(line: 825, column: 7, scope: !4701)
!4730 = !DILocation(line: 829, column: 10, scope: !4701)
!4731 = !DILocation(line: 829, column: 8, scope: !4701)
!4732 = !DILocation(line: 828, column: 12, scope: !4701)
!4733 = !DILocation(line: 830, column: 14, scope: !4701)
!4734 = !DILocation(line: 830, column: 7, scope: !4701)
!4735 = !DILocation(line: 833, column: 45, scope: !4701)
!4736 = !DILocation(line: 833, column: 12, scope: !4701)
!4737 = !DILocation(line: 834, column: 14, scope: !4701)
!4738 = !DILocation(line: 834, column: 7, scope: !4701)
!4739 = !DILocation(line: 839, column: 12, scope: !4701)
!4740 = !DILocation(line: 840, column: 11, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 840, column: 11)
!4742 = !DILocation(line: 840, column: 24, scope: !4741)
!4743 = !DILocation(line: 0, scope: !4741)
!4744 = !DILocation(line: 840, column: 11, scope: !4701)
!4745 = !DILocation(line: 841, column: 21, scope: !4741)
!4746 = !DILocation(line: 841, column: 10, scope: !4741)
!4747 = !DILocation(line: 841, column: 2, scope: !4741)
!4748 = !DILocation(line: 843, column: 22, scope: !4741)
!4749 = !DILocation(line: 843, column: 11, scope: !4741)
!4750 = !DILocation(line: 844, column: 17, scope: !4741)
!4751 = !DILocation(line: 844, column: 6, scope: !4741)
!4752 = !DILocation(line: 844, column: 4, scope: !4741)
!4753 = !DILocation(line: 845, column: 14, scope: !4701)
!4754 = !DILocation(line: 845, column: 7, scope: !4701)
!4755 = !DILocation(line: 848, column: 12, scope: !4701)
!4756 = !DILocation(line: 849, column: 27, scope: !4701)
!4757 = !DILocation(line: 849, column: 15, scope: !4701)
!4758 = !DILocation(line: 849, column: 12, scope: !4701)
!4759 = !DILocation(line: 850, column: 14, scope: !4701)
!4760 = !DILocation(line: 850, column: 7, scope: !4701)
!4761 = !DILocation(line: 857, column: 10, scope: !4700)
!4762 = !DILocation(line: 0, scope: !4700)
!4763 = !DILocation(line: 859, column: 7, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 859, column: 2)
!4765 = !DILocation(line: 859, column: 16, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4764, file: !3, line: 859, column: 2)
!4767 = !DILocation(line: 859, column: 2, scope: !4764)
!4768 = !DILocation(line: 861, column: 12, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4766, file: !3, line: 860, column: 4)
!4770 = !DILocation(line: 862, column: 14, scope: !4769)
!4771 = !DILocation(line: 862, column: 11, scope: !4769)
!4772 = !DILocation(line: 859, column: 25, scope: !4766)
!4773 = !DILocation(line: 859, column: 2, scope: !4766)
!4774 = distinct !{!4774, !4767, !4775}
!4775 = !DILocation(line: 863, column: 4, scope: !4764)
!4776 = !DILocation(line: 873, column: 11, scope: !4701)
!4777 = !DILocation(line: 873, column: 9, scope: !4701)
!4778 = !DILocation(line: 872, column: 12, scope: !4701)
!4779 = !DILocation(line: 874, column: 14, scope: !4701)
!4780 = !DILocation(line: 874, column: 7, scope: !4701)
!4781 = !DILocation(line: 0, scope: !4704)
!4782 = !DILocation(line: 884, column: 51, scope: !4704)
!4783 = !DILocation(line: 886, column: 2, scope: !4704)
!4784 = !DILocation(line: 886, column: 9, scope: !4704)
!4785 = !DILocation(line: 887, column: 12, scope: !4704)
!4786 = !DILocation(line: 887, column: 22, scope: !4704)
!4787 = !DILocation(line: 887, column: 20, scope: !4704)
!4788 = !DILocation(line: 887, column: 18, scope: !4704)
!4789 = !DILocation(line: 887, column: 6, scope: !4704)
!4790 = distinct !{!4790, !4783, !4786}
!4791 = !DILocation(line: 889, column: 43, scope: !4704)
!4792 = !DILocation(line: 889, column: 7, scope: !4704)
!4793 = !DILocation(line: 890, column: 9, scope: !4704)
!4794 = !DILocation(line: 906, column: 11, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 906, column: 11)
!4796 = !DILocation(line: 906, column: 11, scope: !4701)
!4797 = !DILocation(line: 915, column: 7, scope: !4687)
!4798 = !DILocation(line: 916, column: 9, scope: !4687)
!4799 = !DILocation(line: 0, scope: !4708)
!4800 = !DILocation(line: 917, column: 3, scope: !4687)
!4801 = !DILocation(line: 815, column: 8, scope: !4687)
!4802 = !DILocation(line: 917, column: 12, scope: !4710)
!4803 = !DILocation(line: 917, column: 3, scope: !4711)
!4804 = !DILocation(line: 919, column: 15, scope: !4709)
!4805 = !DILocation(line: 919, column: 7, scope: !4709)
!4806 = !DILocation(line: 0, scope: !4715)
!4807 = !DILocation(line: 933, column: 4, scope: !4716)
!4808 = !DILocation(line: 923, column: 16, scope: !4707)
!4809 = !DILocation(line: 0, scope: !4707)
!4810 = !DILocation(line: 924, column: 30, scope: !4707)
!4811 = !DILocation(line: 926, column: 19, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4707, file: !3, line: 926, column: 10)
!4813 = !DILocation(line: 926, column: 10, scope: !4707)
!4814 = !DILocation(line: 933, column: 20, scope: !4715)
!4815 = !DILocation(line: 933, column: 18, scope: !4715)
!4816 = !DILocation(line: 936, column: 22, scope: !4714)
!4817 = !DILocation(line: 936, column: 5, scope: !4714)
!4818 = !DILocation(line: 0, scope: !4714)
!4819 = !DILocation(line: 938, column: 21, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 938, column: 12)
!4821 = !DILocation(line: 938, column: 12, scope: !4714)
!4822 = !DILocation(line: 933, column: 37, scope: !4715)
!4823 = !DILocation(line: 933, column: 4, scope: !4715)
!4824 = distinct !{!4824, !4807, !4825}
!4825 = !DILocation(line: 942, column: 6, scope: !4716)
!4826 = !DILocation(line: 947, column: 55, scope: !4718)
!4827 = !DILocation(line: 0, scope: !4718)
!4828 = !DILocation(line: 949, column: 10, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 949, column: 10)
!4830 = !DILocation(line: 949, column: 10, scope: !4718)
!4831 = !DILocation(line: 950, column: 8, scope: !4829)
!4832 = !DILocation(line: 950, column: 15, scope: !4829)
!4833 = !DILocation(line: 951, column: 13, scope: !4829)
!4834 = !DILocation(line: 951, column: 11, scope: !4829)
!4835 = !DILocation(line: 951, column: 8, scope: !4829)
!4836 = distinct !{!4836, !4831, !4833}
!4837 = !DILocation(line: 956, column: 12, scope: !4708)
!4838 = !DILocation(line: 956, column: 9, scope: !4708)
!4839 = !DILocation(line: 957, column: 4, scope: !4708)
!4840 = !DILocation(line: 965, column: 4, scope: !4708)
!4841 = !DILocation(line: 966, column: 2, scope: !4708)
!4842 = !DILocation(line: 917, column: 3, scope: !4710)
!4843 = distinct !{!4843, !4803, !4844}
!4844 = !DILocation(line: 967, column: 5, scope: !4711)
!4845 = !DILocation(line: 969, column: 10, scope: !4687)
!4846 = !DILocation(line: 969, column: 43, scope: !4687)
!4847 = !DILocation(line: 969, column: 26, scope: !4687)
!4848 = !DILocation(line: 970, column: 1, scope: !4687)
!4849 = distinct !DISubprogram(name: "end_hard_regno", scope: !4850, file: !4850, line: 290, type: !4851, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4853)
!4850 = !DIFile(filename: "./regs.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!7, !5, !7}
!4853 = !{!4854, !4855}
!4854 = !DILocalVariable(name: "mode", arg: 1, scope: !4849, file: !4850, line: 290, type: !5)
!4855 = !DILocalVariable(name: "regno", arg: 2, scope: !4849, file: !4850, line: 290, type: !7)
!4856 = !DILocation(line: 0, scope: !4849)
!4857 = !DILocation(line: 292, column: 18, scope: !4849)
!4858 = !DILocation(line: 292, column: 16, scope: !4849)
!4859 = !DILocation(line: 292, column: 3, scope: !4849)
!4860 = distinct !DISubprogram(name: "cselib_rtx_varies_p", scope: !3, file: !3, line: 1838, type: !4861, scopeLine: 1839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4863)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!544, !1653, !544}
!4863 = !{!4864, !4865}
!4864 = !DILocalVariable(name: "x", arg: 1, scope: !4860, file: !3, line: 1838, type: !1653)
!4865 = !DILocalVariable(name: "from_alias", arg: 2, scope: !4860, file: !3, line: 1838, type: !544)
!4866 = !DILocation(line: 0, scope: !4860)
!4867 = !DILocation(line: 1844, column: 3, scope: !4860)
!4868 = distinct !DISubprogram(name: "cselib_invalidate_rtx_note_stores", scope: !3, file: !3, line: 1957, type: !4869, scopeLine: 1959, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4871)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{null, !552, !1653, !549}
!4871 = !{!4872, !4873, !4874}
!4872 = !DILocalVariable(name: "dest", arg: 1, scope: !4868, file: !3, line: 1957, type: !552)
!4873 = !DILocalVariable(name: "ignore", arg: 2, scope: !4868, file: !3, line: 1957, type: !1653)
!4874 = !DILocalVariable(name: "data", arg: 3, scope: !4868, file: !3, line: 1958, type: !549)
!4875 = !DILocation(line: 0, scope: !4868)
!4876 = !DILocation(line: 1960, column: 3, scope: !4868)
!4877 = !DILocation(line: 1961, column: 1, scope: !4868)
!4878 = distinct !DISubprogram(name: "cselib_record_set", scope: !3, file: !3, line: 1968, type: !4879, scopeLine: 1969, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4881)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{null, !552, !623, !623}
!4881 = !{!4882, !4883, !4884, !4885, !4886}
!4882 = !DILocalVariable(name: "dest", arg: 1, scope: !4878, file: !3, line: 1968, type: !552)
!4883 = !DILocalVariable(name: "src_elt", arg: 2, scope: !4878, file: !3, line: 1968, type: !623)
!4884 = !DILocalVariable(name: "dest_addr_elt", arg: 3, scope: !4878, file: !3, line: 1968, type: !623)
!4885 = !DILocalVariable(name: "dreg", scope: !4878, file: !3, line: 1970, type: !545)
!4886 = !DILocalVariable(name: "n", scope: !4887, file: !3, line: 1979, type: !7)
!4887 = distinct !DILexicalBlock(scope: !4888, file: !3, line: 1978, column: 2)
!4888 = distinct !DILexicalBlock(scope: !4889, file: !3, line: 1977, column: 11)
!4889 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 1976, column: 5)
!4890 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 1975, column: 7)
!4891 = !DILocation(line: 0, scope: !4878)
!4892 = !DILocation(line: 1970, column: 14, scope: !4878)
!4893 = !DILocation(line: 1970, column: 35, scope: !4878)
!4894 = !DILocation(line: 1972, column: 15, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 1972, column: 7)
!4896 = !DILocation(line: 1972, column: 20, scope: !4895)
!4897 = !DILocation(line: 1972, column: 23, scope: !4895)
!4898 = !DILocation(line: 1972, column: 7, scope: !4878)
!4899 = !DILocation(line: 1975, column: 12, scope: !4890)
!4900 = !DILocation(line: 1975, column: 7, scope: !4878)
!4901 = !DILocation(line: 1977, column: 16, scope: !4888)
!4902 = !DILocation(line: 1977, column: 11, scope: !4889)
!4903 = !DILocation(line: 1985, column: 11, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4889, file: !3, line: 1985, column: 11)
!4905 = !DILocation(line: 1979, column: 21, scope: !4887)
!4906 = !DILocation(line: 1979, column: 44, scope: !4887)
!4907 = !DILocation(line: 0, scope: !4887)
!4908 = !DILocation(line: 1981, column: 12, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 1981, column: 8)
!4910 = !DILocation(line: 1981, column: 10, scope: !4909)
!4911 = !DILocation(line: 1981, column: 8, scope: !4887)
!4912 = !DILocation(line: 1982, column: 21, scope: !4909)
!4913 = !DILocation(line: 1982, column: 6, scope: !4909)
!4914 = !DILocation(line: 1985, column: 29, scope: !4904)
!4915 = !DILocation(line: 1985, column: 11, scope: !4889)
!4916 = !DILocation(line: 1987, column: 4, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 1986, column: 2)
!4918 = !DILocation(line: 1987, column: 25, scope: !4917)
!4919 = !DILocation(line: 1987, column: 29, scope: !4917)
!4920 = !DILocation(line: 1988, column: 38, scope: !4917)
!4921 = !DILocation(line: 1988, column: 24, scope: !4917)
!4922 = !DILocation(line: 1988, column: 4, scope: !4917)
!4923 = !DILocation(line: 1988, column: 22, scope: !4917)
!4924 = !DILocation(line: 1989, column: 2, scope: !4917)
!4925 = !DILocation(line: 1993, column: 4, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 1991, column: 2)
!4927 = !DILocation(line: 1994, column: 4, scope: !4926)
!4928 = !DILocation(line: 0, scope: !4926)
!4929 = !DILocation(line: 1994, column: 23, scope: !4926)
!4930 = !DILocation(line: 1994, column: 27, scope: !4926)
!4931 = !DILocation(line: 1997, column: 20, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4889, file: !3, line: 1997, column: 11)
!4933 = !DILocation(line: 1997, column: 25, scope: !4932)
!4934 = !DILocation(line: 1997, column: 30, scope: !4932)
!4935 = !DILocation(line: 1997, column: 34, scope: !4932)
!4936 = !DILocation(line: 1997, column: 11, scope: !4889)
!4937 = !DILocation(line: 1998, column: 18, scope: !4932)
!4938 = !DILocation(line: 1998, column: 2, scope: !4932)
!4939 = !DILocation(line: 1999, column: 23, scope: !4889)
!4940 = !DILocation(line: 1999, column: 21, scope: !4889)
!4941 = !DILocation(line: 2000, column: 5, scope: !4889)
!4942 = !DILocation(line: 2001, column: 12, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 2001, column: 12)
!4944 = !DILocation(line: 2001, column: 42, scope: !4943)
!4945 = !DILocation(line: 2001, column: 25, scope: !4943)
!4946 = !DILocation(line: 2002, column: 8, scope: !4943)
!4947 = !DILocation(line: 2001, column: 12, scope: !4890)
!4948 = !DILocation(line: 2004, column: 20, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4950, file: !3, line: 2004, column: 11)
!4950 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 2003, column: 5)
!4951 = !DILocation(line: 2004, column: 25, scope: !4949)
!4952 = !DILocation(line: 2004, column: 30, scope: !4949)
!4953 = !DILocation(line: 2004, column: 34, scope: !4949)
!4954 = !DILocation(line: 2004, column: 11, scope: !4950)
!4955 = !DILocation(line: 2005, column: 18, scope: !4949)
!4956 = !DILocation(line: 2005, column: 2, scope: !4949)
!4957 = !DILocation(line: 2006, column: 7, scope: !4950)
!4958 = !DILocation(line: 2007, column: 5, scope: !4950)
!4959 = !DILocation(line: 2008, column: 1, scope: !4878)
