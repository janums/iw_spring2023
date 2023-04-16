; ModuleID = 'explow.bc'
source_filename = "explow.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.control_flow_graph = type opaque
%struct.gimple_seq_d = type opaque
%struct.gimple_df = type opaque
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
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
%struct.bitmap_head_def = type opaque
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, %struct.rtx_def*, %struct.initial_value_struct*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, %struct.rtx_def*, %struct.VEC_temp_slot_p_gc*, %struct.temp_slot*, i32, i32, i32, i32, i32, i32, %struct.rtx_def*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.emit_status = type { i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.sequence_stack*, i32, i32, i32, i32, i8* }
%struct.sequence_stack = type { %struct.rtx_def*, %struct.rtx_def*, %struct.sequence_stack* }
%struct.varasm_status = type { %struct.rtx_constant_pool*, i32 }
%struct.rtx_constant_pool = type opaque
%struct.incoming_args = type { i32, i32, i32, %struct.rtx_def*, %struct.ix86_args, %struct.rtx_def* }
%struct.function_subsections = type { i8*, i8*, i8*, i8*, i8* }
%struct.rtl_eh = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.VEC_uchar_gc*, [2 x %struct.VEC_call_site_record_gc*] }
%struct.VEC_uchar_gc = type { %struct.VEC_uchar_base }
%struct.VEC_uchar_base = type { i32, i32, [1 x i8] }
%struct.VEC_call_site_record_gc = type { %struct.VEC_call_site_record_base }
%struct.VEC_call_site_record_base = type { i32, i32, [1 x %struct.call_site_record_d*] }
%struct.call_site_record_d = type opaque
%struct.initial_value_struct = type opaque
%struct.VEC_temp_slot_p_gc = type { %struct.VEC_temp_slot_p_base }
%struct.VEC_temp_slot_p_base = type { i32, i32, [1 x %struct.temp_slot*] }
%struct.temp_slot = type opaque
%struct.optab_d = type { i32, i8*, i8, void (%struct.optab_d*, i8*, i8, i32)*, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.insn_data = type { i8*, %union.anon.0, %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.insn_operand_data*, i8, i8, i8, i8 }
%union.anon.0 = type { i8* }
%struct.insn_operand_data = type { i32 (%struct.rtx_def*, i32)*, i8*, i16, i8, i8 }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.mem_attrs = type { %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32, i8 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@mode_size = external dso_local local_unnamed_addr global [87 x i8], align 16
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@.str = private unnamed_addr constant [9 x i8] c"explow.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@rtx_class = external dso_local local_unnamed_addr constant [139 x i32], align 16
@const_int_rtx = external dso_local local_unnamed_addr global [129 x %struct.rtx_def*], align 16
@sizetype_tab = external dso_local local_unnamed_addr global [4 x %union.tree_node*], align 16
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@cse_not_expected = external dso_local local_unnamed_addr global i32, align 4
@flag_section_anchors = external dso_local local_unnamed_addr global i32, align 4
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@ix86_tune_features = external dso_local local_unnamed_addr global [62 x i8], align 16
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@x_rtl = external dso_local local_unnamed_addr global %struct.rtl_data, align 8
@optab_table = external dso_local global [159 x %struct.optab_d], align 16
@global_rtl = external dso_local local_unnamed_addr global [11 x %struct.rtx_def*], align 16
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@ix86_preferred_stack_boundary = external dso_local local_unnamed_addr global i32, align 4
@ix86_isa_flags = external dso_local local_unnamed_addr global i32, align 4
@target_flags = external dso_local local_unnamed_addr global i32, align 4
@word_mode = external dso_local local_unnamed_addr global i32, align 4
@insn_data = external dso_local local_unnamed_addr constant [0 x %struct.insn_data], align 8
@stack_limit_rtx = external dso_local local_unnamed_addr global %struct.rtx_def*, align 8
@flag_stack_check = external dso_local local_unnamed_addr global i32, align 4
@stack_check_libfunc = internal global %struct.rtx_def* null, align 8, !dbg !0
@class_narrowest_mode = external dso_local local_unnamed_addr constant [18 x i8], align 16
@mode_wider = external dso_local local_unnamed_addr constant [87 x i8], align 16
@gt_ggc_r_gt_explow_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%struct.rtx_def** @stack_check_libfunc to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_rtx_def, void (i8*)* @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !1591

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1611 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1624, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1625, metadata !DIExpression()), !dbg !1626
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1627
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1628
  ret i32 %call, !dbg !1629
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1630 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1634
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1635
  ret i32 %call, !dbg !1636
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1637 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1691, metadata !DIExpression()), !dbg !1692
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1693
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1693
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1693
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1693
  %cmp = icmp uge i8* %0, %1, !dbg !1693
  %conv1 = zext i1 %cmp to i64, !dbg !1693
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1693
  %tobool = icmp eq i64 %expval, 0, !dbg !1693
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1693

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1693
  br label %cond.end, !dbg !1693

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1693
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1693
  %2 = load i8, i8* %0, align 1, !dbg !1693
  %conv3 = zext i8 %2 to i32, !dbg !1693
  br label %cond.end, !dbg !1693

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1693
  ret i32 %cond, !dbg !1694
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1695 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1697, metadata !DIExpression()), !dbg !1698
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1699
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1699
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1699
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1699
  %cmp = icmp uge i8* %0, %1, !dbg !1699
  %conv1 = zext i1 %cmp to i64, !dbg !1699
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1699
  %tobool = icmp eq i64 %expval, 0, !dbg !1699
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1699

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1699
  br label %cond.end, !dbg !1699

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1699
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1699
  %2 = load i8, i8* %0, align 1, !dbg !1699
  %conv3 = zext i8 %2 to i32, !dbg !1699
  br label %cond.end, !dbg !1699

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1699
  ret i32 %cond, !dbg !1700
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1701 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1702
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1702
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1702
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1702
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1702
  %cmp = icmp uge i8* %1, %2, !dbg !1702
  %conv1 = zext i1 %cmp to i64, !dbg !1702
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1702
  %tobool = icmp eq i64 %expval, 0, !dbg !1702
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1702

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1702
  br label %cond.end, !dbg !1702

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1702
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1702
  %3 = load i8, i8* %1, align 1, !dbg !1702
  %conv3 = zext i8 %3 to i32, !dbg !1702
  br label %cond.end, !dbg !1702

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1702
  ret i32 %cond, !dbg !1703
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1704 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1708, metadata !DIExpression()), !dbg !1709
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1710
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1711
  ret i32 %call, !dbg !1712
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1713 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1717, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1718, metadata !DIExpression()), !dbg !1719
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1720
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1720
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1720
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1720
  %cmp = icmp uge i8* %0, %1, !dbg !1720
  %conv1 = zext i1 %cmp to i64, !dbg !1720
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1720
  %tobool = icmp eq i64 %expval, 0, !dbg !1720
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1720

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1720
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1720
  br label %cond.end, !dbg !1720

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1720
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1720
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1720
  store i8 %conv2, i8* %0, align 1, !dbg !1720
  %conv6 = and i32 %__c, 255, !dbg !1720
  br label %cond.end, !dbg !1720

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1720
  ret i32 %cond, !dbg !1721
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1722 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1724, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1725, metadata !DIExpression()), !dbg !1726
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1727
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1727
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1727
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1727
  %cmp = icmp uge i8* %0, %1, !dbg !1727
  %conv1 = zext i1 %cmp to i64, !dbg !1727
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1727
  %tobool = icmp eq i64 %expval, 0, !dbg !1727
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1727

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1727
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1727
  br label %cond.end, !dbg !1727

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1727
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1727
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1727
  store i8 %conv2, i8* %0, align 1, !dbg !1727
  %conv6 = and i32 %__c, 255, !dbg !1727
  br label %cond.end, !dbg !1727

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1727
  ret i32 %cond, !dbg !1728
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1729 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1731, metadata !DIExpression()), !dbg !1732
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1733
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1733
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1733
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1733
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1733
  %cmp = icmp uge i8* %1, %2, !dbg !1733
  %conv1 = zext i1 %cmp to i64, !dbg !1733
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1733
  %tobool = icmp eq i64 %expval, 0, !dbg !1733
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1733

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1733
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1733
  br label %cond.end, !dbg !1733

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1733
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1733
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1733
  store i8 %conv4, i8* %1, align 1, !dbg !1733
  %conv6 = and i32 %__c, 255, !dbg !1733
  br label %cond.end, !dbg !1733

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1733
  ret i32 %cond, !dbg !1734
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1735 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1741, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1742, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1743, metadata !DIExpression()), !dbg !1744
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1745
  ret i64 %call, !dbg !1746
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1747 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1749, metadata !DIExpression()), !dbg !1750
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1751
  %0 = load i32, i32* %_flags, align 8, !dbg !1751
  %and = lshr i32 %0, 4, !dbg !1751
  %and.lobit = and i32 %and, 1, !dbg !1751
  ret i32 %and.lobit, !dbg !1752
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1753 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1755, metadata !DIExpression()), !dbg !1756
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1757
  %0 = load i32, i32* %_flags, align 8, !dbg !1757
  %and = lshr i32 %0, 5, !dbg !1757
  %and.lobit = and i32 %and, 1, !dbg !1757
  ret i32 %and.lobit, !dbg !1758
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1759 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1762, metadata !DIExpression()), !dbg !1763
  %__c.off = add i32 %__c, 128, !dbg !1764
  %0 = icmp ult i32 %__c.off, 384, !dbg !1764
  br i1 %0, label %cond.true, label %cond.end, !dbg !1764

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1765
  %1 = load i32*, i32** %call, align 8, !dbg !1766
  %idxprom = sext i32 %__c to i64, !dbg !1767
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1767
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1767
  br label %cond.end, !dbg !1768

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1768
  ret i32 %cond, !dbg !1769
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1770 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1772, metadata !DIExpression()), !dbg !1773
  %__c.off = add i32 %__c, 128, !dbg !1774
  %0 = icmp ult i32 %__c.off, 384, !dbg !1774
  br i1 %0, label %cond.true, label %cond.end, !dbg !1774

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1775
  %1 = load i32*, i32** %call, align 8, !dbg !1776
  %idxprom = sext i32 %__c to i64, !dbg !1777
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1777
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1777
  br label %cond.end, !dbg !1778

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1778
  ret i32 %cond, !dbg !1779
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1780 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1785, metadata !DIExpression()), !dbg !1786
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1787
  %conv = trunc i64 %call to i32, !dbg !1788
  ret i32 %conv, !dbg !1789
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1790 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1794, metadata !DIExpression()), !dbg !1795
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1796
  ret i64 %call, !dbg !1797
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1798 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1803, metadata !DIExpression()), !dbg !1804
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1805
  ret i64 %call, !dbg !1806
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1807 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1813, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1814, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1815, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1816, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1817, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 0, metadata !1818, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1819, metadata !DIExpression()), !dbg !1823
  br label %while.cond, !dbg !1824

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1825
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1823
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1819, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1818, metadata !DIExpression()), !dbg !1823
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1826
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1824

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1827
  %div = lshr i64 %add, 1, !dbg !1829
  call void @llvm.dbg.value(metadata i64 %div, metadata !1820, metadata !DIExpression()), !dbg !1823
  %mul = mul i64 %div, %__size, !dbg !1830
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1831
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1821, metadata !DIExpression()), !dbg !1823
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1832
  call void @llvm.dbg.value(metadata i32 %call, metadata !1822, metadata !DIExpression()), !dbg !1823
  %cmp1 = icmp slt i32 %call, 0, !dbg !1833
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1835

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1836
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1838

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1818, metadata !DIExpression()), !dbg !1823
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1823
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1823
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1819, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1818, metadata !DIExpression()), !dbg !1823
  br label %while.cond, !dbg !1824, !llvm.loop !1840

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1823
  ret i8* %retval.0, !dbg !1842
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1843 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1849, metadata !DIExpression()), !dbg !1850
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1851
  ret double %call, !dbg !1852
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1853 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1862, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1863, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i32 %base, metadata !1864, metadata !DIExpression()), !dbg !1865
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1866
  ret i64 %call, !dbg !1867
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1868 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1874, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1875, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i32 %base, metadata !1876, metadata !DIExpression()), !dbg !1877
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1878
  ret i64 %call, !dbg !1879
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1880 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1891, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1892, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i32 %base, metadata !1893, metadata !DIExpression()), !dbg !1894
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1895
  ret i64 %call, !dbg !1896
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1897 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1901, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1902, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i32 %base, metadata !1903, metadata !DIExpression()), !dbg !1904
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1905
  ret i64 %call, !dbg !1906
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1907 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1947, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1948, metadata !DIExpression()), !dbg !1949
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1950
  ret i32 %call, !dbg !1951
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1952 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1954, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1955, metadata !DIExpression()), !dbg !1956
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1957
  ret i32 %call, !dbg !1958
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1959 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1963, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1964, metadata !DIExpression()), !dbg !1965
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1966
  ret i32 %call, !dbg !1967
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1968 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1972, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1973, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1974, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1975, metadata !DIExpression()), !dbg !1976
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1977
  ret i32 %call, !dbg !1978
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1979 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1983, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1984, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1985, metadata !DIExpression()), !dbg !1986
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1985, metadata !DIExpression(DW_OP_deref)), !dbg !1986
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1987
  ret i32 %call, !dbg !1988
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1989 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1993, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1994, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1995, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1996, metadata !DIExpression()), !dbg !1997
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1996, metadata !DIExpression(DW_OP_deref)), !dbg !1997
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1998
  ret i32 %call, !dbg !1999
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2000 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2024, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2025, metadata !DIExpression()), !dbg !2026
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2027
  ret i32 %call, !dbg !2028
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2029 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2031, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2032, metadata !DIExpression()), !dbg !2033
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2034
  ret i32 %call, !dbg !2035
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2036 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2040, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2041, metadata !DIExpression()), !dbg !2042
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2043
  ret i32 %call, !dbg !2044
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2045 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2049, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2050, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2052, metadata !DIExpression()), !dbg !2053
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2054
  ret i32 %call, !dbg !2055
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @trunc_int_for_mode(i64 %c, i32 %mode) local_unnamed_addr #4 !dbg !2056 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !2060, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2061, metadata !DIExpression()), !dbg !2066
  %idxprom = zext i32 %mode to i64, !dbg !2067
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !2067
  %0 = load i8, i8* %arrayidx, align 1, !dbg !2067
  %conv1 = zext i8 %0 to i64, !dbg !2067
  %mul = shl nuw nsw i64 %conv1, 3, !dbg !2067
  call void @llvm.dbg.value(metadata i8 %0, metadata !2062, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value)), !dbg !2066
  %arrayidx5 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !2068
  %1 = load i8, i8* %arrayidx5, align 1, !dbg !2068
  %cmp = icmp eq i8 %1, 2, !dbg !2068
  br i1 %cmp, label %cond.end, label %lor.lhs.false, !dbg !2068

lor.lhs.false:                                    ; preds = %entry
  %cmp11 = icmp eq i8 %1, 3, !dbg !2068
  br i1 %cmp11, label %cond.end, label %cond.true, !dbg !2068

cond.true:                                        ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2068
  br label %cond.end, !dbg !2068

cond.end:                                         ; preds = %entry, %lor.lhs.false, %cond.true
  %cmp13 = icmp eq i32 %mode, 13, !dbg !2069
  br i1 %cmp13, label %if.then, label %if.end, !dbg !2071

if.then:                                          ; preds = %cond.end
  %2 = and i64 %c, 1, !dbg !2072
  br label %cleanup, !dbg !2073

if.end:                                           ; preds = %cond.end
  %cmp17 = icmp ult i8 %0, 8, !dbg !2074
  br i1 %cmp17, label %if.then19, label %cleanup, !dbg !2075

if.then19:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 1, metadata !2063, metadata !DIExpression()), !dbg !2076
  %sub = add nuw nsw i64 %mul, 4294967295, !dbg !2077
  %sh_prom = and i64 %sub, 4294967295, !dbg !2078
  %shl = shl i64 1, %sh_prom, !dbg !2078
  call void @llvm.dbg.value(metadata i64 %shl, metadata !2063, metadata !DIExpression()), !dbg !2076
  %shl20 = shl i64 %shl, 1, !dbg !2079
  %sub21 = add nsw i64 %shl20, -1, !dbg !2080
  %and22 = and i64 %sub21, %c, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %and22, metadata !2060, metadata !DIExpression()), !dbg !2066
  %xor = xor i64 %and22, %shl, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %xor, metadata !2060, metadata !DIExpression()), !dbg !2066
  %sub23 = sub nsw i64 %xor, %shl, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %sub23, metadata !2060, metadata !DIExpression()), !dbg !2066
  br label %cleanup, !dbg !2084

cleanup:                                          ; preds = %if.end, %if.then19, %if.then
  %retval.0 = phi i64 [ %2, %if.then ], [ %sub23, %if.then19 ], [ %c, %if.end ], !dbg !2066
  ret i64 %retval.0, !dbg !2085
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @plus_constant(%struct.rtx_def* %x, i64 %c) local_unnamed_addr #4 !dbg !2086 {
entry:
  %y = alloca %struct.rtx_def*, align 8
  %lv = alloca i64, align 8
  %hv = alloca i64, align 8
  %copy = alloca %struct.rtx_def*, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %c, metadata !2091, metadata !DIExpression()), !dbg !2113
  %0 = bitcast %struct.rtx_def** %y to i8*, !dbg !2114
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2114
  call void @llvm.dbg.value(metadata i32 0, metadata !2096, metadata !DIExpression()), !dbg !2113
  %cmp = icmp eq i64 %c, 0, !dbg !2115
  br i1 %cmp, label %cleanup, label %restart.preheader, !dbg !2117

restart.preheader:                                ; preds = %entry
  br label %restart.outer, !dbg !2118

restart.outer:                                    ; preds = %restart.preheader, %sw.bb50
  %all_constant.0.ph = phi i32 [ 0, %restart.preheader ], [ 1, %sw.bb50 ]
  %c.addr.0.ph = phi i64 [ %c, %restart.preheader ], [ %c.addr.0.lcssa89, %sw.bb50 ]
  %x.addr.0.ph = phi %struct.rtx_def* [ %x, %restart.preheader ], [ %15, %sw.bb50 ]
  br label %restart, !dbg !2118

restart:                                          ; preds = %restart.outer, %if.end84
  %c.addr.0 = phi i64 [ %c.addr.1, %if.end84 ], [ %c.addr.0.ph, %restart.outer ]
  %x.addr.0 = phi %struct.rtx_def* [ %21, %if.end84 ], [ %x.addr.0.ph, %restart.outer ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %c.addr.0, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 %all_constant.0.ph, metadata !2096, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.label(metadata !2112), !dbg !2119
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0, i64 0, i32 0, !dbg !2120
  %bf.load = load i32, i32* %1, align 8, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %bf.load, metadata !2092, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0, metadata !2093, metadata !DIExpression()), !dbg !2113
  store %struct.rtx_def* %x.addr.0, %struct.rtx_def** %y, align 8, !dbg !2121
  %trunc = trunc i32 %bf.load to i16, !dbg !2118
  switch i16 %trunc, label %sw.default [
    i16 30, label %sw.bb
    i16 32, label %sw.bb3
    i16 43, label %sw.bb13
    i16 35, label %sw.bb50
    i16 45, label %sw.epilog.loopexit
    i16 44, label %sw.epilog.loopexit
    i16 49, label %sw.bb56
  ], !dbg !2118

sw.bb:                                            ; preds = %restart
  %c.addr.0.lcssa86 = phi i64 [ %c.addr.0, %restart ]
  %x.addr.0.lcssa80 = phi %struct.rtx_def* [ %x.addr.0, %restart ]
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa86, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa80, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa86, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa80, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa86, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa80, metadata !2090, metadata !DIExpression()), !dbg !2113
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa80, i64 0, i32 1, !dbg !2122
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !2122
  %2 = load i64, i64* %arrayidx, align 8, !dbg !2122
  %add = add nsw i64 %2, %c.addr.0.lcssa86, !dbg !2122
  %call = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %add) #6, !dbg !2122
  br label %cleanup, !dbg !2123

sw.bb3:                                           ; preds = %restart
  %c.addr.0.lcssa87 = phi i64 [ %c.addr.0, %restart ]
  %x.addr.0.lcssa81 = phi %struct.rtx_def* [ %x.addr.0, %restart ]
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa87, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa81, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa87, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa81, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa87, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa81, metadata !2090, metadata !DIExpression()), !dbg !2113
  %u4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa81, i64 0, i32 1, !dbg !2124
  %arrayidx6 = bitcast %union.u* %u4 to i64*, !dbg !2124
  %3 = load i64, i64* %arrayidx6, align 8, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %3, metadata !2097, metadata !DIExpression()), !dbg !2125
  %arrayidx9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa81, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2126
  %4 = bitcast %union.rtunion_def* %arrayidx9 to i64*, !dbg !2126
  %5 = load i64, i64* %4, align 8, !dbg !2126
  call void @llvm.dbg.value(metadata i64 %5, metadata !2100, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa87, metadata !2101, metadata !DIExpression()), !dbg !2125
  %c.addr.0.lobit = ashr i64 %c.addr.0.lcssa87, 63, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lobit, metadata !2102, metadata !DIExpression()), !dbg !2125
  %6 = bitcast i64* %lv to i8*, !dbg !2128
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7, !dbg !2128
  %7 = bitcast i64* %hv to i8*, !dbg !2129
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !2129
  call void @llvm.dbg.value(metadata i64* %lv, metadata !2103, metadata !DIExpression(DW_OP_deref)), !dbg !2125
  call void @llvm.dbg.value(metadata i64* %hv, metadata !2104, metadata !DIExpression(DW_OP_deref)), !dbg !2125
  %call11 = call i32 @add_double_with_sign(i64 %3, i64 %5, i64 %c.addr.0.lcssa87, i64 %c.addr.0.lobit, i64* nonnull %lv, i64* nonnull %hv, i8 zeroext 0) #6, !dbg !2130
  %8 = load i64, i64* %lv, align 8, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %8, metadata !2103, metadata !DIExpression()), !dbg !2125
  %9 = load i64, i64* %hv, align 8, !dbg !2132
  call void @llvm.dbg.value(metadata i64 %9, metadata !2104, metadata !DIExpression()), !dbg !2125
  %call12 = call %struct.rtx_def* @immed_double_const(i64 %8, i64 %9, i32 0) #6, !dbg !2133
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !2134
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7, !dbg !2134
  br label %cleanup

sw.bb13:                                          ; preds = %restart
  %all_constant.0.ph.lcssa95 = phi i32 [ %all_constant.0.ph, %restart ]
  %c.addr.0.lcssa88 = phi i64 [ %c.addr.0, %restart ]
  %x.addr.0.lcssa82 = phi %struct.rtx_def* [ %x.addr.0, %restart ]
  %.lcssa76 = phi i32* [ %1, %restart ], !dbg !2120
  %bf.load.lcssa70 = phi i32 [ %bf.load, %restart ], !dbg !2120
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa88, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa82, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa88, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa82, metadata !2090, metadata !DIExpression()), !dbg !2113
  %bf.lshr.le32 = lshr i32 %bf.load.lcssa70, 16, !dbg !2135
  %bf.clear2.le28 = and i32 %bf.lshr.le32, 255, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa88, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa82, metadata !2090, metadata !DIExpression()), !dbg !2113
  %arrayidx15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa82, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2136
  %10 = bitcast %union.rtunion_def* %arrayidx15 to i32**, !dbg !2136
  %11 = load i32*, i32** %10, align 8, !dbg !2136
  %bf.load16 = load i32, i32* %11, align 8, !dbg !2136
  %bf.clear17 = and i32 %bf.load16, 65535, !dbg !2136
  %cmp18 = icmp eq i32 %bf.clear17, 45, !dbg !2138
  %12 = bitcast i32* %11 to %struct.rtx_def*, !dbg !2139
  br i1 %cmp18, label %land.lhs.true, label %sw.epilog, !dbg !2139

land.lhs.true:                                    ; preds = %sw.bb13
  %bf.clear26 = and i32 %bf.load16, 67108864, !dbg !2140
  %tobool = icmp eq i32 %bf.clear26, 0, !dbg !2140
  br i1 %tobool, label %sw.epilog, label %if.then27, !dbg !2141

if.then27:                                        ; preds = %land.lhs.true
  %bf.load28 = load i32, i32* %.lcssa76, align 8, !dbg !2142
  %bf.lshr29 = lshr i32 %bf.load28, 16, !dbg !2142
  %bf.clear30 = and i32 %bf.lshr29, 255, !dbg !2142
  %call35 = tail call %struct.rtx_def* @get_pool_constant(%struct.rtx_def* %12) #6, !dbg !2144
  %call36 = tail call %struct.rtx_def* @plus_constant(%struct.rtx_def* %call35, i64 %c.addr.0.lcssa88) #8, !dbg !2145
  %call37 = tail call %struct.rtx_def* @force_const_mem(i32 %bf.clear30, %struct.rtx_def* %call36) #6, !dbg !2146
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call37, metadata !2095, metadata !DIExpression()), !dbg !2113
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call37, i64 0, i32 0, !dbg !2147
  %bf.load38 = load i32, i32* %13, align 8, !dbg !2147
  %bf.lshr39 = lshr i32 %bf.load38, 16, !dbg !2147
  %bf.clear40 = and i32 %bf.lshr39, 255, !dbg !2147
  %arrayidx43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call37, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2147
  %rt_rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**, !dbg !2147
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx44, align 8, !dbg !2147
  %call45 = tail call i32 @memory_address_addr_space_p(i32 %bf.clear40, %struct.rtx_def* %14, i8 zeroext 0) #6, !dbg !2147
  %tobool46 = icmp eq i32 %call45, 0, !dbg !2147
  br i1 %tobool46, label %sw.epilog, label %cleanup, !dbg !2149

sw.bb50:                                          ; preds = %restart
  %c.addr.0.lcssa89 = phi i64 [ %c.addr.0, %restart ]
  %x.addr.0.lcssa83 = phi %struct.rtx_def* [ %x.addr.0, %restart ]
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa89, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa83, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa89, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa83, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa89, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa83, metadata !2090, metadata !DIExpression()), !dbg !2113
  %arrayidx53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa83, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2150
  %rt_rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**, !dbg !2150
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx54, align 8, !dbg !2150
  call void @llvm.dbg.value(metadata %struct.rtx_def* %15, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 1, metadata !2096, metadata !DIExpression()), !dbg !2113
  br label %restart.outer, !dbg !2151

sw.bb56:                                          ; preds = %restart
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2152
  %17 = bitcast %union.rtunion_def* %16 to i32**, !dbg !2152
  %18 = load i32*, i32** %17, align 8, !dbg !2152
  %bf.load61 = load i32, i32* %18, align 8, !dbg !2152
  %bf.clear62 = and i32 %bf.load61, 65535, !dbg !2152
  %cmp63 = icmp eq i32 %bf.clear62, 30, !dbg !2152
  %19 = bitcast i32* %18 to %struct.rtx_def*, !dbg !2153
  br i1 %cmp63, label %if.then65, label %if.else, !dbg !2153

if.then65:                                        ; preds = %sw.bb56
  %u70 = getelementptr inbounds i32, i32* %18, i64 2, !dbg !2154
  %arrayidx72 = bitcast i32* %u70 to i64*, !dbg !2154
  %20 = load i64, i64* %arrayidx72, align 8, !dbg !2154
  %add73 = add nsw i64 %c.addr.0, %20, !dbg !2156
  call void @llvm.dbg.value(metadata i64 %add73, metadata !2091, metadata !DIExpression()), !dbg !2113
  %bf.load74 = load i32, i32* %1, align 8, !dbg !2157
  %bf.clear76 = and i32 %bf.load74, 16711680, !dbg !2157
  %cmp77 = icmp eq i32 %bf.clear76, 0, !dbg !2159
  br i1 %cmp77, label %if.end84, label %if.then79, !dbg !2160

if.then79:                                        ; preds = %if.then65
  %bf.lshr81 = lshr i32 %bf.load74, 16, !dbg !2161
  %bf.clear82 = and i32 %bf.lshr81, 255, !dbg !2161
  %call83 = tail call i64 @trunc_int_for_mode(i64 %add73, i32 %bf.clear82) #8, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %call83, metadata !2091, metadata !DIExpression()), !dbg !2113
  br label %if.end84, !dbg !2163

if.end84:                                         ; preds = %if.then65, %if.then79
  %c.addr.1 = phi i64 [ %call83, %if.then79 ], [ %add73, %if.then65 ], !dbg !2164
  call void @llvm.dbg.value(metadata i64 %c.addr.1, metadata !2091, metadata !DIExpression()), !dbg !2113
  %arrayidx87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2165
  %rt_rtx88 = bitcast %union.rtunion_def* %arrayidx87 to %struct.rtx_def**, !dbg !2165
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx88, align 8, !dbg !2165
  call void @llvm.dbg.value(metadata %struct.rtx_def* %21, metadata !2090, metadata !DIExpression()), !dbg !2113
  br label %restart, !dbg !2166

if.else:                                          ; preds = %sw.bb56
  %all_constant.0.ph.lcssa97 = phi i32 [ %all_constant.0.ph, %sw.bb56 ]
  %bf.clear62.lcssa = phi i32 [ %bf.clear62, %sw.bb56 ], !dbg !2152
  %.lcssa92 = phi %struct.rtx_def* [ %19, %sw.bb56 ], !dbg !2153
  %c.addr.0.lcssa91 = phi i64 [ %c.addr.0, %sw.bb56 ]
  %x.addr.0.lcssa85 = phi %struct.rtx_def* [ %x.addr.0, %sw.bb56 ]
  %bf.load.lcssa73 = phi i32 [ %bf.load, %sw.bb56 ], !dbg !2120
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa91, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa85, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa91, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa85, metadata !2090, metadata !DIExpression()), !dbg !2113
  %bf.lshr.le36 = lshr i32 %bf.load.lcssa73, 16, !dbg !2135
  %bf.clear2.le = and i32 %bf.lshr.le36, 255, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa91, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa85, metadata !2090, metadata !DIExpression()), !dbg !2113
  %idxprom = zext i32 %bf.clear62.lcssa to i64, !dbg !2167
  %arrayidx95 = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom, !dbg !2167
  %22 = load i32, i32* %arrayidx95, align 4, !dbg !2167
  %cmp96 = icmp eq i32 %22, 9, !dbg !2167
  br i1 %cmp96, label %if.then98, label %if.else109, !dbg !2168

if.then98:                                        ; preds = %if.else
  %arrayidx101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa85, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2169
  %rt_rtx102 = bitcast %union.rtunion_def* %arrayidx101 to %struct.rtx_def**, !dbg !2169
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx102, align 8, !dbg !2169
  %call107 = tail call %struct.rtx_def* @plus_constant(%struct.rtx_def* %.lcssa92, i64 %c.addr.0.lcssa91) #8, !dbg !2169
  %call108 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 49, i32 %bf.clear2.le, %struct.rtx_def* %23, %struct.rtx_def* %call107) #6, !dbg !2169
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call108, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 0, metadata !2091, metadata !DIExpression()), !dbg !2113
  br label %sw.epilog, !dbg !2171

if.else109:                                       ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.rtx_def** %y, metadata !2093, metadata !DIExpression(DW_OP_deref)), !dbg !2113
  %call110 = call %struct.rtx_def** @find_constant_term_loc(%struct.rtx_def** nonnull %y) #6, !dbg !2172
  %tobool111 = icmp eq %struct.rtx_def** %call110, null, !dbg !2172
  br i1 %tobool111, label %sw.epilog, label %if.then112, !dbg !2173

if.then112:                                       ; preds = %if.else109
  %24 = bitcast %struct.rtx_def** %copy to i8*, !dbg !2174
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #7, !dbg !2174
  %call113 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %x.addr.0.lcssa85) #6, !dbg !2175
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call113, metadata !2105, metadata !DIExpression()), !dbg !2176
  store %struct.rtx_def* %call113, %struct.rtx_def** %copy, align 8, !dbg !2177
  call void @llvm.dbg.value(metadata %struct.rtx_def** %copy, metadata !2105, metadata !DIExpression(DW_OP_deref)), !dbg !2176
  %call114 = call %struct.rtx_def** @find_constant_term_loc(%struct.rtx_def** nonnull %copy) #6, !dbg !2178
  call void @llvm.dbg.value(metadata %struct.rtx_def** %call114, metadata !2110, metadata !DIExpression()), !dbg !2176
  %25 = load %struct.rtx_def*, %struct.rtx_def** %call114, align 8, !dbg !2179
  %call115 = call %struct.rtx_def* @plus_constant(%struct.rtx_def* %25, i64 %c.addr.0.lcssa91) #8, !dbg !2180
  store %struct.rtx_def* %call115, %struct.rtx_def** %call114, align 8, !dbg !2181
  %26 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8, !dbg !2182
  call void @llvm.dbg.value(metadata %struct.rtx_def* %26, metadata !2105, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata %struct.rtx_def* %26, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 0, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #7, !dbg !2183
  br label %sw.epilog, !dbg !2184

sw.default:                                       ; preds = %restart
  %all_constant.0.ph.lcssa = phi i32 [ %all_constant.0.ph, %restart ]
  %c.addr.0.lcssa = phi i64 [ %c.addr.0, %restart ]
  %x.addr.0.lcssa = phi %struct.rtx_def* [ %x.addr.0, %restart ]
  %bf.load.lcssa = phi i32 [ %bf.load, %restart ], !dbg !2120
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa, metadata !2090, metadata !DIExpression()), !dbg !2113
  %bf.lshr.le = lshr i32 %bf.load.lcssa, 16, !dbg !2135
  %bf.clear2.le30 = and i32 %bf.lshr.le, 255, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa, metadata !2090, metadata !DIExpression()), !dbg !2113
  br label %sw.epilog, !dbg !2185

sw.epilog.loopexit:                               ; preds = %restart, %restart
  %c.addr.0.lcssa90 = phi i64 [ %c.addr.0, %restart ], [ %c.addr.0, %restart ]
  %x.addr.0.lcssa84 = phi %struct.rtx_def* [ %x.addr.0, %restart ], [ %x.addr.0, %restart ]
  %bf.load.lcssa72 = phi i32 [ %bf.load, %restart ], [ %bf.load, %restart ], !dbg !2120
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa90, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa90, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa84, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa84, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa90, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa90, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa84, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa84, metadata !2090, metadata !DIExpression()), !dbg !2113
  %bf.lshr.le34 = lshr i32 %bf.load.lcssa72, 16, !dbg !2135
  %bf.clear2.le26 = and i32 %bf.lshr.le34, 255, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa90, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %c.addr.0.lcssa90, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa84, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa84, metadata !2090, metadata !DIExpression()), !dbg !2113
  br label %sw.epilog, !dbg !2186

sw.epilog:                                        ; preds = %sw.epilog.loopexit, %if.then27, %land.lhs.true, %if.else109, %if.then112, %if.then98, %sw.bb13, %sw.default
  %bf.clear27 = phi i32 [ %bf.clear2.le30, %sw.default ], [ %bf.clear2.le28, %if.then27 ], [ %bf.clear2.le28, %land.lhs.true ], [ %bf.clear2.le28, %sw.bb13 ], [ %bf.clear2.le, %if.then98 ], [ %bf.clear2.le, %if.then112 ], [ %bf.clear2.le, %if.else109 ], [ %bf.clear2.le26, %sw.epilog.loopexit ]
  %all_constant.1 = phi i32 [ %all_constant.0.ph.lcssa, %sw.default ], [ %all_constant.0.ph.lcssa95, %if.then27 ], [ %all_constant.0.ph.lcssa95, %land.lhs.true ], [ %all_constant.0.ph.lcssa95, %sw.bb13 ], [ %all_constant.0.ph.lcssa97, %if.then98 ], [ %all_constant.0.ph.lcssa97, %if.then112 ], [ %all_constant.0.ph.lcssa97, %if.else109 ], [ 1, %sw.epilog.loopexit ], !dbg !2113
  %c.addr.4 = phi i64 [ %c.addr.0.lcssa, %sw.default ], [ %c.addr.0.lcssa88, %if.then27 ], [ %c.addr.0.lcssa88, %land.lhs.true ], [ %c.addr.0.lcssa88, %sw.bb13 ], [ 0, %if.then98 ], [ 0, %if.then112 ], [ %c.addr.0.lcssa91, %if.else109 ], [ %c.addr.0.lcssa90, %sw.epilog.loopexit ]
  %x.addr.3 = phi %struct.rtx_def* [ %x.addr.0.lcssa, %sw.default ], [ %x.addr.0.lcssa82, %if.then27 ], [ %x.addr.0.lcssa82, %land.lhs.true ], [ %x.addr.0.lcssa82, %sw.bb13 ], [ %call108, %if.then98 ], [ %26, %if.then112 ], [ %x.addr.0.lcssa85, %if.else109 ], [ %x.addr.0.lcssa84, %sw.epilog.loopexit ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.3, metadata !2090, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %c.addr.4, metadata !2091, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 %all_constant.1, metadata !2096, metadata !DIExpression()), !dbg !2113
  %cmp119 = icmp eq i64 %c.addr.4, 0, !dbg !2186
  br i1 %cmp119, label %if.end124, label %if.then121, !dbg !2188

if.then121:                                       ; preds = %sw.epilog
  %call122 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %c.addr.4) #6, !dbg !2189
  %call123 = call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 49, i32 %bf.clear27, %struct.rtx_def* %x.addr.3, %struct.rtx_def* %call122) #6, !dbg !2189
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call123, metadata !2090, metadata !DIExpression()), !dbg !2113
  br label %if.end124, !dbg !2190

if.end124:                                        ; preds = %sw.epilog, %if.then121
  %x.addr.4 = phi %struct.rtx_def* [ %call123, %if.then121 ], [ %x.addr.3, %sw.epilog ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.4, metadata !2090, metadata !DIExpression()), !dbg !2113
  %27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.4, i64 0, i32 0, !dbg !2191
  %bf.load125 = load i32, i32* %27, align 8, !dbg !2191
  %bf.clear126 = and i32 %bf.load125, 65535, !dbg !2191
  %cmp127 = icmp eq i32 %bf.clear126, 45, !dbg !2193
  br i1 %cmp127, label %cleanup, label %lor.lhs.false, !dbg !2194

lor.lhs.false:                                    ; preds = %if.end124
  %cmp131 = icmp ne i32 %bf.clear126, 44, !dbg !2195
  %tobool135 = icmp ne i32 %all_constant.1, 0, !dbg !2196
  %or.cond = and i1 %cmp131, %tobool135, !dbg !2198
  br i1 %or.cond, label %if.then136, label %cleanup, !dbg !2198

if.then136:                                       ; preds = %lor.lhs.false
  %call137 = call %struct.rtx_def* @gen_rtx_fmt_e_stat(i32 35, i32 %bf.clear27, %struct.rtx_def* %x.addr.4) #6, !dbg !2199
  br label %cleanup, !dbg !2200

cleanup:                                          ; preds = %if.then27, %lor.lhs.false, %if.end124, %entry, %if.then136, %sw.bb3, %sw.bb
  %retval.0 = phi %struct.rtx_def* [ %call137, %if.then136 ], [ %call12, %sw.bb3 ], [ %call, %sw.bb ], [ %x, %entry ], [ %call37, %if.then27 ], [ %x.addr.4, %lor.lhs.false ], [ %x.addr.4, %if.end124 ], !dbg !2113
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2201
  ret %struct.rtx_def* %retval.0, !dbg !2201
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

declare dso_local %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) local_unnamed_addr #1

declare dso_local i32 @add_double_with_sign(i64, i64, i64, i64, i64*, i64*, i8 zeroext) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @immed_double_const(i64, i64, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @force_const_mem(i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @get_pool_constant(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @memory_address_addr_space_p(i32, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32, i32, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def** @find_constant_term_loc(%struct.rtx_def**) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @copy_rtx(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_rtx_fmt_e_stat(i32, i32, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @eliminate_constant_term(%struct.rtx_def* %x, %struct.rtx_def** %constptr) local_unnamed_addr #4 !dbg !2202 {
entry:
  %tem = alloca %struct.rtx_def*, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2206, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata %struct.rtx_def** %constptr, metadata !2207, metadata !DIExpression()), !dbg !2211
  %0 = bitcast %struct.rtx_def** %tem to i8*, !dbg !2212
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2212
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !2213
  %bf.load = load i32, i32* %1, align 8, !dbg !2213
  %bf.clear = and i32 %bf.load, 65535, !dbg !2213
  %cmp = icmp eq i32 %bf.clear, 49, !dbg !2215
  br i1 %cmp, label %if.end, label %cleanup, !dbg !2216

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2217
  %3 = bitcast %union.rtunion_def* %2 to i32**, !dbg !2217
  %4 = load i32*, i32** %3, align 8, !dbg !2217
  %bf.load1 = load i32, i32* %4, align 8, !dbg !2217
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !2217
  %cmp3 = icmp eq i32 %bf.clear2, 30, !dbg !2217
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.end21_crit_edge, !dbg !2219

if.end.if.end21_crit_edge:                        ; preds = %if.end
  %.pre = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !2220
  br label %if.end21, !dbg !2219

land.lhs.true:                                    ; preds = %if.end
  %5 = bitcast i32* %4 to %struct.rtx_def*, !dbg !2219
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2221
  %bf.clear5 = and i32 %bf.lshr, 255, !dbg !2221
  %6 = load %struct.rtx_def*, %struct.rtx_def** %constptr, align 8, !dbg !2222
  %rt_rtx9 = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !2223
  %call = tail call %struct.rtx_def* @simplify_binary_operation(i32 49, i32 %bf.clear5, %struct.rtx_def* %6, %struct.rtx_def* %5) #6, !dbg !2224
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2210, metadata !DIExpression()), !dbg !2211
  store %struct.rtx_def* %call, %struct.rtx_def** %tem, align 8, !dbg !2225
  %cmp10 = icmp eq %struct.rtx_def* %call, null, !dbg !2226
  %7 = ptrtoint %struct.rtx_def* %call to i64, !dbg !2227
  br i1 %cmp10, label %if.end21, label %land.lhs.true11, !dbg !2227

land.lhs.true11:                                  ; preds = %land.lhs.true
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !2227
  %bf.load12 = load i32, i32* %8, align 8, !dbg !2228
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !2228
  %cmp14 = icmp eq i32 %bf.clear13, 30, !dbg !2228
  br i1 %cmp14, label %if.then15, label %if.end21, !dbg !2229

if.then15:                                        ; preds = %land.lhs.true11
  %9 = bitcast %struct.rtx_def** %constptr to i64*, !dbg !2230
  store i64 %7, i64* %9, align 8, !dbg !2230
  %arrayidx18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2232
  %rt_rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**, !dbg !2232
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx19, align 8, !dbg !2232
  %call20 = tail call %struct.rtx_def* @eliminate_constant_term(%struct.rtx_def* %10, %struct.rtx_def** %constptr) #8, !dbg !2233
  br label %cleanup, !dbg !2234

if.end21:                                         ; preds = %if.end.if.end21_crit_edge, %land.lhs.true, %land.lhs.true11
  %rt_rtx30.pre-phi = phi %struct.rtx_def** [ %.pre, %if.end.if.end21_crit_edge ], [ %rt_rtx9, %land.lhs.true ], [ %rt_rtx9, %land.lhs.true11 ], !dbg !2220
  %11 = load i64, i64* bitcast (%struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64) to i64*), align 16, !dbg !2235
  %12 = bitcast %struct.rtx_def** %tem to i64*, !dbg !2236
  store i64 %11, i64* %12, align 8, !dbg !2236
  %arrayidx24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2237
  %rt_rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**, !dbg !2237
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx25, align 8, !dbg !2237
  call void @llvm.dbg.value(metadata %struct.rtx_def** %tem, metadata !2210, metadata !DIExpression(DW_OP_deref)), !dbg !2211
  %call26 = call %struct.rtx_def* @eliminate_constant_term(%struct.rtx_def* %13, %struct.rtx_def** nonnull %tem) #8, !dbg !2238
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call26, metadata !2208, metadata !DIExpression()), !dbg !2211
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx30.pre-phi, align 8, !dbg !2220
  call void @llvm.dbg.value(metadata %struct.rtx_def** %tem, metadata !2210, metadata !DIExpression(DW_OP_deref)), !dbg !2211
  %call31 = call %struct.rtx_def* @eliminate_constant_term(%struct.rtx_def* %14, %struct.rtx_def** nonnull %tem) #8, !dbg !2239
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call31, metadata !2209, metadata !DIExpression()), !dbg !2211
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx30.pre-phi, align 8, !dbg !2240
  %cmp36 = icmp eq %struct.rtx_def* %call31, %15, !dbg !2242
  br i1 %cmp36, label %lor.lhs.false, label %land.lhs.true42, !dbg !2243

lor.lhs.false:                                    ; preds = %if.end21
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx25, align 8, !dbg !2244
  %cmp41 = icmp eq %struct.rtx_def* %call26, %16, !dbg !2245
  br i1 %cmp41, label %cleanup, label %land.lhs.true42, !dbg !2246

land.lhs.true42:                                  ; preds = %lor.lhs.false, %if.end21
  %bf.load43 = load i32, i32* %1, align 8, !dbg !2247
  %bf.lshr44 = lshr i32 %bf.load43, 16, !dbg !2247
  %bf.clear45 = and i32 %bf.lshr44, 255, !dbg !2247
  %17 = load %struct.rtx_def*, %struct.rtx_def** %constptr, align 8, !dbg !2248
  %18 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8, !dbg !2249
  call void @llvm.dbg.value(metadata %struct.rtx_def* %18, metadata !2210, metadata !DIExpression()), !dbg !2211
  %call46 = call %struct.rtx_def* @simplify_binary_operation(i32 49, i32 %bf.clear45, %struct.rtx_def* %17, %struct.rtx_def* %18) #6, !dbg !2250
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call46, metadata !2210, metadata !DIExpression()), !dbg !2211
  store %struct.rtx_def* %call46, %struct.rtx_def** %tem, align 8, !dbg !2251
  %cmp47 = icmp eq %struct.rtx_def* %call46, null, !dbg !2252
  %19 = ptrtoint %struct.rtx_def* %call46 to i64, !dbg !2253
  br i1 %cmp47, label %cleanup, label %land.lhs.true48, !dbg !2253

land.lhs.true48:                                  ; preds = %land.lhs.true42
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call46, i64 0, i32 0, !dbg !2253
  %bf.load49 = load i32, i32* %20, align 8, !dbg !2254
  %bf.clear50 = and i32 %bf.load49, 65535, !dbg !2254
  %cmp51 = icmp eq i32 %bf.clear50, 30, !dbg !2254
  br i1 %cmp51, label %if.then52, label %cleanup, !dbg !2255

if.then52:                                        ; preds = %land.lhs.true48
  %21 = bitcast %struct.rtx_def** %constptr to i64*, !dbg !2256
  store i64 %19, i64* %21, align 8, !dbg !2256
  %bf.load53 = load i32, i32* %1, align 8, !dbg !2258
  %bf.lshr54 = lshr i32 %bf.load53, 16, !dbg !2258
  %bf.clear55 = and i32 %bf.lshr54, 255, !dbg !2258
  %call56 = call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 49, i32 %bf.clear55, %struct.rtx_def* %call26, %struct.rtx_def* %call31) #6, !dbg !2258
  br label %cleanup, !dbg !2259

cleanup:                                          ; preds = %land.lhs.true42, %lor.lhs.false, %entry, %land.lhs.true48, %if.then52, %if.then15
  %retval.0 = phi %struct.rtx_def* [ %call20, %if.then15 ], [ %call56, %if.then52 ], [ %x, %entry ], [ %x, %land.lhs.true48 ], [ %x, %land.lhs.true42 ], [ %x, %lor.lhs.false ], !dbg !2211
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2260
  ret %struct.rtx_def* %retval.0, !dbg !2260
}

declare dso_local %struct.rtx_def* @simplify_binary_operation(i32, i32, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @expr_size(%union.tree_node* %exp) local_unnamed_addr #4 !dbg !2261 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %exp, metadata !2265, metadata !DIExpression()), !dbg !2267
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %exp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2268
  %bf.load = load i64, i64* %0, align 8, !dbg !2268
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2270
  %cmp = icmp eq i64 %bf.cast1, 150, !dbg !2270
  br i1 %cmp, label %if.then, label %if.else, !dbg !2271

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %exp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2272
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2272
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2272
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2266, metadata !DIExpression()), !dbg !2267
  br label %if.end, !dbg !2273

if.else:                                          ; preds = %entry
  %call = tail call %union.tree_node* @tree_expr_size(%union.tree_node* %exp) #6, !dbg !2274
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2266, metadata !DIExpression()), !dbg !2267
  %cond = icmp eq %union.tree_node* %call, null, !dbg !2276
  br i1 %cond, label %cond.true, label %lor.lhs.false, !dbg !2276

cond.true:                                        ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 250, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2276
  br label %cond.end11, !dbg !2277

lor.lhs.false:                                    ; preds = %if.else
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2277
  %bf.load4 = load i64, i64* %2, align 8, !dbg !2277
  %bf.cast62 = and i64 %bf.load4, 131072, !dbg !2277
  %tobool7 = icmp eq i64 %bf.cast62, 0, !dbg !2277
  br i1 %tobool7, label %cond.false9, label %cond.end11, !dbg !2277

cond.false9:                                      ; preds = %lor.lhs.false
  %call10 = tail call %union.tree_node* @substitute_placeholder_in_expr(%union.tree_node* nonnull %call, %union.tree_node* %exp) #6, !dbg !2277
  br label %cond.end11, !dbg !2277

cond.end11:                                       ; preds = %lor.lhs.false, %cond.true, %cond.false9
  %cond12 = phi %union.tree_node* [ %call10, %cond.false9 ], [ %call, %lor.lhs.false ], [ null, %cond.true ], !dbg !2277
  %cmp13 = icmp eq %union.tree_node* %call, %cond12, !dbg !2277
  br i1 %cmp13, label %if.end, label %cond.true14, !dbg !2277

cond.true14:                                      ; preds = %cond.end11
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 251, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2277
  br label %if.end, !dbg !2277

if.end:                                           ; preds = %cond.true14, %cond.end11, %if.then
  %size.0 = phi %union.tree_node* [ %1, %if.then ], [ %call, %cond.end11 ], [ %call, %cond.true14 ], !dbg !2278
  call void @llvm.dbg.value(metadata %union.tree_node* %size.0, metadata !2266, metadata !DIExpression()), !dbg !2267
  %3 = load i64*, i64** bitcast ([4 x %union.tree_node*]* @sizetype_tab to i64**), align 16, !dbg !2279
  %bf.load19 = load i64, i64* %3, align 8, !dbg !2279
  %bf.cast213 = and i64 %bf.load19, 65535, !dbg !2279
  %cmp22 = icmp eq i64 %bf.cast213, 14, !dbg !2279
  br i1 %cmp22, label %cond.true23, label %cond.false25, !dbg !2279

cond.true23:                                      ; preds = %if.end
  %.cast = bitcast i64* %3 to %union.tree_node*, !dbg !2279
  %call24 = tail call i32 @vector_type_mode(%union.tree_node* %.cast) #6, !dbg !2279
  br label %cond.end29, !dbg !2279

cond.false25:                                     ; preds = %if.end
  %type = bitcast i64* %3 to %struct.tree_type*, !dbg !2279
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i64 0, i32 6, !dbg !2279
  %bf.load26 = load i32, i32* %mode, align 4, !dbg !2279
  %bf.lshr27 = lshr i32 %bf.load26, 16, !dbg !2279
  %bf.clear28 = and i32 %bf.lshr27, 255, !dbg !2279
  br label %cond.end29, !dbg !2279

cond.end29:                                       ; preds = %cond.false25, %cond.true23
  %cond30 = phi i32 [ %call24, %cond.true23 ], [ %bf.clear28, %cond.false25 ], !dbg !2279
  %call31 = tail call fastcc %struct.rtx_def* @expand_expr(%union.tree_node* %size.0, %struct.rtx_def* null, i32 %cond30, i32 0) #8, !dbg !2280
  ret %struct.rtx_def* %call31, !dbg !2281
}

declare dso_local %union.tree_node* @tree_expr_size(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @substitute_placeholder_in_expr(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.rtx_def* @expand_expr(%union.tree_node* %exp, %struct.rtx_def* %target, i32 %mode, i32 %modifier) unnamed_addr #0 !dbg !2282 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %exp, metadata !2286, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !2287, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2288, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 %modifier, metadata !2289, metadata !DIExpression()), !dbg !2290
  %call = tail call %struct.rtx_def* @expand_expr_real(%union.tree_node* %exp, %struct.rtx_def* null, i32 %mode, i32 %modifier, %struct.rtx_def** null) #6, !dbg !2291
  ret %struct.rtx_def* %call, !dbg !2292
}

declare dso_local i32 @vector_type_mode(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @int_expr_size(%union.tree_node* %exp) local_unnamed_addr #4 !dbg !2293 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %exp, metadata !2297, metadata !DIExpression()), !dbg !2299
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %exp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2300
  %bf.load = load i64, i64* %0, align 8, !dbg !2300
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2302
  %cmp = icmp eq i64 %bf.cast1, 150, !dbg !2302
  br i1 %cmp, label %if.then, label %if.else, !dbg !2303

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %exp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2304
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2304
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2304
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2298, metadata !DIExpression()), !dbg !2299
  br label %if.end, !dbg !2305

if.else:                                          ; preds = %entry
  %call = tail call %union.tree_node* @tree_expr_size(%union.tree_node* %exp) #6, !dbg !2306
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2298, metadata !DIExpression()), !dbg !2299
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !2308
  br i1 %tobool, label %cond.true, label %if.end, !dbg !2308

cond.true:                                        ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 270, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2308
  br label %if.end, !dbg !2308

if.end:                                           ; preds = %if.else, %cond.true, %if.then
  %size.0 = phi %union.tree_node* [ %1, %if.then ], [ %call, %if.else ], [ null, %cond.true ], !dbg !2309
  call void @llvm.dbg.value(metadata %union.tree_node* %size.0, metadata !2298, metadata !DIExpression()), !dbg !2299
  %cmp2 = icmp eq %union.tree_node* %size.0, null, !dbg !2310
  br i1 %cmp2, label %cleanup, label %lor.lhs.false, !dbg !2312

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call i32 @host_integerp(%union.tree_node* nonnull %size.0, i32 0) #6, !dbg !2313
  %tobool4 = icmp eq i32 %call3, 0, !dbg !2313
  br i1 %tobool4, label %cleanup, label %if.end6, !dbg !2314

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = tail call i64 @tree_low_cst(%union.tree_node* nonnull %size.0, i32 0) #6, !dbg !2315
  br label %cleanup, !dbg !2316

cleanup:                                          ; preds = %lor.lhs.false, %if.end, %if.end6
  %retval.0 = phi i64 [ %call7, %if.end6 ], [ -1, %lor.lhs.false ], [ -1, %if.end ], !dbg !2299
  ret i64 %retval.0, !dbg !2317
}

declare dso_local i32 @host_integerp(%union.tree_node*, i32) local_unnamed_addr #1

declare dso_local i64 @tree_low_cst(%union.tree_node*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @convert_memory_address_addr_space(i32 %to_mode, %struct.rtx_def* %x, i8 zeroext %as) local_unnamed_addr #4 !dbg !2318 {
entry:
  call void @llvm.dbg.value(metadata i32 %to_mode, metadata !2323, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2324, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %as, metadata !2325, metadata !DIExpression()), !dbg !2326
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !2327
  %bf.load = load i32, i32* %0, align 8, !dbg !2327
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2327
  %bf.clear = and i32 %bf.lshr, 255, !dbg !2327
  %cmp = icmp eq i32 %bf.clear, %to_mode, !dbg !2327
  br i1 %cmp, label %cond.end, label %lor.lhs.false, !dbg !2327

lor.lhs.false:                                    ; preds = %entry
  %bf.clear3 = and i32 %bf.load, 16711680, !dbg !2327
  %cmp4 = icmp eq i32 %bf.clear3, 0, !dbg !2327
  br i1 %cmp4, label %cond.end, label %cond.true, !dbg !2327

cond.true:                                        ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 326, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2327
  br label %cond.end, !dbg !2327

cond.end:                                         ; preds = %entry, %lor.lhs.false, %cond.true
  ret %struct.rtx_def* %x, !dbg !2328
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @memory_address_addr_space(i32 %mode, %struct.rtx_def* %x, i8 zeroext %as) local_unnamed_addr #4 !dbg !2329 {
entry:
  %constant_term = alloca %struct.rtx_def*, align 8
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2331, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2332, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 %as, metadata !2333, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2334, metadata !DIExpression()), !dbg !2345
  %0 = load i32 (i8)*, i32 (i8)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 57, i32 1), align 8, !dbg !2346
  %call = tail call i32 %0(i8 zeroext %as) #6, !dbg !2347
  call void @llvm.dbg.value(metadata i32 %call, metadata !2335, metadata !DIExpression()), !dbg !2345
  %call1 = tail call %struct.rtx_def* @convert_memory_address_addr_space(i32 %call, %struct.rtx_def* %x, i8 zeroext %as) #8, !dbg !2348
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call1, metadata !2332, metadata !DIExpression()), !dbg !2345
  %1 = load i32, i32* @cse_not_expected, align 4, !dbg !2349
  %tobool = icmp eq i32 %1, 0, !dbg !2349
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !2350

land.lhs.true:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call1, i64 0, i32 0, !dbg !2351
  %bf.load = load i32, i32* %2, align 8, !dbg !2351
  %bf.clear = and i32 %bf.load, 65535, !dbg !2351
  %idxprom = zext i32 %bf.clear to i64, !dbg !2351
  %arrayidx = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom, !dbg !2351
  %3 = load i32, i32* %arrayidx, align 4, !dbg !2351
  %cmp = icmp eq i32 %3, 9, !dbg !2351
  br i1 %cmp, label %land.lhs.true2, label %if.else, !dbg !2352

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call3 = tail call zeroext i8 @constant_address_p(%struct.rtx_def* %call1) #6, !dbg !2353
  %tobool4 = icmp eq i8 %call3, 0, !dbg !2353
  br i1 %tobool4, label %land.lhs.true2.if.else_crit_edge, label %if.then, !dbg !2354

land.lhs.true2.if.else_crit_edge:                 ; preds = %land.lhs.true2
  %.pre = load i32, i32* @cse_not_expected, align 4, !dbg !2355
  br label %if.else, !dbg !2354

if.then:                                          ; preds = %land.lhs.true2
  %call5 = tail call %struct.rtx_def* @force_reg(i32 %call, %struct.rtx_def* %call1) #8, !dbg !2357
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call5, metadata !2332, metadata !DIExpression()), !dbg !2345
  br label %done, !dbg !2358

if.else:                                          ; preds = %land.lhs.true2.if.else_crit_edge, %entry, %land.lhs.true
  %4 = phi i32 [ %.pre, %land.lhs.true2.if.else_crit_edge ], [ %1, %entry ], [ 0, %land.lhs.true ], !dbg !2355
  %tobool6 = icmp eq i32 %4, 0, !dbg !2355
  br i1 %tobool6, label %land.lhs.true7, label %if.end, !dbg !2359

land.lhs.true7:                                   ; preds = %if.else
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call1, i64 0, i32 0, !dbg !2360
  %bf.load8 = load i32, i32* %5, align 8, !dbg !2360
  %bf.clear9 = and i32 %bf.load8, 65535, !dbg !2360
  %cmp10 = icmp eq i32 %bf.clear9, 37, !dbg !2360
  br i1 %cmp10, label %if.end, label %if.then12, !dbg !2361

if.then12:                                        ; preds = %land.lhs.true7
  %call13 = tail call fastcc %struct.rtx_def* @break_out_memory_refs(%struct.rtx_def* %call1) #8, !dbg !2362
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call13, metadata !2332, metadata !DIExpression()), !dbg !2345
  br label %if.end, !dbg !2363

if.end:                                           ; preds = %if.else, %if.then12, %land.lhs.true7
  %x.addr.0 = phi %struct.rtx_def* [ %call1, %if.else ], [ %call1, %land.lhs.true7 ], [ %call13, %if.then12 ], !dbg !2345
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0, metadata !2332, metadata !DIExpression()), !dbg !2345
  %call14 = tail call i32 @memory_address_addr_space_p(i32 %mode, %struct.rtx_def* %x.addr.0, i8 zeroext %as) #6, !dbg !2364
  %tobool15 = icmp eq i32 %call14, 0, !dbg !2364
  br i1 %tobool15, label %if.end17, label %done, !dbg !2366

if.end17:                                         ; preds = %if.end
  %call18 = tail call i32 @memory_address_addr_space_p(i32 %mode, %struct.rtx_def* %x, i8 zeroext %as) #6, !dbg !2367
  %tobool19 = icmp eq i32 %call18, 0, !dbg !2367
  br i1 %tobool19, label %if.end21, label %done, !dbg !2369

if.end21:                                         ; preds = %if.end17
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0, metadata !2336, metadata !DIExpression()), !dbg !2370
  %6 = load %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32, i8)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32, i8)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 57, i32 4), align 8, !dbg !2371
  %call22 = tail call %struct.rtx_def* %6(%struct.rtx_def* %x.addr.0, %struct.rtx_def* %x, i32 %mode, i8 zeroext %as) #6, !dbg !2372
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call22, metadata !2332, metadata !DIExpression()), !dbg !2345
  %cmp23 = icmp eq %struct.rtx_def* %x.addr.0, %call22, !dbg !2373
  br i1 %cmp23, label %if.end29, label %land.lhs.true25, !dbg !2375

land.lhs.true25:                                  ; preds = %if.end21
  %call26 = tail call i32 @memory_address_addr_space_p(i32 %mode, %struct.rtx_def* %call22, i8 zeroext %as) #6, !dbg !2376
  %tobool27 = icmp eq i32 %call26, 0, !dbg !2376
  br i1 %tobool27, label %if.end29, label %cleanup, !dbg !2377

if.end29:                                         ; preds = %land.lhs.true25, %if.end21
  br label %cleanup, !dbg !2378

cleanup:                                          ; preds = %land.lhs.true25, %if.end29
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end29 ], [ false, %land.lhs.true25 ]
  br i1 %cleanup.dest.slot.0, label %cleanup.cont, label %done

cleanup.cont:                                     ; preds = %cleanup
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call22, i64 0, i32 0, !dbg !2379
  %bf.load30 = load i32, i32* %7, align 8, !dbg !2379
  %bf.clear31 = and i32 %bf.load30, 65535, !dbg !2379
  %cmp32 = icmp eq i32 %bf.clear31, 49, !dbg !2380
  br i1 %cmp32, label %if.then34, label %if.else54, !dbg !2381

if.then34:                                        ; preds = %cleanup.cont
  %8 = bitcast %struct.rtx_def** %constant_term to i8*, !dbg !2382
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !2382
  %9 = load i64, i64* bitcast (%struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64) to i64*), align 16, !dbg !2383
  %10 = bitcast %struct.rtx_def** %constant_term to i64*, !dbg !2384
  store i64 %9, i64* %10, align 8, !dbg !2384
  call void @llvm.dbg.value(metadata %struct.rtx_def** %constant_term, metadata !2340, metadata !DIExpression(DW_OP_deref)), !dbg !2385
  %call35 = call %struct.rtx_def* @eliminate_constant_term(%struct.rtx_def* %call22, %struct.rtx_def** nonnull %constant_term) #8, !dbg !2386
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call35, metadata !2343, metadata !DIExpression()), !dbg !2385
  %11 = load %struct.rtx_def*, %struct.rtx_def** %constant_term, align 8, !dbg !2387
  call void @llvm.dbg.value(metadata %struct.rtx_def* %11, metadata !2340, metadata !DIExpression()), !dbg !2385
  %12 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !2389
  %cmp36 = icmp eq %struct.rtx_def* %11, %12, !dbg !2390
  br i1 %cmp36, label %if.then40, label %lor.lhs.false, !dbg !2391

lor.lhs.false:                                    ; preds = %if.then34
  %call38 = call i32 @memory_address_addr_space_p(i32 %mode, %struct.rtx_def* %call35, i8 zeroext %as) #6, !dbg !2392
  %tobool39 = icmp eq i32 %call38, 0, !dbg !2392
  br i1 %tobool39, label %if.then40, label %if.else42, !dbg !2393

if.then40:                                        ; preds = %lor.lhs.false, %if.then34
  %call41 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call22, %struct.rtx_def* null) #6, !dbg !2394
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call41, metadata !2332, metadata !DIExpression()), !dbg !2345
  br label %if.end53, !dbg !2395

if.else42:                                        ; preds = %lor.lhs.false
  %bf.load43 = load i32, i32* %7, align 8, !dbg !2396
  %bf.lshr = lshr i32 %bf.load43, 16, !dbg !2396
  %bf.clear44 = and i32 %bf.lshr, 255, !dbg !2396
  %call45 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %call35) #8, !dbg !2396
  %13 = load %struct.rtx_def*, %struct.rtx_def** %constant_term, align 8, !dbg !2396
  call void @llvm.dbg.value(metadata %struct.rtx_def* %13, metadata !2340, metadata !DIExpression()), !dbg !2385
  %call46 = call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 49, i32 %bf.clear44, %struct.rtx_def* %call45, %struct.rtx_def* %13) #6, !dbg !2396
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call46, metadata !2343, metadata !DIExpression()), !dbg !2385
  %call47 = call i32 @memory_address_addr_space_p(i32 %mode, %struct.rtx_def* %call46, i8 zeroext %as) #6, !dbg !2398
  %tobool48 = icmp eq i32 %call47, 0, !dbg !2398
  br i1 %tobool48, label %if.then49, label %if.end53, !dbg !2400

if.then49:                                        ; preds = %if.else42
  %call50 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call22, %struct.rtx_def* null) #6, !dbg !2401
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call50, metadata !2332, metadata !DIExpression()), !dbg !2345
  br label %if.end53, !dbg !2402

if.end53:                                         ; preds = %if.else42, %if.then49, %if.then40
  %x.addr.2 = phi %struct.rtx_def* [ %call41, %if.then40 ], [ %call50, %if.then49 ], [ %call46, %if.else42 ], !dbg !2403
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.2, metadata !2332, metadata !DIExpression()), !dbg !2345
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !2404
  br label %done, !dbg !2405

if.else54:                                        ; preds = %cleanup.cont
  %cmp57 = icmp eq i32 %bf.clear31, 52, !dbg !2406
  br i1 %cmp57, label %if.then64, label %lor.lhs.false59, !dbg !2408

lor.lhs.false59:                                  ; preds = %if.else54
  %cmp62 = icmp eq i32 %bf.clear31, 50, !dbg !2409
  br i1 %cmp62, label %if.then64, label %if.else66, !dbg !2410

if.then64:                                        ; preds = %lor.lhs.false59, %if.else54
  %call65 = tail call %struct.rtx_def* @force_operand(%struct.rtx_def* %call22, %struct.rtx_def* null) #6, !dbg !2411
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call65, metadata !2332, metadata !DIExpression()), !dbg !2345
  br label %done, !dbg !2412

if.else66:                                        ; preds = %lor.lhs.false59
  %cmp69 = icmp eq i32 %bf.clear31, 37, !dbg !2413
  br i1 %cmp69, label %if.then71, label %if.else73, !dbg !2415

if.then71:                                        ; preds = %if.else66
  %call72 = tail call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %call22) #8, !dbg !2416
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call72, metadata !2332, metadata !DIExpression()), !dbg !2345
  br label %done, !dbg !2417

if.else73:                                        ; preds = %if.else66
  %call74 = tail call %struct.rtx_def* @force_reg(i32 %call, %struct.rtx_def* %call22) #8, !dbg !2418
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call74, metadata !2332, metadata !DIExpression()), !dbg !2345
  br label %done

done:                                             ; preds = %if.end17, %if.end, %if.then, %if.then64, %if.else73, %if.then71, %if.end53, %cleanup
  %x.addr.7 = phi %struct.rtx_def* [ %call22, %cleanup ], [ %x.addr.0, %if.end ], [ %x, %if.end17 ], [ %call5, %if.then ], [ %x.addr.2, %if.end53 ], [ %call65, %if.then64 ], [ %call72, %if.then71 ], [ %call74, %if.else73 ], !dbg !2345
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.7, metadata !2332, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.label(metadata !2344), !dbg !2419
  %call79 = call i32 @memory_address_addr_space_p(i32 %mode, %struct.rtx_def* %x.addr.7, i8 zeroext %as) #6, !dbg !2420
  %tobool80 = icmp eq i32 %call79, 0, !dbg !2420
  br i1 %tobool80, label %cond.true, label %cond.end, !dbg !2420

cond.true:                                        ; preds = %done
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 504, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2420
  br label %cond.end, !dbg !2420

cond.end:                                         ; preds = %done, %cond.true
  %cmp81 = icmp eq %struct.rtx_def* %x.addr.7, %x, !dbg !2421
  br i1 %cmp81, label %cleanup118, label %if.else84, !dbg !2423

if.else84:                                        ; preds = %cond.end
  %14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.7, i64 0, i32 0, !dbg !2424
  %bf.load85 = load i32, i32* %14, align 8, !dbg !2424
  %bf.clear86 = and i32 %bf.load85, 65535, !dbg !2424
  %cmp87 = icmp eq i32 %bf.clear86, 37, !dbg !2424
  br i1 %cmp87, label %if.then89, label %if.else90, !dbg !2426

if.then89:                                        ; preds = %if.else84
  call void @mark_reg_pointer(%struct.rtx_def* %x.addr.7, i32 8) #6, !dbg !2427
  br label %if.end117, !dbg !2427

if.else90:                                        ; preds = %if.else84
  %cmp93 = icmp eq i32 %bf.clear86, 49, !dbg !2428
  br i1 %cmp93, label %land.lhs.true95, label %if.end117, !dbg !2430

land.lhs.true95:                                  ; preds = %if.else90
  %arrayidx96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.7, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2431
  %15 = bitcast %union.rtunion_def* %arrayidx96 to i32**, !dbg !2431
  %16 = load i32*, i32** %15, align 8, !dbg !2431
  %bf.load97 = load i32, i32* %16, align 8, !dbg !2431
  %bf.clear98 = and i32 %bf.load97, 65535, !dbg !2431
  %cmp99 = icmp eq i32 %bf.clear98, 37, !dbg !2431
  %17 = bitcast i32* %16 to %struct.rtx_def*, !dbg !2432
  br i1 %cmp99, label %land.lhs.true101, label %if.end117, !dbg !2432

land.lhs.true101:                                 ; preds = %land.lhs.true95
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.7, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2433
  %19 = bitcast %union.rtunion_def* %18 to i32**, !dbg !2433
  %20 = load i32*, i32** %19, align 8, !dbg !2433
  %bf.load106 = load i32, i32* %20, align 8, !dbg !2433
  %bf.clear107 = and i32 %bf.load106, 65535, !dbg !2433
  %cmp108 = icmp eq i32 %bf.clear107, 30, !dbg !2433
  br i1 %cmp108, label %if.then110, label %if.end117, !dbg !2434

if.then110:                                       ; preds = %land.lhs.true101
  call void @mark_reg_pointer(%struct.rtx_def* %17, i32 8) #6, !dbg !2435
  br label %if.end117, !dbg !2435

if.end117:                                        ; preds = %if.then89, %if.then110, %land.lhs.true101, %land.lhs.true95, %if.else90
  call void @update_temp_slot_address(%struct.rtx_def* %x, %struct.rtx_def* %x.addr.7) #6, !dbg !2436
  br label %cleanup118, !dbg !2437

cleanup118:                                       ; preds = %cond.end, %if.end117
  ret %struct.rtx_def* %x.addr.7, !dbg !2438
}

declare dso_local zeroext i8 @constant_address_p(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @force_reg(i32 %mode, %struct.rtx_def* %x) local_unnamed_addr #4 !dbg !2439 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2443, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2444, metadata !DIExpression()), !dbg !2463
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !2464
  %bf.load = load i32, i32* %0, align 8, !dbg !2464
  %bf.clear = and i32 %bf.load, 65535, !dbg !2464
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !2464
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2466

if.end:                                           ; preds = %entry
  %call = tail call i32 @general_operand(%struct.rtx_def* %x, i32 %mode) #6, !dbg !2467
  %tobool = icmp eq i32 %call, 0, !dbg !2467
  br i1 %tobool, label %if.else, label %if.then1, !dbg !2468

if.then1:                                         ; preds = %if.end
  %call2 = tail call %struct.rtx_def* @gen_reg_rtx(i32 %mode) #6, !dbg !2469
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call2, metadata !2445, metadata !DIExpression()), !dbg !2463
  %call3 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call2, %struct.rtx_def* %x) #6, !dbg !2471
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call3, metadata !2446, metadata !DIExpression()), !dbg !2463
  br label %if.end14, !dbg !2472

if.else:                                          ; preds = %if.end
  %call4 = tail call %struct.rtx_def* @force_operand(%struct.rtx_def* %x, %struct.rtx_def* null) #6, !dbg !2473
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call4, metadata !2445, metadata !DIExpression()), !dbg !2463
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call4, i64 0, i32 0, !dbg !2474
  %bf.load5 = load i32, i32* %1, align 8, !dbg !2474
  %bf.clear6 = and i32 %bf.load5, 65535, !dbg !2474
  %cmp7 = icmp eq i32 %bf.clear6, 37, !dbg !2474
  br i1 %cmp7, label %if.then8, label %if.else10, !dbg !2475

if.then8:                                         ; preds = %if.else
  %call9 = tail call %struct.rtx_def* @get_last_insn() #6, !dbg !2476
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call9, metadata !2446, metadata !DIExpression()), !dbg !2463
  br label %if.end14, !dbg !2477

if.else10:                                        ; preds = %if.else
  %call11 = tail call %struct.rtx_def* @gen_reg_rtx(i32 %mode) #6, !dbg !2478
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call11, metadata !2448, metadata !DIExpression()), !dbg !2479
  %call12 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call11, %struct.rtx_def* %call4) #6, !dbg !2480
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call12, metadata !2446, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call11, metadata !2445, metadata !DIExpression()), !dbg !2463
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.else10, %if.then1
  %insn.1 = phi %struct.rtx_def* [ %call3, %if.then1 ], [ %call9, %if.then8 ], [ %call12, %if.else10 ], !dbg !2481
  %temp.1 = phi %struct.rtx_def* [ %call2, %if.then1 ], [ %call4, %if.then8 ], [ %call11, %if.else10 ], !dbg !2481
  call void @llvm.dbg.value(metadata %struct.rtx_def* %temp.1, metadata !2445, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1, metadata !2446, metadata !DIExpression()), !dbg !2463
  %bf.load15 = load i32, i32* %0, align 8, !dbg !2482
  %bf.clear16 = and i32 %bf.load15, 65535, !dbg !2482
  %idxprom = zext i32 %bf.clear16 to i64, !dbg !2482
  %arrayidx = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom, !dbg !2482
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2482
  %cmp17 = icmp eq i32 %2, 9, !dbg !2482
  br i1 %cmp17, label %land.lhs.true, label %if.end65, !dbg !2484

land.lhs.true:                                    ; preds = %if.end14
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 0, !dbg !2485
  %bf.load18 = load i32, i32* %3, align 8, !dbg !2485
  %bf.clear19 = and i32 %bf.load18, 65535, !dbg !2485
  %cmp20 = icmp eq i32 %bf.clear19, 8, !dbg !2485
  br i1 %cmp20, label %cond.true, label %lor.lhs.false, !dbg !2485

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp23 = icmp eq i32 %bf.clear19, 7, !dbg !2485
  br i1 %cmp23, label %cond.true, label %lor.lhs.false24, !dbg !2485

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %cmp27 = icmp eq i32 %bf.clear19, 9, !dbg !2485
  br i1 %cmp27, label %cond.true, label %lor.lhs.false28, !dbg !2485

lor.lhs.false28:                                  ; preds = %lor.lhs.false24
  %cmp31 = icmp eq i32 %bf.clear19, 10, !dbg !2485
  br i1 %cmp31, label %cond.true, label %cond.end47, !dbg !2485

cond.true:                                        ; preds = %lor.lhs.false28, %lor.lhs.false24, %lor.lhs.false, %land.lhs.true
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 1, !dbg !2485
  %4 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !2485
  %5 = bitcast %union.rtunion_def* %4 to i32**, !dbg !2485
  %6 = load i32*, i32** %5, align 8, !dbg !2485
  %bf.load33 = load i32, i32* %6, align 8, !dbg !2485
  %bf.clear34 = and i32 %bf.load33, 65535, !dbg !2485
  %cmp35 = icmp eq i32 %bf.clear34, 23, !dbg !2485
  %7 = bitcast i32* %6 to %struct.rtx_def*, !dbg !2485
  br i1 %cmp35, label %cond.end47, label %cond.false, !dbg !2485

cond.false:                                       ; preds = %cond.true
  %call45 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn.1, %struct.rtx_def* %7) #6, !dbg !2485
  br label %cond.end47, !dbg !2485

cond.end47:                                       ; preds = %lor.lhs.false28, %cond.false, %cond.true
  %cond48 = phi %struct.rtx_def* [ %call45, %cond.false ], [ %7, %cond.true ], [ null, %lor.lhs.false28 ], !dbg !2485
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond48, metadata !2447, metadata !DIExpression()), !dbg !2463
  %cmp49 = icmp eq %struct.rtx_def* %cond48, null, !dbg !2486
  br i1 %cmp49, label %if.end65, label %land.lhs.true50, !dbg !2487

land.lhs.true50:                                  ; preds = %cond.end47
  %arrayidx53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond48, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2488
  %rt_rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**, !dbg !2488
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx54, align 8, !dbg !2488
  %cmp55 = icmp eq %struct.rtx_def* %8, %temp.1, !dbg !2489
  br i1 %cmp55, label %land.lhs.true56, label %if.end65, !dbg !2490

land.lhs.true56:                                  ; preds = %land.lhs.true50
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond48, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2491
  %rt_rtx60 = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !2491
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx60, align 8, !dbg !2491
  %call61 = tail call i32 @rtx_equal_p(%struct.rtx_def* %x, %struct.rtx_def* %10) #6, !dbg !2492
  %tobool62 = icmp eq i32 %call61, 0, !dbg !2492
  br i1 %tobool62, label %if.then63, label %if.end65, !dbg !2493

if.then63:                                        ; preds = %land.lhs.true56
  %call64 = tail call %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def* %insn.1, i32 4, %struct.rtx_def* %x) #6, !dbg !2494
  br label %if.end65, !dbg !2494

if.end65:                                         ; preds = %land.lhs.true56, %cond.end47, %if.then63, %land.lhs.true50, %if.end14
  call void @llvm.dbg.value(metadata i32 0, metadata !2453, metadata !DIExpression()), !dbg !2495
  %bf.load66 = load i32, i32* %0, align 8, !dbg !2496
  %bf.clear67 = and i32 %bf.load66, 65535, !dbg !2496
  %cmp68 = icmp eq i32 %bf.clear67, 45, !dbg !2497
  br i1 %cmp68, label %if.then69, label %if.else112, !dbg !2498

if.then69:                                        ; preds = %if.end65
  call void @llvm.dbg.value(metadata i32 8, metadata !2453, metadata !DIExpression()), !dbg !2495
  %bf.clear71 = and i32 %bf.load66, 67108864, !dbg !2499
  %tobool72 = icmp eq i32 %bf.clear71, 0, !dbg !2499
  br i1 %tobool72, label %cond.false74, label %if.end230, !dbg !2502

cond.false74:                                     ; preds = %if.then69
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2499
  %rt_tree = bitcast %union.rtunion_def* %11 to %union.tree_node**, !dbg !2499
  %12 = load %union.tree_node*, %union.tree_node** %rt_tree, align 8, !dbg !2499
  %tobool78 = icmp eq %union.tree_node* %12, null, !dbg !2499
  br i1 %tobool78, label %if.end230, label %land.lhs.true79, !dbg !2502

land.lhs.true79:                                  ; preds = %cond.false74
  %13 = getelementptr inbounds %union.tree_node, %union.tree_node* %12, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2502
  %bf.load92 = load i64, i64* %13, align 8, !dbg !2503
  %bf.cast = and i64 %bf.load92, 65535, !dbg !2503
  %arrayidx95 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !2503
  %14 = load i32, i32* %arrayidx95, align 4, !dbg !2503
  %cmp96 = icmp eq i32 %14, 3, !dbg !2503
  br i1 %cmp96, label %if.then97, label %if.end230, !dbg !2504

if.then97:                                        ; preds = %land.lhs.true79
  %align110 = getelementptr inbounds %union.tree_node, %union.tree_node* %12, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2505
  %15 = load i32, i32* %align110, align 8, !dbg !2505
  call void @llvm.dbg.value(metadata i32 %15, metadata !2453, metadata !DIExpression()), !dbg !2495
  br label %if.end230, !dbg !2506

if.else112:                                       ; preds = %if.end65
  %cmp115 = icmp eq i32 %bf.clear67, 44, !dbg !2507
  br i1 %cmp115, label %if.end230, label %if.else117, !dbg !2508

if.else117:                                       ; preds = %if.else112
  %cmp120 = icmp eq i32 %bf.clear67, 35, !dbg !2509
  br i1 %cmp120, label %land.lhs.true121, label %if.end230, !dbg !2510

land.lhs.true121:                                 ; preds = %if.else117
  %arrayidx124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2511
  %16 = bitcast %union.rtunion_def* %arrayidx124 to i32**, !dbg !2511
  %17 = load i32*, i32** %16, align 8, !dbg !2511
  %bf.load126 = load i32, i32* %17, align 8, !dbg !2511
  %bf.clear127 = and i32 %bf.load126, 65535, !dbg !2511
  %cmp128 = icmp eq i32 %bf.clear127, 49, !dbg !2512
  br i1 %cmp128, label %land.lhs.true129, label %if.end230, !dbg !2513

land.lhs.true129:                                 ; preds = %land.lhs.true121
  %arrayidx136 = getelementptr inbounds i32, i32* %17, i64 2, !dbg !2514
  %18 = bitcast i32* %arrayidx136 to i32**, !dbg !2514
  %19 = load i32*, i32** %18, align 8, !dbg !2514
  %bf.load138 = load i32, i32* %19, align 8, !dbg !2514
  %bf.clear139 = and i32 %bf.load138, 65535, !dbg !2514
  %cmp140 = icmp eq i32 %bf.clear139, 45, !dbg !2515
  br i1 %cmp140, label %land.lhs.true141, label %if.end230, !dbg !2516

land.lhs.true141:                                 ; preds = %land.lhs.true129
  %20 = getelementptr inbounds i32, i32* %17, i64 4, !dbg !2517
  %21 = bitcast i32* %20 to i32**, !dbg !2517
  %22 = load i32*, i32** %21, align 8, !dbg !2517
  %bf.load150 = load i32, i32* %22, align 8, !dbg !2517
  %bf.clear151 = and i32 %bf.load150, 65535, !dbg !2517
  %cmp152 = icmp eq i32 %bf.clear151, 30, !dbg !2517
  br i1 %cmp152, label %if.then153, label %if.end230, !dbg !2518

if.then153:                                       ; preds = %land.lhs.true141
  call void @llvm.dbg.value(metadata i32* %19, metadata !2455, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32* %22, metadata !2460, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 8, metadata !2461, metadata !DIExpression()), !dbg !2519
  %bf.clear172 = and i32 %bf.load138, 67108864, !dbg !2520
  %tobool173 = icmp eq i32 %bf.clear172, 0, !dbg !2520
  br i1 %tobool173, label %cond.false175, label %if.end216, !dbg !2522

cond.false175:                                    ; preds = %if.then153
  %23 = getelementptr inbounds i32, i32* %19, i64 6, !dbg !2520
  %rt_tree179 = bitcast i32* %23 to %union.tree_node**, !dbg !2520
  %24 = load %union.tree_node*, %union.tree_node** %rt_tree179, align 8, !dbg !2520
  %tobool180 = icmp eq %union.tree_node* %24, null, !dbg !2520
  br i1 %tobool180, label %if.end216, label %land.lhs.true181, !dbg !2522

land.lhs.true181:                                 ; preds = %cond.false175
  %25 = getelementptr inbounds %union.tree_node, %union.tree_node* %24, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2522
  %bf.load195 = load i64, i64* %25, align 8, !dbg !2523
  %bf.cast197 = and i64 %bf.load195, 65535, !dbg !2523
  %arrayidx199 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast197, !dbg !2523
  %26 = load i32, i32* %arrayidx199, align 4, !dbg !2523
  %cmp200 = icmp eq i32 %26, 3, !dbg !2523
  br i1 %cmp200, label %if.then201, label %if.end216, !dbg !2524

if.then201:                                       ; preds = %land.lhs.true181
  %align215 = getelementptr inbounds %union.tree_node, %union.tree_node* %24, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2525
  %27 = load i32, i32* %align215, align 8, !dbg !2525
  call void @llvm.dbg.value(metadata i32 %27, metadata !2461, metadata !DIExpression()), !dbg !2519
  br label %if.end216, !dbg !2526

if.end216:                                        ; preds = %cond.false175, %if.then153, %if.then201, %land.lhs.true181
  %sa.0 = phi i32 [ %27, %if.then201 ], [ 8, %land.lhs.true181 ], [ 8, %cond.false175 ], [ 8, %if.then153 ], !dbg !2519
  call void @llvm.dbg.value(metadata i32 %sa.0, metadata !2461, metadata !DIExpression()), !dbg !2519
  %u217 = getelementptr inbounds i32, i32* %22, i64 2, !dbg !2527
  %arrayidx218 = bitcast i32* %u217 to i64*, !dbg !2527
  %28 = load i64, i64* %arrayidx218, align 8, !dbg !2527
  %sub = sub nsw i64 0, %28, !dbg !2528
  %and = and i64 %28, %sub, !dbg !2529
  %call222 = tail call i32 @exact_log2(i64 %and) #6, !dbg !2530
  %mul = shl nsw i32 %call222, 3, !dbg !2531
  call void @llvm.dbg.value(metadata i32 %mul, metadata !2462, metadata !DIExpression()), !dbg !2519
  %cmp223 = icmp ult i32 %sa.0, %mul, !dbg !2532
  %sa.0.mul = select i1 %cmp223, i32 %sa.0, i32 %mul, !dbg !2532
  call void @llvm.dbg.value(metadata i32 %sa.0.mul, metadata !2453, metadata !DIExpression()), !dbg !2495
  br label %if.end230, !dbg !2533

if.end230:                                        ; preds = %cond.false74, %if.then69, %if.else112, %if.end216, %land.lhs.true141, %land.lhs.true129, %land.lhs.true121, %if.else117, %land.lhs.true79, %if.then97
  %align.3 = phi i32 [ %15, %if.then97 ], [ 8, %land.lhs.true79 ], [ 8, %cond.false74 ], [ 8, %if.then69 ], [ 8, %if.else112 ], [ %sa.0.mul, %if.end216 ], [ 0, %land.lhs.true141 ], [ 0, %land.lhs.true129 ], [ 0, %land.lhs.true121 ], [ 0, %if.else117 ], !dbg !2534
  call void @llvm.dbg.value(metadata i32 %align.3, metadata !2453, metadata !DIExpression()), !dbg !2495
  %tobool231 = icmp eq i32 %align.3, 0, !dbg !2535
  br i1 %tobool231, label %lor.lhs.false232, label %if.then241, !dbg !2537

lor.lhs.false232:                                 ; preds = %if.end230
  %bf.load233 = load i32, i32* %0, align 8, !dbg !2538
  %bf.clear234 = and i32 %bf.load233, 65535, !dbg !2538
  %cmp235 = icmp eq i32 %bf.clear234, 43, !dbg !2538
  br i1 %cmp235, label %land.lhs.true236, label %cleanup, !dbg !2539

land.lhs.true236:                                 ; preds = %lor.lhs.false232
  %bf.clear239 = and i32 %bf.load233, 1073741824, !dbg !2540
  %tobool240 = icmp eq i32 %bf.clear239, 0, !dbg !2540
  br i1 %tobool240, label %cleanup, label %if.then241, !dbg !2541

if.then241:                                       ; preds = %land.lhs.true236, %if.end230
  tail call void @mark_reg_pointer(%struct.rtx_def* %temp.1, i32 %align.3) #6, !dbg !2542
  br label %cleanup, !dbg !2542

cleanup:                                          ; preds = %land.lhs.true236, %lor.lhs.false232, %if.then241, %entry
  %retval.0 = phi %struct.rtx_def* [ %x, %entry ], [ %temp.1, %if.then241 ], [ %temp.1, %land.lhs.true236 ], [ %temp.1, %lor.lhs.false232 ], !dbg !2463
  ret %struct.rtx_def* %retval.0, !dbg !2543
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @break_out_memory_refs(%struct.rtx_def* %x) unnamed_addr #4 !dbg !2544 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2548, metadata !DIExpression()), !dbg !2554
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !2555
  %bf.load = load i32, i32* %0, align 8, !dbg !2555
  %bf.clear = and i32 %bf.load, 65535, !dbg !2555
  %cmp = icmp eq i32 %bf.clear, 43, !dbg !2555
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2556

lor.lhs.false:                                    ; preds = %entry
  %idxprom = zext i32 %bf.clear to i64, !dbg !2557
  %arrayidx = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom, !dbg !2557
  %1 = load i32, i32* %arrayidx, align 4, !dbg !2557
  %cmp3 = icmp eq i32 %1, 9, !dbg !2557
  br i1 %cmp3, label %land.lhs.true, label %if.else, !dbg !2558

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call = tail call zeroext i8 @constant_address_p(%struct.rtx_def* %x) #6, !dbg !2559
  %tobool = icmp eq i8 %call, 0, !dbg !2559
  br i1 %tobool, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true4, !dbg !2560

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  %bf.load13.pre = load i32, i32* %0, align 8, !dbg !2561
  br label %if.else, !dbg !2560

land.lhs.true4:                                   ; preds = %land.lhs.true
  %bf.load5 = load i32, i32* %0, align 8, !dbg !2562
  %bf.clear6 = and i32 %bf.load5, 16711680, !dbg !2562
  %cmp7 = icmp eq i32 %bf.clear6, 0, !dbg !2563
  br i1 %cmp7, label %if.else, label %if.then, !dbg !2564

if.then:                                          ; preds = %land.lhs.true4, %entry
  %bf.load9 = phi i32 [ %bf.load5, %land.lhs.true4 ], [ %bf.load, %entry ], !dbg !2565
  %bf.lshr10 = lshr i32 %bf.load9, 16, !dbg !2565
  %bf.clear11 = and i32 %bf.lshr10, 255, !dbg !2565
  %call12 = tail call %struct.rtx_def* @force_reg(i32 %bf.clear11, %struct.rtx_def* %x) #8, !dbg !2566
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call12, metadata !2548, metadata !DIExpression()), !dbg !2554
  br label %if.end56, !dbg !2567

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %land.lhs.true4, %lor.lhs.false
  %bf.load23 = phi i32 [ %bf.load13.pre, %land.lhs.true.if.else_crit_edge ], [ %bf.load5, %land.lhs.true4 ], [ %bf.load, %lor.lhs.false ], !dbg !2561
  %bf.clear14 = and i32 %bf.load23, 65535, !dbg !2561
  %cmp15 = icmp eq i32 %bf.clear14, 49, !dbg !2568
  br i1 %cmp15, label %if.then27, label %lor.lhs.false17, !dbg !2569

lor.lhs.false17:                                  ; preds = %if.else
  %cmp20 = icmp eq i32 %bf.clear14, 50, !dbg !2570
  br i1 %cmp20, label %if.then27, label %lor.lhs.false22, !dbg !2571

lor.lhs.false22:                                  ; preds = %lor.lhs.false17
  %cmp25 = icmp eq i32 %bf.clear14, 52, !dbg !2572
  br i1 %cmp25, label %if.then27, label %if.end56, !dbg !2573

if.then27:                                        ; preds = %lor.lhs.false22, %lor.lhs.false17, %if.else
  %arrayidx28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2574
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**, !dbg !2574
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2574
  %call29 = tail call fastcc %struct.rtx_def* @break_out_memory_refs(%struct.rtx_def* %2) #8, !dbg !2575
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call29, metadata !2549, metadata !DIExpression()), !dbg !2576
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2577
  %rt_rtx33 = bitcast %union.rtunion_def* %3 to %struct.rtx_def**, !dbg !2577
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx33, align 8, !dbg !2577
  %call34 = tail call fastcc %struct.rtx_def* @break_out_memory_refs(%struct.rtx_def* %4) #8, !dbg !2578
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call34, metadata !2553, metadata !DIExpression()), !dbg !2576
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2579
  %cmp39 = icmp eq %struct.rtx_def* %call29, %5, !dbg !2581
  br i1 %cmp39, label %lor.lhs.false41, label %if.then48, !dbg !2582

lor.lhs.false41:                                  ; preds = %if.then27
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx33, align 8, !dbg !2583
  %cmp46 = icmp eq %struct.rtx_def* %call34, %6, !dbg !2584
  br i1 %cmp46, label %if.end56, label %if.then48, !dbg !2585

if.then48:                                        ; preds = %lor.lhs.false41, %if.then27
  %bf.load49 = load i32, i32* %0, align 8, !dbg !2586
  %bf.clear50 = and i32 %bf.load49, 65535, !dbg !2586
  %bf.lshr52 = lshr i32 %bf.load49, 16, !dbg !2587
  %bf.clear53 = and i32 %bf.lshr52, 255, !dbg !2587
  %call54 = tail call %struct.rtx_def* @simplify_gen_binary(i32 %bf.clear50, i32 %bf.clear53, %struct.rtx_def* %call29, %struct.rtx_def* %call34) #6, !dbg !2588
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call54, metadata !2548, metadata !DIExpression()), !dbg !2554
  br label %if.end56, !dbg !2589

if.end56:                                         ; preds = %lor.lhs.false41, %lor.lhs.false22, %if.then48, %if.then
  %x.addr.2 = phi %struct.rtx_def* [ %call12, %if.then ], [ %x, %lor.lhs.false22 ], [ %call54, %if.then48 ], [ %x, %lor.lhs.false41 ], !dbg !2590
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.2, metadata !2548, metadata !DIExpression()), !dbg !2554
  ret %struct.rtx_def* %x.addr.2, !dbg !2591
}

declare dso_local %struct.rtx_def* @force_operand(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %x) local_unnamed_addr #4 !dbg !2592 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2594, metadata !DIExpression()), !dbg !2596
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !2597
  %bf.load = load i32, i32* %0, align 8, !dbg !2597
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2597
  %bf.clear = and i32 %bf.lshr, 255, !dbg !2597
  %call = tail call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear) #6, !dbg !2598
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2595, metadata !DIExpression()), !dbg !2596
  %call1 = tail call i32 @general_operand(%struct.rtx_def* %x, i32 0) #6, !dbg !2599
  %tobool = icmp eq i32 %call1, 0, !dbg !2599
  br i1 %tobool, label %if.then, label %if.end, !dbg !2601

if.then:                                          ; preds = %entry
  %call2 = tail call %struct.rtx_def* @force_operand(%struct.rtx_def* %x, %struct.rtx_def* %call) #6, !dbg !2602
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call2, metadata !2594, metadata !DIExpression()), !dbg !2596
  br label %if.end, !dbg !2603

if.end:                                           ; preds = %entry, %if.then
  %x.addr.0 = phi %struct.rtx_def* [ %x, %entry ], [ %call2, %if.then ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0, metadata !2594, metadata !DIExpression()), !dbg !2596
  %cmp = icmp eq %struct.rtx_def* %x.addr.0, %call, !dbg !2604
  br i1 %cmp, label %if.end5, label %if.then3, !dbg !2606

if.then3:                                         ; preds = %if.end
  %call4 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call, %struct.rtx_def* %x.addr.0) #6, !dbg !2607
  br label %if.end5, !dbg !2607

if.end5:                                          ; preds = %if.end, %if.then3
  ret %struct.rtx_def* %call, !dbg !2608
}

declare dso_local void @mark_reg_pointer(%struct.rtx_def*, i32) local_unnamed_addr #1

declare dso_local void @update_temp_slot_address(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @validize_mem(%struct.rtx_def* %ref) local_unnamed_addr #4 !dbg !2609 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %ref, metadata !2611, metadata !DIExpression()), !dbg !2612
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %ref, i64 0, i32 0, !dbg !2613
  %bf.load = load i32, i32* %0, align 8, !dbg !2613
  %bf.clear = and i32 %bf.load, 65535, !dbg !2613
  %cmp = icmp eq i32 %bf.clear, 43, !dbg !2613
  br i1 %cmp, label %if.end, label %return, !dbg !2615

if.end:                                           ; preds = %entry
  %call = tail call %struct.rtx_def* @use_anchored_address(%struct.rtx_def* %ref) #8, !dbg !2616
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2611, metadata !DIExpression()), !dbg !2612
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !2617
  %bf.load1 = load i32, i32* %1, align 8, !dbg !2617
  %bf.lshr = lshr i32 %bf.load1, 16, !dbg !2617
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !2617
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2619
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2619
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2619
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2620
  %rt_mem = bitcast %union.rtunion_def* %3 to %struct.mem_attrs**, !dbg !2620
  %4 = load %struct.mem_attrs*, %struct.mem_attrs** %rt_mem, align 8, !dbg !2620
  %cmp6 = icmp eq %struct.mem_attrs* %4, null, !dbg !2620
  br i1 %cmp6, label %cond.end, label %cond.false, !dbg !2620

cond.false:                                       ; preds = %if.end
  %addrspace = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %4, i64 0, i32 5, !dbg !2620
  %5 = load i8, i8* %addrspace, align 8, !dbg !2620
  br label %cond.end, !dbg !2620

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi i8 [ %5, %cond.false ], [ 0, %if.end ]
  %call12 = tail call i32 @memory_address_addr_space_p(i32 %bf.clear2, %struct.rtx_def* %2, i8 zeroext %cond) #6, !dbg !2621
  %tobool = icmp eq i32 %call12, 0, !dbg !2621
  br i1 %tobool, label %if.end14, label %return, !dbg !2622

if.end14:                                         ; preds = %cond.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2623
  %call19 = tail call %struct.rtx_def* @replace_equiv_address(%struct.rtx_def* %call, %struct.rtx_def* %6) #6, !dbg !2624
  br label %return, !dbg !2625

return:                                           ; preds = %cond.end, %entry, %if.end14
  %retval.0 = phi %struct.rtx_def* [ %call19, %if.end14 ], [ %ref, %entry ], [ %call, %cond.end ], !dbg !2612
  ret %struct.rtx_def* %retval.0, !dbg !2626
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @use_anchored_address(%struct.rtx_def* %x) local_unnamed_addr #4 !dbg !2627 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2629, metadata !DIExpression()), !dbg !2632
  %0 = load i32, i32* @flag_section_anchors, align 4, !dbg !2633
  %tobool = icmp eq i32 %0, 0, !dbg !2633
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2635

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !2636
  %bf.load = load i32, i32* %1, align 8, !dbg !2636
  %bf.clear = and i32 %bf.load, 65535, !dbg !2636
  %cmp = icmp eq i32 %bf.clear, 43, !dbg !2636
  br i1 %cmp, label %if.end2, label %cleanup, !dbg !2638

if.end2:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2639
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2639
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2639
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !2630, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 0, metadata !2631, metadata !DIExpression()), !dbg !2632
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 0, !dbg !2640
  %bf.load3 = load i32, i32* %3, align 8, !dbg !2640
  %bf.clear4 = and i32 %bf.load3, 65535, !dbg !2640
  %cmp5 = icmp eq i32 %bf.clear4, 35, !dbg !2642
  br i1 %cmp5, label %land.lhs.true, label %if.end44, !dbg !2643

land.lhs.true:                                    ; preds = %if.end2
  %arrayidx8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2644
  %4 = bitcast %union.rtunion_def* %arrayidx8 to i32**, !dbg !2644
  %5 = load i32*, i32** %4, align 8, !dbg !2644
  %bf.load10 = load i32, i32* %5, align 8, !dbg !2644
  %bf.clear11 = and i32 %bf.load10, 65535, !dbg !2644
  %cmp12 = icmp eq i32 %bf.clear11, 49, !dbg !2645
  br i1 %cmp12, label %land.lhs.true13, label %if.end44, !dbg !2646

land.lhs.true13:                                  ; preds = %land.lhs.true
  %6 = getelementptr inbounds i32, i32* %5, i64 4, !dbg !2647
  %7 = bitcast i32* %6 to i32**, !dbg !2647
  %8 = load i32*, i32** %7, align 8, !dbg !2647
  %bf.load22 = load i32, i32* %8, align 8, !dbg !2647
  %bf.clear23 = and i32 %bf.load22, 65535, !dbg !2647
  %cmp24 = icmp eq i32 %bf.clear23, 30, !dbg !2647
  br i1 %cmp24, label %if.then25, label %if.end44, !dbg !2648

if.then25:                                        ; preds = %land.lhs.true13
  %u34 = getelementptr inbounds i32, i32* %8, i64 2, !dbg !2649
  %arrayidx35 = bitcast i32* %u34 to i64*, !dbg !2649
  %9 = load i64, i64* %arrayidx35, align 8, !dbg !2649
  call void @llvm.dbg.value(metadata i64 %9, metadata !2631, metadata !DIExpression()), !dbg !2632
  %arrayidx42 = getelementptr inbounds i32, i32* %5, i64 2, !dbg !2651
  %rt_rtx43 = bitcast i32* %arrayidx42 to %struct.rtx_def**, !dbg !2651
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx43, align 8, !dbg !2651
  call void @llvm.dbg.value(metadata %struct.rtx_def* %10, metadata !2630, metadata !DIExpression()), !dbg !2632
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 0, !dbg !2652
  %bf.load45.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !2654
  br label %if.end44, !dbg !2655

if.end44:                                         ; preds = %if.then25, %land.lhs.true13, %land.lhs.true, %if.end2
  %bf.load45 = phi i32 [ %bf.load45.pre, %if.then25 ], [ %bf.load3, %land.lhs.true13 ], [ %bf.load3, %land.lhs.true ], [ %bf.load3, %if.end2 ], !dbg !2654
  %offset.0 = phi i64 [ %9, %if.then25 ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true ], [ 0, %if.end2 ], !dbg !2632
  %base.0 = phi %struct.rtx_def* [ %10, %if.then25 ], [ %2, %land.lhs.true13 ], [ %2, %land.lhs.true ], [ %2, %if.end2 ], !dbg !2632
  call void @llvm.dbg.value(metadata %struct.rtx_def* %base.0, metadata !2630, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 %offset.0, metadata !2631, metadata !DIExpression()), !dbg !2632
  %bf.clear46 = and i32 %bf.load45, 65535, !dbg !2654
  %cmp47 = icmp eq i32 %bf.clear46, 45, !dbg !2656
  br i1 %cmp47, label %lor.lhs.false, label %cleanup, !dbg !2657

lor.lhs.false:                                    ; preds = %if.end44
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %base.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2658
  %rt_int = bitcast %union.rtunion_def* %11 to i32*, !dbg !2658
  %12 = load i32, i32* %rt_int, align 8, !dbg !2658
  %13 = trunc i32 %12 to i8, !dbg !2658
  %cmp51 = icmp slt i8 %13, 0, !dbg !2658
  br i1 %cmp51, label %lor.lhs.false52, label %cleanup, !dbg !2659

lor.lhs.false52:                                  ; preds = %lor.lhs.false
  %and57 = and i32 %12, 256, !dbg !2660
  %cmp58 = icmp eq i32 %and57, 0, !dbg !2660
  br i1 %cmp58, label %lor.lhs.false59, label %cleanup, !dbg !2661

lor.lhs.false59:                                  ; preds = %lor.lhs.false52
  %block = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %base.0, i64 0, i32 1, i32 0, i32 1, !dbg !2662
  %14 = load %struct.object_block*, %struct.object_block** %block, align 8, !dbg !2662
  %cmp61 = icmp eq %struct.object_block* %14, null, !dbg !2663
  br i1 %cmp61, label %cleanup, label %lor.lhs.false62, !dbg !2664

lor.lhs.false62:                                  ; preds = %lor.lhs.false59
  %15 = load i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 45), align 8, !dbg !2665
  %call = tail call zeroext i8 %15(%struct.rtx_def* %base.0) #6, !dbg !2666
  %tobool63 = icmp eq i8 %call, 0, !dbg !2666
  br i1 %tobool63, label %cleanup, label %if.end65, !dbg !2667

if.end65:                                         ; preds = %lor.lhs.false62
  tail call void @place_block_symbol(%struct.rtx_def* %base.0) #6, !dbg !2668
  %offset68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %base.0, i64 0, i32 1, i32 0, i32 2, !dbg !2669
  %16 = load i64, i64* %offset68, align 8, !dbg !2669
  %add69 = add nsw i64 %offset.0, %16, !dbg !2670
  call void @llvm.dbg.value(metadata i64 %add69, metadata !2631, metadata !DIExpression()), !dbg !2632
  %17 = load %struct.object_block*, %struct.object_block** %block, align 8, !dbg !2671
  %18 = load i32, i32* %rt_int, align 8, !dbg !2672
  %19 = lshr i32 %18, 3, !dbg !2672
  %and77 = and i32 %19, 7, !dbg !2672
  %call78 = tail call %struct.rtx_def* @get_section_anchor(%struct.object_block* %17, i64 %add69, i32 %and77) #6, !dbg !2673
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call78, metadata !2630, metadata !DIExpression()), !dbg !2632
  %offset81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call78, i64 0, i32 1, i32 0, i32 2, !dbg !2674
  %20 = load i64, i64* %offset81, align 8, !dbg !2674
  %sub = sub nsw i64 %add69, %20, !dbg !2675
  call void @llvm.dbg.value(metadata i64 %sub, metadata !2631, metadata !DIExpression()), !dbg !2632
  %21 = load i32, i32* @cse_not_expected, align 4, !dbg !2676
  %tobool82 = icmp eq i32 %21, 0, !dbg !2676
  br i1 %tobool82, label %if.then83, label %if.end87, !dbg !2678

if.then83:                                        ; preds = %if.end65
  %22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call78, i64 0, i32 0, !dbg !2679
  %bf.load84 = load i32, i32* %22, align 8, !dbg !2679
  %bf.lshr = lshr i32 %bf.load84, 16, !dbg !2679
  %bf.clear85 = and i32 %bf.lshr, 255, !dbg !2679
  %call86 = tail call %struct.rtx_def* @force_reg(i32 %bf.clear85, %struct.rtx_def* %call78) #8, !dbg !2680
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call86, metadata !2630, metadata !DIExpression()), !dbg !2632
  br label %if.end87, !dbg !2681

if.end87:                                         ; preds = %if.end65, %if.then83
  %base.1 = phi %struct.rtx_def* [ %call78, %if.end65 ], [ %call86, %if.then83 ], !dbg !2632
  call void @llvm.dbg.value(metadata %struct.rtx_def* %base.1, metadata !2630, metadata !DIExpression()), !dbg !2632
  %call88 = tail call %struct.rtx_def* @plus_constant(%struct.rtx_def* %base.1, i64 %sub) #8, !dbg !2682
  %call89 = tail call %struct.rtx_def* @replace_equiv_address(%struct.rtx_def* %x, %struct.rtx_def* %call88) #6, !dbg !2683
  br label %cleanup, !dbg !2684

cleanup:                                          ; preds = %lor.lhs.false62, %lor.lhs.false52, %if.end44, %entry, %lor.lhs.false, %lor.lhs.false59, %if.end, %if.end87
  %retval.0 = phi %struct.rtx_def* [ %call89, %if.end87 ], [ %x, %entry ], [ %x, %if.end ], [ %x, %lor.lhs.false62 ], [ %x, %lor.lhs.false59 ], [ %x, %lor.lhs.false52 ], [ %x, %lor.lhs.false ], [ %x, %if.end44 ], !dbg !2632
  ret %struct.rtx_def* %retval.0, !dbg !2685
}

declare dso_local %struct.rtx_def* @replace_equiv_address(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @place_block_symbol(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @get_section_anchor(%struct.object_block*, i64, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_reg_rtx(i32) local_unnamed_addr #1

declare dso_local i32 @general_operand(%struct.rtx_def*, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @copy_addr_to_reg(%struct.rtx_def* %x) local_unnamed_addr #4 !dbg !2686 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2688, metadata !DIExpression()), !dbg !2689
  %call = tail call %struct.rtx_def* @copy_to_mode_reg(i32 16, %struct.rtx_def* %x) #8, !dbg !2690
  ret %struct.rtx_def* %call, !dbg !2691
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @copy_to_mode_reg(i32 %mode, %struct.rtx_def* %x) local_unnamed_addr #4 !dbg !2692 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2694, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2695, metadata !DIExpression()), !dbg !2697
  %call = tail call %struct.rtx_def* @gen_reg_rtx(i32 %mode) #6, !dbg !2698
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2696, metadata !DIExpression()), !dbg !2697
  %call1 = tail call i32 @general_operand(%struct.rtx_def* %x, i32 0) #6, !dbg !2699
  %tobool = icmp eq i32 %call1, 0, !dbg !2699
  br i1 %tobool, label %if.then, label %if.end, !dbg !2701

if.then:                                          ; preds = %entry
  %call2 = tail call %struct.rtx_def* @force_operand(%struct.rtx_def* %x, %struct.rtx_def* %call) #6, !dbg !2702
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call2, metadata !2695, metadata !DIExpression()), !dbg !2697
  br label %if.end, !dbg !2703

if.end:                                           ; preds = %entry, %if.then
  %x.addr.0 = phi %struct.rtx_def* [ %x, %entry ], [ %call2, %if.then ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0, metadata !2695, metadata !DIExpression()), !dbg !2697
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0, i64 0, i32 0, !dbg !2704
  %bf.load = load i32, i32* %0, align 8, !dbg !2704
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2704
  %bf.clear = and i32 %bf.lshr, 255, !dbg !2704
  %cmp = icmp eq i32 %bf.clear, %mode, !dbg !2704
  br i1 %cmp, label %cond.end, label %lor.lhs.false, !dbg !2704

lor.lhs.false:                                    ; preds = %if.end
  %bf.clear5 = and i32 %bf.load, 16711680, !dbg !2704
  %cmp6 = icmp eq i32 %bf.clear5, 0, !dbg !2704
  br i1 %cmp6, label %cond.end, label %cond.true, !dbg !2704

cond.true:                                        ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 635, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2704
  br label %cond.end, !dbg !2704

cond.end:                                         ; preds = %if.end, %lor.lhs.false, %cond.true
  %cmp7 = icmp eq %struct.rtx_def* %x.addr.0, %call, !dbg !2705
  br i1 %cmp7, label %if.end10, label %if.then8, !dbg !2707

if.then8:                                         ; preds = %cond.end
  %call9 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call, %struct.rtx_def* %x.addr.0) #6, !dbg !2708
  br label %if.end10, !dbg !2708

if.end10:                                         ; preds = %cond.end, %if.then8
  ret %struct.rtx_def* %call, !dbg !2709
}

declare dso_local %struct.rtx_def* @get_last_insn() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @exact_log2(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @force_not_mem(%struct.rtx_def* %x) local_unnamed_addr #4 !dbg !2710 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2712, metadata !DIExpression()), !dbg !2714
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !2715
  %bf.load = load i32, i32* %0, align 8, !dbg !2715
  %bf.clear = and i32 %bf.load, 65535, !dbg !2715
  %cmp = icmp eq i32 %bf.clear, 43, !dbg !2715
  br i1 %cmp, label %lor.lhs.false, label %cleanup, !dbg !2717

lor.lhs.false:                                    ; preds = %entry
  %bf.clear2 = and i32 %bf.load, 16711680, !dbg !2718
  %cmp3 = icmp eq i32 %bf.clear2, 65536, !dbg !2719
  br i1 %cmp3, label %cleanup, label %if.end, !dbg !2720

if.end:                                           ; preds = %lor.lhs.false
  %bf.lshr5 = lshr i32 %bf.load, 16, !dbg !2721
  %bf.clear6 = and i32 %bf.lshr5, 255, !dbg !2721
  %call = tail call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear6) #6, !dbg !2722
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2713, metadata !DIExpression()), !dbg !2714
  %bf.load7 = load i32, i32* %0, align 8, !dbg !2723
  %bf.clear9 = and i32 %bf.load7, 1073741824, !dbg !2723
  %tobool = icmp eq i32 %bf.clear9, 0, !dbg !2723
  br i1 %tobool, label %if.end13, label %if.then10, !dbg !2725

if.then10:                                        ; preds = %if.end
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !2726
  %bf.load11 = load i32, i32* %1, align 8, !dbg !2727
  %bf.set = or i32 %bf.load11, 1073741824, !dbg !2727
  store i32 %bf.set, i32* %1, align 8, !dbg !2727
  br label %if.end13, !dbg !2726

if.end13:                                         ; preds = %if.end, %if.then10
  %call14 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call, %struct.rtx_def* %x) #6, !dbg !2728
  br label %cleanup, !dbg !2729

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end13
  %retval.0 = phi %struct.rtx_def* [ %call, %if.end13 ], [ %x, %lor.lhs.false ], [ %x, %entry ], !dbg !2714
  ret %struct.rtx_def* %retval.0, !dbg !2730
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @copy_to_suggested_reg(%struct.rtx_def* %x, %struct.rtx_def* %target, i32 %mode) local_unnamed_addr #4 !dbg !2731 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2735, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata %struct.rtx_def* %target, metadata !2736, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2737, metadata !DIExpression()), !dbg !2739
  %tobool = icmp eq %struct.rtx_def* %target, null, !dbg !2740
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2742

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %target, i64 0, i32 0, !dbg !2743
  %bf.load = load i32, i32* %0, align 8, !dbg !2743
  %bf.clear = and i32 %bf.load, 65535, !dbg !2743
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !2743
  br i1 %cmp, label %if.end, label %if.else, !dbg !2744

if.else:                                          ; preds = %entry, %land.lhs.true
  %call = tail call %struct.rtx_def* @gen_reg_rtx(i32 %mode) #6, !dbg !2745
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2738, metadata !DIExpression()), !dbg !2739
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.else
  %temp.0 = phi %struct.rtx_def* [ %call, %if.else ], [ %target, %land.lhs.true ], !dbg !2746
  call void @llvm.dbg.value(metadata %struct.rtx_def* %temp.0, metadata !2738, metadata !DIExpression()), !dbg !2739
  %call1 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %temp.0, %struct.rtx_def* %x) #6, !dbg !2747
  ret %struct.rtx_def* %temp.0, !dbg !2748
}

; Function Attrs: nounwind uwtable
define dso_local i32 @promote_function_mode(%union.tree_node* %type, i32 %mode, i32* %punsignedp, %union.tree_node* %funtype, i32 %for_return) local_unnamed_addr #4 !dbg !2749 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2757, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2758, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i32* %punsignedp, metadata !2759, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata %union.tree_node* %funtype, metadata !2760, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i32 %for_return, metadata !2761, metadata !DIExpression()), !dbg !2762
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2763
  %bf.load = load i64, i64* %0, align 8, !dbg !2763
  %1 = trunc i64 %bf.load to i32, !dbg !2763
  %bf.cast = and i32 %1, 65535, !dbg !2763
  %bf.cast.off = add nsw i32 %bf.cast, -5, !dbg !2764
  %switch = icmp ult i32 %bf.cast.off, 8, !dbg !2764
  br i1 %switch, label %sw.bb, label %return, !dbg !2764

sw.bb:                                            ; preds = %entry
  %2 = load i32 (%union.tree_node*, i32, i32*, %union.tree_node*, i32)*, i32 (%union.tree_node*, i32, i32*, %union.tree_node*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 88, i32 0), align 8, !dbg !2765
  %call = tail call i32 %2(%union.tree_node* %type, i32 %mode, i32* %punsignedp, %union.tree_node* %funtype, i32 %for_return) #6, !dbg !2767
  br label %return, !dbg !2768

return:                                           ; preds = %entry, %sw.bb
  %retval.0 = phi i32 [ %call, %sw.bb ], [ %mode, %entry ], !dbg !2769
  ret i32 %retval.0, !dbg !2770
}

; Function Attrs: nounwind uwtable
define dso_local i32 @promote_mode(%union.tree_node* %type, i32 %mode, i32* %punsignedp) local_unnamed_addr #4 !dbg !2771 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2775, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2776, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i32* %punsignedp, metadata !2777, metadata !DIExpression()), !dbg !2781
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2782
  %bf.load = load i64, i64* %0, align 8, !dbg !2782
  %1 = trunc i64 %bf.load to i16, !dbg !2782
  switch i16 %1, label %cleanup [
    i16 8, label %do.body
    i16 6, label %do.body
    i16 7, label %do.body
    i16 9, label %do.body
    i16 5, label %do.body
    i16 11, label %do.body
  ], !dbg !2783

do.body:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  switch i32 %mode, label %do.end [
    i32 15, label %land.lhs.true
    i32 14, label %land.lhs.true3
  ], !dbg !2784

land.lhs.true:                                    ; preds = %do.body
  %2 = load i8, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @ix86_tune_features, i64 0, i64 25), align 1, !dbg !2784
  %tobool = icmp eq i8 %2, 0, !dbg !2784
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2784

lor.lhs.false:                                    ; preds = %land.lhs.true
  br i1 false, label %lor.lhs.false.land.lhs.true3_crit_edge, label %do.end, !dbg !2784

lor.lhs.false.land.lhs.true3_crit_edge:           ; preds = %lor.lhs.false
  br label %land.lhs.true3, !dbg !2784

land.lhs.true3:                                   ; preds = %lor.lhs.false.land.lhs.true3_crit_edge, %do.body
  %3 = load i8, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @ix86_tune_features, i64 0, i64 24), align 8, !dbg !2784
  %tobool5 = icmp eq i8 %3, 0, !dbg !2784
  br i1 %tobool5, label %do.end, label %if.then, !dbg !2788

if.then:                                          ; preds = %land.lhs.true, %land.lhs.true3
  call void @llvm.dbg.value(metadata i32 16, metadata !2776, metadata !DIExpression()), !dbg !2781
  br label %do.end, !dbg !2784

do.end:                                           ; preds = %land.lhs.true3, %do.body, %if.then, %lor.lhs.false
  %mode.addr.0 = phi i32 [ 16, %if.then ], [ %mode, %land.lhs.true3 ], [ 15, %lor.lhs.false ], [ %mode, %do.body ]
  call void @llvm.dbg.value(metadata i32 %mode.addr.0, metadata !2776, metadata !DIExpression()), !dbg !2781
  br label %cleanup, !dbg !2789

cleanup:                                          ; preds = %entry, %do.end
  %retval.0 = phi i32 [ %mode.addr.0, %do.end ], [ %mode, %entry ], !dbg !2790
  ret i32 %retval.0, !dbg !2791
}

; Function Attrs: nounwind uwtable
define dso_local i32 @promote_decl_mode(%union.tree_node* %decl, i32* %punsignedp) local_unnamed_addr #4 !dbg !2792 {
entry:
  %unsignedp = alloca i32, align 4
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2796, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i32* %punsignedp, metadata !2797, metadata !DIExpression()), !dbg !2802
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2803
  %0 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !2803
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2798, metadata !DIExpression()), !dbg !2802
  %1 = bitcast i32* %unsignedp to i8*, !dbg !2804
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7, !dbg !2804
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2805
  %bf.load = load i64, i64* %2, align 8, !dbg !2805
  %bf.lshr = lshr i64 %bf.load, 21, !dbg !2805
  %3 = trunc i64 %bf.lshr to i32, !dbg !2805
  %bf.cast = and i32 %3, 1, !dbg !2805
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !2799, metadata !DIExpression()), !dbg !2802
  store i32 %bf.cast, i32* %unsignedp, align 4, !dbg !2806
  %mode2 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2807
  %4 = bitcast i40* %mode2 to i64*, !dbg !2807
  %bf.load3 = load i64, i64* %4, align 8, !dbg !2807
  %5 = trunc i64 %bf.load3 to i32, !dbg !2807
  %bf.cast5 = and i32 %5, 255, !dbg !2807
  call void @llvm.dbg.value(metadata i32 %bf.cast5, metadata !2800, metadata !DIExpression()), !dbg !2802
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2808
  %bf.load7 = load i64, i64* %6, align 8, !dbg !2808
  %bf.cast91 = and i64 %bf.load7, 65535, !dbg !2810
  %cmp = icmp eq i64 %bf.cast91, 36, !dbg !2810
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2811

lor.lhs.false:                                    ; preds = %entry
  %cmp14 = icmp eq i64 %bf.cast91, 34, !dbg !2812
  br i1 %cmp14, label %if.then, label %if.else, !dbg !2813

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct.tree_common*, %struct.tree_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_common**), align 8, !dbg !2814
  %type16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %7, i64 0, i32 2, !dbg !2814
  %8 = load %union.tree_node*, %union.tree_node** %type16, align 8, !dbg !2814
  call void @llvm.dbg.value(metadata i32* %unsignedp, metadata !2799, metadata !DIExpression(DW_OP_deref)), !dbg !2802
  %call = call i32 @promote_function_mode(%union.tree_node* %0, i32 %bf.cast5, i32* nonnull %unsignedp, %union.tree_node* %8, i32 2) #8, !dbg !2815
  call void @llvm.dbg.value(metadata i32 %call, metadata !2801, metadata !DIExpression()), !dbg !2802
  br label %if.end, !dbg !2816

if.else:                                          ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata i32* %unsignedp, metadata !2799, metadata !DIExpression(DW_OP_deref)), !dbg !2802
  %call17 = call i32 @promote_mode(%union.tree_node* %0, i32 %bf.cast5, i32* nonnull %unsignedp) #8, !dbg !2817
  call void @llvm.dbg.value(metadata i32 %call17, metadata !2801, metadata !DIExpression()), !dbg !2802
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pmode.0 = phi i32 [ %call, %if.then ], [ %call17, %if.else ], !dbg !2818
  call void @llvm.dbg.value(metadata i32 %pmode.0, metadata !2801, metadata !DIExpression()), !dbg !2802
  %tobool = icmp eq i32* %punsignedp, null, !dbg !2819
  br i1 %tobool, label %if.end19, label %if.then18, !dbg !2821

if.then18:                                        ; preds = %if.end
  %9 = load i32, i32* %unsignedp, align 4, !dbg !2822
  call void @llvm.dbg.value(metadata i32 %9, metadata !2799, metadata !DIExpression()), !dbg !2802
  store i32 %9, i32* %punsignedp, align 4, !dbg !2823
  br label %if.end19, !dbg !2824

if.end19:                                         ; preds = %if.end, %if.then18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7, !dbg !2825
  ret i32 %pmode.0, !dbg !2826
}

; Function Attrs: nounwind uwtable
define dso_local void @adjust_stack(%struct.rtx_def* %adjust) local_unnamed_addr #4 !dbg !2827 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %adjust, metadata !2831, metadata !DIExpression()), !dbg !2833
  %0 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !2834
  %cmp = icmp eq %struct.rtx_def* %0, %adjust, !dbg !2836
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !2837

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %adjust, i64 0, i32 0, !dbg !2838
  %bf.load = load i32, i32* %1, align 8, !dbg !2838
  %bf.clear = and i32 %bf.load, 65535, !dbg !2838
  %cmp1 = icmp eq i32 %bf.clear, 30, !dbg !2838
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !2840

if.then2:                                         ; preds = %if.end
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %adjust, i64 0, i32 1, !dbg !2841
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !2841
  %2 = load i64, i64* %arrayidx, align 8, !dbg !2841
  %3 = load i32, i32* getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 0, i32 2), align 8, !dbg !2842
  %4 = trunc i64 %2 to i32, !dbg !2842
  %conv3 = sub i32 %3, %4, !dbg !2842
  store i32 %conv3, i32* getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 0, i32 2), align 8, !dbg !2842
  br label %if.end4, !dbg !2843

if.end4:                                          ; preds = %if.then2, %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2844
  %call = tail call %struct.rtx_def* @expand_binop(i32 16, %struct.optab_d* getelementptr inbounds ([159 x %struct.optab_d], [159 x %struct.optab_d]* @optab_table, i64 0, i64 12), %struct.rtx_def* %5, %struct.rtx_def* %adjust, %struct.rtx_def* %5, i32 0, i32 3) #6, !dbg !2845
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2832, metadata !DIExpression()), !dbg !2833
  %6 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2846
  %cmp5 = icmp eq %struct.rtx_def* %call, %6, !dbg !2848
  br i1 %cmp5, label %cleanup.cont, label %if.then7, !dbg !2849

if.then7:                                         ; preds = %if.end4
  %call8 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %6, %struct.rtx_def* %call) #6, !dbg !2850
  br label %cleanup.cont, !dbg !2850

cleanup.cont:                                     ; preds = %if.end4, %entry, %if.then7
  ret void, !dbg !2851
}

declare dso_local %struct.rtx_def* @expand_binop(i32, %struct.optab_d*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @anti_adjust_stack(%struct.rtx_def* %adjust) local_unnamed_addr #4 !dbg !2852 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %adjust, metadata !2854, metadata !DIExpression()), !dbg !2856
  %0 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !2857
  %cmp = icmp eq %struct.rtx_def* %0, %adjust, !dbg !2859
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !2860

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %adjust, i64 0, i32 0, !dbg !2861
  %bf.load = load i32, i32* %1, align 8, !dbg !2861
  %bf.clear = and i32 %bf.load, 65535, !dbg !2861
  %cmp1 = icmp eq i32 %bf.clear, 30, !dbg !2861
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !2863

if.then2:                                         ; preds = %if.end
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %adjust, i64 0, i32 1, !dbg !2864
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !2864
  %2 = load i64, i64* %arrayidx, align 8, !dbg !2864
  %3 = load i32, i32* getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 0, i32 2), align 8, !dbg !2865
  %4 = trunc i64 %2 to i32, !dbg !2865
  %conv3 = add i32 %3, %4, !dbg !2865
  store i32 %conv3, i32* getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 0, i32 2), align 8, !dbg !2865
  br label %if.end4, !dbg !2866

if.end4:                                          ; preds = %if.then2, %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2867
  %call = tail call %struct.rtx_def* @expand_binop(i32 16, %struct.optab_d* getelementptr inbounds ([159 x %struct.optab_d], [159 x %struct.optab_d]* @optab_table, i64 0, i64 14), %struct.rtx_def* %5, %struct.rtx_def* %adjust, %struct.rtx_def* %5, i32 0, i32 3) #6, !dbg !2868
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2855, metadata !DIExpression()), !dbg !2856
  %6 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2869
  %cmp5 = icmp eq %struct.rtx_def* %call, %6, !dbg !2871
  br i1 %cmp5, label %cleanup.cont, label %if.then7, !dbg !2872

if.then7:                                         ; preds = %if.end4
  %call8 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %6, %struct.rtx_def* %call) #6, !dbg !2873
  br label %cleanup.cont, !dbg !2873

cleanup.cont:                                     ; preds = %if.end4, %entry, %if.then7
  ret void, !dbg !2874
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_stack_save(i32 %save_level, %struct.rtx_def** %psave, %struct.rtx_def* %after) local_unnamed_addr #4 !dbg !2875 {
entry:
  call void @llvm.dbg.value(metadata i32 %save_level, metadata !2879, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata %struct.rtx_def** %psave, metadata !2880, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata %struct.rtx_def* %after, metadata !2881, metadata !DIExpression()), !dbg !2891
  %0 = load %struct.rtx_def*, %struct.rtx_def** %psave, align 8, !dbg !2892
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !2882, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*)* @gen_move_insn, metadata !2883, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i32 16, metadata !2887, metadata !DIExpression()), !dbg !2891
  %cmp = icmp eq %struct.rtx_def* %0, null, !dbg !2893
  br i1 %cmp, label %if.then2, label %if.end8, !dbg !2895

if.then2:                                         ; preds = %entry
  %cmp3 = icmp eq i32 %save_level, 2, !dbg !2896
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !2901

if.then4:                                         ; preds = %if.then2
  %1 = load i8, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @mode_size, i64 0, i64 16), align 16, !dbg !2902
  %conv5 = zext i8 %1 to i64, !dbg !2902
  %call = tail call %struct.rtx_def* @assign_stack_local(i32 16, i64 %conv5, i32 0) #6, !dbg !2903
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2882, metadata !DIExpression()), !dbg !2891
  store %struct.rtx_def* %call, %struct.rtx_def** %psave, align 8, !dbg !2904
  br label %if.end8, !dbg !2905

if.else:                                          ; preds = %if.then2
  %call6 = tail call %struct.rtx_def* @gen_reg_rtx(i32 16) #6, !dbg !2906
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call6, metadata !2882, metadata !DIExpression()), !dbg !2891
  store %struct.rtx_def* %call6, %struct.rtx_def** %psave, align 8, !dbg !2907
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4, %entry
  %sa.2 = phi %struct.rtx_def* [ %0, %entry ], [ %call, %if.then4 ], [ %call6, %if.else ], !dbg !2891
  call void @llvm.dbg.value(metadata %struct.rtx_def* %sa.2, metadata !2882, metadata !DIExpression()), !dbg !2891
  %tobool = icmp eq %struct.rtx_def* %after, null, !dbg !2908
  br i1 %tobool, label %if.else19, label %if.then9, !dbg !2909

if.then9:                                         ; preds = %if.end8
  tail call void @start_sequence() #6, !dbg !2910
  tail call void @do_pending_stack_adjust() #6, !dbg !2911
  %cmp10 = icmp eq %struct.rtx_def* %sa.2, null, !dbg !2912
  br i1 %cmp10, label %if.end14, label %if.then12, !dbg !2914

if.then12:                                        ; preds = %if.then9
  %call13 = tail call %struct.rtx_def* @validize_mem(%struct.rtx_def* nonnull %sa.2) #8, !dbg !2915
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call13, metadata !2882, metadata !DIExpression()), !dbg !2891
  br label %if.end14, !dbg !2916

if.end14:                                         ; preds = %if.then9, %if.then12
  %sa.3 = phi %struct.rtx_def* [ %call13, %if.then12 ], [ null, %if.then9 ], !dbg !2891
  call void @llvm.dbg.value(metadata %struct.rtx_def* %sa.3, metadata !2882, metadata !DIExpression()), !dbg !2891
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2917
  %call15 = tail call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %sa.3, %struct.rtx_def* %2) #6, !dbg !2918
  %call16 = tail call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call15) #6, !dbg !2919
  %call17 = tail call %struct.rtx_def* @get_insns() #6, !dbg !2920
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call17, metadata !2888, metadata !DIExpression()), !dbg !2921
  tail call void @end_sequence() #6, !dbg !2922
  %call18 = tail call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %call17, %struct.rtx_def* nonnull %after) #6, !dbg !2923
  br label %if.end27, !dbg !2924

if.else19:                                        ; preds = %if.end8
  tail call void @do_pending_stack_adjust() #6, !dbg !2925
  %cmp20 = icmp eq %struct.rtx_def* %sa.2, null, !dbg !2927
  br i1 %cmp20, label %if.end24, label %if.then22, !dbg !2929

if.then22:                                        ; preds = %if.else19
  %call23 = tail call %struct.rtx_def* @validize_mem(%struct.rtx_def* nonnull %sa.2) #8, !dbg !2930
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call23, metadata !2882, metadata !DIExpression()), !dbg !2891
  br label %if.end24, !dbg !2931

if.end24:                                         ; preds = %if.else19, %if.then22
  %sa.4 = phi %struct.rtx_def* [ %call23, %if.then22 ], [ null, %if.else19 ], !dbg !2891
  call void @llvm.dbg.value(metadata %struct.rtx_def* %sa.4, metadata !2882, metadata !DIExpression()), !dbg !2891
  %3 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2932
  %call25 = tail call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %sa.4, %struct.rtx_def* %3) #6, !dbg !2933
  %call26 = tail call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call25) #6, !dbg !2934
  br label %if.end27

if.end27:                                         ; preds = %if.end24, %if.end14
  ret void, !dbg !2935
}

declare dso_local %struct.rtx_def* @gen_move_insn(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @assign_stack_local(i32, i64, i32) local_unnamed_addr #1

declare dso_local void @start_sequence() local_unnamed_addr #1

declare dso_local void @do_pending_stack_adjust() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_insn(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @get_insns() local_unnamed_addr #1

declare dso_local void @end_sequence() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @emit_stack_restore(i32 %save_level, %struct.rtx_def* %sa, %struct.rtx_def* %after) local_unnamed_addr #4 !dbg !2936 {
entry:
  call void @llvm.dbg.value(metadata i32 %save_level, metadata !2940, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata %struct.rtx_def* %sa, metadata !2941, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata %struct.rtx_def* %after, metadata !2942, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*)* @gen_move_insn, metadata !2943, metadata !DIExpression()), !dbg !2947
  %cmp = icmp eq %struct.rtx_def* %sa, null, !dbg !2948
  br i1 %cmp, label %if.end, label %if.then, !dbg !2950

if.then:                                          ; preds = %entry
  %call = tail call %struct.rtx_def* @validize_mem(%struct.rtx_def* nonnull %sa) #8, !dbg !2951
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2941, metadata !DIExpression()), !dbg !2947
  %call1 = tail call %struct.rtx_def* @gen_rtx_fmt_0_stat(i32 38, i32 0) #6, !dbg !2953
  %call2 = tail call %struct.rtx_def* @gen_rtx_MEM(i32 1, %struct.rtx_def* %call1) #6, !dbg !2954
  %call3 = tail call %struct.rtx_def* @emit_clobber(%struct.rtx_def* %call2) #6, !dbg !2955
  %0 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2956
  %call4 = tail call %struct.rtx_def* @gen_rtx_MEM(i32 1, %struct.rtx_def* %0) #6, !dbg !2957
  %call5 = tail call %struct.rtx_def* @emit_clobber(%struct.rtx_def* %call4) #6, !dbg !2958
  br label %if.end, !dbg !2959

if.end:                                           ; preds = %entry, %if.then
  %sa.addr.0 = phi %struct.rtx_def* [ %call, %if.then ], [ null, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %sa.addr.0, metadata !2941, metadata !DIExpression()), !dbg !2947
  tail call void @discard_pending_stack_adjust() #6, !dbg !2960
  %tobool = icmp eq %struct.rtx_def* %after, null, !dbg !2961
  br i1 %tobool, label %if.else, label %if.then6, !dbg !2962

if.then6:                                         ; preds = %if.end
  tail call void @start_sequence() #6, !dbg !2963
  %1 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2964
  %call7 = tail call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %1, %struct.rtx_def* %sa.addr.0) #6, !dbg !2965
  %call8 = tail call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call7) #6, !dbg !2966
  %call9 = tail call %struct.rtx_def* @get_insns() #6, !dbg !2967
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call9, metadata !2944, metadata !DIExpression()), !dbg !2968
  tail call void @end_sequence() #6, !dbg !2969
  %call10 = tail call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %call9, %struct.rtx_def* nonnull %after) #6, !dbg !2970
  br label %if.end13, !dbg !2971

if.else:                                          ; preds = %if.end
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2972
  %call11 = tail call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %2, %struct.rtx_def* %sa.addr.0) #6, !dbg !2973
  %call12 = tail call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call11) #6, !dbg !2974
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then6
  ret void, !dbg !2975
}

declare dso_local %struct.rtx_def* @emit_clobber(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_rtx_MEM(i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_rtx_fmt_0_stat(i32, i32) local_unnamed_addr #1

declare dso_local void @discard_pending_stack_adjust() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @update_nonlocal_goto_save_area() local_unnamed_addr #4 !dbg !2976 {
entry:
  %r_save = alloca %struct.rtx_def*, align 8
  %0 = bitcast %struct.rtx_def** %r_save to i8*, !dbg !2982
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2982
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 39), align 8, !dbg !2983
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2983
  %nonlocal_goto_save_area = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 8, !dbg !2983
  %3 = load %union.tree_node*, %union.tree_node** %nonlocal_goto_save_area, align 8, !dbg !2983
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 14), align 16, !dbg !2983
  %call = tail call %union.tree_node* @build4_stat(i32 45, %union.tree_node* %1, %union.tree_node* %3, %union.tree_node* %4, %union.tree_node* null, %union.tree_node* null) #6, !dbg !2983
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2980, metadata !DIExpression()), !dbg !2984
  %call1 = tail call fastcc %struct.rtx_def* @expand_expr(%union.tree_node* %call, %struct.rtx_def* null, i32 0, i32 5) #8, !dbg !2985
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call1, metadata !2981, metadata !DIExpression()), !dbg !2984
  store %struct.rtx_def* %call1, %struct.rtx_def** %r_save, align 8, !dbg !2986
  call void @llvm.dbg.value(metadata %struct.rtx_def** %r_save, metadata !2981, metadata !DIExpression(DW_OP_deref)), !dbg !2984
  call void @emit_stack_save(i32 2, %struct.rtx_def** nonnull %r_save, %struct.rtx_def* null) #8, !dbg !2987
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2988
  ret void, !dbg !2988
}

declare dso_local %union.tree_node* @build4_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @allocate_dynamic_stack_space(%struct.rtx_def* %size, %struct.rtx_def* %target, i32 %known_align) local_unnamed_addr #4 !dbg !2989 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %size, metadata !2993, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata %struct.rtx_def* %target, metadata !2994, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i32 %known_align, metadata !2995, metadata !DIExpression()), !dbg !3010
  %0 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !3011
  %cmp = icmp eq %struct.rtx_def* %0, %size, !dbg !3013
  br i1 %cmp, label %if.then, label %if.end, !dbg !3014

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 8), align 16, !dbg !3015
  br label %return, !dbg !3016

if.end:                                           ; preds = %entry
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3017
  %calls_alloca = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 20, !dbg !3018
  %bf.load = load i32, i32* %calls_alloca, align 8, !dbg !3019
  %bf.set = or i32 %bf.load, 524288, !dbg !3019
  store i32 %bf.set, i32* %calls_alloca, align 8, !dbg !3019
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %size, i64 0, i32 0, !dbg !3020
  %bf.load1 = load i32, i32* %3, align 8, !dbg !3020
  %bf.clear2 = and i32 %bf.load1, 16711680, !dbg !3020
  %cmp3 = icmp eq i32 %bf.clear2, 0, !dbg !3022
  br i1 %cmp3, label %if.end9, label %land.lhs.true, !dbg !3023

land.lhs.true:                                    ; preds = %if.end
  %cmp7 = icmp eq i32 %bf.clear2, 1048576, !dbg !3024
  br i1 %cmp7, label %if.end9, label %if.then8, !dbg !3025

if.then8:                                         ; preds = %land.lhs.true
  %call = tail call %struct.rtx_def* @convert_to_mode(i32 16, %struct.rtx_def* %size, i32 1) #6, !dbg !3026
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2993, metadata !DIExpression()), !dbg !3010
  br label %if.end9, !dbg !3027

if.end9:                                          ; preds = %land.lhs.true, %if.end, %if.then8
  %size.addr.0 = phi %struct.rtx_def* [ %call, %if.then8 ], [ %size, %land.lhs.true ], [ %size, %if.end ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %size.addr.0, metadata !2993, metadata !DIExpression()), !dbg !3010
  %4 = load i32, i32* @ix86_preferred_stack_boundary, align 4, !dbg !3028
  store i32 %4, i32* getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 23), align 8, !dbg !3029
  %5 = load i32, i32* @ix86_isa_flags, align 4, !dbg !3030
  %and = and i32 %5, 32, !dbg !3030
  %cmp10 = icmp eq i32 %and, 0, !dbg !3030
  %sub = select i1 %cmp10, i64 15, i64 31, !dbg !3032
  %call11 = tail call %struct.rtx_def* @plus_constant(%struct.rtx_def* %size.addr.0, i64 %sub) #8, !dbg !3033
  %call12 = tail call %struct.rtx_def* @force_operand(%struct.rtx_def* %call11, %struct.rtx_def* null) #6, !dbg !3034
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call12, metadata !2993, metadata !DIExpression()), !dbg !3010
  %call13 = tail call fastcc %struct.rtx_def* @round_push(%struct.rtx_def* %call12) #8, !dbg !3035
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call13, metadata !2993, metadata !DIExpression()), !dbg !3010
  tail call void @do_pending_stack_adjust() #6, !dbg !3037
  %6 = load i32, i32* getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 0, i32 2), align 8, !dbg !3038
  %7 = load i32, i32* @ix86_preferred_stack_boundary, align 4, !dbg !3038
  %div14 = lshr i32 %7, 3, !dbg !3038
  %rem = urem i32 %6, %div14, !dbg !3038
  %tobool = icmp eq i32 %rem, 0, !dbg !3038
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3038

cond.true:                                        ; preds = %if.end9
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1234, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3038
  br label %cond.end, !dbg !3038

cond.end:                                         ; preds = %if.end9, %cond.true
  %cmp16 = icmp eq %struct.rtx_def* %target, null, !dbg !3039
  br i1 %cmp16, label %if.then32, label %lor.lhs.false, !dbg !3041

lor.lhs.false:                                    ; preds = %cond.end
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %target, i64 0, i32 0, !dbg !3042
  %bf.load18 = load i32, i32* %8, align 8, !dbg !3042
  %bf.clear19 = and i32 %bf.load18, 65535, !dbg !3042
  %cmp20 = icmp eq i32 %bf.clear19, 37, !dbg !3042
  br i1 %cmp20, label %lor.lhs.false22, label %if.then32, !dbg !3043

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %call23 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %target) #8, !dbg !3044
  %cmp24 = icmp ult i32 %call23, 53, !dbg !3045
  br i1 %cmp24, label %if.then32, label %lor.lhs.false26, !dbg !3046

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %bf.load27 = load i32, i32* %8, align 8, !dbg !3047
  %bf.clear29 = and i32 %bf.load27, 16711680, !dbg !3047
  %cmp30 = icmp eq i32 %bf.clear29, 1048576, !dbg !3048
  br i1 %cmp30, label %if.end34, label %if.then32, !dbg !3049

if.then32:                                        ; preds = %lor.lhs.false26, %lor.lhs.false22, %lor.lhs.false, %cond.end
  %call33 = tail call %struct.rtx_def* @gen_reg_rtx(i32 16) #6, !dbg !3050
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call33, metadata !2994, metadata !DIExpression()), !dbg !3010
  br label %if.end34, !dbg !3051

if.end34:                                         ; preds = %lor.lhs.false26, %if.then32
  %target.addr.0 = phi %struct.rtx_def* [ %call33, %if.then32 ], [ %target, %lor.lhs.false26 ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %target.addr.0, metadata !2994, metadata !DIExpression()), !dbg !3010
  tail call void @mark_reg_pointer(%struct.rtx_def* %target.addr.0, i32 %known_align) #6, !dbg !3052
  %9 = load i32, i32* @target_flags, align 4, !dbg !3053
  %and35 = and i32 %9, 524288, !dbg !3053
  %cmp36 = icmp eq i32 %and35, 0, !dbg !3053
  br i1 %cmp36, label %if.else, label %if.then38, !dbg !3054

if.then38:                                        ; preds = %if.end34
  %10 = load i32, i32* @word_mode, align 4, !dbg !3055
  call void @llvm.dbg.value(metadata i32 %10, metadata !2996, metadata !DIExpression()), !dbg !3056
  %cmp39 = icmp eq i32 %10, 0, !dbg !3057
  br i1 %cmp39, label %if.then41, label %if.then38.if.end44_crit_edge, !dbg !3059

if.then38.if.end44_crit_edge:                     ; preds = %if.then38
  %.pre = load %struct.insn_operand_data*, %struct.insn_operand_data** getelementptr inbounds ([0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i64 0, i64 2414, i32 3), align 8, !dbg !3060
  br label %if.end44, !dbg !3059

if.then41:                                        ; preds = %if.then38
  %11 = load %struct.insn_operand_data*, %struct.insn_operand_data** getelementptr inbounds ([0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i64 0, i64 2414, i32 3), align 8, !dbg !3061
  %mode42 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %11, i64 1, i32 2, !dbg !3062
  %bf.load43 = load i16, i16* %mode42, align 8, !dbg !3062
  %bf.cast = zext i16 %bf.load43 to i32, !dbg !3062
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !2996, metadata !DIExpression()), !dbg !3056
  br label %if.end44, !dbg !3063

if.end44:                                         ; preds = %if.then38.if.end44_crit_edge, %if.then41
  %12 = phi %struct.insn_operand_data* [ %11, %if.then41 ], [ %.pre, %if.then38.if.end44_crit_edge ], !dbg !3060
  %mode.0 = phi i32 [ %bf.cast, %if.then41 ], [ %10, %if.then38.if.end44_crit_edge ], !dbg !3056
  call void @llvm.dbg.value(metadata i32 %mode.0, metadata !2996, metadata !DIExpression()), !dbg !3056
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %12, i64 1, i32 0, !dbg !3064
  %13 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8, !dbg !3064
  call void @llvm.dbg.value(metadata i32 (%struct.rtx_def*, i32)* %13, metadata !2999, metadata !DIExpression()), !dbg !3056
  %tobool46 = icmp eq i32 (%struct.rtx_def*, i32)* %13, null, !dbg !3065
  br i1 %tobool46, label %if.end53, label %land.lhs.true47, !dbg !3067

land.lhs.true47:                                  ; preds = %if.end44
  %call48 = tail call i32 %13(%struct.rtx_def* %call13, i32 %mode.0) #6, !dbg !3068
  %tobool49 = icmp eq i32 %call48, 0, !dbg !3068
  br i1 %tobool49, label %if.then50, label %if.end53, !dbg !3069

if.then50:                                        ; preds = %land.lhs.true47
  %call51 = tail call %struct.rtx_def* @convert_to_mode(i32 %mode.0, %struct.rtx_def* %call13, i32 1) #6, !dbg !3070
  %call52 = tail call %struct.rtx_def* @copy_to_mode_reg(i32 %mode.0, %struct.rtx_def* %call51) #8, !dbg !3071
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call52, metadata !2993, metadata !DIExpression()), !dbg !3010
  br label %if.end53, !dbg !3072

if.end53:                                         ; preds = %land.lhs.true47, %if.end44, %if.then50
  %size.addr.1 = phi %struct.rtx_def* [ %call13, %land.lhs.true47 ], [ %call52, %if.then50 ], [ %call13, %if.end44 ], !dbg !3010
  call void @llvm.dbg.value(metadata %struct.rtx_def* %size.addr.1, metadata !2993, metadata !DIExpression()), !dbg !3010
  %call54 = tail call %struct.rtx_def* @gen_allocate_stack(%struct.rtx_def* %target.addr.0, %struct.rtx_def* %size.addr.1) #6, !dbg !3073
  %call55 = tail call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call54) #6, !dbg !3074
  br label %if.end70, !dbg !3075

if.else:                                          ; preds = %if.end34
  %14 = load i8, i8* getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 34), align 2, !dbg !3076
  %tobool56 = icmp eq i8 %14, 0, !dbg !3077
  br i1 %tobool56, label %if.end64, label %if.then57, !dbg !3078

if.then57:                                        ; preds = %if.else
  %call58 = tail call %struct.rtx_def* @gen_label_rtx() #6, !dbg !3079
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call58, metadata !3009, metadata !DIExpression()), !dbg !3080
  %15 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3081
  %16 = load %struct.rtx_def*, %struct.rtx_def** @stack_limit_rtx, align 8, !dbg !3082
  %call59 = tail call %struct.rtx_def* @expand_binop(i32 16, %struct.optab_d* getelementptr inbounds ([159 x %struct.optab_d], [159 x %struct.optab_d]* @optab_table, i64 0, i64 14), %struct.rtx_def* %15, %struct.rtx_def* %16, %struct.rtx_def* null, i32 1, i32 2) #6, !dbg !3083
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call59, metadata !3005, metadata !DIExpression()), !dbg !3080
  tail call void @emit_cmp_and_jump_insns(%struct.rtx_def* %call59, %struct.rtx_def* %call13, i32 86, %struct.rtx_def* null, i32 16, i32 1, %struct.rtx_def* %call58) #6, !dbg !3084
  %call60 = tail call %struct.rtx_def* @gen_trap() #6, !dbg !3085
  %call61 = tail call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call60) #6, !dbg !3087
  %call62 = tail call %struct.rtx_def* @emit_barrier() #6, !dbg !3088
  %call63 = tail call %struct.rtx_def* @emit_label(%struct.rtx_def* %call58) #6, !dbg !3089
  br label %if.end64, !dbg !3090

if.end64:                                         ; preds = %if.else, %if.then57
  %17 = load i32, i32* @flag_stack_check, align 4, !dbg !3091
  %tobool65 = icmp eq i32 %17, 0, !dbg !3091
  br i1 %tobool65, label %if.else67, label %if.then66, !dbg !3093

if.then66:                                        ; preds = %if.end64
  tail call void @anti_adjust_stack_and_probe(%struct.rtx_def* %call13, i8 zeroext 0) #8, !dbg !3094
  br label %if.end68, !dbg !3094

if.else67:                                        ; preds = %if.end64
  tail call void @anti_adjust_stack(%struct.rtx_def* %call13) #8, !dbg !3095
  br label %if.end68

if.end68:                                         ; preds = %if.else67, %if.then66
  %18 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 8), align 16, !dbg !3096
  %call69 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %target.addr.0, %struct.rtx_def* %18) #6, !dbg !3097
  br label %if.end70

if.end70:                                         ; preds = %if.end68, %if.end53
  %19 = load i32, i32* @ix86_isa_flags, align 4, !dbg !3098
  %and71 = and i32 %19, 32, !dbg !3098
  %cmp72 = icmp eq i32 %and71, 0, !dbg !3098
  %sub76 = select i1 %cmp72, i64 15, i64 31, !dbg !3098
  %call78 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub76) #6, !dbg !3098
  %call79 = tail call %struct.rtx_def* @expand_binop(i32 16, %struct.optab_d* getelementptr inbounds ([159 x %struct.optab_d], [159 x %struct.optab_d]* @optab_table, i64 0, i64 12), %struct.rtx_def* %target.addr.0, %struct.rtx_def* %call78, %struct.rtx_def* null, i32 1, i32 3) #6, !dbg !3101
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call79, metadata !2994, metadata !DIExpression()), !dbg !3010
  %20 = load i32, i32* @ix86_isa_flags, align 4, !dbg !3102
  %and80 = and i32 %20, 32, !dbg !3102
  %cmp81 = icmp eq i32 %and80, 0, !dbg !3102
  %div84 = select i1 %cmp81, i64 16, i64 32, !dbg !3102
  %call86 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %div84) #6, !dbg !3102
  %call87 = tail call %struct.rtx_def* @expand_divmod(i32 0, i32 67, i32 16, %struct.rtx_def* %call79, %struct.rtx_def* %call86, %struct.rtx_def* null, i32 1) #6, !dbg !3103
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call87, metadata !2994, metadata !DIExpression()), !dbg !3010
  %21 = load i32, i32* @ix86_isa_flags, align 4, !dbg !3104
  %and88 = and i32 %21, 32, !dbg !3104
  %cmp89 = icmp eq i32 %and88, 0, !dbg !3104
  %div92 = select i1 %cmp89, i64 16, i64 32, !dbg !3104
  %call94 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %div92) #6, !dbg !3104
  %call95 = tail call %struct.rtx_def* @expand_mult(i32 16, %struct.rtx_def* %call87, %struct.rtx_def* %call94, %struct.rtx_def* null, i32 1) #6, !dbg !3105
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call95, metadata !2994, metadata !DIExpression()), !dbg !3010
  %22 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3106
  %nonlocal_goto_save_area = getelementptr inbounds %struct.function, %struct.function* %22, i64 0, i32 8, !dbg !3108
  %23 = load %union.tree_node*, %union.tree_node** %nonlocal_goto_save_area, align 8, !dbg !3108
  %cmp97 = icmp eq %union.tree_node* %23, null, !dbg !3109
  br i1 %cmp97, label %return, label %if.then99, !dbg !3110

if.then99:                                        ; preds = %if.end70
  tail call void @update_nonlocal_goto_save_area() #8, !dbg !3111
  br label %return, !dbg !3111

return:                                           ; preds = %if.end70, %if.then99, %if.then
  %retval.0 = phi %struct.rtx_def* [ %1, %if.then ], [ %call95, %if.then99 ], [ %call95, %if.end70 ], !dbg !3010
  ret %struct.rtx_def* %retval.0, !dbg !3112
}

declare dso_local %struct.rtx_def* @convert_to_mode(i32, %struct.rtx_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @round_push(%struct.rtx_def* %size) unnamed_addr #4 !dbg !3113 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %size, metadata !3115, metadata !DIExpression()), !dbg !3120
  %0 = load i32, i32* @ix86_preferred_stack_boundary, align 4, !dbg !3121
  %div = lshr i32 %0, 3, !dbg !3122
  call void @llvm.dbg.value(metadata i32 %div, metadata !3116, metadata !DIExpression()), !dbg !3120
  %cmp = icmp eq i32 %div, 1, !dbg !3123
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3125

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %size, i64 0, i32 0, !dbg !3126
  %bf.load = load i32, i32* %1, align 8, !dbg !3126
  %bf.clear = and i32 %bf.load, 65535, !dbg !3126
  %cmp1 = icmp eq i32 %bf.clear, 30, !dbg !3126
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !3127

if.then2:                                         ; preds = %if.end
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %size, i64 0, i32 1, !dbg !3128
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3128
  %2 = load i64, i64* %arrayidx, align 8, !dbg !3128
  %conv = zext i32 %div to i64, !dbg !3129
  %add = add nsw i64 %2, %conv, !dbg !3130
  %sub = add nsw i64 %add, -1, !dbg !3131
  %3 = srem i64 %sub, %conv, !dbg !3132
  %mul = sub i64 %sub, %3, !dbg !3132
  call void @llvm.dbg.value(metadata i64 %mul, metadata !3117, metadata !DIExpression()), !dbg !3133
  %cmp9 = icmp eq i64 %2, %mul, !dbg !3134
  br i1 %cmp9, label %cleanup, label %if.then11, !dbg !3136

if.then11:                                        ; preds = %if.then2
  %call = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %mul) #6, !dbg !3137
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3115, metadata !DIExpression()), !dbg !3120
  br label %cleanup, !dbg !3138

if.else:                                          ; preds = %if.end
  %sub13 = add nsw i32 %div, -1, !dbg !3139
  %conv14 = sext i32 %sub13 to i64, !dbg !3139
  %call15 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv14) #6, !dbg !3139
  %call16 = tail call %struct.rtx_def* @expand_binop(i32 16, %struct.optab_d* getelementptr inbounds ([159 x %struct.optab_d], [159 x %struct.optab_d]* @optab_table, i64 0, i64 12), %struct.rtx_def* %size, %struct.rtx_def* %call15, %struct.rtx_def* null, i32 1, i32 3) #6, !dbg !3141
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call16, metadata !3115, metadata !DIExpression()), !dbg !3120
  %conv17 = zext i32 %div to i64, !dbg !3142
  %call18 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv17) #6, !dbg !3142
  %call19 = tail call %struct.rtx_def* @expand_divmod(i32 0, i32 67, i32 16, %struct.rtx_def* %call16, %struct.rtx_def* %call18, %struct.rtx_def* null, i32 1) #6, !dbg !3143
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call19, metadata !3115, metadata !DIExpression()), !dbg !3120
  %call21 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv17) #6, !dbg !3144
  %call22 = tail call %struct.rtx_def* @expand_mult(i32 16, %struct.rtx_def* %call19, %struct.rtx_def* %call21, %struct.rtx_def* null, i32 1) #6, !dbg !3145
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call22, metadata !3115, metadata !DIExpression()), !dbg !3120
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.else, %if.then11, %entry
  %retval.0 = phi %struct.rtx_def* [ %size, %entry ], [ %call22, %if.else ], [ %call, %if.then11 ], [ %size, %if.then2 ], !dbg !3120
  ret %struct.rtx_def* %retval.0, !dbg !3146
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !3147 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3154, metadata !DIExpression()), !dbg !3155
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3156
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3156
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3156
  ret i32 %0, !dbg !3157
}

declare dso_local %struct.rtx_def* @gen_allocate_stack(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_label_rtx() local_unnamed_addr #1

declare dso_local void @emit_cmp_and_jump_insns(%struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*, i32, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_trap() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_barrier() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_label(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @anti_adjust_stack_and_probe(%struct.rtx_def* %size, i8 zeroext %adjust_back) local_unnamed_addr #4 !dbg !3158 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %size, metadata !3162, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i8 %adjust_back, metadata !3163, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i32 16, metadata !3164, metadata !DIExpression()), !dbg !3178
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %size, i64 0, i32 0, !dbg !3179
  %bf.load = load i32, i32* %0, align 8, !dbg !3179
  %bf.clear = and i32 %bf.load, 16711680, !dbg !3179
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !3181
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !3182

land.lhs.true:                                    ; preds = %entry
  %cmp4 = icmp eq i32 %bf.clear, 1048576, !dbg !3183
  br i1 %cmp4, label %if.end, label %if.then, !dbg !3184

if.then:                                          ; preds = %land.lhs.true
  %call = tail call %struct.rtx_def* @convert_to_mode(i32 16, %struct.rtx_def* %size, i32 1) #6, !dbg !3185
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3162, metadata !DIExpression()), !dbg !3178
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !3186
  %bf.load5.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !3187
  br label %if.end, !dbg !3188

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %bf.load5 = phi i32 [ %bf.load5.pre, %if.then ], [ %bf.load, %land.lhs.true ], [ %bf.load, %entry ], !dbg !3187
  %size.addr.0 = phi %struct.rtx_def* [ %call, %if.then ], [ %size, %land.lhs.true ], [ %size, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %size.addr.0, metadata !3162, metadata !DIExpression()), !dbg !3178
  %bf.clear6 = and i32 %bf.load5, 65535, !dbg !3187
  %cmp7 = icmp eq i32 %bf.clear6, 30, !dbg !3189
  br i1 %cmp7, label %land.lhs.true8, label %if.else25, !dbg !3190

land.lhs.true8:                                   ; preds = %if.end
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %size.addr.0, i64 0, i32 1, !dbg !3191
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3191
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3191
  %cmp9 = icmp slt i64 %1, 28672, !dbg !3192
  br i1 %cmp9, label %if.then10, label %if.else25, !dbg !3193

if.then10:                                        ; preds = %land.lhs.true8
  call void @llvm.dbg.value(metadata i64 %1, metadata !3166, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i8 1, metadata !3170, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 4096, metadata !3169, metadata !DIExpression()), !dbg !3194
  br label %for.cond, !dbg !3195

for.cond:                                         ; preds = %if.end18, %if.then10
  %i.0 = phi i64 [ 4096, %if.then10 ], [ %add, %if.end18 ], !dbg !3197
  %first_probe.0 = phi i1 [ true, %if.then10 ], [ false, %if.end18 ]
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !3169, metadata !DIExpression()), !dbg !3194
  %cmp14 = icmp slt i64 %i.0, %1, !dbg !3198
  br i1 %cmp14, label %for.body, label %for.end, !dbg !3200

for.body:                                         ; preds = %for.cond
  br i1 %first_probe.0, label %if.then15, label %if.else, !dbg !3201

if.then15:                                        ; preds = %for.body
  %call16 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 8208) #6, !dbg !3203
  tail call void @anti_adjust_stack(%struct.rtx_def* %call16) #8, !dbg !3206
  call void @llvm.dbg.value(metadata i8 0, metadata !3170, metadata !DIExpression()), !dbg !3194
  br label %if.end18, !dbg !3207

if.else:                                          ; preds = %for.body
  %call17 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 4096) #6, !dbg !3208
  tail call void @anti_adjust_stack(%struct.rtx_def* %call17) #8, !dbg !3209
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then15
  call void @llvm.dbg.value(metadata i8 0, metadata !3170, metadata !DIExpression()), !dbg !3194
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3210
  tail call fastcc void @emit_stack_probe(%struct.rtx_def* %2) #8, !dbg !3211
  %add = add nuw nsw i64 %i.0, 4096, !dbg !3212
  call void @llvm.dbg.value(metadata i64 %add, metadata !3169, metadata !DIExpression()), !dbg !3194
  br label %for.cond, !dbg !3213, !llvm.loop !3214

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i64 [ %i.0, %for.cond ], !dbg !3197
  %first_probe.0.lcssa = phi i1 [ %first_probe.0, %for.cond ]
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa, metadata !3169, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa, metadata !3169, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa, metadata !3169, metadata !DIExpression()), !dbg !3194
  br i1 %first_probe.0.lcssa, label %if.then20, label %if.else22, !dbg !3216

if.then20:                                        ; preds = %for.end
  %call21 = tail call %struct.rtx_def* @plus_constant(%struct.rtx_def* %size.addr.0, i64 4112) #8, !dbg !3217
  tail call void @anti_adjust_stack(%struct.rtx_def* %call21) #8, !dbg !3219
  br label %if.end24, !dbg !3219

if.else22:                                        ; preds = %for.end
  %sub = sub nsw i64 4096, %i.0.lcssa, !dbg !3220
  %call23 = tail call %struct.rtx_def* @plus_constant(%struct.rtx_def* %size.addr.0, i64 %sub) #8, !dbg !3221
  tail call void @anti_adjust_stack(%struct.rtx_def* %call23) #8, !dbg !3222
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then20
  %3 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3223
  tail call fastcc void @emit_stack_probe(%struct.rtx_def* %3) #8, !dbg !3224
  br label %if.end47, !dbg !3225

if.else25:                                        ; preds = %land.lhs.true8, %if.end
  %call26 = tail call %struct.rtx_def* @gen_label_rtx() #6, !dbg !3226
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call26, metadata !3176, metadata !DIExpression()), !dbg !3227
  %call27 = tail call %struct.rtx_def* @gen_label_rtx() #6, !dbg !3228
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call27, metadata !3177, metadata !DIExpression()), !dbg !3227
  %call28 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 -4096) #6, !dbg !3229
  %call29 = tail call %struct.rtx_def* @simplify_gen_binary(i32 61, i32 16, %struct.rtx_def* %size.addr.0, %struct.rtx_def* %call28) #6, !dbg !3230
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call29, metadata !3171, metadata !DIExpression()), !dbg !3227
  %call30 = tail call %struct.rtx_def* @force_operand(%struct.rtx_def* %call29, %struct.rtx_def* null) #6, !dbg !3231
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call30, metadata !3173, metadata !DIExpression()), !dbg !3227
  %call31 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 4112) #6, !dbg !3232
  tail call void @anti_adjust_stack(%struct.rtx_def* %call31) #8, !dbg !3233
  %4 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3234
  %call32 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 50, i32 16, %struct.rtx_def* %4, %struct.rtx_def* %call30) #6, !dbg !3234
  %call33 = tail call %struct.rtx_def* @force_operand(%struct.rtx_def* %call32, %struct.rtx_def* null) #6, !dbg !3235
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call33, metadata !3174, metadata !DIExpression()), !dbg !3227
  %call34 = tail call %struct.rtx_def* @emit_label(%struct.rtx_def* %call26) #6, !dbg !3236
  %5 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3237
  tail call void @emit_cmp_and_jump_insns(%struct.rtx_def* %5, %struct.rtx_def* %call33, i32 81, %struct.rtx_def* null, i32 16, i32 1, %struct.rtx_def* %call27) #6, !dbg !3238
  %call35 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 4096) #6, !dbg !3239
  tail call void @anti_adjust_stack(%struct.rtx_def* %call35) #8, !dbg !3240
  %6 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3241
  tail call fastcc void @emit_stack_probe(%struct.rtx_def* %6) #8, !dbg !3242
  tail call void @emit_jump(%struct.rtx_def* %call26) #6, !dbg !3243
  %call36 = tail call %struct.rtx_def* @emit_label(%struct.rtx_def* %call27) #6, !dbg !3244
  %call37 = tail call %struct.rtx_def* @simplify_gen_binary(i32 50, i32 16, %struct.rtx_def* %size.addr.0, %struct.rtx_def* %call29) #6, !dbg !3245
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call37, metadata !3175, metadata !DIExpression()), !dbg !3227
  %7 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !3246
  %cmp38 = icmp eq %struct.rtx_def* %call37, %7, !dbg !3248
  br i1 %cmp38, label %if.end47, label %if.then39, !dbg !3249

if.then39:                                        ; preds = %if.else25
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call37, i64 0, i32 0, !dbg !3250
  %bf.load40 = load i32, i32* %8, align 8, !dbg !3250
  %bf.clear41 = and i32 %bf.load40, 65535, !dbg !3250
  %cmp42 = icmp eq i32 %bf.clear41, 30, !dbg !3253
  br i1 %cmp42, label %if.end45, label %if.then43, !dbg !3254

if.then43:                                        ; preds = %if.then39
  %call44 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 50, i32 16, %struct.rtx_def* %size.addr.0, %struct.rtx_def* %call30) #6, !dbg !3255
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call44, metadata !3175, metadata !DIExpression()), !dbg !3227
  br label %if.end45, !dbg !3256

if.end45:                                         ; preds = %if.then39, %if.then43
  %temp.0 = phi %struct.rtx_def* [ %call44, %if.then43 ], [ %call37, %if.then39 ], !dbg !3227
  call void @llvm.dbg.value(metadata %struct.rtx_def* %temp.0, metadata !3175, metadata !DIExpression()), !dbg !3227
  tail call void @anti_adjust_stack(%struct.rtx_def* %temp.0) #8, !dbg !3257
  %9 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3258
  tail call fastcc void @emit_stack_probe(%struct.rtx_def* %9) #8, !dbg !3259
  br label %if.end47, !dbg !3260

if.end47:                                         ; preds = %if.else25, %if.end45, %if.end24
  %tobool48 = icmp eq i8 %adjust_back, 0, !dbg !3261
  br i1 %tobool48, label %if.else51, label %if.then49, !dbg !3263

if.then49:                                        ; preds = %if.end47
  %call50 = tail call %struct.rtx_def* @plus_constant(%struct.rtx_def* %size.addr.0, i64 4112) #8, !dbg !3264
  tail call void @adjust_stack(%struct.rtx_def* %call50) #8, !dbg !3265
  br label %if.end53, !dbg !3265

if.else51:                                        ; preds = %if.end47
  %call52 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 4112) #6, !dbg !3266
  tail call void @adjust_stack(%struct.rtx_def* %call52) #8, !dbg !3267
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %if.then49
  ret void, !dbg !3268
}

declare dso_local %struct.rtx_def* @expand_divmod(i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @expand_mult(i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @set_stack_check_libfunc(%struct.rtx_def* %libfunc) local_unnamed_addr #4 !dbg !3269 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %libfunc, metadata !3271, metadata !DIExpression()), !dbg !3272
  store %struct.rtx_def* %libfunc, %struct.rtx_def** @stack_check_libfunc, align 8, !dbg !3273
  ret void, !dbg !3274
}

; Function Attrs: nounwind uwtable
define dso_local void @probe_stack_range(i64 %first, %struct.rtx_def* %size) local_unnamed_addr #4 !dbg !3275 {
entry:
  call void @llvm.dbg.value(metadata i64 %first, metadata !3279, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata %struct.rtx_def* %size, metadata !3280, metadata !DIExpression()), !dbg !3303
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %size, i64 0, i32 0, !dbg !3304
  %bf.load = load i32, i32* %0, align 8, !dbg !3304
  %bf.clear = and i32 %bf.load, 16711680, !dbg !3304
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !3306
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !3307

land.lhs.true:                                    ; preds = %entry
  %cmp4 = icmp eq i32 %bf.clear, 1048576, !dbg !3308
  br i1 %cmp4, label %if.end, label %if.then, !dbg !3309

if.then:                                          ; preds = %land.lhs.true
  %call = tail call %struct.rtx_def* @convert_to_mode(i32 16, %struct.rtx_def* %size, i32 1) #6, !dbg !3310
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3280, metadata !DIExpression()), !dbg !3303
  br label %if.end, !dbg !3311

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %size.addr.0 = phi %struct.rtx_def* [ %call, %if.then ], [ %size, %land.lhs.true ], [ %size, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %size.addr.0, metadata !3280, metadata !DIExpression()), !dbg !3303
  %1 = load %struct.rtx_def*, %struct.rtx_def** @stack_check_libfunc, align 8, !dbg !3312
  %tobool = icmp eq %struct.rtx_def* %1, null, !dbg !3312
  br i1 %tobool, label %if.else, label %if.then5, !dbg !3313

if.then5:                                         ; preds = %if.end
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3314
  %call6 = tail call %struct.rtx_def* @plus_constant(%struct.rtx_def* %size.addr.0, i64 %first) #8, !dbg !3314
  %call7 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 50, i32 16, %struct.rtx_def* %2, %struct.rtx_def* %call6) #6, !dbg !3314
  %call8 = tail call %struct.rtx_def* @memory_address_addr_space(i32 16, %struct.rtx_def* %call7, i8 zeroext 0) #8, !dbg !3314
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call8, metadata !3281, metadata !DIExpression()), !dbg !3315
  %3 = load %struct.rtx_def*, %struct.rtx_def** @stack_check_libfunc, align 8, !dbg !3316
  tail call void (%struct.rtx_def*, i32, i32, i32, ...) @emit_library_call(%struct.rtx_def* %3, i32 0, i32 0, i32 1, %struct.rtx_def* %call8, i32 16) #6, !dbg !3317
  br label %if.end64, !dbg !3318

if.else:                                          ; preds = %if.end
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %size.addr.0, i64 0, i32 0, !dbg !3319
  %bf.load9 = load i32, i32* %4, align 8, !dbg !3319
  %bf.clear10 = and i32 %bf.load9, 65535, !dbg !3319
  %cmp11 = icmp eq i32 %bf.clear10, 30, !dbg !3319
  br i1 %cmp11, label %land.lhs.true12, label %if.else27, !dbg !3320

land.lhs.true12:                                  ; preds = %if.else
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %size.addr.0, i64 0, i32 1, !dbg !3321
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3321
  %5 = load i64, i64* %arrayidx, align 8, !dbg !3321
  %cmp13 = icmp slt i64 %5, 28672, !dbg !3322
  br i1 %cmp13, label %if.then14, label %if.else27, !dbg !3323

if.then14:                                        ; preds = %land.lhs.true12
  call void @llvm.dbg.value(metadata i64 %5, metadata !3284, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i64 4096, metadata !3287, metadata !DIExpression()), !dbg !3324
  br label %for.cond, !dbg !3325

for.cond:                                         ; preds = %for.body, %if.then14
  %i.0 = phi i64 [ 4096, %if.then14 ], [ %add22, %for.body ], !dbg !3327
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !3287, metadata !DIExpression()), !dbg !3324
  %cmp19 = icmp slt i64 %i.0, %5, !dbg !3328
  %6 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3324
  br i1 %cmp19, label %for.body, label %for.end, !dbg !3330

for.body:                                         ; preds = %for.cond
  %add = add nsw i64 %i.0, %first, !dbg !3331
  %sub = sub nsw i64 0, %add, !dbg !3331
  %call20 = tail call %struct.rtx_def* @plus_constant(%struct.rtx_def* %6, i64 %sub) #8, !dbg !3331
  %call21 = tail call %struct.rtx_def* @memory_address_addr_space(i32 16, %struct.rtx_def* %call20, i8 zeroext 0) #8, !dbg !3331
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call21, metadata !3288, metadata !DIExpression()), !dbg !3324
  tail call fastcc void @emit_stack_probe(%struct.rtx_def* %call21) #8, !dbg !3333
  %add22 = add nuw nsw i64 %i.0, 4096, !dbg !3334
  call void @llvm.dbg.value(metadata i64 %add22, metadata !3287, metadata !DIExpression()), !dbg !3324
  br label %for.cond, !dbg !3335, !llvm.loop !3336

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct.rtx_def* [ %6, %for.cond ], !dbg !3324
  %add23 = add nsw i64 %5, %first, !dbg !3338
  %sub24 = sub nsw i64 0, %add23, !dbg !3338
  %call25 = tail call %struct.rtx_def* @plus_constant(%struct.rtx_def* %.lcssa, i64 %sub24) #8, !dbg !3338
  %call26 = tail call %struct.rtx_def* @memory_address_addr_space(i32 16, %struct.rtx_def* %call25, i8 zeroext 0) #8, !dbg !3338
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call26, metadata !3288, metadata !DIExpression()), !dbg !3324
  tail call fastcc void @emit_stack_probe(%struct.rtx_def* %call26) #8, !dbg !3339
  br label %if.end64, !dbg !3340

if.else27:                                        ; preds = %land.lhs.true12, %if.else
  %call28 = tail call %struct.rtx_def* @gen_label_rtx() #6, !dbg !3341
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call28, metadata !3295, metadata !DIExpression()), !dbg !3342
  %call29 = tail call %struct.rtx_def* @gen_label_rtx() #6, !dbg !3343
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call29, metadata !3296, metadata !DIExpression()), !dbg !3342
  %call30 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 -4096) #6, !dbg !3344
  %call31 = tail call %struct.rtx_def* @simplify_gen_binary(i32 61, i32 16, %struct.rtx_def* %size.addr.0, %struct.rtx_def* %call30) #6, !dbg !3345
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call31, metadata !3289, metadata !DIExpression()), !dbg !3342
  %call32 = tail call %struct.rtx_def* @force_operand(%struct.rtx_def* %call31, %struct.rtx_def* null) #6, !dbg !3346
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call32, metadata !3291, metadata !DIExpression()), !dbg !3342
  %7 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3347
  %call33 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %first) #6, !dbg !3347
  %call34 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 50, i32 16, %struct.rtx_def* %7, %struct.rtx_def* %call33) #6, !dbg !3347
  %call35 = tail call %struct.rtx_def* @force_operand(%struct.rtx_def* %call34, %struct.rtx_def* null) #6, !dbg !3348
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call35, metadata !3292, metadata !DIExpression()), !dbg !3342
  %call36 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 50, i32 16, %struct.rtx_def* %call35, %struct.rtx_def* %call32) #6, !dbg !3349
  %call37 = tail call %struct.rtx_def* @force_operand(%struct.rtx_def* %call36, %struct.rtx_def* null) #6, !dbg !3350
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call37, metadata !3293, metadata !DIExpression()), !dbg !3342
  %call38 = tail call %struct.rtx_def* @emit_label(%struct.rtx_def* %call28) #6, !dbg !3351
  tail call void @emit_cmp_and_jump_insns(%struct.rtx_def* %call35, %struct.rtx_def* %call37, i32 81, %struct.rtx_def* null, i32 16, i32 1, %struct.rtx_def* %call29) #6, !dbg !3352
  %call39 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 4096) #6, !dbg !3353
  %call40 = tail call %struct.rtx_def* @expand_binop(i32 16, %struct.optab_d* getelementptr inbounds ([159 x %struct.optab_d], [159 x %struct.optab_d]* @optab_table, i64 0, i64 14), %struct.rtx_def* %call35, %struct.rtx_def* %call39, %struct.rtx_def* %call35, i32 1, i32 2) #6, !dbg !3354
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call40, metadata !3294, metadata !DIExpression()), !dbg !3342
  %cmp41 = icmp eq %struct.rtx_def* %call40, %call35, !dbg !3355
  br i1 %cmp41, label %cond.end, label %cond.true, !dbg !3355

cond.true:                                        ; preds = %if.else27
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1503, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3355
  br label %cond.end, !dbg !3355

cond.end:                                         ; preds = %if.else27, %cond.true
  tail call fastcc void @emit_stack_probe(%struct.rtx_def* %call35) #8, !dbg !3356
  tail call void @emit_jump(%struct.rtx_def* %call28) #6, !dbg !3357
  %call42 = tail call %struct.rtx_def* @emit_label(%struct.rtx_def* %call29) #6, !dbg !3358
  %call43 = tail call %struct.rtx_def* @simplify_gen_binary(i32 50, i32 16, %struct.rtx_def* %size.addr.0, %struct.rtx_def* %call31) #6, !dbg !3359
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call43, metadata !3294, metadata !DIExpression()), !dbg !3342
  %8 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !3360
  %cmp44 = icmp eq %struct.rtx_def* %call43, %8, !dbg !3361
  br i1 %cmp44, label %if.end64, label %if.then45, !dbg !3362

if.then45:                                        ; preds = %cond.end
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call43, i64 0, i32 0, !dbg !3363
  %bf.load47 = load i32, i32* %9, align 8, !dbg !3363
  %bf.clear48 = and i32 %bf.load47, 65535, !dbg !3363
  %cmp49 = icmp eq i32 %bf.clear48, 30, !dbg !3364
  br i1 %cmp49, label %if.then50, label %if.else57, !dbg !3365

if.then50:                                        ; preds = %if.then45
  %u51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call43, i64 0, i32 1, !dbg !3366
  %arrayidx53 = bitcast %union.u* %u51 to i64*, !dbg !3366
  %10 = load i64, i64* %arrayidx53, align 8, !dbg !3366
  call void @llvm.dbg.value(metadata i64 %10, metadata !3300, metadata !DIExpression()), !dbg !3367
  %sub54 = sub nsw i64 0, %10, !dbg !3368
  %call55 = tail call %struct.rtx_def* @plus_constant(%struct.rtx_def* %call37, i64 %sub54) #8, !dbg !3368
  %call56 = tail call %struct.rtx_def* @memory_address_addr_space(i32 16, %struct.rtx_def* %call55, i8 zeroext 0) #8, !dbg !3368
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call56, metadata !3297, metadata !DIExpression()), !dbg !3369
  br label %if.end61, !dbg !3370

if.else57:                                        ; preds = %if.then45
  %call58 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 50, i32 16, %struct.rtx_def* %size.addr.0, %struct.rtx_def* %call32) #6, !dbg !3371
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call58, metadata !3294, metadata !DIExpression()), !dbg !3342
  %call59 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 50, i32 16, %struct.rtx_def* %call37, %struct.rtx_def* %call58) #6, !dbg !3373
  %call60 = tail call %struct.rtx_def* @memory_address_addr_space(i32 16, %struct.rtx_def* %call59, i8 zeroext 0) #8, !dbg !3373
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call60, metadata !3297, metadata !DIExpression()), !dbg !3369
  br label %if.end61

if.end61:                                         ; preds = %if.else57, %if.then50
  %addr46.0 = phi %struct.rtx_def* [ %call56, %if.then50 ], [ %call60, %if.else57 ], !dbg !3374
  call void @llvm.dbg.value(metadata %struct.rtx_def* %addr46.0, metadata !3297, metadata !DIExpression()), !dbg !3369
  tail call fastcc void @emit_stack_probe(%struct.rtx_def* %addr46.0) #8, !dbg !3375
  br label %if.end64, !dbg !3376

if.end64:                                         ; preds = %cond.end, %for.end, %if.end61, %if.then5
  ret void, !dbg !3377
}

declare dso_local void @emit_library_call(%struct.rtx_def*, i32, i32, i32, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_stack_probe(%struct.rtx_def* %address) unnamed_addr #4 !dbg !3378 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %address, metadata !3380, metadata !DIExpression()), !dbg !3382
  %0 = load i32, i32* @word_mode, align 4, !dbg !3383
  %call = tail call %struct.rtx_def* @gen_rtx_MEM(i32 %0, %struct.rtx_def* %address) #6, !dbg !3384
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3381, metadata !DIExpression()), !dbg !3382
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !3385
  %bf.load = load i32, i32* %1, align 8, !dbg !3386
  %bf.set = or i32 %bf.load, 134217728, !dbg !3386
  store i32 %bf.set, i32* %1, align 8, !dbg !3386
  %call1 = tail call %struct.rtx_def* @gen_probe_stack(%struct.rtx_def* %call) #6, !dbg !3387
  %call2 = tail call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call1) #6, !dbg !3389
  ret void, !dbg !3390
}

declare dso_local %struct.rtx_def* @simplify_gen_binary(i32, i32, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @emit_jump(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @hard_function_value(%union.tree_node* %valtype, %union.tree_node* %func, %union.tree_node* %fntype, i32 %outgoing) local_unnamed_addr #4 !dbg !3391 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %valtype, metadata !3395, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata %union.tree_node* %func, metadata !3396, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata %union.tree_node* %fntype, metadata !3397, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i32 %outgoing, metadata !3398, metadata !DIExpression()), !dbg !3404
  %0 = load %struct.rtx_def* (%union.tree_node*, %union.tree_node*, i8)*, %struct.rtx_def* (%union.tree_node*, %union.tree_node*, i8)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 88, i32 15), align 8, !dbg !3405
  %tobool = icmp eq %union.tree_node* %func, null, !dbg !3406
  %func.fntype = select i1 %tobool, %union.tree_node* %fntype, %union.tree_node* %func, !dbg !3406
  %conv = trunc i32 %outgoing to i8, !dbg !3407
  %call = tail call %struct.rtx_def* %0(%union.tree_node* %valtype, %union.tree_node* %func.fntype, i8 zeroext %conv) #6, !dbg !3408
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3399, metadata !DIExpression()), !dbg !3404
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !3409
  %bf.load = load i32, i32* %1, align 8, !dbg !3409
  %bf.clear = and i32 %bf.load, 65535, !dbg !3409
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !3409
  br i1 %cmp, label %land.lhs.true, label %if.end26, !dbg !3410

land.lhs.true:                                    ; preds = %entry
  %bf.clear3 = and i32 %bf.load, 16711680, !dbg !3411
  %cmp4 = icmp eq i32 %bf.clear3, 65536, !dbg !3412
  br i1 %cmp4, label %if.then, label %if.end26, !dbg !3413

if.then:                                          ; preds = %land.lhs.true
  %call6 = tail call i64 @int_size_in_bytes(%union.tree_node* %valtype) #6, !dbg !3414
  call void @llvm.dbg.value(metadata i64 %call6, metadata !3400, metadata !DIExpression()), !dbg !3415
  br label %for.cond, !dbg !3416

for.cond:                                         ; preds = %for.inc, %if.then
  %tmpmode.0.in.in = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @class_narrowest_mode, i64 0, i64 2), %if.then ], [ %arrayidx16, %for.inc ]
  %tmpmode.0.in = load i8, i8* %tmpmode.0.in.in, align 1, !dbg !3418
  %cond = icmp eq i8 %tmpmode.0.in, 0, !dbg !3419
  br i1 %cond, label %cond.true20.loopexit, label %for.body, !dbg !3419

for.body:                                         ; preds = %for.cond
  %idxprom = zext i8 %tmpmode.0.in to i64, !dbg !3420
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !3420
  %2 = load i8, i8* %arrayidx, align 1, !dbg !3420
  %conv11 = zext i8 %2 to i64, !dbg !3420
  %cmp12 = icmp ugt i64 %call6, %conv11, !dbg !3424
  br i1 %cmp12, label %for.inc, label %for.end, !dbg !3425

for.inc:                                          ; preds = %for.body
  %arrayidx16 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_wider, i64 0, i64 %idxprom, !dbg !3426
  br label %for.cond, !dbg !3427, !llvm.loop !3428

for.end:                                          ; preds = %for.body
  %tmpmode.0.in.lcssa8 = phi i8 [ %tmpmode.0.in, %for.body ], !dbg !3418
  %tmpmode.0.le = zext i8 %tmpmode.0.in.lcssa8 to i32, !dbg !3418
  br i1 false, label %for.end.cond.true20_crit_edge, label %cond.end22, !dbg !3430

for.end.cond.true20_crit_edge:                    ; preds = %for.end
  br label %cond.true20, !dbg !3430

cond.true20.loopexit:                             ; preds = %for.cond
  br label %cond.true20, !dbg !3430

cond.true20:                                      ; preds = %for.end.cond.true20_crit_edge, %cond.true20.loopexit
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1707, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3430
  br label %cond.end22, !dbg !3430

cond.end22:                                       ; preds = %for.end, %cond.true20
  %tmpmode.02 = phi i32 [ %tmpmode.0.le, %for.end ], [ 0, %cond.true20 ]
  %bf.load24 = load i32, i32* %1, align 8, !dbg !3431
  %bf.shl = shl nuw nsw i32 %tmpmode.02, 16, !dbg !3431
  %bf.clear25 = and i32 %bf.load24, -16711681, !dbg !3431
  %bf.set = or i32 %bf.clear25, %bf.shl, !dbg !3431
  store i32 %bf.set, i32* %1, align 8, !dbg !3431
  br label %if.end26, !dbg !3432

if.end26:                                         ; preds = %cond.end22, %land.lhs.true, %entry
  ret %struct.rtx_def* %call, !dbg !3433
}

declare dso_local i64 @int_size_in_bytes(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @hard_libcall_value(i32 %mode, %struct.rtx_def* %fun) local_unnamed_addr #4 !dbg !3434 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3436, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata %struct.rtx_def* %fun, metadata !3437, metadata !DIExpression()), !dbg !3438
  %0 = load %struct.rtx_def* (i32, %struct.rtx_def*)*, %struct.rtx_def* (i32, %struct.rtx_def*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 88, i32 16), align 8, !dbg !3439
  %call = tail call %struct.rtx_def* %0(i32 %mode, %struct.rtx_def* %fun) #6, !dbg !3440
  ret %struct.rtx_def* %call, !dbg !3441
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rtx_to_tree_code(i32 %code) local_unnamed_addr #4 !dbg !3442 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3446, metadata !DIExpression()), !dbg !3448
  switch i32 %code, label %sw.default [
    i32 49, label %sw.epilog
    i32 50, label %sw.bb1
    i32 52, label %sw.bb2
    i32 55, label %sw.bb3
    i32 70, label %sw.bb4
    i32 71, label %sw.bb5
  ], !dbg !3449

sw.bb1:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 64, metadata !3447, metadata !DIExpression()), !dbg !3448
  br label %sw.epilog, !dbg !3450

sw.bb2:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 65, metadata !3447, metadata !DIExpression()), !dbg !3448
  br label %sw.epilog, !dbg !3452

sw.bb3:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 75, metadata !3447, metadata !DIExpression()), !dbg !3448
  br label %sw.epilog, !dbg !3453

sw.bb4:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 80, metadata !3447, metadata !DIExpression()), !dbg !3448
  br label %sw.epilog, !dbg !3454

sw.bb5:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 81, metadata !3447, metadata !DIExpression()), !dbg !3448
  br label %sw.epilog, !dbg !3455

sw.default:                                       ; preds = %entry
  call void @llvm.dbg.value(metadata i32 188, metadata !3447, metadata !DIExpression()), !dbg !3448
  br label %sw.epilog, !dbg !3456

sw.epilog:                                        ; preds = %entry, %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %tcode.0 = phi i32 [ 188, %sw.default ], [ 81, %sw.bb5 ], [ 80, %sw.bb4 ], [ 75, %sw.bb3 ], [ 65, %sw.bb2 ], [ 64, %sw.bb1 ], [ 63, %entry ], !dbg !3457
  call void @llvm.dbg.value(metadata i32 %tcode.0, metadata !3447, metadata !DIExpression()), !dbg !3448
  ret i32 %tcode.0, !dbg !3458
}

declare dso_local void @gt_ggc_mx_rtx_def(i8*) #1

declare dso_local void @gt_pch_nx_rtx_def(i8*) #1

declare dso_local %struct.rtx_def* @expand_expr_real(%union.tree_node*, %struct.rtx_def*, i32, i32, %struct.rtx_def**) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_probe_stack(%struct.rtx_def*) local_unnamed_addr #1

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
!llvm.module.flags = !{!1607, !1608, !1609}
!llvm.ident = !{!1610}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "stack_check_libfunc", scope: !2, file: !3, line: 1346, type: !574, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !563, globals: !1590, nameTableKind: None)
!3 = !DIFile(filename: "explow.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !156, !163, !168, !187, !194, !201, !395, !538, !548, !554}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !135, line: 36, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155}
!137 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!141 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!142 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!143 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!144 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!145 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!146 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!147 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!148 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!149 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!150 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!151 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!152 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!153 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!154 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!155 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !157, line: 30, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!158 = !{!159, !160, !161, !162}
!159 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!160 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!161 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!162 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !164, line: 474, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!165 = !{!166, !167}
!166 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!167 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !169, line: 280, baseType: !7, size: 32, elements: !170)
!169 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!171 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!176 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!177 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!178 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!182 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!183 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!184 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!185 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!186 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !169, line: 1817, baseType: !7, size: 32, elements: !188)
!188 = !{!189, !190, !191, !192, !193}
!189 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!190 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!191 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!192 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!193 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !169, line: 1805, baseType: !7, size: 32, elements: !195)
!195 = !{!196, !197, !198, !199, !200}
!196 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!197 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!198 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!199 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!200 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !169, line: 39, baseType: !7, size: 32, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394}
!203 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!204 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!205 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!206 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!207 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!208 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!209 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!210 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!211 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!212 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!213 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!214 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!215 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!216 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!217 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!218 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!219 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!220 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!221 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!222 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!223 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!224 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!225 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!226 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!227 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!228 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!229 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!230 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!231 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!232 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!233 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!234 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!235 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!236 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!237 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!238 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!239 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!240 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!241 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!242 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!243 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!244 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!245 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!246 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!247 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!248 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!249 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!250 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!251 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!252 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!253 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!254 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!255 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!256 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!257 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!258 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!259 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!260 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!261 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!262 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!263 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!264 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!265 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!266 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!267 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!268 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!269 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!270 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!271 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!272 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!273 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!274 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!275 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!276 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!277 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!278 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!279 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!280 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!281 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!282 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!283 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!284 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!285 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!286 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!287 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!288 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!289 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!290 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!291 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!292 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!293 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!294 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!295 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!296 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!297 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!298 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!299 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!300 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!301 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!302 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!303 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!304 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!305 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!306 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!307 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!308 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!309 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!310 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!311 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!312 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!313 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!314 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!315 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!316 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!317 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!318 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!319 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!320 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!321 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!322 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!323 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!324 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!325 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!326 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!327 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!328 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!329 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!330 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!331 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!332 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!333 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!334 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!335 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!336 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!337 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!338 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!339 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!340 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!341 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!342 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!343 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!344 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!345 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!346 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!347 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!348 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!349 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!350 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!351 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!352 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!353 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!354 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!355 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!366 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!367 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!368 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!369 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!370 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!371 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!372 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!373 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!374 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!375 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!376 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!377 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!378 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!379 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!380 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!381 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!382 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!383 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!384 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!385 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!386 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!387 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!388 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!389 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!390 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!391 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!392 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!393 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!394 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!395 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !396, line: 45, baseType: !7, size: 32, elements: !397)
!396 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!397 = !{!398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537}
!398 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!399 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!400 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!401 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!402 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!403 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!404 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!405 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!406 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!407 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!408 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!409 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!410 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!411 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!412 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!413 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!414 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!415 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!416 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!417 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!418 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!419 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!420 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!421 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!422 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!423 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!424 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!425 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!426 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!427 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!428 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!429 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!430 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!431 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!432 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!433 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!434 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!435 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!436 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!437 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!438 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!439 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!440 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!441 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!442 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!443 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!444 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!445 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!446 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!447 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!448 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!449 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!450 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!451 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!452 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!453 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!454 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!455 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!456 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!457 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!458 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!459 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!460 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!461 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!462 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!463 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!464 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!465 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!466 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!467 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!468 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!469 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!470 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!471 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!472 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!473 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!474 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!475 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!476 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!477 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!478 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!479 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!480 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!481 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!482 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!483 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!484 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!485 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!486 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!487 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!488 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!489 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!490 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!491 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!492 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!493 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!494 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!495 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!496 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!497 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!498 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!499 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!500 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!501 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!502 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!503 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!504 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!505 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!506 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!507 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!508 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!509 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!510 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!511 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!512 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!513 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!514 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!515 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!516 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!517 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!518 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!519 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!520 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!521 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!522 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!523 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!524 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!525 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!526 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!527 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!528 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!529 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!530 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!531 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!532 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!533 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!534 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!535 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!536 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!537 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!538 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tls_model", file: !539, line: 97, baseType: !7, size: 32, elements: !540)
!539 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!540 = !{!541, !542, !543, !544, !545, !546, !547}
!541 = !DIEnumerator(name: "TLS_MODEL_NONE", value: 0, isUnsigned: true)
!542 = !DIEnumerator(name: "TLS_MODEL_EMULATED", value: 1, isUnsigned: true)
!543 = !DIEnumerator(name: "TLS_MODEL_REAL", value: 2, isUnsigned: true)
!544 = !DIEnumerator(name: "TLS_MODEL_GLOBAL_DYNAMIC", value: 2, isUnsigned: true)
!545 = !DIEnumerator(name: "TLS_MODEL_LOCAL_DYNAMIC", value: 3, isUnsigned: true)
!546 = !DIEnumerator(name: "TLS_MODEL_INITIAL_EXEC", value: 4, isUnsigned: true)
!547 = !DIEnumerator(name: "TLS_MODEL_LOCAL_EXEC", value: 5, isUnsigned: true)
!548 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "save_level", file: !549, line: 769, baseType: !7, size: 32, elements: !550)
!549 = !DIFile(filename: "./expr.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!550 = !{!551, !552, !553}
!551 = !DIEnumerator(name: "SAVE_BLOCK", value: 0, isUnsigned: true)
!552 = !DIEnumerator(name: "SAVE_FUNCTION", value: 1, isUnsigned: true)
!553 = !DIEnumerator(name: "SAVE_NONLOCAL", value: 2, isUnsigned: true)
!554 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "expand_modifier", file: !549, line: 52, baseType: !7, size: 32, elements: !555)
!555 = !{!556, !557, !558, !559, !560, !561, !562}
!556 = !DIEnumerator(name: "EXPAND_NORMAL", value: 0, isUnsigned: true)
!557 = !DIEnumerator(name: "EXPAND_STACK_PARM", value: 1, isUnsigned: true)
!558 = !DIEnumerator(name: "EXPAND_SUM", value: 2, isUnsigned: true)
!559 = !DIEnumerator(name: "EXPAND_CONST_ADDRESS", value: 3, isUnsigned: true)
!560 = !DIEnumerator(name: "EXPAND_INITIALIZER", value: 4, isUnsigned: true)
!561 = !DIEnumerator(name: "EXPAND_WRITE", value: 5, isUnsigned: true)
!562 = !DIEnumerator(name: "EXPAND_MEMORY", value: 6, isUnsigned: true)
!563 = !{!564, !565, !566, !567, !570, !571, !573, !134, !395, !5, !201, !574, !538, !630}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!566 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!573 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !539, line: 50, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !396, line: 240, size: 384, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !576, file: !396, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !576, file: !396, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !576, file: !396, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !576, file: !396, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !576, file: !396, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !576, file: !396, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !576, file: !396, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !576, file: !396, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !576, file: !396, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !576, file: !396, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !576, file: !396, line: 321, baseType: !589, size: 320, offset: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !396, line: 315, size: 320, elements: !590)
!590 = !{!591, !1525, !1527, !1588, !1589}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !589, file: !396, line: 316, baseType: !592, size: 64)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !593, size: 64, elements: !608)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !396, line: 183, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !396, line: 166, size: 64, elements: !595)
!595 = !{!596, !597, !598, !599, !600, !610, !611, !623, !626, !629, !1501, !1504, !1515, !1522}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !594, file: !396, line: 168, baseType: !566, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !594, file: !396, line: 169, baseType: !7, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !594, file: !396, line: 170, baseType: !571, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !594, file: !396, line: 171, baseType: !574, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !594, file: !396, line: 172, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !539, line: 53, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !396, line: 359, size: 128, elements: !604)
!604 = !{!605, !606}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !603, file: !396, line: 360, baseType: !566, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !603, file: !396, line: 361, baseType: !607, size: 64, offset: 64)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 64, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 1)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !594, file: !396, line: 173, baseType: !5, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !594, file: !396, line: 174, baseType: !612, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !396, line: 133, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !396, line: 115, size: 32, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !613, file: !396, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !613, file: !396, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !613, file: !396, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !613, file: !396, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !613, file: !396, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !613, file: !396, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !613, file: !396, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !613, file: !396, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !594, file: !396, line: 175, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !396, line: 175, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !594, file: !396, line: 176, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !539, line: 46, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !594, file: !396, line: 177, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !539, line: 56, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !169, line: 3371, size: 1792, elements: !633)
!633 = !{!634, !667, !673, !686, !705, !716, !721, !728, !734, !747, !759, !797, !802, !830, !838, !839, !844, !853, !859, !864, !868, !872, !1136, !1185, !1191, !1197, !1204, !1230, !1244, !1261, !1273, !1295, !1311, !1483}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !632, file: !169, line: 3372, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !169, line: 360, size: 64, elements: !636)
!636 = !{!637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !635, file: !169, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !635, file: !169, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !635, file: !169, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !635, file: !169, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !635, file: !169, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !635, file: !169, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !635, file: !169, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !635, file: !169, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !635, file: !169, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !635, file: !169, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !635, file: !169, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !635, file: !169, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !635, file: !169, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !635, file: !169, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !635, file: !169, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !635, file: !169, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !635, file: !169, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !635, file: !169, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !635, file: !169, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !635, file: !169, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !635, file: !169, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !635, file: !169, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !635, file: !169, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !635, file: !169, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !635, file: !169, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !635, file: !169, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !635, file: !169, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !635, file: !169, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !635, file: !169, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !635, file: !169, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !632, file: !169, line: 3373, baseType: !668, size: 192)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !169, line: 402, size: 192, elements: !669)
!669 = !{!670, !671, !672}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !668, file: !169, line: 403, baseType: !635, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !668, file: !169, line: 404, baseType: !630, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !668, file: !169, line: 405, baseType: !630, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !632, file: !169, line: 3374, baseType: !674, size: 320)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !169, line: 1384, size: 320, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !674, file: !169, line: 1385, baseType: !668, size: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !674, file: !169, line: 1386, baseType: !678, size: 128, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !679, line: 58, baseType: !680)
!679 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !679, line: 54, size: 128, elements: !681)
!681 = !{!682, !684}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !680, file: !679, line: 56, baseType: !683, size: 64)
!683 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !680, file: !679, line: 57, baseType: !685, size: 64, offset: 64)
!685 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !632, file: !169, line: 3375, baseType: !687, size: 256)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !169, line: 1397, size: 256, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !687, file: !169, line: 1398, baseType: !668, size: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !687, file: !169, line: 1399, baseType: !691, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !693, line: 52, size: 256, elements: !694)
!693 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!694 = !{!695, !696, !697, !698, !699, !700, !701}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !692, file: !693, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !692, file: !693, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !692, file: !693, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !692, file: !693, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !692, file: !693, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !692, file: !693, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !692, file: !693, line: 62, baseType: !702, size: 192, offset: 64)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 192, elements: !703)
!703 = !{!704}
!704 = !DISubrange(count: 3)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !632, file: !169, line: 3376, baseType: !706, size: 256)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !169, line: 1408, size: 256, elements: !707)
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !706, file: !169, line: 1409, baseType: !668, size: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !706, file: !169, line: 1410, baseType: !710, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !712, line: 27, size: 192, elements: !713)
!712 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !711, file: !712, line: 29, baseType: !678, size: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !711, file: !712, line: 30, baseType: !5, size: 32, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !632, file: !169, line: 3377, baseType: !717, size: 256)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !169, line: 1437, size: 256, elements: !718)
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !717, file: !169, line: 1438, baseType: !668, size: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !717, file: !169, line: 1439, baseType: !630, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !632, file: !169, line: 3378, baseType: !722, size: 256)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !169, line: 1418, size: 256, elements: !723)
!723 = !{!724, !725, !726}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !722, file: !169, line: 1419, baseType: !668, size: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !722, file: !169, line: 1420, baseType: !566, size: 32, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !722, file: !169, line: 1421, baseType: !727, size: 8, offset: 224)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 8, elements: !608)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !632, file: !169, line: 3379, baseType: !729, size: 320)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !169, line: 1428, size: 320, elements: !730)
!730 = !{!731, !732, !733}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !729, file: !169, line: 1429, baseType: !668, size: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !729, file: !169, line: 1430, baseType: !630, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !729, file: !169, line: 1431, baseType: !630, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !632, file: !169, line: 3380, baseType: !735, size: 320)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !169, line: 1460, size: 320, elements: !736)
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !735, file: !169, line: 1461, baseType: !668, size: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !735, file: !169, line: 1462, baseType: !739, size: 128, offset: 192)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !740, line: 31, size: 128, elements: !741)
!740 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!741 = !{!742, !745, !746}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !739, file: !740, line: 32, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !739, file: !740, line: 33, baseType: !7, size: 32, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !739, file: !740, line: 34, baseType: !7, size: 32, offset: 96)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !632, file: !169, line: 3381, baseType: !748, size: 384)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !169, line: 2507, size: 384, elements: !749)
!749 = !{!750, !751, !756, !757, !758}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !748, file: !169, line: 2508, baseType: !668, size: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !748, file: !169, line: 2509, baseType: !752, size: 32, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !753, line: 58, baseType: !754)
!753 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !755, line: 44, baseType: !7)
!755 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!756 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !748, file: !169, line: 2510, baseType: !7, size: 32, offset: 224)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !748, file: !169, line: 2511, baseType: !630, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !748, file: !169, line: 2512, baseType: !630, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !632, file: !169, line: 3382, baseType: !760, size: 896)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !169, line: 2652, size: 896, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !760, file: !169, line: 2653, baseType: !748, size: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !760, file: !169, line: 2654, baseType: !630, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !760, file: !169, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !760, file: !169, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !760, file: !169, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !760, file: !169, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !760, file: !169, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !760, file: !169, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !760, file: !169, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !760, file: !169, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !760, file: !169, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !760, file: !169, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !760, file: !169, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !760, file: !169, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !760, file: !169, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !760, file: !169, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !760, file: !169, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !760, file: !169, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !760, file: !169, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !760, file: !169, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !760, file: !169, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !760, file: !169, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !760, file: !169, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !760, file: !169, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !760, file: !169, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !760, file: !169, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !760, file: !169, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !760, file: !169, line: 2703, baseType: !7, size: 32, offset: 512)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !760, file: !169, line: 2705, baseType: !630, size: 64, offset: 576)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !760, file: !169, line: 2706, baseType: !630, size: 64, offset: 640)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !760, file: !169, line: 2707, baseType: !630, size: 64, offset: 704)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !760, file: !169, line: 2708, baseType: !630, size: 64, offset: 768)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !760, file: !169, line: 2711, baseType: !795, size: 64, offset: 832)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !169, line: 2711, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !632, file: !169, line: 3383, baseType: !798, size: 960)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !169, line: 2756, size: 960, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !798, file: !169, line: 2757, baseType: !760, size: 896)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !798, file: !169, line: 2758, baseType: !574, size: 64, offset: 896)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !632, file: !169, line: 3384, baseType: !803, size: 1472)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !169, line: 3114, size: 1472, elements: !804)
!804 = !{!805, !826, !827, !828, !829}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !803, file: !169, line: 3115, baseType: !806, size: 1216)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !169, line: 2984, size: 1216, elements: !807)
!807 = !{!808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !806, file: !169, line: 2985, baseType: !798, size: 960)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !806, file: !169, line: 2986, baseType: !630, size: 64, offset: 960)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !806, file: !169, line: 2987, baseType: !630, size: 64, offset: 1024)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !806, file: !169, line: 2988, baseType: !630, size: 64, offset: 1088)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !806, file: !169, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !806, file: !169, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !806, file: !169, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !806, file: !169, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !806, file: !169, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !806, file: !169, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !806, file: !169, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !806, file: !169, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !806, file: !169, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !806, file: !169, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !806, file: !169, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !806, file: !169, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !806, file: !169, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !806, file: !169, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !803, file: !169, line: 3117, baseType: !630, size: 64, offset: 1216)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !803, file: !169, line: 3119, baseType: !630, size: 64, offset: 1280)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !803, file: !169, line: 3121, baseType: !630, size: 64, offset: 1344)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !803, file: !169, line: 3123, baseType: !630, size: 64, offset: 1408)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !632, file: !169, line: 3385, baseType: !831, size: 1088)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !169, line: 2874, size: 1088, elements: !832)
!832 = !{!833, !834, !835}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !831, file: !169, line: 2875, baseType: !798, size: 960)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !831, file: !169, line: 2876, baseType: !574, size: 64, offset: 960)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !831, file: !169, line: 2877, baseType: !836, size: 64, offset: 1024)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !169, line: 2856, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !632, file: !169, line: 3386, baseType: !806, size: 1216)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !632, file: !169, line: 3387, baseType: !840, size: 1280)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !169, line: 3093, size: 1280, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !840, file: !169, line: 3094, baseType: !806, size: 1216)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !840, file: !169, line: 3095, baseType: !836, size: 64, offset: 1216)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !632, file: !169, line: 3388, baseType: !845, size: 1216)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !169, line: 2824, size: 1216, elements: !846)
!846 = !{!847, !848, !849, !850, !851, !852}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !845, file: !169, line: 2825, baseType: !760, size: 896)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !845, file: !169, line: 2827, baseType: !630, size: 64, offset: 896)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !845, file: !169, line: 2828, baseType: !630, size: 64, offset: 960)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !845, file: !169, line: 2829, baseType: !630, size: 64, offset: 1024)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !845, file: !169, line: 2830, baseType: !630, size: 64, offset: 1088)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !845, file: !169, line: 2831, baseType: !630, size: 64, offset: 1152)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !632, file: !169, line: 3389, baseType: !854, size: 1024)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !169, line: 2850, size: 1024, elements: !855)
!855 = !{!856, !857, !858}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !854, file: !169, line: 2851, baseType: !798, size: 960)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !854, file: !169, line: 2852, baseType: !566, size: 32, offset: 960)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !854, file: !169, line: 2853, baseType: !566, size: 32, offset: 992)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !632, file: !169, line: 3390, baseType: !860, size: 1024)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !169, line: 2857, size: 1024, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !860, file: !169, line: 2858, baseType: !798, size: 960)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !860, file: !169, line: 2859, baseType: !836, size: 64, offset: 960)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !632, file: !169, line: 3391, baseType: !865, size: 960)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !169, line: 2862, size: 960, elements: !866)
!866 = !{!867}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !865, file: !169, line: 2863, baseType: !798, size: 960)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !632, file: !169, line: 3392, baseType: !869, size: 1472)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !169, line: 3304, size: 1472, elements: !870)
!870 = !{!871}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !869, file: !169, line: 3305, baseType: !803, size: 1472)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !632, file: !169, line: 3393, baseType: !873, size: 1792)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !169, line: 3248, size: 1792, elements: !874)
!874 = !{!875, !876, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !873, file: !169, line: 3249, baseType: !803, size: 1472)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !873, file: !169, line: 3251, baseType: !877, size: 64, offset: 1472)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !879, line: 463, size: 1152, elements: !880)
!879 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!880 = !{!881, !1045, !1048, !1051, !1054, !1057, !1058, !1059, !1060, !1061, !1062, !1088, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !878, file: !879, line: 464, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !157, line: 194, size: 384, elements: !884)
!884 = !{!885, !934, !947, !961, !1013, !1026}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !883, file: !157, line: 197, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !157, line: 182, baseType: !887)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !157, line: 116, size: 704, elements: !889)
!889 = !{!890, !891, !892, !893, !894, !895, !922, !931, !932, !933}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !888, file: !157, line: 119, baseType: !887, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !888, file: !157, line: 122, baseType: !887, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !888, file: !157, line: 123, baseType: !887, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !888, file: !157, line: 126, baseType: !566, size: 32, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !888, file: !157, line: 129, baseType: !156, size: 32, offset: 224)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !888, file: !157, line: 165, baseType: !896, size: 192, offset: 256)
!896 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !157, line: 132, size: 192, elements: !897)
!897 = !{!898, !911, !917}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !896, file: !157, line: 137, baseType: !899, size: 128)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !157, line: 133, size: 128, elements: !900)
!900 = !{!901, !910}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !899, file: !157, line: 135, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !157, line: 93, size: 320, elements: !904)
!904 = !{!905, !906, !907, !908, !909}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !903, file: !157, line: 96, baseType: !902, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !903, file: !157, line: 97, baseType: !902, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !903, file: !157, line: 101, baseType: !630, size: 64, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !903, file: !157, line: 106, baseType: !630, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !903, file: !157, line: 111, baseType: !630, size: 64, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !899, file: !157, line: 136, baseType: !902, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !896, file: !157, line: 151, baseType: !912, size: 192)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !157, line: 139, size: 192, elements: !913)
!913 = !{!914, !915, !916}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !912, file: !157, line: 141, baseType: !630, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !912, file: !157, line: 145, baseType: !630, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !912, file: !157, line: 150, baseType: !566, size: 32, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !896, file: !157, line: 164, baseType: !918, size: 128)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !157, line: 153, size: 128, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !918, file: !157, line: 161, baseType: !630, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !918, file: !157, line: 163, baseType: !752, size: 32, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !888, file: !157, line: 168, baseType: !923, size: 64, offset: 448)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !157, line: 67, size: 320, elements: !925)
!925 = !{!926, !927, !928, !929, !930}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !924, file: !157, line: 70, baseType: !923, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !924, file: !157, line: 73, baseType: !887, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !924, file: !157, line: 78, baseType: !630, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !924, file: !157, line: 85, baseType: !574, size: 64, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !924, file: !157, line: 88, baseType: !566, size: 32, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !888, file: !157, line: 173, baseType: !574, size: 64, offset: 512)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !888, file: !157, line: 173, baseType: !574, size: 64, offset: 576)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !888, file: !157, line: 177, baseType: !565, size: 8, offset: 640)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !883, file: !157, line: 200, baseType: !935, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !157, line: 185, baseType: !937)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !157, line: 185, size: 128, elements: !938)
!938 = !{!939}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !937, file: !157, line: 185, baseType: !940, size: 128)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !157, line: 184, baseType: !941)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !157, line: 184, size: 128, elements: !942)
!942 = !{!943, !944, !945}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !941, file: !157, line: 184, baseType: !7, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !941, file: !157, line: 184, baseType: !7, size: 32, offset: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !941, file: !157, line: 184, baseType: !946, size: 64, offset: 64)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !886, size: 64, elements: !608)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !883, file: !157, line: 203, baseType: !948, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !157, line: 189, baseType: !950)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !157, line: 189, size: 128, elements: !951)
!951 = !{!952}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !950, file: !157, line: 189, baseType: !953, size: 128)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !157, line: 188, baseType: !954)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !157, line: 188, size: 128, elements: !955)
!955 = !{!956, !957, !958}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !954, file: !157, line: 188, baseType: !7, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !954, file: !157, line: 188, baseType: !7, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !954, file: !157, line: 188, baseType: !959, size: 64, offset: 64)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !960, size: 64, elements: !608)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !157, line: 180, baseType: !923)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !883, file: !157, line: 207, baseType: !962, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !963, line: 144, baseType: !964)
!963 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !963, line: 100, size: 896, elements: !966)
!966 = !{!967, !975, !980, !985, !987, !990, !991, !992, !993, !994, !999, !1001, !1002, !1007, !1012}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !965, file: !963, line: 102, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !963, line: 52, baseType: !969)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !963, line: 47, baseType: !7)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !965, file: !963, line: 105, baseType: !976, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !963, line: 59, baseType: !977)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!566, !973, !973}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !965, file: !963, line: 108, baseType: !981, size: 64, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !963, line: 63, baseType: !982)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{null, !570}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !965, file: !963, line: 111, baseType: !986, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !965, file: !963, line: 114, baseType: !988, size: 64, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !989, line: 46, baseType: !683)
!989 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!990 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !965, file: !963, line: 117, baseType: !988, size: 64, offset: 320)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !965, file: !963, line: 120, baseType: !988, size: 64, offset: 384)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !965, file: !963, line: 124, baseType: !7, size: 32, offset: 448)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !965, file: !963, line: 128, baseType: !7, size: 32, offset: 480)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !965, file: !963, line: 131, baseType: !995, size: 64, offset: 512)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !963, line: 75, baseType: !996)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!570, !988, !988}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !965, file: !963, line: 132, baseType: !1000, size: 64, offset: 576)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !963, line: 78, baseType: !982)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !965, file: !963, line: 135, baseType: !570, size: 64, offset: 640)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !965, file: !963, line: 136, baseType: !1003, size: 64, offset: 704)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !963, line: 82, baseType: !1004)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!570, !570, !988, !988}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !965, file: !963, line: 137, baseType: !1008, size: 64, offset: 768)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !963, line: 83, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !570, !570}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !965, file: !963, line: 141, baseType: !7, size: 32, offset: 832)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !883, file: !157, line: 211, baseType: !1014, size: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !169, line: 183, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !169, line: 183, size: 128, elements: !1017)
!1017 = !{!1018}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1016, file: !169, line: 183, baseType: !1019, size: 128)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !169, line: 182, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !169, line: 182, size: 128, elements: !1021)
!1021 = !{!1022, !1023, !1024}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1020, file: !169, line: 182, baseType: !7, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1020, file: !169, line: 182, baseType: !7, size: 32, offset: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1020, file: !169, line: 182, baseType: !1025, size: 64, offset: 64)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 64, elements: !608)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !883, file: !157, line: 220, baseType: !1027, size: 64, offset: 320)
!1027 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !157, line: 217, size: 64, elements: !1028)
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1027, file: !157, line: 218, baseType: !1014, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1027, file: !157, line: 219, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1033, line: 29, baseType: !1034)
!1033 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1033, line: 29, size: 96, elements: !1035)
!1035 = !{!1036}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1034, file: !1033, line: 29, baseType: !1037, size: 96)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1033, line: 27, baseType: !1038)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1033, line: 27, size: 96, elements: !1039)
!1039 = !{!1040, !1041, !1042}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1038, file: !1033, line: 27, baseType: !7, size: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1038, file: !1033, line: 27, baseType: !7, size: 32, offset: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1038, file: !1033, line: 27, baseType: !1043, size: 8, offset: 64)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1044, size: 8, elements: !608)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1033, line: 26, baseType: !565)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !878, file: !879, line: 467, baseType: !1046, size: 64, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !879, line: 467, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !878, file: !879, line: 470, baseType: !1049, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !539, line: 65, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !878, file: !879, line: 473, baseType: !1052, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !879, line: 166, flags: DIFlagFwdDecl)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !878, file: !879, line: 476, baseType: !1055, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !879, line: 476, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !878, file: !879, line: 479, baseType: !962, size: 64, offset: 320)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !878, file: !879, line: 484, baseType: !630, size: 64, offset: 384)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !878, file: !879, line: 488, baseType: !630, size: 64, offset: 448)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !878, file: !879, line: 493, baseType: !630, size: 64, offset: 512)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !878, file: !879, line: 496, baseType: !630, size: 64, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !878, file: !879, line: 501, baseType: !1063, size: 64, offset: 640)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !164, line: 2355, size: 576, elements: !1065)
!1065 = !{!1066, !1069, !1070, !1071, !1072, !1076, !1077, !1082, !1083, !1084, !1085, !1086, !1087}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1064, file: !164, line: 2356, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !164, line: 2356, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1064, file: !164, line: 2357, baseType: !571, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1064, file: !164, line: 2358, baseType: !566, size: 32, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1064, file: !164, line: 2359, baseType: !566, size: 32, offset: 160)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1064, file: !164, line: 2360, baseType: !1073, size: 128, offset: 192)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 128, elements: !1074)
!1074 = !{!1075}
!1075 = !DISubrange(count: 4)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1064, file: !164, line: 2364, baseType: !566, size: 32, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1064, file: !164, line: 2367, baseType: !1078, size: 128, offset: 384)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !164, line: 2349, size: 128, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1078, file: !164, line: 2351, baseType: !574, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1078, file: !164, line: 2352, baseType: !685, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1064, file: !164, line: 2371, baseType: !163, size: 32, offset: 512)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1064, file: !164, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1064, file: !164, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1064, file: !164, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1064, file: !164, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1064, file: !164, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !878, file: !879, line: 504, baseType: !1089, size: 64, offset: 704)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !879, line: 504, flags: DIFlagFwdDecl)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !878, file: !879, line: 507, baseType: !962, size: 64, offset: 768)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !878, file: !879, line: 510, baseType: !566, size: 32, offset: 832)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !878, file: !879, line: 513, baseType: !566, size: 32, offset: 864)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !878, file: !879, line: 516, baseType: !752, size: 32, offset: 896)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !878, file: !879, line: 519, baseType: !752, size: 32, offset: 928)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !878, file: !879, line: 522, baseType: !7, size: 32, offset: 960)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !878, file: !879, line: 523, baseType: !7, size: 32, offset: 992)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !878, file: !879, line: 528, baseType: !571, size: 64, offset: 1024)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !878, file: !879, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !878, file: !879, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !878, file: !879, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !878, file: !879, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !878, file: !879, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !878, file: !879, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !878, file: !879, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !878, file: !879, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !878, file: !879, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !878, file: !879, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !878, file: !879, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !878, file: !879, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !878, file: !879, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !878, file: !879, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !878, file: !879, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !878, file: !879, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !873, file: !169, line: 3254, baseType: !630, size: 64, offset: 1536)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !873, file: !169, line: 3257, baseType: !630, size: 64, offset: 1600)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !873, file: !169, line: 3258, baseType: !630, size: 64, offset: 1664)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !873, file: !169, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !873, file: !169, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !873, file: !169, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !873, file: !169, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !873, file: !169, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !873, file: !169, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !873, file: !169, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !873, file: !169, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !873, file: !169, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !873, file: !169, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !873, file: !169, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !873, file: !169, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !873, file: !169, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !873, file: !169, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !873, file: !169, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !873, file: !169, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !873, file: !169, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !873, file: !169, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !632, file: !169, line: 3394, baseType: !1137, size: 1344)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !169, line: 2279, size: 1344, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1164, !1165, !1166, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1137, file: !169, line: 2280, baseType: !668, size: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1137, file: !169, line: 2281, baseType: !630, size: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1137, file: !169, line: 2282, baseType: !630, size: 64, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1137, file: !169, line: 2283, baseType: !630, size: 64, offset: 320)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1137, file: !169, line: 2284, baseType: !630, size: 64, offset: 384)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1137, file: !169, line: 2285, baseType: !7, size: 32, offset: 448)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1137, file: !169, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1137, file: !169, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1137, file: !169, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1137, file: !169, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1137, file: !169, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1137, file: !169, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1137, file: !169, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1137, file: !169, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1137, file: !169, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1137, file: !169, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1137, file: !169, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1137, file: !169, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1137, file: !169, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1137, file: !169, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1137, file: !169, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1137, file: !169, line: 2305, baseType: !7, size: 32, offset: 512)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1137, file: !169, line: 2306, baseType: !1162, size: 32, offset: 544)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1163, line: 31, baseType: !566)
!1163 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1137, file: !169, line: 2307, baseType: !630, size: 64, offset: 576)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1137, file: !169, line: 2308, baseType: !630, size: 64, offset: 640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1137, file: !169, line: 2314, baseType: !1167, size: 64, offset: 704)
!1167 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !169, line: 2309, size: 64, elements: !1168)
!1168 = !{!1169, !1170, !1171}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1167, file: !169, line: 2310, baseType: !566, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1167, file: !169, line: 2311, baseType: !571, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1167, file: !169, line: 2312, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !169, line: 2277, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1137, file: !169, line: 2315, baseType: !630, size: 64, offset: 768)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1137, file: !169, line: 2316, baseType: !630, size: 64, offset: 832)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1137, file: !169, line: 2317, baseType: !630, size: 64, offset: 896)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1137, file: !169, line: 2318, baseType: !630, size: 64, offset: 960)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1137, file: !169, line: 2319, baseType: !630, size: 64, offset: 1024)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1137, file: !169, line: 2320, baseType: !630, size: 64, offset: 1088)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1137, file: !169, line: 2321, baseType: !630, size: 64, offset: 1152)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1137, file: !169, line: 2322, baseType: !630, size: 64, offset: 1216)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1137, file: !169, line: 2324, baseType: !1183, size: 64, offset: 1280)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !169, line: 2324, flags: DIFlagFwdDecl)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !632, file: !169, line: 3395, baseType: !1186, size: 320)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !169, line: 1469, size: 320, elements: !1187)
!1187 = !{!1188, !1189, !1190}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1186, file: !169, line: 1470, baseType: !668, size: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1186, file: !169, line: 1471, baseType: !630, size: 64, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1186, file: !169, line: 1472, baseType: !630, size: 64, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !632, file: !169, line: 3396, baseType: !1192, size: 320)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !169, line: 1482, size: 320, elements: !1193)
!1193 = !{!1194, !1195, !1196}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1192, file: !169, line: 1483, baseType: !668, size: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1192, file: !169, line: 1484, baseType: !566, size: 32, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1192, file: !169, line: 1485, baseType: !1025, size: 64, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !632, file: !169, line: 3397, baseType: !1198, size: 384)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !169, line: 1829, size: 384, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1198, file: !169, line: 1830, baseType: !668, size: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1198, file: !169, line: 1831, baseType: !752, size: 32, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1198, file: !169, line: 1832, baseType: !630, size: 64, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1198, file: !169, line: 1835, baseType: !1025, size: 64, offset: 320)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !632, file: !169, line: 3398, baseType: !1205, size: 704)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !169, line: 1898, size: 704, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1213, !1214, !1217}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1205, file: !169, line: 1899, baseType: !668, size: 192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1205, file: !169, line: 1902, baseType: !630, size: 64, offset: 192)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1205, file: !169, line: 1905, baseType: !1210, size: 64, offset: 256)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !539, line: 58, baseType: !1211)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !539, line: 57, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1205, file: !169, line: 1908, baseType: !7, size: 32, offset: 320)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1205, file: !169, line: 1911, baseType: !1215, size: 64, offset: 384)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !169, line: 1876, flags: DIFlagFwdDecl)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1205, file: !169, line: 1914, baseType: !1218, size: 256, offset: 448)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !169, line: 1883, size: 256, elements: !1219)
!1219 = !{!1220, !1222, !1223, !1228}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1218, file: !169, line: 1884, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1218, file: !169, line: 1885, baseType: !1221, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1218, file: !169, line: 1891, baseType: !1224, size: 64, offset: 128)
!1224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !169, line: 1891, size: 64, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1224, file: !169, line: 1891, baseType: !1210, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1224, file: !169, line: 1891, baseType: !630, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1218, file: !169, line: 1892, baseType: !1229, size: 64, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !632, file: !169, line: 3399, baseType: !1231, size: 704)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !169, line: 2008, size: 704, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1231, file: !169, line: 2009, baseType: !668, size: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1231, file: !169, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1231, file: !169, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1231, file: !169, line: 2014, baseType: !752, size: 32, offset: 224)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1231, file: !169, line: 2016, baseType: !630, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1231, file: !169, line: 2017, baseType: !1014, size: 64, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1231, file: !169, line: 2019, baseType: !630, size: 64, offset: 384)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1231, file: !169, line: 2020, baseType: !630, size: 64, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1231, file: !169, line: 2021, baseType: !630, size: 64, offset: 512)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1231, file: !169, line: 2022, baseType: !630, size: 64, offset: 576)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1231, file: !169, line: 2023, baseType: !630, size: 64, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !632, file: !169, line: 3400, baseType: !1245, size: 832)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !169, line: 2430, size: 832, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1245, file: !169, line: 2431, baseType: !668, size: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1245, file: !169, line: 2433, baseType: !630, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1245, file: !169, line: 2434, baseType: !630, size: 64, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1245, file: !169, line: 2435, baseType: !630, size: 64, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1245, file: !169, line: 2436, baseType: !630, size: 64, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1245, file: !169, line: 2437, baseType: !1014, size: 64, offset: 448)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1245, file: !169, line: 2438, baseType: !630, size: 64, offset: 512)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1245, file: !169, line: 2440, baseType: !630, size: 64, offset: 576)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1245, file: !169, line: 2441, baseType: !630, size: 64, offset: 640)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1245, file: !169, line: 2443, baseType: !1257, size: 128, offset: 704)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !169, line: 182, baseType: !1258)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !169, line: 182, size: 128, elements: !1259)
!1259 = !{!1260}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1258, file: !169, line: 182, baseType: !1019, size: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !632, file: !169, line: 3401, baseType: !1262, size: 320)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !169, line: 3327, size: 320, elements: !1263)
!1263 = !{!1264, !1265, !1272}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1262, file: !169, line: 3329, baseType: !668, size: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1262, file: !169, line: 3330, baseType: !1266, size: 64, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !169, line: 3320, size: 192, elements: !1268)
!1268 = !{!1269, !1270, !1271}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1267, file: !169, line: 3322, baseType: !1266, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1267, file: !169, line: 3323, baseType: !1266, size: 64, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1267, file: !169, line: 3324, baseType: !630, size: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1262, file: !169, line: 3331, baseType: !1266, size: 64, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !632, file: !169, line: 3402, baseType: !1274, size: 256)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !169, line: 1540, size: 256, elements: !1275)
!1275 = !{!1276, !1277}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1274, file: !169, line: 1541, baseType: !668, size: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1274, file: !169, line: 1542, baseType: !1278, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !169, line: 1538, baseType: !1280)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !169, line: 1538, size: 192, elements: !1281)
!1281 = !{!1282}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1280, file: !169, line: 1538, baseType: !1283, size: 192)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !169, line: 1537, baseType: !1284)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !169, line: 1537, size: 192, elements: !1285)
!1285 = !{!1286, !1287, !1288}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1284, file: !169, line: 1537, baseType: !7, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1284, file: !169, line: 1537, baseType: !7, size: 32, offset: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1284, file: !169, line: 1537, baseType: !1289, size: 128, offset: 64)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1290, size: 128, elements: !608)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !169, line: 1535, baseType: !1291)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !169, line: 1532, size: 128, elements: !1292)
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1291, file: !169, line: 1533, baseType: !630, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1291, file: !169, line: 1534, baseType: !630, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !632, file: !169, line: 3403, baseType: !1296, size: 512)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !169, line: 1938, size: 512, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1307, !1309, !1310}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1296, file: !169, line: 1939, baseType: !668, size: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1296, file: !169, line: 1940, baseType: !752, size: 32, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1296, file: !169, line: 1941, baseType: !168, size: 32, offset: 224)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1296, file: !169, line: 1946, baseType: !1302, size: 32, offset: 256)
!1302 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !169, line: 1942, size: 32, elements: !1303)
!1303 = !{!1304, !1305, !1306}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1302, file: !169, line: 1943, baseType: !187, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1302, file: !169, line: 1944, baseType: !194, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1302, file: !169, line: 1945, baseType: !201, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1296, file: !169, line: 1950, baseType: !1308, size: 64, offset: 320)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !539, line: 66, baseType: !1049)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1296, file: !169, line: 1951, baseType: !1308, size: 64, offset: 384)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1296, file: !169, line: 1953, baseType: !1025, size: 64, offset: 448)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !632, file: !169, line: 3404, baseType: !1312, size: 1664)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !169, line: 3337, size: 1664, elements: !1313)
!1313 = !{!1314, !1315}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1312, file: !169, line: 3338, baseType: !668, size: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1312, file: !169, line: 3341, baseType: !1316, size: 1472, offset: 192)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1317, line: 410, size: 1472, elements: !1318)
!1317 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1316, file: !1317, line: 412, baseType: !566, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1316, file: !1317, line: 413, baseType: !566, size: 32, offset: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1316, file: !1317, line: 414, baseType: !566, size: 32, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1316, file: !1317, line: 415, baseType: !566, size: 32, offset: 96)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1316, file: !1317, line: 416, baseType: !566, size: 32, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1316, file: !1317, line: 417, baseType: !566, size: 32, offset: 160)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1316, file: !1317, line: 418, baseType: !565, size: 8, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1316, file: !1317, line: 419, baseType: !565, size: 8, offset: 200)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1316, file: !1317, line: 420, baseType: !1328, size: 8, offset: 208)
!1328 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1316, file: !1317, line: 421, baseType: !1328, size: 8, offset: 216)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1316, file: !1317, line: 422, baseType: !1328, size: 8, offset: 224)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1316, file: !1317, line: 423, baseType: !1328, size: 8, offset: 232)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1316, file: !1317, line: 424, baseType: !1328, size: 8, offset: 240)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1316, file: !1317, line: 425, baseType: !1328, size: 8, offset: 248)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1316, file: !1317, line: 426, baseType: !1328, size: 8, offset: 256)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1316, file: !1317, line: 427, baseType: !1328, size: 8, offset: 264)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1316, file: !1317, line: 428, baseType: !1328, size: 8, offset: 272)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1316, file: !1317, line: 429, baseType: !1328, size: 8, offset: 280)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1316, file: !1317, line: 430, baseType: !1328, size: 8, offset: 288)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1316, file: !1317, line: 431, baseType: !1328, size: 8, offset: 296)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1316, file: !1317, line: 432, baseType: !1328, size: 8, offset: 304)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1316, file: !1317, line: 433, baseType: !1328, size: 8, offset: 312)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1316, file: !1317, line: 434, baseType: !1328, size: 8, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1316, file: !1317, line: 435, baseType: !1328, size: 8, offset: 328)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1316, file: !1317, line: 436, baseType: !1328, size: 8, offset: 336)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1316, file: !1317, line: 437, baseType: !1328, size: 8, offset: 344)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1316, file: !1317, line: 438, baseType: !1328, size: 8, offset: 352)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1316, file: !1317, line: 439, baseType: !1328, size: 8, offset: 360)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1316, file: !1317, line: 440, baseType: !1328, size: 8, offset: 368)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1316, file: !1317, line: 441, baseType: !1328, size: 8, offset: 376)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1316, file: !1317, line: 442, baseType: !1328, size: 8, offset: 384)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1316, file: !1317, line: 443, baseType: !1328, size: 8, offset: 392)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1316, file: !1317, line: 444, baseType: !1328, size: 8, offset: 400)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1316, file: !1317, line: 445, baseType: !1328, size: 8, offset: 408)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1316, file: !1317, line: 446, baseType: !1328, size: 8, offset: 416)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1316, file: !1317, line: 447, baseType: !1328, size: 8, offset: 424)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1316, file: !1317, line: 448, baseType: !1328, size: 8, offset: 432)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1316, file: !1317, line: 449, baseType: !1328, size: 8, offset: 440)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1316, file: !1317, line: 450, baseType: !1328, size: 8, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1316, file: !1317, line: 451, baseType: !1328, size: 8, offset: 456)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1316, file: !1317, line: 452, baseType: !1328, size: 8, offset: 464)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1316, file: !1317, line: 453, baseType: !1328, size: 8, offset: 472)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1316, file: !1317, line: 454, baseType: !1328, size: 8, offset: 480)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1316, file: !1317, line: 455, baseType: !1328, size: 8, offset: 488)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1316, file: !1317, line: 456, baseType: !1328, size: 8, offset: 496)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1316, file: !1317, line: 457, baseType: !1328, size: 8, offset: 504)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1316, file: !1317, line: 458, baseType: !1328, size: 8, offset: 512)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1316, file: !1317, line: 459, baseType: !1328, size: 8, offset: 520)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1316, file: !1317, line: 460, baseType: !1328, size: 8, offset: 528)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1316, file: !1317, line: 461, baseType: !1328, size: 8, offset: 536)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1316, file: !1317, line: 462, baseType: !1328, size: 8, offset: 544)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1316, file: !1317, line: 463, baseType: !1328, size: 8, offset: 552)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1316, file: !1317, line: 464, baseType: !1328, size: 8, offset: 560)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1316, file: !1317, line: 465, baseType: !1328, size: 8, offset: 568)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1316, file: !1317, line: 466, baseType: !1328, size: 8, offset: 576)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1316, file: !1317, line: 467, baseType: !1328, size: 8, offset: 584)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1316, file: !1317, line: 468, baseType: !1328, size: 8, offset: 592)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1316, file: !1317, line: 469, baseType: !1328, size: 8, offset: 600)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1316, file: !1317, line: 470, baseType: !1328, size: 8, offset: 608)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1316, file: !1317, line: 471, baseType: !1328, size: 8, offset: 616)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1316, file: !1317, line: 472, baseType: !1328, size: 8, offset: 624)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1316, file: !1317, line: 473, baseType: !1328, size: 8, offset: 632)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1316, file: !1317, line: 474, baseType: !1328, size: 8, offset: 640)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1316, file: !1317, line: 475, baseType: !1328, size: 8, offset: 648)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1316, file: !1317, line: 476, baseType: !1328, size: 8, offset: 656)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1316, file: !1317, line: 477, baseType: !1328, size: 8, offset: 664)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1316, file: !1317, line: 478, baseType: !1328, size: 8, offset: 672)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1316, file: !1317, line: 479, baseType: !1328, size: 8, offset: 680)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1316, file: !1317, line: 480, baseType: !1328, size: 8, offset: 688)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1316, file: !1317, line: 481, baseType: !1328, size: 8, offset: 696)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1316, file: !1317, line: 482, baseType: !1328, size: 8, offset: 704)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1316, file: !1317, line: 483, baseType: !1328, size: 8, offset: 712)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1316, file: !1317, line: 484, baseType: !1328, size: 8, offset: 720)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1316, file: !1317, line: 485, baseType: !1328, size: 8, offset: 728)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1316, file: !1317, line: 486, baseType: !1328, size: 8, offset: 736)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1316, file: !1317, line: 487, baseType: !1328, size: 8, offset: 744)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1316, file: !1317, line: 488, baseType: !1328, size: 8, offset: 752)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1316, file: !1317, line: 489, baseType: !1328, size: 8, offset: 760)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1316, file: !1317, line: 490, baseType: !1328, size: 8, offset: 768)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1316, file: !1317, line: 491, baseType: !1328, size: 8, offset: 776)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1316, file: !1317, line: 492, baseType: !1328, size: 8, offset: 784)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1316, file: !1317, line: 493, baseType: !1328, size: 8, offset: 792)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1316, file: !1317, line: 494, baseType: !1328, size: 8, offset: 800)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1316, file: !1317, line: 495, baseType: !1328, size: 8, offset: 808)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1316, file: !1317, line: 496, baseType: !1328, size: 8, offset: 816)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1316, file: !1317, line: 497, baseType: !1328, size: 8, offset: 824)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1316, file: !1317, line: 498, baseType: !1328, size: 8, offset: 832)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1316, file: !1317, line: 499, baseType: !1328, size: 8, offset: 840)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1316, file: !1317, line: 500, baseType: !1328, size: 8, offset: 848)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1316, file: !1317, line: 501, baseType: !1328, size: 8, offset: 856)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1316, file: !1317, line: 502, baseType: !1328, size: 8, offset: 864)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1316, file: !1317, line: 503, baseType: !1328, size: 8, offset: 872)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1316, file: !1317, line: 504, baseType: !1328, size: 8, offset: 880)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1316, file: !1317, line: 505, baseType: !1328, size: 8, offset: 888)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1316, file: !1317, line: 506, baseType: !1328, size: 8, offset: 896)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1316, file: !1317, line: 507, baseType: !1328, size: 8, offset: 904)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1316, file: !1317, line: 508, baseType: !1328, size: 8, offset: 912)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1316, file: !1317, line: 509, baseType: !1328, size: 8, offset: 920)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1316, file: !1317, line: 510, baseType: !1328, size: 8, offset: 928)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1316, file: !1317, line: 511, baseType: !1328, size: 8, offset: 936)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1316, file: !1317, line: 512, baseType: !1328, size: 8, offset: 944)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1316, file: !1317, line: 513, baseType: !1328, size: 8, offset: 952)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1316, file: !1317, line: 514, baseType: !1328, size: 8, offset: 960)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1316, file: !1317, line: 515, baseType: !1328, size: 8, offset: 968)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1316, file: !1317, line: 516, baseType: !1328, size: 8, offset: 976)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1316, file: !1317, line: 517, baseType: !1328, size: 8, offset: 984)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1316, file: !1317, line: 518, baseType: !1328, size: 8, offset: 992)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1316, file: !1317, line: 519, baseType: !1328, size: 8, offset: 1000)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1316, file: !1317, line: 520, baseType: !1328, size: 8, offset: 1008)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1316, file: !1317, line: 521, baseType: !1328, size: 8, offset: 1016)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1316, file: !1317, line: 522, baseType: !1328, size: 8, offset: 1024)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1316, file: !1317, line: 523, baseType: !1328, size: 8, offset: 1032)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1316, file: !1317, line: 524, baseType: !1328, size: 8, offset: 1040)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1316, file: !1317, line: 525, baseType: !1328, size: 8, offset: 1048)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1316, file: !1317, line: 526, baseType: !1328, size: 8, offset: 1056)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1316, file: !1317, line: 527, baseType: !1328, size: 8, offset: 1064)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1316, file: !1317, line: 528, baseType: !1328, size: 8, offset: 1072)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1316, file: !1317, line: 529, baseType: !1328, size: 8, offset: 1080)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1316, file: !1317, line: 530, baseType: !1328, size: 8, offset: 1088)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1316, file: !1317, line: 531, baseType: !1328, size: 8, offset: 1096)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1316, file: !1317, line: 532, baseType: !1328, size: 8, offset: 1104)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1316, file: !1317, line: 533, baseType: !1328, size: 8, offset: 1112)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1316, file: !1317, line: 534, baseType: !1328, size: 8, offset: 1120)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1316, file: !1317, line: 535, baseType: !1328, size: 8, offset: 1128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1316, file: !1317, line: 536, baseType: !1328, size: 8, offset: 1136)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1316, file: !1317, line: 537, baseType: !1328, size: 8, offset: 1144)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1316, file: !1317, line: 538, baseType: !1328, size: 8, offset: 1152)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1316, file: !1317, line: 539, baseType: !1328, size: 8, offset: 1160)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1316, file: !1317, line: 540, baseType: !1328, size: 8, offset: 1168)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1316, file: !1317, line: 541, baseType: !1328, size: 8, offset: 1176)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1316, file: !1317, line: 542, baseType: !1328, size: 8, offset: 1184)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1316, file: !1317, line: 543, baseType: !1328, size: 8, offset: 1192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1316, file: !1317, line: 544, baseType: !1328, size: 8, offset: 1200)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1316, file: !1317, line: 545, baseType: !1328, size: 8, offset: 1208)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1316, file: !1317, line: 546, baseType: !1328, size: 8, offset: 1216)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1316, file: !1317, line: 547, baseType: !1328, size: 8, offset: 1224)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1316, file: !1317, line: 548, baseType: !1328, size: 8, offset: 1232)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1316, file: !1317, line: 549, baseType: !1328, size: 8, offset: 1240)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1316, file: !1317, line: 550, baseType: !1328, size: 8, offset: 1248)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1316, file: !1317, line: 551, baseType: !1328, size: 8, offset: 1256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1316, file: !1317, line: 552, baseType: !1328, size: 8, offset: 1264)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1316, file: !1317, line: 553, baseType: !1328, size: 8, offset: 1272)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1316, file: !1317, line: 554, baseType: !1328, size: 8, offset: 1280)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1316, file: !1317, line: 555, baseType: !1328, size: 8, offset: 1288)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1316, file: !1317, line: 556, baseType: !1328, size: 8, offset: 1296)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1316, file: !1317, line: 557, baseType: !1328, size: 8, offset: 1304)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1316, file: !1317, line: 558, baseType: !1328, size: 8, offset: 1312)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1316, file: !1317, line: 559, baseType: !1328, size: 8, offset: 1320)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1316, file: !1317, line: 560, baseType: !1328, size: 8, offset: 1328)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1316, file: !1317, line: 561, baseType: !1328, size: 8, offset: 1336)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1316, file: !1317, line: 562, baseType: !1328, size: 8, offset: 1344)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1316, file: !1317, line: 563, baseType: !1328, size: 8, offset: 1352)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1316, file: !1317, line: 564, baseType: !1328, size: 8, offset: 1360)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1316, file: !1317, line: 565, baseType: !1328, size: 8, offset: 1368)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1316, file: !1317, line: 566, baseType: !1328, size: 8, offset: 1376)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1316, file: !1317, line: 567, baseType: !1328, size: 8, offset: 1384)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1316, file: !1317, line: 568, baseType: !1328, size: 8, offset: 1392)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1316, file: !1317, line: 569, baseType: !1328, size: 8, offset: 1400)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1316, file: !1317, line: 570, baseType: !1328, size: 8, offset: 1408)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1316, file: !1317, line: 571, baseType: !1328, size: 8, offset: 1416)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1316, file: !1317, line: 572, baseType: !1328, size: 8, offset: 1424)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1316, file: !1317, line: 573, baseType: !1328, size: 8, offset: 1432)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1316, file: !1317, line: 574, baseType: !1328, size: 8, offset: 1440)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !632, file: !169, line: 3405, baseType: !1484, size: 384)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !169, line: 3352, size: 384, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1484, file: !169, line: 3353, baseType: !668, size: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1484, file: !169, line: 3356, baseType: !1488, size: 192, offset: 192)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1317, line: 578, size: 192, elements: !1489)
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1488, file: !1317, line: 580, baseType: !566, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1488, file: !1317, line: 581, baseType: !566, size: 32, offset: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1488, file: !1317, line: 582, baseType: !566, size: 32, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1488, file: !1317, line: 583, baseType: !566, size: 32, offset: 96)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1488, file: !1317, line: 584, baseType: !565, size: 8, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1488, file: !1317, line: 585, baseType: !565, size: 8, offset: 136)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1488, file: !1317, line: 586, baseType: !565, size: 8, offset: 144)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1488, file: !1317, line: 587, baseType: !565, size: 8, offset: 152)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1488, file: !1317, line: 588, baseType: !565, size: 8, offset: 160)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1488, file: !1317, line: 589, baseType: !565, size: 8, offset: 168)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1488, file: !1317, line: 590, baseType: !565, size: 8, offset: 176)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !594, file: !396, line: 178, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !539, line: 110, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !594, file: !396, line: 179, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !396, line: 150, baseType: !1507)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !396, line: 142, size: 320, elements: !1508)
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1514}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1507, file: !396, line: 144, baseType: !630, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1507, file: !396, line: 145, baseType: !574, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1507, file: !396, line: 146, baseType: !574, size: 64, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1507, file: !396, line: 147, baseType: !1162, size: 32, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1507, file: !396, line: 148, baseType: !7, size: 32, offset: 224)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1507, file: !396, line: 149, baseType: !565, size: 8, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !594, file: !396, line: 180, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !396, line: 162, baseType: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !396, line: 159, size: 128, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1518, file: !396, line: 160, baseType: !630, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1518, file: !396, line: 161, baseType: !685, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !594, file: !396, line: 181, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !396, line: 181, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !589, file: !396, line: 317, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 64, elements: !608)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !589, file: !396, line: 318, baseType: !1528, size: 320)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !396, line: 188, size: 320, elements: !1529)
!1529 = !{!1530, !1532, !1587}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1528, file: !396, line: 190, baseType: !1531, size: 192)
!1531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !593, size: 192, elements: !703)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1528, file: !396, line: 193, baseType: !1533, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !396, line: 206, size: 320, elements: !1535)
!1535 = !{!1536, !1572, !1573, !1574, !1586}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1534, file: !396, line: 208, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !539, line: 62, baseType: !1539)
!1539 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1540, line: 538, size: 256, elements: !1541)
!1540 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1541 = !{!1542, !1546, !1552, !1563}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1539, file: !1540, line: 539, baseType: !1543, size: 32)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1540, line: 482, size: 32, elements: !1544)
!1544 = !{!1545}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1543, file: !1540, line: 484, baseType: !7, size: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1539, file: !1540, line: 540, baseType: !1547, size: 192)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1540, line: 488, size: 192, elements: !1548)
!1548 = !{!1549, !1550, !1551}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1547, file: !1540, line: 489, baseType: !1543, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1547, file: !1540, line: 492, baseType: !571, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1547, file: !1540, line: 496, baseType: !630, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1539, file: !1540, line: 541, baseType: !1553, size: 256)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1540, line: 504, size: 256, elements: !1554)
!1554 = !{!1555, !1556, !1561, !1562}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1553, file: !1540, line: 505, baseType: !1543, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1553, file: !1540, line: 509, baseType: !1557, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1540, line: 501, baseType: !1558)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{null, !973}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1553, file: !1540, line: 510, baseType: !973, size: 64, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1553, file: !1540, line: 513, baseType: !1537, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1539, file: !1540, line: 542, baseType: !1564, size: 128)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1540, line: 530, size: 128, elements: !1565)
!1565 = !{!1566, !1567}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1564, file: !1540, line: 531, baseType: !1543, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1564, file: !1540, line: 534, baseType: !1568, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1540, line: 525, baseType: !1569)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!565, !630, !571, !683, !683}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1534, file: !396, line: 211, baseType: !7, size: 32, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1534, file: !396, line: 214, baseType: !685, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1534, file: !396, line: 224, baseType: !1575, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !396, line: 202, baseType: !1577)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !396, line: 202, size: 128, elements: !1578)
!1578 = !{!1579}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1577, file: !396, line: 202, baseType: !1580, size: 128)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !396, line: 200, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !396, line: 200, size: 128, elements: !1582)
!1582 = !{!1583, !1584, !1585}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1581, file: !396, line: 200, baseType: !7, size: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1581, file: !396, line: 200, baseType: !7, size: 32, offset: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1581, file: !396, line: 200, baseType: !607, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1534, file: !396, line: 234, baseType: !1575, size: 64, offset: 256)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1528, file: !396, line: 197, baseType: !685, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !589, file: !396, line: 319, baseType: !692, size: 256)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !589, file: !396, line: 320, baseType: !711, size: 192)
!1590 = !{!1591, !0}
!1591 = !DIGlobalVariableExpression(var: !1592, expr: !DIExpression())
!1592 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_explow_h", scope: !2, file: !1593, line: 24, type: !1594, isLocal: false, isDefinition: true)
!1593 = !DIFile(filename: "./gt-explow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1595, size: 640, elements: !1605)
!1595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1596)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !1597, line: 69, size: 320, elements: !1598)
!1597 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1598 = !{!1599, !1600, !1601, !1602, !1604}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1596, file: !1597, line: 70, baseType: !570, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !1596, file: !1597, line: 71, baseType: !988, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1596, file: !1597, line: 72, baseType: !988, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1596, file: !1597, line: 73, baseType: !1603, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !1597, line: 65, baseType: !982)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !1596, file: !1597, line: 74, baseType: !1603, size: 64, offset: 256)
!1605 = !{!1606}
!1606 = !DISubrange(count: 2)
!1607 = !{i32 2, !"Dwarf Version", i32 4}
!1608 = !{i32 2, !"Debug Info Version", i32 3}
!1609 = !{i32 1, !"wchar_size", i32 4}
!1610 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1611 = distinct !DISubprogram(name: "vprintf", scope: !1612, file: !1612, line: 39, type: !1613, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1623)
!1612 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!566, !1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !571)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1618)
!1618 = !{!1619, !1620, !1621, !1622}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1617, file: !3, baseType: !7, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1617, file: !3, baseType: !7, size: 32, offset: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1617, file: !3, baseType: !570, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1617, file: !3, baseType: !570, size: 64, offset: 128)
!1623 = !{!1624, !1625}
!1624 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1611, file: !1612, line: 39, type: !1615)
!1625 = !DILocalVariable(name: "__arg", arg: 2, scope: !1611, file: !1612, line: 39, type: !1616)
!1626 = !DILocation(line: 0, scope: !1611)
!1627 = !DILocation(line: 41, column: 20, scope: !1611)
!1628 = !DILocation(line: 41, column: 10, scope: !1611)
!1629 = !DILocation(line: 41, column: 3, scope: !1611)
!1630 = distinct !DISubprogram(name: "getchar", scope: !1612, file: !1612, line: 47, type: !1631, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1633)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!566}
!1633 = !{}
!1634 = !DILocation(line: 49, column: 16, scope: !1630)
!1635 = !DILocation(line: 49, column: 10, scope: !1630)
!1636 = !DILocation(line: 49, column: 3, scope: !1630)
!1637 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1612, file: !1612, line: 56, type: !1638, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1690)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!566, !1640}
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1642, line: 7, baseType: !1643)
!1642 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1644, line: 49, size: 1728, elements: !1645)
!1644 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1645 = !{!1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1661, !1663, !1664, !1665, !1668, !1669, !1670, !1671, !1674, !1676, !1679, !1682, !1683, !1684, !1685, !1686}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1643, file: !1644, line: 51, baseType: !566, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1643, file: !1644, line: 54, baseType: !568, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1643, file: !1644, line: 55, baseType: !568, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1643, file: !1644, line: 56, baseType: !568, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1643, file: !1644, line: 57, baseType: !568, size: 64, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1643, file: !1644, line: 58, baseType: !568, size: 64, offset: 320)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1643, file: !1644, line: 59, baseType: !568, size: 64, offset: 384)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1643, file: !1644, line: 60, baseType: !568, size: 64, offset: 448)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1643, file: !1644, line: 61, baseType: !568, size: 64, offset: 512)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1643, file: !1644, line: 64, baseType: !568, size: 64, offset: 576)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1643, file: !1644, line: 65, baseType: !568, size: 64, offset: 640)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1643, file: !1644, line: 66, baseType: !568, size: 64, offset: 704)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1643, file: !1644, line: 68, baseType: !1659, size: 64, offset: 768)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1644, line: 36, flags: DIFlagFwdDecl)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1643, file: !1644, line: 70, baseType: !1662, size: 64, offset: 832)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1643, file: !1644, line: 72, baseType: !566, size: 32, offset: 896)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1643, file: !1644, line: 73, baseType: !566, size: 32, offset: 928)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1643, file: !1644, line: 74, baseType: !1666, size: 64, offset: 960)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1667, line: 152, baseType: !685)
!1667 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1643, file: !1644, line: 77, baseType: !573, size: 16, offset: 1024)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1643, file: !1644, line: 78, baseType: !1328, size: 8, offset: 1040)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1643, file: !1644, line: 79, baseType: !727, size: 8, offset: 1048)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1643, file: !1644, line: 81, baseType: !1672, size: 64, offset: 1088)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1644, line: 43, baseType: null)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1643, file: !1644, line: 89, baseType: !1675, size: 64, offset: 1152)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1667, line: 153, baseType: !685)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1643, file: !1644, line: 91, baseType: !1677, size: 64, offset: 1216)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1644, line: 37, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1643, file: !1644, line: 92, baseType: !1680, size: 64, offset: 1280)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1644, line: 38, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1643, file: !1644, line: 93, baseType: !1662, size: 64, offset: 1344)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1643, file: !1644, line: 94, baseType: !570, size: 64, offset: 1408)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1643, file: !1644, line: 95, baseType: !988, size: 64, offset: 1472)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1643, file: !1644, line: 96, baseType: !566, size: 32, offset: 1536)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1643, file: !1644, line: 98, baseType: !1687, size: 160, offset: 1568)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 160, elements: !1688)
!1688 = !{!1689}
!1689 = !DISubrange(count: 20)
!1690 = !{!1691}
!1691 = !DILocalVariable(name: "__fp", arg: 1, scope: !1637, file: !1612, line: 56, type: !1640)
!1692 = !DILocation(line: 0, scope: !1637)
!1693 = !DILocation(line: 58, column: 10, scope: !1637)
!1694 = !DILocation(line: 58, column: 3, scope: !1637)
!1695 = distinct !DISubprogram(name: "getc_unlocked", scope: !1612, file: !1612, line: 66, type: !1638, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1696)
!1696 = !{!1697}
!1697 = !DILocalVariable(name: "__fp", arg: 1, scope: !1695, file: !1612, line: 66, type: !1640)
!1698 = !DILocation(line: 0, scope: !1695)
!1699 = !DILocation(line: 68, column: 10, scope: !1695)
!1700 = !DILocation(line: 68, column: 3, scope: !1695)
!1701 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1612, file: !1612, line: 73, type: !1631, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1633)
!1702 = !DILocation(line: 75, column: 10, scope: !1701)
!1703 = !DILocation(line: 75, column: 3, scope: !1701)
!1704 = distinct !DISubprogram(name: "putchar", scope: !1612, file: !1612, line: 82, type: !1705, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1707)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!566, !566}
!1707 = !{!1708}
!1708 = !DILocalVariable(name: "__c", arg: 1, scope: !1704, file: !1612, line: 82, type: !566)
!1709 = !DILocation(line: 0, scope: !1704)
!1710 = !DILocation(line: 84, column: 21, scope: !1704)
!1711 = !DILocation(line: 84, column: 10, scope: !1704)
!1712 = !DILocation(line: 84, column: 3, scope: !1704)
!1713 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1612, file: !1612, line: 91, type: !1714, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1716)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!566, !566, !1640}
!1716 = !{!1717, !1718}
!1717 = !DILocalVariable(name: "__c", arg: 1, scope: !1713, file: !1612, line: 91, type: !566)
!1718 = !DILocalVariable(name: "__stream", arg: 2, scope: !1713, file: !1612, line: 91, type: !1640)
!1719 = !DILocation(line: 0, scope: !1713)
!1720 = !DILocation(line: 93, column: 10, scope: !1713)
!1721 = !DILocation(line: 93, column: 3, scope: !1713)
!1722 = distinct !DISubprogram(name: "putc_unlocked", scope: !1612, file: !1612, line: 101, type: !1714, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1723)
!1723 = !{!1724, !1725}
!1724 = !DILocalVariable(name: "__c", arg: 1, scope: !1722, file: !1612, line: 101, type: !566)
!1725 = !DILocalVariable(name: "__stream", arg: 2, scope: !1722, file: !1612, line: 101, type: !1640)
!1726 = !DILocation(line: 0, scope: !1722)
!1727 = !DILocation(line: 103, column: 10, scope: !1722)
!1728 = !DILocation(line: 103, column: 3, scope: !1722)
!1729 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1612, file: !1612, line: 108, type: !1705, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1730)
!1730 = !{!1731}
!1731 = !DILocalVariable(name: "__c", arg: 1, scope: !1729, file: !1612, line: 108, type: !566)
!1732 = !DILocation(line: 0, scope: !1729)
!1733 = !DILocation(line: 110, column: 10, scope: !1729)
!1734 = !DILocation(line: 110, column: 3, scope: !1729)
!1735 = distinct !DISubprogram(name: "getline", scope: !1612, file: !1612, line: 118, type: !1736, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1740)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!1738, !567, !1739, !1640}
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1667, line: 193, baseType: !685)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!1740 = !{!1741, !1742, !1743}
!1741 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1735, file: !1612, line: 118, type: !567)
!1742 = !DILocalVariable(name: "__n", arg: 2, scope: !1735, file: !1612, line: 118, type: !1739)
!1743 = !DILocalVariable(name: "__stream", arg: 3, scope: !1735, file: !1612, line: 118, type: !1640)
!1744 = !DILocation(line: 0, scope: !1735)
!1745 = !DILocation(line: 120, column: 10, scope: !1735)
!1746 = !DILocation(line: 120, column: 3, scope: !1735)
!1747 = distinct !DISubprogram(name: "feof_unlocked", scope: !1612, file: !1612, line: 128, type: !1638, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1748)
!1748 = !{!1749}
!1749 = !DILocalVariable(name: "__stream", arg: 1, scope: !1747, file: !1612, line: 128, type: !1640)
!1750 = !DILocation(line: 0, scope: !1747)
!1751 = !DILocation(line: 130, column: 10, scope: !1747)
!1752 = !DILocation(line: 130, column: 3, scope: !1747)
!1753 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1612, file: !1612, line: 135, type: !1638, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1754)
!1754 = !{!1755}
!1755 = !DILocalVariable(name: "__stream", arg: 1, scope: !1753, file: !1612, line: 135, type: !1640)
!1756 = !DILocation(line: 0, scope: !1753)
!1757 = !DILocation(line: 137, column: 10, scope: !1753)
!1758 = !DILocation(line: 137, column: 3, scope: !1753)
!1759 = distinct !DISubprogram(name: "tolower", scope: !1760, file: !1760, line: 207, type: !1705, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1761)
!1760 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1761 = !{!1762}
!1762 = !DILocalVariable(name: "__c", arg: 1, scope: !1759, file: !1760, line: 207, type: !566)
!1763 = !DILocation(line: 0, scope: !1759)
!1764 = !DILocation(line: 209, column: 22, scope: !1759)
!1765 = !DILocation(line: 209, column: 39, scope: !1759)
!1766 = !DILocation(line: 209, column: 38, scope: !1759)
!1767 = !DILocation(line: 209, column: 37, scope: !1759)
!1768 = !DILocation(line: 209, column: 10, scope: !1759)
!1769 = !DILocation(line: 209, column: 3, scope: !1759)
!1770 = distinct !DISubprogram(name: "toupper", scope: !1760, file: !1760, line: 213, type: !1705, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1771)
!1771 = !{!1772}
!1772 = !DILocalVariable(name: "__c", arg: 1, scope: !1770, file: !1760, line: 213, type: !566)
!1773 = !DILocation(line: 0, scope: !1770)
!1774 = !DILocation(line: 215, column: 22, scope: !1770)
!1775 = !DILocation(line: 215, column: 39, scope: !1770)
!1776 = !DILocation(line: 215, column: 38, scope: !1770)
!1777 = !DILocation(line: 215, column: 37, scope: !1770)
!1778 = !DILocation(line: 215, column: 10, scope: !1770)
!1779 = !DILocation(line: 215, column: 3, scope: !1770)
!1780 = distinct !DISubprogram(name: "atoi", scope: !1781, file: !1781, line: 361, type: !1782, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1784)
!1781 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!566, !571}
!1784 = !{!1785}
!1785 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1780, file: !1781, line: 361, type: !571)
!1786 = !DILocation(line: 0, scope: !1780)
!1787 = !DILocation(line: 363, column: 16, scope: !1780)
!1788 = !DILocation(line: 363, column: 10, scope: !1780)
!1789 = !DILocation(line: 363, column: 3, scope: !1780)
!1790 = distinct !DISubprogram(name: "atol", scope: !1781, file: !1781, line: 366, type: !1791, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1793)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!685, !571}
!1793 = !{!1794}
!1794 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1790, file: !1781, line: 366, type: !571)
!1795 = !DILocation(line: 0, scope: !1790)
!1796 = !DILocation(line: 368, column: 10, scope: !1790)
!1797 = !DILocation(line: 368, column: 3, scope: !1790)
!1798 = distinct !DISubprogram(name: "atoll", scope: !1781, file: !1781, line: 373, type: !1799, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1802)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!1801, !571}
!1801 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1802 = !{!1803}
!1803 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1798, file: !1781, line: 373, type: !571)
!1804 = !DILocation(line: 0, scope: !1798)
!1805 = !DILocation(line: 375, column: 10, scope: !1798)
!1806 = !DILocation(line: 375, column: 3, scope: !1798)
!1807 = distinct !DISubprogram(name: "bsearch", scope: !1808, file: !1808, line: 20, type: !1809, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1812)
!1808 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!570, !973, !973, !988, !988, !1811}
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1781, line: 808, baseType: !977)
!1812 = !{!1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822}
!1813 = !DILocalVariable(name: "__key", arg: 1, scope: !1807, file: !1808, line: 20, type: !973)
!1814 = !DILocalVariable(name: "__base", arg: 2, scope: !1807, file: !1808, line: 20, type: !973)
!1815 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1807, file: !1808, line: 20, type: !988)
!1816 = !DILocalVariable(name: "__size", arg: 4, scope: !1807, file: !1808, line: 20, type: !988)
!1817 = !DILocalVariable(name: "__compar", arg: 5, scope: !1807, file: !1808, line: 21, type: !1811)
!1818 = !DILocalVariable(name: "__l", scope: !1807, file: !1808, line: 23, type: !988)
!1819 = !DILocalVariable(name: "__u", scope: !1807, file: !1808, line: 23, type: !988)
!1820 = !DILocalVariable(name: "__idx", scope: !1807, file: !1808, line: 23, type: !988)
!1821 = !DILocalVariable(name: "__p", scope: !1807, file: !1808, line: 24, type: !973)
!1822 = !DILocalVariable(name: "__comparison", scope: !1807, file: !1808, line: 25, type: !566)
!1823 = !DILocation(line: 0, scope: !1807)
!1824 = !DILocation(line: 29, column: 3, scope: !1807)
!1825 = !DILocation(line: 27, column: 7, scope: !1807)
!1826 = !DILocation(line: 29, column: 14, scope: !1807)
!1827 = !DILocation(line: 31, column: 20, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1807, file: !1808, line: 30, column: 5)
!1829 = !DILocation(line: 31, column: 27, scope: !1828)
!1830 = !DILocation(line: 32, column: 56, scope: !1828)
!1831 = !DILocation(line: 32, column: 47, scope: !1828)
!1832 = !DILocation(line: 33, column: 22, scope: !1828)
!1833 = !DILocation(line: 34, column: 24, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1828, file: !1808, line: 34, column: 11)
!1835 = !DILocation(line: 34, column: 11, scope: !1828)
!1836 = !DILocation(line: 36, column: 29, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1834, file: !1808, line: 36, column: 16)
!1838 = !DILocation(line: 36, column: 16, scope: !1834)
!1839 = !DILocation(line: 37, column: 14, scope: !1837)
!1840 = distinct !{!1840, !1824, !1841}
!1841 = !DILocation(line: 40, column: 5, scope: !1807)
!1842 = !DILocation(line: 43, column: 1, scope: !1807)
!1843 = distinct !DISubprogram(name: "atof", scope: !1844, file: !1844, line: 25, type: !1845, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1848)
!1844 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!1847, !571}
!1847 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1848 = !{!1849}
!1849 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1843, file: !1844, line: 25, type: !571)
!1850 = !DILocation(line: 0, scope: !1843)
!1851 = !DILocation(line: 27, column: 10, scope: !1843)
!1852 = !DILocation(line: 27, column: 3, scope: !1843)
!1853 = distinct !DISubprogram(name: "strtoimax", scope: !1854, file: !1854, line: 324, type: !1855, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1861)
!1854 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!1857, !1615, !1860, !566}
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1858, line: 101, baseType: !1859)
!1858 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1667, line: 72, baseType: !685)
!1860 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !567)
!1861 = !{!1862, !1863, !1864}
!1862 = !DILocalVariable(name: "nptr", arg: 1, scope: !1853, file: !1854, line: 324, type: !1615)
!1863 = !DILocalVariable(name: "endptr", arg: 2, scope: !1853, file: !1854, line: 324, type: !1860)
!1864 = !DILocalVariable(name: "base", arg: 3, scope: !1853, file: !1854, line: 324, type: !566)
!1865 = !DILocation(line: 0, scope: !1853)
!1866 = !DILocation(line: 327, column: 10, scope: !1853)
!1867 = !DILocation(line: 327, column: 3, scope: !1853)
!1868 = distinct !DISubprogram(name: "strtoumax", scope: !1854, file: !1854, line: 336, type: !1869, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1873)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!1871, !1615, !1860, !566}
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1858, line: 102, baseType: !1872)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1667, line: 73, baseType: !683)
!1873 = !{!1874, !1875, !1876}
!1874 = !DILocalVariable(name: "nptr", arg: 1, scope: !1868, file: !1854, line: 336, type: !1615)
!1875 = !DILocalVariable(name: "endptr", arg: 2, scope: !1868, file: !1854, line: 336, type: !1860)
!1876 = !DILocalVariable(name: "base", arg: 3, scope: !1868, file: !1854, line: 336, type: !566)
!1877 = !DILocation(line: 0, scope: !1868)
!1878 = !DILocation(line: 339, column: 10, scope: !1868)
!1879 = !DILocation(line: 339, column: 3, scope: !1868)
!1880 = distinct !DISubprogram(name: "wcstoimax", scope: !1854, file: !1854, line: 348, type: !1881, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1890)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!1857, !1883, !1887, !566}
!1883 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1884)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1886)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1854, line: 34, baseType: !566)
!1887 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1888)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1890 = !{!1891, !1892, !1893}
!1891 = !DILocalVariable(name: "nptr", arg: 1, scope: !1880, file: !1854, line: 348, type: !1883)
!1892 = !DILocalVariable(name: "endptr", arg: 2, scope: !1880, file: !1854, line: 348, type: !1887)
!1893 = !DILocalVariable(name: "base", arg: 3, scope: !1880, file: !1854, line: 348, type: !566)
!1894 = !DILocation(line: 0, scope: !1880)
!1895 = !DILocation(line: 351, column: 10, scope: !1880)
!1896 = !DILocation(line: 351, column: 3, scope: !1880)
!1897 = distinct !DISubprogram(name: "wcstoumax", scope: !1854, file: !1854, line: 362, type: !1898, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1900)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!1871, !1883, !1887, !566}
!1900 = !{!1901, !1902, !1903}
!1901 = !DILocalVariable(name: "nptr", arg: 1, scope: !1897, file: !1854, line: 362, type: !1883)
!1902 = !DILocalVariable(name: "endptr", arg: 2, scope: !1897, file: !1854, line: 362, type: !1887)
!1903 = !DILocalVariable(name: "base", arg: 3, scope: !1897, file: !1854, line: 362, type: !566)
!1904 = !DILocation(line: 0, scope: !1897)
!1905 = !DILocation(line: 365, column: 10, scope: !1897)
!1906 = !DILocation(line: 365, column: 3, scope: !1897)
!1907 = distinct !DISubprogram(name: "stat", scope: !1908, file: !1908, line: 453, type: !1909, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1946)
!1908 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!566, !571, !1911}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1913, line: 46, size: 1152, elements: !1914)
!1913 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1914 = !{!1915, !1917, !1919, !1921, !1923, !1925, !1927, !1928, !1929, !1930, !1932, !1934, !1942, !1943, !1944}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1912, file: !1913, line: 48, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1667, line: 145, baseType: !683)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1912, file: !1913, line: 53, baseType: !1918, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1667, line: 148, baseType: !683)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1912, file: !1913, line: 61, baseType: !1920, size: 64, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1667, line: 151, baseType: !683)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1912, file: !1913, line: 62, baseType: !1922, size: 32, offset: 192)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1667, line: 150, baseType: !7)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1912, file: !1913, line: 64, baseType: !1924, size: 32, offset: 224)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1667, line: 146, baseType: !7)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1912, file: !1913, line: 65, baseType: !1926, size: 32, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1667, line: 147, baseType: !7)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1912, file: !1913, line: 67, baseType: !566, size: 32, offset: 288)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1912, file: !1913, line: 69, baseType: !1916, size: 64, offset: 320)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1912, file: !1913, line: 74, baseType: !1666, size: 64, offset: 384)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1912, file: !1913, line: 78, baseType: !1931, size: 64, offset: 448)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1667, line: 174, baseType: !685)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1912, file: !1913, line: 80, baseType: !1933, size: 64, offset: 512)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1667, line: 179, baseType: !685)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1912, file: !1913, line: 91, baseType: !1935, size: 128, offset: 576)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1936, line: 10, size: 128, elements: !1937)
!1936 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1937 = !{!1938, !1940}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1935, file: !1936, line: 12, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1667, line: 160, baseType: !685)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1935, file: !1936, line: 16, baseType: !1941, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1667, line: 196, baseType: !685)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1912, file: !1913, line: 92, baseType: !1935, size: 128, offset: 704)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1912, file: !1913, line: 93, baseType: !1935, size: 128, offset: 832)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1912, file: !1913, line: 106, baseType: !1945, size: 192, offset: 960)
!1945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1941, size: 192, elements: !703)
!1946 = !{!1947, !1948}
!1947 = !DILocalVariable(name: "__path", arg: 1, scope: !1907, file: !1908, line: 453, type: !571)
!1948 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1907, file: !1908, line: 453, type: !1911)
!1949 = !DILocation(line: 0, scope: !1907)
!1950 = !DILocation(line: 455, column: 10, scope: !1907)
!1951 = !DILocation(line: 455, column: 3, scope: !1907)
!1952 = distinct !DISubprogram(name: "lstat", scope: !1908, file: !1908, line: 460, type: !1909, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1953)
!1953 = !{!1954, !1955}
!1954 = !DILocalVariable(name: "__path", arg: 1, scope: !1952, file: !1908, line: 460, type: !571)
!1955 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1952, file: !1908, line: 460, type: !1911)
!1956 = !DILocation(line: 0, scope: !1952)
!1957 = !DILocation(line: 462, column: 10, scope: !1952)
!1958 = !DILocation(line: 462, column: 3, scope: !1952)
!1959 = distinct !DISubprogram(name: "fstat", scope: !1908, file: !1908, line: 467, type: !1960, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1962)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!566, !566, !1911}
!1962 = !{!1963, !1964}
!1963 = !DILocalVariable(name: "__fd", arg: 1, scope: !1959, file: !1908, line: 467, type: !566)
!1964 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1959, file: !1908, line: 467, type: !1911)
!1965 = !DILocation(line: 0, scope: !1959)
!1966 = !DILocation(line: 469, column: 10, scope: !1959)
!1967 = !DILocation(line: 469, column: 3, scope: !1959)
!1968 = distinct !DISubprogram(name: "fstatat", scope: !1908, file: !1908, line: 474, type: !1969, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1971)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!566, !566, !571, !1911, !566}
!1971 = !{!1972, !1973, !1974, !1975}
!1972 = !DILocalVariable(name: "__fd", arg: 1, scope: !1968, file: !1908, line: 474, type: !566)
!1973 = !DILocalVariable(name: "__filename", arg: 2, scope: !1968, file: !1908, line: 474, type: !571)
!1974 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1968, file: !1908, line: 474, type: !1911)
!1975 = !DILocalVariable(name: "__flag", arg: 4, scope: !1968, file: !1908, line: 474, type: !566)
!1976 = !DILocation(line: 0, scope: !1968)
!1977 = !DILocation(line: 477, column: 10, scope: !1968)
!1978 = !DILocation(line: 477, column: 3, scope: !1968)
!1979 = distinct !DISubprogram(name: "mknod", scope: !1908, file: !1908, line: 483, type: !1980, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1982)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!566, !571, !1922, !1916}
!1982 = !{!1983, !1984, !1985}
!1983 = !DILocalVariable(name: "__path", arg: 1, scope: !1979, file: !1908, line: 483, type: !571)
!1984 = !DILocalVariable(name: "__mode", arg: 2, scope: !1979, file: !1908, line: 483, type: !1922)
!1985 = !DILocalVariable(name: "__dev", arg: 3, scope: !1979, file: !1908, line: 483, type: !1916)
!1986 = !DILocation(line: 0, scope: !1979)
!1987 = !DILocation(line: 485, column: 10, scope: !1979)
!1988 = !DILocation(line: 485, column: 3, scope: !1979)
!1989 = distinct !DISubprogram(name: "mknodat", scope: !1908, file: !1908, line: 491, type: !1990, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1992)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!566, !566, !571, !1922, !1916}
!1992 = !{!1993, !1994, !1995, !1996}
!1993 = !DILocalVariable(name: "__fd", arg: 1, scope: !1989, file: !1908, line: 491, type: !566)
!1994 = !DILocalVariable(name: "__path", arg: 2, scope: !1989, file: !1908, line: 491, type: !571)
!1995 = !DILocalVariable(name: "__mode", arg: 3, scope: !1989, file: !1908, line: 491, type: !1922)
!1996 = !DILocalVariable(name: "__dev", arg: 4, scope: !1989, file: !1908, line: 491, type: !1916)
!1997 = !DILocation(line: 0, scope: !1989)
!1998 = !DILocation(line: 494, column: 10, scope: !1989)
!1999 = !DILocation(line: 494, column: 3, scope: !1989)
!2000 = distinct !DISubprogram(name: "stat64", scope: !1908, file: !1908, line: 502, type: !2001, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2023)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!566, !571, !2003}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1913, line: 119, size: 1152, elements: !2005)
!2005 = !{!2006, !2007, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2019, !2020, !2021, !2022}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2004, file: !1913, line: 121, baseType: !1916, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2004, file: !1913, line: 123, baseType: !2008, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1667, line: 149, baseType: !683)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2004, file: !1913, line: 124, baseType: !1920, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2004, file: !1913, line: 125, baseType: !1922, size: 32, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2004, file: !1913, line: 132, baseType: !1924, size: 32, offset: 224)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2004, file: !1913, line: 133, baseType: !1926, size: 32, offset: 256)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2004, file: !1913, line: 135, baseType: !566, size: 32, offset: 288)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2004, file: !1913, line: 136, baseType: !1916, size: 64, offset: 320)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2004, file: !1913, line: 137, baseType: !1666, size: 64, offset: 384)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2004, file: !1913, line: 143, baseType: !1931, size: 64, offset: 448)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2004, file: !1913, line: 144, baseType: !2018, size: 64, offset: 512)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1667, line: 180, baseType: !685)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2004, file: !1913, line: 152, baseType: !1935, size: 128, offset: 576)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2004, file: !1913, line: 153, baseType: !1935, size: 128, offset: 704)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2004, file: !1913, line: 154, baseType: !1935, size: 128, offset: 832)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2004, file: !1913, line: 164, baseType: !1945, size: 192, offset: 960)
!2023 = !{!2024, !2025}
!2024 = !DILocalVariable(name: "__path", arg: 1, scope: !2000, file: !1908, line: 502, type: !571)
!2025 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2000, file: !1908, line: 502, type: !2003)
!2026 = !DILocation(line: 0, scope: !2000)
!2027 = !DILocation(line: 504, column: 10, scope: !2000)
!2028 = !DILocation(line: 504, column: 3, scope: !2000)
!2029 = distinct !DISubprogram(name: "lstat64", scope: !1908, file: !1908, line: 509, type: !2001, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2030)
!2030 = !{!2031, !2032}
!2031 = !DILocalVariable(name: "__path", arg: 1, scope: !2029, file: !1908, line: 509, type: !571)
!2032 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2029, file: !1908, line: 509, type: !2003)
!2033 = !DILocation(line: 0, scope: !2029)
!2034 = !DILocation(line: 511, column: 10, scope: !2029)
!2035 = !DILocation(line: 511, column: 3, scope: !2029)
!2036 = distinct !DISubprogram(name: "fstat64", scope: !1908, file: !1908, line: 516, type: !2037, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2039)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!566, !566, !2003}
!2039 = !{!2040, !2041}
!2040 = !DILocalVariable(name: "__fd", arg: 1, scope: !2036, file: !1908, line: 516, type: !566)
!2041 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2036, file: !1908, line: 516, type: !2003)
!2042 = !DILocation(line: 0, scope: !2036)
!2043 = !DILocation(line: 518, column: 10, scope: !2036)
!2044 = !DILocation(line: 518, column: 3, scope: !2036)
!2045 = distinct !DISubprogram(name: "fstatat64", scope: !1908, file: !1908, line: 523, type: !2046, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2048)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!566, !566, !571, !2003, !566}
!2048 = !{!2049, !2050, !2051, !2052}
!2049 = !DILocalVariable(name: "__fd", arg: 1, scope: !2045, file: !1908, line: 523, type: !566)
!2050 = !DILocalVariable(name: "__filename", arg: 2, scope: !2045, file: !1908, line: 523, type: !571)
!2051 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2045, file: !1908, line: 523, type: !2003)
!2052 = !DILocalVariable(name: "__flag", arg: 4, scope: !2045, file: !1908, line: 523, type: !566)
!2053 = !DILocation(line: 0, scope: !2045)
!2054 = !DILocation(line: 526, column: 10, scope: !2045)
!2055 = !DILocation(line: 526, column: 3, scope: !2045)
!2056 = distinct !DISubprogram(name: "trunc_int_for_mode", scope: !3, file: !3, line: 51, type: !2057, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!685, !685, !5}
!2059 = !{!2060, !2061, !2062, !2063}
!2060 = !DILocalVariable(name: "c", arg: 1, scope: !2056, file: !3, line: 51, type: !685)
!2061 = !DILocalVariable(name: "mode", arg: 2, scope: !2056, file: !3, line: 51, type: !5)
!2062 = !DILocalVariable(name: "width", scope: !2056, file: !3, line: 53, type: !566)
!2063 = !DILocalVariable(name: "sign", scope: !2064, file: !3, line: 66, type: !685)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 65, column: 5)
!2065 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 64, column: 7)
!2066 = !DILocation(line: 0, scope: !2056)
!2067 = !DILocation(line: 53, column: 15, scope: !2056)
!2068 = !DILocation(line: 56, column: 3, scope: !2056)
!2069 = !DILocation(line: 59, column: 12, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 59, column: 7)
!2071 = !DILocation(line: 59, column: 7, scope: !2056)
!2072 = !DILocation(line: 60, column: 12, scope: !2070)
!2073 = !DILocation(line: 60, column: 5, scope: !2070)
!2074 = !DILocation(line: 64, column: 13, scope: !2065)
!2075 = !DILocation(line: 64, column: 7, scope: !2056)
!2076 = !DILocation(line: 0, scope: !2064)
!2077 = !DILocation(line: 67, column: 22, scope: !2064)
!2078 = !DILocation(line: 67, column: 12, scope: !2064)
!2079 = !DILocation(line: 68, column: 18, scope: !2064)
!2080 = !DILocation(line: 68, column: 24, scope: !2064)
!2081 = !DILocation(line: 68, column: 9, scope: !2064)
!2082 = !DILocation(line: 69, column: 9, scope: !2064)
!2083 = !DILocation(line: 70, column: 9, scope: !2064)
!2084 = !DILocation(line: 71, column: 5, scope: !2064)
!2085 = !DILocation(line: 74, column: 1, scope: !2056)
!2086 = distinct !DISubprogram(name: "plus_constant", scope: !3, file: !3, line: 79, type: !2087, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!574, !574, !685}
!2089 = !{!2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2100, !2101, !2102, !2103, !2104, !2105, !2110, !2112}
!2090 = !DILocalVariable(name: "x", arg: 1, scope: !2086, file: !3, line: 79, type: !574)
!2091 = !DILocalVariable(name: "c", arg: 2, scope: !2086, file: !3, line: 79, type: !685)
!2092 = !DILocalVariable(name: "code", scope: !2086, file: !3, line: 81, type: !395)
!2093 = !DILocalVariable(name: "y", scope: !2086, file: !3, line: 82, type: !574)
!2094 = !DILocalVariable(name: "mode", scope: !2086, file: !3, line: 83, type: !5)
!2095 = !DILocalVariable(name: "tem", scope: !2086, file: !3, line: 84, type: !574)
!2096 = !DILocalVariable(name: "all_constant", scope: !2086, file: !3, line: 85, type: !566)
!2097 = !DILocalVariable(name: "l1", scope: !2098, file: !3, line: 103, type: !683)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 102, column: 7)
!2099 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 97, column: 5)
!2100 = !DILocalVariable(name: "h1", scope: !2098, file: !3, line: 104, type: !685)
!2101 = !DILocalVariable(name: "l2", scope: !2098, file: !3, line: 105, type: !683)
!2102 = !DILocalVariable(name: "h2", scope: !2098, file: !3, line: 106, type: !685)
!2103 = !DILocalVariable(name: "lv", scope: !2098, file: !3, line: 107, type: !683)
!2104 = !DILocalVariable(name: "hv", scope: !2098, file: !3, line: 108, type: !685)
!2105 = !DILocalVariable(name: "copy", scope: !2106, file: !3, line: 175, type: !574)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 172, column: 2)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 171, column: 16)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 166, column: 16)
!2109 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 156, column: 11)
!2110 = !DILocalVariable(name: "const_loc", scope: !2106, file: !3, line: 176, type: !2111)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!2112 = !DILabel(scope: !2086, name: "restart", file: !3, line: 90)
!2113 = !DILocation(line: 0, scope: !2086)
!2114 = !DILocation(line: 82, column: 3, scope: !2086)
!2115 = !DILocation(line: 87, column: 9, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 87, column: 7)
!2117 = !DILocation(line: 87, column: 7, scope: !2086)
!2118 = !DILocation(line: 96, column: 3, scope: !2086)
!2119 = !DILocation(line: 90, column: 2, scope: !2086)
!2120 = !DILocation(line: 92, column: 10, scope: !2086)
!2121 = !DILocation(line: 94, column: 5, scope: !2086)
!2122 = !DILocation(line: 99, column: 14, scope: !2099)
!2123 = !DILocation(line: 99, column: 7, scope: !2099)
!2124 = !DILocation(line: 103, column: 30, scope: !2098)
!2125 = !DILocation(line: 0, scope: !2098)
!2126 = !DILocation(line: 104, column: 21, scope: !2098)
!2127 = !DILocation(line: 106, column: 21, scope: !2098)
!2128 = !DILocation(line: 107, column: 2, scope: !2098)
!2129 = !DILocation(line: 108, column: 2, scope: !2098)
!2130 = !DILocation(line: 110, column: 2, scope: !2098)
!2131 = !DILocation(line: 112, column: 29, scope: !2098)
!2132 = !DILocation(line: 112, column: 33, scope: !2098)
!2133 = !DILocation(line: 112, column: 9, scope: !2098)
!2134 = !DILocation(line: 113, column: 7, scope: !2099)
!2135 = !DILocation(line: 93, column: 10, scope: !2086)
!2136 = !DILocation(line: 119, column: 11, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 119, column: 11)
!2138 = !DILocation(line: 119, column: 34, scope: !2137)
!2139 = !DILocation(line: 120, column: 4, scope: !2137)
!2140 = !DILocation(line: 120, column: 7, scope: !2137)
!2141 = !DILocation(line: 119, column: 11, scope: !2099)
!2142 = !DILocation(line: 123, column: 25, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 121, column: 2)
!2144 = !DILocation(line: 124, column: 26, scope: !2143)
!2145 = !DILocation(line: 124, column: 11, scope: !2143)
!2146 = !DILocation(line: 123, column: 8, scope: !2143)
!2147 = !DILocation(line: 126, column: 8, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 126, column: 8)
!2149 = !DILocation(line: 126, column: 8, scope: !2143)
!2150 = !DILocation(line: 134, column: 11, scope: !2099)
!2151 = !DILocation(line: 136, column: 7, scope: !2099)
!2152 = !DILocation(line: 156, column: 11, scope: !2109)
!2153 = !DILocation(line: 156, column: 11, scope: !2099)
!2154 = !DILocation(line: 158, column: 9, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 157, column: 2)
!2156 = !DILocation(line: 158, column: 6, scope: !2155)
!2157 = !DILocation(line: 160, column: 8, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 160, column: 8)
!2159 = !DILocation(line: 160, column: 21, scope: !2158)
!2160 = !DILocation(line: 160, column: 8, scope: !2155)
!2161 = !DILocation(line: 161, column: 33, scope: !2158)
!2162 = !DILocation(line: 161, column: 10, scope: !2158)
!2163 = !DILocation(line: 161, column: 6, scope: !2158)
!2164 = !DILocation(line: 0, scope: !2155)
!2165 = !DILocation(line: 163, column: 8, scope: !2155)
!2166 = !DILocation(line: 164, column: 4, scope: !2155)
!2167 = !DILocation(line: 166, column: 16, scope: !2108)
!2168 = !DILocation(line: 166, column: 16, scope: !2109)
!2169 = !DILocation(line: 168, column: 8, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 167, column: 2)
!2171 = !DILocation(line: 170, column: 2, scope: !2170)
!2172 = !DILocation(line: 171, column: 16, scope: !2107)
!2173 = !DILocation(line: 171, column: 16, scope: !2108)
!2174 = !DILocation(line: 175, column: 4, scope: !2106)
!2175 = !DILocation(line: 175, column: 15, scope: !2106)
!2176 = !DILocation(line: 0, scope: !2106)
!2177 = !DILocation(line: 175, column: 8, scope: !2106)
!2178 = !DILocation(line: 176, column: 21, scope: !2106)
!2179 = !DILocation(line: 178, column: 32, scope: !2106)
!2180 = !DILocation(line: 178, column: 17, scope: !2106)
!2181 = !DILocation(line: 178, column: 15, scope: !2106)
!2182 = !DILocation(line: 179, column: 8, scope: !2106)
!2183 = !DILocation(line: 181, column: 2, scope: !2107)
!2184 = !DILocation(line: 181, column: 2, scope: !2106)
!2185 = !DILocation(line: 185, column: 7, scope: !2099)
!2186 = !DILocation(line: 188, column: 9, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 188, column: 7)
!2188 = !DILocation(line: 188, column: 7, scope: !2086)
!2189 = !DILocation(line: 189, column: 9, scope: !2187)
!2190 = !DILocation(line: 189, column: 5, scope: !2187)
!2191 = !DILocation(line: 191, column: 7, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 191, column: 7)
!2193 = !DILocation(line: 191, column: 20, scope: !2192)
!2194 = !DILocation(line: 191, column: 34, scope: !2192)
!2195 = !DILocation(line: 191, column: 50, scope: !2192)
!2196 = !DILocation(line: 193, column: 12, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 193, column: 12)
!2198 = !DILocation(line: 191, column: 7, scope: !2086)
!2199 = !DILocation(line: 194, column: 12, scope: !2197)
!2200 = !DILocation(line: 194, column: 5, scope: !2197)
!2201 = !DILocation(line: 197, column: 1, scope: !2086)
!2202 = distinct !DISubprogram(name: "eliminate_constant_term", scope: !3, file: !3, line: 205, type: !2203, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2205)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!574, !574, !2111}
!2205 = !{!2206, !2207, !2208, !2209, !2210}
!2206 = !DILocalVariable(name: "x", arg: 1, scope: !2202, file: !3, line: 205, type: !574)
!2207 = !DILocalVariable(name: "constptr", arg: 2, scope: !2202, file: !3, line: 205, type: !2111)
!2208 = !DILocalVariable(name: "x0", scope: !2202, file: !3, line: 207, type: !574)
!2209 = !DILocalVariable(name: "x1", scope: !2202, file: !3, line: 207, type: !574)
!2210 = !DILocalVariable(name: "tem", scope: !2202, file: !3, line: 208, type: !574)
!2211 = !DILocation(line: 0, scope: !2202)
!2212 = !DILocation(line: 208, column: 3, scope: !2202)
!2213 = !DILocation(line: 210, column: 7, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 210, column: 7)
!2215 = !DILocation(line: 210, column: 20, scope: !2214)
!2216 = !DILocation(line: 210, column: 7, scope: !2202)
!2217 = !DILocation(line: 214, column: 7, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 214, column: 7)
!2219 = !DILocation(line: 215, column: 7, scope: !2218)
!2220 = !DILocation(line: 225, column: 33, scope: !2202)
!2221 = !DILocation(line: 215, column: 55, scope: !2218)
!2222 = !DILocation(line: 215, column: 69, scope: !2218)
!2223 = !DILocation(line: 216, column: 7, scope: !2218)
!2224 = !DILocation(line: 215, column: 22, scope: !2218)
!2225 = !DILocation(line: 215, column: 20, scope: !2218)
!2226 = !DILocation(line: 215, column: 12, scope: !2218)
!2227 = !DILocation(line: 217, column: 7, scope: !2218)
!2228 = !DILocation(line: 217, column: 10, scope: !2218)
!2229 = !DILocation(line: 214, column: 7, scope: !2202)
!2230 = !DILocation(line: 219, column: 17, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 218, column: 5)
!2232 = !DILocation(line: 220, column: 39, scope: !2231)
!2233 = !DILocation(line: 220, column: 14, scope: !2231)
!2234 = !DILocation(line: 220, column: 7, scope: !2231)
!2235 = !DILocation(line: 223, column: 9, scope: !2202)
!2236 = !DILocation(line: 223, column: 7, scope: !2202)
!2237 = !DILocation(line: 224, column: 33, scope: !2202)
!2238 = !DILocation(line: 224, column: 8, scope: !2202)
!2239 = !DILocation(line: 225, column: 8, scope: !2202)
!2240 = !DILocation(line: 226, column: 14, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 226, column: 7)
!2242 = !DILocation(line: 226, column: 11, scope: !2241)
!2243 = !DILocation(line: 226, column: 26, scope: !2241)
!2244 = !DILocation(line: 226, column: 35, scope: !2241)
!2245 = !DILocation(line: 226, column: 32, scope: !2241)
!2246 = !DILocation(line: 227, column: 7, scope: !2241)
!2247 = !DILocation(line: 227, column: 55, scope: !2241)
!2248 = !DILocation(line: 228, column: 7, scope: !2241)
!2249 = !DILocation(line: 228, column: 18, scope: !2241)
!2250 = !DILocation(line: 227, column: 22, scope: !2241)
!2251 = !DILocation(line: 227, column: 20, scope: !2241)
!2252 = !DILocation(line: 227, column: 12, scope: !2241)
!2253 = !DILocation(line: 229, column: 7, scope: !2241)
!2254 = !DILocation(line: 229, column: 10, scope: !2241)
!2255 = !DILocation(line: 226, column: 7, scope: !2202)
!2256 = !DILocation(line: 231, column: 17, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 230, column: 5)
!2258 = !DILocation(line: 232, column: 14, scope: !2257)
!2259 = !DILocation(line: 232, column: 7, scope: !2257)
!2260 = !DILocation(line: 236, column: 1, scope: !2202)
!2261 = distinct !DISubprogram(name: "expr_size", scope: !3, file: !3, line: 241, type: !2262, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!574, !630}
!2264 = !{!2265, !2266}
!2265 = !DILocalVariable(name: "exp", arg: 1, scope: !2261, file: !3, line: 241, type: !630)
!2266 = !DILocalVariable(name: "size", scope: !2261, file: !3, line: 243, type: !630)
!2267 = !DILocation(line: 0, scope: !2261)
!2268 = !DILocation(line: 245, column: 7, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 245, column: 7)
!2270 = !DILocation(line: 245, column: 23, scope: !2269)
!2271 = !DILocation(line: 245, column: 7, scope: !2261)
!2272 = !DILocation(line: 246, column: 12, scope: !2269)
!2273 = !DILocation(line: 246, column: 5, scope: !2269)
!2274 = !DILocation(line: 249, column: 14, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 248, column: 5)
!2276 = !DILocation(line: 250, column: 7, scope: !2275)
!2277 = !DILocation(line: 251, column: 7, scope: !2275)
!2278 = !DILocation(line: 0, scope: !2269)
!2279 = !DILocation(line: 254, column: 39, scope: !2261)
!2280 = !DILocation(line: 254, column: 10, scope: !2261)
!2281 = !DILocation(line: 254, column: 3, scope: !2261)
!2282 = distinct !DISubprogram(name: "expand_expr", scope: !549, file: !549, line: 555, type: !2283, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2285)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!574, !630, !574, !5, !554}
!2285 = !{!2286, !2287, !2288, !2289}
!2286 = !DILocalVariable(name: "exp", arg: 1, scope: !2282, file: !549, line: 555, type: !630)
!2287 = !DILocalVariable(name: "target", arg: 2, scope: !2282, file: !549, line: 555, type: !574)
!2288 = !DILocalVariable(name: "mode", arg: 3, scope: !2282, file: !549, line: 555, type: !5)
!2289 = !DILocalVariable(name: "modifier", arg: 4, scope: !2282, file: !549, line: 556, type: !554)
!2290 = !DILocation(line: 0, scope: !2282)
!2291 = !DILocation(line: 558, column: 10, scope: !2282)
!2292 = !DILocation(line: 558, column: 3, scope: !2282)
!2293 = distinct !DISubprogram(name: "int_expr_size", scope: !3, file: !3, line: 261, type: !2294, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2296)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!685, !630}
!2296 = !{!2297, !2298}
!2297 = !DILocalVariable(name: "exp", arg: 1, scope: !2293, file: !3, line: 261, type: !630)
!2298 = !DILocalVariable(name: "size", scope: !2293, file: !3, line: 263, type: !630)
!2299 = !DILocation(line: 0, scope: !2293)
!2300 = !DILocation(line: 265, column: 7, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 265, column: 7)
!2302 = !DILocation(line: 265, column: 23, scope: !2301)
!2303 = !DILocation(line: 265, column: 7, scope: !2293)
!2304 = !DILocation(line: 266, column: 12, scope: !2301)
!2305 = !DILocation(line: 266, column: 5, scope: !2301)
!2306 = !DILocation(line: 269, column: 14, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 268, column: 5)
!2308 = !DILocation(line: 270, column: 7, scope: !2307)
!2309 = !DILocation(line: 0, scope: !2301)
!2310 = !DILocation(line: 273, column: 12, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 273, column: 7)
!2312 = !DILocation(line: 273, column: 17, scope: !2311)
!2313 = !DILocation(line: 273, column: 21, scope: !2311)
!2314 = !DILocation(line: 273, column: 7, scope: !2293)
!2315 = !DILocation(line: 276, column: 10, scope: !2293)
!2316 = !DILocation(line: 276, column: 3, scope: !2293)
!2317 = !DILocation(line: 277, column: 1, scope: !2293)
!2318 = distinct !DISubprogram(name: "convert_memory_address_addr_space", scope: !3, file: !3, line: 322, type: !2319, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2322)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!574, !5, !574, !2321}
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_space_t", file: !539, line: 73, baseType: !565)
!2322 = !{!2323, !2324, !2325}
!2323 = !DILocalVariable(name: "to_mode", arg: 1, scope: !2318, file: !3, line: 322, type: !5)
!2324 = !DILocalVariable(name: "x", arg: 2, scope: !2318, file: !3, line: 323, type: !574)
!2325 = !DILocalVariable(name: "as", arg: 3, scope: !2318, file: !3, line: 323, type: !2321)
!2326 = !DILocation(line: 0, scope: !2318)
!2327 = !DILocation(line: 326, column: 3, scope: !2318)
!2328 = !DILocation(line: 327, column: 3, scope: !2318)
!2329 = distinct !DISubprogram(name: "memory_address_addr_space", scope: !3, file: !3, line: 418, type: !2319, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2330)
!2330 = !{!2331, !2332, !2333, !2334, !2335, !2336, !2340, !2343, !2344}
!2331 = !DILocalVariable(name: "mode", arg: 1, scope: !2329, file: !3, line: 418, type: !5)
!2332 = !DILocalVariable(name: "x", arg: 2, scope: !2329, file: !3, line: 418, type: !574)
!2333 = !DILocalVariable(name: "as", arg: 3, scope: !2329, file: !3, line: 418, type: !2321)
!2334 = !DILocalVariable(name: "oldx", scope: !2329, file: !3, line: 420, type: !574)
!2335 = !DILocalVariable(name: "address_mode", scope: !2329, file: !3, line: 421, type: !5)
!2336 = !DILocalVariable(name: "orig_x", scope: !2337, file: !3, line: 456, type: !574)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 455, column: 7)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 435, column: 5)
!2339 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 427, column: 7)
!2340 = !DILocalVariable(name: "constant_term", scope: !2341, file: !3, line: 473, type: !574)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 472, column: 2)
!2342 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 471, column: 11)
!2343 = !DILocalVariable(name: "y", scope: !2341, file: !3, line: 474, type: !574)
!2344 = !DILabel(scope: !2329, name: "done", file: !3, line: 502)
!2345 = !DILocation(line: 0, scope: !2329)
!2346 = !DILocation(line: 421, column: 55, scope: !2329)
!2347 = !DILocation(line: 421, column: 36, scope: !2329)
!2348 = !DILocation(line: 423, column: 7, scope: !2329)
!2349 = !DILocation(line: 427, column: 9, scope: !2339)
!2350 = !DILocation(line: 427, column: 26, scope: !2339)
!2351 = !DILocation(line: 427, column: 29, scope: !2339)
!2352 = !DILocation(line: 427, column: 44, scope: !2339)
!2353 = !DILocation(line: 427, column: 47, scope: !2339)
!2354 = !DILocation(line: 427, column: 7, scope: !2329)
!2355 = !DILocation(line: 436, column: 13, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 436, column: 11)
!2357 = !DILocation(line: 428, column: 9, scope: !2339)
!2358 = !DILocation(line: 428, column: 5, scope: !2339)
!2359 = !DILocation(line: 436, column: 30, scope: !2356)
!2360 = !DILocation(line: 436, column: 34, scope: !2356)
!2361 = !DILocation(line: 436, column: 11, scope: !2338)
!2362 = !DILocation(line: 437, column: 6, scope: !2356)
!2363 = !DILocation(line: 437, column: 2, scope: !2356)
!2364 = !DILocation(line: 440, column: 11, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 440, column: 11)
!2366 = !DILocation(line: 440, column: 11, scope: !2338)
!2367 = !DILocation(line: 445, column: 11, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 445, column: 11)
!2369 = !DILocation(line: 445, column: 11, scope: !2338)
!2370 = !DILocation(line: 0, scope: !2337)
!2371 = !DILocation(line: 457, column: 25, scope: !2337)
!2372 = !DILocation(line: 457, column: 6, scope: !2337)
!2373 = !DILocation(line: 458, column: 13, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2337, file: !3, line: 458, column: 6)
!2375 = !DILocation(line: 458, column: 18, scope: !2374)
!2376 = !DILocation(line: 458, column: 21, scope: !2374)
!2377 = !DILocation(line: 458, column: 6, scope: !2337)
!2378 = !DILocation(line: 460, column: 7, scope: !2338)
!2379 = !DILocation(line: 471, column: 11, scope: !2342)
!2380 = !DILocation(line: 471, column: 24, scope: !2342)
!2381 = !DILocation(line: 471, column: 11, scope: !2338)
!2382 = !DILocation(line: 473, column: 4, scope: !2341)
!2383 = !DILocation(line: 473, column: 24, scope: !2341)
!2384 = !DILocation(line: 473, column: 8, scope: !2341)
!2385 = !DILocation(line: 0, scope: !2341)
!2386 = !DILocation(line: 474, column: 12, scope: !2341)
!2387 = !DILocation(line: 475, column: 8, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 475, column: 8)
!2389 = !DILocation(line: 475, column: 25, scope: !2388)
!2390 = !DILocation(line: 475, column: 22, scope: !2388)
!2391 = !DILocation(line: 476, column: 8, scope: !2388)
!2392 = !DILocation(line: 476, column: 13, scope: !2388)
!2393 = !DILocation(line: 475, column: 8, scope: !2341)
!2394 = !DILocation(line: 477, column: 10, scope: !2388)
!2395 = !DILocation(line: 477, column: 6, scope: !2388)
!2396 = !DILocation(line: 480, column: 12, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 479, column: 6)
!2398 = !DILocation(line: 481, column: 14, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 481, column: 12)
!2400 = !DILocation(line: 481, column: 12, scope: !2397)
!2401 = !DILocation(line: 482, column: 7, scope: !2399)
!2402 = !DILocation(line: 482, column: 3, scope: !2399)
!2403 = !DILocation(line: 0, scope: !2388)
!2404 = !DILocation(line: 486, column: 2, scope: !2342)
!2405 = !DILocation(line: 486, column: 2, scope: !2341)
!2406 = !DILocation(line: 488, column: 29, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 488, column: 16)
!2408 = !DILocation(line: 488, column: 37, scope: !2407)
!2409 = !DILocation(line: 488, column: 53, scope: !2407)
!2410 = !DILocation(line: 488, column: 16, scope: !2342)
!2411 = !DILocation(line: 489, column: 6, scope: !2407)
!2412 = !DILocation(line: 489, column: 2, scope: !2407)
!2413 = !DILocation(line: 493, column: 16, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 493, column: 16)
!2415 = !DILocation(line: 493, column: 16, scope: !2407)
!2416 = !DILocation(line: 494, column: 6, scope: !2414)
!2417 = !DILocation(line: 494, column: 2, scope: !2414)
!2418 = !DILocation(line: 499, column: 6, scope: !2414)
!2419 = !DILocation(line: 502, column: 2, scope: !2329)
!2420 = !DILocation(line: 504, column: 3, scope: !2329)
!2421 = !DILocation(line: 507, column: 12, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 507, column: 7)
!2423 = !DILocation(line: 507, column: 7, scope: !2329)
!2424 = !DILocation(line: 509, column: 12, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 509, column: 12)
!2426 = !DILocation(line: 509, column: 12, scope: !2422)
!2427 = !DILocation(line: 510, column: 5, scope: !2425)
!2428 = !DILocation(line: 511, column: 25, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 511, column: 12)
!2430 = !DILocation(line: 512, column: 5, scope: !2429)
!2431 = !DILocation(line: 512, column: 8, scope: !2429)
!2432 = !DILocation(line: 513, column: 5, scope: !2429)
!2433 = !DILocation(line: 513, column: 8, scope: !2429)
!2434 = !DILocation(line: 511, column: 12, scope: !2425)
!2435 = !DILocation(line: 514, column: 5, scope: !2429)
!2436 = !DILocation(line: 518, column: 3, scope: !2329)
!2437 = !DILocation(line: 520, column: 3, scope: !2329)
!2438 = !DILocation(line: 521, column: 1, scope: !2329)
!2439 = distinct !DISubprogram(name: "force_reg", scope: !3, file: !3, line: 650, type: !2440, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2442)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!574, !5, !574}
!2442 = !{!2443, !2444, !2445, !2446, !2447, !2448, !2453, !2455, !2460, !2461, !2462}
!2443 = !DILocalVariable(name: "mode", arg: 1, scope: !2439, file: !3, line: 650, type: !5)
!2444 = !DILocalVariable(name: "x", arg: 2, scope: !2439, file: !3, line: 650, type: !574)
!2445 = !DILocalVariable(name: "temp", scope: !2439, file: !3, line: 652, type: !574)
!2446 = !DILocalVariable(name: "insn", scope: !2439, file: !3, line: 652, type: !574)
!2447 = !DILocalVariable(name: "set", scope: !2439, file: !3, line: 652, type: !574)
!2448 = !DILocalVariable(name: "temp2", scope: !2449, file: !3, line: 669, type: !574)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 668, column: 2)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 665, column: 11)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 663, column: 5)
!2452 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 657, column: 7)
!2453 = !DILocalVariable(name: "align", scope: !2454, file: !3, line: 687, type: !7)
!2454 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 686, column: 3)
!2455 = !DILocalVariable(name: "s", scope: !2456, file: !3, line: 701, type: !574)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 700, column: 7)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 696, column: 14)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 694, column: 14)
!2459 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 688, column: 9)
!2460 = !DILocalVariable(name: "c", scope: !2456, file: !3, line: 702, type: !574)
!2461 = !DILocalVariable(name: "sa", scope: !2456, file: !3, line: 703, type: !7)
!2462 = !DILocalVariable(name: "ca", scope: !2456, file: !3, line: 703, type: !7)
!2463 = !DILocation(line: 0, scope: !2439)
!2464 = !DILocation(line: 654, column: 7, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 654, column: 7)
!2466 = !DILocation(line: 654, column: 7, scope: !2439)
!2467 = !DILocation(line: 657, column: 7, scope: !2452)
!2468 = !DILocation(line: 657, column: 7, scope: !2439)
!2469 = !DILocation(line: 659, column: 14, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 658, column: 5)
!2471 = !DILocation(line: 660, column: 14, scope: !2470)
!2472 = !DILocation(line: 661, column: 5, scope: !2470)
!2473 = !DILocation(line: 664, column: 14, scope: !2451)
!2474 = !DILocation(line: 665, column: 11, scope: !2450)
!2475 = !DILocation(line: 665, column: 11, scope: !2451)
!2476 = !DILocation(line: 666, column: 9, scope: !2450)
!2477 = !DILocation(line: 666, column: 2, scope: !2450)
!2478 = !DILocation(line: 669, column: 16, scope: !2449)
!2479 = !DILocation(line: 0, scope: !2449)
!2480 = !DILocation(line: 670, column: 11, scope: !2449)
!2481 = !DILocation(line: 0, scope: !2452)
!2482 = !DILocation(line: 678, column: 7, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 678, column: 7)
!2484 = !DILocation(line: 679, column: 7, scope: !2483)
!2485 = !DILocation(line: 679, column: 17, scope: !2483)
!2486 = !DILocation(line: 679, column: 36, scope: !2483)
!2487 = !DILocation(line: 680, column: 7, scope: !2483)
!2488 = !DILocation(line: 680, column: 10, scope: !2483)
!2489 = !DILocation(line: 680, column: 25, scope: !2483)
!2490 = !DILocation(line: 681, column: 7, scope: !2483)
!2491 = !DILocation(line: 681, column: 28, scope: !2483)
!2492 = !DILocation(line: 681, column: 12, scope: !2483)
!2493 = !DILocation(line: 678, column: 7, scope: !2439)
!2494 = !DILocation(line: 682, column: 5, scope: !2483)
!2495 = !DILocation(line: 0, scope: !2454)
!2496 = !DILocation(line: 688, column: 9, scope: !2459)
!2497 = !DILocation(line: 688, column: 22, scope: !2459)
!2498 = !DILocation(line: 688, column: 9, scope: !2454)
!2499 = !DILocation(line: 691, column: 6, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 691, column: 6)
!2501 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 689, column: 7)
!2502 = !DILocation(line: 691, column: 26, scope: !2500)
!2503 = !DILocation(line: 691, column: 29, scope: !2500)
!2504 = !DILocation(line: 691, column: 6, scope: !2501)
!2505 = !DILocation(line: 692, column: 12, scope: !2500)
!2506 = !DILocation(line: 692, column: 4, scope: !2500)
!2507 = !DILocation(line: 694, column: 27, scope: !2458)
!2508 = !DILocation(line: 694, column: 14, scope: !2459)
!2509 = !DILocation(line: 696, column: 27, scope: !2457)
!2510 = !DILocation(line: 697, column: 7, scope: !2457)
!2511 = !DILocation(line: 697, column: 10, scope: !2457)
!2512 = !DILocation(line: 697, column: 33, scope: !2457)
!2513 = !DILocation(line: 698, column: 7, scope: !2457)
!2514 = !DILocation(line: 698, column: 10, scope: !2457)
!2515 = !DILocation(line: 698, column: 43, scope: !2457)
!2516 = !DILocation(line: 699, column: 7, scope: !2457)
!2517 = !DILocation(line: 699, column: 10, scope: !2457)
!2518 = !DILocation(line: 696, column: 14, scope: !2458)
!2519 = !DILocation(line: 0, scope: !2456)
!2520 = !DILocation(line: 706, column: 6, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 706, column: 6)
!2522 = !DILocation(line: 706, column: 26, scope: !2521)
!2523 = !DILocation(line: 706, column: 29, scope: !2521)
!2524 = !DILocation(line: 706, column: 6, scope: !2456)
!2525 = !DILocation(line: 707, column: 9, scope: !2521)
!2526 = !DILocation(line: 707, column: 4, scope: !2521)
!2527 = !DILocation(line: 709, column: 19, scope: !2456)
!2528 = !DILocation(line: 709, column: 32, scope: !2456)
!2529 = !DILocation(line: 709, column: 30, scope: !2456)
!2530 = !DILocation(line: 709, column: 7, scope: !2456)
!2531 = !DILocation(line: 709, column: 45, scope: !2456)
!2532 = !DILocation(line: 711, column: 10, scope: !2456)
!2533 = !DILocation(line: 712, column: 7, scope: !2456)
!2534 = !DILocation(line: 0, scope: !2459)
!2535 = !DILocation(line: 714, column: 9, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 714, column: 9)
!2537 = !DILocation(line: 714, column: 15, scope: !2536)
!2538 = !DILocation(line: 714, column: 19, scope: !2536)
!2539 = !DILocation(line: 714, column: 29, scope: !2536)
!2540 = !DILocation(line: 714, column: 32, scope: !2536)
!2541 = !DILocation(line: 714, column: 9, scope: !2454)
!2542 = !DILocation(line: 715, column: 7, scope: !2536)
!2543 = !DILocation(line: 719, column: 1, scope: !2439)
!2544 = distinct !DISubprogram(name: "break_out_memory_refs", scope: !3, file: !3, line: 296, type: !2545, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!574, !574}
!2547 = !{!2548, !2549, !2553}
!2548 = !DILocalVariable(name: "x", arg: 1, scope: !2544, file: !3, line: 296, type: !574)
!2549 = !DILocalVariable(name: "op0", scope: !2550, file: !3, line: 305, type: !574)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 304, column: 5)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 302, column: 12)
!2552 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 298, column: 7)
!2553 = !DILocalVariable(name: "op1", scope: !2550, file: !3, line: 306, type: !574)
!2554 = !DILocation(line: 0, scope: !2544)
!2555 = !DILocation(line: 298, column: 7, scope: !2552)
!2556 = !DILocation(line: 299, column: 7, scope: !2552)
!2557 = !DILocation(line: 299, column: 11, scope: !2552)
!2558 = !DILocation(line: 299, column: 26, scope: !2552)
!2559 = !DILocation(line: 299, column: 29, scope: !2552)
!2560 = !DILocation(line: 300, column: 4, scope: !2552)
!2561 = !DILocation(line: 302, column: 12, scope: !2551)
!2562 = !DILocation(line: 300, column: 7, scope: !2552)
!2563 = !DILocation(line: 300, column: 20, scope: !2552)
!2564 = !DILocation(line: 298, column: 7, scope: !2544)
!2565 = !DILocation(line: 301, column: 20, scope: !2552)
!2566 = !DILocation(line: 301, column: 9, scope: !2552)
!2567 = !DILocation(line: 301, column: 5, scope: !2552)
!2568 = !DILocation(line: 302, column: 25, scope: !2551)
!2569 = !DILocation(line: 302, column: 33, scope: !2551)
!2570 = !DILocation(line: 302, column: 49, scope: !2551)
!2571 = !DILocation(line: 303, column: 5, scope: !2551)
!2572 = !DILocation(line: 303, column: 21, scope: !2551)
!2573 = !DILocation(line: 302, column: 12, scope: !2552)
!2574 = !DILocation(line: 305, column: 40, scope: !2550)
!2575 = !DILocation(line: 305, column: 17, scope: !2550)
!2576 = !DILocation(line: 0, scope: !2550)
!2577 = !DILocation(line: 306, column: 40, scope: !2550)
!2578 = !DILocation(line: 306, column: 17, scope: !2550)
!2579 = !DILocation(line: 308, column: 18, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 308, column: 11)
!2581 = !DILocation(line: 308, column: 15, scope: !2580)
!2582 = !DILocation(line: 308, column: 30, scope: !2580)
!2583 = !DILocation(line: 308, column: 40, scope: !2580)
!2584 = !DILocation(line: 308, column: 37, scope: !2580)
!2585 = !DILocation(line: 308, column: 11, scope: !2550)
!2586 = !DILocation(line: 309, column: 27, scope: !2580)
!2587 = !DILocation(line: 309, column: 41, scope: !2580)
!2588 = !DILocation(line: 309, column: 6, scope: !2580)
!2589 = !DILocation(line: 309, column: 2, scope: !2580)
!2590 = !DILocation(line: 0, scope: !2552)
!2591 = !DILocation(line: 312, column: 3, scope: !2544)
!2592 = distinct !DISubprogram(name: "copy_to_reg", scope: !3, file: !3, line: 598, type: !2545, scopeLine: 599, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2593)
!2593 = !{!2594, !2595}
!2594 = !DILocalVariable(name: "x", arg: 1, scope: !2592, file: !3, line: 598, type: !574)
!2595 = !DILocalVariable(name: "temp", scope: !2592, file: !3, line: 600, type: !574)
!2596 = !DILocation(line: 0, scope: !2592)
!2597 = !DILocation(line: 600, column: 27, scope: !2592)
!2598 = !DILocation(line: 600, column: 14, scope: !2592)
!2599 = !DILocation(line: 604, column: 9, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 604, column: 7)
!2601 = !DILocation(line: 604, column: 7, scope: !2592)
!2602 = !DILocation(line: 605, column: 9, scope: !2600)
!2603 = !DILocation(line: 605, column: 5, scope: !2600)
!2604 = !DILocation(line: 607, column: 9, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 607, column: 7)
!2606 = !DILocation(line: 607, column: 7, scope: !2592)
!2607 = !DILocation(line: 608, column: 5, scope: !2605)
!2608 = !DILocation(line: 610, column: 3, scope: !2592)
!2609 = distinct !DISubprogram(name: "validize_mem", scope: !3, file: !3, line: 527, type: !2545, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2610)
!2610 = !{!2611}
!2611 = !DILocalVariable(name: "ref", arg: 1, scope: !2609, file: !3, line: 527, type: !574)
!2612 = !DILocation(line: 0, scope: !2609)
!2613 = !DILocation(line: 529, column: 8, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 529, column: 7)
!2615 = !DILocation(line: 529, column: 7, scope: !2609)
!2616 = !DILocation(line: 531, column: 9, scope: !2609)
!2617 = !DILocation(line: 532, column: 36, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 532, column: 7)
!2619 = !DILocation(line: 532, column: 52, scope: !2618)
!2620 = !DILocation(line: 533, column: 8, scope: !2618)
!2621 = !DILocation(line: 532, column: 7, scope: !2618)
!2622 = !DILocation(line: 532, column: 7, scope: !2609)
!2623 = !DILocation(line: 537, column: 38, scope: !2609)
!2624 = !DILocation(line: 537, column: 10, scope: !2609)
!2625 = !DILocation(line: 537, column: 3, scope: !2609)
!2626 = !DILocation(line: 538, column: 1, scope: !2609)
!2627 = distinct !DISubprogram(name: "use_anchored_address", scope: !3, file: !3, line: 545, type: !2545, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2628)
!2628 = !{!2629, !2630, !2631}
!2629 = !DILocalVariable(name: "x", arg: 1, scope: !2627, file: !3, line: 545, type: !574)
!2630 = !DILocalVariable(name: "base", scope: !2627, file: !3, line: 547, type: !574)
!2631 = !DILocalVariable(name: "offset", scope: !2627, file: !3, line: 548, type: !685)
!2632 = !DILocation(line: 0, scope: !2627)
!2633 = !DILocation(line: 550, column: 8, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 550, column: 7)
!2635 = !DILocation(line: 550, column: 7, scope: !2627)
!2636 = !DILocation(line: 553, column: 8, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 553, column: 7)
!2638 = !DILocation(line: 553, column: 7, scope: !2627)
!2639 = !DILocation(line: 557, column: 10, scope: !2627)
!2640 = !DILocation(line: 559, column: 7, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 559, column: 7)
!2642 = !DILocation(line: 559, column: 23, scope: !2641)
!2643 = !DILocation(line: 560, column: 7, scope: !2641)
!2644 = !DILocation(line: 560, column: 10, scope: !2641)
!2645 = !DILocation(line: 560, column: 36, scope: !2641)
!2646 = !DILocation(line: 561, column: 7, scope: !2641)
!2647 = !DILocation(line: 561, column: 10, scope: !2641)
!2648 = !DILocation(line: 559, column: 7, scope: !2627)
!2649 = !DILocation(line: 563, column: 17, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 562, column: 5)
!2651 = !DILocation(line: 564, column: 14, scope: !2650)
!2652 = !DILocation(line: 0, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 568, column: 7)
!2654 = !DILocation(line: 568, column: 7, scope: !2653)
!2655 = !DILocation(line: 565, column: 5, scope: !2650)
!2656 = !DILocation(line: 568, column: 23, scope: !2653)
!2657 = !DILocation(line: 569, column: 7, scope: !2653)
!2658 = !DILocation(line: 569, column: 11, scope: !2653)
!2659 = !DILocation(line: 570, column: 7, scope: !2653)
!2660 = !DILocation(line: 570, column: 10, scope: !2653)
!2661 = !DILocation(line: 571, column: 7, scope: !2653)
!2662 = !DILocation(line: 571, column: 10, scope: !2653)
!2663 = !DILocation(line: 571, column: 34, scope: !2653)
!2664 = !DILocation(line: 572, column: 7, scope: !2653)
!2665 = !DILocation(line: 572, column: 19, scope: !2653)
!2666 = !DILocation(line: 572, column: 11, scope: !2653)
!2667 = !DILocation(line: 568, column: 7, scope: !2627)
!2668 = !DILocation(line: 576, column: 3, scope: !2627)
!2669 = !DILocation(line: 579, column: 13, scope: !2627)
!2670 = !DILocation(line: 579, column: 10, scope: !2627)
!2671 = !DILocation(line: 580, column: 30, scope: !2627)
!2672 = !DILocation(line: 581, column: 9, scope: !2627)
!2673 = !DILocation(line: 580, column: 10, scope: !2627)
!2674 = !DILocation(line: 584, column: 13, scope: !2627)
!2675 = !DILocation(line: 584, column: 10, scope: !2627)
!2676 = !DILocation(line: 589, column: 8, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 589, column: 7)
!2678 = !DILocation(line: 589, column: 7, scope: !2627)
!2679 = !DILocation(line: 590, column: 23, scope: !2677)
!2680 = !DILocation(line: 590, column: 12, scope: !2677)
!2681 = !DILocation(line: 590, column: 5, scope: !2677)
!2682 = !DILocation(line: 592, column: 36, scope: !2627)
!2683 = !DILocation(line: 592, column: 10, scope: !2627)
!2684 = !DILocation(line: 592, column: 3, scope: !2627)
!2685 = !DILocation(line: 593, column: 1, scope: !2627)
!2686 = distinct !DISubprogram(name: "copy_addr_to_reg", scope: !3, file: !3, line: 617, type: !2545, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2687)
!2687 = !{!2688}
!2688 = !DILocalVariable(name: "x", arg: 1, scope: !2686, file: !3, line: 617, type: !574)
!2689 = !DILocation(line: 0, scope: !2686)
!2690 = !DILocation(line: 619, column: 10, scope: !2686)
!2691 = !DILocation(line: 619, column: 3, scope: !2686)
!2692 = distinct !DISubprogram(name: "copy_to_mode_reg", scope: !3, file: !3, line: 626, type: !2440, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2693)
!2693 = !{!2694, !2695, !2696}
!2694 = !DILocalVariable(name: "mode", arg: 1, scope: !2692, file: !3, line: 626, type: !5)
!2695 = !DILocalVariable(name: "x", arg: 2, scope: !2692, file: !3, line: 626, type: !574)
!2696 = !DILocalVariable(name: "temp", scope: !2692, file: !3, line: 628, type: !574)
!2697 = !DILocation(line: 0, scope: !2692)
!2698 = !DILocation(line: 628, column: 14, scope: !2692)
!2699 = !DILocation(line: 632, column: 9, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 632, column: 7)
!2701 = !DILocation(line: 632, column: 7, scope: !2692)
!2702 = !DILocation(line: 633, column: 9, scope: !2700)
!2703 = !DILocation(line: 633, column: 5, scope: !2700)
!2704 = !DILocation(line: 635, column: 3, scope: !2692)
!2705 = !DILocation(line: 636, column: 9, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 636, column: 7)
!2707 = !DILocation(line: 636, column: 7, scope: !2692)
!2708 = !DILocation(line: 637, column: 5, scope: !2706)
!2709 = !DILocation(line: 638, column: 3, scope: !2692)
!2710 = distinct !DISubprogram(name: "force_not_mem", scope: !3, file: !3, line: 725, type: !2545, scopeLine: 726, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2711)
!2711 = !{!2712, !2713}
!2712 = !DILocalVariable(name: "x", arg: 1, scope: !2710, file: !3, line: 725, type: !574)
!2713 = !DILocalVariable(name: "temp", scope: !2710, file: !3, line: 727, type: !574)
!2714 = !DILocation(line: 0, scope: !2710)
!2715 = !DILocation(line: 729, column: 8, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 729, column: 7)
!2717 = !DILocation(line: 729, column: 18, scope: !2716)
!2718 = !DILocation(line: 729, column: 21, scope: !2716)
!2719 = !DILocation(line: 729, column: 34, scope: !2716)
!2720 = !DILocation(line: 729, column: 7, scope: !2710)
!2721 = !DILocation(line: 732, column: 23, scope: !2710)
!2722 = !DILocation(line: 732, column: 10, scope: !2710)
!2723 = !DILocation(line: 734, column: 7, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 734, column: 7)
!2725 = !DILocation(line: 734, column: 7, scope: !2710)
!2726 = !DILocation(line: 735, column: 5, scope: !2724)
!2727 = !DILocation(line: 735, column: 24, scope: !2724)
!2728 = !DILocation(line: 737, column: 3, scope: !2710)
!2729 = !DILocation(line: 738, column: 3, scope: !2710)
!2730 = !DILocation(line: 739, column: 1, scope: !2710)
!2731 = distinct !DISubprogram(name: "copy_to_suggested_reg", scope: !3, file: !3, line: 746, type: !2732, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!574, !574, !574, !5}
!2734 = !{!2735, !2736, !2737, !2738}
!2735 = !DILocalVariable(name: "x", arg: 1, scope: !2731, file: !3, line: 746, type: !574)
!2736 = !DILocalVariable(name: "target", arg: 2, scope: !2731, file: !3, line: 746, type: !574)
!2737 = !DILocalVariable(name: "mode", arg: 3, scope: !2731, file: !3, line: 746, type: !5)
!2738 = !DILocalVariable(name: "temp", scope: !2731, file: !3, line: 748, type: !574)
!2739 = !DILocation(line: 0, scope: !2731)
!2740 = !DILocation(line: 750, column: 7, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 750, column: 7)
!2742 = !DILocation(line: 750, column: 14, scope: !2741)
!2743 = !DILocation(line: 750, column: 17, scope: !2741)
!2744 = !DILocation(line: 750, column: 7, scope: !2731)
!2745 = !DILocation(line: 753, column: 12, scope: !2741)
!2746 = !DILocation(line: 0, scope: !2741)
!2747 = !DILocation(line: 755, column: 3, scope: !2731)
!2748 = !DILocation(line: 756, column: 3, scope: !2731)
!2749 = distinct !DISubprogram(name: "promote_function_mode", scope: !3, file: !3, line: 767, type: !2750, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2756)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!5, !2752, !5, !2755, !2752, !566}
!2752 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !539, line: 59, baseType: !2753)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!2756 = !{!2757, !2758, !2759, !2760, !2761}
!2757 = !DILocalVariable(name: "type", arg: 1, scope: !2749, file: !3, line: 767, type: !2752)
!2758 = !DILocalVariable(name: "mode", arg: 2, scope: !2749, file: !3, line: 767, type: !5)
!2759 = !DILocalVariable(name: "punsignedp", arg: 3, scope: !2749, file: !3, line: 767, type: !2755)
!2760 = !DILocalVariable(name: "funtype", arg: 4, scope: !2749, file: !3, line: 768, type: !2752)
!2761 = !DILocalVariable(name: "for_return", arg: 5, scope: !2749, file: !3, line: 768, type: !566)
!2762 = !DILocation(line: 0, scope: !2749)
!2763 = !DILocation(line: 770, column: 11, scope: !2749)
!2764 = !DILocation(line: 770, column: 3, scope: !2749)
!2765 = !DILocation(line: 775, column: 28, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 771, column: 5)
!2767 = !DILocation(line: 775, column: 14, scope: !2766)
!2768 = !DILocation(line: 775, column: 7, scope: !2766)
!2769 = !DILocation(line: 0, scope: !2766)
!2770 = !DILocation(line: 781, column: 1, scope: !2749)
!2771 = distinct !DISubprogram(name: "promote_mode", scope: !3, file: !3, line: 787, type: !2772, scopeLine: 789, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2774)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!5, !2752, !5, !2755}
!2774 = !{!2775, !2776, !2777, !2778, !2780}
!2775 = !DILocalVariable(name: "type", arg: 1, scope: !2771, file: !3, line: 787, type: !2752)
!2776 = !DILocalVariable(name: "mode", arg: 2, scope: !2771, file: !3, line: 787, type: !5)
!2777 = !DILocalVariable(name: "punsignedp", arg: 3, scope: !2771, file: !3, line: 788, type: !2755)
!2778 = !DILocalVariable(name: "code", scope: !2771, file: !3, line: 794, type: !2779)
!2779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!2780 = !DILocalVariable(name: "unsignedp", scope: !2771, file: !3, line: 795, type: !566)
!2781 = !DILocation(line: 0, scope: !2771)
!2782 = !DILocation(line: 794, column: 31, scope: !2771)
!2783 = !DILocation(line: 797, column: 3, scope: !2771)
!2784 = !DILocation(line: 801, column: 7, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 801, column: 7)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 801, column: 7)
!2787 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 798, column: 5)
!2788 = !DILocation(line: 801, column: 7, scope: !2786)
!2789 = !DILocation(line: 803, column: 7, scope: !2787)
!2790 = !DILocation(line: 0, scope: !2787)
!2791 = !DILocation(line: 821, column: 1, scope: !2771)
!2792 = distinct !DISubprogram(name: "promote_decl_mode", scope: !3, file: !3, line: 829, type: !2793, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2795)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!5, !2752, !2755}
!2795 = !{!2796, !2797, !2798, !2799, !2800, !2801}
!2796 = !DILocalVariable(name: "decl", arg: 1, scope: !2792, file: !3, line: 829, type: !2752)
!2797 = !DILocalVariable(name: "punsignedp", arg: 2, scope: !2792, file: !3, line: 829, type: !2755)
!2798 = !DILocalVariable(name: "type", scope: !2792, file: !3, line: 831, type: !630)
!2799 = !DILocalVariable(name: "unsignedp", scope: !2792, file: !3, line: 832, type: !566)
!2800 = !DILocalVariable(name: "mode", scope: !2792, file: !3, line: 833, type: !5)
!2801 = !DILocalVariable(name: "pmode", scope: !2792, file: !3, line: 834, type: !5)
!2802 = !DILocation(line: 0, scope: !2792)
!2803 = !DILocation(line: 831, column: 15, scope: !2792)
!2804 = !DILocation(line: 832, column: 3, scope: !2792)
!2805 = !DILocation(line: 832, column: 19, scope: !2792)
!2806 = !DILocation(line: 832, column: 7, scope: !2792)
!2807 = !DILocation(line: 833, column: 28, scope: !2792)
!2808 = !DILocation(line: 836, column: 7, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 836, column: 7)
!2810 = !DILocation(line: 836, column: 24, scope: !2809)
!2811 = !DILocation(line: 837, column: 7, scope: !2809)
!2812 = !DILocation(line: 837, column: 27, scope: !2809)
!2813 = !DILocation(line: 836, column: 7, scope: !2792)
!2814 = !DILocation(line: 839, column: 36, scope: !2809)
!2815 = !DILocation(line: 838, column: 13, scope: !2809)
!2816 = !DILocation(line: 838, column: 5, scope: !2809)
!2817 = !DILocation(line: 841, column: 13, scope: !2809)
!2818 = !DILocation(line: 0, scope: !2809)
!2819 = !DILocation(line: 843, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 843, column: 7)
!2821 = !DILocation(line: 843, column: 7, scope: !2792)
!2822 = !DILocation(line: 844, column: 19, scope: !2820)
!2823 = !DILocation(line: 844, column: 17, scope: !2820)
!2824 = !DILocation(line: 844, column: 5, scope: !2820)
!2825 = !DILocation(line: 846, column: 1, scope: !2792)
!2826 = !DILocation(line: 845, column: 3, scope: !2792)
!2827 = distinct !DISubprogram(name: "adjust_stack", scope: !3, file: !3, line: 853, type: !2828, scopeLine: 854, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2830)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{null, !574}
!2830 = !{!2831, !2832}
!2831 = !DILocalVariable(name: "adjust", arg: 1, scope: !2827, file: !3, line: 853, type: !574)
!2832 = !DILocalVariable(name: "temp", scope: !2827, file: !3, line: 855, type: !574)
!2833 = !DILocation(line: 0, scope: !2827)
!2834 = !DILocation(line: 857, column: 17, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 857, column: 7)
!2836 = !DILocation(line: 857, column: 14, scope: !2835)
!2837 = !DILocation(line: 857, column: 7, scope: !2827)
!2838 = !DILocation(line: 862, column: 7, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 862, column: 7)
!2840 = !DILocation(line: 862, column: 7, scope: !2827)
!2841 = !DILocation(line: 863, column: 28, scope: !2839)
!2842 = !DILocation(line: 863, column: 25, scope: !2839)
!2843 = !DILocation(line: 863, column: 5, scope: !2839)
!2844 = !DILocation(line: 871, column: 10, scope: !2827)
!2845 = !DILocation(line: 865, column: 10, scope: !2827)
!2846 = !DILocation(line: 874, column: 15, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 874, column: 7)
!2848 = !DILocation(line: 874, column: 12, scope: !2847)
!2849 = !DILocation(line: 874, column: 7, scope: !2827)
!2850 = !DILocation(line: 875, column: 5, scope: !2847)
!2851 = !DILocation(line: 876, column: 1, scope: !2827)
!2852 = distinct !DISubprogram(name: "anti_adjust_stack", scope: !3, file: !3, line: 882, type: !2828, scopeLine: 883, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2853)
!2853 = !{!2854, !2855}
!2854 = !DILocalVariable(name: "adjust", arg: 1, scope: !2852, file: !3, line: 882, type: !574)
!2855 = !DILocalVariable(name: "temp", scope: !2852, file: !3, line: 884, type: !574)
!2856 = !DILocation(line: 0, scope: !2852)
!2857 = !DILocation(line: 886, column: 17, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 886, column: 7)
!2859 = !DILocation(line: 886, column: 14, scope: !2858)
!2860 = !DILocation(line: 886, column: 7, scope: !2852)
!2861 = !DILocation(line: 891, column: 7, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 891, column: 7)
!2863 = !DILocation(line: 891, column: 7, scope: !2852)
!2864 = !DILocation(line: 892, column: 28, scope: !2862)
!2865 = !DILocation(line: 892, column: 25, scope: !2862)
!2866 = !DILocation(line: 892, column: 5, scope: !2862)
!2867 = !DILocation(line: 900, column: 10, scope: !2852)
!2868 = !DILocation(line: 894, column: 10, scope: !2852)
!2869 = !DILocation(line: 903, column: 15, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 903, column: 7)
!2871 = !DILocation(line: 903, column: 12, scope: !2870)
!2872 = !DILocation(line: 903, column: 7, scope: !2852)
!2873 = !DILocation(line: 904, column: 5, scope: !2870)
!2874 = !DILocation(line: 905, column: 1, scope: !2852)
!2875 = distinct !DISubprogram(name: "emit_stack_save", scope: !3, file: !3, line: 949, type: !2876, scopeLine: 950, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2878)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{null, !548, !2111, !574}
!2878 = !{!2879, !2880, !2881, !2882, !2883, !2887, !2888}
!2879 = !DILocalVariable(name: "save_level", arg: 1, scope: !2875, file: !3, line: 949, type: !548)
!2880 = !DILocalVariable(name: "psave", arg: 2, scope: !2875, file: !3, line: 949, type: !2111)
!2881 = !DILocalVariable(name: "after", arg: 3, scope: !2875, file: !3, line: 949, type: !574)
!2882 = !DILocalVariable(name: "sa", scope: !2875, file: !3, line: 951, type: !574)
!2883 = !DILocalVariable(name: "fcn", scope: !2875, file: !3, line: 953, type: !2884)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!574, !574, !574}
!2887 = !DILocalVariable(name: "mode", scope: !2875, file: !3, line: 954, type: !5)
!2888 = !DILocalVariable(name: "seq", scope: !2889, file: !3, line: 997, type: !574)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 996, column: 5)
!2890 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 995, column: 7)
!2891 = !DILocation(line: 0, scope: !2875)
!2892 = !DILocation(line: 951, column: 12, scope: !2875)
!2893 = !DILocation(line: 984, column: 10, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 984, column: 7)
!2895 = !DILocation(line: 984, column: 7, scope: !2875)
!2896 = !DILocation(line: 988, column: 19, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 988, column: 8)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 987, column: 2)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 986, column: 11)
!2900 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 985, column: 5)
!2901 = !DILocation(line: 988, column: 8, scope: !2898)
!2902 = !DILocation(line: 989, column: 46, scope: !2897)
!2903 = !DILocation(line: 989, column: 20, scope: !2897)
!2904 = !DILocation(line: 989, column: 13, scope: !2897)
!2905 = !DILocation(line: 989, column: 6, scope: !2897)
!2906 = !DILocation(line: 991, column: 20, scope: !2897)
!2907 = !DILocation(line: 991, column: 13, scope: !2897)
!2908 = !DILocation(line: 995, column: 7, scope: !2890)
!2909 = !DILocation(line: 995, column: 7, scope: !2875)
!2910 = !DILocation(line: 999, column: 7, scope: !2889)
!2911 = !DILocation(line: 1000, column: 7, scope: !2889)
!2912 = !DILocation(line: 1003, column: 14, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 1003, column: 11)
!2914 = !DILocation(line: 1003, column: 11, scope: !2889)
!2915 = !DILocation(line: 1004, column: 7, scope: !2913)
!2916 = !DILocation(line: 1004, column: 2, scope: !2913)
!2917 = !DILocation(line: 1005, column: 27, scope: !2889)
!2918 = !DILocation(line: 1005, column: 18, scope: !2889)
!2919 = !DILocation(line: 1005, column: 7, scope: !2889)
!2920 = !DILocation(line: 1006, column: 13, scope: !2889)
!2921 = !DILocation(line: 0, scope: !2889)
!2922 = !DILocation(line: 1007, column: 7, scope: !2889)
!2923 = !DILocation(line: 1008, column: 7, scope: !2889)
!2924 = !DILocation(line: 1009, column: 5, scope: !2889)
!2925 = !DILocation(line: 1012, column: 7, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 1011, column: 5)
!2927 = !DILocation(line: 1013, column: 14, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 1013, column: 11)
!2929 = !DILocation(line: 1013, column: 11, scope: !2926)
!2930 = !DILocation(line: 1014, column: 7, scope: !2928)
!2931 = !DILocation(line: 1014, column: 2, scope: !2928)
!2932 = !DILocation(line: 1015, column: 27, scope: !2926)
!2933 = !DILocation(line: 1015, column: 18, scope: !2926)
!2934 = !DILocation(line: 1015, column: 7, scope: !2926)
!2935 = !DILocation(line: 1017, column: 1, scope: !2875)
!2936 = distinct !DISubprogram(name: "emit_stack_restore", scope: !3, file: !3, line: 1026, type: !2937, scopeLine: 1027, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2939)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{null, !548, !574, !574}
!2939 = !{!2940, !2941, !2942, !2943, !2944}
!2940 = !DILocalVariable(name: "save_level", arg: 1, scope: !2936, file: !3, line: 1026, type: !548)
!2941 = !DILocalVariable(name: "sa", arg: 2, scope: !2936, file: !3, line: 1026, type: !574)
!2942 = !DILocalVariable(name: "after", arg: 3, scope: !2936, file: !3, line: 1026, type: !574)
!2943 = !DILocalVariable(name: "fcn", scope: !2936, file: !3, line: 1029, type: !2884)
!2944 = !DILocalVariable(name: "seq", scope: !2945, file: !3, line: 1070, type: !574)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 1069, column: 5)
!2946 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 1068, column: 7)
!2947 = !DILocation(line: 0, scope: !2936)
!2948 = !DILocation(line: 1056, column: 10, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 1056, column: 7)
!2950 = !DILocation(line: 1056, column: 7, scope: !2936)
!2951 = !DILocation(line: 1058, column: 12, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 1057, column: 5)
!2953 = !DILocation(line: 1062, column: 43, scope: !2952)
!2954 = !DILocation(line: 1062, column: 21, scope: !2952)
!2955 = !DILocation(line: 1062, column: 7, scope: !2952)
!2956 = !DILocation(line: 1063, column: 43, scope: !2952)
!2957 = !DILocation(line: 1063, column: 21, scope: !2952)
!2958 = !DILocation(line: 1063, column: 7, scope: !2952)
!2959 = !DILocation(line: 1064, column: 5, scope: !2952)
!2960 = !DILocation(line: 1066, column: 3, scope: !2936)
!2961 = !DILocation(line: 1068, column: 7, scope: !2946)
!2962 = !DILocation(line: 1068, column: 7, scope: !2936)
!2963 = !DILocation(line: 1072, column: 7, scope: !2945)
!2964 = !DILocation(line: 1073, column: 23, scope: !2945)
!2965 = !DILocation(line: 1073, column: 18, scope: !2945)
!2966 = !DILocation(line: 1073, column: 7, scope: !2945)
!2967 = !DILocation(line: 1074, column: 13, scope: !2945)
!2968 = !DILocation(line: 0, scope: !2945)
!2969 = !DILocation(line: 1075, column: 7, scope: !2945)
!2970 = !DILocation(line: 1076, column: 7, scope: !2945)
!2971 = !DILocation(line: 1077, column: 5, scope: !2945)
!2972 = !DILocation(line: 1079, column: 21, scope: !2946)
!2973 = !DILocation(line: 1079, column: 16, scope: !2946)
!2974 = !DILocation(line: 1079, column: 5, scope: !2946)
!2975 = !DILocation(line: 1080, column: 1, scope: !2936)
!2976 = distinct !DISubprogram(name: "update_nonlocal_goto_save_area", scope: !3, file: !3, line: 1087, type: !2977, scopeLine: 1088, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2979)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{null}
!2979 = !{!2980, !2981}
!2980 = !DILocalVariable(name: "t_save", scope: !2976, file: !3, line: 1089, type: !630)
!2981 = !DILocalVariable(name: "r_save", scope: !2976, file: !3, line: 1090, type: !574)
!2982 = !DILocation(line: 1090, column: 3, scope: !2976)
!2983 = !DILocation(line: 1096, column: 12, scope: !2976)
!2984 = !DILocation(line: 0, scope: !2976)
!2985 = !DILocation(line: 1098, column: 12, scope: !2976)
!2986 = !DILocation(line: 1098, column: 10, scope: !2976)
!2987 = !DILocation(line: 1100, column: 3, scope: !2976)
!2988 = !DILocation(line: 1101, column: 1, scope: !2976)
!2989 = distinct !DISubprogram(name: "allocate_dynamic_stack_space", scope: !3, file: !3, line: 1115, type: !2990, scopeLine: 1116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!574, !574, !574, !566}
!2992 = !{!2993, !2994, !2995, !2996, !2999, !3005, !3009}
!2993 = !DILocalVariable(name: "size", arg: 1, scope: !2989, file: !3, line: 1115, type: !574)
!2994 = !DILocalVariable(name: "target", arg: 2, scope: !2989, file: !3, line: 1115, type: !574)
!2995 = !DILocalVariable(name: "known_align", arg: 3, scope: !2989, file: !3, line: 1115, type: !566)
!2996 = !DILocalVariable(name: "mode", scope: !2997, file: !3, line: 1260, type: !5)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 1259, column: 5)
!2998 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 1258, column: 7)
!2999 = !DILocalVariable(name: "pred", scope: !2997, file: !3, line: 1261, type: !3000)
!3000 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_operand_predicate_fn", file: !3001, line: 249, baseType: !3002)
!3001 = !DIFile(filename: "./recog.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!566, !574, !5}
!3005 = !DILocalVariable(name: "available", scope: !3006, file: !3, line: 1286, type: !574)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 1285, column: 2)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 1284, column: 11)
!3008 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 1278, column: 5)
!3009 = !DILocalVariable(name: "space_available", scope: !3006, file: !3, line: 1287, type: !574)
!3010 = !DILocation(line: 0, scope: !2989)
!3011 = !DILocation(line: 1120, column: 15, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 1120, column: 7)
!3013 = !DILocation(line: 1120, column: 12, scope: !3012)
!3014 = !DILocation(line: 1120, column: 7, scope: !2989)
!3015 = !DILocation(line: 1121, column: 12, scope: !3012)
!3016 = !DILocation(line: 1121, column: 5, scope: !3012)
!3017 = !DILocation(line: 1124, column: 3, scope: !2989)
!3018 = !DILocation(line: 1124, column: 9, scope: !2989)
!3019 = !DILocation(line: 1124, column: 22, scope: !2989)
!3020 = !DILocation(line: 1127, column: 7, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 1127, column: 7)
!3022 = !DILocation(line: 1127, column: 23, scope: !3021)
!3023 = !DILocation(line: 1127, column: 35, scope: !3021)
!3024 = !DILocation(line: 1127, column: 54, scope: !3021)
!3025 = !DILocation(line: 1127, column: 7, scope: !2989)
!3026 = !DILocation(line: 1128, column: 12, scope: !3021)
!3027 = !DILocation(line: 1128, column: 5, scope: !3021)
!3028 = !DILocation(line: 1133, column: 36, scope: !2989)
!3029 = !DILocation(line: 1133, column: 34, scope: !2989)
!3030 = !DILocation(line: 1157, column: 11, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 1154, column: 7)
!3032 = !DILocation(line: 1157, column: 45, scope: !3031)
!3033 = !DILocation(line: 1156, column: 24, scope: !3031)
!3034 = !DILocation(line: 1156, column: 9, scope: !3031)
!3035 = !DILocation(line: 1227, column: 12, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 1225, column: 7)
!3037 = !DILocation(line: 1229, column: 3, scope: !2989)
!3038 = !DILocation(line: 1233, column: 3, scope: !2989)
!3039 = !DILocation(line: 1247, column: 14, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 1247, column: 7)
!3041 = !DILocation(line: 1247, column: 19, scope: !3040)
!3042 = !DILocation(line: 1247, column: 23, scope: !3040)
!3043 = !DILocation(line: 1248, column: 7, scope: !3040)
!3044 = !DILocation(line: 1248, column: 10, scope: !3040)
!3045 = !DILocation(line: 1248, column: 25, scope: !3040)
!3046 = !DILocation(line: 1249, column: 7, scope: !3040)
!3047 = !DILocation(line: 1249, column: 10, scope: !3040)
!3048 = !DILocation(line: 1249, column: 28, scope: !3040)
!3049 = !DILocation(line: 1247, column: 7, scope: !2989)
!3050 = !DILocation(line: 1250, column: 14, scope: !3040)
!3051 = !DILocation(line: 1250, column: 5, scope: !3040)
!3052 = !DILocation(line: 1252, column: 3, scope: !2989)
!3053 = !DILocation(line: 1258, column: 7, scope: !2998)
!3054 = !DILocation(line: 1258, column: 7, scope: !2989)
!3055 = !DILocation(line: 1260, column: 32, scope: !2997)
!3056 = !DILocation(line: 0, scope: !2997)
!3057 = !DILocation(line: 1267, column: 16, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 1267, column: 11)
!3059 = !DILocation(line: 1267, column: 11, scope: !2997)
!3060 = !DILocation(line: 1270, column: 55, scope: !2997)
!3061 = !DILocation(line: 1268, column: 50, scope: !3058)
!3062 = !DILocation(line: 1268, column: 61, scope: !3058)
!3063 = !DILocation(line: 1268, column: 2, scope: !3058)
!3064 = !DILocation(line: 1270, column: 66, scope: !2997)
!3065 = !DILocation(line: 1271, column: 11, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 1271, column: 11)
!3067 = !DILocation(line: 1271, column: 16, scope: !3066)
!3068 = !DILocation(line: 1271, column: 22, scope: !3066)
!3069 = !DILocation(line: 1271, column: 11, scope: !2997)
!3070 = !DILocation(line: 1272, column: 33, scope: !3066)
!3071 = !DILocation(line: 1272, column: 9, scope: !3066)
!3072 = !DILocation(line: 1272, column: 2, scope: !3066)
!3073 = !DILocation(line: 1274, column: 18, scope: !2997)
!3074 = !DILocation(line: 1274, column: 7, scope: !2997)
!3075 = !DILocation(line: 1275, column: 5, scope: !2997)
!3076 = !DILocation(line: 1284, column: 17, scope: !3007)
!3077 = !DILocation(line: 1284, column: 11, scope: !3007)
!3078 = !DILocation(line: 1284, column: 11, scope: !3008)
!3079 = !DILocation(line: 1287, column: 26, scope: !3006)
!3080 = !DILocation(line: 0, scope: !3006)
!3081 = !DILocation(line: 1290, column: 9, scope: !3006)
!3082 = !DILocation(line: 1290, column: 28, scope: !3006)
!3083 = !DILocation(line: 1289, column: 16, scope: !3006)
!3084 = !DILocation(line: 1297, column: 4, scope: !3006)
!3085 = !DILocation(line: 1301, column: 17, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 1300, column: 8)
!3087 = !DILocation(line: 1301, column: 6, scope: !3086)
!3088 = !DILocation(line: 1305, column: 4, scope: !3006)
!3089 = !DILocation(line: 1306, column: 4, scope: !3006)
!3090 = !DILocation(line: 1307, column: 2, scope: !3006)
!3091 = !DILocation(line: 1309, column: 11, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 1309, column: 11)
!3093 = !DILocation(line: 1309, column: 11, scope: !3008)
!3094 = !DILocation(line: 1310, column: 2, scope: !3092)
!3095 = !DILocation(line: 1312, column: 2, scope: !3092)
!3096 = !DILocation(line: 1315, column: 31, scope: !3008)
!3097 = !DILocation(line: 1315, column: 7, scope: !3008)
!3098 = !DILocation(line: 1325, column: 9, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 1320, column: 5)
!3100 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 1319, column: 7)
!3101 = !DILocation(line: 1324, column: 16, scope: !3099)
!3102 = !DILocation(line: 1328, column: 10, scope: !3099)
!3103 = !DILocation(line: 1327, column: 16, scope: !3099)
!3104 = !DILocation(line: 1331, column: 8, scope: !3099)
!3105 = !DILocation(line: 1330, column: 16, scope: !3099)
!3106 = !DILocation(line: 1336, column: 7, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 1336, column: 7)
!3108 = !DILocation(line: 1336, column: 13, scope: !3107)
!3109 = !DILocation(line: 1336, column: 37, scope: !3107)
!3110 = !DILocation(line: 1336, column: 7, scope: !2989)
!3111 = !DILocation(line: 1337, column: 5, scope: !3107)
!3112 = !DILocation(line: 1340, column: 1, scope: !2989)
!3113 = distinct !DISubprogram(name: "round_push", scope: !3, file: !3, line: 911, type: !2545, scopeLine: 912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3114)
!3114 = !{!3115, !3116, !3117}
!3115 = !DILocalVariable(name: "size", arg: 1, scope: !3113, file: !3, line: 911, type: !574)
!3116 = !DILocalVariable(name: "align", scope: !3113, file: !3, line: 913, type: !566)
!3117 = !DILocalVariable(name: "new_size", scope: !3118, file: !3, line: 920, type: !685)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 919, column: 5)
!3119 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 918, column: 7)
!3120 = !DILocation(line: 0, scope: !3113)
!3121 = !DILocation(line: 913, column: 15, scope: !3113)
!3122 = !DILocation(line: 913, column: 40, scope: !3113)
!3123 = !DILocation(line: 915, column: 13, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 915, column: 7)
!3125 = !DILocation(line: 915, column: 7, scope: !3113)
!3126 = !DILocation(line: 918, column: 7, scope: !3119)
!3127 = !DILocation(line: 918, column: 7, scope: !3113)
!3128 = !DILocation(line: 920, column: 33, scope: !3118)
!3129 = !DILocation(line: 920, column: 49, scope: !3118)
!3130 = !DILocation(line: 920, column: 47, scope: !3118)
!3131 = !DILocation(line: 920, column: 55, scope: !3118)
!3132 = !DILocation(line: 920, column: 68, scope: !3118)
!3133 = !DILocation(line: 0, scope: !3118)
!3134 = !DILocation(line: 922, column: 25, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3118, file: !3, line: 922, column: 11)
!3136 = !DILocation(line: 922, column: 11, scope: !3118)
!3137 = !DILocation(line: 923, column: 9, scope: !3135)
!3138 = !DILocation(line: 923, column: 2, scope: !3135)
!3139 = !DILocation(line: 930, column: 52, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 926, column: 5)
!3141 = !DILocation(line: 930, column: 14, scope: !3140)
!3142 = !DILocation(line: 932, column: 61, scope: !3140)
!3143 = !DILocation(line: 932, column: 14, scope: !3140)
!3144 = !DILocation(line: 934, column: 40, scope: !3140)
!3145 = !DILocation(line: 934, column: 14, scope: !3140)
!3146 = !DILocation(line: 938, column: 1, scope: !3113)
!3147 = distinct !DISubprogram(name: "rhs_regno", scope: !396, file: !396, line: 1051, type: !3148, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3153)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!7, !3150}
!3150 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !539, line: 51, baseType: !3151)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!3153 = !{!3154}
!3154 = !DILocalVariable(name: "x", arg: 1, scope: !3147, file: !396, line: 1051, type: !3150)
!3155 = !DILocation(line: 0, scope: !3147)
!3156 = !DILocation(line: 1053, column: 10, scope: !3147)
!3157 = !DILocation(line: 1053, column: 3, scope: !3147)
!3158 = distinct !DISubprogram(name: "anti_adjust_stack_and_probe", scope: !3, file: !3, line: 1550, type: !3159, scopeLine: 1551, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3161)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{null, !574, !565}
!3161 = !{!3162, !3163, !3164, !3166, !3169, !3170, !3171, !3173, !3174, !3175, !3176, !3177}
!3162 = !DILocalVariable(name: "size", arg: 1, scope: !3158, file: !3, line: 1550, type: !574)
!3163 = !DILocalVariable(name: "adjust_back", arg: 2, scope: !3158, file: !3, line: 1550, type: !565)
!3164 = !DILocalVariable(name: "dope", scope: !3158, file: !3, line: 1555, type: !3165)
!3165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!3166 = !DILocalVariable(name: "isize", scope: !3167, file: !3, line: 1565, type: !685)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 1564, column: 5)
!3168 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 1563, column: 7)
!3169 = !DILocalVariable(name: "i", scope: !3167, file: !3, line: 1565, type: !685)
!3170 = !DILocalVariable(name: "first_probe", scope: !3167, file: !3, line: 1566, type: !565)
!3171 = !DILocalVariable(name: "rounded_size", scope: !3172, file: !3, line: 1598, type: !574)
!3172 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 1597, column: 5)
!3173 = !DILocalVariable(name: "rounded_size_op", scope: !3172, file: !3, line: 1598, type: !574)
!3174 = !DILocalVariable(name: "last_addr", scope: !3172, file: !3, line: 1598, type: !574)
!3175 = !DILocalVariable(name: "temp", scope: !3172, file: !3, line: 1598, type: !574)
!3176 = !DILocalVariable(name: "loop_lab", scope: !3172, file: !3, line: 1599, type: !574)
!3177 = !DILocalVariable(name: "end_lab", scope: !3172, file: !3, line: 1600, type: !574)
!3178 = !DILocation(line: 0, scope: !3158)
!3179 = !DILocation(line: 1558, column: 7, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 1558, column: 7)
!3181 = !DILocation(line: 1558, column: 23, scope: !3180)
!3182 = !DILocation(line: 1558, column: 35, scope: !3180)
!3183 = !DILocation(line: 1558, column: 54, scope: !3180)
!3184 = !DILocation(line: 1558, column: 7, scope: !3158)
!3185 = !DILocation(line: 1559, column: 12, scope: !3180)
!3186 = !DILocation(line: 0, scope: !3168)
!3187 = !DILocation(line: 1563, column: 7, scope: !3168)
!3188 = !DILocation(line: 1559, column: 5, scope: !3180)
!3189 = !DILocation(line: 1563, column: 23, scope: !3168)
!3190 = !DILocation(line: 1563, column: 36, scope: !3168)
!3191 = !DILocation(line: 1563, column: 39, scope: !3168)
!3192 = !DILocation(line: 1563, column: 53, scope: !3168)
!3193 = !DILocation(line: 1563, column: 7, scope: !3158)
!3194 = !DILocation(line: 0, scope: !3167)
!3195 = !DILocation(line: 1572, column: 12, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 1572, column: 7)
!3197 = !DILocation(line: 0, scope: !3196)
!3198 = !DILocation(line: 1572, column: 34, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 1572, column: 7)
!3200 = !DILocation(line: 1572, column: 7, scope: !3196)
!3201 = !DILocation(line: 1574, column: 8, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 1573, column: 2)
!3203 = !DILocation(line: 1576, column: 27, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 1575, column: 6)
!3205 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 1574, column: 8)
!3206 = !DILocation(line: 1576, column: 8, scope: !3204)
!3207 = !DILocation(line: 1578, column: 6, scope: !3204)
!3208 = !DILocation(line: 1580, column: 25, scope: !3205)
!3209 = !DILocation(line: 1580, column: 6, scope: !3205)
!3210 = !DILocation(line: 1581, column: 22, scope: !3202)
!3211 = !DILocation(line: 1581, column: 4, scope: !3202)
!3212 = !DILocation(line: 1572, column: 45, scope: !3199)
!3213 = !DILocation(line: 1572, column: 7, scope: !3199)
!3214 = distinct !{!3214, !3200, !3215}
!3215 = !DILocation(line: 1582, column: 2, scope: !3196)
!3216 = !DILocation(line: 1584, column: 11, scope: !3167)
!3217 = !DILocation(line: 1585, column: 21, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 1584, column: 11)
!3219 = !DILocation(line: 1585, column: 2, scope: !3218)
!3220 = !DILocation(line: 1587, column: 57, scope: !3218)
!3221 = !DILocation(line: 1587, column: 21, scope: !3218)
!3222 = !DILocation(line: 1587, column: 2, scope: !3218)
!3223 = !DILocation(line: 1588, column: 25, scope: !3167)
!3224 = !DILocation(line: 1588, column: 7, scope: !3167)
!3225 = !DILocation(line: 1589, column: 5, scope: !3167)
!3226 = !DILocation(line: 1599, column: 22, scope: !3172)
!3227 = !DILocation(line: 0, scope: !3172)
!3228 = !DILocation(line: 1600, column: 21, scope: !3172)
!3229 = !DILocation(line: 1607, column: 43, scope: !3172)
!3230 = !DILocation(line: 1607, column: 4, scope: !3172)
!3231 = !DILocation(line: 1608, column: 25, scope: !3172)
!3232 = !DILocation(line: 1614, column: 26, scope: !3172)
!3233 = !DILocation(line: 1614, column: 7, scope: !3172)
!3234 = !DILocation(line: 1617, column: 34, scope: !3172)
!3235 = !DILocation(line: 1617, column: 19, scope: !3172)
!3236 = !DILocation(line: 1633, column: 7, scope: !3172)
!3237 = !DILocation(line: 1636, column: 32, scope: !3172)
!3238 = !DILocation(line: 1636, column: 7, scope: !3172)
!3239 = !DILocation(line: 1640, column: 26, scope: !3172)
!3240 = !DILocation(line: 1640, column: 7, scope: !3172)
!3241 = !DILocation(line: 1641, column: 25, scope: !3172)
!3242 = !DILocation(line: 1641, column: 7, scope: !3172)
!3243 = !DILocation(line: 1643, column: 7, scope: !3172)
!3244 = !DILocation(line: 1645, column: 7, scope: !3172)
!3245 = !DILocation(line: 1652, column: 14, scope: !3172)
!3246 = !DILocation(line: 1653, column: 19, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 1653, column: 11)
!3248 = !DILocation(line: 1653, column: 16, scope: !3247)
!3249 = !DILocation(line: 1653, column: 11, scope: !3172)
!3250 = !DILocation(line: 1656, column: 8, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 1656, column: 8)
!3252 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 1654, column: 2)
!3253 = !DILocation(line: 1656, column: 24, scope: !3251)
!3254 = !DILocation(line: 1656, column: 8, scope: !3252)
!3255 = !DILocation(line: 1657, column: 13, scope: !3251)
!3256 = !DILocation(line: 1657, column: 6, scope: !3251)
!3257 = !DILocation(line: 1658, column: 4, scope: !3252)
!3258 = !DILocation(line: 1659, column: 22, scope: !3252)
!3259 = !DILocation(line: 1659, column: 4, scope: !3252)
!3260 = !DILocation(line: 1660, column: 2, scope: !3252)
!3261 = !DILocation(line: 1664, column: 7, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 1664, column: 7)
!3263 = !DILocation(line: 1664, column: 7, scope: !3158)
!3264 = !DILocation(line: 1665, column: 19, scope: !3262)
!3265 = !DILocation(line: 1665, column: 5, scope: !3262)
!3266 = !DILocation(line: 1667, column: 19, scope: !3262)
!3267 = !DILocation(line: 1667, column: 5, scope: !3262)
!3268 = !DILocation(line: 1668, column: 1, scope: !3158)
!3269 = distinct !DISubprogram(name: "set_stack_check_libfunc", scope: !3, file: !3, line: 1349, type: !2828, scopeLine: 1350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3270)
!3270 = !{!3271}
!3271 = !DILocalVariable(name: "libfunc", arg: 1, scope: !3269, file: !3, line: 1349, type: !574)
!3272 = !DILocation(line: 0, scope: !3269)
!3273 = !DILocation(line: 1351, column: 23, scope: !3269)
!3274 = !DILocation(line: 1352, column: 1, scope: !3269)
!3275 = distinct !DISubprogram(name: "probe_stack_range", scope: !3, file: !3, line: 1390, type: !3276, scopeLine: 1391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{null, !685, !574}
!3278 = !{!3279, !3280, !3281, !3284, !3287, !3288, !3289, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3300}
!3279 = !DILocalVariable(name: "first", arg: 1, scope: !3275, file: !3, line: 1390, type: !685)
!3280 = !DILocalVariable(name: "size", arg: 2, scope: !3275, file: !3, line: 1390, type: !574)
!3281 = !DILocalVariable(name: "addr", scope: !3282, file: !3, line: 1399, type: !574)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !3, line: 1398, column: 5)
!3283 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 1397, column: 7)
!3284 = !DILocalVariable(name: "isize", scope: !3285, file: !3, line: 1428, type: !685)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 1427, column: 5)
!3286 = distinct !DILexicalBlock(scope: !3283, file: !3, line: 1426, column: 12)
!3287 = !DILocalVariable(name: "i", scope: !3285, file: !3, line: 1428, type: !685)
!3288 = !DILocalVariable(name: "addr", scope: !3285, file: !3, line: 1429, type: !574)
!3289 = !DILocalVariable(name: "rounded_size", scope: !3290, file: !3, line: 1455, type: !574)
!3290 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 1454, column: 5)
!3291 = !DILocalVariable(name: "rounded_size_op", scope: !3290, file: !3, line: 1455, type: !574)
!3292 = !DILocalVariable(name: "test_addr", scope: !3290, file: !3, line: 1455, type: !574)
!3293 = !DILocalVariable(name: "last_addr", scope: !3290, file: !3, line: 1455, type: !574)
!3294 = !DILocalVariable(name: "temp", scope: !3290, file: !3, line: 1455, type: !574)
!3295 = !DILocalVariable(name: "loop_lab", scope: !3290, file: !3, line: 1456, type: !574)
!3296 = !DILocalVariable(name: "end_lab", scope: !3290, file: !3, line: 1457, type: !574)
!3297 = !DILocalVariable(name: "addr", scope: !3298, file: !3, line: 1520, type: !574)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 1519, column: 2)
!3299 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 1518, column: 11)
!3300 = !DILocalVariable(name: "offset", scope: !3301, file: !3, line: 1525, type: !685)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 1523, column: 6)
!3302 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 1522, column: 8)
!3303 = !DILocation(line: 0, scope: !3275)
!3304 = !DILocation(line: 1393, column: 7, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 1393, column: 7)
!3306 = !DILocation(line: 1393, column: 23, scope: !3305)
!3307 = !DILocation(line: 1393, column: 35, scope: !3305)
!3308 = !DILocation(line: 1393, column: 54, scope: !3305)
!3309 = !DILocation(line: 1393, column: 7, scope: !3275)
!3310 = !DILocation(line: 1394, column: 12, scope: !3305)
!3311 = !DILocation(line: 1394, column: 5, scope: !3305)
!3312 = !DILocation(line: 1397, column: 7, scope: !3283)
!3313 = !DILocation(line: 1397, column: 7, scope: !3275)
!3314 = !DILocation(line: 1399, column: 18, scope: !3282)
!3315 = !DILocation(line: 0, scope: !3282)
!3316 = !DILocation(line: 1403, column: 26, scope: !3282)
!3317 = !DILocation(line: 1403, column: 7, scope: !3282)
!3318 = !DILocation(line: 1405, column: 5, scope: !3282)
!3319 = !DILocation(line: 1426, column: 12, scope: !3286)
!3320 = !DILocation(line: 1426, column: 31, scope: !3286)
!3321 = !DILocation(line: 1426, column: 34, scope: !3286)
!3322 = !DILocation(line: 1426, column: 48, scope: !3286)
!3323 = !DILocation(line: 1426, column: 12, scope: !3283)
!3324 = !DILocation(line: 0, scope: !3285)
!3325 = !DILocation(line: 1434, column: 12, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3285, file: !3, line: 1434, column: 7)
!3327 = !DILocation(line: 0, scope: !3326)
!3328 = !DILocation(line: 1434, column: 34, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 1434, column: 7)
!3330 = !DILocation(line: 1434, column: 7, scope: !3326)
!3331 = !DILocation(line: 1436, column: 11, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1435, column: 2)
!3333 = !DILocation(line: 1439, column: 4, scope: !3332)
!3334 = !DILocation(line: 1434, column: 45, scope: !3329)
!3335 = !DILocation(line: 1434, column: 7, scope: !3329)
!3336 = distinct !{!3336, !3330, !3337}
!3337 = !DILocation(line: 1440, column: 2, scope: !3326)
!3338 = !DILocation(line: 1442, column: 14, scope: !3285)
!3339 = !DILocation(line: 1445, column: 7, scope: !3285)
!3340 = !DILocation(line: 1446, column: 5, scope: !3285)
!3341 = !DILocation(line: 1456, column: 22, scope: !3290)
!3342 = !DILocation(line: 0, scope: !3290)
!3343 = !DILocation(line: 1457, column: 21, scope: !3290)
!3344 = !DILocation(line: 1464, column: 43, scope: !3290)
!3345 = !DILocation(line: 1464, column: 4, scope: !3290)
!3346 = !DILocation(line: 1465, column: 25, scope: !3290)
!3347 = !DILocation(line: 1471, column: 34, scope: !3290)
!3348 = !DILocation(line: 1471, column: 19, scope: !3290)
!3349 = !DILocation(line: 1476, column: 34, scope: !3290)
!3350 = !DILocation(line: 1476, column: 19, scope: !3290)
!3351 = !DILocation(line: 1492, column: 7, scope: !3290)
!3352 = !DILocation(line: 1495, column: 7, scope: !3290)
!3353 = !DILocation(line: 1500, column: 7, scope: !3290)
!3354 = !DILocation(line: 1499, column: 14, scope: !3290)
!3355 = !DILocation(line: 1503, column: 7, scope: !3290)
!3356 = !DILocation(line: 1506, column: 7, scope: !3290)
!3357 = !DILocation(line: 1508, column: 7, scope: !3290)
!3358 = !DILocation(line: 1510, column: 7, scope: !3290)
!3359 = !DILocation(line: 1517, column: 14, scope: !3290)
!3360 = !DILocation(line: 1518, column: 19, scope: !3299)
!3361 = !DILocation(line: 1518, column: 16, scope: !3299)
!3362 = !DILocation(line: 1518, column: 11, scope: !3290)
!3363 = !DILocation(line: 1522, column: 8, scope: !3302)
!3364 = !DILocation(line: 1522, column: 24, scope: !3302)
!3365 = !DILocation(line: 1522, column: 8, scope: !3298)
!3366 = !DILocation(line: 1525, column: 31, scope: !3301)
!3367 = !DILocation(line: 0, scope: !3301)
!3368 = !DILocation(line: 1526, column: 15, scope: !3301)
!3369 = !DILocation(line: 0, scope: !3298)
!3370 = !DILocation(line: 1529, column: 6, scope: !3301)
!3371 = !DILocation(line: 1533, column: 15, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 1531, column: 6)
!3373 = !DILocation(line: 1534, column: 15, scope: !3372)
!3374 = !DILocation(line: 0, scope: !3302)
!3375 = !DILocation(line: 1539, column: 4, scope: !3298)
!3376 = !DILocation(line: 1540, column: 2, scope: !3298)
!3377 = !DILocation(line: 1542, column: 1, scope: !3275)
!3378 = distinct !DISubprogram(name: "emit_stack_probe", scope: !3, file: !3, line: 1357, type: !2828, scopeLine: 1358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3379)
!3379 = !{!3380, !3381}
!3380 = !DILocalVariable(name: "address", arg: 1, scope: !3378, file: !3, line: 1357, type: !574)
!3381 = !DILocalVariable(name: "memref", scope: !3378, file: !3, line: 1359, type: !574)
!3382 = !DILocation(line: 0, scope: !3378)
!3383 = !DILocation(line: 1359, column: 29, scope: !3378)
!3384 = !DILocation(line: 1359, column: 16, scope: !3378)
!3385 = !DILocation(line: 1361, column: 3, scope: !3378)
!3386 = !DILocation(line: 1361, column: 27, scope: !3378)
!3387 = !DILocation(line: 1366, column: 16, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 1365, column: 7)
!3389 = !DILocation(line: 1366, column: 5, scope: !3388)
!3390 = !DILocation(line: 1370, column: 1, scope: !3378)
!3391 = distinct !DISubprogram(name: "hard_function_value", scope: !3, file: !3, line: 1680, type: !3392, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!574, !2752, !2752, !2752, !566}
!3394 = !{!3395, !3396, !3397, !3398, !3399, !3400, !3403}
!3395 = !DILocalVariable(name: "valtype", arg: 1, scope: !3391, file: !3, line: 1680, type: !2752)
!3396 = !DILocalVariable(name: "func", arg: 2, scope: !3391, file: !3, line: 1680, type: !2752)
!3397 = !DILocalVariable(name: "fntype", arg: 3, scope: !3391, file: !3, line: 1680, type: !2752)
!3398 = !DILocalVariable(name: "outgoing", arg: 4, scope: !3391, file: !3, line: 1681, type: !566)
!3399 = !DILocalVariable(name: "val", scope: !3391, file: !3, line: 1683, type: !574)
!3400 = !DILocalVariable(name: "bytes", scope: !3401, file: !3, line: 1690, type: !683)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 1689, column: 5)
!3402 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 1687, column: 7)
!3403 = !DILocalVariable(name: "tmpmode", scope: !3401, file: !3, line: 1691, type: !5)
!3404 = !DILocation(line: 0, scope: !3391)
!3405 = !DILocation(line: 1685, column: 23, scope: !3391)
!3406 = !DILocation(line: 1685, column: 48, scope: !3391)
!3407 = !DILocation(line: 1685, column: 70, scope: !3391)
!3408 = !DILocation(line: 1685, column: 9, scope: !3391)
!3409 = !DILocation(line: 1687, column: 7, scope: !3402)
!3410 = !DILocation(line: 1688, column: 7, scope: !3402)
!3411 = !DILocation(line: 1688, column: 10, scope: !3402)
!3412 = !DILocation(line: 1688, column: 25, scope: !3402)
!3413 = !DILocation(line: 1687, column: 7, scope: !3391)
!3414 = !DILocation(line: 1690, column: 38, scope: !3401)
!3415 = !DILocation(line: 0, scope: !3401)
!3416 = !DILocation(line: 1697, column: 12, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 1697, column: 7)
!3418 = !DILocation(line: 0, scope: !3417)
!3419 = !DILocation(line: 1697, column: 7, scope: !3417)
!3420 = !DILocation(line: 1702, column: 8, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 1702, column: 8)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 1700, column: 2)
!3423 = distinct !DILexicalBlock(scope: !3417, file: !3, line: 1697, column: 7)
!3424 = !DILocation(line: 1702, column: 32, scope: !3421)
!3425 = !DILocation(line: 1702, column: 8, scope: !3422)
!3426 = !DILocation(line: 1699, column: 15, scope: !3423)
!3427 = !DILocation(line: 1697, column: 7, scope: !3423)
!3428 = distinct !{!3428, !3419, !3429}
!3429 = !DILocation(line: 1704, column: 2, scope: !3417)
!3430 = !DILocation(line: 1707, column: 7, scope: !3401)
!3431 = !DILocation(line: 1709, column: 7, scope: !3401)
!3432 = !DILocation(line: 1710, column: 5, scope: !3401)
!3433 = !DILocation(line: 1711, column: 3, scope: !3391)
!3434 = distinct !DISubprogram(name: "hard_libcall_value", scope: !3, file: !3, line: 1718, type: !2440, scopeLine: 1719, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3435)
!3435 = !{!3436, !3437}
!3436 = !DILocalVariable(name: "mode", arg: 1, scope: !3434, file: !3, line: 1718, type: !5)
!3437 = !DILocalVariable(name: "fun", arg: 2, scope: !3434, file: !3, line: 1718, type: !574)
!3438 = !DILocation(line: 0, scope: !3434)
!3439 = !DILocation(line: 1720, column: 24, scope: !3434)
!3440 = !DILocation(line: 1720, column: 10, scope: !3434)
!3441 = !DILocation(line: 1720, column: 3, scope: !3434)
!3442 = distinct !DISubprogram(name: "rtx_to_tree_code", scope: !3, file: !3, line: 1729, type: !3443, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3445)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!566, !395}
!3445 = !{!3446, !3447}
!3446 = !DILocalVariable(name: "code", arg: 1, scope: !3442, file: !3, line: 1729, type: !395)
!3447 = !DILocalVariable(name: "tcode", scope: !3442, file: !3, line: 1731, type: !201)
!3448 = !DILocation(line: 0, scope: !3442)
!3449 = !DILocation(line: 1733, column: 3, scope: !3442)
!3450 = !DILocation(line: 1740, column: 7, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 1734, column: 5)
!3452 = !DILocation(line: 1743, column: 7, scope: !3451)
!3453 = !DILocation(line: 1746, column: 7, scope: !3451)
!3454 = !DILocation(line: 1749, column: 7, scope: !3451)
!3455 = !DILocation(line: 1752, column: 7, scope: !3451)
!3456 = !DILocation(line: 1755, column: 7, scope: !3451)
!3457 = !DILocation(line: 0, scope: !3451)
!3458 = !DILocation(line: 1757, column: 3, scope: !3442)
