; ModuleID = 'caller-save.bc'
source_filename = "caller-save.c"
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
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.insn_chain = type { %struct.insn_chain*, %struct.insn_chain*, %struct.insn_chain*, %struct.rtx_def*, i32, i8, %struct.bitmap_head_def, %struct.bitmap_head_def, %struct.reload*, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.reload = type opaque
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, %struct.rtx_def*, %struct.initial_value_struct*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, %struct.rtx_def*, %struct.VEC_temp_slot_p_gc*, %struct.temp_slot*, i32, i32, i32, i32, i32, i32, %struct.rtx_def*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.emit_status = type { i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.sequence_stack*, i32, i32, i32, i32, i8* }
%struct.sequence_stack = type { %struct.rtx_def*, %struct.rtx_def*, %struct.sequence_stack* }
%struct.varasm_status = type { %struct.rtx_constant_pool*, i32 }
%struct.rtx_constant_pool = type opaque
%struct.incoming_args = type { i32, i32, i32, %struct.rtx_def*, %struct.ix86_args, %struct.rtx_def* }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.saved_hard_reg = type { i32, i32, i32, %struct.rtx_def*, i32, i32 }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.mem_attrs = type { %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32, i8 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@caller_save_initialized_p = common dso_local local_unnamed_addr global i8 0, align 1, !dbg !0
@no_caller_save_reg_set = common dso_local local_unnamed_addr global i64 0, align 8, !dbg !1665
@call_used_regs = external dso_local local_unnamed_addr global [53 x i8], align 16
@call_fixed_reg_set = external dso_local local_unnamed_addr global i64, align 8
@regno_save_mode = internal unnamed_addr global [53 x [5 x i32]] zeroinitializer, align 16, !dbg !1667
@reg_class_contents = external dso_local local_unnamed_addr global [27 x i64], align 16
@.str = private unnamed_addr constant [14 x i8] c"caller-save.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@test_reg = internal global %struct.rtx_def* null, align 8, !dbg !1692
@test_mem = internal global %struct.rtx_def* null, align 8, !dbg !1694
@savepat = internal global %struct.rtx_def* null, align 8, !dbg !1688
@restpat = internal global %struct.rtx_def* null, align 8, !dbg !1690
@saveinsn = internal global %struct.rtx_def* null, align 8, !dbg !1696
@restinsn = internal global %struct.rtx_def* null, align 8, !dbg !1698
@regno_save_mem = internal unnamed_addr global [53 x [5 x %struct.rtx_def*]] zeroinitializer, align 16, !dbg !1673
@save_slots_num = internal unnamed_addr global i32 0, align 4, !dbg !1676
@max_regno = external dso_local local_unnamed_addr global i32, align 4
@reg_renumber = external dso_local local_unnamed_addr global i16*, align 8
@reg_info_p = external dso_local local_unnamed_addr global %struct.reg_info_t*, align 8
@regno_reg_rtx = external dso_local local_unnamed_addr global %struct.rtx_def**, align 8
@optimize = external dso_local local_unnamed_addr global i32, align 4
@flag_ira_share_save_slots = external dso_local local_unnamed_addr global i32, align 4
@reload_insn_chain = external dso_local local_unnamed_addr global %struct.insn_chain*, align 8
@optimize_size = external dso_local local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@call_used_reg_set = external dso_local local_unnamed_addr global i64, align 8
@x_rtl = external dso_local local_unnamed_addr global %struct.rtl_data, align 8
@hard_reg_map = internal unnamed_addr global [53 x %struct.saved_hard_reg*] zeroinitializer, align 16, !dbg !1700
@hard_regno_nregs = external dso_local local_unnamed_addr global [53 x [87 x i8]], align 16
@saved_regs_num = internal unnamed_addr global i32 0, align 4, !dbg !1703
@all_saved_regs = internal global [53 x %struct.saved_hard_reg*] zeroinitializer, align 16, !dbg !1705
@save_slots = internal global [53 x %struct.rtx_def*] zeroinitializer, align 16, !dbg !1678
@mode_size = external dso_local local_unnamed_addr global [87 x i8], align 16
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"%d uses slot of %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%d uses a slot from prev iteration\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%d uses a new slot\0A\00", align 1
@hard_regs_saved = internal unnamed_addr global i64 0, align 8, !dbg !1682
@n_regs_saved = internal unnamed_addr global i32 0, align 4, !dbg !1684
@referenced_regs = internal global i64 0, align 8, !dbg !1686
@ix86_tune_features = external dso_local local_unnamed_addr global [62 x i8], align 16
@gt_ggc_r_gt_caller_save_h = dso_local local_unnamed_addr constant [7 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%struct.rtx_def** @restinsn to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_rtx_def, void (i8*)* @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { i8* bitcast (%struct.rtx_def** @saveinsn to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_rtx_def, void (i8*)* @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { i8* bitcast (%struct.rtx_def** @test_mem to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_rtx_def, void (i8*)* @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { i8* bitcast (%struct.rtx_def** @test_reg to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_rtx_def, void (i8*)* @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { i8* bitcast (%struct.rtx_def** @restpat to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_rtx_def, void (i8*)* @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { i8* bitcast (%struct.rtx_def** @savepat to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_rtx_def, void (i8*)* @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !1649
@cached_reg_save_code = internal unnamed_addr global [53 x [87 x i32]] zeroinitializer, align 16, !dbg !1707
@cached_reg_restore_code = internal unnamed_addr global [53 x [87 x i32]] zeroinitializer, align 16, !dbg !1712
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8
@flag_omit_frame_pointer = external dso_local local_unnamed_addr global i32, align 4
@reg_equiv_mem = external dso_local local_unnamed_addr global %struct.rtx_def**, align 8
@reg_equiv_address = external dso_local local_unnamed_addr global %struct.rtx_def**, align 8
@rtx_format = external dso_local local_unnamed_addr constant [139 x i8*], align 16
@rtx_length = external dso_local local_unnamed_addr constant [139 x i8], align 16

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1718 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1731, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1732, metadata !DIExpression()), !dbg !1733
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1734
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1735
  ret i32 %call, !dbg !1736
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1737 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1741
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1742
  ret i32 %call, !dbg !1743
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1744 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1798, metadata !DIExpression()), !dbg !1799
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1800
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1800
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1800
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1800
  %cmp = icmp uge i8* %0, %1, !dbg !1800
  %conv1 = zext i1 %cmp to i64, !dbg !1800
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1800
  %tobool = icmp eq i64 %expval, 0, !dbg !1800
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1800

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1800
  br label %cond.end, !dbg !1800

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1800
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1800
  %2 = load i8, i8* %0, align 1, !dbg !1800
  %conv3 = zext i8 %2 to i32, !dbg !1800
  br label %cond.end, !dbg !1800

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1800
  ret i32 %cond, !dbg !1801
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1802 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1804, metadata !DIExpression()), !dbg !1805
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1806
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1806
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1806
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1806
  %cmp = icmp uge i8* %0, %1, !dbg !1806
  %conv1 = zext i1 %cmp to i64, !dbg !1806
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1806
  %tobool = icmp eq i64 %expval, 0, !dbg !1806
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1806

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1806
  br label %cond.end, !dbg !1806

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1806
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1806
  %2 = load i8, i8* %0, align 1, !dbg !1806
  %conv3 = zext i8 %2 to i32, !dbg !1806
  br label %cond.end, !dbg !1806

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1806
  ret i32 %cond, !dbg !1807
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1808 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1809
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1809
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1809
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1809
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1809
  %cmp = icmp uge i8* %1, %2, !dbg !1809
  %conv1 = zext i1 %cmp to i64, !dbg !1809
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1809
  %tobool = icmp eq i64 %expval, 0, !dbg !1809
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1809

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1809
  br label %cond.end, !dbg !1809

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1809
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1809
  %3 = load i8, i8* %1, align 1, !dbg !1809
  %conv3 = zext i8 %3 to i32, !dbg !1809
  br label %cond.end, !dbg !1809

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1809
  ret i32 %cond, !dbg !1810
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1811 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1815, metadata !DIExpression()), !dbg !1816
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1817
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1818
  ret i32 %call, !dbg !1819
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1820 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1824, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1825, metadata !DIExpression()), !dbg !1826
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1827
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1827
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1827
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1827
  %cmp = icmp uge i8* %0, %1, !dbg !1827
  %conv1 = zext i1 %cmp to i64, !dbg !1827
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1827
  %tobool = icmp eq i64 %expval, 0, !dbg !1827
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1827

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1827
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1827
  br label %cond.end, !dbg !1827

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1827
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1827
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1827
  store i8 %conv2, i8* %0, align 1, !dbg !1827
  %conv6 = and i32 %__c, 255, !dbg !1827
  br label %cond.end, !dbg !1827

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1827
  ret i32 %cond, !dbg !1828
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1829 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1831, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1832, metadata !DIExpression()), !dbg !1833
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1834
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1834
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1834
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1834
  %cmp = icmp uge i8* %0, %1, !dbg !1834
  %conv1 = zext i1 %cmp to i64, !dbg !1834
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1834
  %tobool = icmp eq i64 %expval, 0, !dbg !1834
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1834

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1834
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1834
  br label %cond.end, !dbg !1834

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1834
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1834
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1834
  store i8 %conv2, i8* %0, align 1, !dbg !1834
  %conv6 = and i32 %__c, 255, !dbg !1834
  br label %cond.end, !dbg !1834

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1834
  ret i32 %cond, !dbg !1835
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1836 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1838, metadata !DIExpression()), !dbg !1839
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1840
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1840
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1840
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1840
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1840
  %cmp = icmp uge i8* %1, %2, !dbg !1840
  %conv1 = zext i1 %cmp to i64, !dbg !1840
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1840
  %tobool = icmp eq i64 %expval, 0, !dbg !1840
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1840

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1840
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1840
  br label %cond.end, !dbg !1840

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1840
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1840
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1840
  store i8 %conv4, i8* %1, align 1, !dbg !1840
  %conv6 = and i32 %__c, 255, !dbg !1840
  br label %cond.end, !dbg !1840

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1840
  ret i32 %cond, !dbg !1841
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1842 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1848, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1849, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1850, metadata !DIExpression()), !dbg !1851
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1852
  ret i64 %call, !dbg !1853
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1854 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1856, metadata !DIExpression()), !dbg !1857
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1858
  %0 = load i32, i32* %_flags, align 8, !dbg !1858
  %and = lshr i32 %0, 4, !dbg !1858
  %and.lobit = and i32 %and, 1, !dbg !1858
  ret i32 %and.lobit, !dbg !1859
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1860 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1862, metadata !DIExpression()), !dbg !1863
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1864
  %0 = load i32, i32* %_flags, align 8, !dbg !1864
  %and = lshr i32 %0, 5, !dbg !1864
  %and.lobit = and i32 %and, 1, !dbg !1864
  ret i32 %and.lobit, !dbg !1865
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1866 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1869, metadata !DIExpression()), !dbg !1870
  %__c.off = add i32 %__c, 128, !dbg !1871
  %0 = icmp ult i32 %__c.off, 384, !dbg !1871
  br i1 %0, label %cond.true, label %cond.end, !dbg !1871

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1872
  %1 = load i32*, i32** %call, align 8, !dbg !1873
  %idxprom = sext i32 %__c to i64, !dbg !1874
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1874
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1874
  br label %cond.end, !dbg !1875

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1875
  ret i32 %cond, !dbg !1876
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1877 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1879, metadata !DIExpression()), !dbg !1880
  %__c.off = add i32 %__c, 128, !dbg !1881
  %0 = icmp ult i32 %__c.off, 384, !dbg !1881
  br i1 %0, label %cond.true, label %cond.end, !dbg !1881

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1882
  %1 = load i32*, i32** %call, align 8, !dbg !1883
  %idxprom = sext i32 %__c to i64, !dbg !1884
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1884
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1884
  br label %cond.end, !dbg !1885

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1885
  ret i32 %cond, !dbg !1886
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1887 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1892, metadata !DIExpression()), !dbg !1893
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1894
  %conv = trunc i64 %call to i32, !dbg !1895
  ret i32 %conv, !dbg !1896
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1897 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1901, metadata !DIExpression()), !dbg !1902
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1903
  ret i64 %call, !dbg !1904
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1905 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1910, metadata !DIExpression()), !dbg !1911
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1912
  ret i64 %call, !dbg !1913
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1914 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1920, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1921, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1922, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1923, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1924, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 0, metadata !1925, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1926, metadata !DIExpression()), !dbg !1930
  br label %while.cond, !dbg !1931

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1932
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1930
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1926, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1925, metadata !DIExpression()), !dbg !1930
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1933
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1931

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1934
  %div = lshr i64 %add, 1, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %div, metadata !1927, metadata !DIExpression()), !dbg !1930
  %mul = mul i64 %div, %__size, !dbg !1937
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1938
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1928, metadata !DIExpression()), !dbg !1930
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1939
  call void @llvm.dbg.value(metadata i32 %call, metadata !1929, metadata !DIExpression()), !dbg !1930
  %cmp1 = icmp slt i32 %call, 0, !dbg !1940
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1942

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1943
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1945

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1946
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1925, metadata !DIExpression()), !dbg !1930
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1930
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1930
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1926, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1925, metadata !DIExpression()), !dbg !1930
  br label %while.cond, !dbg !1931, !llvm.loop !1947

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1930
  ret i8* %retval.0, !dbg !1949
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1950 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1956, metadata !DIExpression()), !dbg !1957
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1958
  ret double %call, !dbg !1959
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1960 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1969, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1970, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i32 %base, metadata !1971, metadata !DIExpression()), !dbg !1972
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1973
  ret i64 %call, !dbg !1974
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1975 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1981, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1982, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i32 %base, metadata !1983, metadata !DIExpression()), !dbg !1984
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1985
  ret i64 %call, !dbg !1986
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1987 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1998, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1999, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i32 %base, metadata !2000, metadata !DIExpression()), !dbg !2001
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2002
  ret i64 %call, !dbg !2003
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2004 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2008, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2009, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i32 %base, metadata !2010, metadata !DIExpression()), !dbg !2011
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2012
  ret i64 %call, !dbg !2013
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2014 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2054, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2055, metadata !DIExpression()), !dbg !2056
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2057
  ret i32 %call, !dbg !2058
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2059 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2061, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2062, metadata !DIExpression()), !dbg !2063
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2064
  ret i32 %call, !dbg !2065
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2066 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2070, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2071, metadata !DIExpression()), !dbg !2072
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2073
  ret i32 %call, !dbg !2074
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2075 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2079, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2080, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2081, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2082, metadata !DIExpression()), !dbg !2083
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2084
  ret i32 %call, !dbg !2085
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2086 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2090, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2091, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2092, metadata !DIExpression()), !dbg !2093
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2092, metadata !DIExpression(DW_OP_deref)), !dbg !2093
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2094
  ret i32 %call, !dbg !2095
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2096 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2100, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2101, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2102, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2103, metadata !DIExpression()), !dbg !2104
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2103, metadata !DIExpression(DW_OP_deref)), !dbg !2104
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2105
  ret i32 %call, !dbg !2106
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2107 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2131, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2132, metadata !DIExpression()), !dbg !2133
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2134
  ret i32 %call, !dbg !2135
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2136 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2138, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2139, metadata !DIExpression()), !dbg !2140
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2141
  ret i32 %call, !dbg !2142
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2143 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2147, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2148, metadata !DIExpression()), !dbg !2149
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2150
  ret i32 %call, !dbg !2151
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2152 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2156, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2157, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2158, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2159, metadata !DIExpression()), !dbg !2160
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2161
  ret i32 %call, !dbg !2162
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @init_caller_save() local_unnamed_addr #5 !dbg !2163 {
entry:
  %0 = load i8, i8* @caller_save_initialized_p, align 1, !dbg !2172
  %tobool = icmp eq i8 %0, 0, !dbg !2172
  br i1 %tobool, label %if.end, label %cleanup.cont, !dbg !2174

if.end:                                           ; preds = %entry
  store i8 1, i8* @caller_save_initialized_p, align 1, !dbg !2175
  store i64 0, i64* @no_caller_save_reg_set, align 8, !dbg !2176
  call void @llvm.dbg.value(metadata i32 0, metadata !2170, metadata !DIExpression()), !dbg !2177
  br label %for.cond, !dbg !2178

for.cond:                                         ; preds = %for.inc39, %if.end
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.inc39 ], [ 0, %if.end ], !dbg !2180
  call void @llvm.dbg.value(metadata i64 %indvars.iv17, metadata !2170, metadata !DIExpression()), !dbg !2177
  %exitcond20 = icmp eq i64 %indvars.iv17, 53, !dbg !2181
  br i1 %exitcond20, label %for.cond42.preheader, label %for.body, !dbg !2183

for.cond42.preheader:                             ; preds = %for.cond
  br label %for.cond42, !dbg !2184

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 %indvars.iv17, !dbg !2186
  %1 = load i8, i8* %arrayidx, align 1, !dbg !2186
  %tobool1 = icmp eq i8 %1, 0, !dbg !2186
  br i1 %tobool1, label %if.else, label %land.lhs.true, !dbg !2189

land.lhs.true:                                    ; preds = %for.body
  %2 = load i64, i64* @call_fixed_reg_set, align 8, !dbg !2190
  %shl = shl i64 1, %indvars.iv17, !dbg !2190
  %and = and i64 %2, %shl, !dbg !2190
  %tobool2 = icmp eq i64 %and, 0, !dbg !2190
  br i1 %tobool2, label %for.cond4.preheader, label %if.else, !dbg !2191

for.cond4.preheader:                              ; preds = %land.lhs.true
  %3 = trunc i64 %indvars.iv17 to i32, !dbg !2192
  %4 = add i32 %3, -17, !dbg !2192
  %switch = icmp ult i32 %4, 2, !dbg !2192
  br i1 %switch, label %for.cond4.preheader.split.us, label %for.cond4.preheader.for.cond4.preheader.split_crit_edge, !dbg !2197

for.cond4.preheader.for.cond4.preheader.split_crit_edge: ; preds = %for.cond4.preheader
  br label %for.cond4, !dbg !2197

for.cond4.preheader.split.us:                     ; preds = %for.cond4.preheader
  br label %for.cond4.us, !dbg !2197

for.cond4.us:                                     ; preds = %for.inc.us, %for.cond4.preheader.split.us
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc.us ], [ 1, %for.cond4.preheader.split.us ]
  %5 = phi i64 [ %6, %for.inc.us ], [ %2, %for.cond4.preheader.split.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv14, metadata !2171, metadata !DIExpression()), !dbg !2177
  %exitcond16 = icmp eq i64 %indvars.iv14, 5, !dbg !2198
  br i1 %exitcond16, label %for.inc39.loopexit.us-lcssa.us, label %for.body7.us, !dbg !2197

for.body7.us:                                     ; preds = %for.cond4.us
  %arrayidx21.us = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i64 0, i64 %indvars.iv17, i64 %indvars.iv14, !dbg !2199
  store i32 0, i32* %arrayidx21.us, align 4, !dbg !2200
  %cmp29.us = icmp eq i64 %indvars.iv14, 1, !dbg !2201
  br i1 %cmp29.us, label %if.then31.us, label %for.inc.us, !dbg !2203

if.then31.us:                                     ; preds = %for.body7.us
  %or.us = or i64 %5, %shl, !dbg !2204
  store i64 %or.us, i64* @call_fixed_reg_set, align 8, !dbg !2204
  br label %for.inc.us, !dbg !2206

for.inc.us:                                       ; preds = %if.then31.us, %for.body7.us
  %6 = phi i64 [ %or.us, %if.then31.us ], [ %5, %for.body7.us ]
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1, !dbg !2207
  call void @llvm.dbg.value(metadata i32 undef, metadata !2171, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2177
  br label %for.cond4.us, !dbg !2208, !llvm.loop !2209

for.inc39.loopexit.us-lcssa.us:                   ; preds = %for.cond4.us
  br label %for.inc39.loopexit, !dbg !2211

for.cond4:                                        ; preds = %for.cond4.preheader.for.cond4.preheader.split_crit_edge, %for.inc
  %indvars.iv11 = phi i64 [ 1, %for.cond4.preheader.for.cond4.preheader.split_crit_edge ], [ %indvars.iv.next12, %for.inc ], !dbg !2212
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !2171, metadata !DIExpression()), !dbg !2177
  %exitcond13 = icmp eq i64 %indvars.iv11, 5, !dbg !2198
  br i1 %exitcond13, label %for.inc39.loopexit.us-lcssa, label %for.body7, !dbg !2197

for.body7:                                        ; preds = %for.cond4
  %cmp12 = icmp eq i64 %indvars.iv11, 1, !dbg !2213
  br i1 %cmp12, label %cond.false15, label %cond.end16, !dbg !2213

cond.false15:                                     ; preds = %for.body7
  %7 = trunc i64 %indvars.iv17 to i32, !dbg !2213
  %call = tail call i32 @choose_hard_reg_mode(i32 %7, i32 1, i8 zeroext 0) #6, !dbg !2213
  br label %cond.end16, !dbg !2213

cond.end16:                                       ; preds = %for.body7, %cond.false15
  %cond17 = phi i32 [ 0, %for.body7 ], [ %call, %cond.false15 ], !dbg !2213
  %arrayidx21 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i64 0, i64 %indvars.iv17, i64 %indvars.iv11, !dbg !2199
  store i32 %cond17, i32* %arrayidx21, align 4, !dbg !2200
  %cmp26 = icmp eq i32 %cond17, 0, !dbg !2214
  %or.cond = and i1 %cmp26, %cmp12, !dbg !2203
  br i1 %or.cond, label %if.then31, label %for.inc, !dbg !2203

if.then31:                                        ; preds = %cond.end16
  %8 = load i64, i64* @call_fixed_reg_set, align 8, !dbg !2204
  %or = or i64 %8, %shl, !dbg !2204
  store i64 %or, i64* @call_fixed_reg_set, align 8, !dbg !2204
  br label %for.inc, !dbg !2206

for.inc:                                          ; preds = %cond.end16, %if.then31
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !2207
  call void @llvm.dbg.value(metadata i32 undef, metadata !2171, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2177
  br label %for.cond4, !dbg !2208, !llvm.loop !2209

if.else:                                          ; preds = %land.lhs.true, %for.body
  %arrayidx37 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i64 0, i64 %indvars.iv17, i64 1, !dbg !2215
  store i32 0, i32* %arrayidx37, align 4, !dbg !2216
  br label %for.inc39

for.inc39.loopexit.us-lcssa:                      ; preds = %for.cond4
  br label %for.inc39.loopexit, !dbg !2211

for.inc39.loopexit:                               ; preds = %for.inc39.loopexit.us-lcssa.us, %for.inc39.loopexit.us-lcssa
  br label %for.inc39, !dbg !2211

for.inc39:                                        ; preds = %for.inc39.loopexit, %if.else
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !2211
  call void @llvm.dbg.value(metadata i32 undef, metadata !2170, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2177
  br label %for.cond, !dbg !2217, !llvm.loop !2218

for.cond42:                                       ; preds = %for.cond42.preheader, %for.inc58
  %indvars.iv8 = phi i64 [ 0, %for.cond42.preheader ], [ %indvars.iv.next9, %for.inc58 ], !dbg !2220
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !2170, metadata !DIExpression()), !dbg !2177
  %cmp43 = icmp ult i64 %indvars.iv8, 53, !dbg !2221
  %9 = trunc i64 %indvars.iv8 to i32, !dbg !2184
  %exitcond10 = icmp eq i64 %indvars.iv8, 53, !dbg !2221
  br i1 %exitcond10, label %for.end60, label %for.body45, !dbg !2184

for.body45:                                       ; preds = %for.cond42
  %arrayidx48 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i64 0, i64 %indvars.iv8, i64 1, !dbg !2223
  %10 = load i32, i32* %arrayidx48, align 4, !dbg !2223
  %call49 = tail call fastcc i32 @base_reg_class(i32 %10, i32 49, i32 30) #7, !dbg !2223
  %11 = load i64, i64* getelementptr inbounds ([27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 13), align 8, !dbg !2223
  %shl53 = shl i64 1, %indvars.iv8, !dbg !2223
  %and54 = and i64 %11, %shl53, !dbg !2223
  %tobool55 = icmp eq i64 %and54, 0, !dbg !2223
  br i1 %tobool55, label %for.inc58, label %for.end60, !dbg !2225

for.inc58:                                        ; preds = %for.body45
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !2226
  call void @llvm.dbg.value(metadata i32 undef, metadata !2170, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2177
  br label %for.cond42, !dbg !2227, !llvm.loop !2228

for.end60:                                        ; preds = %for.cond42, %for.body45
  %cmp43.lcssa = phi i1 [ %cmp43, %for.cond42 ], [ %cmp43, %for.body45 ], !dbg !2221
  %.lcssa21 = phi i32 [ %9, %for.cond42 ], [ %9, %for.body45 ], !dbg !2184
  call void @llvm.dbg.value(metadata i32 %.lcssa21, metadata !2170, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i32 %.lcssa21, metadata !2170, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i32 %.lcssa21, metadata !2170, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i32 %.lcssa21, metadata !2170, metadata !DIExpression()), !dbg !2177
  br i1 %cmp43.lcssa, label %cond.end65, label %cond.true63, !dbg !2230

cond.true63:                                      ; preds = %for.end60
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 260, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2230
  br label %cond.end65, !dbg !2230

cond.end65:                                       ; preds = %for.end60, %cond.true63
  %call67 = tail call %struct.rtx_def* @gen_rtx_REG(i32 16, i32 %.lcssa21) #6, !dbg !2231
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call67, metadata !2167, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i32 65536, metadata !2168, metadata !DIExpression()), !dbg !2177
  br label %for.cond68, !dbg !2232

for.cond68:                                       ; preds = %for.inc98, %cond.end65
  %address.0 = phi %struct.rtx_def* [ undef, %cond.end65 ], [ %call73, %for.inc98 ]
  %offset.0 = phi i32 [ 65536, %cond.end65 ], [ %shr, %for.inc98 ], !dbg !2234
  call void @llvm.dbg.value(metadata i32 %offset.0, metadata !2168, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata %struct.rtx_def* %address.0, metadata !2169, metadata !DIExpression()), !dbg !2177
  %tobool69 = icmp eq i32 %offset.0, 0, !dbg !2235
  br i1 %tobool69, label %for.end99, label %for.body70, !dbg !2235

for.body70:                                       ; preds = %for.cond68
  %conv71 = sext i32 %offset.0 to i64, !dbg !2236
  %call72 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv71) #6, !dbg !2236
  %call73 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 49, i32 16, %struct.rtx_def* %call67, %struct.rtx_def* %call72) #6, !dbg !2236
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call73, metadata !2169, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i32 0, metadata !2170, metadata !DIExpression()), !dbg !2177
  br label %for.cond74, !dbg !2239

for.cond74:                                       ; preds = %for.inc91, %for.body70
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.inc91 ], [ 0, %for.body70 ], !dbg !2241
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !2170, metadata !DIExpression()), !dbg !2177
  %12 = trunc i64 %indvars.iv5 to i32, !dbg !2242
  %exitcond7 = icmp eq i64 %indvars.iv5, 53, !dbg !2243
  br i1 %exitcond7, label %for.end93, label %for.body77, !dbg !2242

for.body77:                                       ; preds = %for.cond74
  %arrayidx80 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i64 0, i64 %indvars.iv5, i64 1, !dbg !2245
  %13 = load i32, i32* %arrayidx80, align 4, !dbg !2245
  %cmp81 = icmp eq i32 %13, 0, !dbg !2247
  br i1 %cmp81, label %for.inc91, label %land.lhs.true83, !dbg !2248

land.lhs.true83:                                  ; preds = %for.body77
  %call87 = tail call i32 @strict_memory_address_addr_space_p(i32 %13, %struct.rtx_def* %call73, i8 zeroext 0) #6, !dbg !2249
  %tobool88 = icmp eq i32 %call87, 0, !dbg !2249
  br i1 %tobool88, label %for.end93, label %for.inc91, !dbg !2250

for.inc91:                                        ; preds = %land.lhs.true83, %for.body77
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !2251
  call void @llvm.dbg.value(metadata i32 undef, metadata !2170, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2177
  br label %for.cond74, !dbg !2252, !llvm.loop !2253

for.end93:                                        ; preds = %for.cond74, %land.lhs.true83
  %.lcssa = phi i32 [ %12, %for.cond74 ], [ %12, %land.lhs.true83 ], !dbg !2242
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2170, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2170, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2170, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2170, metadata !DIExpression()), !dbg !2177
  %cmp94 = icmp eq i32 %.lcssa, 53, !dbg !2255
  br i1 %cmp94, label %for.end99, label %for.inc98, !dbg !2257

for.inc98:                                        ; preds = %for.end93
  %shr = ashr i32 %offset.0, 1, !dbg !2258
  call void @llvm.dbg.value(metadata i32 %shr, metadata !2168, metadata !DIExpression()), !dbg !2177
  br label %for.cond68, !dbg !2259, !llvm.loop !2260

for.end99:                                        ; preds = %for.cond68, %for.end93
  %tobool69.lcssa = phi i1 [ %tobool69, %for.cond68 ], [ %tobool69, %for.end93 ], !dbg !2235
  %address.1 = phi %struct.rtx_def* [ %address.0, %for.cond68 ], [ %call73, %for.end93 ]
  call void @llvm.dbg.value(metadata i32 %offset.0, metadata !2168, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i32 %offset.0, metadata !2168, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata %struct.rtx_def* %address.1, metadata !2169, metadata !DIExpression()), !dbg !2177
  %spec.select = select i1 %tobool69.lcssa, %struct.rtx_def* %call67, %struct.rtx_def* %address.1, !dbg !2262
  call void @llvm.dbg.value(metadata %struct.rtx_def* %spec.select, metadata !2169, metadata !DIExpression()), !dbg !2177
  %call104 = tail call %struct.rtx_def* @gen_rtx_REG(i32 0, i32 0) #6, !dbg !2263
  store %struct.rtx_def* %call104, %struct.rtx_def** @test_reg, align 8, !dbg !2264
  %call105 = tail call %struct.rtx_def* @gen_rtx_MEM(i32 0, %struct.rtx_def* %spec.select) #6, !dbg !2265
  store %struct.rtx_def* %call105, %struct.rtx_def** @test_mem, align 8, !dbg !2266
  %14 = load %struct.rtx_def*, %struct.rtx_def** @test_reg, align 8, !dbg !2267
  %call106 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 23, i32 0, %struct.rtx_def* %call105, %struct.rtx_def* %14) #6, !dbg !2267
  store %struct.rtx_def* %call106, %struct.rtx_def** @savepat, align 8, !dbg !2268
  %15 = load %struct.rtx_def*, %struct.rtx_def** @test_reg, align 8, !dbg !2269
  %16 = load %struct.rtx_def*, %struct.rtx_def** @test_mem, align 8, !dbg !2269
  %call107 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 23, i32 0, %struct.rtx_def* %15, %struct.rtx_def* %16) #6, !dbg !2269
  store %struct.rtx_def* %call107, %struct.rtx_def** @restpat, align 8, !dbg !2270
  %17 = load %struct.rtx_def*, %struct.rtx_def** @savepat, align 8, !dbg !2271
  %call108 = tail call %struct.rtx_def* @gen_rtx_fmt_iuuBieie_stat(i32 8, i32 0, i32 0, %struct.rtx_def* null, %struct.rtx_def* null, %struct.basic_block_def* null, i32 0, %struct.rtx_def* %17, i32 -1, %struct.rtx_def* null) #6, !dbg !2271
  store %struct.rtx_def* %call108, %struct.rtx_def** @saveinsn, align 8, !dbg !2272
  %18 = load %struct.rtx_def*, %struct.rtx_def** @restpat, align 8, !dbg !2273
  %call109 = tail call %struct.rtx_def* @gen_rtx_fmt_iuuBieie_stat(i32 8, i32 0, i32 0, %struct.rtx_def* null, %struct.rtx_def* null, %struct.basic_block_def* null, i32 0, %struct.rtx_def* %18, i32 -1, %struct.rtx_def* null) #6, !dbg !2273
  store %struct.rtx_def* %call109, %struct.rtx_def** @restinsn, align 8, !dbg !2274
  call void @llvm.dbg.value(metadata i32 0, metadata !2170, metadata !DIExpression()), !dbg !2177
  br label %for.cond110, !dbg !2275

for.cond110:                                      ; preds = %for.inc149, %for.end99
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc149 ], [ 0, %for.end99 ], !dbg !2277
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !2170, metadata !DIExpression()), !dbg !2177
  %exitcond4 = icmp eq i64 %indvars.iv2, 53, !dbg !2278
  br i1 %exitcond4, label %cleanup.cont.loopexit, label %for.cond114.preheader, !dbg !2280

for.cond114.preheader:                            ; preds = %for.cond110
  %shl134 = shl i64 1, %indvars.iv2, !dbg !2281
  %arrayidx137 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 %indvars.iv2, !dbg !2288
  br label %for.cond114, !dbg !2290

for.cond114:                                      ; preds = %for.cond114.preheader, %for.inc146
  %indvars.iv = phi i64 [ 1, %for.cond114.preheader ], [ %indvars.iv.next, %for.inc146 ], !dbg !2291
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2171, metadata !DIExpression()), !dbg !2177
  %exitcond = icmp eq i64 %indvars.iv, 5, !dbg !2292
  br i1 %exitcond, label %for.inc149, label %for.body117, !dbg !2290

for.body117:                                      ; preds = %for.cond114
  %arrayidx121 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i64 0, i64 %indvars.iv2, i64 %indvars.iv, !dbg !2293
  %19 = load i32, i32* %arrayidx121, align 4, !dbg !2293
  %20 = trunc i64 %indvars.iv2 to i32, !dbg !2294
  %call122 = tail call fastcc i32 @reg_save_code(i32 %20, i32 %19) #7, !dbg !2294
  %cmp123 = icmp eq i32 %call122, -1, !dbg !2295
  br i1 %cmp123, label %if.then125, label %for.inc146, !dbg !2296

if.then125:                                       ; preds = %for.body117
  store i32 0, i32* %arrayidx121, align 4, !dbg !2297
  %cmp130 = icmp eq i64 %indvars.iv, 1, !dbg !2298
  br i1 %cmp130, label %if.then132, label %for.inc146, !dbg !2299

if.then132:                                       ; preds = %if.then125
  %21 = load i64, i64* @call_fixed_reg_set, align 8, !dbg !2300
  %or135 = or i64 %21, %shl134, !dbg !2300
  store i64 %or135, i64* @call_fixed_reg_set, align 8, !dbg !2300
  %22 = load i8, i8* %arrayidx137, align 1, !dbg !2301
  %tobool138 = icmp eq i8 %22, 0, !dbg !2301
  br i1 %tobool138, label %for.inc146, label %if.then139, !dbg !2302

if.then139:                                       ; preds = %if.then132
  %23 = load i64, i64* @no_caller_save_reg_set, align 8, !dbg !2303
  %or142 = or i64 %23, %shl134, !dbg !2303
  store i64 %or142, i64* @no_caller_save_reg_set, align 8, !dbg !2303
  br label %for.inc146, !dbg !2303

for.inc146:                                       ; preds = %if.then132, %for.body117, %if.then139, %if.then125
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2304
  call void @llvm.dbg.value(metadata i32 undef, metadata !2171, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2177
  br label %for.cond114, !dbg !2305, !llvm.loop !2306

for.inc149:                                       ; preds = %for.cond114
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !2308
  call void @llvm.dbg.value(metadata i32 undef, metadata !2170, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2177
  br label %for.cond110, !dbg !2309, !llvm.loop !2310

cleanup.cont.loopexit:                            ; preds = %for.cond110
  br label %cleanup.cont, !dbg !2312

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !2312
}

declare dso_local i32 @choose_hard_reg_mode(i32, i32, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @base_reg_class(i32 %mode, i32 %outer_code, i32 %index_code) unnamed_addr #0 !dbg !2313 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2318, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i32 %outer_code, metadata !2319, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i32 %index_code, metadata !2320, metadata !DIExpression()), !dbg !2321
  ret i32 undef, !dbg !2322
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_rtx_REG(i32, i32) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32, i32, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) local_unnamed_addr #2

declare dso_local i32 @strict_memory_address_addr_space_p(i32, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_rtx_MEM(i32, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_rtx_fmt_iuuBieie_stat(i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.basic_block_def*, i32, %struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @reg_save_code(i32 %reg, i32 %mode) unnamed_addr #5 !dbg !2323 {
entry:
  call void @llvm.dbg.value(metadata i32 %reg, metadata !2327, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2328, metadata !DIExpression()), !dbg !2330
  %idxprom = sext i32 %reg to i64, !dbg !2331
  %idxprom1 = zext i32 %mode to i64, !dbg !2331
  %arrayidx2 = getelementptr inbounds [53 x [87 x i32]], [53 x [87 x i32]]* @cached_reg_save_code, i64 0, i64 %idxprom, i64 %idxprom1, !dbg !2331
  %0 = load i32, i32* %arrayidx2, align 4, !dbg !2331
  %tobool = icmp eq i32 %0, 0, !dbg !2331
  br i1 %tobool, label %if.end, label %if.then, !dbg !2333

if.then:                                          ; preds = %entry
  br label %cleanup, !dbg !2334

if.end:                                           ; preds = %entry
  %call = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 %reg, i32 %mode) #6, !dbg !2335
  %tobool7 = icmp eq i8 %call, 0, !dbg !2335
  br i1 %tobool7, label %if.then8, label %if.end17, !dbg !2337

if.then8:                                         ; preds = %if.end
  store i32 -1, i32* %arrayidx2, align 4, !dbg !2338
  %arrayidx16 = getelementptr inbounds [53 x [87 x i32]], [53 x [87 x i32]]* @cached_reg_restore_code, i64 0, i64 %idxprom, i64 %idxprom1, !dbg !2340
  store i32 -1, i32* %arrayidx16, align 4, !dbg !2341
  br label %cleanup, !dbg !2342

if.end17:                                         ; preds = %if.end
  %1 = load %struct.rtx_def*, %struct.rtx_def** @test_reg, align 8, !dbg !2343
  %call18 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %1) #7, !dbg !2343
  %2 = load %struct.rtx_def*, %struct.rtx_def** @test_reg, align 8, !dbg !2343
  tail call void @df_ref_change_reg_with_loc(i32 %call18, i32 %reg, %struct.rtx_def* %2) #6, !dbg !2343
  %3 = load %struct.rtx_def*, %struct.rtx_def** @test_reg, align 8, !dbg !2343
  %arrayidx19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2343
  %rt_uint = bitcast %union.rtunion_def* %arrayidx19 to i32*, !dbg !2343
  store i32 %reg, i32* %rt_uint, align 8, !dbg !2343
  %.cast = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 0, !dbg !2344
  %bf.load = load i32, i32* %.cast, align 8, !dbg !2344
  %bf.value = shl i32 %mode, 16, !dbg !2344
  %bf.shl = and i32 %bf.value, 16711680, !dbg !2344
  %bf.clear = and i32 %bf.load, -16711681, !dbg !2344
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !2344
  store i32 %bf.set, i32* %.cast, align 8, !dbg !2344
  %4 = load i32*, i32** bitcast (%struct.rtx_def** @test_mem to i32**), align 8, !dbg !2345
  %bf.load20 = load i32, i32* %4, align 8, !dbg !2345
  %bf.clear23 = and i32 %bf.load20, -16711681, !dbg !2345
  %bf.set24 = or i32 %bf.clear23, %bf.shl, !dbg !2345
  store i32 %bf.set24, i32* %4, align 8, !dbg !2345
  %5 = load %struct.rtx_def*, %struct.rtx_def** @saveinsn, align 8, !dbg !2346
  %u25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, !dbg !2346
  %6 = getelementptr inbounds %union.u, %union.u* %u25, i64 1, i32 0, i32 0, i64 1, !dbg !2346
  %rt_int = bitcast %union.rtunion_def* %6 to i32*, !dbg !2346
  store i32 -1, i32* %rt_int, align 8, !dbg !2347
  %7 = load %struct.rtx_def*, %struct.rtx_def** @restinsn, align 8, !dbg !2348
  %u28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 1, !dbg !2348
  %8 = getelementptr inbounds %union.u, %union.u* %u28, i64 1, i32 0, i32 0, i64 1, !dbg !2348
  %rt_int31 = bitcast %union.rtunion_def* %8 to i32*, !dbg !2348
  store i32 -1, i32* %rt_int31, align 8, !dbg !2349
  %call32 = tail call fastcc i32 @recog_memoized(%struct.rtx_def* %5) #7, !dbg !2350
  store i32 %call32, i32* %arrayidx2, align 4, !dbg !2351
  %9 = load %struct.rtx_def*, %struct.rtx_def** @restinsn, align 8, !dbg !2352
  %call37 = tail call fastcc i32 @recog_memoized(%struct.rtx_def* %9) #7, !dbg !2353
  %arrayidx41 = getelementptr inbounds [53 x [87 x i32]], [53 x [87 x i32]]* @cached_reg_restore_code, i64 0, i64 %idxprom, i64 %idxprom1, !dbg !2354
  store i32 %call37, i32* %arrayidx41, align 4, !dbg !2355
  %10 = load i32, i32* %arrayidx2, align 4, !dbg !2356
  %cmp = icmp eq i32 %10, -1, !dbg !2357
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !2358

land.rhs:                                         ; preds = %if.end17
  %cmp50 = icmp eq i32 %call37, -1, !dbg !2359
  br label %land.end

land.end:                                         ; preds = %if.end17, %land.rhs
  %11 = phi i1 [ true, %if.end17 ], [ %cmp50, %land.rhs ]
  br i1 %11, label %if.end58, label %if.then52, !dbg !2360

if.then52:                                        ; preds = %land.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** @saveinsn, align 8, !dbg !2361
  tail call void @extract_insn(%struct.rtx_def* %12) #6, !dbg !2364
  %call53 = tail call i32 @constrain_operands(i32 1) #6, !dbg !2365
  %13 = load %struct.rtx_def*, %struct.rtx_def** @restinsn, align 8, !dbg !2366
  tail call void @extract_insn(%struct.rtx_def* %13) #6, !dbg !2367
  %call55 = tail call i32 @constrain_operands(i32 1) #6, !dbg !2368
  %and = and i32 %call53, %call55, !dbg !2369
  %conv57 = trunc i32 %and to i8, !dbg !2369
  call void @llvm.dbg.value(metadata i8 %conv57, metadata !2329, metadata !DIExpression()), !dbg !2330
  %phitmp = icmp eq i8 %conv57, 0, !dbg !2370
  br label %if.end58, !dbg !2370

if.end58:                                         ; preds = %land.end, %if.then52
  %ok.0 = phi i1 [ %phitmp, %if.then52 ], [ true, %land.end ]
  br i1 %ok.0, label %if.then60, label %if.end58.if.end69_crit_edge, !dbg !2371

if.end58.if.end69_crit_edge:                      ; preds = %if.end58
  %.pre = load i32, i32* %arrayidx2, align 4, !dbg !2372
  br label %if.end69, !dbg !2371

if.then60:                                        ; preds = %if.end58
  store i32 -1, i32* %arrayidx2, align 4, !dbg !2373
  store i32 -1, i32* %arrayidx41, align 4, !dbg !2376
  br label %if.end69, !dbg !2377

if.end69:                                         ; preds = %if.end58.if.end69_crit_edge, %if.then60
  %14 = phi i32 [ %.pre, %if.end58.if.end69_crit_edge ], [ -1, %if.then60 ], !dbg !2372
  %tobool74 = icmp eq i32 %14, 0, !dbg !2372
  br i1 %tobool74, label %cond.true, label %cond.end, !dbg !2372

cond.true:                                        ; preds = %if.end69
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2372
  %.pre1 = load i32, i32* %arrayidx2, align 4, !dbg !2378
  br label %cond.end, !dbg !2372

cond.end:                                         ; preds = %if.end69, %cond.true
  %15 = phi i32 [ %14, %if.end69 ], [ %.pre1, %cond.true ], !dbg !2378
  br label %cleanup, !dbg !2379

cleanup:                                          ; preds = %cond.end, %if.then8, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %15, %cond.end ], [ -1, %if.then8 ], !dbg !2330
  ret i32 %retval.0, !dbg !2380
}

; Function Attrs: nounwind uwtable
define dso_local void @init_save_areas() local_unnamed_addr #5 !dbg !2381 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !2383, metadata !DIExpression()), !dbg !2385
  br label %for.cond, !dbg !2386

for.cond:                                         ; preds = %for.inc6, %entry
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc6 ], [ 0, %entry ], !dbg !2388
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !2383, metadata !DIExpression()), !dbg !2385
  %exitcond3 = icmp eq i64 %indvars.iv1, 53, !dbg !2389
  br i1 %exitcond3, label %for.end8, label %for.cond1.preheader, !dbg !2391

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2392

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ 1, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ], !dbg !2394
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2384, metadata !DIExpression()), !dbg !2385
  %exitcond = icmp eq i64 %indvars.iv, 5, !dbg !2395
  br i1 %exitcond, label %for.inc6, label %for.body3, !dbg !2392

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i64 0, i64 %indvars.iv1, i64 %indvars.iv, !dbg !2397
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx5, align 8, !dbg !2398
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2399
  call void @llvm.dbg.value(metadata i32 undef, metadata !2384, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2385
  br label %for.cond1, !dbg !2400, !llvm.loop !2401

for.inc6:                                         ; preds = %for.cond1
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !2403
  call void @llvm.dbg.value(metadata i32 undef, metadata !2383, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2385
  br label %for.cond, !dbg !2404, !llvm.loop !2405

for.end8:                                         ; preds = %for.cond
  store i32 0, i32* @save_slots_num, align 4, !dbg !2407
  ret void, !dbg !2408
}

; Function Attrs: nounwind uwtable
define dso_local void @setup_save_areas() local_unnamed_addr #5 !dbg !2409 {
entry:
  %regno27 = alloca i32, align 4
  %call_saved_regs = alloca [53 x %struct.saved_hard_reg*], align 16
  %hard_regs_to_save = alloca i64, align 8
  %this_insn_sets = alloca i64, align 8
  %rsi = alloca %struct.bitmap_iterator, align 8
  %prev_save_slots = alloca [53 x %struct.rtx_def*], align 16
  call void @llvm.dbg.value(metadata i64 0, metadata !2415, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 53, metadata !2411, metadata !DIExpression()), !dbg !2497
  br label %for.cond, !dbg !2498

for.cond:                                         ; preds = %for.inc20, %entry
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.inc20 ], [ 53, %entry ], !dbg !2499
  %hard_regs_used.0 = phi i64 [ %hard_regs_used.3, %for.inc20 ], [ 0, %entry ], !dbg !2499
  call void @llvm.dbg.value(metadata i64 %indvars.iv59, metadata !2411, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i64 %hard_regs_used.0, metadata !2415, metadata !DIExpression()), !dbg !2497
  %0 = load i32, i32* @max_regno, align 4, !dbg !2500
  %1 = sext i32 %0 to i64, !dbg !2501
  %cmp = icmp slt i64 %indvars.iv59, %1, !dbg !2501
  br i1 %cmp, label %for.body, label %for.end22, !dbg !2502

for.body:                                         ; preds = %for.cond
  %2 = load i16*, i16** @reg_renumber, align 8, !dbg !2503
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %indvars.iv59, !dbg !2503
  %3 = load i16, i16* %arrayidx, align 2, !dbg !2503
  %cmp1 = icmp sgt i16 %3, -1, !dbg !2504
  br i1 %cmp1, label %land.lhs.true, label %for.inc20, !dbg !2505

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2506
  %calls_crossed = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %4, i64 %indvars.iv59, i32 3, !dbg !2506
  %5 = load i32, i32* %calls_crossed, align 4, !dbg !2506
  %cmp5 = icmp sgt i32 %5, 0, !dbg !2507
  br i1 %cmp5, label %if.then, label %for.inc20, !dbg !2508

if.then:                                          ; preds = %land.lhs.true
  %conv9 = sext i16 %3 to i32, !dbg !2509
  call void @llvm.dbg.value(metadata i32 %conv9, metadata !2416, metadata !DIExpression()), !dbg !2510
  %6 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !2511
  %arrayidx11 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %6, i64 %indvars.iv59, !dbg !2511
  %7 = bitcast %struct.rtx_def** %arrayidx11 to i32**, !dbg !2511
  %8 = load i32*, i32** %7, align 8, !dbg !2511
  %bf.load = load i32, i32* %8, align 8, !dbg !2511
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2511
  %bf.clear = and i32 %bf.lshr, 255, !dbg !2511
  %call = tail call fastcc i32 @end_hard_regno(i32 %bf.clear, i32 %conv9) #7, !dbg !2512
  call void @llvm.dbg.value(metadata i32 %call, metadata !2421, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i32 %conv9, metadata !2414, metadata !DIExpression()), !dbg !2497
  %9 = zext i32 %conv9 to i64, !dbg !2513
  %10 = zext i32 %call to i64, !dbg !2513
  br label %for.cond12, !dbg !2513

for.cond12:                                       ; preds = %for.body15, %if.then
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.body15 ], [ %9, %if.then ], !dbg !2497
  %hard_regs_used.1 = phi i64 [ %hard_regs_used.2, %for.body15 ], [ %hard_regs_used.0, %if.then ], !dbg !2497
  call void @llvm.dbg.value(metadata i64 %indvars.iv57, metadata !2414, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i64 %hard_regs_used.1, metadata !2415, metadata !DIExpression()), !dbg !2497
  %cmp13 = icmp ult i64 %indvars.iv57, %10, !dbg !2515
  br i1 %cmp13, label %for.body15, label %for.inc20.loopexit, !dbg !2517

for.body15:                                       ; preds = %for.cond12
  %arrayidx17 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 %indvars.iv57, !dbg !2518
  %11 = load i8, i8* %arrayidx17, align 1, !dbg !2518
  %tobool = icmp eq i8 %11, 0, !dbg !2518
  %shl = shl i64 1, %indvars.iv57, !dbg !2520
  %or = select i1 %tobool, i64 0, i64 %shl, !dbg !2520
  %hard_regs_used.2 = or i64 %hard_regs_used.1, %or, !dbg !2520
  call void @llvm.dbg.value(metadata i64 %hard_regs_used.2, metadata !2415, metadata !DIExpression()), !dbg !2497
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1, !dbg !2521
  br label %for.cond12, !dbg !2522, !llvm.loop !2523

for.inc20.loopexit:                               ; preds = %for.cond12
  %hard_regs_used.1.lcssa = phi i64 [ %hard_regs_used.1, %for.cond12 ], !dbg !2497
  call void @llvm.dbg.value(metadata i64 %hard_regs_used.1.lcssa, metadata !2415, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i64 %hard_regs_used.1.lcssa, metadata !2415, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i64 %hard_regs_used.1.lcssa, metadata !2415, metadata !DIExpression()), !dbg !2497
  br label %for.inc20, !dbg !2525

for.inc20:                                        ; preds = %for.inc20.loopexit, %for.body, %land.lhs.true
  %hard_regs_used.3 = phi i64 [ %hard_regs_used.0, %land.lhs.true ], [ %hard_regs_used.0, %for.body ], [ %hard_regs_used.1.lcssa, %for.inc20.loopexit ], !dbg !2499
  call void @llvm.dbg.value(metadata i64 %hard_regs_used.3, metadata !2415, metadata !DIExpression()), !dbg !2497
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1, !dbg !2525
  call void @llvm.dbg.value(metadata i32 undef, metadata !2411, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2497
  br label %for.cond, !dbg !2526, !llvm.loop !2527

for.end22:                                        ; preds = %for.cond
  %hard_regs_used.0.lcssa = phi i64 [ %hard_regs_used.0, %for.cond ], !dbg !2499
  call void @llvm.dbg.value(metadata i64 %hard_regs_used.0.lcssa, metadata !2415, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i64 %hard_regs_used.0.lcssa, metadata !2415, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i64 %hard_regs_used.0.lcssa, metadata !2415, metadata !DIExpression()), !dbg !2497
  %12 = load i32, i32* @optimize, align 4, !dbg !2529
  %tobool23 = icmp ne i32 %12, 0, !dbg !2529
  %13 = load i32, i32* @flag_ira_share_save_slots, align 4, !dbg !2530
  %tobool25 = icmp ne i32 %13, 0, !dbg !2530
  %or.cond = and i1 %tobool23, %tobool25, !dbg !2531
  br i1 %or.cond, label %if.then26, label %for.cond492.preheader, !dbg !2531

for.cond492.preheader:                            ; preds = %for.end22
  br label %for.cond492, !dbg !2532

if.then26:                                        ; preds = %for.end22
  %14 = bitcast i32* %regno27 to i8*, !dbg !2533
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #8, !dbg !2533
  %15 = bitcast [53 x %struct.saved_hard_reg*]* %call_saved_regs to i8*, !dbg !2534
  call void @llvm.lifetime.start.p0i8(i64 424, i8* nonnull %15) #8, !dbg !2534
  call void @llvm.dbg.declare(metadata [53 x %struct.saved_hard_reg*]* %call_saved_regs, metadata !2458, metadata !DIExpression()), !dbg !2535
  %16 = bitcast i64* %hard_regs_to_save to i8*, !dbg !2536
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #8, !dbg !2536
  %17 = bitcast i64* %this_insn_sets to i8*, !dbg !2536
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #8, !dbg !2536
  %18 = bitcast %struct.bitmap_iterator* %rsi to i8*, !dbg !2537
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %18) #8, !dbg !2537
  %19 = bitcast [53 x %struct.rtx_def*]* %prev_save_slots to i8*, !dbg !2538
  call void @llvm.lifetime.start.p0i8(i64 424, i8* nonnull %19) #8, !dbg !2538
  call void @llvm.dbg.declare(metadata [53 x %struct.rtx_def*]* %prev_save_slots, metadata !2473, metadata !DIExpression()), !dbg !2539
  tail call fastcc void @initiate_saved_hard_regs() #7, !dbg !2540
  %20 = load %struct.insn_chain*, %struct.insn_chain** @reload_insn_chain, align 8, !dbg !2541
  call void @llvm.dbg.value(metadata %struct.insn_chain* %20, metadata !2426, metadata !DIExpression()), !dbg !2542
  br label %for.cond28, !dbg !2543

for.cond28:                                       ; preds = %for.inc151, %if.then26
  %chain.0 = phi %struct.insn_chain* [ %20, %if.then26 ], [ %22, %for.inc151 ], !dbg !2544
  call void @llvm.dbg.value(metadata %struct.insn_chain* %chain.0, metadata !2426, metadata !DIExpression()), !dbg !2542
  %cmp29 = icmp eq %struct.insn_chain* %chain.0, null, !dbg !2545
  br i1 %cmp29, label %for.end152, label %for.body31, !dbg !2546

for.body31:                                       ; preds = %for.cond28
  %insn32 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain.0, i64 0, i32 3, !dbg !2547
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn32, align 8, !dbg !2547
  call void @llvm.dbg.value(metadata %struct.rtx_def* %21, metadata !2422, metadata !DIExpression()), !dbg !2542
  %next33 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain.0, i64 0, i32 0, !dbg !2548
  %22 = load %struct.insn_chain*, %struct.insn_chain** %next33, align 8, !dbg !2548
  call void @llvm.dbg.value(metadata %struct.insn_chain* %22, metadata !2449, metadata !DIExpression()), !dbg !2542
  %23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i64 0, i32 0, !dbg !2549
  %bf.load34 = load i32, i32* %23, align 8, !dbg !2549
  %bf.clear35 = and i32 %bf.load34, 65535, !dbg !2549
  %cmp36 = icmp eq i32 %bf.clear35, 10, !dbg !2549
  br i1 %cmp36, label %lor.lhs.false, label %for.inc151, !dbg !2551

lor.lhs.false:                                    ; preds = %for.body31
  %call38 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %21, i32 27, %struct.rtx_def* null) #6, !dbg !2552
  %tobool39 = icmp eq %struct.rtx_def* %call38, null, !dbg !2552
  br i1 %tobool39, label %if.end41, label %for.inc151, !dbg !2553

if.end41:                                         ; preds = %lor.lhs.false
  %24 = load i32, i32* @optimize_size, align 4, !dbg !2554
  %tobool42 = icmp eq i32 %24, 0, !dbg !2554
  br i1 %tobool42, label %lor.lhs.false43, label %do.body, !dbg !2554

lor.lhs.false43:                                  ; preds = %if.end41
  %25 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !2554
  %tobool44 = icmp eq i32 %25, 0, !dbg !2554
  br i1 %tobool44, label %cond.false, label %land.lhs.true45, !dbg !2554

land.lhs.true45:                                  ; preds = %lor.lhs.false43
  %26 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2554
  %cfg = getelementptr inbounds %struct.function, %struct.function* %26, i64 0, i32 1, !dbg !2554
  %27 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2554
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %27, i64 0, i32 0, !dbg !2554
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2554
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i64 0, i32 8, !dbg !2554
  %29 = load i64, i64* %count, align 8, !dbg !2554
  %tobool46 = icmp eq i64 %29, 0, !dbg !2554
  br i1 %tobool46, label %do.body, label %cond.false, !dbg !2554

cond.false:                                       ; preds = %land.lhs.true45, %lor.lhs.false43
  %arrayidx47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i64 0, i32 1, i32 0, i32 1, !dbg !2554
  %rt_bb = bitcast %struct.object_block** %arrayidx47 to %struct.basic_block_def**, !dbg !2554
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !2554
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i64 0, i32 11, !dbg !2554
  %31 = load i32, i32* %frequency, align 8, !dbg !2554
  %.off = add i32 %31, 9, !dbg !2554
  %32 = icmp ugt i32 %.off, 18, !dbg !2554
  br i1 %32, label %cond.true49, label %do.body, !dbg !2554

cond.true49:                                      ; preds = %cond.false
  %div56 = sdiv i32 %31, 10, !dbg !2554
  br label %do.body, !dbg !2554

do.body:                                          ; preds = %land.lhs.true45, %if.end41, %cond.false, %cond.true49
  %cond59 = phi i32 [ 1000, %land.lhs.true45 ], [ 1000, %if.end41 ], [ %div56, %cond.true49 ], [ 1, %cond.false ], !dbg !2554
  call void @llvm.dbg.value(metadata i32 %cond59, metadata !2453, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 0, metadata !2459, metadata !DIExpression()), !dbg !2542
  store i64 0, i64* %hard_regs_to_save, align 8, !dbg !2555
  %live_throughout = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain.0, i64 0, i32 6, !dbg !2555
  call void @llvm.dbg.value(metadata i64* %hard_regs_to_save, metadata !2459, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  call void @reg_set_to_hard_reg_set(i64* nonnull %hard_regs_to_save, %struct.bitmap_head_def* nonnull %live_throughout) #6, !dbg !2555
  %33 = load i64, i64* @call_used_reg_set, align 8, !dbg !2557
  call void @llvm.dbg.value(metadata i64 %33, metadata !2460, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 0, metadata !2461, metadata !DIExpression()), !dbg !2542
  store i64 0, i64* %this_insn_sets, align 8, !dbg !2558
  %u60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i64 0, i32 1, !dbg !2559
  %34 = getelementptr inbounds %union.u, %union.u* %u60, i64 1, i32 0, i32 0, i64 0, !dbg !2559
  %rt_rtx = bitcast %union.rtunion_def* %34 to %struct.rtx_def**, !dbg !2559
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2559
  call void @note_stores(%struct.rtx_def* %35, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @mark_set_regs, i8* nonnull %17) #6, !dbg !2560
  %bf.load63 = load i32, i32* %23, align 8, !dbg !2561
  %bf.clear65 = and i32 %bf.load63, 16777216, !dbg !2561
  %tobool66 = icmp ne i32 %bf.clear65, 0, !dbg !2561
  %36 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 7), align 8, !dbg !2563
  %tobool68 = icmp ne %struct.rtx_def* %36, null, !dbg !2564
  %or.cond1 = and i1 %tobool66, %tobool68, !dbg !2565
  br i1 %or.cond1, label %if.then69, label %if.end70, !dbg !2565

if.then69:                                        ; preds = %do.body
  call void @mark_set_regs(%struct.rtx_def* nonnull %36, %struct.rtx_def* null, i8* nonnull %17) #7, !dbg !2566
  br label %if.end70, !dbg !2566

if.end70:                                         ; preds = %if.then69, %do.body
  %37 = load i64, i64* @call_fixed_reg_set, align 8, !dbg !2567
  %neg = xor i64 %37, -1, !dbg !2567
  %and = and i64 %33, %neg, !dbg !2567
  call void @llvm.dbg.value(metadata i64 %and, metadata !2460, metadata !DIExpression()), !dbg !2542
  %38 = load i64, i64* %this_insn_sets, align 8, !dbg !2568
  call void @llvm.dbg.value(metadata i64 %38, metadata !2461, metadata !DIExpression()), !dbg !2542
  %neg71 = xor i64 %38, -1, !dbg !2568
  %and72 = and i64 %and, %neg71, !dbg !2568
  call void @llvm.dbg.value(metadata i64 %and72, metadata !2460, metadata !DIExpression()), !dbg !2542
  %39 = load i64, i64* %hard_regs_to_save, align 8, !dbg !2569
  call void @llvm.dbg.value(metadata i64 %39, metadata !2459, metadata !DIExpression()), !dbg !2542
  %and73 = and i64 %39, %and72, !dbg !2569
  call void @llvm.dbg.value(metadata i64 %and73, metadata !2459, metadata !DIExpression()), !dbg !2542
  store i64 %and73, i64* %hard_regs_to_save, align 8, !dbg !2569
  call void @llvm.dbg.value(metadata i32 0, metadata !2451, metadata !DIExpression()), !dbg !2542
  br label %for.cond74, !dbg !2570

for.cond74:                                       ; preds = %for.inc93, %if.end70
  %40 = phi i32 [ 0, %if.end70 ], [ %inc94, %for.inc93 ], !dbg !2572
  store i32 %40, i32* %regno27, align 4, !dbg !2572
  call void @llvm.dbg.value(metadata i32 %40, metadata !2451, metadata !DIExpression()), !dbg !2542
  %cmp75 = icmp ult i32 %40, 53, !dbg !2573
  br i1 %cmp75, label %for.body77, label %for.end95, !dbg !2575

for.body77:                                       ; preds = %for.cond74
  %41 = load i64, i64* %hard_regs_to_save, align 8, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %41, metadata !2459, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 %40, metadata !2451, metadata !DIExpression()), !dbg !2542
  %sh_prom78 = zext i32 %40 to i64, !dbg !2576
  %shl79 = shl i64 1, %sh_prom78, !dbg !2576
  %and80 = and i64 %41, %shl79, !dbg !2576
  %tobool81 = icmp eq i64 %and80, 0, !dbg !2576
  br i1 %tobool81, label %for.inc93, label %if.then82, !dbg !2578

if.then82:                                        ; preds = %for.body77
  call void @llvm.dbg.value(metadata i32 %40, metadata !2451, metadata !DIExpression()), !dbg !2542
  %arrayidx84 = getelementptr inbounds [53 x %struct.saved_hard_reg*], [53 x %struct.saved_hard_reg*]* @hard_reg_map, i64 0, i64 %sh_prom78, !dbg !2579
  %42 = load %struct.saved_hard_reg*, %struct.saved_hard_reg** %arrayidx84, align 8, !dbg !2579
  %cmp85 = icmp eq %struct.saved_hard_reg* %42, null, !dbg !2582
  call void @llvm.dbg.value(metadata i32 %40, metadata !2451, metadata !DIExpression()), !dbg !2542
  br i1 %cmp85, label %if.else, label %if.then87, !dbg !2583

if.then87:                                        ; preds = %if.then82
  %call_freq = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %42, i64 0, i32 2, !dbg !2584
  %43 = load i32, i32* %call_freq, align 8, !dbg !2585
  %add = add nsw i32 %43, %cond59, !dbg !2585
  store i32 %add, i32* %call_freq, align 8, !dbg !2585
  br label %for.inc93, !dbg !2586

if.else:                                          ; preds = %if.then82
  %call90 = call fastcc %struct.saved_hard_reg* @new_saved_hard_reg(i32 %40, i32 %cond59) #7, !dbg !2587
  call void @llvm.dbg.value(metadata %struct.saved_hard_reg* %call90, metadata !2454, metadata !DIExpression()), !dbg !2542
  %.pre = load i32, i32* %regno27, align 4, !dbg !2588
  br label %for.inc93

for.inc93:                                        ; preds = %for.body77, %if.else, %if.then87
  %44 = phi i32 [ %40, %for.body77 ], [ %.pre, %if.else ], [ %40, %if.then87 ], !dbg !2588
  call void @llvm.dbg.value(metadata i32 %44, metadata !2451, metadata !DIExpression()), !dbg !2542
  %inc94 = add i32 %44, 1, !dbg !2588
  call void @llvm.dbg.value(metadata i32 %inc94, metadata !2451, metadata !DIExpression()), !dbg !2542
  br label %for.cond74, !dbg !2589, !llvm.loop !2590

for.end95:                                        ; preds = %for.cond74
  call void @llvm.dbg.value(metadata i32* %regno27, metadata !2451, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %rsi, metadata !2462, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %rsi, %struct.bitmap_head_def* nonnull %live_throughout, i32 53, i32* nonnull %regno27) #7, !dbg !2592
  br label %for.cond97, !dbg !2592

for.cond97:                                       ; preds = %cleanup, %for.end95
  call void @llvm.dbg.value(metadata i32* %regno27, metadata !2451, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %rsi, metadata !2462, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  %call98 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %rsi, i32* nonnull %regno27) #7, !dbg !2593
  %tobool99 = icmp eq i8 %call98, 0, !dbg !2592
  br i1 %tobool99, label %for.inc151.loopexit, label %for.body100, !dbg !2592

for.body100:                                      ; preds = %for.cond97
  %45 = load i16*, i16** @reg_renumber, align 8, !dbg !2594
  %46 = load i32, i32* %regno27, align 4, !dbg !2595
  call void @llvm.dbg.value(metadata i32 %46, metadata !2451, metadata !DIExpression()), !dbg !2542
  %idxprom102 = zext i32 %46 to i64, !dbg !2594
  %arrayidx103 = getelementptr inbounds i16, i16* %45, i64 %idxprom102, !dbg !2594
  %47 = load i16, i16* %arrayidx103, align 2, !dbg !2594
  call void @llvm.dbg.value(metadata i32 undef, metadata !2474, metadata !DIExpression()), !dbg !2596
  %cmp105 = icmp slt i16 %47, 0, !dbg !2597
  br i1 %cmp105, label %cleanup, label %if.end108, !dbg !2599

if.end108:                                        ; preds = %for.body100
  %conv104 = sext i16 %47 to i64, !dbg !2594
  %idxprom109 = sext i16 %47 to i64, !dbg !2600
  %48 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !2601
  call void @llvm.dbg.value(metadata i32 %46, metadata !2451, metadata !DIExpression()), !dbg !2542
  %arrayidx112 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %48, i64 %idxprom102, !dbg !2601
  %49 = bitcast %struct.rtx_def** %arrayidx112 to i32**, !dbg !2601
  %50 = load i32*, i32** %49, align 8, !dbg !2601
  %bf.load113 = load i32, i32* %50, align 8, !dbg !2601
  %bf.lshr114 = lshr i32 %bf.load113, 16, !dbg !2601
  %bf.clear115 = and i32 %bf.lshr114, 255, !dbg !2601
  %idxprom116 = zext i32 %bf.clear115 to i64, !dbg !2600
  %arrayidx117 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom109, i64 %idxprom116, !dbg !2600
  %51 = load i8, i8* %arrayidx117, align 1, !dbg !2600
  %conv118 = zext i8 %51 to i64, !dbg !2600
  %add119 = add nsw i64 %conv104, %conv118, !dbg !2602
  br label %for.cond120, !dbg !2603

for.cond120:                                      ; preds = %for.inc145, %if.end108
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.inc145 ], [ %idxprom109, %if.end108 ], !dbg !2596
  call void @llvm.dbg.value(metadata i64 %indvars.iv34, metadata !2474, metadata !DIExpression()), !dbg !2596
  %cmp121 = icmp slt i64 %indvars.iv34, %add119, !dbg !2604
  br i1 %cmp121, label %for.body123, label %cleanup.loopexit, !dbg !2607

for.body123:                                      ; preds = %for.cond120
  %sh_prom124 = and i64 %indvars.iv34, 4294967295, !dbg !2608
  %shl125 = shl i64 1, %sh_prom124, !dbg !2608
  %and126 = and i64 %and72, %shl125, !dbg !2608
  %tobool127 = icmp eq i64 %and126, 0, !dbg !2608
  br i1 %tobool127, label %for.inc145, label %if.then128, !dbg !2610

if.then128:                                       ; preds = %for.body123
  %arrayidx130 = getelementptr inbounds [53 x %struct.saved_hard_reg*], [53 x %struct.saved_hard_reg*]* @hard_reg_map, i64 0, i64 %indvars.iv34, !dbg !2611
  %52 = load %struct.saved_hard_reg*, %struct.saved_hard_reg** %arrayidx130, align 8, !dbg !2611
  %cmp131 = icmp eq %struct.saved_hard_reg* %52, null, !dbg !2614
  br i1 %cmp131, label %if.else138, label %if.then133, !dbg !2615

if.then133:                                       ; preds = %if.then128
  %call_freq136 = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %52, i64 0, i32 2, !dbg !2616
  %53 = load i32, i32* %call_freq136, align 8, !dbg !2617
  %add137 = add nsw i32 %53, %cond59, !dbg !2617
  store i32 %add137, i32* %call_freq136, align 8, !dbg !2617
  br label %if.end140, !dbg !2618

if.else138:                                       ; preds = %if.then128
  %54 = trunc i64 %indvars.iv34 to i32, !dbg !2619
  %call139 = call fastcc %struct.saved_hard_reg* @new_saved_hard_reg(i32 %54, i32 %cond59) #7, !dbg !2619
  call void @llvm.dbg.value(metadata %struct.saved_hard_reg* %call139, metadata !2454, metadata !DIExpression()), !dbg !2542
  br label %if.end140

if.end140:                                        ; preds = %if.else138, %if.then133
  %55 = load i64, i64* %hard_regs_to_save, align 8, !dbg !2620
  call void @llvm.dbg.value(metadata i64 %55, metadata !2459, metadata !DIExpression()), !dbg !2542
  %or143 = or i64 %55, %shl125, !dbg !2620
  call void @llvm.dbg.value(metadata i64 %or143, metadata !2459, metadata !DIExpression()), !dbg !2542
  store i64 %or143, i64* %hard_regs_to_save, align 8, !dbg !2620
  br label %for.inc145, !dbg !2621

for.inc145:                                       ; preds = %for.body123, %if.end140
  %indvars.iv.next35 = add nsw i64 %indvars.iv34, 1, !dbg !2622
  call void @llvm.dbg.value(metadata i32 undef, metadata !2474, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2596
  br label %for.cond120, !dbg !2623, !llvm.loop !2624

cleanup.loopexit:                                 ; preds = %for.cond120
  br label %cleanup, !dbg !2593

cleanup:                                          ; preds = %cleanup.loopexit, %for.body100
  call void @llvm.dbg.value(metadata i32* %regno27, metadata !2451, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %rsi, metadata !2462, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %rsi, i32* nonnull %regno27) #7, !dbg !2593
  br label %for.cond97, !dbg !2593, !llvm.loop !2626

for.inc151.loopexit:                              ; preds = %for.cond97
  br label %for.inc151, !dbg !2628

for.inc151:                                       ; preds = %for.inc151.loopexit, %lor.lhs.false, %for.body31
  call void @llvm.dbg.value(metadata %struct.insn_chain* %22, metadata !2426, metadata !DIExpression()), !dbg !2542
  br label %for.cond28, !dbg !2628, !llvm.loop !2629

for.end152:                                       ; preds = %for.cond28
  %56 = load i32, i32* @saved_regs_num, align 4, !dbg !2631
  %mul153 = mul nsw i32 %56, %56, !dbg !2632
  %conv154 = zext i32 %mul153 to i64, !dbg !2631
  %call155 = call i8* @xmalloc(i64 %conv154) #6, !dbg !2633
  call void @llvm.dbg.value(metadata i8* %call155, metadata !2450, metadata !DIExpression()), !dbg !2542
  %57 = load i32, i32* @saved_regs_num, align 4, !dbg !2634
  %mul156 = mul nsw i32 %57, %57, !dbg !2635
  %conv157 = zext i32 %mul156 to i64, !dbg !2634
  %call158 = call i8* @memset(i8* %call155, i32 0, i64 %conv157) #6, !dbg !2636
  %58 = load %struct.insn_chain*, %struct.insn_chain** @reload_insn_chain, align 8, !dbg !2637
  call void @llvm.dbg.value(metadata %struct.insn_chain* %58, metadata !2426, metadata !DIExpression()), !dbg !2542
  br label %for.cond159, !dbg !2638

for.cond159:                                      ; preds = %for.inc303, %for.end152
  %chain.1 = phi %struct.insn_chain* [ %58, %for.end152 ], [ %60, %for.inc303 ], !dbg !2639
  call void @llvm.dbg.value(metadata %struct.insn_chain* %chain.1, metadata !2426, metadata !DIExpression()), !dbg !2542
  %cmp160 = icmp eq %struct.insn_chain* %chain.1, null, !dbg !2640
  br i1 %cmp160, label %for.end304, label %for.body162, !dbg !2641

for.body162:                                      ; preds = %for.cond159
  call void @llvm.dbg.value(metadata i32 0, metadata !2457, metadata !DIExpression()), !dbg !2542
  %insn163 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain.1, i64 0, i32 3, !dbg !2642
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn163, align 8, !dbg !2642
  call void @llvm.dbg.value(metadata %struct.rtx_def* %59, metadata !2422, metadata !DIExpression()), !dbg !2542
  %next164 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain.1, i64 0, i32 0, !dbg !2643
  %60 = load %struct.insn_chain*, %struct.insn_chain** %next164, align 8, !dbg !2643
  call void @llvm.dbg.value(metadata %struct.insn_chain* %60, metadata !2449, metadata !DIExpression()), !dbg !2542
  %61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i64 0, i32 0, !dbg !2644
  %bf.load165 = load i32, i32* %61, align 8, !dbg !2644
  %bf.clear166 = and i32 %bf.load165, 65535, !dbg !2644
  %cmp167 = icmp eq i32 %bf.clear166, 10, !dbg !2644
  br i1 %cmp167, label %lor.lhs.false169, label %for.inc303, !dbg !2646

lor.lhs.false169:                                 ; preds = %for.body162
  %call170 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %59, i32 27, %struct.rtx_def* null) #6, !dbg !2647
  %tobool171 = icmp eq %struct.rtx_def* %call170, null, !dbg !2647
  br i1 %tobool171, label %do.body174, label %for.inc303, !dbg !2648

do.body174:                                       ; preds = %lor.lhs.false169
  call void @llvm.dbg.value(metadata i64 0, metadata !2459, metadata !DIExpression()), !dbg !2542
  store i64 0, i64* %hard_regs_to_save, align 8, !dbg !2649
  %live_throughout175 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain.1, i64 0, i32 6, !dbg !2649
  call void @llvm.dbg.value(metadata i64* %hard_regs_to_save, metadata !2459, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  call void @reg_set_to_hard_reg_set(i64* nonnull %hard_regs_to_save, %struct.bitmap_head_def* nonnull %live_throughout175) #6, !dbg !2649
  %62 = load i64, i64* @call_used_reg_set, align 8, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %62, metadata !2460, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 0, metadata !2461, metadata !DIExpression()), !dbg !2542
  store i64 0, i64* %this_insn_sets, align 8, !dbg !2652
  %u178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i64 0, i32 1, !dbg !2653
  %63 = getelementptr inbounds %union.u, %union.u* %u178, i64 1, i32 0, i32 0, i64 0, !dbg !2653
  %rt_rtx181 = bitcast %union.rtunion_def* %63 to %struct.rtx_def**, !dbg !2653
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx181, align 8, !dbg !2653
  call void @note_stores(%struct.rtx_def* %64, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @mark_set_regs, i8* nonnull %17) #6, !dbg !2654
  %bf.load182 = load i32, i32* %61, align 8, !dbg !2655
  %bf.clear184 = and i32 %bf.load182, 16777216, !dbg !2655
  %tobool185 = icmp ne i32 %bf.clear184, 0, !dbg !2655
  %65 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 7), align 8, !dbg !2657
  %tobool187 = icmp ne %struct.rtx_def* %65, null, !dbg !2658
  %or.cond2 = and i1 %tobool185, %tobool187, !dbg !2659
  br i1 %or.cond2, label %if.then188, label %if.end189, !dbg !2659

if.then188:                                       ; preds = %do.body174
  call void @mark_set_regs(%struct.rtx_def* nonnull %65, %struct.rtx_def* null, i8* nonnull %17) #7, !dbg !2660
  br label %if.end189, !dbg !2660

if.end189:                                        ; preds = %if.then188, %do.body174
  %66 = load i64, i64* @call_fixed_reg_set, align 8, !dbg !2661
  %neg190 = xor i64 %66, -1, !dbg !2661
  %and191 = and i64 %62, %neg190, !dbg !2661
  call void @llvm.dbg.value(metadata i64 %and191, metadata !2460, metadata !DIExpression()), !dbg !2542
  %67 = load i64, i64* %this_insn_sets, align 8, !dbg !2662
  call void @llvm.dbg.value(metadata i64 %67, metadata !2461, metadata !DIExpression()), !dbg !2542
  %neg192 = xor i64 %67, -1, !dbg !2662
  %and193 = and i64 %and191, %neg192, !dbg !2662
  call void @llvm.dbg.value(metadata i64 %and193, metadata !2460, metadata !DIExpression()), !dbg !2542
  %68 = load i64, i64* %hard_regs_to_save, align 8, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %68, metadata !2459, metadata !DIExpression()), !dbg !2542
  %and194 = and i64 %68, %and193, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %and194, metadata !2459, metadata !DIExpression()), !dbg !2542
  store i64 %and194, i64* %hard_regs_to_save, align 8, !dbg !2663
  call void @llvm.dbg.value(metadata i32 0, metadata !2451, metadata !DIExpression()), !dbg !2542
  br label %for.cond195, !dbg !2664

for.cond195:                                      ; preds = %for.inc218, %if.end189
  %69 = phi i32 [ 0, %if.end189 ], [ %inc219, %for.inc218 ], !dbg !2666
  %call_saved_regs_num.0 = phi i32 [ 0, %if.end189 ], [ %call_saved_regs_num.1, %for.inc218 ], !dbg !2667
  store i32 %69, i32* %regno27, align 4, !dbg !2666
  call void @llvm.dbg.value(metadata i32 %call_saved_regs_num.0, metadata !2457, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 %69, metadata !2451, metadata !DIExpression()), !dbg !2542
  %cmp196 = icmp ult i32 %69, 53, !dbg !2668
  br i1 %cmp196, label %for.body198, label %for.end220, !dbg !2670

for.body198:                                      ; preds = %for.cond195
  %70 = load i64, i64* %hard_regs_to_save, align 8, !dbg !2671
  call void @llvm.dbg.value(metadata i64 %70, metadata !2459, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 %69, metadata !2451, metadata !DIExpression()), !dbg !2542
  %sh_prom199 = zext i32 %69 to i64, !dbg !2671
  %shl200 = shl i64 1, %sh_prom199, !dbg !2671
  %and201 = and i64 %70, %shl200, !dbg !2671
  %tobool202 = icmp eq i64 %and201, 0, !dbg !2671
  br i1 %tobool202, label %for.inc218, label %if.then203, !dbg !2673

if.then203:                                       ; preds = %for.body198
  call void @llvm.dbg.value(metadata i32 %69, metadata !2451, metadata !DIExpression()), !dbg !2542
  %arrayidx205 = getelementptr inbounds [53 x %struct.saved_hard_reg*], [53 x %struct.saved_hard_reg*]* @hard_reg_map, i64 0, i64 %sh_prom199, !dbg !2674
  %71 = load %struct.saved_hard_reg*, %struct.saved_hard_reg** %arrayidx205, align 8, !dbg !2674
  %cmp206 = icmp eq %struct.saved_hard_reg* %71, null, !dbg !2674
  br i1 %cmp206, label %cond.true208, label %cond.end210, !dbg !2674

cond.true208:                                     ; preds = %if.then203
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 570, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2674
  %.pre14 = load i32, i32* %regno27, align 4, !dbg !2676
  %.pre15 = zext i32 %.pre14 to i64, !dbg !2677
  br label %cond.end210, !dbg !2674

cond.end210:                                      ; preds = %if.then203, %cond.true208
  %idxprom212.pre-phi = phi i64 [ %sh_prom199, %if.then203 ], [ %.pre15, %cond.true208 ], !dbg !2677
  %72 = phi i32 [ %69, %if.then203 ], [ %.pre14, %cond.true208 ], !dbg !2676
  call void @llvm.dbg.value(metadata i32 %72, metadata !2451, metadata !DIExpression()), !dbg !2542
  %arrayidx213 = getelementptr inbounds [53 x %struct.saved_hard_reg*], [53 x %struct.saved_hard_reg*]* @hard_reg_map, i64 0, i64 %idxprom212.pre-phi, !dbg !2677
  %73 = bitcast %struct.saved_hard_reg** %arrayidx213 to i64*, !dbg !2677
  %74 = load i64, i64* %73, align 8, !dbg !2677
  %inc214 = add nsw i32 %call_saved_regs_num.0, 1, !dbg !2678
  call void @llvm.dbg.value(metadata i32 %inc214, metadata !2457, metadata !DIExpression()), !dbg !2542
  %idxprom215 = sext i32 %call_saved_regs_num.0 to i64, !dbg !2679
  %arrayidx216 = getelementptr inbounds [53 x %struct.saved_hard_reg*], [53 x %struct.saved_hard_reg*]* %call_saved_regs, i64 0, i64 %idxprom215, !dbg !2679
  %75 = bitcast %struct.saved_hard_reg** %arrayidx216 to i64*, !dbg !2680
  store i64 %74, i64* %75, align 8, !dbg !2680
  br label %for.inc218, !dbg !2681

for.inc218:                                       ; preds = %for.body198, %cond.end210
  %76 = phi i32 [ %72, %cond.end210 ], [ %69, %for.body198 ], !dbg !2682
  %call_saved_regs_num.1 = phi i32 [ %inc214, %cond.end210 ], [ %call_saved_regs_num.0, %for.body198 ], !dbg !2667
  call void @llvm.dbg.value(metadata i32 %call_saved_regs_num.1, metadata !2457, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 %76, metadata !2451, metadata !DIExpression()), !dbg !2542
  %inc219 = add i32 %76, 1, !dbg !2682
  call void @llvm.dbg.value(metadata i32 %inc219, metadata !2451, metadata !DIExpression()), !dbg !2542
  br label %for.cond195, !dbg !2683, !llvm.loop !2684

for.end220:                                       ; preds = %for.cond195
  %call_saved_regs_num.0.lcssa = phi i32 [ %call_saved_regs_num.0, %for.cond195 ], !dbg !2667
  call void @llvm.dbg.value(metadata i32 %call_saved_regs_num.0.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 %call_saved_regs_num.0.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 %call_saved_regs_num.0.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32* %regno27, metadata !2451, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %rsi, metadata !2462, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %rsi, %struct.bitmap_head_def* nonnull %live_throughout175, i32 53, i32* nonnull %regno27) #7, !dbg !2686
  br label %for.cond222, !dbg !2686

for.cond222:                                      ; preds = %cleanup264, %for.end220
  %call_saved_regs_num.2 = phi i32 [ %call_saved_regs_num.0.lcssa, %for.end220 ], [ %call_saved_regs_num.5, %cleanup264 ], !dbg !2687
  call void @llvm.dbg.value(metadata i32 %call_saved_regs_num.2, metadata !2457, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32* %regno27, metadata !2451, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %rsi, metadata !2462, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  %call223 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %rsi, i32* nonnull %regno27) #7, !dbg !2688
  %tobool224 = icmp eq i8 %call223, 0, !dbg !2686
  br i1 %tobool224, label %for.cond270.preheader, label %for.body225, !dbg !2686

for.cond270.preheader:                            ; preds = %for.cond222
  %call_saved_regs_num.2.lcssa = phi i32 [ %call_saved_regs_num.2, %for.cond222 ], !dbg !2687
  call void @llvm.dbg.value(metadata i32 %call_saved_regs_num.2.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 %call_saved_regs_num.2.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 %call_saved_regs_num.2.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2542
  %77 = sext i32 %call_saved_regs_num.2.lcssa to i64, !dbg !2689
  br label %for.cond270, !dbg !2689

for.body225:                                      ; preds = %for.cond222
  %78 = load i16*, i16** @reg_renumber, align 8, !dbg !2691
  %79 = load i32, i32* %regno27, align 4, !dbg !2692
  call void @llvm.dbg.value(metadata i32 %79, metadata !2451, metadata !DIExpression()), !dbg !2542
  %idxprom227 = zext i32 %79 to i64, !dbg !2691
  %arrayidx228 = getelementptr inbounds i16, i16* %78, i64 %idxprom227, !dbg !2691
  %80 = load i16, i16* %arrayidx228, align 2, !dbg !2691
  call void @llvm.dbg.value(metadata i32 undef, metadata !2482, metadata !DIExpression()), !dbg !2693
  %cmp231 = icmp slt i16 %80, 0, !dbg !2694
  br i1 %cmp231, label %cleanup264, label %if.end234, !dbg !2696

if.end234:                                        ; preds = %for.body225
  %conv229 = sext i16 %80 to i64, !dbg !2691
  %idxprom235 = sext i16 %80 to i64, !dbg !2697
  %81 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !2698
  call void @llvm.dbg.value(metadata i32 %79, metadata !2451, metadata !DIExpression()), !dbg !2542
  %arrayidx238 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %81, i64 %idxprom227, !dbg !2698
  %82 = bitcast %struct.rtx_def** %arrayidx238 to i32**, !dbg !2698
  %83 = load i32*, i32** %82, align 8, !dbg !2698
  %bf.load239 = load i32, i32* %83, align 8, !dbg !2698
  %bf.lshr240 = lshr i32 %bf.load239, 16, !dbg !2698
  %bf.clear241 = and i32 %bf.lshr240, 255, !dbg !2698
  %idxprom242 = zext i32 %bf.clear241 to i64, !dbg !2697
  %arrayidx243 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom235, i64 %idxprom242, !dbg !2697
  %84 = load i8, i8* %arrayidx243, align 1, !dbg !2697
  %conv244 = zext i8 %84 to i64, !dbg !2697
  %add245 = add nsw i64 %conv229, %conv244, !dbg !2699
  br label %for.cond246, !dbg !2700

for.cond246:                                      ; preds = %for.inc261, %if.end234
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc261 ], [ %idxprom235, %if.end234 ], !dbg !2667
  %call_saved_regs_num.3 = phi i32 [ %call_saved_regs_num.4, %for.inc261 ], [ %call_saved_regs_num.2, %if.end234 ], !dbg !2667
  call void @llvm.dbg.value(metadata i64 %indvars.iv27, metadata !2482, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 %call_saved_regs_num.3, metadata !2457, metadata !DIExpression()), !dbg !2542
  %cmp247 = icmp slt i64 %indvars.iv27, %add245, !dbg !2701
  br i1 %cmp247, label %for.body249, label %cleanup264.loopexit, !dbg !2704

for.body249:                                      ; preds = %for.cond246
  %sh_prom250 = and i64 %indvars.iv27, 4294967295, !dbg !2705
  %shl251 = shl i64 1, %sh_prom250, !dbg !2705
  %and252 = and i64 %and193, %shl251, !dbg !2705
  %tobool253 = icmp eq i64 %and252, 0, !dbg !2705
  br i1 %tobool253, label %for.inc261, label %if.then254, !dbg !2707

if.then254:                                       ; preds = %for.body249
  %arrayidx256 = getelementptr inbounds [53 x %struct.saved_hard_reg*], [53 x %struct.saved_hard_reg*]* @hard_reg_map, i64 0, i64 %indvars.iv27, !dbg !2708
  %85 = bitcast %struct.saved_hard_reg** %arrayidx256 to i64*, !dbg !2708
  %86 = load i64, i64* %85, align 8, !dbg !2708
  %inc257 = add nsw i32 %call_saved_regs_num.3, 1, !dbg !2709
  call void @llvm.dbg.value(metadata i32 %inc257, metadata !2457, metadata !DIExpression()), !dbg !2542
  %idxprom258 = sext i32 %call_saved_regs_num.3 to i64, !dbg !2710
  %arrayidx259 = getelementptr inbounds [53 x %struct.saved_hard_reg*], [53 x %struct.saved_hard_reg*]* %call_saved_regs, i64 0, i64 %idxprom258, !dbg !2710
  %87 = bitcast %struct.saved_hard_reg** %arrayidx259 to i64*, !dbg !2711
  store i64 %86, i64* %87, align 8, !dbg !2711
  br label %for.inc261, !dbg !2710

for.inc261:                                       ; preds = %for.body249, %if.then254
  %call_saved_regs_num.4 = phi i32 [ %inc257, %if.then254 ], [ %call_saved_regs_num.3, %for.body249 ], !dbg !2667
  call void @llvm.dbg.value(metadata i32 %call_saved_regs_num.4, metadata !2457, metadata !DIExpression()), !dbg !2542
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, 1, !dbg !2712
  call void @llvm.dbg.value(metadata i32 undef, metadata !2482, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2693
  br label %for.cond246, !dbg !2713, !llvm.loop !2714

cleanup264.loopexit:                              ; preds = %for.cond246
  %call_saved_regs_num.3.lcssa = phi i32 [ %call_saved_regs_num.3, %for.cond246 ], !dbg !2667
  call void @llvm.dbg.value(metadata i32 %call_saved_regs_num.3.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 %call_saved_regs_num.3.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 %call_saved_regs_num.3.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2542
  br label %cleanup264, !dbg !2688

cleanup264:                                       ; preds = %cleanup264.loopexit, %for.body225
  %call_saved_regs_num.5 = phi i32 [ %call_saved_regs_num.2, %for.body225 ], [ %call_saved_regs_num.3.lcssa, %cleanup264.loopexit ], !dbg !2687
  call void @llvm.dbg.value(metadata i32 %call_saved_regs_num.5, metadata !2457, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32* %regno27, metadata !2451, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %rsi, metadata !2462, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %rsi, i32* nonnull %regno27) #7, !dbg !2688
  br label %for.cond222, !dbg !2688, !llvm.loop !2716

for.cond270:                                      ; preds = %for.cond270.preheader, %for.inc300
  %indvars.iv32 = phi i64 [ 0, %for.cond270.preheader ], [ %indvars.iv.next33, %for.inc300 ], !dbg !2718
  call void @llvm.dbg.value(metadata i64 %indvars.iv32, metadata !2411, metadata !DIExpression()), !dbg !2497
  %cmp271 = icmp slt i64 %indvars.iv32, %77, !dbg !2719
  br i1 %cmp271, label %for.body273, label %for.inc303.loopexit, !dbg !2689

for.body273:                                      ; preds = %for.cond270
  %arrayidx275 = getelementptr inbounds [53 x %struct.saved_hard_reg*], [53 x %struct.saved_hard_reg*]* %call_saved_regs, i64 0, i64 %indvars.iv32, !dbg !2721
  %88 = load %struct.saved_hard_reg*, %struct.saved_hard_reg** %arrayidx275, align 8, !dbg !2721
  call void @llvm.dbg.value(metadata %struct.saved_hard_reg* %88, metadata !2454, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 0, metadata !2412, metadata !DIExpression()), !dbg !2497
  %num286 = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %88, i64 0, i32 0, !dbg !2723
  %wide.trip.count = zext i32 %call_saved_regs_num.2.lcssa to i64, !dbg !2728
  br label %for.cond276, !dbg !2729

for.cond276:                                      ; preds = %for.inc297, %for.body273
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.inc297 ], [ 0, %for.body273 ], !dbg !2730
  call void @llvm.dbg.value(metadata i64 %indvars.iv29, metadata !2412, metadata !DIExpression()), !dbg !2497
  %exitcond31 = icmp eq i64 %indvars.iv29, %wide.trip.count, !dbg !2728
  br i1 %exitcond31, label %for.inc300, label %for.body279, !dbg !2731

for.body279:                                      ; preds = %for.cond276
  %cmp280 = icmp eq i64 %indvars.iv32, %indvars.iv29, !dbg !2732
  br i1 %cmp280, label %for.inc297, label %if.then282, !dbg !2733

if.then282:                                       ; preds = %for.body279
  %arrayidx284 = getelementptr inbounds [53 x %struct.saved_hard_reg*], [53 x %struct.saved_hard_reg*]* %call_saved_regs, i64 0, i64 %indvars.iv29, !dbg !2734
  %89 = load %struct.saved_hard_reg*, %struct.saved_hard_reg** %arrayidx284, align 8, !dbg !2734
  call void @llvm.dbg.value(metadata %struct.saved_hard_reg* %89, metadata !2455, metadata !DIExpression()), !dbg !2542
  %num = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %89, i64 0, i32 0, !dbg !2735
  %90 = load i32, i32* %num, align 8, !dbg !2735
  %91 = load i32, i32* @saved_regs_num, align 4, !dbg !2736
  %mul285 = mul nsw i32 %90, %91, !dbg !2737
  %92 = load i32, i32* %num286, align 8, !dbg !2738
  %add287 = add nsw i32 %mul285, %92, !dbg !2739
  %idxprom288 = sext i32 %add287 to i64, !dbg !2740
  %arrayidx289 = getelementptr inbounds i8, i8* %call155, i64 %idxprom288, !dbg !2740
  store i8 1, i8* %arrayidx289, align 1, !dbg !2741
  %93 = load i32, i32* %num286, align 8, !dbg !2742
  %94 = load i32, i32* @saved_regs_num, align 4, !dbg !2743
  %mul291 = mul nsw i32 %93, %94, !dbg !2744
  %95 = load i32, i32* %num, align 8, !dbg !2745
  %add293 = add nsw i32 %mul291, %95, !dbg !2746
  %idxprom294 = sext i32 %add293 to i64, !dbg !2747
  %arrayidx295 = getelementptr inbounds i8, i8* %call155, i64 %idxprom294, !dbg !2747
  store i8 1, i8* %arrayidx295, align 1, !dbg !2748
  br label %for.inc297, !dbg !2749

for.inc297:                                       ; preds = %for.body279, %if.then282
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1, !dbg !2750
  call void @llvm.dbg.value(metadata i32 undef, metadata !2412, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2497
  br label %for.cond276, !dbg !2751, !llvm.loop !2752

for.inc300:                                       ; preds = %for.cond276
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1, !dbg !2754
  call void @llvm.dbg.value(metadata i32 undef, metadata !2411, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2497
  br label %for.cond270, !dbg !2755, !llvm.loop !2756

for.inc303.loopexit:                              ; preds = %for.cond270
  br label %for.inc303, !dbg !2758

for.inc303:                                       ; preds = %for.inc303.loopexit, %lor.lhs.false169, %for.body162
  call void @llvm.dbg.value(metadata %struct.insn_chain* %60, metadata !2426, metadata !DIExpression()), !dbg !2542
  br label %for.cond159, !dbg !2758, !llvm.loop !2759

for.end304:                                       ; preds = %for.cond159
  %96 = load i32, i32* @saved_regs_num, align 4, !dbg !2761
  %conv305 = sext i32 %96 to i64, !dbg !2761
  call void @spec_qsort(i8* bitcast ([53 x %struct.saved_hard_reg*]* @all_saved_regs to i8*), i64 %conv305, i64 8, i32 (i8*, i8*)* nonnull @saved_hard_reg_compare_func) #6, !dbg !2762
  %97 = load i32, i32* @save_slots_num, align 4, !dbg !2763
  call void @llvm.dbg.value(metadata i32 %97, metadata !2472, metadata !DIExpression()), !dbg !2542
  %conv306 = sext i32 %97 to i64, !dbg !2764
  %mul307 = shl nsw i64 %conv306, 3, !dbg !2765
  %call308 = call i8* @memcpy(i8* nonnull %19, i8* bitcast ([53 x %struct.rtx_def*]* @save_slots to i8*), i64 %mul307) #6, !dbg !2766
  store i32 0, i32* @save_slots_num, align 4, !dbg !2767
  call void @llvm.dbg.value(metadata i32 0, metadata !2411, metadata !DIExpression()), !dbg !2497
  br label %for.cond309, !dbg !2768

for.cond309:                                      ; preds = %for.inc488, %for.end304
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.inc488 ], [ 0, %for.end304 ], !dbg !2542
  %prev_save_slots_num.0 = phi i32 [ %prev_save_slots_num.3, %for.inc488 ], [ %97, %for.end304 ], !dbg !2542
  call void @llvm.dbg.value(metadata i64 %indvars.iv25, metadata !2411, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 %prev_save_slots_num.0, metadata !2472, metadata !DIExpression()), !dbg !2542
  %98 = load i32, i32* @saved_regs_num, align 4, !dbg !2770
  %99 = sext i32 %98 to i64, !dbg !2772
  %cmp310 = icmp slt i64 %indvars.iv25, %99, !dbg !2772
  br i1 %cmp310, label %for.body312, label %for.end490, !dbg !2773

for.body312:                                      ; preds = %for.cond309
  %arrayidx314 = getelementptr inbounds [53 x %struct.saved_hard_reg*], [53 x %struct.saved_hard_reg*]* @all_saved_regs, i64 0, i64 %indvars.iv25, !dbg !2774
  %100 = load %struct.saved_hard_reg*, %struct.saved_hard_reg** %arrayidx314, align 8, !dbg !2774
  call void @llvm.dbg.value(metadata %struct.saved_hard_reg* %100, metadata !2454, metadata !DIExpression()), !dbg !2542
  %hard_regno = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %100, i64 0, i32 1, !dbg !2776
  %101 = load i32, i32* %hard_regno, align 4, !dbg !2776
  call void @llvm.dbg.value(metadata i32 %101, metadata !2451, metadata !DIExpression()), !dbg !2542
  store i32 %101, i32* %regno27, align 4, !dbg !2777
  call void @llvm.dbg.value(metadata i32 0, metadata !2412, metadata !DIExpression()), !dbg !2497
  %num332 = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %100, i64 0, i32 0, !dbg !2778
  %idxprom346 = zext i32 %101 to i64, !dbg !2786
  %arrayidx348 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i64 0, i64 %idxprom346, i64 1, !dbg !2786
  br label %for.cond315, !dbg !2788

for.cond315:                                      ; preds = %for.inc384, %for.body312
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.inc384 ], [ 0, %for.body312 ], !dbg !2789
  call void @llvm.dbg.value(metadata i64 %indvars.iv20, metadata !2412, metadata !DIExpression()), !dbg !2497
  %exitcond22 = icmp eq i64 %indvars.iv20, %indvars.iv25, !dbg !2790
  br i1 %exitcond22, label %for.end386.loopexit, label %for.body318, !dbg !2791

for.body318:                                      ; preds = %for.cond315
  %arrayidx320 = getelementptr inbounds [53 x %struct.saved_hard_reg*], [53 x %struct.saved_hard_reg*]* @all_saved_regs, i64 0, i64 %indvars.iv20, !dbg !2792
  %102 = load %struct.saved_hard_reg*, %struct.saved_hard_reg** %arrayidx320, align 8, !dbg !2792
  call void @llvm.dbg.value(metadata %struct.saved_hard_reg* %102, metadata !2455, metadata !DIExpression()), !dbg !2542
  %first_p = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %102, i64 0, i32 4, !dbg !2793
  %103 = load i32, i32* %first_p, align 8, !dbg !2793
  %tobool321 = icmp eq i32 %103, 0, !dbg !2795
  br i1 %tobool321, label %for.inc384, label %if.end323, !dbg !2796

if.end323:                                        ; preds = %for.body318
  call void @llvm.dbg.value(metadata i64 %indvars.iv20, metadata !2413, metadata !DIExpression()), !dbg !2497
  %104 = trunc i64 %indvars.iv20 to i32, !dbg !2797
  br label %for.cond325, !dbg !2797

for.cond325:                                      ; preds = %for.body328, %if.end323
  %k.0 = phi i32 [ %104, %if.end323 ], [ %106, %for.body328 ], !dbg !2798
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !2413, metadata !DIExpression()), !dbg !2497
  %cmp326 = icmp sgt i32 %k.0, -1, !dbg !2799
  br i1 %cmp326, label %for.body328, label %for.end342, !dbg !2800

for.body328:                                      ; preds = %for.cond325
  %idxprom329 = sext i32 %k.0 to i64, !dbg !2801
  %arrayidx330 = getelementptr inbounds [53 x %struct.saved_hard_reg*], [53 x %struct.saved_hard_reg*]* @all_saved_regs, i64 0, i64 %idxprom329, !dbg !2801
  %105 = load %struct.saved_hard_reg*, %struct.saved_hard_reg** %arrayidx330, align 8, !dbg !2801
  call void @llvm.dbg.value(metadata %struct.saved_hard_reg* %105, metadata !2456, metadata !DIExpression()), !dbg !2542
  %next331 = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %105, i64 0, i32 5, !dbg !2802
  %106 = load i32, i32* %next331, align 4, !dbg !2802
  call void @llvm.dbg.value(metadata i32 %106, metadata !2452, metadata !DIExpression()), !dbg !2542
  %107 = load i32, i32* %num332, align 8, !dbg !2803
  %mul333 = mul nsw i32 %107, %98, !dbg !2804
  %num334 = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %105, i64 0, i32 0, !dbg !2805
  %108 = load i32, i32* %num334, align 8, !dbg !2805
  %add335 = add nsw i32 %mul333, %108, !dbg !2806
  %idxprom336 = sext i32 %add335 to i64, !dbg !2807
  %arrayidx337 = getelementptr inbounds i8, i8* %call155, i64 %idxprom336, !dbg !2807
  %109 = load i8, i8* %arrayidx337, align 1, !dbg !2807
  %tobool338 = icmp eq i8 %109, 0, !dbg !2807
  br i1 %tobool338, label %for.cond325, label %for.end342, !dbg !2808, !llvm.loop !2809

for.end342:                                       ; preds = %for.body328, %for.cond325
  %k.0.lcssa = phi i32 [ %k.0, %for.body328 ], [ %k.0, %for.cond325 ], !dbg !2798
  call void @llvm.dbg.value(metadata i32 %k.0.lcssa, metadata !2413, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 %k.0.lcssa, metadata !2413, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 %k.0.lcssa, metadata !2413, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 %k.0.lcssa, metadata !2413, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 %k.0.lcssa, metadata !2413, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 %k.0.lcssa, metadata !2413, metadata !DIExpression()), !dbg !2497
  %cmp343 = icmp slt i32 %k.0.lcssa, 0, !dbg !2811
  br i1 %cmp343, label %land.lhs.true345, label %for.inc384, !dbg !2812

land.lhs.true345:                                 ; preds = %for.end342
  call void @llvm.dbg.value(metadata i32 %101, metadata !2451, metadata !DIExpression()), !dbg !2542
  %110 = load i32, i32* %arrayidx348, align 4, !dbg !2813
  %idxprom349 = zext i32 %110 to i64, !dbg !2813
  %arrayidx350 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom349, !dbg !2813
  %111 = load i8, i8* %arrayidx350, align 1, !dbg !2813
  %hard_regno353 = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %102, i64 0, i32 1, !dbg !2814
  %112 = load i32, i32* %hard_regno353, align 4, !dbg !2814
  %idxprom354 = sext i32 %112 to i64, !dbg !2814
  %arrayidx356 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i64 0, i64 %idxprom354, i64 1, !dbg !2814
  %113 = load i32, i32* %arrayidx356, align 4, !dbg !2814
  %idxprom357 = zext i32 %113 to i64, !dbg !2814
  %arrayidx358 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom357, !dbg !2814
  %114 = load i8, i8* %arrayidx358, align 1, !dbg !2814
  %cmp361 = icmp ugt i8 %111, %114, !dbg !2815
  br i1 %cmp361, label %for.inc384, label %if.then363, !dbg !2816

if.then363:                                       ; preds = %land.lhs.true345
  %hard_regno353.lcssa = phi i32* [ %hard_regno353, %land.lhs.true345 ], !dbg !2814
  %.lcssa = phi %struct.saved_hard_reg* [ %102, %land.lhs.true345 ], !dbg !2792
  %indvars.iv20.lcssa61 = phi i64 [ %indvars.iv20, %land.lhs.true345 ], !dbg !2789
  call void @llvm.dbg.value(metadata i64 %indvars.iv20.lcssa61, metadata !2412, metadata !DIExpression()), !dbg !2497
  %slot324.le = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %.lcssa, i64 0, i32 3, !dbg !2817
  %115 = load %struct.rtx_def*, %struct.rtx_def** %slot324.le, align 8, !dbg !2817
  %idxprom365 = sext i32 %101 to i64, !dbg !2818
  %arrayidx367 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i64 0, i64 %idxprom365, i64 1, !dbg !2818
  %116 = load i32, i32* %arrayidx367, align 4, !dbg !2818
  %call368 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %115, i32 %116, i64 0, i32 0, i32 1) #6, !dbg !2818
  %slot369 = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %100, i64 0, i32 3, !dbg !2820
  store %struct.rtx_def* %call368, %struct.rtx_def** %slot369, align 8, !dbg !2821
  %.cast6 = ptrtoint %struct.rtx_def* %call368 to i64, !dbg !2822
  %117 = load i32, i32* %regno27, align 4, !dbg !2823
  call void @llvm.dbg.value(metadata i32 %117, metadata !2451, metadata !DIExpression()), !dbg !2542
  %idxprom371 = zext i32 %117 to i64, !dbg !2824
  %arrayidx373 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i64 0, i64 %idxprom371, i64 1, !dbg !2824
  %118 = bitcast %struct.rtx_def** %arrayidx373 to i64*, !dbg !2825
  store i64 %.cast6, i64* %118, align 8, !dbg !2825
  %next374 = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %.lcssa, i64 0, i32 5, !dbg !2826
  %119 = load i32, i32* %next374, align 4, !dbg !2826
  %next375 = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %100, i64 0, i32 5, !dbg !2827
  store i32 %119, i32* %next375, align 4, !dbg !2828
  %120 = trunc i64 %indvars.iv25 to i32, !dbg !2829
  store i32 %120, i32* %next374, align 4, !dbg !2829
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2830
  %cmp377 = icmp eq %struct._IO_FILE* %121, null, !dbg !2832
  br i1 %cmp377, label %for.end386, label %if.then379, !dbg !2833

if.then379:                                       ; preds = %if.then363
  call void @llvm.dbg.value(metadata i32 %117, metadata !2451, metadata !DIExpression()), !dbg !2542
  %122 = load i32, i32* %hard_regno353.lcssa, align 4, !dbg !2834
  %call381 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %122) #6, !dbg !2835
  br label %for.end386, !dbg !2835

for.inc384:                                       ; preds = %land.lhs.true345, %for.body318, %for.end342
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1, !dbg !2836
  call void @llvm.dbg.value(metadata i32 undef, metadata !2412, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2497
  br label %for.cond315, !dbg !2837, !llvm.loop !2838

for.end386.loopexit:                              ; preds = %for.cond315
  %indvars.iv20.lcssa = phi i64 [ %indvars.iv20, %for.cond315 ], !dbg !2789
  call void @llvm.dbg.value(metadata i64 %indvars.iv20.lcssa, metadata !2412, metadata !DIExpression()), !dbg !2497
  br label %for.end386, !dbg !2840

for.end386:                                       ; preds = %for.end386.loopexit, %if.then363, %if.then379
  %indvars.iv2062 = phi i64 [ %indvars.iv20.lcssa, %for.end386.loopexit ], [ %indvars.iv20.lcssa61, %if.then363 ], [ %indvars.iv20.lcssa61, %if.then379 ]
  %123 = and i64 %indvars.iv2062, 4294967295, !dbg !2840
  %cmp387 = icmp eq i64 %123, %indvars.iv25, !dbg !2840
  br i1 %cmp387, label %if.then389, label %for.inc488, !dbg !2842

if.then389:                                       ; preds = %for.end386
  %first_p390 = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %100, i64 0, i32 4, !dbg !2843
  store i32 1, i32* %first_p390, align 8, !dbg !2845
  call void @llvm.dbg.value(metadata i32 -1, metadata !2471, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 0, metadata !2412, metadata !DIExpression()), !dbg !2497
  %124 = load i32, i32* %regno27, align 4, !dbg !2846
  %idxprom401 = zext i32 %124 to i64, !dbg !2846
  %arrayidx403 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i64 0, i64 %idxprom401, i64 1, !dbg !2846
  %125 = sext i32 %prev_save_slots_num.0 to i64, !dbg !2851
  br label %for.cond391, !dbg !2851

for.cond391:                                      ; preds = %for.inc432, %if.then389
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc432 ], [ 0, %if.then389 ], !dbg !2852
  %best_slot_num.0 = phi i32 [ %best_slot_num.2, %for.inc432 ], [ -1, %if.then389 ], !dbg !2852
  call void @llvm.dbg.value(metadata i64 %indvars.iv23, metadata !2412, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 %best_slot_num.0, metadata !2471, metadata !DIExpression()), !dbg !2542
  %cmp392 = icmp slt i64 %indvars.iv23, %125, !dbg !2853
  br i1 %cmp392, label %for.body394, label %for.end434, !dbg !2854

for.body394:                                      ; preds = %for.cond391
  %arrayidx396 = getelementptr inbounds [53 x %struct.rtx_def*], [53 x %struct.rtx_def*]* %prev_save_slots, i64 0, i64 %indvars.iv23, !dbg !2855
  %126 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx396, align 8, !dbg !2855
  call void @llvm.dbg.value(metadata %struct.rtx_def* %126, metadata !2425, metadata !DIExpression()), !dbg !2542
  %cmp397 = icmp eq %struct.rtx_def* %126, null, !dbg !2856
  br i1 %cmp397, label %for.inc432, label %if.end400, !dbg !2858

if.end400:                                        ; preds = %for.body394
  call void @llvm.dbg.value(metadata i32 %124, metadata !2451, metadata !DIExpression()), !dbg !2542
  %127 = load i32, i32* %arrayidx403, align 4, !dbg !2859
  %idxprom404 = zext i32 %127 to i64, !dbg !2859
  %arrayidx405 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom404, !dbg !2859
  %128 = load i8, i8* %arrayidx405, align 1, !dbg !2859
  %129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %126, i64 0, i32 0, !dbg !2860
  %bf.load408 = load i32, i32* %129, align 8, !dbg !2860
  %bf.lshr409 = lshr i32 %bf.load408, 16, !dbg !2860
  %bf.clear410 = and i32 %bf.lshr409, 255, !dbg !2860
  %idxprom411 = zext i32 %bf.clear410 to i64, !dbg !2860
  %arrayidx412 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom411, !dbg !2860
  %130 = load i8, i8* %arrayidx412, align 1, !dbg !2860
  %cmp415 = icmp ule i8 %128, %130, !dbg !2861
  %cmp418 = icmp slt i32 %best_slot_num.0, 0, !dbg !2862
  %or.cond4 = and i1 %cmp415, %cmp418, !dbg !2863
  %131 = trunc i64 %indvars.iv23 to i32, !dbg !2863
  %best_slot_num.1 = select i1 %or.cond4, i32 %131, i32 %best_slot_num.0, !dbg !2863
  call void @llvm.dbg.value(metadata i32 %best_slot_num.1, metadata !2471, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 %124, metadata !2451, metadata !DIExpression()), !dbg !2542
  %cmp428 = icmp eq i32 %bf.clear410, %127, !dbg !2864
  br i1 %cmp428, label %for.end434, label %for.inc432, !dbg !2866

for.inc432:                                       ; preds = %if.end400, %for.body394
  %best_slot_num.2 = phi i32 [ %best_slot_num.0, %for.body394 ], [ %best_slot_num.1, %if.end400 ], !dbg !2867
  call void @llvm.dbg.value(metadata i32 %best_slot_num.2, metadata !2471, metadata !DIExpression()), !dbg !2542
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1, !dbg !2868
  call void @llvm.dbg.value(metadata i32 undef, metadata !2412, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2497
  br label %for.cond391, !dbg !2869, !llvm.loop !2870

for.end434:                                       ; preds = %if.end400, %for.cond391
  %best_slot_num.3 = phi i32 [ %best_slot_num.0, %for.cond391 ], [ %best_slot_num.1, %if.end400 ], !dbg !2867
  call void @llvm.dbg.value(metadata i32 %best_slot_num.3, metadata !2471, metadata !DIExpression()), !dbg !2542
  %cmp435 = icmp sgt i32 %best_slot_num.3, -1, !dbg !2872
  br i1 %cmp435, label %if.then437, label %if.else460, !dbg !2874

if.then437:                                       ; preds = %for.end434
  %idxprom438 = sext i32 %best_slot_num.3 to i64, !dbg !2875
  %arrayidx439 = getelementptr inbounds [53 x %struct.rtx_def*], [53 x %struct.rtx_def*]* %prev_save_slots, i64 0, i64 %idxprom438, !dbg !2875
  %132 = bitcast %struct.rtx_def** %arrayidx439 to i64*, !dbg !2875
  %133 = load i64, i64* %132, align 8, !dbg !2875
  %slot440 = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %100, i64 0, i32 3, !dbg !2877
  %134 = bitcast %struct.rtx_def** %slot440 to i64*, !dbg !2878
  store i64 %133, i64* %134, align 8, !dbg !2878
  %.cast = inttoptr i64 %133 to %struct.rtx_def*, !dbg !2879
  %135 = load i32, i32* %hard_regno, align 4, !dbg !2879
  %idxprom443 = sext i32 %135 to i64, !dbg !2879
  %arrayidx445 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i64 0, i64 %idxprom443, i64 1, !dbg !2879
  %136 = load i32, i32* %arrayidx445, align 4, !dbg !2879
  %call446 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %.cast, i32 %136, i64 0, i32 0, i32 1) #6, !dbg !2879
  store %struct.rtx_def* %call446, %struct.rtx_def** %slot440, align 8, !dbg !2880
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2881
  %cmp448 = icmp eq %struct._IO_FILE* %137, null, !dbg !2883
  br i1 %cmp448, label %if.end452, label %if.then450, !dbg !2884

if.then450:                                       ; preds = %if.then437
  %138 = load i32, i32* %regno27, align 4, !dbg !2885
  call void @llvm.dbg.value(metadata i32 %138, metadata !2451, metadata !DIExpression()), !dbg !2542
  %call451 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %137, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %138) #6, !dbg !2886
  br label %if.end452, !dbg !2886

if.end452:                                        ; preds = %if.then437, %if.then450
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx439, align 8, !dbg !2887
  %add455 = add nsw i32 %best_slot_num.3, 1, !dbg !2888
  %cmp456 = icmp eq i32 %add455, %prev_save_slots_num.0, !dbg !2890
  %139 = zext i1 %cmp456 to i32, !dbg !2891
  %spec.select = sub i32 %prev_save_slots_num.0, %139, !dbg !2891
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2472, metadata !DIExpression()), !dbg !2542
  br label %if.end478, !dbg !2892

if.else460:                                       ; preds = %for.end434
  call void @llvm.dbg.value(metadata i32 %124, metadata !2451, metadata !DIExpression()), !dbg !2542
  %140 = load i32, i32* %arrayidx403, align 4, !dbg !2893
  call void @llvm.dbg.value(metadata i32 %124, metadata !2451, metadata !DIExpression()), !dbg !2542
  %idxprom467 = zext i32 %140 to i64, !dbg !2895
  %arrayidx468 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom467, !dbg !2895
  %141 = load i8, i8* %arrayidx468, align 1, !dbg !2895
  %conv470 = zext i8 %141 to i64, !dbg !2895
  %call471 = call %struct.rtx_def* @assign_stack_local_1(i32 %140, i64 %conv470, i32 0, i8 zeroext 1) #6, !dbg !2896
  %slot472 = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %100, i64 0, i32 3, !dbg !2897
  store %struct.rtx_def* %call471, %struct.rtx_def** %slot472, align 8, !dbg !2898
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2899
  %cmp473 = icmp eq %struct._IO_FILE* %142, null, !dbg !2901
  br i1 %cmp473, label %if.end478, label %if.then475, !dbg !2902

if.then475:                                       ; preds = %if.else460
  %143 = load i32, i32* %regno27, align 4, !dbg !2903
  call void @llvm.dbg.value(metadata i32 %143, metadata !2451, metadata !DIExpression()), !dbg !2542
  %call476 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %143) #6, !dbg !2904
  br label %if.end478, !dbg !2904

if.end478:                                        ; preds = %if.else460, %if.then475, %if.end452
  %prev_save_slots_num.2 = phi i32 [ %spec.select, %if.end452 ], [ %prev_save_slots_num.0, %if.then475 ], [ %prev_save_slots_num.0, %if.else460 ], !dbg !2542
  call void @llvm.dbg.value(metadata i32 %prev_save_slots_num.2, metadata !2472, metadata !DIExpression()), !dbg !2542
  %slot479 = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %100, i64 0, i32 3, !dbg !2905
  %144 = bitcast %struct.rtx_def** %slot479 to i64*, !dbg !2905
  %145 = load i64, i64* %144, align 8, !dbg !2905
  %146 = load i32, i32* %regno27, align 4, !dbg !2906
  call void @llvm.dbg.value(metadata i32 %146, metadata !2451, metadata !DIExpression()), !dbg !2542
  %idxprom480 = zext i32 %146 to i64, !dbg !2907
  %arrayidx482 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i64 0, i64 %idxprom480, i64 1, !dbg !2907
  %147 = bitcast %struct.rtx_def** %arrayidx482 to i64*, !dbg !2908
  store i64 %145, i64* %147, align 8, !dbg !2908
  %148 = load i64, i64* %144, align 8, !dbg !2909
  %149 = load i32, i32* @save_slots_num, align 4, !dbg !2910
  %inc484 = add nsw i32 %149, 1, !dbg !2910
  store i32 %inc484, i32* @save_slots_num, align 4, !dbg !2910
  %idxprom485 = sext i32 %149 to i64, !dbg !2911
  %arrayidx486 = getelementptr inbounds [53 x %struct.rtx_def*], [53 x %struct.rtx_def*]* @save_slots, i64 0, i64 %idxprom485, !dbg !2911
  %150 = bitcast %struct.rtx_def** %arrayidx486 to i64*, !dbg !2912
  store i64 %148, i64* %150, align 8, !dbg !2912
  br label %for.inc488, !dbg !2913

for.inc488:                                       ; preds = %for.end386, %if.end478
  %prev_save_slots_num.3 = phi i32 [ %prev_save_slots_num.2, %if.end478 ], [ %prev_save_slots_num.0, %for.end386 ], !dbg !2542
  call void @llvm.dbg.value(metadata i32 %prev_save_slots_num.3, metadata !2472, metadata !DIExpression()), !dbg !2542
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1, !dbg !2914
  call void @llvm.dbg.value(metadata i32 undef, metadata !2411, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2497
  br label %for.cond309, !dbg !2915, !llvm.loop !2916

for.end490:                                       ; preds = %for.cond309
  call void @free(i8* %call155) #6, !dbg !2918
  call fastcc void @finish_saved_hard_regs() #7, !dbg !2919
  call void @llvm.lifetime.end.p0i8(i64 424, i8* nonnull %19) #8, !dbg !2920
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %18) #8, !dbg !2920
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #8, !dbg !2920
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #8, !dbg !2920
  call void @llvm.lifetime.end.p0i8(i64 424, i8* nonnull %15) #8, !dbg !2920
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #8, !dbg !2920
  br label %if.end596, !dbg !2921

for.cond492:                                      ; preds = %for.cond492.preheader, %for.inc593
  %indvars.iv54 = phi i64 [ 0, %for.cond492.preheader ], [ %indvars.iv.next55, %for.inc593 ], !dbg !2922
  call void @llvm.dbg.value(metadata i64 %indvars.iv54, metadata !2411, metadata !DIExpression()), !dbg !2497
  %exitcond56 = icmp eq i64 %indvars.iv54, 53, !dbg !2923
  br i1 %exitcond56, label %if.end596.loopexit, label %for.cond496.preheader, !dbg !2532

for.cond496.preheader:                            ; preds = %for.cond492
  %arrayidx509 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i64 0, i64 %indvars.iv54, i64 1, !dbg !2924
  br label %for.cond496, !dbg !2926

for.cond496:                                      ; preds = %for.cond496.preheader, %cleanup587
  %indvars.iv52 = phi i64 [ 4, %for.cond496.preheader ], [ %indvars.iv.next53, %cleanup587 ], !dbg !2927
  call void @llvm.dbg.value(metadata i64 %indvars.iv52, metadata !2412, metadata !DIExpression()), !dbg !2497
  %cmp497 = icmp eq i64 %indvars.iv52, 0, !dbg !2928
  br i1 %cmp497, label %for.inc593, label %for.body499, !dbg !2926

for.body499:                                      ; preds = %for.cond496
  call void @llvm.dbg.value(metadata i32 1, metadata !2490, metadata !DIExpression()), !dbg !2929
  %arrayidx503 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i64 0, i64 %indvars.iv54, i64 %indvars.iv52, !dbg !2930
  %151 = load i32, i32* %arrayidx503, align 4, !dbg !2930
  %cmp504 = icmp eq i32 %151, 0, !dbg !2931
  br i1 %cmp504, label %cleanup587, label %lor.lhs.false506, !dbg !2932

lor.lhs.false506:                                 ; preds = %for.body499
  %152 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx509, align 8, !dbg !2933
  %cmp510 = icmp eq %struct.rtx_def* %152, null, !dbg !2934
  br i1 %cmp510, label %for.cond514.preheader, label %cleanup587, !dbg !2935

for.cond514.preheader:                            ; preds = %lor.lhs.false506
  br label %for.cond514, !dbg !2936

for.cond514:                                      ; preds = %for.cond514.preheader, %for.inc525
  %indvars.iv36 = phi i64 [ 0, %for.cond514.preheader ], [ %indvars.iv.next37, %for.inc525 ], !dbg !2938
  call void @llvm.dbg.value(metadata i64 %indvars.iv36, metadata !2413, metadata !DIExpression()), !dbg !2497
  %exitcond40 = icmp eq i64 %indvars.iv36, %indvars.iv52, !dbg !2939
  br i1 %exitcond40, label %for.end527, label %for.body517, !dbg !2936

for.body517:                                      ; preds = %for.cond514
  %153 = add nuw nsw i64 %indvars.iv54, %indvars.iv36, !dbg !2941
  %arrayidx521 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i64 0, i64 %153, i64 1, !dbg !2943
  %154 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx521, align 8, !dbg !2943
  %tobool522 = icmp eq %struct.rtx_def* %154, null, !dbg !2943
  br i1 %tobool522, label %for.inc525, label %for.end527, !dbg !2944

for.inc525:                                       ; preds = %for.body517
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1, !dbg !2945
  call void @llvm.dbg.value(metadata i32 undef, metadata !2413, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2497
  br label %for.cond514, !dbg !2946, !llvm.loop !2947

for.end527:                                       ; preds = %for.cond514, %for.body517
  %do_save.0 = phi i32 [ 1, %for.cond514 ], [ 0, %for.body517 ], !dbg !2929
  call void @llvm.dbg.value(metadata i32 %do_save.0, metadata !2490, metadata !DIExpression()), !dbg !2929
  %tobool528 = icmp eq i32 %do_save.0, 0, !dbg !2949
  br i1 %tobool528, label %cleanup587, label %for.cond531.preheader, !dbg !2951

for.cond531.preheader:                            ; preds = %for.end527
  br label %for.cond531, !dbg !2952

for.cond531:                                      ; preds = %for.cond531.preheader, %for.inc542
  %indvars.iv41 = phi i64 [ 0, %for.cond531.preheader ], [ %indvars.iv.next42, %for.inc542 ], !dbg !2954
  call void @llvm.dbg.value(metadata i64 %indvars.iv41, metadata !2413, metadata !DIExpression()), !dbg !2497
  %exitcond45 = icmp eq i64 %indvars.iv41, %indvars.iv52, !dbg !2955
  br i1 %exitcond45, label %for.end544, label %for.body534, !dbg !2952

for.body534:                                      ; preds = %for.cond531
  %155 = add nuw nsw i64 %indvars.iv54, %indvars.iv41, !dbg !2957
  %shl537 = shl i64 1, %155, !dbg !2957
  %and538 = and i64 %hard_regs_used.0.lcssa, %shl537, !dbg !2957
  %tobool539 = icmp eq i64 %and538, 0, !dbg !2957
  br i1 %tobool539, label %for.end544, label %for.inc542, !dbg !2959

for.inc542:                                       ; preds = %for.body534
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1, !dbg !2960
  call void @llvm.dbg.value(metadata i32 undef, metadata !2413, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2497
  br label %for.cond531, !dbg !2961, !llvm.loop !2962

for.end544:                                       ; preds = %for.cond531, %for.body534
  %do_save.1 = phi i32 [ %do_save.0, %for.cond531 ], [ 0, %for.body534 ], !dbg !2929
  call void @llvm.dbg.value(metadata i32 %do_save.1, metadata !2490, metadata !DIExpression()), !dbg !2929
  %tobool545 = icmp eq i32 %do_save.1, 0, !dbg !2964
  br i1 %tobool545, label %cleanup587, label %if.end547, !dbg !2966

if.end547:                                        ; preds = %for.end544
  %idxprom556 = zext i32 %151 to i64, !dbg !2967
  %arrayidx557 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom556, !dbg !2967
  %156 = load i8, i8* %arrayidx557, align 1, !dbg !2967
  %conv559 = zext i8 %156 to i64, !dbg !2967
  %call560 = tail call %struct.rtx_def* @assign_stack_local_1(i32 %151, i64 %conv559, i32 0, i8 zeroext 1) #6, !dbg !2968
  %arrayidx564 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i64 0, i64 %indvars.iv54, i64 %indvars.iv52, !dbg !2969
  store %struct.rtx_def* %call560, %struct.rtx_def** %arrayidx564, align 8, !dbg !2970
  call void @llvm.dbg.value(metadata i32 0, metadata !2413, metadata !DIExpression()), !dbg !2497
  br label %for.cond565, !dbg !2971

for.cond565:                                      ; preds = %for.body568, %if.end547
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.body568 ], [ 0, %if.end547 ], !dbg !2973
  call void @llvm.dbg.value(metadata i64 %indvars.iv46, metadata !2413, metadata !DIExpression()), !dbg !2497
  %exitcond51 = icmp eq i64 %indvars.iv46, %indvars.iv52, !dbg !2974
  br i1 %exitcond51, label %cleanup587.loopexit, label %for.body568, !dbg !2976

for.body568:                                      ; preds = %for.cond565
  %157 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx564, align 8, !dbg !2977
  %158 = add nuw nsw i64 %indvars.iv54, %indvars.iv46, !dbg !2977
  %arrayidx576 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i64 0, i64 %158, i64 1, !dbg !2977
  %159 = load i32, i32* %arrayidx576, align 4, !dbg !2977
  %160 = shl nsw i64 %indvars.iv46, 2, !dbg !2977
  %call579 = tail call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %157, i32 %159, i64 %160, i32 0, i32 1) #6, !dbg !2977
  %arrayidx583 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i64 0, i64 %158, i64 1, !dbg !2978
  store %struct.rtx_def* %call579, %struct.rtx_def** %arrayidx583, align 8, !dbg !2979
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !2980
  call void @llvm.dbg.value(metadata i32 undef, metadata !2413, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2497
  br label %for.cond565, !dbg !2981, !llvm.loop !2982

cleanup587.loopexit:                              ; preds = %for.cond565
  br label %cleanup587, !dbg !2984

cleanup587:                                       ; preds = %cleanup587.loopexit, %for.end544, %for.end527, %lor.lhs.false506, %for.body499
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, -1, !dbg !2984
  call void @llvm.dbg.value(metadata i32 undef, metadata !2412, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2497
  br label %for.cond496, !dbg !2985, !llvm.loop !2986

for.inc593:                                       ; preds = %for.cond496
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1, !dbg !2988
  call void @llvm.dbg.value(metadata i32 undef, metadata !2411, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2497
  br label %for.cond492, !dbg !2989, !llvm.loop !2990

if.end596.loopexit:                               ; preds = %for.cond492
  br label %if.end596, !dbg !2992

if.end596:                                        ; preds = %if.end596.loopexit, %for.end490
  call void @llvm.dbg.value(metadata i32 0, metadata !2411, metadata !DIExpression()), !dbg !2497
  br label %for.cond597, !dbg !2992

for.cond597:                                      ; preds = %for.inc621, %if.end596
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc621 ], [ 0, %if.end596 ], !dbg !2994
  call void @llvm.dbg.value(metadata i64 %indvars.iv18, metadata !2411, metadata !DIExpression()), !dbg !2497
  %exitcond = icmp eq i64 %indvars.iv18, 53, !dbg !2995
  br i1 %exitcond, label %for.end623, label %for.cond601.preheader, !dbg !2997

for.cond601.preheader:                            ; preds = %for.cond597
  br label %for.cond601, !dbg !2998

for.cond601:                                      ; preds = %for.cond601.preheader, %for.inc618
  %indvars.iv = phi i64 [ 4, %for.cond601.preheader ], [ %indvars.iv.next, %for.inc618 ], !dbg !3000
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2412, metadata !DIExpression()), !dbg !2497
  %cmp602 = icmp eq i64 %indvars.iv, 0, !dbg !3001
  br i1 %cmp602, label %for.inc621, label %for.body604, !dbg !2998

for.body604:                                      ; preds = %for.cond601
  %arrayidx608 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i64 0, i64 %indvars.iv18, i64 %indvars.iv, !dbg !3003
  %161 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx608, align 8, !dbg !3003
  %cmp609 = icmp eq %struct.rtx_def* %161, null, !dbg !3005
  br i1 %cmp609, label %for.inc618, label %if.then611, !dbg !3006

if.then611:                                       ; preds = %for.body604
  %call616 = call i32 @get_frame_alias_set() #6, !dbg !3007
  call void @set_mem_alias_set(%struct.rtx_def* nonnull %161, i32 %call616) #6, !dbg !3008
  br label %for.inc618, !dbg !3008

for.inc618:                                       ; preds = %for.body604, %if.then611
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3009
  call void @llvm.dbg.value(metadata i32 undef, metadata !2412, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2497
  br label %for.cond601, !dbg !3010, !llvm.loop !3011

for.inc621:                                       ; preds = %for.cond601
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1, !dbg !3013
  call void @llvm.dbg.value(metadata i32 undef, metadata !2411, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2497
  br label %for.cond597, !dbg !3014, !llvm.loop !3015

for.end623:                                       ; preds = %for.cond597
  ret void, !dbg !3017
}

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

; Function Attrs: nounwind uwtable
define internal fastcc void @initiate_saved_hard_regs() unnamed_addr #5 !dbg !3029 {
entry:
  store i32 0, i32* @saved_regs_num, align 4, !dbg !3032
  call void @llvm.dbg.value(metadata i32 0, metadata !3031, metadata !DIExpression()), !dbg !3033
  br label %for.cond, !dbg !3034

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !3036
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3031, metadata !DIExpression()), !dbg !3033
  %exitcond = icmp eq i64 %indvars.iv, 53, !dbg !3037
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3039

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [53 x %struct.saved_hard_reg*], [53 x %struct.saved_hard_reg*]* @hard_reg_map, i64 0, i64 %indvars.iv, !dbg !3040
  store %struct.saved_hard_reg* null, %struct.saved_hard_reg** %arrayidx, align 8, !dbg !3041
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3042
  call void @llvm.dbg.value(metadata i32 undef, metadata !3031, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3033
  br label %for.cond, !dbg !3043, !llvm.loop !3044

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3046
}

declare dso_local %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @reg_set_to_hard_reg_set(i64*, %struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @mark_set_regs(%struct.rtx_def* %reg, %struct.rtx_def* %setter, i8* %data) #5 !dbg !3047 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !3054, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata %struct.rtx_def* %setter, metadata !3055, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i8* %data, metadata !3056, metadata !DIExpression()), !dbg !3064
  %0 = bitcast i8* %data to i64*, !dbg !3065
  call void @llvm.dbg.value(metadata i64* %0, metadata !3060, metadata !DIExpression()), !dbg !3064
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 0, !dbg !3066
  %bf.load = load i32, i32* %1, align 8, !dbg !3066
  %bf.clear = and i32 %bf.load, 65535, !dbg !3066
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !3067
  br i1 %cmp, label %if.then, label %if.else, !dbg !3068

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3069
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3069
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3069
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !3061, metadata !DIExpression()), !dbg !3070
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 0, !dbg !3071
  %bf.load1 = load i32, i32* %3, align 8, !dbg !3071
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !3071
  %cmp3 = icmp eq i32 %bf.clear2, 37, !dbg !3071
  br i1 %cmp3, label %lor.lhs.false, label %cleanup, !dbg !3073

lor.lhs.false:                                    ; preds = %if.then
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %2) #7, !dbg !3074
  %cmp4 = icmp ugt i32 %call, 52, !dbg !3075
  br i1 %cmp4, label %cleanup, label %if.end, !dbg !3076

if.end:                                           ; preds = %lor.lhs.false
  %call6 = tail call i32 @subreg_regno(%struct.rtx_def* %reg) #6, !dbg !3077
  call void @llvm.dbg.value(metadata i32 %call6, metadata !3057, metadata !DIExpression()), !dbg !3064
  %call7 = tail call i32 @subreg_nregs(%struct.rtx_def* %reg) #6, !dbg !3078
  %add = add i32 %call6, %call7, !dbg !3079
  call void @llvm.dbg.value(metadata i32 %add, metadata !3058, metadata !DIExpression()), !dbg !3064
  br label %cleanup, !dbg !3080

cleanup:                                          ; preds = %if.then, %lor.lhs.false, %if.end
  %regno.0 = phi i32 [ %call6, %if.end ], [ undef, %lor.lhs.false ], [ undef, %if.then ]
  %endregno.0 = phi i32 [ %add, %if.end ], [ undef, %lor.lhs.false ], [ undef, %if.then ]
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end ], [ false, %lor.lhs.false ], [ false, %if.then ]
  call void @llvm.dbg.value(metadata i32 %endregno.0, metadata !3058, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i32 %regno.0, metadata !3057, metadata !DIExpression()), !dbg !3064
  br i1 %cleanup.dest.slot.0, label %if.end21, label %cleanup.cont28

if.else:                                          ; preds = %entry
  %cmp10 = icmp eq i32 %bf.clear, 37, !dbg !3081
  br i1 %cmp10, label %land.lhs.true, label %cleanup.cont28, !dbg !3083

land.lhs.true:                                    ; preds = %if.else
  %call11 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg) #7, !dbg !3084
  %cmp12 = icmp ult i32 %call11, 53, !dbg !3085
  br i1 %cmp12, label %if.then13, label %cleanup.cont28, !dbg !3086

if.then13:                                        ; preds = %land.lhs.true
  %call14 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg) #7, !dbg !3087
  call void @llvm.dbg.value(metadata i32 %call14, metadata !3057, metadata !DIExpression()), !dbg !3064
  %bf.load15 = load i32, i32* %1, align 8, !dbg !3089
  %bf.lshr = lshr i32 %bf.load15, 16, !dbg !3089
  %bf.clear16 = and i32 %bf.lshr, 255, !dbg !3089
  %call17 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg) #7, !dbg !3089
  %call18 = tail call fastcc i32 @end_hard_regno(i32 %bf.clear16, i32 %call17) #7, !dbg !3089
  call void @llvm.dbg.value(metadata i32 %call18, metadata !3058, metadata !DIExpression()), !dbg !3064
  br label %if.end21

if.end21:                                         ; preds = %cleanup, %if.then13
  %regno.1 = phi i32 [ %call14, %if.then13 ], [ %regno.0, %cleanup ]
  %endregno.1 = phi i32 [ %call18, %if.then13 ], [ %endregno.0, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %endregno.1, metadata !3058, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i32 %regno.1, metadata !3057, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i32 %regno.1, metadata !3059, metadata !DIExpression()), !dbg !3064
  br label %for.cond, !dbg !3090

for.cond:                                         ; preds = %for.body, %if.end21
  %i.0 = phi i32 [ %regno.1, %if.end21 ], [ %inc, %for.body ], !dbg !3092
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3059, metadata !DIExpression()), !dbg !3064
  %cmp22 = icmp slt i32 %i.0, %endregno.1, !dbg !3093
  br i1 %cmp22, label %for.body, label %cleanup.cont28.loopexit, !dbg !3095

for.body:                                         ; preds = %for.cond
  %sh_prom = zext i32 %i.0 to i64, !dbg !3096
  %shl = shl i64 1, %sh_prom, !dbg !3096
  %4 = load i64, i64* %0, align 8, !dbg !3096
  %or = or i64 %4, %shl, !dbg !3096
  store i64 %or, i64* %0, align 8, !dbg !3096
  %inc = add nsw i32 %i.0, 1, !dbg !3097
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3059, metadata !DIExpression()), !dbg !3064
  br label %for.cond, !dbg !3098, !llvm.loop !3099

cleanup.cont28.loopexit:                          ; preds = %for.cond
  br label %cleanup.cont28, !dbg !3101

cleanup.cont28:                                   ; preds = %cleanup.cont28.loopexit, %cleanup, %land.lhs.true, %if.else
  ret void, !dbg !3101
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.saved_hard_reg* @new_saved_hard_reg(i32 %regno, i32 %call_freq) unnamed_addr #5 !dbg !3102 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3106, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i32 %call_freq, metadata !3107, metadata !DIExpression()), !dbg !3109
  %call = tail call i8* @xmalloc(i64 32) #6, !dbg !3110
  %0 = bitcast i8* %call to %struct.saved_hard_reg*, !dbg !3111
  call void @llvm.dbg.value(metadata %struct.saved_hard_reg* %0, metadata !3108, metadata !DIExpression()), !dbg !3109
  %1 = load i32, i32* @saved_regs_num, align 4, !dbg !3112
  %idxprom = sext i32 %1 to i64, !dbg !3113
  %arrayidx = getelementptr inbounds [53 x %struct.saved_hard_reg*], [53 x %struct.saved_hard_reg*]* @all_saved_regs, i64 0, i64 %idxprom, !dbg !3113
  %2 = bitcast %struct.saved_hard_reg** %arrayidx to i8**, !dbg !3114
  store i8* %call, i8** %2, align 8, !dbg !3114
  %idxprom1 = sext i32 %regno to i64, !dbg !3115
  %arrayidx2 = getelementptr inbounds [53 x %struct.saved_hard_reg*], [53 x %struct.saved_hard_reg*]* @hard_reg_map, i64 0, i64 %idxprom1, !dbg !3115
  %3 = bitcast %struct.saved_hard_reg** %arrayidx2 to i8**, !dbg !3116
  store i8* %call, i8** %3, align 8, !dbg !3116
  %inc = add nsw i32 %1, 1, !dbg !3117
  store i32 %inc, i32* @saved_regs_num, align 4, !dbg !3117
  %num = bitcast i8* %call to i32*, !dbg !3118
  store i32 %1, i32* %num, align 8, !dbg !3119
  %hard_regno = getelementptr inbounds i8, i8* %call, i64 4, !dbg !3120
  %4 = bitcast i8* %hard_regno to i32*, !dbg !3120
  store i32 %regno, i32* %4, align 4, !dbg !3121
  %call_freq3 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3122
  %5 = bitcast i8* %call_freq3 to i32*, !dbg !3122
  store i32 %call_freq, i32* %5, align 8, !dbg !3123
  %first_p = getelementptr inbounds i8, i8* %call, i64 24, !dbg !3124
  %6 = bitcast i8* %first_p to i32*, !dbg !3124
  store i32 0, i32* %6, align 8, !dbg !3125
  %next = getelementptr inbounds i8, i8* %call, i64 28, !dbg !3126
  %7 = bitcast i8* %next to i32*, !dbg !3126
  store i32 -1, i32* %7, align 4, !dbg !3127
  ret %struct.saved_hard_reg* %0, !dbg !3128
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !3129 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3138, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !3139, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32 53, metadata !3140, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3141, metadata !DIExpression()), !dbg !3142
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !3143
  %1 = load i64, i64* %0, align 8, !dbg !3143
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3144
  store i64 %1, i64* %2, align 8, !dbg !3144
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !3145
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !3146
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3147
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !3150
  br label %while.body, !dbg !3150

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !3151
  br i1 %tobool, label %if.then, label %if.end, !dbg !3152

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !3153
  br label %while.end, !dbg !3155

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !3156

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !3150, !llvm.loop !3157

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !3159

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !3159
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !3161
  %7 = load i32, i32* %indx9, align 8, !dbg !3161
  %cmp11 = icmp eq i32 %7, 0, !dbg !3162
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !3163

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !3164
  %8 = load i32, i32* %indx14, align 8, !dbg !3164
  %mul = shl i32 %8, 7, !dbg !3165
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3140, metadata !DIExpression()), !dbg !3142
  br label %if.end15, !dbg !3166

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 53, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !3140, metadata !DIExpression()), !dbg !3142
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3167
  store i32 0, i32* %word_no, align 8, !dbg !3168
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !3169
  %9 = load i64, i64* %arrayidx, align 8, !dbg !3169
  %rem20 = and i32 %start_bit.addr.0, 53, !dbg !3170
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3171
  %sh_prom = zext i32 %rem20 to i64, !dbg !3172
  %shr = lshr i64 %9, %sh_prom, !dbg !3172
  store i64 %shr, i64* %bits21, align 8, !dbg !3172
  %tobool23 = icmp eq i64 %shr, 0, !dbg !3173
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !3173
  %add = add nuw nsw i32 %start_bit.addr.0, %lnot.ext, !dbg !3174
  call void @llvm.dbg.value(metadata i32 %add, metadata !3140, metadata !DIExpression()), !dbg !3142
  store i32 %add, i32* %bit_no, align 4, !dbg !3175
  ret void, !dbg !3176
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3177 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3181, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3182, metadata !DIExpression()), !dbg !3186
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3187
  %0 = load i64, i64* %bits, align 8, !dbg !3187
  %tobool = icmp eq i64 %0, 0, !dbg !3188
  br i1 %tobool, label %if.end, label %next_bit, !dbg !3189

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !3190
  br label %next_bit, !dbg !3193

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !3183), !dbg !3194
  br label %while.cond, !dbg !3193

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !3195
  %and = and i64 %2, 1, !dbg !3196
  %tobool2 = icmp eq i64 %and, 0, !dbg !3197
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !3193

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !3198
  store i64 %shr, i64* %bits, align 8, !dbg !3198
  %3 = load i32, i32* %bit_no, align 4, !dbg !3200
  %add = add i32 %3, 1, !dbg !3200
  store i32 %add, i32* %bit_no, align 4, !dbg !3200
  %.pre = load i64, i64* %bits, align 8, !dbg !3195
  br label %while.cond, !dbg !3193, !llvm.loop !3201

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !3203
  %sub = add i32 %4, 63, !dbg !3204
  %div = and i32 %sub, -64, !dbg !3205
  store i32 %div, i32* %bit_no, align 4, !dbg !3206
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3207
  %5 = load i32, i32* %word_no, align 8, !dbg !3208
  %inc = add i32 %5, 1, !dbg !3208
  store i32 %inc, i32* %word_no, align 8, !dbg !3208
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3209
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3209
  br label %while.body6, !dbg !3210

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !3211

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !3212
  %cmp = icmp eq i32 %8, 2, !dbg !3213
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !3209
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !3211

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !3190
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !3190
  %10 = load i64, i64* %arrayidx, align 8, !dbg !3190
  store i64 %10, i64* %bits, align 8, !dbg !3214
  %tobool14 = icmp eq i64 %10, 0, !dbg !3215
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !3217

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !3218
  %add17 = add i32 %11, 64, !dbg !3218
  store i32 %add17, i32* %bit_no, align 4, !dbg !3218
  %12 = load i32, i32* %word_no, align 8, !dbg !3219
  %inc19 = add i32 %12, 1, !dbg !3219
  store i32 %inc19, i32* %word_no, align 8, !dbg !3219
  br label %while.cond7, !dbg !3211, !llvm.loop !3220

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !3209
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !3222
  %14 = load i64, i64* %13, align 8, !dbg !3222
  store i64 %14, i64* %6, align 8, !dbg !3223
  %tobool24 = icmp eq i64 %14, 0, !dbg !3224
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !3226

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !3226
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !3227
  %16 = load i32, i32* %indx, align 8, !dbg !3227
  %mul28 = shl i32 %16, 7, !dbg !3228
  store i32 %mul28, i32* %bit_no, align 4, !dbg !3229
  store i32 0, i32* %word_no, align 8, !dbg !3230
  br label %while.body6, !dbg !3210, !llvm.loop !3231

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !3233

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !3233

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !3186
  ret i8 %retval.0, !dbg !3233
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3234 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3238, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3239, metadata !DIExpression()), !dbg !3240
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3241
  %0 = load i64, i64* %bits, align 8, !dbg !3242
  %shr = lshr i64 %0, 1, !dbg !3242
  store i64 %shr, i64* %bits, align 8, !dbg !3242
  %1 = load i32, i32* %bit_no, align 4, !dbg !3243
  %add = add i32 %1, 1, !dbg !3243
  store i32 %add, i32* %bit_no, align 4, !dbg !3243
  ret void, !dbg !3244
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare dso_local void @spec_qsort(i8*, i64, i64, i32 (i8*, i8*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @saved_hard_reg_compare_func(i8* %v1p, i8* %v2p) #5 !dbg !3245 {
entry:
  call void @llvm.dbg.value(metadata i8* %v1p, metadata !3247, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i8* %v2p, metadata !3248, metadata !DIExpression()), !dbg !3253
  %0 = bitcast i8* %v1p to %struct.saved_hard_reg**, !dbg !3254
  %1 = load %struct.saved_hard_reg*, %struct.saved_hard_reg** %0, align 8, !dbg !3255
  call void @llvm.dbg.value(metadata %struct.saved_hard_reg* %1, metadata !3249, metadata !DIExpression()), !dbg !3253
  %2 = bitcast i8* %v2p to %struct.saved_hard_reg**, !dbg !3256
  %3 = load %struct.saved_hard_reg*, %struct.saved_hard_reg** %2, align 8, !dbg !3257
  call void @llvm.dbg.value(metadata %struct.saved_hard_reg* %3, metadata !3252, metadata !DIExpression()), !dbg !3253
  %4 = load i32, i32* @flag_omit_frame_pointer, align 4, !dbg !3258
  %tobool = icmp eq i32 %4, 0, !dbg !3258
  br i1 %tobool, label %if.else, label %if.then, !dbg !3260

if.then:                                          ; preds = %entry
  %call_freq = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %1, i64 0, i32 2, !dbg !3261
  %5 = load i32, i32* %call_freq, align 8, !dbg !3261
  %call_freq1 = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %3, i64 0, i32 2, !dbg !3264
  %6 = load i32, i32* %call_freq1, align 8, !dbg !3264
  %cmp = icmp eq i32 %5, %6, !dbg !3265
  br i1 %cmp, label %if.end15, label %if.then2, !dbg !3266

if.then2:                                         ; preds = %if.then
  %sub5 = sub nsw i32 %5, %6, !dbg !3267
  br label %cleanup, !dbg !3268

if.else:                                          ; preds = %entry
  %call_freq6 = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %3, i64 0, i32 2, !dbg !3269
  %7 = load i32, i32* %call_freq6, align 8, !dbg !3269
  %call_freq7 = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %1, i64 0, i32 2, !dbg !3271
  %8 = load i32, i32* %call_freq7, align 8, !dbg !3271
  %cmp9 = icmp eq i32 %7, %8, !dbg !3272
  br i1 %cmp9, label %if.end15, label %if.then10, !dbg !3273

if.then10:                                        ; preds = %if.else
  %sub13 = sub nsw i32 %7, %8, !dbg !3274
  br label %cleanup, !dbg !3275

if.end15:                                         ; preds = %if.then, %if.else
  %num = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %1, i64 0, i32 0, !dbg !3276
  %9 = load i32, i32* %num, align 8, !dbg !3276
  %num16 = getelementptr inbounds %struct.saved_hard_reg, %struct.saved_hard_reg* %3, i64 0, i32 0, !dbg !3277
  %10 = load i32, i32* %num16, align 8, !dbg !3277
  %sub17 = sub nsw i32 %9, %10, !dbg !3278
  br label %cleanup, !dbg !3279

cleanup:                                          ; preds = %if.end15, %if.then10, %if.then2
  %retval.0 = phi i32 [ %sub5, %if.then2 ], [ %sub17, %if.end15 ], [ %sub13, %if.then10 ], !dbg !3253
  ret i32 %retval.0, !dbg !3280
}

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @adjust_address_1(%struct.rtx_def*, i32, i64, i32, i32) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @assign_stack_local_1(i32, i64, i32, i8 zeroext) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @finish_saved_hard_regs() unnamed_addr #5 !dbg !3281 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !3283, metadata !DIExpression()), !dbg !3284
  br label %for.cond, !dbg !3285

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !3287
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3283, metadata !DIExpression()), !dbg !3284
  %0 = load i32, i32* @saved_regs_num, align 4, !dbg !3288
  %1 = sext i32 %0 to i64, !dbg !3290
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !3290
  br i1 %cmp, label %for.body, label %for.end, !dbg !3291

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [53 x %struct.saved_hard_reg*], [53 x %struct.saved_hard_reg*]* @all_saved_regs, i64 0, i64 %indvars.iv, !dbg !3292
  %2 = bitcast %struct.saved_hard_reg** %arrayidx to i8**, !dbg !3292
  %3 = load i8*, i8** %2, align 8, !dbg !3292
  tail call void @free(i8* %3) #6, !dbg !3293
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3294
  call void @llvm.dbg.value(metadata i32 undef, metadata !3283, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3284
  br label %for.cond, !dbg !3295, !llvm.loop !3296

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3298
}

declare dso_local void @set_mem_alias_set(%struct.rtx_def*, i32) local_unnamed_addr #2

declare dso_local i32 @get_frame_alias_set() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @save_call_clobbered_regs() local_unnamed_addr #5 !dbg !3299 {
entry:
  %save_mode = alloca [53 x i32], align 16
  %this_insn_sets = alloca i64, align 8
  %regno44 = alloca i32, align 4
  %hard_regs_to_save = alloca i64, align 8
  %rsi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.insn_chain* null, metadata !3303, metadata !DIExpression()), !dbg !3336
  %0 = bitcast [53 x i32]* %save_mode to i8*, !dbg !3337
  call void @llvm.lifetime.start.p0i8(i64 212, i8* nonnull %0) #8, !dbg !3337
  call void @llvm.dbg.declare(metadata [53 x i32]* %save_mode, metadata !3304, metadata !DIExpression()), !dbg !3338
  %1 = bitcast i64* %this_insn_sets to i8*, !dbg !3339
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3339
  store i64 0, i64* @hard_regs_saved, align 8, !dbg !3340
  store i32 0, i32* @n_regs_saved, align 4, !dbg !3341
  %2 = load %struct.insn_chain*, %struct.insn_chain** @reload_insn_chain, align 8, !dbg !3342
  call void @llvm.dbg.value(metadata %struct.insn_chain* %2, metadata !3301, metadata !DIExpression()), !dbg !3336
  %arraydecay = getelementptr inbounds [53 x i32], [53 x i32]* %save_mode, i64 0, i64 0, !dbg !3343
  %3 = bitcast i32* %regno44 to i8*, !dbg !3347
  %4 = bitcast i64* %hard_regs_to_save to i8*, !dbg !3347
  %5 = bitcast %struct.bitmap_iterator* %rsi to i8*, !dbg !3347
  br label %for.cond, !dbg !3348

for.cond:                                         ; preds = %for.inc372, %entry
  %last.0 = phi %struct.insn_chain* [ null, %entry ], [ %last.2, %for.inc372 ], !dbg !3336
  %chain.0 = phi %struct.insn_chain* [ %2, %entry ], [ %8, %for.inc372 ], !dbg !3349
  call void @llvm.dbg.value(metadata %struct.insn_chain* %chain.0, metadata !3301, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata %struct.insn_chain* %last.0, metadata !3303, metadata !DIExpression()), !dbg !3336
  %cmp = icmp eq %struct.insn_chain* %chain.0, null, !dbg !3350
  br i1 %cmp, label %for.end373, label %for.body, !dbg !3351

for.body:                                         ; preds = %for.cond
  %insn1 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain.0, i64 0, i32 3, !dbg !3352
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8, !dbg !3352
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !3307, metadata !DIExpression()), !dbg !3353
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 0, !dbg !3354
  %bf.load = load i32, i32* %7, align 8, !dbg !3354
  %bf.clear = and i32 %bf.load, 65535, !dbg !3354
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3311, metadata !DIExpression()), !dbg !3353
  %next2 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain.0, i64 0, i32 0, !dbg !3355
  %8 = load %struct.insn_chain*, %struct.insn_chain** %next2, align 8, !dbg !3355
  call void @llvm.dbg.value(metadata %struct.insn_chain* %8, metadata !3302, metadata !DIExpression()), !dbg !3336
  %is_caller_save_insn = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain.0, i64 0, i32 5, !dbg !3356
  %bf.load3 = load i8, i8* %is_caller_save_insn, align 4, !dbg !3356
  %bf.clear4 = and i8 %bf.load3, 8, !dbg !3356
  %tobool = icmp eq i8 %bf.clear4, 0, !dbg !3356
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3356

cond.true:                                        ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 787, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3356
  %bf.load5.pre = load i32, i32* %7, align 8, !dbg !3357
  br label %cond.end, !dbg !3356

cond.end:                                         ; preds = %for.body, %cond.true
  %bf.load224 = phi i32 [ %bf.load, %for.body ], [ %bf.load5.pre, %cond.true ], !dbg !3357
  %bf.clear6 = and i32 %bf.load224, 65535, !dbg !3357
  %cmp7 = icmp eq i32 %bf.clear6, 8, !dbg !3357
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false, !dbg !3357

lor.lhs.false:                                    ; preds = %cond.end
  %cmp10 = icmp eq i32 %bf.clear6, 7, !dbg !3357
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false11, !dbg !3357

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %cmp14 = icmp eq i32 %bf.clear6, 9, !dbg !3357
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false15, !dbg !3357

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %cmp18 = icmp eq i32 %bf.clear6, 10, !dbg !3357
  br i1 %cmp18, label %land.lhs.true, label %if.else223, !dbg !3357

land.lhs.true:                                    ; preds = %lor.lhs.false15, %lor.lhs.false11, %lor.lhs.false, %cond.end
  %cmp21 = icmp eq i32 %bf.clear6, 7, !dbg !3357
  br i1 %cmp21, label %if.else223, label %if.then, !dbg !3358

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, i32* @n_regs_saved, align 4, !dbg !3359
  %tobool22 = icmp eq i32 %9, 0, !dbg !3359
  br i1 %tobool22, label %if.end33, label %if.then23, !dbg !3360

if.then23:                                        ; preds = %if.then
  %cmp24 = icmp eq i32 %bf.clear, 9, !dbg !3361
  br i1 %cmp24, label %if.then25, label %if.else, !dbg !3363

if.then25:                                        ; preds = %if.then23
  %10 = load i64, i64* @hard_regs_saved, align 8, !dbg !3364
  br label %if.end, !dbg !3364

if.else:                                          ; preds = %if.then23
  store i64 0, i64* @referenced_regs, align 8, !dbg !3365
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, !dbg !3367
  %11 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3367
  %rt_rtx = bitcast %union.rtunion_def* %11 to %struct.rtx_def**, !dbg !3367
  call fastcc void @mark_referenced_regs(%struct.rtx_def** nonnull %rt_rtx, void (%struct.rtx_def**, i32, i32, i8*)* nonnull @mark_reg_as_referenced, i8* null) #7, !dbg !3368
  %12 = load i64, i64* @hard_regs_saved, align 8, !dbg !3369
  %13 = load i64, i64* @referenced_regs, align 8, !dbg !3369
  %and = and i64 %13, %12, !dbg !3369
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then25
  %storemerge8 = phi i64 [ %and, %if.else ], [ %10, %if.then25 ], !dbg !3370
  store i64 %storemerge8, i64* @referenced_regs, align 8, !dbg !3370
  call void @llvm.dbg.value(metadata i32 0, metadata !3312, metadata !DIExpression()), !dbg !3371
  br label %for.cond26, !dbg !3372

for.cond26:                                       ; preds = %for.inc, %if.end
  %regno.0 = phi i32 [ 0, %if.end ], [ %inc, %for.inc ], !dbg !3373
  call void @llvm.dbg.value(metadata i32 %regno.0, metadata !3312, metadata !DIExpression()), !dbg !3371
  %cmp27 = icmp slt i32 %regno.0, 53, !dbg !3374
  br i1 %cmp27, label %for.body28, label %if.end33.loopexit, !dbg !3375

for.body28:                                       ; preds = %for.cond26
  %14 = load i64, i64* @referenced_regs, align 8, !dbg !3376
  %sh_prom = zext i32 %regno.0 to i64, !dbg !3376
  %shl = shl i64 1, %sh_prom, !dbg !3376
  %and29 = and i64 %14, %shl, !dbg !3376
  %tobool30 = icmp eq i64 %and29, 0, !dbg !3376
  br i1 %tobool30, label %for.inc, label %if.then31, !dbg !3377

if.then31:                                        ; preds = %for.body28
  %call = call fastcc i32 @insert_restore(%struct.insn_chain* nonnull %chain.0, i32 1, i32 %regno.0, i32 4, i32* nonnull %arraydecay) #7, !dbg !3378
  %add = add nsw i32 %regno.0, %call, !dbg !3379
  call void @llvm.dbg.value(metadata i32 %add, metadata !3312, metadata !DIExpression()), !dbg !3371
  br label %for.inc, !dbg !3380

for.inc:                                          ; preds = %for.body28, %if.then31
  %regno.1 = phi i32 [ %add, %if.then31 ], [ %regno.0, %for.body28 ], !dbg !3373
  call void @llvm.dbg.value(metadata i32 %regno.1, metadata !3312, metadata !DIExpression()), !dbg !3371
  %inc = add nsw i32 %regno.1, 1, !dbg !3381
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3312, metadata !DIExpression()), !dbg !3371
  br label %for.cond26, !dbg !3382, !llvm.loop !3383

if.end33.loopexit:                                ; preds = %for.cond26
  br label %if.end33, !dbg !3385

if.end33:                                         ; preds = %if.end33.loopexit, %if.then
  %cmp34 = icmp eq i32 %bf.clear, 10, !dbg !3385
  br i1 %cmp34, label %land.lhs.true35, label %if.end237, !dbg !3386

land.lhs.true35:                                  ; preds = %if.end33
  %bf.load36 = load i32, i32* %7, align 8, !dbg !3387
  %bf.clear38 = and i32 %bf.load36, 16777216, !dbg !3387
  %tobool39 = icmp eq i32 %bf.clear38, 0, !dbg !3387
  br i1 %tobool39, label %land.lhs.true40, label %if.end237, !dbg !3388

land.lhs.true40:                                  ; preds = %land.lhs.true35
  %call41 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %6, i32 27, %struct.rtx_def* null) #6, !dbg !3389
  %tobool42 = icmp eq %struct.rtx_def* %call41, null, !dbg !3389
  br i1 %tobool42, label %if.then43, label %if.end237, !dbg !3390

if.then43:                                        ; preds = %land.lhs.true40
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #8, !dbg !3391
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !3392
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #8, !dbg !3393
  call void @llvm.dbg.value(metadata i64 0, metadata !3320, metadata !DIExpression()), !dbg !3347
  store i64 0, i64* %hard_regs_to_save, align 8, !dbg !3394
  %live_throughout = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain.0, i64 0, i32 6, !dbg !3394
  call void @llvm.dbg.value(metadata i64* %hard_regs_to_save, metadata !3320, metadata !DIExpression(DW_OP_deref)), !dbg !3347
  call void @reg_set_to_hard_reg_set(i64* nonnull %hard_regs_to_save, %struct.bitmap_head_def* nonnull %live_throughout) #6, !dbg !3394
  call void @llvm.dbg.value(metadata i32 0, metadata !3317, metadata !DIExpression()), !dbg !3347
  %15 = load i64, i64* %hard_regs_to_save, align 8, !dbg !3396
  br label %for.cond45, !dbg !3400

for.cond45:                                       ; preds = %for.inc61, %if.then43
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc61 ], [ 0, %if.then43 ], !dbg !3401
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3317, metadata !DIExpression()), !dbg !3347
  %exitcond = icmp eq i64 %indvars.iv, 53, !dbg !3402
  br i1 %exitcond, label %for.end63, label %for.body47, !dbg !3403

for.body47:                                       ; preds = %for.cond45
  call void @llvm.dbg.value(metadata i64 %15, metadata !3320, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3317, metadata !DIExpression()), !dbg !3347
  %shl49 = shl i64 1, %indvars.iv, !dbg !3404
  %and50 = and i64 %15, %shl49, !dbg !3404
  %tobool51 = icmp eq i64 %and50, 0, !dbg !3404
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3317, metadata !DIExpression()), !dbg !3347
  br i1 %tobool51, label %if.else57, label %if.then52, !dbg !3405

if.then52:                                        ; preds = %for.body47
  %arrayidx54 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i64 0, i64 %indvars.iv, i64 1, !dbg !3406
  %16 = load i32, i32* %arrayidx54, align 4, !dbg !3406
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3317, metadata !DIExpression()), !dbg !3347
  %arrayidx56 = getelementptr inbounds [53 x i32], [53 x i32]* %save_mode, i64 0, i64 %indvars.iv, !dbg !3407
  store i32 %16, i32* %arrayidx56, align 4, !dbg !3408
  br label %for.inc61, !dbg !3407

if.else57:                                        ; preds = %for.body47
  %arrayidx59 = getelementptr inbounds [53 x i32], [53 x i32]* %save_mode, i64 0, i64 %indvars.iv, !dbg !3409
  store i32 0, i32* %arrayidx59, align 4, !dbg !3410
  br label %for.inc61

for.inc61:                                        ; preds = %if.then52, %if.else57
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3317, metadata !DIExpression()), !dbg !3347
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3411
  call void @llvm.dbg.value(metadata i32 undef, metadata !3317, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3347
  br label %for.cond45, !dbg !3412, !llvm.loop !3413

for.end63:                                        ; preds = %for.cond45
  call void @llvm.dbg.value(metadata i32 53, metadata !3317, metadata !DIExpression()), !dbg !3347
  store i32 53, i32* %regno44, align 4, !dbg !3401
  call void @llvm.dbg.value(metadata i32* %regno44, metadata !3317, metadata !DIExpression(DW_OP_deref)), !dbg !3347
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %rsi, metadata !3321, metadata !DIExpression(DW_OP_deref)), !dbg !3347
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %rsi, %struct.bitmap_head_def* nonnull %live_throughout, i32 53, i32* nonnull %regno44) #7, !dbg !3415
  br label %for.cond65, !dbg !3415

for.cond65:                                       ; preds = %cleanup, %for.end63
  call void @llvm.dbg.value(metadata i32* %regno44, metadata !3317, metadata !DIExpression(DW_OP_deref)), !dbg !3347
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %rsi, metadata !3321, metadata !DIExpression(DW_OP_deref)), !dbg !3347
  %call66 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %rsi, i32* nonnull %regno44) #7, !dbg !3416
  %tobool67 = icmp eq i8 %call66, 0, !dbg !3415
  br i1 %tobool67, label %for.end181, label %for.body68, !dbg !3415

for.body68:                                       ; preds = %for.cond65
  %17 = load i16*, i16** @reg_renumber, align 8, !dbg !3417
  %18 = load i32, i32* %regno44, align 4, !dbg !3418
  call void @llvm.dbg.value(metadata i32 %18, metadata !3317, metadata !DIExpression()), !dbg !3347
  %idxprom69 = zext i32 %18 to i64, !dbg !3417
  %arrayidx70 = getelementptr inbounds i16, i16* %17, i64 %idxprom69, !dbg !3417
  %19 = load i16, i16* %arrayidx70, align 2, !dbg !3417
  %conv = sext i16 %19 to i32, !dbg !3417
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3322, metadata !DIExpression()), !dbg !3419
  %cmp71 = icmp slt i16 %19, 0, !dbg !3420
  br i1 %cmp71, label %cleanup, label %if.end74, !dbg !3422

if.end74:                                         ; preds = %for.body68
  %idxprom75 = sext i16 %19 to i64, !dbg !3423
  %20 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !3424
  call void @llvm.dbg.value(metadata i32 %18, metadata !3317, metadata !DIExpression()), !dbg !3347
  %arrayidx78 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %20, i64 %idxprom69, !dbg !3424
  %21 = bitcast %struct.rtx_def** %arrayidx78 to i32**, !dbg !3424
  %22 = load i32*, i32** %21, align 8, !dbg !3424
  %bf.load79 = load i32, i32* %22, align 8, !dbg !3424
  %bf.lshr80 = lshr i32 %bf.load79, 16, !dbg !3424
  %bf.clear81 = and i32 %bf.lshr80, 255, !dbg !3424
  %idxprom82 = zext i32 %bf.clear81 to i64, !dbg !3423
  %arrayidx83 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom75, i64 %idxprom82, !dbg !3423
  %23 = load i8, i8* %arrayidx83, align 1, !dbg !3423
  %conv84 = zext i8 %23 to i32, !dbg !3423
  call void @llvm.dbg.value(metadata i32 %conv84, metadata !3326, metadata !DIExpression()), !dbg !3419
  %conv.off = add nsw i32 %conv, -17, !dbg !3425
  %switch5 = icmp ult i32 %conv.off, 2, !dbg !3425
  br i1 %switch5, label %cond.end150, label %cond.false91, !dbg !3425

cond.false91:                                     ; preds = %if.end74
  call void @llvm.dbg.value(metadata i32 %18, metadata !3317, metadata !DIExpression()), !dbg !3347
  %bf.clear96 = and i32 %bf.load79, 16711680, !dbg !3425
  %cmp97 = icmp eq i32 %bf.clear96, 0, !dbg !3425
  %cmp100 = icmp ne i8 %23, 1, !dbg !3425
  %or.cond = and i1 %cmp97, %cmp100, !dbg !3425
  br i1 %or.cond, label %cond.end150, label %cond.false103, !dbg !3425

cond.false103:                                    ; preds = %cond.false91
  call void @llvm.dbg.value(metadata i32 %18, metadata !3317, metadata !DIExpression()), !dbg !3347
  br i1 %cmp97, label %cond.true111, label %cond.false113, !dbg !3425

cond.true111:                                     ; preds = %cond.false103
  %call112 = call i32 @choose_hard_reg_mode(i32 %conv, i32 %conv84, i8 zeroext 0) #6, !dbg !3425
  br label %cond.end150, !dbg !3425

cond.false113:                                    ; preds = %cond.false103
  call void @llvm.dbg.value(metadata i32 %18, metadata !3317, metadata !DIExpression()), !dbg !3347
  %cmp119 = icmp ne i32 %bf.clear96, 983040, !dbg !3425
  %24 = load i8, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @ix86_tune_features, i64 0, i64 9), align 1, !dbg !3425
  %tobool122 = icmp ne i8 %24, 0, !dbg !3425
  %or.cond1 = or i1 %cmp119, %tobool122, !dbg !3425
  br i1 %or.cond1, label %cond.false124, label %cond.end150, !dbg !3425

cond.false124:                                    ; preds = %cond.false113
  call void @llvm.dbg.value(metadata i32 %18, metadata !3317, metadata !DIExpression()), !dbg !3347
  %cmp130 = icmp eq i32 %bf.clear96, 917504, !dbg !3425
  %cmp133 = icmp sgt i16 %19, 3, !dbg !3425
  %or.cond2 = and i1 %cmp130, %cmp133, !dbg !3425
  br i1 %or.cond2, label %cond.end150, label %cond.false136, !dbg !3425

cond.false136:                                    ; preds = %cond.false124
  call void @llvm.dbg.value(metadata i32 %18, metadata !3317, metadata !DIExpression()), !dbg !3347
  br label %cond.end150, !dbg !3425

cond.end150:                                      ; preds = %if.end74, %cond.false91, %cond.false113, %cond.false124, %cond.false136, %cond.true111
  %cond151 = phi i32 [ 0, %if.end74 ], [ 0, %cond.false91 ], [ %call112, %cond.true111 ], [ 16, %cond.false113 ], [ %bf.clear81, %cond.false136 ], [ 16, %cond.false124 ], !dbg !3425
  call void @llvm.dbg.value(metadata i32 %cond151, metadata !3327, metadata !DIExpression()), !dbg !3419
  %idxprom152 = zext i32 %cond151 to i64, !dbg !3426
  %arrayidx153 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom152, !dbg !3426
  %25 = load i8, i8* %arrayidx153, align 1, !dbg !3426
  %arrayidx159 = getelementptr inbounds [53 x i32], [53 x i32]* %save_mode, i64 0, i64 %idxprom75, !dbg !3428
  %26 = load i32, i32* %arrayidx159, align 4, !dbg !3428
  %idxprom160 = zext i32 %26 to i64, !dbg !3428
  %arrayidx161 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom160, !dbg !3428
  %27 = load i8, i8* %arrayidx161, align 1, !dbg !3428
  %cmp167 = icmp ugt i8 %25, %27, !dbg !3429
  br i1 %cmp167, label %if.then169, label %if.end172, !dbg !3430

if.then169:                                       ; preds = %cond.end150
  store i32 %cond151, i32* %arrayidx159, align 4, !dbg !3431
  br label %if.end172, !dbg !3432

if.end172:                                        ; preds = %if.then169, %cond.end150
  %28 = zext i8 %23 to i64, !dbg !3433
  %29 = sext i16 %19 to i64, !dbg !3433
  br label %while.cond, !dbg !3433

while.cond:                                       ; preds = %while.body, %if.end172
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %while.body ], [ %28, %if.end172 ], !dbg !3419
  call void @llvm.dbg.value(metadata i64 %indvars.iv10, metadata !3326, metadata !DIExpression()), !dbg !3419
  %indvars.iv.next11 = add nsw i64 %indvars.iv10, -1, !dbg !3434
  call void @llvm.dbg.value(metadata i32 undef, metadata !3326, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3419
  %cmp173 = icmp sgt i64 %indvars.iv10, 0, !dbg !3435
  br i1 %cmp173, label %while.body, label %cleanup.loopexit, !dbg !3433

while.body:                                       ; preds = %while.cond
  %30 = add nsw i64 %indvars.iv.next11, %29, !dbg !3436
  %sh_prom176 = and i64 %30, 4294967295, !dbg !3436
  %shl177 = shl i64 1, %sh_prom176, !dbg !3436
  %31 = load i64, i64* %hard_regs_to_save, align 8, !dbg !3436
  call void @llvm.dbg.value(metadata i64 %31, metadata !3320, metadata !DIExpression()), !dbg !3347
  %or = or i64 %31, %shl177, !dbg !3436
  call void @llvm.dbg.value(metadata i64 %or, metadata !3320, metadata !DIExpression()), !dbg !3347
  store i64 %or, i64* %hard_regs_to_save, align 8, !dbg !3436
  br label %while.cond, !dbg !3433, !llvm.loop !3437

cleanup.loopexit:                                 ; preds = %while.cond
  br label %cleanup, !dbg !3416

cleanup:                                          ; preds = %cleanup.loopexit, %for.body68
  call void @llvm.dbg.value(metadata i32* %regno44, metadata !3317, metadata !DIExpression(DW_OP_deref)), !dbg !3347
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %rsi, metadata !3321, metadata !DIExpression(DW_OP_deref)), !dbg !3347
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %rsi, i32* nonnull %regno44) #7, !dbg !3416
  br label %for.cond65, !dbg !3416, !llvm.loop !3438

for.end181:                                       ; preds = %for.cond65
  call void @llvm.dbg.value(metadata i64 0, metadata !3306, metadata !DIExpression()), !dbg !3336
  store i64 0, i64* %this_insn_sets, align 8, !dbg !3440
  %u182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, !dbg !3441
  %32 = getelementptr inbounds %union.u, %union.u* %u182, i64 1, i32 0, i32 0, i64 0, !dbg !3441
  %rt_rtx185 = bitcast %union.rtunion_def* %32 to %struct.rtx_def**, !dbg !3441
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx185, align 8, !dbg !3441
  call void @note_stores(%struct.rtx_def* %33, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @mark_set_regs, i8* nonnull %1) #6, !dbg !3442
  %34 = load i64, i64* @call_fixed_reg_set, align 8, !dbg !3443
  %neg = xor i64 %34, -1, !dbg !3443
  %35 = load i64, i64* %hard_regs_to_save, align 8, !dbg !3443
  call void @llvm.dbg.value(metadata i64 %35, metadata !3320, metadata !DIExpression()), !dbg !3347
  %and186 = and i64 %35, %neg, !dbg !3443
  call void @llvm.dbg.value(metadata i64 %and186, metadata !3320, metadata !DIExpression()), !dbg !3347
  %36 = load i64, i64* %this_insn_sets, align 8, !dbg !3444
  call void @llvm.dbg.value(metadata i64 %36, metadata !3306, metadata !DIExpression()), !dbg !3336
  %neg187 = xor i64 %36, -1, !dbg !3444
  call void @llvm.dbg.value(metadata i64 %and186, metadata !3320, metadata !DIExpression()), !dbg !3347
  %and188 = and i64 %and186, %neg187, !dbg !3444
  call void @llvm.dbg.value(metadata i64 %and188, metadata !3320, metadata !DIExpression()), !dbg !3347
  %37 = load i64, i64* @hard_regs_saved, align 8, !dbg !3445
  %neg189 = xor i64 %37, -1, !dbg !3445
  call void @llvm.dbg.value(metadata i64 %and188, metadata !3320, metadata !DIExpression()), !dbg !3347
  %and190 = and i64 %and188, %neg189, !dbg !3445
  call void @llvm.dbg.value(metadata i64 %and190, metadata !3320, metadata !DIExpression()), !dbg !3347
  %38 = load i64, i64* @call_used_reg_set, align 8, !dbg !3446
  call void @llvm.dbg.value(metadata i64 %and190, metadata !3320, metadata !DIExpression()), !dbg !3347
  %and191 = and i64 %and190, %38, !dbg !3446
  call void @llvm.dbg.value(metadata i64 %and191, metadata !3320, metadata !DIExpression()), !dbg !3347
  store i64 %and191, i64* %hard_regs_to_save, align 8, !dbg !3446
  call void @llvm.dbg.value(metadata i32 0, metadata !3317, metadata !DIExpression()), !dbg !3347
  br label %for.cond192, !dbg !3447

for.cond192:                                      ; preds = %for.inc205, %for.end181
  %39 = phi i32 [ 0, %for.end181 ], [ %inc206, %for.inc205 ], !dbg !3449
  store i32 %39, i32* %regno44, align 4, !dbg !3449
  call void @llvm.dbg.value(metadata i32 %39, metadata !3317, metadata !DIExpression()), !dbg !3347
  %cmp193 = icmp ult i32 %39, 53, !dbg !3450
  br i1 %cmp193, label %for.body195, label %for.end207, !dbg !3452

for.body195:                                      ; preds = %for.cond192
  %40 = load i64, i64* %hard_regs_to_save, align 8, !dbg !3453
  call void @llvm.dbg.value(metadata i64 %40, metadata !3320, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i32 %39, metadata !3317, metadata !DIExpression()), !dbg !3347
  %sh_prom196 = zext i32 %39 to i64, !dbg !3453
  %shl197 = shl i64 1, %sh_prom196, !dbg !3453
  %and198 = and i64 %40, %shl197, !dbg !3453
  %tobool199 = icmp eq i64 %and198, 0, !dbg !3453
  br i1 %tobool199, label %for.inc205, label %if.then200, !dbg !3455

if.then200:                                       ; preds = %for.body195
  call void @llvm.dbg.value(metadata i32 %39, metadata !3317, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i64* %hard_regs_to_save, metadata !3320, metadata !DIExpression(DW_OP_deref)), !dbg !3347
  %call202 = call fastcc i32 @insert_save(%struct.insn_chain* nonnull %chain.0, i32 1, i32 %39, i64* nonnull %hard_regs_to_save, i32* nonnull %arraydecay) #7, !dbg !3456
  %41 = load i32, i32* %regno44, align 4, !dbg !3457
  call void @llvm.dbg.value(metadata i32 %41, metadata !3317, metadata !DIExpression()), !dbg !3347
  %add203 = add i32 %41, %call202, !dbg !3457
  call void @llvm.dbg.value(metadata i32 %add203, metadata !3317, metadata !DIExpression()), !dbg !3347
  store i32 %add203, i32* %regno44, align 4, !dbg !3457
  br label %for.inc205, !dbg !3458

for.inc205:                                       ; preds = %for.body195, %if.then200
  %42 = phi i32 [ %39, %for.body195 ], [ %add203, %if.then200 ], !dbg !3459
  call void @llvm.dbg.value(metadata i32 %42, metadata !3317, metadata !DIExpression()), !dbg !3347
  %inc206 = add i32 %42, 1, !dbg !3459
  call void @llvm.dbg.value(metadata i32 %inc206, metadata !3317, metadata !DIExpression()), !dbg !3347
  br label %for.cond192, !dbg !3460, !llvm.loop !3461

for.end207:                                       ; preds = %for.cond192
  store i32 0, i32* @n_regs_saved, align 4, !dbg !3463
  call void @llvm.dbg.value(metadata i32 0, metadata !3317, metadata !DIExpression()), !dbg !3347
  %43 = load i64, i64* @hard_regs_saved, align 8, !dbg !3464
  br label %for.cond208, !dbg !3468

for.cond208:                                      ; preds = %for.inc219, %for.end207
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.inc219 ], [ 0, %for.end207 ]
  %44 = phi i32 [ %45, %for.inc219 ], [ 0, %for.end207 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv13, metadata !3317, metadata !DIExpression()), !dbg !3347
  %exitcond15 = icmp eq i64 %indvars.iv13, 53, !dbg !3469
  br i1 %exitcond15, label %for.end221, label %for.body211, !dbg !3470

for.body211:                                      ; preds = %for.cond208
  call void @llvm.dbg.value(metadata i64 %indvars.iv13, metadata !3317, metadata !DIExpression()), !dbg !3347
  %shl213 = shl i64 1, %indvars.iv13, !dbg !3471
  %and214 = and i64 %43, %shl213, !dbg !3471
  %tobool215 = icmp eq i64 %and214, 0, !dbg !3471
  br i1 %tobool215, label %for.inc219, label %if.then216, !dbg !3472

if.then216:                                       ; preds = %for.body211
  %inc217 = add nsw i32 %44, 1, !dbg !3473
  store i32 %inc217, i32* @n_regs_saved, align 4, !dbg !3473
  br label %for.inc219, !dbg !3474

for.inc219:                                       ; preds = %for.body211, %if.then216
  %45 = phi i32 [ %44, %for.body211 ], [ %inc217, %if.then216 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv13, metadata !3317, metadata !DIExpression()), !dbg !3347
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !dbg !3475
  call void @llvm.dbg.value(metadata i32 undef, metadata !3317, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3347
  br label %for.cond208, !dbg !3476, !llvm.loop !3477

for.end221:                                       ; preds = %for.cond208
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #8, !dbg !3479
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !3479
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #8, !dbg !3479
  br label %if.end237, !dbg !3480

if.else223:                                       ; preds = %land.lhs.true, %lor.lhs.false15
  %cmp226 = icmp eq i32 %bf.clear6, 7, !dbg !3481
  %46 = load i32, i32* @n_regs_saved, align 4, !dbg !3483
  %tobool229 = icmp ne i32 %46, 0, !dbg !3483
  %or.cond3 = and i1 %cmp226, %tobool229, !dbg !3484
  br i1 %or.cond3, label %if.then230, label %if.end237, !dbg !3484

if.then230:                                       ; preds = %if.else223
  %u231 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, !dbg !3485
  %47 = getelementptr inbounds %union.u, %union.u* %u231, i64 1, i32 0, i32 0, i64 0, !dbg !3485
  %rt_rtx234 = bitcast %union.rtunion_def* %47 to %struct.rtx_def**, !dbg !3485
  call fastcc void @mark_referenced_regs(%struct.rtx_def** nonnull %rt_rtx234, void (%struct.rtx_def**, i32, i32, i8*)* nonnull @replace_reg_with_saved_mem, i8* nonnull %0) #7, !dbg !3486
  br label %if.end237, !dbg !3486

if.end237:                                        ; preds = %land.lhs.true40, %land.lhs.true35, %if.else223, %if.then230, %if.end33, %for.end221
  %last.1 = phi %struct.insn_chain* [ %chain.0, %for.end221 ], [ %chain.0, %land.lhs.true40 ], [ %chain.0, %land.lhs.true35 ], [ %chain.0, %if.end33 ], [ %last.0, %if.then230 ], [ %last.0, %if.else223 ], !dbg !3336
  call void @llvm.dbg.value(metadata %struct.insn_chain* %last.1, metadata !3303, metadata !DIExpression()), !dbg !3336
  %48 = load %struct.insn_chain*, %struct.insn_chain** %next2, align 8, !dbg !3487
  %cmp239 = icmp eq %struct.insn_chain* %48, null, !dbg !3488
  br i1 %cmp239, label %if.then246, label %lor.lhs.false241, !dbg !3489

lor.lhs.false241:                                 ; preds = %if.end237
  %block = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %48, i64 0, i32 4, !dbg !3490
  %49 = load i32, i32* %block, align 8, !dbg !3490
  %block243 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain.0, i64 0, i32 4, !dbg !3491
  %50 = load i32, i32* %block243, align 8, !dbg !3491
  %cmp244 = icmp eq i32 %49, %50, !dbg !3492
  br i1 %cmp244, label %for.inc372, label %if.then246, !dbg !3493

if.then246:                                       ; preds = %lor.lhs.false241, %if.end237
  %bf.load248 = load i32, i32* %7, align 8, !dbg !3494
  %bf.clear249 = and i32 %bf.load248, 65535, !dbg !3494
  %cmp250 = icmp eq i32 %bf.clear249, 7, !dbg !3494
  %tobool253 = icmp ne %struct.insn_chain* %last.1, null, !dbg !3495
  %or.cond4 = and i1 %cmp250, %tobool253, !dbg !3496
  br i1 %or.cond4, label %land.lhs.true254, label %if.end347, !dbg !3496

land.lhs.true254:                                 ; preds = %if.then246
  %block255 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %last.1, i64 0, i32 4, !dbg !3497
  %51 = load i32, i32* %block255, align 8, !dbg !3497
  %block256 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain.0, i64 0, i32 4, !dbg !3498
  %52 = load i32, i32* %block256, align 8, !dbg !3498
  %cmp257 = icmp eq i32 %51, %52, !dbg !3499
  br i1 %cmp257, label %if.then259, label %if.end347, !dbg !3500

if.then259:                                       ; preds = %land.lhs.true254
  %arrayidx262 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, i32 0, i32 1, !dbg !3501
  %rt_bb = bitcast %struct.object_block** %arrayidx262 to %struct.basic_block_def**, !dbg !3501
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3501
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %53, metadata !3335, metadata !DIExpression()), !dbg !3502
  %54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3503
  %rt_rtx266 = bitcast %union.rtunion_def* %54 to %struct.rtx_def**, !dbg !3503
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx266, align 8, !dbg !3503
  call void @llvm.dbg.value(metadata %struct.rtx_def* %55, metadata !3331, metadata !DIExpression()), !dbg !3502
  %insn268 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %last.1, i64 0, i32 3, !dbg !3505
  %56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3507
  %57 = bitcast %union.rtunion_def* %56 to i64*, !dbg !3507
  %rt_rtx312 = bitcast %union.rtunion_def* %56 to %struct.rtx_def**, !dbg !3507
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %53, i64 0, i32 7, !dbg !3511
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3511
  br label %for.cond267, !dbg !3513

for.cond267:                                      ; preds = %for.inc345, %if.then259
  %ins.0 = phi %struct.rtx_def* [ %55, %if.then259 ], [ %60, %for.inc345 ], !dbg !3514
  call void @llvm.dbg.value(metadata %struct.rtx_def* %ins.0, metadata !3331, metadata !DIExpression()), !dbg !3502
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn268, align 8, !dbg !3515
  %cmp269 = icmp eq %struct.rtx_def* %ins.0, %58, !dbg !3516
  br i1 %cmp269, label %if.end347.loopexit, label %for.body271, !dbg !3517

for.body271:                                      ; preds = %for.cond267
  %59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %ins.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3518
  %rt_rtx275 = bitcast %union.rtunion_def* %59 to %struct.rtx_def**, !dbg !3518
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx275, align 8, !dbg !3518
  call void @llvm.dbg.value(metadata %struct.rtx_def* %60, metadata !3334, metadata !DIExpression()), !dbg !3502
  %61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %ins.0, i64 0, i32 0, !dbg !3519
  %bf.load276 = load i32, i32* %61, align 8, !dbg !3519
  %bf.clear277 = and i32 %bf.load276, 65535, !dbg !3519
  %cmp278 = icmp eq i32 %bf.clear277, 13, !dbg !3519
  br i1 %cmp278, label %if.then280, label %if.else335, !dbg !3520

if.then280:                                       ; preds = %for.body271
  %62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %ins.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3521
  %63 = bitcast %union.rtunion_def* %62 to i64*, !dbg !3521
  %64 = load i64, i64* %63, align 8, !dbg !3521
  %65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3522
  %66 = bitcast %union.rtunion_def* %65 to i64*, !dbg !3523
  store i64 %64, i64* %66, align 8, !dbg !3523
  %rt_rtx292 = bitcast %union.rtunion_def* %62 to %struct.rtx_def**, !dbg !3524
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx292, align 8, !dbg !3524
  %68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3524
  %rt_rtx296 = bitcast %union.rtunion_def* %68 to %struct.rtx_def**, !dbg !3524
  store %struct.rtx_def* %60, %struct.rtx_def** %rt_rtx296, align 8, !dbg !3525
  store %struct.rtx_def* %6, %struct.rtx_def** %rt_rtx275, align 8, !dbg !3526
  %69 = load i64, i64* %57, align 8, !dbg !3527
  store i64 %69, i64* %63, align 8, !dbg !3528
  store %struct.rtx_def* %ins.0, %struct.rtx_def** %rt_rtx312, align 8, !dbg !3529
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx292, align 8, !dbg !3530
  %tobool317 = icmp eq %struct.rtx_def* %70, null, !dbg !3530
  br i1 %tobool317, label %if.end327, label %if.then318, !dbg !3532

if.then318:                                       ; preds = %if.then280
  %71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3533
  %rt_rtx326 = bitcast %union.rtunion_def* %71 to %struct.rtx_def**, !dbg !3533
  store %struct.rtx_def* %ins.0, %struct.rtx_def** %rt_rtx326, align 8, !dbg !3534
  br label %if.end327, !dbg !3533

if.end327:                                        ; preds = %if.then280, %if.then318
  %72 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3535
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %72, i64 0, i32 1, !dbg !3535
  %73 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3535
  %cmp328 = icmp eq %struct.rtx_def* %73, %6, !dbg !3536
  br i1 %cmp328, label %if.then330, label %for.inc345, !dbg !3537

if.then330:                                       ; preds = %if.end327
  store %struct.rtx_def* %ins.0, %struct.rtx_def** %end_, align 8, !dbg !3538
  br label %for.inc345, !dbg !3539

if.else335:                                       ; preds = %for.body271
  %cmp338 = icmp eq i32 %bf.clear277, 7, !dbg !3540
  br i1 %cmp338, label %for.inc345, label %cond.true340, !dbg !3540

cond.true340:                                     ; preds = %if.else335
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 916, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3540
  br label %for.inc345, !dbg !3540

for.inc345:                                       ; preds = %if.then330, %if.end327, %if.else335, %cond.true340
  call void @llvm.dbg.value(metadata %struct.rtx_def* %60, metadata !3331, metadata !DIExpression()), !dbg !3502
  br label %for.cond267, !dbg !3541, !llvm.loop !3542

if.end347.loopexit:                               ; preds = %for.cond267
  br label %if.end347, !dbg !3544

if.end347:                                        ; preds = %if.end347.loopexit, %land.lhs.true254, %if.then246
  call void @llvm.dbg.value(metadata %struct.insn_chain* null, metadata !3303, metadata !DIExpression()), !dbg !3336
  %74 = load i32, i32* @n_regs_saved, align 4, !dbg !3544
  %tobool348 = icmp eq i32 %74, 0, !dbg !3544
  br i1 %tobool348, label %for.inc372, label %for.cond350.preheader, !dbg !3546

for.cond350.preheader:                            ; preds = %if.end347
  br label %for.cond350, !dbg !3547

for.cond350:                                      ; preds = %for.cond350.preheader, %for.inc367
  %regno247.0 = phi i32 [ %inc368, %for.inc367 ], [ 0, %for.cond350.preheader ], !dbg !3549
  call void @llvm.dbg.value(metadata i32 %regno247.0, metadata !3328, metadata !DIExpression()), !dbg !3550
  %cmp351 = icmp slt i32 %regno247.0, 53, !dbg !3551
  br i1 %cmp351, label %for.body353, label %for.inc372.loopexit, !dbg !3547

for.body353:                                      ; preds = %for.cond350
  %75 = load i64, i64* @hard_regs_saved, align 8, !dbg !3553
  %sh_prom354 = zext i32 %regno247.0 to i64, !dbg !3553
  %shl355 = shl i64 1, %sh_prom354, !dbg !3553
  %and356 = and i64 %75, %shl355, !dbg !3553
  %tobool357 = icmp eq i64 %and356, 0, !dbg !3553
  br i1 %tobool357, label %for.inc367, label %if.then358, !dbg !3555

if.then358:                                       ; preds = %for.body353
  %bf.load359 = load i32, i32* %7, align 8, !dbg !3556
  %bf.clear360 = and i32 %bf.load359, 65535, !dbg !3556
  %cmp361 = icmp eq i32 %bf.clear360, 9, !dbg !3556
  %conv362 = zext i1 %cmp361 to i32, !dbg !3556
  %call364 = call fastcc i32 @insert_restore(%struct.insn_chain* nonnull %chain.0, i32 %conv362, i32 %regno247.0, i32 4, i32* nonnull %arraydecay) #7, !dbg !3557
  %add365 = add nsw i32 %regno247.0, %call364, !dbg !3558
  call void @llvm.dbg.value(metadata i32 %add365, metadata !3328, metadata !DIExpression()), !dbg !3550
  br label %for.inc367, !dbg !3559

for.inc367:                                       ; preds = %for.body353, %if.then358
  %regno247.1 = phi i32 [ %add365, %if.then358 ], [ %regno247.0, %for.body353 ], !dbg !3549
  call void @llvm.dbg.value(metadata i32 %regno247.1, metadata !3328, metadata !DIExpression()), !dbg !3550
  %inc368 = add nsw i32 %regno247.1, 1, !dbg !3560
  call void @llvm.dbg.value(metadata i32 %inc368, metadata !3328, metadata !DIExpression()), !dbg !3550
  br label %for.cond350, !dbg !3561, !llvm.loop !3562

for.inc372.loopexit:                              ; preds = %for.cond350
  br label %for.inc372, !dbg !3564

for.inc372:                                       ; preds = %for.inc372.loopexit, %if.end347, %lor.lhs.false241
  %last.2 = phi %struct.insn_chain* [ %last.1, %lor.lhs.false241 ], [ null, %if.end347 ], [ null, %for.inc372.loopexit ], !dbg !3336
  call void @llvm.dbg.value(metadata %struct.insn_chain* %last.2, metadata !3303, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata %struct.insn_chain* %8, metadata !3301, metadata !DIExpression()), !dbg !3336
  br label %for.cond, !dbg !3564, !llvm.loop !3565

for.end373:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3567
  call void @llvm.lifetime.end.p0i8(i64 212, i8* nonnull %0) #8, !dbg !3567
  ret void, !dbg !3567
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_referenced_regs(%struct.rtx_def** %loc, void (%struct.rtx_def**, i32, i32, i8*)* %mark, i8* %arg) unnamed_addr #5 !dbg !3568 {
entry:
  %tobool = icmp eq i8* %arg, null, !dbg !3588
  br i1 %tobool, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !3591

entry.entry.split_crit_edge:                      ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc, metadata !3577, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata void (%struct.rtx_def**, i32, i32, i8*)* %mark, metadata !3578, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i8* %arg, metadata !3579, metadata !DIExpression()), !dbg !3594
  %0 = bitcast %struct.rtx_def** %loc to i32**, !dbg !3595
  %1 = load i32*, i32** %0, align 8, !dbg !3595
  %bf.load = load i32, i32* %1, align 8, !dbg !3595
  %bf.clear = and i32 %bf.load, 65535, !dbg !3595
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3580, metadata !DIExpression()), !dbg !3594
  %trunc = trunc i32 %bf.load to i16, !dbg !3596
  %2 = bitcast i32* %1 to %struct.rtx_def*, !dbg !3596
  switch i16 %trunc, label %if.end67 [
    i16 23, label %if.then
    i16 25, label %if.then3
  ], !dbg !3596

entry.split.us:                                   ; preds = %entry
  br label %tailrecurse.us, !dbg !3591

tailrecurse.us:                                   ; preds = %tailrecurse.backedge.us, %entry.split.us
  %loc.tr.us = phi %struct.rtx_def** [ %loc, %entry.split.us ], [ %loc.tr.be.us, %tailrecurse.backedge.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.tr.us, metadata !3577, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata void (%struct.rtx_def**, i32, i32, i8*)* %mark, metadata !3578, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i8* %arg, metadata !3579, metadata !DIExpression()), !dbg !3594
  %3 = bitcast %struct.rtx_def** %loc.tr.us to i32**, !dbg !3595
  %4 = load i32*, i32** %3, align 8, !dbg !3595
  %bf.load.us = load i32, i32* %4, align 8, !dbg !3595
  %bf.clear.us = and i32 %bf.load.us, 65535, !dbg !3595
  call void @llvm.dbg.value(metadata i32 %bf.clear.us, metadata !3580, metadata !DIExpression()), !dbg !3594
  %trunc.us = trunc i32 %bf.load.us to i16, !dbg !3596
  %5 = bitcast i32* %4 to %struct.rtx_def*, !dbg !3596
  switch i16 %trunc.us, label %if.end67.us [
    i16 23, label %if.then.us
    i16 25, label %if.then3.us
  ], !dbg !3596

if.then.us:                                       ; preds = %tailrecurse.us
  %6 = getelementptr inbounds i32, i32* %4, i64 4, !dbg !3597
  %rt_rtx.us = bitcast i32* %6 to %struct.rtx_def**, !dbg !3597
  tail call fastcc void @mark_referenced_regs(%struct.rtx_def** nonnull %rt_rtx.us, void (%struct.rtx_def**, i32, i32, i8*)* %mark, i8* null) #7, !dbg !3599
  %.pre9 = load %struct.rtx_def*, %struct.rtx_def** %loc.tr.us, align 8, !dbg !3600
  br label %if.then3.us, !dbg !3603

if.then3.us:                                      ; preds = %if.then.us, %tailrecurse.us
  %7 = phi %struct.rtx_def* [ %.pre9, %if.then.us ], [ %5, %tailrecurse.us ], !dbg !3600
  %arrayidx6.us = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3600
  %rt_rtx7.us = bitcast %union.rtunion_def* %arrayidx6.us to %struct.rtx_def**, !dbg !3600
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx7.us, metadata !3577, metadata !DIExpression()), !dbg !3594
  %8 = bitcast %union.rtunion_def* %arrayidx6.us to i32**, !dbg !3604
  %9 = load i32*, i32** %8, align 8, !dbg !3604
  %bf.load8.us = load i32, i32* %9, align 8, !dbg !3604
  %bf.clear9.us = and i32 %bf.load8.us, 65535, !dbg !3604
  call void @llvm.dbg.value(metadata i32 %bf.clear9.us, metadata !3580, metadata !DIExpression()), !dbg !3594
  %trunc2.us = trunc i32 %bf.load8.us to i16, !dbg !3605
  switch i16 %trunc2.us, label %if.end67.us [
    i16 37, label %land.lhs.true.us
    i16 36, label %cleanup.cont.loopexit5.us-lcssa.us
    i16 46, label %cleanup.cont.loopexit5.us-lcssa.us
    i16 39, label %land.lhs.true18.us
  ], !dbg !3605

land.lhs.true.us:                                 ; preds = %if.then3.us
  %10 = bitcast i32* %9 to %struct.rtx_def*, !dbg !3605
  %call.us = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %10) #7, !dbg !3607
  %cmp11.us = icmp ult i32 %call.us, 53, !dbg !3608
  br i1 %cmp11.us, label %cleanup.cont.loopexit5.us-lcssa.us, label %switch.early.test.us, !dbg !3609

switch.early.test.us:                             ; preds = %land.lhs.true.us
  switch i16 37, label %if.end67.us [
    i16 46, label %cleanup.cont.loopexit5.us-lcssa.us
    i16 36, label %cleanup.cont.loopexit5.us-lcssa.us
    i16 39, label %switch.early.test.us.land.lhs.true18.us_crit_edge
  ], !dbg !3609

switch.early.test.us.land.lhs.true18.us_crit_edge: ; preds = %switch.early.test.us
  br label %land.lhs.true18.us, !dbg !3609

land.lhs.true18.us:                               ; preds = %switch.early.test.us.land.lhs.true18.us_crit_edge, %if.then3.us
  %arrayidx21.us = getelementptr inbounds i32, i32* %9, i64 2, !dbg !3610
  %11 = bitcast i32* %arrayidx21.us to i32**, !dbg !3610
  %12 = load i32*, i32** %11, align 8, !dbg !3610
  %bf.load23.us = load i32, i32* %12, align 8, !dbg !3610
  %bf.clear24.us = and i32 %bf.load23.us, 65535, !dbg !3610
  %cmp25.us = icmp eq i32 %bf.clear24.us, 37, !dbg !3610
  br i1 %cmp25.us, label %land.lhs.true26.us, label %if.end67.us, !dbg !3611

land.lhs.true26.us:                               ; preds = %land.lhs.true18.us
  %arrayidx29.us = getelementptr inbounds i32, i32* %9, i64 2, !dbg !3612
  %rt_rtx30.us = bitcast i32* %arrayidx29.us to %struct.rtx_def**, !dbg !3612
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx30.us, align 8, !dbg !3612
  %call31.us = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %13) #7, !dbg !3612
  %cmp32.us = icmp ult i32 %call31.us, 53, !dbg !3613
  br i1 %cmp32.us, label %land.lhs.true33.us, label %if.end67.us, !dbg !3614

land.lhs.true33.us:                               ; preds = %land.lhs.true26.us
  %14 = load i32*, i32** %8, align 8, !dbg !3615
  %bf.load34.us = load i32, i32* %14, align 8, !dbg !3615
  %bf.lshr.us = lshr i32 %bf.load34.us, 16, !dbg !3615
  %bf.clear35.us = and i32 %bf.lshr.us, 255, !dbg !3615
  %idxprom.us = zext i32 %bf.clear35.us to i64, !dbg !3615
  %arrayidx36.us = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom.us, !dbg !3615
  %15 = load i8, i8* %arrayidx36.us, align 1, !dbg !3615
  %arrayidx40.us = getelementptr inbounds i32, i32* %14, i64 2, !dbg !3616
  %16 = bitcast i32* %arrayidx40.us to i32**, !dbg !3616
  %17 = load i32*, i32** %16, align 8, !dbg !3616
  %bf.load42.us = load i32, i32* %17, align 8, !dbg !3616
  %bf.lshr43.us = lshr i32 %bf.load42.us, 16, !dbg !3616
  %bf.clear44.us = and i32 %bf.lshr43.us, 255, !dbg !3616
  %idxprom45.us = zext i32 %bf.clear44.us to i64, !dbg !3616
  %arrayidx46.us = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom45.us, !dbg !3616
  %18 = load i8, i8* %arrayidx46.us, align 1, !dbg !3616
  %cmp49.us = icmp ult i8 %15, %18, !dbg !3617
  br i1 %cmp49.us, label %lor.lhs.false51.us, label %cleanup.cont.loopexit5.us-lcssa.us, !dbg !3618

lor.lhs.false51.us:                               ; preds = %land.lhs.true33.us
  %cmp63.us = icmp ult i8 %18, 5, !dbg !3619
  br i1 %cmp63.us, label %cleanup.cont.loopexit5.us-lcssa.us, label %if.end67.us, !dbg !3620

if.end67.us:                                      ; preds = %lor.lhs.false51.us, %land.lhs.true26.us, %land.lhs.true18.us, %switch.early.test.us, %if.then3.us, %tailrecurse.us
  %code.0.us = phi i32 [ %bf.clear.us, %tailrecurse.us ], [ %bf.clear9.us, %if.then3.us ], [ %bf.clear9.us, %lor.lhs.false51.us ], [ %bf.clear9.us, %land.lhs.true26.us ], [ %bf.clear9.us, %land.lhs.true18.us ], [ %bf.clear9.us, %switch.early.test.us ], !dbg !3594
  %loc.addr.0.us = phi %struct.rtx_def** [ %loc.tr.us, %tailrecurse.us ], [ %rt_rtx7.us, %if.then3.us ], [ %rt_rtx7.us, %lor.lhs.false51.us ], [ %rt_rtx7.us, %land.lhs.true26.us ], [ %rt_rtx7.us, %land.lhs.true18.us ], [ %rt_rtx7.us, %switch.early.test.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.addr.0.us, metadata !3577, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 %code.0.us, metadata !3580, metadata !DIExpression()), !dbg !3594
  %trunc3.us = trunc i32 %code.0.us to i16, !dbg !3621
  switch i16 %trunc3.us, label %if.end80.us [
    i16 43, label %if.then73.us
    i16 39, label %if.then73.us
  ], !dbg !3621

if.then73.us:                                     ; preds = %if.end67.us, %if.end67.us
  %19 = load %struct.rtx_def*, %struct.rtx_def** %loc.addr.0.us, align 8, !dbg !3623
  %arrayidx76.us = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3623
  %rt_rtx77.us = bitcast %union.rtunion_def* %arrayidx76.us to %struct.rtx_def**, !dbg !3623
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx77.us, metadata !3577, metadata !DIExpression()), !dbg !3594
  %20 = bitcast %union.rtunion_def* %arrayidx76.us to i32**, !dbg !3625
  %21 = load i32*, i32** %20, align 8, !dbg !3625
  %bf.load78.us = load i32, i32* %21, align 8, !dbg !3625
  %bf.clear79.us = and i32 %bf.load78.us, 65535, !dbg !3625
  call void @llvm.dbg.value(metadata i32 %bf.clear79.us, metadata !3580, metadata !DIExpression()), !dbg !3594
  br label %if.end80.us, !dbg !3626

if.end80.us:                                      ; preds = %if.then73.us, %if.end67.us
  %code.1.us = phi i32 [ %bf.clear79.us, %if.then73.us ], [ %code.0.us, %if.end67.us ], !dbg !3594
  %loc.addr.1.us = phi %struct.rtx_def** [ %rt_rtx77.us, %if.then73.us ], [ %loc.addr.0.us, %if.end67.us ], !dbg !3594
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.addr.1.us, metadata !3577, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 %code.1.us, metadata !3580, metadata !DIExpression()), !dbg !3594
  %cmp81.us = icmp eq i32 %code.1.us, 37, !dbg !3627
  br i1 %cmp81.us, label %if.then83.us, label %if.end122.us-lcssa.us, !dbg !3628

if.then83.us:                                     ; preds = %if.end80.us
  %22 = load %struct.rtx_def*, %struct.rtx_def** %loc.addr.1.us, align 8, !dbg !3629
  %call84.us = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %22) #7, !dbg !3629
  call void @llvm.dbg.value(metadata i32 %call84.us, metadata !3584, metadata !DIExpression()), !dbg !3630
  %cmp85.us = icmp slt i32 %call84.us, 53, !dbg !3631
  br i1 %cmp85.us, label %cond.end.us, label %cond.false.us, !dbg !3632

cond.false.us:                                    ; preds = %if.then83.us
  %23 = load i16*, i16** @reg_renumber, align 8, !dbg !3633
  %idxprom87.us = sext i32 %call84.us to i64, !dbg !3633
  %arrayidx88.us = getelementptr inbounds i16, i16* %23, i64 %idxprom87.us, !dbg !3633
  %24 = load i16, i16* %arrayidx88.us, align 2, !dbg !3633
  %conv89.us = sext i16 %24 to i32, !dbg !3633
  br label %cond.end.us, !dbg !3632

cond.end.us:                                      ; preds = %cond.false.us, %if.then83.us
  %cond.us = phi i32 [ %conv89.us, %cond.false.us ], [ %call84.us, %if.then83.us ], !dbg !3632
  call void @llvm.dbg.value(metadata i32 %cond.us, metadata !3587, metadata !DIExpression()), !dbg !3630
  %cmp90.us = icmp sgt i32 %cond.us, -1, !dbg !3634
  br i1 %cmp90.us, label %if.then92.us-lcssa.us, label %if.else.us, !dbg !3635

if.else.us:                                       ; preds = %cond.end.us
  %25 = load %struct.rtx_def**, %struct.rtx_def*** @reg_equiv_mem, align 8, !dbg !3636
  %idxprom98.us = sext i32 %call84.us to i64, !dbg !3636
  %arrayidx99.us = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %25, i64 %idxprom98.us, !dbg !3636
  %26 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx99.us, align 8, !dbg !3636
  %cmp100.us = icmp eq %struct.rtx_def* %26, null, !dbg !3637
  br i1 %cmp100.us, label %if.else109.us, label %if.then102.us, !dbg !3638

if.then102.us:                                    ; preds = %if.else.us
  %arrayidx107.us = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3639
  %rt_rtx108.us = bitcast %union.rtunion_def* %arrayidx107.us to %struct.rtx_def**, !dbg !3639
  br label %tailrecurse.backedge.us, !dbg !3640

if.else109.us:                                    ; preds = %if.else.us
  %27 = load %struct.rtx_def**, %struct.rtx_def*** @reg_equiv_address, align 8, !dbg !3641
  %arrayidx111.us = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %27, i64 %idxprom98.us, !dbg !3641
  %28 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx111.us, align 8, !dbg !3641
  %cmp112.us = icmp eq %struct.rtx_def* %28, null, !dbg !3642
  br i1 %cmp112.us, label %cleanup.cont.loopexit5.us-lcssa.us, label %if.then114.us, !dbg !3643

if.then114.us:                                    ; preds = %if.else109.us
  br label %tailrecurse.backedge.us, !dbg !3591

tailrecurse.backedge.us:                          ; preds = %if.then114.us, %if.then102.us
  %loc.tr.be.us = phi %struct.rtx_def** [ %arrayidx111.us, %if.then114.us ], [ %rt_rtx108.us, %if.then102.us ]
  br label %tailrecurse.us, !dbg !3594

cleanup.cont.loopexit5.us-lcssa.us:               ; preds = %if.else109.us, %lor.lhs.false51.us, %land.lhs.true33.us, %switch.early.test.us, %switch.early.test.us, %land.lhs.true.us, %if.then3.us, %if.then3.us
  br label %cleanup.cont.loopexit5, !dbg !3644

if.end122.us-lcssa.us:                            ; preds = %if.end80.us
  %code.1.us.lcssa = phi i32 [ %code.1.us, %if.end80.us ], !dbg !3594
  %loc.addr.1.us.lcssa = phi %struct.rtx_def** [ %loc.addr.1.us, %if.end80.us ], !dbg !3594
  call void @llvm.dbg.value(metadata i32 %code.1.us.lcssa, metadata !3580, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.addr.1.us.lcssa, metadata !3577, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 %code.1.us.lcssa, metadata !3580, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.addr.1.us.lcssa, metadata !3577, metadata !DIExpression()), !dbg !3594
  br label %if.end122, !dbg !3645

if.then92.us-lcssa.us:                            ; preds = %cond.end.us
  %cond.us.lcssa = phi i32 [ %cond.us, %cond.end.us ], !dbg !3632
  %loc.addr.1.us.lcssa15 = phi %struct.rtx_def** [ %loc.addr.1.us, %cond.end.us ], !dbg !3594
  call void @llvm.dbg.value(metadata i32 %cond.us.lcssa, metadata !3587, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.addr.1.us.lcssa15, metadata !3577, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 %cond.us.lcssa, metadata !3587, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.addr.1.us.lcssa15, metadata !3577, metadata !DIExpression()), !dbg !3594
  br label %if.then92, !dbg !3646

if.then:                                          ; preds = %entry.entry.split_crit_edge
  %29 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !3597
  %rt_rtx = bitcast i32* %29 to %struct.rtx_def**, !dbg !3597
  tail call fastcc void @mark_referenced_regs(%struct.rtx_def** nonnull %rt_rtx, void (%struct.rtx_def**, i32, i32, i8*)* %mark, i8* nonnull %arg) #7, !dbg !3599
  %.pre = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !3600
  br label %if.then3, !dbg !3603

if.then3:                                         ; preds = %if.then, %entry.entry.split_crit_edge
  %30 = phi %struct.rtx_def* [ %.pre, %if.then ], [ %2, %entry.entry.split_crit_edge ], !dbg !3600
  %arrayidx6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3600
  %rt_rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**, !dbg !3600
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx7, metadata !3577, metadata !DIExpression()), !dbg !3594
  %31 = bitcast %union.rtunion_def* %arrayidx6 to i32**, !dbg !3604
  %32 = load i32*, i32** %31, align 8, !dbg !3604
  %bf.load8 = load i32, i32* %32, align 8, !dbg !3604
  %bf.clear9 = and i32 %bf.load8, 65535, !dbg !3604
  call void @llvm.dbg.value(metadata i32 %bf.clear9, metadata !3580, metadata !DIExpression()), !dbg !3594
  %trunc2 = trunc i32 %bf.load8 to i16, !dbg !3605
  switch i16 %trunc2, label %if.end67 [
    i16 37, label %land.lhs.true
    i16 36, label %cleanup.cont.loopexit5.us-lcssa
    i16 46, label %cleanup.cont.loopexit5.us-lcssa
    i16 39, label %land.lhs.true18
  ], !dbg !3605

land.lhs.true:                                    ; preds = %if.then3
  %33 = bitcast i32* %32 to %struct.rtx_def*, !dbg !3605
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %33) #7, !dbg !3607
  %cmp11 = icmp ult i32 %call, 53, !dbg !3608
  br i1 %cmp11, label %cleanup.cont.loopexit5.us-lcssa, label %switch.early.test, !dbg !3609

switch.early.test:                                ; preds = %land.lhs.true
  switch i16 37, label %if.end67 [
    i16 46, label %cleanup.cont.loopexit5.us-lcssa
    i16 36, label %cleanup.cont.loopexit5.us-lcssa
    i16 39, label %switch.early.test.land.lhs.true18_crit_edge
  ], !dbg !3609

switch.early.test.land.lhs.true18_crit_edge:      ; preds = %switch.early.test
  br label %land.lhs.true18, !dbg !3609

land.lhs.true18:                                  ; preds = %switch.early.test.land.lhs.true18_crit_edge, %if.then3
  %arrayidx21 = getelementptr inbounds i32, i32* %32, i64 2, !dbg !3610
  %34 = bitcast i32* %arrayidx21 to i32**, !dbg !3610
  %35 = load i32*, i32** %34, align 8, !dbg !3610
  %bf.load23 = load i32, i32* %35, align 8, !dbg !3610
  %bf.clear24 = and i32 %bf.load23, 65535, !dbg !3610
  %cmp25 = icmp eq i32 %bf.clear24, 37, !dbg !3610
  br i1 %cmp25, label %land.lhs.true26, label %if.end67, !dbg !3611

land.lhs.true26:                                  ; preds = %land.lhs.true18
  %arrayidx29 = getelementptr inbounds i32, i32* %32, i64 2, !dbg !3612
  %rt_rtx30 = bitcast i32* %arrayidx29 to %struct.rtx_def**, !dbg !3612
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx30, align 8, !dbg !3612
  %call31 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %36) #7, !dbg !3612
  %cmp32 = icmp ult i32 %call31, 53, !dbg !3613
  br i1 %cmp32, label %land.lhs.true33, label %if.end67, !dbg !3614

land.lhs.true33:                                  ; preds = %land.lhs.true26
  %37 = load i32*, i32** %31, align 8, !dbg !3615
  %bf.load34 = load i32, i32* %37, align 8, !dbg !3615
  %bf.lshr = lshr i32 %bf.load34, 16, !dbg !3615
  %bf.clear35 = and i32 %bf.lshr, 255, !dbg !3615
  %idxprom = zext i32 %bf.clear35 to i64, !dbg !3615
  %arrayidx36 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !3615
  %38 = load i8, i8* %arrayidx36, align 1, !dbg !3615
  %arrayidx40 = getelementptr inbounds i32, i32* %37, i64 2, !dbg !3616
  %39 = bitcast i32* %arrayidx40 to i32**, !dbg !3616
  %40 = load i32*, i32** %39, align 8, !dbg !3616
  %bf.load42 = load i32, i32* %40, align 8, !dbg !3616
  %bf.lshr43 = lshr i32 %bf.load42, 16, !dbg !3616
  %bf.clear44 = and i32 %bf.lshr43, 255, !dbg !3616
  %idxprom45 = zext i32 %bf.clear44 to i64, !dbg !3616
  %arrayidx46 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom45, !dbg !3616
  %41 = load i8, i8* %arrayidx46, align 1, !dbg !3616
  %cmp49 = icmp ult i8 %38, %41, !dbg !3617
  br i1 %cmp49, label %lor.lhs.false51, label %cleanup.cont.loopexit5.us-lcssa, !dbg !3618

lor.lhs.false51:                                  ; preds = %land.lhs.true33
  %cmp63 = icmp ult i8 %41, 5, !dbg !3619
  br i1 %cmp63, label %cleanup.cont.loopexit5.us-lcssa, label %if.end67, !dbg !3620

if.end67:                                         ; preds = %switch.early.test, %land.lhs.true18, %land.lhs.true26, %lor.lhs.false51, %if.then3, %entry.entry.split_crit_edge
  %code.0 = phi i32 [ %bf.clear, %entry.entry.split_crit_edge ], [ %bf.clear9, %if.then3 ], [ %bf.clear9, %lor.lhs.false51 ], [ %bf.clear9, %land.lhs.true26 ], [ %bf.clear9, %land.lhs.true18 ], [ %bf.clear9, %switch.early.test ], !dbg !3594
  %loc.addr.0 = phi %struct.rtx_def** [ %loc, %entry.entry.split_crit_edge ], [ %rt_rtx7, %if.then3 ], [ %rt_rtx7, %lor.lhs.false51 ], [ %rt_rtx7, %land.lhs.true26 ], [ %rt_rtx7, %land.lhs.true18 ], [ %rt_rtx7, %switch.early.test ]
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.addr.0, metadata !3577, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3580, metadata !DIExpression()), !dbg !3594
  %trunc3 = trunc i32 %code.0 to i16, !dbg !3621
  switch i16 %trunc3, label %if.end80 [
    i16 43, label %if.then73
    i16 39, label %if.then73
  ], !dbg !3621

if.then73:                                        ; preds = %if.end67, %if.end67
  %42 = load %struct.rtx_def*, %struct.rtx_def** %loc.addr.0, align 8, !dbg !3623
  %arrayidx76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3623
  %rt_rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**, !dbg !3623
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx77, metadata !3577, metadata !DIExpression()), !dbg !3594
  %43 = bitcast %union.rtunion_def* %arrayidx76 to i32**, !dbg !3625
  %44 = load i32*, i32** %43, align 8, !dbg !3625
  %bf.load78 = load i32, i32* %44, align 8, !dbg !3625
  %bf.clear79 = and i32 %bf.load78, 65535, !dbg !3625
  call void @llvm.dbg.value(metadata i32 %bf.clear79, metadata !3580, metadata !DIExpression()), !dbg !3594
  br label %if.end80, !dbg !3626

if.end80:                                         ; preds = %if.end67, %if.then73
  %code.1 = phi i32 [ %bf.clear79, %if.then73 ], [ %code.0, %if.end67 ], !dbg !3594
  %loc.addr.1 = phi %struct.rtx_def** [ %rt_rtx77, %if.then73 ], [ %loc.addr.0, %if.end67 ], !dbg !3594
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.addr.1, metadata !3577, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 %code.1, metadata !3580, metadata !DIExpression()), !dbg !3594
  %cmp81 = icmp eq i32 %code.1, 37, !dbg !3627
  br i1 %cmp81, label %if.then83, label %if.end122.us-lcssa, !dbg !3628

if.then83:                                        ; preds = %if.end80
  %45 = load %struct.rtx_def*, %struct.rtx_def** %loc.addr.1, align 8, !dbg !3629
  %call84 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %45) #7, !dbg !3629
  call void @llvm.dbg.value(metadata i32 %call84, metadata !3584, metadata !DIExpression()), !dbg !3630
  %cmp85 = icmp slt i32 %call84, 53, !dbg !3631
  br i1 %cmp85, label %cond.end, label %cond.false, !dbg !3632

cond.false:                                       ; preds = %if.then83
  %46 = load i16*, i16** @reg_renumber, align 8, !dbg !3633
  %idxprom87 = sext i32 %call84 to i64, !dbg !3633
  %arrayidx88 = getelementptr inbounds i16, i16* %46, i64 %idxprom87, !dbg !3633
  %47 = load i16, i16* %arrayidx88, align 2, !dbg !3633
  %conv89 = sext i16 %47 to i32, !dbg !3633
  br label %cond.end, !dbg !3632

cond.end:                                         ; preds = %if.then83, %cond.false
  %cond = phi i32 [ %conv89, %cond.false ], [ %call84, %if.then83 ], !dbg !3632
  call void @llvm.dbg.value(metadata i32 %cond, metadata !3587, metadata !DIExpression()), !dbg !3630
  %cmp90 = icmp sgt i32 %cond, -1, !dbg !3634
  br i1 %cmp90, label %if.then92.us-lcssa, label %if.else, !dbg !3635

if.then92.us-lcssa:                               ; preds = %cond.end
  br label %if.then92, !dbg !3646

if.then92:                                        ; preds = %if.then92.us-lcssa.us, %if.then92.us-lcssa
  %cond.lcssa = phi i32 [ %cond, %if.then92.us-lcssa ], [ %cond.us.lcssa, %if.then92.us-lcssa.us ], !dbg !3632
  %loc.addr.1.lcssa6 = phi %struct.rtx_def** [ %loc.addr.1, %if.then92.us-lcssa ], [ %loc.addr.1.us.lcssa15, %if.then92.us-lcssa.us ], !dbg !3594
  call void @llvm.dbg.value(metadata i32 %cond.lcssa, metadata !3587, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.addr.1.lcssa6, metadata !3577, metadata !DIExpression()), !dbg !3594
  %48 = bitcast %struct.rtx_def** %loc.addr.1.lcssa6 to i32**, !dbg !3646
  %49 = load i32*, i32** %48, align 8, !dbg !3646
  %bf.load93 = load i32, i32* %49, align 8, !dbg !3646
  %bf.lshr94 = lshr i32 %bf.load93, 16, !dbg !3646
  %bf.clear95 = and i32 %bf.lshr94, 255, !dbg !3646
  tail call void %mark(%struct.rtx_def** %loc.addr.1.lcssa6, i32 %bf.clear95, i32 %cond.lcssa, i8* %arg) #6, !dbg !3647
  br label %cleanup.cont, !dbg !3647

if.else:                                          ; preds = %cond.end
  br label %cleanup.cont.loopexit5.us-lcssa, !dbg !3648

if.end122.us-lcssa:                               ; preds = %if.end80
  br label %if.end122, !dbg !3645

if.end122:                                        ; preds = %if.end122.us-lcssa.us, %if.end122.us-lcssa
  %code.1.lcssa = phi i32 [ %code.1, %if.end122.us-lcssa ], [ %code.1.us.lcssa, %if.end122.us-lcssa.us ], !dbg !3594
  %loc.addr.1.lcssa = phi %struct.rtx_def** [ %loc.addr.1, %if.end122.us-lcssa ], [ %loc.addr.1.us.lcssa, %if.end122.us-lcssa.us ], !dbg !3594
  call void @llvm.dbg.value(metadata i32 %code.1.lcssa, metadata !3580, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.addr.1.lcssa, metadata !3577, metadata !DIExpression()), !dbg !3594
  %idxprom123 = sext i32 %code.1.lcssa to i64, !dbg !3645
  %arrayidx124 = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom123, !dbg !3645
  %50 = load i8*, i8** %arrayidx124, align 8, !dbg !3645
  call void @llvm.dbg.value(metadata i8* %50, metadata !3581, metadata !DIExpression()), !dbg !3594
  %arrayidx126 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom123, !dbg !3649
  %51 = load i8, i8* %arrayidx126, align 1, !dbg !3649
  call void @llvm.dbg.value(metadata i8 %51, metadata !3582, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3594
  %52 = zext i8 %51 to i64, !dbg !3651
  br label %for.cond, !dbg !3651

for.cond:                                         ; preds = %for.inc166, %if.end122
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.inc166 ], [ %52, %if.end122 ]
  %indvars.iv.next14 = add nsw i64 %indvars.iv13, -1, !dbg !3652
  call void @llvm.dbg.value(metadata i32 undef, metadata !3582, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3594
  %cmp128 = icmp sgt i64 %indvars.iv13, 0, !dbg !3653
  br i1 %cmp128, label %for.body, label %cleanup.cont.loopexit, !dbg !3655

for.body:                                         ; preds = %for.cond
  %arrayidx131 = getelementptr inbounds i8, i8* %50, i64 %indvars.iv.next14, !dbg !3656
  %53 = load i8, i8* %arrayidx131, align 1, !dbg !3656
  %cmp133 = icmp eq i8 %53, 101, !dbg !3659
  br i1 %cmp133, label %if.then135, label %if.else141, !dbg !3660

if.then135:                                       ; preds = %for.body
  %54 = load %struct.rtx_def*, %struct.rtx_def** %loc.addr.1.lcssa, align 8, !dbg !3661
  %u136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i64 0, i32 1, !dbg !3661
  %fld137 = bitcast %union.u* %u136 to [1 x %union.rtunion_def]*, !dbg !3661
  %arrayidx139 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld137, i64 0, i64 %indvars.iv.next14, !dbg !3661
  %rt_rtx140 = bitcast %union.rtunion_def* %arrayidx139 to %struct.rtx_def**, !dbg !3661
  tail call fastcc void @mark_referenced_regs(%struct.rtx_def** nonnull %rt_rtx140, void (%struct.rtx_def**, i32, i32, i8*)* %mark, i8* %arg) #7, !dbg !3662
  br label %for.inc166, !dbg !3662

if.else141:                                       ; preds = %for.body
  %cmp145 = icmp eq i8 %53, 69, !dbg !3663
  br i1 %cmp145, label %if.then147, label %for.inc166, !dbg !3665

if.then147:                                       ; preds = %if.else141
  %55 = load %struct.rtx_def*, %struct.rtx_def** %loc.addr.1.lcssa, align 8, !dbg !3666
  %u148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i64 0, i32 1, !dbg !3666
  %fld149 = bitcast %union.u* %u148 to [1 x %union.rtunion_def]*, !dbg !3666
  %arrayidx151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld149, i64 0, i64 %indvars.iv.next14, !dbg !3666
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx151 to %struct.rtvec_def**, !dbg !3666
  %56 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3666
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %56, i64 0, i32 0, !dbg !3666
  %57 = load i32, i32* %num_elem, align 8, !dbg !3666
  call void @llvm.dbg.value(metadata i32 %57, metadata !3583, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3594
  %58 = sext i32 %57 to i64, !dbg !3668
  br label %for.cond153, !dbg !3668

for.cond153:                                      ; preds = %for.body156, %if.then147
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body156 ], [ %58, %if.then147 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3669
  call void @llvm.dbg.value(metadata i32 undef, metadata !3583, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3594
  %cmp154 = icmp sgt i64 %indvars.iv, 0, !dbg !3670
  br i1 %cmp154, label %for.body156, label %for.inc166.loopexit, !dbg !3672

for.body156:                                      ; preds = %for.cond153
  %59 = load %struct.rtx_def*, %struct.rtx_def** %loc.addr.1.lcssa, align 8, !dbg !3673
  %u157 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i64 0, i32 1, !dbg !3673
  %fld158 = bitcast %union.u* %u157 to [1 x %union.rtunion_def]*, !dbg !3673
  %arrayidx160 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld158, i64 0, i64 %indvars.iv.next14, !dbg !3673
  %rt_rtvec161 = bitcast %union.rtunion_def* %arrayidx160 to %struct.rtvec_def**, !dbg !3673
  %60 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec161, align 8, !dbg !3673
  %arrayidx163 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %60, i64 0, i32 1, i64 %indvars.iv.next, !dbg !3673
  tail call fastcc void @mark_referenced_regs(%struct.rtx_def** nonnull %arrayidx163, void (%struct.rtx_def**, i32, i32, i8*)* %mark, i8* %arg) #7, !dbg !3674
  call void @llvm.dbg.value(metadata i32 undef, metadata !3583, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3594
  br label %for.cond153, !dbg !3675, !llvm.loop !3676

for.inc166.loopexit:                              ; preds = %for.cond153
  br label %for.inc166, !dbg !3678

for.inc166:                                       ; preds = %for.inc166.loopexit, %if.then135, %if.else141
  call void @llvm.dbg.value(metadata i32 undef, metadata !3582, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3594
  br label %for.cond, !dbg !3678, !llvm.loop !3679

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !3644

cleanup.cont.loopexit5.us-lcssa:                  ; preds = %if.else, %land.lhs.true33, %switch.early.test, %switch.early.test, %land.lhs.true, %if.then3, %if.then3, %lor.lhs.false51
  br label %cleanup.cont.loopexit5, !dbg !3644

cleanup.cont.loopexit5:                           ; preds = %cleanup.cont.loopexit5.us-lcssa.us, %cleanup.cont.loopexit5.us-lcssa
  br label %cleanup.cont, !dbg !3644

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit5, %cleanup.cont.loopexit, %if.then92
  ret void, !dbg !3644
}

; Function Attrs: nounwind uwtable
define internal void @mark_reg_as_referenced(%struct.rtx_def** %loc, i32 %mode, i32 %hardregno, i8* %arg) #5 !dbg !3681 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc, metadata !3683, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3684, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i32 %hardregno, metadata !3685, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i8* %arg, metadata !3686, metadata !DIExpression()), !dbg !3687
  tail call fastcc void @add_to_hard_reg_set(i64* nonnull @referenced_regs, i32 %mode, i32 %hardregno) #7, !dbg !3688
  ret void, !dbg !3689
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @insert_restore(%struct.insn_chain* %chain, i32 %before_p, i32 %regno, i32 %maxrestore, i32* %save_mode) unnamed_addr #5 !dbg !3690 {
entry:
  call void @llvm.dbg.value(metadata %struct.insn_chain* %chain, metadata !3694, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i32 %before_p, metadata !3695, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3696, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i32 4, metadata !3697, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i32* %save_mode, metadata !3698, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3701, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i32 0, metadata !3703, metadata !DIExpression()), !dbg !3711
  %idxprom = sext i32 %regno to i64, !dbg !3712
  %arrayidx1 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i64 0, i64 %idxprom, i64 1, !dbg !3712
  %0 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1, align 8, !dbg !3712
  %tobool = icmp eq %struct.rtx_def* %0, null, !dbg !3712
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3712

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3712
  br label %cond.end, !dbg !3712

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata i32 4, metadata !3699, metadata !DIExpression()), !dbg !3711
  %1 = load i64, i64* @hard_regs_saved, align 8, !dbg !3713
  br label %for.cond, !dbg !3717

for.cond:                                         ; preds = %for.inc17, %cond.end
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.inc17 ], [ 4, %cond.end ], !dbg !3718
  %numregs.0 = phi i32 [ %numregs.1, %for.inc17 ], [ 0, %cond.end ], !dbg !3719
  call void @llvm.dbg.value(metadata i32 %numregs.0, metadata !3703, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !3699, metadata !DIExpression()), !dbg !3711
  %cmp = icmp eq i64 %indvars.iv5, 0, !dbg !3720
  br i1 %cmp, label %for.end18, label %for.body, !dbg !3721

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 1, metadata !3710, metadata !DIExpression()), !dbg !3722
  %arrayidx5 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i64 0, i64 %idxprom, i64 %indvars.iv5, !dbg !3723
  %2 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5, align 8, !dbg !3723
  %cmp6 = icmp eq %struct.rtx_def* %2, null, !dbg !3725
  br i1 %cmp6, label %cleanup, label %for.cond7.preheader, !dbg !3726

for.cond7.preheader:                              ; preds = %for.body
  br label %for.cond7, !dbg !3727

for.cond7:                                        ; preds = %for.cond7.preheader, %for.inc
  %indvars.iv1 = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next2, %for.inc ], !dbg !3728
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !3706, metadata !DIExpression()), !dbg !3722
  %exitcond4 = icmp eq i64 %indvars.iv1, %indvars.iv5, !dbg !3729
  br i1 %exitcond4, label %for.end, label %for.body9, !dbg !3727

for.body9:                                        ; preds = %for.cond7
  %3 = trunc i64 %indvars.iv1 to i32, !dbg !3730
  %add = add nsw i32 %3, %regno, !dbg !3730
  %sh_prom = zext i32 %add to i64, !dbg !3730
  %shl = shl i64 1, %sh_prom, !dbg !3730
  %and = and i64 %1, %shl, !dbg !3730
  %tobool10 = icmp eq i64 %and, 0, !dbg !3730
  br i1 %tobool10, label %for.end, label %for.inc, !dbg !3731

for.inc:                                          ; preds = %for.body9
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !3732
  call void @llvm.dbg.value(metadata i32 undef, metadata !3706, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3722
  br label %for.cond7, !dbg !3733, !llvm.loop !3734

for.end:                                          ; preds = %for.cond7, %for.body9
  %ok.0 = phi i1 [ true, %for.cond7 ], [ false, %for.body9 ]
  %4 = trunc i64 %indvars.iv5 to i32, !dbg !3722
  %i.0.numregs.0 = select i1 %ok.0, i32 %4, i32 %numregs.0, !dbg !3722
  %. = select i1 %ok.0, i32 2, i32 4, !dbg !3722
  br label %cleanup, !dbg !3722

cleanup:                                          ; preds = %for.end, %for.body
  %numregs.1 = phi i32 [ %numregs.0, %for.body ], [ %i.0.numregs.0, %for.end ], !dbg !3711
  %cleanup.dest.slot.0 = phi i32 [ 4, %for.body ], [ %., %for.end ]
  call void @llvm.dbg.value(metadata i32 %numregs.1, metadata !3703, metadata !DIExpression()), !dbg !3711
  %switch = icmp eq i32 %cleanup.dest.slot.0, 4
  br i1 %switch, label %for.inc17, label %for.end18

for.inc17:                                        ; preds = %cleanup
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, -1, !dbg !3736
  call void @llvm.dbg.value(metadata i32 undef, metadata !3699, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3711
  br label %for.cond, !dbg !3737, !llvm.loop !3738

for.end18:                                        ; preds = %for.cond, %cleanup
  %indvars.iv5.lcssa = phi i64 [ %indvars.iv5, %for.cond ], [ %indvars.iv5, %cleanup ], !dbg !3718
  %numregs.2 = phi i32 [ %numregs.1, %cleanup ], [ %numregs.0, %for.cond ], !dbg !3719
  call void @llvm.dbg.value(metadata i64 %indvars.iv5.lcssa, metadata !3699, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i64 %indvars.iv5.lcssa, metadata !3699, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i32 %numregs.2, metadata !3703, metadata !DIExpression()), !dbg !3711
  %idxprom21 = zext i32 %numregs.2 to i64, !dbg !3740
  %arrayidx22 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i64 0, i64 %idxprom, i64 %idxprom21, !dbg !3740
  %5 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx22, align 8, !dbg !3740
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !3705, metadata !DIExpression()), !dbg !3711
  %arrayidx24 = getelementptr inbounds i32, i32* %save_mode, i64 %idxprom, !dbg !3741
  %6 = load i32, i32* %arrayidx24, align 4, !dbg !3741
  %cmp25 = icmp eq i32 %6, 0, !dbg !3743
  br i1 %cmp25, label %if.else, label %land.lhs.true, !dbg !3744

land.lhs.true:                                    ; preds = %for.end18
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 0, !dbg !3745
  %bf.load = load i32, i32* %7, align 8, !dbg !3745
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3745
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3745
  %cmp28 = icmp eq i32 %6, %bf.clear, !dbg !3746
  br i1 %cmp28, label %if.else, label %land.lhs.true29, !dbg !3747

land.lhs.true29:                                  ; preds = %land.lhs.true
  %idxprom34 = zext i32 %6 to i64, !dbg !3748
  %arrayidx35 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom34, !dbg !3748
  %8 = load i8, i8* %arrayidx35, align 1, !dbg !3748
  %conv = zext i8 %8 to i32, !dbg !3749
  %cmp36 = icmp eq i32 %numregs.2, %conv, !dbg !3750
  br i1 %cmp36, label %land.lhs.true38, label %if.else, !dbg !3751

land.lhs.true38:                                  ; preds = %land.lhs.true29
  %call = tail call fastcc i32 @reg_save_code(i32 %regno, i32 %6) #7, !dbg !3752
  %cmp41 = icmp sgt i32 %call, -1, !dbg !3753
  br i1 %cmp41, label %if.then43, label %if.else, !dbg !3754

if.then43:                                        ; preds = %land.lhs.true38
  %9 = load i32, i32* %arrayidx24, align 4, !dbg !3755
  %call46 = tail call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %5, i32 %9, i64 0, i32 1, i32 1) #6, !dbg !3755
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call46, metadata !3705, metadata !DIExpression()), !dbg !3711
  br label %if.end48, !dbg !3756

if.else:                                          ; preds = %land.lhs.true, %for.end18, %land.lhs.true38, %land.lhs.true29
  %call47 = tail call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %5) #6, !dbg !3757
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call47, metadata !3705, metadata !DIExpression()), !dbg !3711
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then43
  %mem.0 = phi %struct.rtx_def* [ %call46, %if.then43 ], [ %call47, %if.else ], !dbg !3758
  call void @llvm.dbg.value(metadata %struct.rtx_def* %mem.0, metadata !3705, metadata !DIExpression()), !dbg !3711
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %mem.0, i64 0, i32 0, !dbg !3759
  %bf.load49 = load i32, i32* %10, align 8, !dbg !3759
  %bf.lshr50 = lshr i32 %bf.load49, 16, !dbg !3759
  %bf.clear51 = and i32 %bf.lshr50, 255, !dbg !3759
  %call52 = tail call i32 @get_mode_alignment(i32 %bf.clear51) #6, !dbg !3759
  %cmp53 = icmp ugt i32 %call52, -2147483648, !dbg !3759
  br i1 %cmp53, label %cond.end61, label %cond.false56, !dbg !3759

cond.false56:                                     ; preds = %if.end48
  %bf.load57 = load i32, i32* %10, align 8, !dbg !3759
  %bf.lshr58 = lshr i32 %bf.load57, 16, !dbg !3759
  %bf.clear59 = and i32 %bf.lshr58, 255, !dbg !3759
  %call60 = tail call i32 @get_mode_alignment(i32 %bf.clear59) #6, !dbg !3759
  br label %cond.end61, !dbg !3759

cond.end61:                                       ; preds = %if.end48, %cond.false56
  %cond62 = phi i32 [ %call60, %cond.false56 ], [ -2147483648, %if.end48 ], !dbg !3759
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %mem.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3759
  %rt_mem = bitcast %union.rtunion_def* %11 to %struct.mem_attrs**, !dbg !3759
  %12 = load %struct.mem_attrs*, %struct.mem_attrs** %rt_mem, align 8, !dbg !3759
  %cmp64 = icmp eq %struct.mem_attrs* %12, null, !dbg !3759
  br i1 %cmp64, label %cond.end72, label %cond.true66, !dbg !3759

cond.true66:                                      ; preds = %cond.end61
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %12, i64 0, i32 4, !dbg !3759
  %13 = load i32, i32* %align, align 4, !dbg !3759
  br label %cond.end72, !dbg !3759

cond.end72:                                       ; preds = %cond.end61, %cond.true66
  %cond73 = phi i32 [ %13, %cond.true66 ], [ 8, %cond.end61 ], !dbg !3759
  %cmp74 = icmp ugt i32 %cond62, %cond73, !dbg !3759
  br i1 %cmp74, label %cond.true76, label %cond.end78, !dbg !3759

cond.true76:                                      ; preds = %cond.end72
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1227, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3759
  br label %cond.end78, !dbg !3759

cond.end78:                                       ; preds = %cond.end72, %cond.true76
  %bf.load80 = load i32, i32* %10, align 8, !dbg !3760
  %bf.lshr81 = lshr i32 %bf.load80, 16, !dbg !3760
  %bf.clear82 = and i32 %bf.lshr81, 255, !dbg !3760
  %call83 = tail call %struct.rtx_def* @gen_rtx_REG(i32 %bf.clear82, i32 %regno) #6, !dbg !3760
  %call84 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 23, i32 0, %struct.rtx_def* %call83, %struct.rtx_def* %mem.0) #6, !dbg !3760
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call84, metadata !3701, metadata !DIExpression()), !dbg !3711
  %bf.load85 = load i32, i32* %10, align 8, !dbg !3761
  %bf.lshr86 = lshr i32 %bf.load85, 16, !dbg !3761
  %bf.clear87 = and i32 %bf.lshr86, 255, !dbg !3761
  %call88 = tail call fastcc i32 @reg_restore_code(i32 %regno, i32 %bf.clear87) #7, !dbg !3762
  call void @llvm.dbg.value(metadata i32 %call88, metadata !3702, metadata !DIExpression()), !dbg !3711
  %call89 = tail call fastcc %struct.insn_chain* @insert_one_insn(%struct.insn_chain* %chain, i32 %before_p, i32 %call88, %struct.rtx_def* %call84) #7, !dbg !3763
  call void @llvm.dbg.value(metadata %struct.insn_chain* %call89, metadata !3704, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i32 0, metadata !3700, metadata !DIExpression()), !dbg !3711
  %dead_or_set = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %call89, i64 0, i32 7, !dbg !3764
  %wide.trip.count = and i64 %indvars.iv5.lcssa, 4294967295, !dbg !3768
  br label %for.cond90, !dbg !3769

for.cond90:                                       ; preds = %for.body93, %cond.end78
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body93 ], [ 0, %cond.end78 ], !dbg !3770
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3700, metadata !DIExpression()), !dbg !3711
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !3768
  br i1 %exitcond, label %for.end103, label %for.body93, !dbg !3771

for.body93:                                       ; preds = %for.cond90
  %14 = trunc i64 %indvars.iv to i32, !dbg !3772
  %add94 = add nsw i32 %14, %regno, !dbg !3772
  %sh_prom95 = zext i32 %add94 to i64, !dbg !3772
  %shl96 = shl i64 1, %sh_prom95, !dbg !3772
  %neg = xor i64 %shl96, -1, !dbg !3772
  %15 = load i64, i64* @hard_regs_saved, align 8, !dbg !3772
  %and97 = and i64 %15, %neg, !dbg !3772
  store i64 %and97, i64* @hard_regs_saved, align 8, !dbg !3772
  %call99 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* nonnull %dead_or_set, i32 %add94) #6, !dbg !3773
  %16 = load i32, i32* @n_regs_saved, align 4, !dbg !3774
  %dec100 = add nsw i32 %16, -1, !dbg !3774
  store i32 %dec100, i32* @n_regs_saved, align 4, !dbg !3774
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3775
  call void @llvm.dbg.value(metadata i32 undef, metadata !3700, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3711
  br label %for.cond90, !dbg !3776, !llvm.loop !3777

for.end103:                                       ; preds = %for.cond90
  %sub = add i32 %numregs.2, -1, !dbg !3779
  ret i32 %sub, !dbg !3780
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @insert_save(%struct.insn_chain* %chain, i32 %before_p, i32 %regno, i64* %to_save, i32* %save_mode) unnamed_addr #5 !dbg !3781 {
entry:
  call void @llvm.dbg.value(metadata %struct.insn_chain* %chain, metadata !3785, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i32 1, metadata !3786, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3787, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i64* %to_save, metadata !3788, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i32* %save_mode, metadata !3789, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3792, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i32 0, metadata !3794, metadata !DIExpression()), !dbg !3802
  %idxprom = sext i32 %regno to i64, !dbg !3803
  %arrayidx1 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i64 0, i64 %idxprom, i64 1, !dbg !3803
  %0 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1, align 8, !dbg !3803
  %tobool = icmp eq %struct.rtx_def* %0, null, !dbg !3803
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3803

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1267, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3803
  br label %cond.end, !dbg !3803

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata i32 4, metadata !3790, metadata !DIExpression()), !dbg !3802
  br label %for.cond, !dbg !3804

for.cond:                                         ; preds = %for.inc17, %cond.end
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.inc17 ], [ 4, %cond.end ], !dbg !3805
  %numregs.0 = phi i32 [ %numregs.1, %for.inc17 ], [ 0, %cond.end ], !dbg !3806
  call void @llvm.dbg.value(metadata i32 %numregs.0, metadata !3794, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !3790, metadata !DIExpression()), !dbg !3802
  %cmp = icmp eq i64 %indvars.iv5, 0, !dbg !3807
  br i1 %cmp, label %for.end18, label %for.body, !dbg !3808

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 1, metadata !3801, metadata !DIExpression()), !dbg !3809
  %arrayidx5 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i64 0, i64 %idxprom, i64 %indvars.iv5, !dbg !3810
  %1 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5, align 8, !dbg !3810
  %cmp6 = icmp eq %struct.rtx_def* %1, null, !dbg !3812
  br i1 %cmp6, label %cleanup, label %for.cond7.preheader, !dbg !3813

for.cond7.preheader:                              ; preds = %for.body
  br label %for.cond7, !dbg !3814

for.cond7:                                        ; preds = %for.cond7.preheader, %for.inc
  %indvars.iv1 = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next2, %for.inc ], !dbg !3816
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !3797, metadata !DIExpression()), !dbg !3809
  %exitcond4 = icmp eq i64 %indvars.iv1, %indvars.iv5, !dbg !3817
  br i1 %exitcond4, label %for.end, label %for.body9, !dbg !3814

for.body9:                                        ; preds = %for.cond7
  %2 = load i64, i64* %to_save, align 8, !dbg !3819
  %3 = trunc i64 %indvars.iv1 to i32, !dbg !3819
  %add = add nsw i32 %3, %regno, !dbg !3819
  %sh_prom = zext i32 %add to i64, !dbg !3819
  %shl = shl i64 1, %sh_prom, !dbg !3819
  %and = and i64 %2, %shl, !dbg !3819
  %tobool10 = icmp eq i64 %and, 0, !dbg !3819
  br i1 %tobool10, label %for.end, label %for.inc, !dbg !3821

for.inc:                                          ; preds = %for.body9
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !3822
  call void @llvm.dbg.value(metadata i32 undef, metadata !3797, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3809
  br label %for.cond7, !dbg !3823, !llvm.loop !3824

for.end:                                          ; preds = %for.cond7, %for.body9
  %ok.0 = phi i1 [ true, %for.cond7 ], [ false, %for.body9 ]
  %4 = trunc i64 %indvars.iv5 to i32, !dbg !3809
  %i.0.numregs.0 = select i1 %ok.0, i32 %4, i32 %numregs.0, !dbg !3809
  %. = select i1 %ok.0, i32 2, i32 4, !dbg !3809
  br label %cleanup, !dbg !3809

cleanup:                                          ; preds = %for.end, %for.body
  %numregs.1 = phi i32 [ %numregs.0, %for.body ], [ %i.0.numregs.0, %for.end ], !dbg !3802
  %cleanup.dest.slot.0 = phi i32 [ 4, %for.body ], [ %., %for.end ]
  call void @llvm.dbg.value(metadata i32 %numregs.1, metadata !3794, metadata !DIExpression()), !dbg !3802
  %switch = icmp eq i32 %cleanup.dest.slot.0, 4
  br i1 %switch, label %for.inc17, label %for.end18

for.inc17:                                        ; preds = %cleanup
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, -1, !dbg !3826
  call void @llvm.dbg.value(metadata i32 undef, metadata !3790, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3802
  br label %for.cond, !dbg !3827, !llvm.loop !3828

for.end18:                                        ; preds = %for.cond, %cleanup
  %numregs.2 = phi i32 [ %numregs.1, %cleanup ], [ %numregs.0, %for.cond ], !dbg !3806
  call void @llvm.dbg.value(metadata i32 %numregs.2, metadata !3794, metadata !DIExpression()), !dbg !3802
  %idxprom21 = zext i32 %numregs.2 to i64, !dbg !3830
  %arrayidx22 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i64 0, i64 %idxprom, i64 %idxprom21, !dbg !3830
  %5 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx22, align 8, !dbg !3830
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !3796, metadata !DIExpression()), !dbg !3802
  %arrayidx24 = getelementptr inbounds i32, i32* %save_mode, i64 %idxprom, !dbg !3831
  %6 = load i32, i32* %arrayidx24, align 4, !dbg !3831
  %cmp25 = icmp eq i32 %6, 0, !dbg !3833
  br i1 %cmp25, label %if.else, label %land.lhs.true, !dbg !3834

land.lhs.true:                                    ; preds = %for.end18
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 0, !dbg !3835
  %bf.load = load i32, i32* %7, align 8, !dbg !3835
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3835
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3835
  %cmp28 = icmp eq i32 %6, %bf.clear, !dbg !3836
  br i1 %cmp28, label %if.else, label %land.lhs.true29, !dbg !3837

land.lhs.true29:                                  ; preds = %land.lhs.true
  %idxprom34 = zext i32 %6 to i64, !dbg !3838
  %arrayidx35 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom34, !dbg !3838
  %8 = load i8, i8* %arrayidx35, align 1, !dbg !3838
  %conv = zext i8 %8 to i32, !dbg !3839
  %cmp36 = icmp eq i32 %numregs.2, %conv, !dbg !3840
  br i1 %cmp36, label %land.lhs.true38, label %if.else, !dbg !3841

land.lhs.true38:                                  ; preds = %land.lhs.true29
  %call = tail call fastcc i32 @reg_save_code(i32 %regno, i32 %6) #7, !dbg !3842
  %cmp41 = icmp sgt i32 %call, -1, !dbg !3843
  br i1 %cmp41, label %if.then43, label %if.else, !dbg !3844

if.then43:                                        ; preds = %land.lhs.true38
  %9 = load i32, i32* %arrayidx24, align 4, !dbg !3845
  %call46 = tail call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %5, i32 %9, i64 0, i32 1, i32 1) #6, !dbg !3845
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call46, metadata !3796, metadata !DIExpression()), !dbg !3802
  br label %if.end48, !dbg !3846

if.else:                                          ; preds = %land.lhs.true, %for.end18, %land.lhs.true38, %land.lhs.true29
  %call47 = tail call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %5) #6, !dbg !3847
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call47, metadata !3796, metadata !DIExpression()), !dbg !3802
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then43
  %mem.0 = phi %struct.rtx_def* [ %call46, %if.then43 ], [ %call47, %if.else ], !dbg !3848
  call void @llvm.dbg.value(metadata %struct.rtx_def* %mem.0, metadata !3796, metadata !DIExpression()), !dbg !3802
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %mem.0, i64 0, i32 0, !dbg !3849
  %bf.load49 = load i32, i32* %10, align 8, !dbg !3849
  %bf.lshr50 = lshr i32 %bf.load49, 16, !dbg !3849
  %bf.clear51 = and i32 %bf.lshr50, 255, !dbg !3849
  %call52 = tail call i32 @get_mode_alignment(i32 %bf.clear51) #6, !dbg !3849
  %cmp53 = icmp ugt i32 %call52, -2147483648, !dbg !3849
  br i1 %cmp53, label %cond.end61, label %cond.false56, !dbg !3849

cond.false56:                                     ; preds = %if.end48
  %bf.load57 = load i32, i32* %10, align 8, !dbg !3849
  %bf.lshr58 = lshr i32 %bf.load57, 16, !dbg !3849
  %bf.clear59 = and i32 %bf.lshr58, 255, !dbg !3849
  %call60 = tail call i32 @get_mode_alignment(i32 %bf.clear59) #6, !dbg !3849
  br label %cond.end61, !dbg !3849

cond.end61:                                       ; preds = %if.end48, %cond.false56
  %cond62 = phi i32 [ %call60, %cond.false56 ], [ -2147483648, %if.end48 ], !dbg !3849
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %mem.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3849
  %rt_mem = bitcast %union.rtunion_def* %11 to %struct.mem_attrs**, !dbg !3849
  %12 = load %struct.mem_attrs*, %struct.mem_attrs** %rt_mem, align 8, !dbg !3849
  %cmp64 = icmp eq %struct.mem_attrs* %12, null, !dbg !3849
  br i1 %cmp64, label %cond.end72, label %cond.true66, !dbg !3849

cond.true66:                                      ; preds = %cond.end61
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %12, i64 0, i32 4, !dbg !3849
  %13 = load i32, i32* %align, align 4, !dbg !3849
  br label %cond.end72, !dbg !3849

cond.end72:                                       ; preds = %cond.end61, %cond.true66
  %cond73 = phi i32 [ %13, %cond.true66 ], [ 8, %cond.end61 ], !dbg !3849
  %cmp74 = icmp ugt i32 %cond62, %cond73, !dbg !3849
  br i1 %cmp74, label %cond.true76, label %cond.end78, !dbg !3849

cond.true76:                                      ; preds = %cond.end72
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1308, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3849
  br label %cond.end78, !dbg !3849

cond.end78:                                       ; preds = %cond.end72, %cond.true76
  %bf.load80 = load i32, i32* %10, align 8, !dbg !3850
  %bf.lshr81 = lshr i32 %bf.load80, 16, !dbg !3850
  %bf.clear82 = and i32 %bf.lshr81, 255, !dbg !3850
  %call83 = tail call %struct.rtx_def* @gen_rtx_REG(i32 %bf.clear82, i32 %regno) #6, !dbg !3850
  %call84 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 23, i32 0, %struct.rtx_def* %mem.0, %struct.rtx_def* %call83) #6, !dbg !3850
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call84, metadata !3792, metadata !DIExpression()), !dbg !3802
  %bf.load85 = load i32, i32* %10, align 8, !dbg !3851
  %bf.lshr86 = lshr i32 %bf.load85, 16, !dbg !3851
  %bf.clear87 = and i32 %bf.lshr86, 255, !dbg !3851
  %call88 = tail call fastcc i32 @reg_save_code(i32 %regno, i32 %bf.clear87) #7, !dbg !3852
  call void @llvm.dbg.value(metadata i32 %call88, metadata !3793, metadata !DIExpression()), !dbg !3802
  %call89 = tail call fastcc %struct.insn_chain* @insert_one_insn(%struct.insn_chain* %chain, i32 1, i32 %call88, %struct.rtx_def* %call84) #7, !dbg !3853
  call void @llvm.dbg.value(metadata %struct.insn_chain* %call89, metadata !3795, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i32 0, metadata !3791, metadata !DIExpression()), !dbg !3802
  %dead_or_set = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %call89, i64 0, i32 7, !dbg !3854
  %wide.trip.count = zext i32 %numregs.2 to i64, !dbg !3858
  br label %for.cond90, !dbg !3859

for.cond90:                                       ; preds = %for.body93, %cond.end78
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body93 ], [ 0, %cond.end78 ], !dbg !3860
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3791, metadata !DIExpression()), !dbg !3802
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !3858
  br i1 %exitcond, label %for.end102, label %for.body93, !dbg !3861

for.body93:                                       ; preds = %for.cond90
  %14 = trunc i64 %indvars.iv to i32, !dbg !3862
  %add94 = add i32 %14, %regno, !dbg !3862
  %sh_prom95 = zext i32 %add94 to i64, !dbg !3862
  %shl96 = shl i64 1, %sh_prom95, !dbg !3862
  %15 = load i64, i64* @hard_regs_saved, align 8, !dbg !3862
  %or = or i64 %15, %shl96, !dbg !3862
  store i64 %or, i64* @hard_regs_saved, align 8, !dbg !3862
  %call98 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* nonnull %dead_or_set, i32 %add94) #6, !dbg !3863
  %16 = load i32, i32* @n_regs_saved, align 4, !dbg !3864
  %inc99 = add nsw i32 %16, 1, !dbg !3864
  store i32 %inc99, i32* @n_regs_saved, align 4, !dbg !3864
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3865
  br label %for.cond90, !dbg !3866, !llvm.loop !3867

for.end102:                                       ; preds = %for.cond90
  %sub = add i32 %numregs.2, -1, !dbg !3869
  ret i32 %sub, !dbg !3870
}

; Function Attrs: nounwind uwtable
define internal void @replace_reg_with_saved_mem(%struct.rtx_def** %loc, i32 %mode, i32 %regno, i8* %arg) #5 !dbg !3871 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc, metadata !3873, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3874, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3875, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i8* %arg, metadata !3876, metadata !DIExpression()), !dbg !3886
  %idxprom = sext i32 %regno to i64, !dbg !3887
  %idxprom1 = zext i32 %mode to i64, !dbg !3887
  %arrayidx2 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom1, !dbg !3887
  %0 = load i8, i8* %arrayidx2, align 1, !dbg !3887
  %conv = zext i8 %0 to i32, !dbg !3887
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3878, metadata !DIExpression()), !dbg !3886
  %1 = bitcast i8* %arg to i32*, !dbg !3888
  call void @llvm.dbg.value(metadata i32* %1, metadata !3880, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i32 0, metadata !3877, metadata !DIExpression()), !dbg !3886
  %2 = load i64, i64* @hard_regs_saved, align 8, !dbg !3889
  %wide.trip.count6 = zext i8 %0 to i64, !dbg !3893
  br label %for.cond, !dbg !3894

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc ], [ 0, %entry ], !dbg !3895
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !3877, metadata !DIExpression()), !dbg !3886
  %3 = trunc i64 %indvars.iv4 to i32, !dbg !3896
  %exitcond7 = icmp eq i64 %indvars.iv4, %wide.trip.count6, !dbg !3893
  br i1 %exitcond7, label %for.end, label %for.body, !dbg !3896

for.body:                                         ; preds = %for.cond
  %4 = trunc i64 %indvars.iv4 to i32, !dbg !3897
  %add = add i32 %4, %regno, !dbg !3897
  %sh_prom = zext i32 %add to i64, !dbg !3897
  %shl = shl i64 1, %sh_prom, !dbg !3897
  %and = and i64 %2, %shl, !dbg !3897
  %tobool = icmp eq i64 %and, 0, !dbg !3897
  br i1 %tobool, label %for.inc, label %for.end, !dbg !3898

for.inc:                                          ; preds = %for.body
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !dbg !3899
  call void @llvm.dbg.value(metadata i32 undef, metadata !3877, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3886
  br label %for.cond, !dbg !3900, !llvm.loop !3901

for.end:                                          ; preds = %for.cond, %for.body
  %indvars.iv4.lcssa = phi i64 [ %indvars.iv4, %for.cond ], [ %indvars.iv4, %for.body ], !dbg !3895
  %.lcssa8 = phi i32 [ %3, %for.cond ], [ %3, %for.body ], !dbg !3896
  call void @llvm.dbg.value(metadata i64 %indvars.iv4.lcssa, metadata !3877, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i64 %indvars.iv4.lcssa, metadata !3877, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i32 %.lcssa8, metadata !3877, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i32 %.lcssa8, metadata !3877, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i32 %.lcssa8, metadata !3877, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i32 %.lcssa8, metadata !3877, metadata !DIExpression()), !dbg !3886
  %cmp4 = icmp eq i32 %.lcssa8, %conv, !dbg !3903
  br i1 %cmp4, label %cleanup.cont, label %while.cond.preheader, !dbg !3905

while.cond.preheader:                             ; preds = %for.end
  %5 = and i64 %indvars.iv4.lcssa, 4294967295, !dbg !3906
  %6 = zext i8 %0 to i64, !dbg !3906
  br label %while.cond, !dbg !3906

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %indvars.iv2 = phi i64 [ %5, %while.cond.preheader ], [ %indvars.iv.next3, %while.body ], !dbg !3886
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !3877, metadata !DIExpression()), !dbg !3886
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !3907
  call void @llvm.dbg.value(metadata i32 undef, metadata !3877, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3886
  %cmp9 = icmp ult i64 %indvars.iv.next3, %6, !dbg !3908
  %7 = trunc i64 %indvars.iv.next3 to i32, !dbg !3906
  br i1 %cmp9, label %while.body, label %while.end, !dbg !3906

while.body:                                       ; preds = %while.cond
  %8 = trunc i64 %indvars.iv.next3 to i32, !dbg !3909
  %add11 = add i32 %8, %regno, !dbg !3909
  %sh_prom12 = zext i32 %add11 to i64, !dbg !3909
  %shl13 = shl i64 1, %sh_prom12, !dbg !3909
  %and14 = and i64 %2, %shl13, !dbg !3909
  %tobool15 = icmp eq i64 %and14, 0, !dbg !3909
  br i1 %tobool15, label %while.end, label %while.cond, !dbg !3911, !llvm.loop !3912

while.end:                                        ; preds = %while.body, %while.cond
  %.lcssa = phi i32 [ %7, %while.body ], [ %7, %while.cond ], !dbg !3906
  %cmp18 = icmp eq i32 %.lcssa, %conv, !dbg !3914
  br i1 %cmp18, label %land.lhs.true, label %if.else, !dbg !3915

land.lhs.true:                                    ; preds = %while.end
  %idxprom22 = zext i8 %0 to i64, !dbg !3916
  %arrayidx23 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i64 0, i64 %idxprom, i64 %idxprom22, !dbg !3916
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx23, align 8, !dbg !3916
  %tobool24 = icmp eq %struct.rtx_def* %9, null, !dbg !3916
  br i1 %tobool24, label %if.else, label %if.then25, !dbg !3917

if.then25:                                        ; preds = %land.lhs.true
  %call = tail call %struct.rtx_def* @copy_rtx(%struct.rtx_def* nonnull %9) #6, !dbg !3918
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3879, metadata !DIExpression()), !dbg !3886
  %arrayidx33 = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !3919
  %10 = load i32, i32* %arrayidx33, align 4, !dbg !3919
  %idxprom34 = zext i32 %10 to i64, !dbg !3921
  %arrayidx35 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom34, !dbg !3921
  %11 = load i8, i8* %arrayidx35, align 1, !dbg !3921
  %cmp37 = icmp eq i8 %0, %11, !dbg !3922
  br i1 %cmp37, label %if.then39, label %if.end43, !dbg !3923

if.then39:                                        ; preds = %if.then25
  %call42 = tail call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %call, i32 %10, i64 0, i32 0, i32 1) #6, !dbg !3924
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call42, metadata !3879, metadata !DIExpression()), !dbg !3886
  br label %if.end43, !dbg !3925

if.end43:                                         ; preds = %if.then39, %if.then25
  %mem.0 = phi %struct.rtx_def* [ %call42, %if.then39 ], [ %call, %if.then25 ], !dbg !3926
  call void @llvm.dbg.value(metadata %struct.rtx_def* %mem.0, metadata !3879, metadata !DIExpression()), !dbg !3886
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %mem.0, i64 0, i32 0, !dbg !3927
  %bf.load = load i32, i32* %12, align 8, !dbg !3927
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3927
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3927
  %cmp44 = icmp eq i32 %bf.clear, %mode, !dbg !3928
  br i1 %cmp44, label %if.end99, label %if.then46, !dbg !3929

if.then46:                                        ; preds = %if.end43
  call void @llvm.dbg.value(metadata i32 0, metadata !3881, metadata !DIExpression()), !dbg !3930
  %call48 = tail call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %mem.0, i32 %mode, i64 0, i32 0, i32 1) #6, !dbg !3931
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call48, metadata !3879, metadata !DIExpression()), !dbg !3886
  br label %if.end99, !dbg !3932

if.else:                                          ; preds = %land.lhs.true, %while.end
  %call50 = tail call %struct.rtvec_def* @rtvec_alloc(i32 %conv) #6, !dbg !3933
  %call51 = tail call %struct.rtx_def* @gen_rtx_fmt_E_stat(i32 42, i32 %mode, %struct.rtvec_def* %call50) #6, !dbg !3933
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call51, metadata !3879, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i32 0, metadata !3877, metadata !DIExpression()), !dbg !3886
  %arrayidx72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call51, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3935
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtvec_def**, !dbg !3935
  %arrayidx77 = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !3940
  %wide.trip.count = zext i8 %0 to i64, !dbg !3942
  br label %for.cond52, !dbg !3943

for.cond52:                                       ; preds = %for.inc96, %if.else
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc96 ], [ 0, %if.else ], !dbg !3944
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3877, metadata !DIExpression()), !dbg !3886
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !3942
  br i1 %exitcond, label %if.end99.loopexit, label %for.body55, !dbg !3945

for.body55:                                       ; preds = %for.cond52
  %13 = load i64, i64* @hard_regs_saved, align 8, !dbg !3946
  %14 = trunc i64 %indvars.iv to i32, !dbg !3946
  %add56 = add i32 %14, %regno, !dbg !3946
  %sh_prom57 = zext i32 %add56 to i64, !dbg !3946
  %shl58 = shl i64 1, %sh_prom57, !dbg !3946
  %and59 = and i64 %13, %shl58, !dbg !3946
  %tobool60 = icmp eq i64 %and59, 0, !dbg !3946
  br i1 %tobool60, label %if.else75, label %if.then61, !dbg !3947

if.then61:                                        ; preds = %for.body55
  %arrayidx65 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i64 0, i64 %sh_prom57, i64 1, !dbg !3948
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx65, align 8, !dbg !3948
  %tobool66 = icmp eq %struct.rtx_def* %15, null, !dbg !3948
  br i1 %tobool66, label %cond.true, label %cond.end, !dbg !3948

cond.true:                                        ; preds = %if.then61
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3948
  %.pre = load %struct.rtx_def*, %struct.rtx_def** %arrayidx65, align 8, !dbg !3949
  br label %cond.end, !dbg !3948

cond.end:                                         ; preds = %if.then61, %cond.true
  %16 = phi %struct.rtx_def* [ %15, %if.then61 ], [ %.pre, %cond.true ], !dbg !3949
  %call71 = tail call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %16) #6, !dbg !3950
  %17 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3951
  %arrayidx74 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %17, i64 0, i32 1, i64 %indvars.iv, !dbg !3951
  store %struct.rtx_def* %call71, %struct.rtx_def** %arrayidx74, align 8, !dbg !3952
  br label %for.inc96, !dbg !3953

if.else75:                                        ; preds = %for.body55
  %18 = load i32, i32* %arrayidx77, align 4, !dbg !3954
  %cmp78 = icmp eq i32 %18, 0, !dbg !3954
  br i1 %cmp78, label %cond.true80, label %cond.end82, !dbg !3954

cond.true80:                                      ; preds = %if.else75
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3954
  %.pre1 = load i32, i32* %arrayidx77, align 4, !dbg !3955
  br label %cond.end82, !dbg !3954

cond.end82:                                       ; preds = %if.else75, %cond.true80
  %19 = phi i32 [ %18, %if.else75 ], [ %.pre1, %cond.true80 ], !dbg !3955
  %call87 = tail call %struct.rtx_def* @gen_rtx_REG(i32 %19, i32 %add56) #6, !dbg !3956
  %20 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3957
  %arrayidx94 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %20, i64 0, i32 1, i64 %indvars.iv, !dbg !3957
  store %struct.rtx_def* %call87, %struct.rtx_def** %arrayidx94, align 8, !dbg !3958
  br label %for.inc96

for.inc96:                                        ; preds = %cond.end, %cond.end82
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3959
  call void @llvm.dbg.value(metadata i32 undef, metadata !3877, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3886
  br label %for.cond52, !dbg !3960, !llvm.loop !3961

if.end99.loopexit:                                ; preds = %for.cond52
  br label %if.end99, !dbg !3963

if.end99:                                         ; preds = %if.end99.loopexit, %if.end43, %if.then46
  %mem.2 = phi %struct.rtx_def* [ %call48, %if.then46 ], [ %mem.0, %if.end43 ], [ %call51, %if.end99.loopexit ], !dbg !3964
  call void @llvm.dbg.value(metadata %struct.rtx_def* %mem.2, metadata !3879, metadata !DIExpression()), !dbg !3886
  %21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %mem.2, i64 0, i32 0, !dbg !3963
  %bf.load100 = load i32, i32* %21, align 8, !dbg !3963
  %bf.lshr101 = lshr i32 %bf.load100, 16, !dbg !3963
  %bf.clear102 = and i32 %bf.lshr101, 255, !dbg !3963
  %cmp103 = icmp eq i32 %bf.clear102, %mode, !dbg !3963
  br i1 %cmp103, label %cond.end107, label %cond.true105, !dbg !3963

cond.true105:                                     ; preds = %if.end99
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3963
  br label %cond.end107, !dbg !3963

cond.end107:                                      ; preds = %if.end99, %cond.true105
  store %struct.rtx_def* %mem.2, %struct.rtx_def** %loc, align 8, !dbg !3965
  br label %cleanup.cont, !dbg !3966

cleanup.cont:                                     ; preds = %cond.end107, %for.end
  ret void, !dbg !3966
}

declare dso_local void @gt_ggc_mx_rtx_def(i8*) #2

declare dso_local void @gt_pch_nx_rtx_def(i8*) #2

declare dso_local zeroext i8 @ix86_hard_regno_mode_ok(i32, i32) local_unnamed_addr #2

declare dso_local void @df_ref_change_reg_with_loc(i32, i32, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !3967 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3971, metadata !DIExpression()), !dbg !3972
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3973
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3973
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3973
  ret i32 %0, !dbg !3974
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @recog_memoized(%struct.rtx_def* %insn) unnamed_addr #0 !dbg !3975 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3980, metadata !DIExpression()), !dbg !3981
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3982
  %0 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 1, !dbg !3982
  %rt_int = bitcast %union.rtunion_def* %0 to i32*, !dbg !3982
  %1 = load i32, i32* %rt_int, align 8, !dbg !3982
  %cmp = icmp slt i32 %1, 0, !dbg !3984
  br i1 %cmp, label %if.then, label %if.end, !dbg !3985

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3986
  %rt_rtx = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !3986
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3986
  %call = tail call i32 @recog(%struct.rtx_def* %3, %struct.rtx_def* %insn, i32* null) #6, !dbg !3987
  store i32 %call, i32* %rt_int, align 8, !dbg !3988
  br label %if.end, !dbg !3989

if.end:                                           ; preds = %if.then, %entry
  %4 = phi i32 [ %call, %if.then ], [ %1, %entry ], !dbg !3990
  ret i32 %4, !dbg !3991
}

declare dso_local void @extract_insn(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @constrain_operands(i32) local_unnamed_addr #2

declare dso_local i32 @recog(%struct.rtx_def*, %struct.rtx_def*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

declare dso_local i32 @subreg_regno(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @subreg_nregs(%struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @add_to_hard_reg_set(i64* %regs, i32 %mode, i32 %regno) unnamed_addr #0 !dbg !3992 {
entry:
  call void @llvm.dbg.value(metadata i64* @referenced_regs, metadata !3996, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3997, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3998, metadata !DIExpression()), !dbg !4000
  %call = tail call fastcc i32 @end_hard_regno(i32 %mode, i32 %regno) #7, !dbg !4001
  call void @llvm.dbg.value(metadata i32 %call, metadata !3999, metadata !DIExpression()), !dbg !4000
  %regs.promoted = load i64, i64* @referenced_regs, align 8, !dbg !4002
  br label %do.body, !dbg !4003

do.body:                                          ; preds = %do.body, %entry
  %0 = phi i64 [ %regs.promoted, %entry ], [ %or, %do.body ], !dbg !4000
  %regno.addr.0 = phi i32 [ %regno, %entry ], [ %inc, %do.body ]
  call void @llvm.dbg.value(metadata i32 %regno.addr.0, metadata !3998, metadata !DIExpression()), !dbg !4000
  %sh_prom = zext i32 %regno.addr.0 to i64, !dbg !4002
  %shl = shl i64 1, %sh_prom, !dbg !4002
  %or = or i64 %0, %shl, !dbg !4002
  %inc = add i32 %regno.addr.0, 1, !dbg !4004
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3998, metadata !DIExpression()), !dbg !4000
  %cmp = icmp ult i32 %inc, %call, !dbg !4005
  br i1 %cmp, label %do.body, label %do.end, !dbg !4002, !llvm.loop !4006

do.end:                                           ; preds = %do.body
  %or.lcssa = phi i64 [ %or, %do.body ], !dbg !4002
  store i64 %or.lcssa, i64* @referenced_regs, align 8, !dbg !4002
  ret void, !dbg !4008
}

declare dso_local %struct.rtx_def* @copy_rtx(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_rtx_fmt_E_stat(i32, i32, %struct.rtvec_def*) local_unnamed_addr #2

declare dso_local %struct.rtvec_def* @rtvec_alloc(i32) local_unnamed_addr #2

declare dso_local i32 @get_mode_alignment(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @reg_restore_code(i32 %reg, i32 %mode) unnamed_addr #5 !dbg !4009 {
entry:
  call void @llvm.dbg.value(metadata i32 %reg, metadata !4011, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4012, metadata !DIExpression()), !dbg !4013
  %idxprom = sext i32 %reg to i64, !dbg !4014
  %idxprom1 = zext i32 %mode to i64, !dbg !4014
  %arrayidx2 = getelementptr inbounds [53 x [87 x i32]], [53 x [87 x i32]]* @cached_reg_restore_code, i64 0, i64 %idxprom, i64 %idxprom1, !dbg !4014
  %0 = load i32, i32* %arrayidx2, align 4, !dbg !4014
  %tobool = icmp eq i32 %0, 0, !dbg !4014
  br i1 %tobool, label %if.end, label %if.then, !dbg !4016

if.then:                                          ; preds = %entry
  br label %return, !dbg !4017

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @reg_save_code(i32 %reg, i32 %mode) #7, !dbg !4018
  %retval.0.pre = load i32, i32* %arrayidx2, align 4, !dbg !4013
  br label %return, !dbg !4019

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %retval.0.pre, %if.end ], [ %0, %if.then ], !dbg !4013
  ret i32 %retval.0, !dbg !4020
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.insn_chain* @insert_one_insn(%struct.insn_chain* %chain, i32 %before_p, i32 %code, %struct.rtx_def* %pat) unnamed_addr #5 !dbg !4021 {
entry:
  call void @llvm.dbg.value(metadata %struct.insn_chain* %chain, metadata !4025, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i32 %before_p, metadata !4026, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i32 %code, metadata !4027, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata %struct.rtx_def* %pat, metadata !4028, metadata !DIExpression()), !dbg !4034
  %insn1 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain, i64 0, i32 3, !dbg !4035
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8, !dbg !4035
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !4029, metadata !DIExpression()), !dbg !4034
  %call = tail call %struct.insn_chain* @new_insn_chain() #6, !dbg !4036
  call void @llvm.dbg.value(metadata %struct.insn_chain* %call, metadata !4030, metadata !DIExpression()), !dbg !4034
  %tobool = icmp eq i32 %before_p, 0, !dbg !4037
  br i1 %tobool, label %if.else59, label %if.then, !dbg !4038

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain, i64 0, i32 1, !dbg !4039
  %1 = bitcast %struct.insn_chain** %prev to i64*, !dbg !4039
  %2 = load i64, i64* %1, align 8, !dbg !4039
  %prev2 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %call, i64 0, i32 1, !dbg !4040
  %3 = bitcast %struct.insn_chain** %prev2 to i64*, !dbg !4041
  store i64 %2, i64* %3, align 8, !dbg !4041
  %cmp = icmp eq i64 %2, 0, !dbg !4042
  br i1 %cmp, label %if.else, label %if.then4, !dbg !4044

if.then4:                                         ; preds = %if.then
  %4 = inttoptr i64 %2 to %struct.insn_chain*, !dbg !4044
  %next = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %4, i64 0, i32 0, !dbg !4045
  store %struct.insn_chain* %call, %struct.insn_chain** %next, align 8, !dbg !4046
  br label %if.end, !dbg !4047

if.else:                                          ; preds = %if.then
  store %struct.insn_chain* %call, %struct.insn_chain** @reload_insn_chain, align 8, !dbg !4048
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  store %struct.insn_chain* %call, %struct.insn_chain** %prev, align 8, !dbg !4049
  %next7 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %call, i64 0, i32 0, !dbg !4050
  store %struct.insn_chain* %chain, %struct.insn_chain** %next7, align 8, !dbg !4051
  %call8 = tail call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %pat, %struct.rtx_def* %0) #6, !dbg !4052
  %insn9 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %call, i64 0, i32 3, !dbg !4053
  store %struct.rtx_def* %call8, %struct.rtx_def** %insn9, align 8, !dbg !4054
  %live_throughout = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %call, i64 0, i32 6, !dbg !4055
  %live_throughout10 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain, i64 0, i32 6, !dbg !4055
  tail call void @bitmap_copy(%struct.bitmap_head_def* nonnull %live_throughout, %struct.bitmap_head_def* nonnull %live_throughout10) #6, !dbg !4055
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8, !dbg !4056
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, !dbg !4056
  %6 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !4056
  %rt_rtx = bitcast %union.rtunion_def* %6 to %struct.rtx_def**, !dbg !4056
  %7 = bitcast %struct.bitmap_head_def* %live_throughout to i8*, !dbg !4057
  tail call void @note_uses(%struct.rtx_def** nonnull %rt_rtx, void (%struct.rtx_def**, i8*)* nonnull @add_used_regs, i8* nonnull %7) #6, !dbg !4058
  %8 = bitcast %struct.rtx_def** %insn1 to i32**, !dbg !4059
  %9 = load i32*, i32** %8, align 8, !dbg !4059
  %bf.load = load i32, i32* %9, align 8, !dbg !4059
  %bf.clear = and i32 %bf.load, 65535, !dbg !4059
  %cmp14 = icmp eq i32 %bf.clear, 10, !dbg !4059
  br i1 %cmp14, label %if.then15, label %if.end31, !dbg !4061

if.then15:                                        ; preds = %if.end
  %arrayidx19 = getelementptr inbounds i32, i32* %9, i64 18, !dbg !4062
  %rt_rtx20 = bitcast i32* %arrayidx19 to %struct.rtx_def**, !dbg !4062
  br label %for.cond, !dbg !4064

for.cond:                                         ; preds = %for.body, %if.then15
  %link.0.in = phi %struct.rtx_def** [ %rt_rtx20, %if.then15 ], [ %rt_rtx30, %for.body ]
  %link.0 = load %struct.rtx_def*, %struct.rtx_def** %link.0.in, align 8, !dbg !4065
  call void @llvm.dbg.value(metadata %struct.rtx_def* %link.0, metadata !4031, metadata !DIExpression()), !dbg !4066
  %cmp21 = icmp eq %struct.rtx_def* %link.0, null, !dbg !4067
  br i1 %cmp21, label %if.end31.loopexit, label %for.body, !dbg !4069

for.body:                                         ; preds = %for.cond
  %arrayidx24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4070
  %rt_rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**, !dbg !4070
  tail call void @note_uses(%struct.rtx_def** nonnull %rt_rtx25, void (%struct.rtx_def**, i8*)* nonnull @add_used_regs, i8* nonnull %7) #6, !dbg !4071
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4072
  %rt_rtx30 = bitcast %union.rtunion_def* %10 to %struct.rtx_def**, !dbg !4072
  br label %for.cond, !dbg !4073, !llvm.loop !4074

if.end31.loopexit:                                ; preds = %for.cond
  br label %if.end31, !dbg !4076

if.end31:                                         ; preds = %if.end31.loopexit, %if.end
  %dead_or_set = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %call, i64 0, i32 7, !dbg !4076
  tail call void @bitmap_clear(%struct.bitmap_head_def* nonnull %dead_or_set) #6, !dbg !4076
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8, !dbg !4077
  %12 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4079
  %cfg = getelementptr inbounds %struct.function, %struct.function* %12, i64 0, i32 1, !dbg !4079
  %13 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4079
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %13, i64 0, i32 2, !dbg !4079
  %14 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !4079
  %tobool33 = icmp eq %struct.VEC_basic_block_gc* %14, null, !dbg !4079
  br i1 %tobool33, label %cond.end, label %cond.true, !dbg !4079

cond.true:                                        ; preds = %if.end31
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %14, i64 0, i32 0, !dbg !4079
  br label %cond.end, !dbg !4079

cond.end:                                         ; preds = %if.end31, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %if.end31 ], !dbg !4079
  %block = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain, i64 0, i32 4, !dbg !4079
  %15 = load i32, i32* %block, align 8, !dbg !4079
  %call37 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %15) #7, !dbg !4079
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call37, i64 0, i32 7, !dbg !4079
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4079
  %16 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4079
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %16, i64 0, i32 0, !dbg !4079
  %17 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !4079
  %cmp38 = icmp eq %struct.rtx_def* %11, %17, !dbg !4080
  br i1 %cmp38, label %if.then39, label %if.end119, !dbg !4081

if.then39:                                        ; preds = %cond.end
  %18 = bitcast %struct.rtx_def** %insn9 to i64*, !dbg !4082
  %19 = load i64, i64* %18, align 8, !dbg !4082
  %20 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4083
  %cfg42 = getelementptr inbounds %struct.function, %struct.function* %20, i64 0, i32 1, !dbg !4083
  %21 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg42, align 8, !dbg !4083
  %x_basic_block_info43 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %21, i64 0, i32 2, !dbg !4083
  %22 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info43, align 8, !dbg !4083
  %tobool44 = icmp eq %struct.VEC_basic_block_gc* %22, null, !dbg !4083
  br i1 %tobool44, label %cond.end51, label %cond.true45, !dbg !4083

cond.true45:                                      ; preds = %if.then39
  %base49 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %22, i64 0, i32 0, !dbg !4083
  br label %cond.end51, !dbg !4083

cond.end51:                                       ; preds = %if.then39, %cond.true45
  %cond52 = phi %struct.VEC_basic_block_base* [ %base49, %cond.true45 ], [ null, %if.then39 ], !dbg !4083
  %23 = load i32, i32* %block, align 8, !dbg !4083
  %call54 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond52, i32 %23) #7, !dbg !4083
  %il55 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call54, i64 0, i32 7, !dbg !4083
  %24 = bitcast %union.basic_block_il_dependent* %il55 to i64**, !dbg !4083
  %25 = load i64*, i64** %24, align 8, !dbg !4083
  store i64 %19, i64* %25, align 8, !dbg !4084
  br label %if.end119, !dbg !4083

if.else59:                                        ; preds = %entry
  %26 = bitcast %struct.insn_chain* %chain to i64*, !dbg !4085
  %27 = load i64, i64* %26, align 8, !dbg !4085
  %28 = bitcast %struct.insn_chain* %call to i64*, !dbg !4087
  store i64 %27, i64* %28, align 8, !dbg !4087
  %cmp63 = icmp eq i64 %27, 0, !dbg !4088
  br i1 %cmp63, label %if.end67, label %if.then64, !dbg !4090

if.then64:                                        ; preds = %if.else59
  %29 = inttoptr i64 %27 to %struct.insn_chain*, !dbg !4090
  %prev66 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %29, i64 0, i32 1, !dbg !4091
  store %struct.insn_chain* %call, %struct.insn_chain** %prev66, align 8, !dbg !4092
  br label %if.end67, !dbg !4093

if.end67:                                         ; preds = %if.else59, %if.then64
  %next68 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain, i64 0, i32 0, !dbg !4094
  store %struct.insn_chain* %call, %struct.insn_chain** %next68, align 8, !dbg !4095
  %prev69 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %call, i64 0, i32 1, !dbg !4096
  store %struct.insn_chain* %chain, %struct.insn_chain** %prev69, align 8, !dbg !4097
  %call70 = tail call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %pat, %struct.rtx_def* %0) #6, !dbg !4098
  %insn71 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %call, i64 0, i32 3, !dbg !4099
  store %struct.rtx_def* %call70, %struct.rtx_def** %insn71, align 8, !dbg !4100
  %live_throughout72 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %call, i64 0, i32 6, !dbg !4101
  %live_throughout73 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain, i64 0, i32 6, !dbg !4101
  tail call void @bitmap_copy(%struct.bitmap_head_def* nonnull %live_throughout72, %struct.bitmap_head_def* nonnull %live_throughout73) #6, !dbg !4101
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8, !dbg !4102
  %u75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i64 0, i32 1, !dbg !4102
  %31 = getelementptr inbounds %union.u, %union.u* %u75, i64 1, i32 0, i32 0, i64 0, !dbg !4102
  %rt_rtx78 = bitcast %union.rtunion_def* %31 to %struct.rtx_def**, !dbg !4102
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx78, align 8, !dbg !4102
  %33 = bitcast %struct.bitmap_head_def* %live_throughout72 to i8*, !dbg !4103
  tail call void @note_stores(%struct.rtx_def* %32, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @add_stored_regs, i8* nonnull %33) #6, !dbg !4104
  %dead_or_set80 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %call, i64 0, i32 7, !dbg !4105
  tail call void @bitmap_clear(%struct.bitmap_head_def* nonnull %dead_or_set80) #6, !dbg !4105
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8, !dbg !4106
  %35 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4108
  %cfg83 = getelementptr inbounds %struct.function, %struct.function* %35, i64 0, i32 1, !dbg !4108
  %36 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg83, align 8, !dbg !4108
  %x_basic_block_info84 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %36, i64 0, i32 2, !dbg !4108
  %37 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info84, align 8, !dbg !4108
  %tobool85 = icmp eq %struct.VEC_basic_block_gc* %37, null, !dbg !4108
  br i1 %tobool85, label %cond.end92, label %cond.true86, !dbg !4108

cond.true86:                                      ; preds = %if.end67
  %base90 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %37, i64 0, i32 0, !dbg !4108
  br label %cond.end92, !dbg !4108

cond.end92:                                       ; preds = %if.end67, %cond.true86
  %cond93 = phi %struct.VEC_basic_block_base* [ %base90, %cond.true86 ], [ null, %if.end67 ], !dbg !4108
  %block94 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain, i64 0, i32 4, !dbg !4108
  %38 = load i32, i32* %block94, align 8, !dbg !4108
  %call95 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond93, i32 %38) #7, !dbg !4108
  %il96 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call95, i64 0, i32 7, !dbg !4108
  %rtl97 = bitcast %union.basic_block_il_dependent* %il96 to %struct.rtl_bb_info**, !dbg !4108
  %39 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl97, align 8, !dbg !4108
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %39, i64 0, i32 1, !dbg !4108
  %40 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !4108
  %cmp98 = icmp eq %struct.rtx_def* %34, %40, !dbg !4109
  br i1 %cmp98, label %if.then99, label %if.end119, !dbg !4110

if.then99:                                        ; preds = %cond.end92
  %41 = bitcast %struct.rtx_def** %insn71 to i64*, !dbg !4111
  %42 = load i64, i64* %41, align 8, !dbg !4111
  %43 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4112
  %cfg102 = getelementptr inbounds %struct.function, %struct.function* %43, i64 0, i32 1, !dbg !4112
  %44 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg102, align 8, !dbg !4112
  %x_basic_block_info103 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %44, i64 0, i32 2, !dbg !4112
  %45 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info103, align 8, !dbg !4112
  %tobool104 = icmp eq %struct.VEC_basic_block_gc* %45, null, !dbg !4112
  br i1 %tobool104, label %cond.end111, label %cond.true105, !dbg !4112

cond.true105:                                     ; preds = %if.then99
  %base109 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %45, i64 0, i32 0, !dbg !4112
  br label %cond.end111, !dbg !4112

cond.end111:                                      ; preds = %if.then99, %cond.true105
  %cond112 = phi %struct.VEC_basic_block_base* [ %base109, %cond.true105 ], [ null, %if.then99 ], !dbg !4112
  %46 = load i32, i32* %block94, align 8, !dbg !4112
  %call114 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond112, i32 %46) #7, !dbg !4112
  %il115 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call114, i64 0, i32 7, !dbg !4112
  %rtl116 = bitcast %union.basic_block_il_dependent* %il115 to %struct.rtl_bb_info**, !dbg !4112
  %47 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl116, align 8, !dbg !4112
  %end_117 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %47, i64 0, i32 1, !dbg !4112
  %48 = bitcast %struct.rtx_def** %end_117 to i64*, !dbg !4113
  store i64 %42, i64* %48, align 8, !dbg !4113
  br label %if.end119, !dbg !4112

if.end119:                                        ; preds = %cond.end92, %cond.end111, %cond.end, %cond.end51
  %block120 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %chain, i64 0, i32 4, !dbg !4114
  %49 = load i32, i32* %block120, align 8, !dbg !4114
  %block121 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %call, i64 0, i32 4, !dbg !4115
  store i32 %49, i32* %block121, align 8, !dbg !4116
  %is_caller_save_insn = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %call, i64 0, i32 5, !dbg !4117
  %bf.load122 = load i8, i8* %is_caller_save_insn, align 4, !dbg !4118
  %bf.set = or i8 %bf.load122, 8, !dbg !4118
  store i8 %bf.set, i8* %is_caller_save_insn, align 4, !dbg !4118
  %insn124 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %call, i64 0, i32 3, !dbg !4119
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn124, align 8, !dbg !4119
  %u125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i64 0, i32 1, !dbg !4119
  %51 = getelementptr inbounds %union.u, %union.u* %u125, i64 1, i32 0, i32 0, i64 1, !dbg !4119
  %rt_int = bitcast %union.rtunion_def* %51 to i32*, !dbg !4119
  store i32 %code, i32* %rt_int, align 8, !dbg !4120
  ret %struct.insn_chain* %call, !dbg !4121
}

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local %struct.insn_chain* @new_insn_chain() local_unnamed_addr #2

declare dso_local %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local void @note_uses(%struct.rtx_def**, void (%struct.rtx_def**, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @add_used_regs(%struct.rtx_def** %loc, i8* %data) #5 !dbg !4122 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc, metadata !4126, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i8* %data, metadata !4127, metadata !DIExpression()), !dbg !4128
  %call = tail call i32 @for_each_rtx(%struct.rtx_def** %loc, i32 (%struct.rtx_def**, i8*)* nonnull @add_used_regs_1, i8* %data) #6, !dbg !4129
  ret void, !dbg !4130
}

declare dso_local void @bitmap_clear(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4131 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !4137, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4138, metadata !DIExpression()), !dbg !4139
  br label %land.end, !dbg !4140

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4140
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4140
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4140
  ret %struct.basic_block_def* %0, !dbg !4140
}

declare dso_local %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @add_stored_regs(%struct.rtx_def* %reg, %struct.rtx_def* %setter, i8* %data) #5 !dbg !4141 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !4143, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata %struct.rtx_def* %setter, metadata !4144, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata i8* %data, metadata !4145, metadata !DIExpression()), !dbg !4151
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 0, !dbg !4152
  %bf.load = load i32, i32* %0, align 8, !dbg !4152
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4152
  %bf.clear = and i32 %bf.lshr, 255, !dbg !4152
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4149, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata i32 0, metadata !4150, metadata !DIExpression()), !dbg !4151
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %setter, i64 0, i32 0, !dbg !4153
  %bf.load1 = load i32, i32* %1, align 8, !dbg !4153
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !4153
  %cmp = icmp eq i32 %bf.clear2, 25, !dbg !4155
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !4156

if.end:                                           ; preds = %entry
  %bf.clear4 = and i32 %bf.load, 65535, !dbg !4157
  %cmp5 = icmp eq i32 %bf.clear4, 39, !dbg !4159
  br i1 %cmp5, label %land.lhs.true, label %if.else, !dbg !4160

land.lhs.true:                                    ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4161
  %2 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !4161
  %3 = load i32*, i32** %2, align 8, !dbg !4161
  %bf.load6 = load i32, i32* %3, align 8, !dbg !4161
  %bf.clear7 = and i32 %bf.load6, 65535, !dbg !4161
  %cmp8 = icmp eq i32 %bf.clear7, 37, !dbg !4161
  br i1 %cmp8, label %land.lhs.true9, label %if.else, !dbg !4162

land.lhs.true9:                                   ; preds = %land.lhs.true
  %4 = bitcast i32* %3 to %struct.rtx_def*, !dbg !4162
  %rt_rtx13 = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !4163
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %4) #7, !dbg !4163
  %cmp14 = icmp ult i32 %call, 53, !dbg !4164
  br i1 %cmp14, label %if.then15, label %land.lhs.true9.if.else_crit_edge, !dbg !4165

land.lhs.true9.if.else_crit_edge:                 ; preds = %land.lhs.true9
  %bf.load42.pre = load i32, i32* %0, align 8, !dbg !4166
  br label %if.else, !dbg !4165

if.then15:                                        ; preds = %land.lhs.true9
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx13, align 8, !dbg !4169
  %call20 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %5) #7, !dbg !4169
  %6 = load i32*, i32** %2, align 8, !dbg !4171
  %bf.load25 = load i32, i32* %6, align 8, !dbg !4171
  %bf.lshr26 = lshr i32 %bf.load25, 16, !dbg !4171
  %bf.clear27 = and i32 %bf.lshr26, 255, !dbg !4171
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4172
  %rt_uint = bitcast %union.rtunion_def* %7 to i32*, !dbg !4172
  %8 = load i32, i32* %rt_uint, align 8, !dbg !4172
  %bf.load31 = load i32, i32* %0, align 8, !dbg !4173
  %bf.lshr32 = lshr i32 %bf.load31, 16, !dbg !4173
  %bf.clear33 = and i32 %bf.lshr32, 255, !dbg !4173
  %call34 = tail call i32 @subreg_regno_offset(i32 %call20, i32 %bf.clear27, i32 %8, i32 %bf.clear33) #6, !dbg !4174
  call void @llvm.dbg.value(metadata i32 %call34, metadata !4150, metadata !DIExpression()), !dbg !4151
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx13, align 8, !dbg !4175
  %call39 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %9) #7, !dbg !4175
  %add = add i32 %call39, %call34, !dbg !4176
  call void @llvm.dbg.value(metadata i32 %add, metadata !4146, metadata !DIExpression()), !dbg !4151
  %call40 = tail call i32 @subreg_nregs(%struct.rtx_def* %reg) #6, !dbg !4177
  %add41 = add i32 %add, %call40, !dbg !4178
  call void @llvm.dbg.value(metadata i32 %add41, metadata !4147, metadata !DIExpression()), !dbg !4151
  br label %if.end52, !dbg !4179

if.else:                                          ; preds = %land.lhs.true9.if.else_crit_edge, %land.lhs.true, %if.end
  %bf.load42 = phi i32 [ %bf.load42.pre, %land.lhs.true9.if.else_crit_edge ], [ %bf.load, %land.lhs.true ], [ %bf.load, %if.end ], !dbg !4166
  %bf.clear43 = and i32 %bf.load42, 65535, !dbg !4166
  %cmp44 = icmp eq i32 %bf.clear43, 37, !dbg !4166
  br i1 %cmp44, label %lor.lhs.false, label %cleanup.cont, !dbg !4180

lor.lhs.false:                                    ; preds = %if.else
  %call45 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg) #7, !dbg !4181
  %cmp46 = icmp ugt i32 %call45, 52, !dbg !4182
  br i1 %cmp46, label %cleanup.cont, label %if.end48, !dbg !4183

if.end48:                                         ; preds = %lor.lhs.false
  %call49 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg) #7, !dbg !4184
  call void @llvm.dbg.value(metadata i32 %call49, metadata !4146, metadata !DIExpression()), !dbg !4151
  %call51 = tail call fastcc i32 @end_hard_regno(i32 %bf.clear, i32 %call49) #7, !dbg !4185
  call void @llvm.dbg.value(metadata i32 %call51, metadata !4147, metadata !DIExpression()), !dbg !4151
  br label %if.end52

if.end52:                                         ; preds = %if.end48, %if.then15
  %endregno.0 = phi i32 [ %add41, %if.then15 ], [ %call51, %if.end48 ], !dbg !4186
  %regno.0 = phi i32 [ %add, %if.then15 ], [ %call49, %if.end48 ], !dbg !4186
  call void @llvm.dbg.value(metadata i32 %regno.0, metadata !4146, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata i32 %endregno.0, metadata !4147, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata i32 %regno.0, metadata !4148, metadata !DIExpression()), !dbg !4151
  %10 = bitcast i8* %data to %struct.bitmap_head_def*, !dbg !4187
  br label %for.cond, !dbg !4190

for.cond:                                         ; preds = %for.body, %if.end52
  %i.0 = phi i32 [ %regno.0, %if.end52 ], [ %inc, %for.body ], !dbg !4191
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4148, metadata !DIExpression()), !dbg !4151
  %cmp53 = icmp slt i32 %i.0, %endregno.0, !dbg !4192
  br i1 %cmp53, label %for.body, label %cleanup.cont.loopexit, !dbg !4193

for.body:                                         ; preds = %for.cond
  %call54 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %10, i32 %i.0) #6, !dbg !4194
  %inc = add nsw i32 %i.0, 1, !dbg !4195
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4148, metadata !DIExpression()), !dbg !4151
  br label %for.cond, !dbg !4196, !llvm.loop !4197

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !4199

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry, %lor.lhs.false, %if.else
  ret void, !dbg !4199
}

declare dso_local i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @add_used_regs_1(%struct.rtx_def** %loc, i8* %data) #5 !dbg !4200 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc, metadata !4204, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i8* %data, metadata !4205, metadata !DIExpression()), !dbg !4210
  %0 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !4211
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !4209, metadata !DIExpression()), !dbg !4210
  %1 = bitcast i8* %data to %struct.bitmap_head_def*, !dbg !4212
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %1, metadata !4208, metadata !DIExpression()), !dbg !4210
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0, !dbg !4213
  %bf.load = load i32, i32* %2, align 8, !dbg !4213
  %bf.clear = and i32 %bf.load, 65535, !dbg !4213
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !4213
  br i1 %cmp, label %if.then, label %if.end17, !dbg !4215

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %0) #7, !dbg !4216
  call void @llvm.dbg.value(metadata i32 %call, metadata !4206, metadata !DIExpression()), !dbg !4210
  %cmp1 = icmp slt i32 %call, 53, !dbg !4218
  br i1 %cmp1, label %if.end, label %if.then2, !dbg !4220

if.then2:                                         ; preds = %if.then
  %3 = load i16*, i16** @reg_renumber, align 8, !dbg !4221
  %idxprom = sext i32 %call to i64, !dbg !4221
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom, !dbg !4221
  %4 = load i16, i16* %arrayidx, align 2, !dbg !4221
  %conv = sext i16 %4 to i32, !dbg !4221
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4206, metadata !DIExpression()), !dbg !4210
  br label %if.end, !dbg !4222

if.end:                                           ; preds = %if.then2, %if.then
  %regno.0 = phi i32 [ %call, %if.then ], [ %conv, %if.then2 ], !dbg !4223
  call void @llvm.dbg.value(metadata i32 %regno.0, metadata !4206, metadata !DIExpression()), !dbg !4210
  %cmp3 = icmp sgt i32 %regno.0, -1, !dbg !4224
  br i1 %cmp3, label %if.then5, label %if.end17, !dbg !4226

if.then5:                                         ; preds = %if.end
  %idxprom6 = sext i32 %regno.0 to i64, !dbg !4227
  %bf.load8 = load i32, i32* %2, align 8, !dbg !4229
  %bf.lshr = lshr i32 %bf.load8, 16, !dbg !4229
  %bf.clear9 = and i32 %bf.lshr, 255, !dbg !4229
  %idxprom10 = zext i32 %bf.clear9 to i64, !dbg !4227
  %arrayidx11 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom6, i64 %idxprom10, !dbg !4227
  %5 = load i8, i8* %arrayidx11, align 1, !dbg !4227
  %conv12 = zext i8 %5 to i32, !dbg !4227
  call void @llvm.dbg.value(metadata i32 %conv12, metadata !4207, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4210
  br label %for.cond, !dbg !4230

for.cond:                                         ; preds = %for.body, %if.then5
  %i.0.in = phi i32 [ %conv12, %if.then5 ], [ %i.0, %for.body ]
  %i.0 = add nsw i32 %i.0.in, -1, !dbg !4231
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4207, metadata !DIExpression()), !dbg !4210
  %cmp13 = icmp sgt i32 %i.0.in, 0, !dbg !4232
  br i1 %cmp13, label %for.body, label %if.end17.loopexit, !dbg !4234

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %regno.0, %i.0, !dbg !4235
  %call15 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %1, i32 %add) #6, !dbg !4235
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4207, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4210
  br label %for.cond, !dbg !4236, !llvm.loop !4237

if.end17.loopexit:                                ; preds = %for.cond
  br label %if.end17, !dbg !4239

if.end17:                                         ; preds = %if.end17.loopexit, %if.end, %entry
  ret i32 0, !dbg !4239
}

declare dso_local i32 @subreg_regno_offset(i32, i32, i32, i32) local_unnamed_addr #2

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
!llvm.module.flags = !{!1714, !1715, !1716}
!llvm.ident = !{!1717}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "caller_save_initialized_p", scope: !2, file: !3, line: 44, type: !552, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !550, globals: !1648, nameTableKind: None)
!3 = !DIFile(filename: "caller-save.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
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
!520 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_class", file: !146, line: 1188, baseType: !7, size: 32, elements: !521)
!521 = !{!522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549}
!522 = !DIEnumerator(name: "NO_REGS", value: 0, isUnsigned: true)
!523 = !DIEnumerator(name: "AREG", value: 1, isUnsigned: true)
!524 = !DIEnumerator(name: "DREG", value: 2, isUnsigned: true)
!525 = !DIEnumerator(name: "CREG", value: 3, isUnsigned: true)
!526 = !DIEnumerator(name: "BREG", value: 4, isUnsigned: true)
!527 = !DIEnumerator(name: "SIREG", value: 5, isUnsigned: true)
!528 = !DIEnumerator(name: "DIREG", value: 6, isUnsigned: true)
!529 = !DIEnumerator(name: "AD_REGS", value: 7, isUnsigned: true)
!530 = !DIEnumerator(name: "CLOBBERED_REGS", value: 8, isUnsigned: true)
!531 = !DIEnumerator(name: "Q_REGS", value: 9, isUnsigned: true)
!532 = !DIEnumerator(name: "NON_Q_REGS", value: 10, isUnsigned: true)
!533 = !DIEnumerator(name: "INDEX_REGS", value: 11, isUnsigned: true)
!534 = !DIEnumerator(name: "LEGACY_REGS", value: 12, isUnsigned: true)
!535 = !DIEnumerator(name: "GENERAL_REGS", value: 13, isUnsigned: true)
!536 = !DIEnumerator(name: "FP_TOP_REG", value: 14, isUnsigned: true)
!537 = !DIEnumerator(name: "FP_SECOND_REG", value: 15, isUnsigned: true)
!538 = !DIEnumerator(name: "FLOAT_REGS", value: 16, isUnsigned: true)
!539 = !DIEnumerator(name: "SSE_FIRST_REG", value: 17, isUnsigned: true)
!540 = !DIEnumerator(name: "SSE_REGS", value: 18, isUnsigned: true)
!541 = !DIEnumerator(name: "MMX_REGS", value: 19, isUnsigned: true)
!542 = !DIEnumerator(name: "FP_TOP_SSE_REGS", value: 20, isUnsigned: true)
!543 = !DIEnumerator(name: "FP_SECOND_SSE_REGS", value: 21, isUnsigned: true)
!544 = !DIEnumerator(name: "FLOAT_SSE_REGS", value: 22, isUnsigned: true)
!545 = !DIEnumerator(name: "FLOAT_INT_REGS", value: 23, isUnsigned: true)
!546 = !DIEnumerator(name: "INT_SSE_REGS", value: 24, isUnsigned: true)
!547 = !DIEnumerator(name: "FLOAT_INT_SSE_REGS", value: 25, isUnsigned: true)
!548 = !DIEnumerator(name: "ALL_REGS", value: 26, isUnsigned: true)
!549 = !DIEnumerator(name: "LIM_REG_CLASSES", value: 27, isUnsigned: true)
!550 = !{!551, !552, !553, !554, !557, !558, !560, !5, !377, !563, !555, !1632, !1633, !1642, !1644, !1645, !7, !1646}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!553 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "HARD_REG_ELT_TYPE", file: !561, line: 42, baseType: !562)
!561 = !DIFile(filename: "./hard-reg-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!562 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !564, line: 50, baseType: !565)
!564 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !378, line: 240, size: 384, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !566, file: !378, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !566, file: !378, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !566, file: !378, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !566, file: !378, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !566, file: !378, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !566, file: !378, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !566, file: !378, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !566, file: !378, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !566, file: !378, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !566, file: !378, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !566, file: !378, line: 321, baseType: !579, size: 320, offset: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !378, line: 315, size: 320, elements: !580)
!580 = !{!581, !1567, !1569, !1630, !1631}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !579, file: !378, line: 316, baseType: !582, size: 64)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 64, elements: !598)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !378, line: 183, baseType: !584)
!584 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !378, line: 166, size: 64, elements: !585)
!585 = !{!586, !587, !588, !589, !590, !600, !601, !613, !616, !677, !1545, !1546, !1557, !1564}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !584, file: !378, line: 168, baseType: !553, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !584, file: !378, line: 169, baseType: !7, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !584, file: !378, line: 170, baseType: !558, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !584, file: !378, line: 171, baseType: !563, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !584, file: !378, line: 172, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !564, line: 53, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !378, line: 359, size: 128, elements: !594)
!594 = !{!595, !596}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !593, file: !378, line: 360, baseType: !553, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !593, file: !378, line: 361, baseType: !597, size: 64, offset: 64)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 64, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 1)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !584, file: !378, line: 173, baseType: !5, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !584, file: !378, line: 174, baseType: !602, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !378, line: 133, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 115, size: 32, elements: !604)
!604 = !{!605, !606, !607, !608, !609, !610, !611, !612}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !603, file: !378, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !603, file: !378, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !603, file: !378, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !603, file: !378, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !603, file: !378, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !603, file: !378, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !603, file: !378, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !603, file: !378, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !584, file: !378, line: 175, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !378, line: 175, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !584, file: !378, line: 176, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !619, line: 75, size: 256, elements: !620)
!619 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!620 = !{!621, !635, !636, !637}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !618, file: !619, line: 76, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !619, line: 68, baseType: !624)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !619, line: 63, size: 320, elements: !625)
!625 = !{!626, !628, !629, !630}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !624, file: !619, line: 64, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !624, file: !619, line: 65, baseType: !627, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !624, file: !619, line: 66, baseType: !7, size: 32, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !624, file: !619, line: 67, baseType: !631, size: 128, offset: 192)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 128, elements: !633)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !619, line: 29, baseType: !562)
!633 = !{!634}
!634 = !DISubrange(count: 2)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !618, file: !619, line: 77, baseType: !622, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !618, file: !619, line: 78, baseType: !7, size: 32, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !618, file: !619, line: 79, baseType: !638, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !619, line: 49, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !619, line: 45, size: 832, elements: !641)
!641 = !{!642, !643, !644}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !640, file: !619, line: 46, baseType: !627, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !640, file: !619, line: 47, baseType: !617, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !640, file: !619, line: 48, baseType: !645, size: 704, offset: 128)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !646, line: 164, size: 704, elements: !647)
!646 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!647 = !{!648, !650, !660, !661, !662, !663, !664, !665, !669, !673, !674, !675, !676}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !645, file: !646, line: 166, baseType: !649, size: 64)
!649 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !645, file: !646, line: 167, baseType: !651, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !646, line: 157, size: 192, elements: !653)
!653 = !{!654, !655, !656}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !652, file: !646, line: 159, baseType: !555, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !652, file: !646, line: 160, baseType: !651, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !652, file: !646, line: 161, baseType: !657, size: 32, offset: 128)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 32, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 4)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !645, file: !646, line: 168, baseType: !555, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !645, file: !646, line: 169, baseType: !555, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !645, file: !646, line: 170, baseType: !555, size: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !645, file: !646, line: 171, baseType: !649, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !645, file: !646, line: 172, baseType: !553, size: 32, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !645, file: !646, line: 176, baseType: !666, size: 64, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!651, !557, !649}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !645, file: !646, line: 177, baseType: !670, size: 64, offset: 512)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !557, !651}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !645, file: !646, line: 178, baseType: !557, size: 64, offset: 576)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !645, file: !646, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !645, file: !646, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !645, file: !646, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !584, file: !378, line: 177, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !564, line: 56, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !151, line: 3371, size: 1792, elements: !681)
!681 = !{!682, !715, !721, !732, !751, !762, !767, !774, !780, !793, !805, !843, !848, !876, !884, !885, !890, !899, !905, !910, !914, !918, !1169, !1218, !1224, !1231, !1238, !1264, !1289, !1306, !1318, !1340, !1355, !1527}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !680, file: !151, line: 3372, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !151, line: 360, size: 64, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !683, file: !151, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !683, file: !151, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !683, file: !151, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !683, file: !151, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !683, file: !151, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !683, file: !151, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !683, file: !151, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !683, file: !151, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !683, file: !151, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !683, file: !151, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !683, file: !151, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !683, file: !151, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !683, file: !151, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !683, file: !151, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !683, file: !151, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !683, file: !151, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !683, file: !151, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !683, file: !151, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !683, file: !151, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !683, file: !151, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !683, file: !151, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !683, file: !151, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !683, file: !151, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !683, file: !151, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !683, file: !151, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !683, file: !151, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !683, file: !151, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !683, file: !151, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !683, file: !151, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !683, file: !151, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !680, file: !151, line: 3373, baseType: !716, size: 192)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !151, line: 402, size: 192, elements: !717)
!717 = !{!718, !719, !720}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !716, file: !151, line: 403, baseType: !683, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !716, file: !151, line: 404, baseType: !678, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !716, file: !151, line: 405, baseType: !678, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !680, file: !151, line: 3374, baseType: !722, size: 320)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !151, line: 1384, size: 320, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !722, file: !151, line: 1385, baseType: !716, size: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !722, file: !151, line: 1386, baseType: !726, size: 128, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !727, line: 58, baseType: !728)
!727 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !727, line: 54, size: 128, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !728, file: !727, line: 56, baseType: !562, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !728, file: !727, line: 57, baseType: !649, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !680, file: !151, line: 3375, baseType: !733, size: 256)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !151, line: 1397, size: 256, elements: !734)
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !733, file: !151, line: 1398, baseType: !716, size: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !733, file: !151, line: 1399, baseType: !737, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !739, line: 52, size: 256, elements: !740)
!739 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!740 = !{!741, !742, !743, !744, !745, !746, !747}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !738, file: !739, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !738, file: !739, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !738, file: !739, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !738, file: !739, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !738, file: !739, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !738, file: !739, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !738, file: !739, line: 62, baseType: !748, size: 192, offset: 64)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 192, elements: !749)
!749 = !{!750}
!750 = !DISubrange(count: 3)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !680, file: !151, line: 3376, baseType: !752, size: 256)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !151, line: 1408, size: 256, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !752, file: !151, line: 1409, baseType: !716, size: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !752, file: !151, line: 1410, baseType: !756, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !758, line: 27, size: 192, elements: !759)
!758 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !757, file: !758, line: 29, baseType: !726, size: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !757, file: !758, line: 30, baseType: !5, size: 32, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !680, file: !151, line: 3377, baseType: !763, size: 256)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !151, line: 1437, size: 256, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !763, file: !151, line: 1438, baseType: !716, size: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !763, file: !151, line: 1439, baseType: !678, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !680, file: !151, line: 3378, baseType: !768, size: 256)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !151, line: 1418, size: 256, elements: !769)
!769 = !{!770, !771, !772}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !768, file: !151, line: 1419, baseType: !716, size: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !768, file: !151, line: 1420, baseType: !553, size: 32, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !768, file: !151, line: 1421, baseType: !773, size: 8, offset: 224)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 8, elements: !598)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !680, file: !151, line: 3379, baseType: !775, size: 320)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !151, line: 1428, size: 320, elements: !776)
!776 = !{!777, !778, !779}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !775, file: !151, line: 1429, baseType: !716, size: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !775, file: !151, line: 1430, baseType: !678, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !775, file: !151, line: 1431, baseType: !678, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !680, file: !151, line: 3380, baseType: !781, size: 320)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !151, line: 1460, size: 320, elements: !782)
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !781, file: !151, line: 1461, baseType: !716, size: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !781, file: !151, line: 1462, baseType: !785, size: 128, offset: 192)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !786, line: 31, size: 128, elements: !787)
!786 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!787 = !{!788, !791, !792}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !785, file: !786, line: 32, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !785, file: !786, line: 33, baseType: !7, size: 32, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !785, file: !786, line: 34, baseType: !7, size: 32, offset: 96)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !680, file: !151, line: 3381, baseType: !794, size: 384)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !151, line: 2507, size: 384, elements: !795)
!795 = !{!796, !797, !802, !803, !804}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !794, file: !151, line: 2508, baseType: !716, size: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !794, file: !151, line: 2509, baseType: !798, size: 32, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !799, line: 58, baseType: !800)
!799 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !801, line: 44, baseType: !7)
!801 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!802 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !794, file: !151, line: 2510, baseType: !7, size: 32, offset: 224)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !794, file: !151, line: 2511, baseType: !678, size: 64, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !794, file: !151, line: 2512, baseType: !678, size: 64, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !680, file: !151, line: 3382, baseType: !806, size: 896)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !151, line: 2652, size: 896, elements: !807)
!807 = !{!808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !806, file: !151, line: 2653, baseType: !794, size: 384)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !806, file: !151, line: 2654, baseType: !678, size: 64, offset: 384)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !806, file: !151, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !806, file: !151, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !806, file: !151, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !806, file: !151, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !806, file: !151, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !806, file: !151, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !806, file: !151, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !806, file: !151, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !806, file: !151, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !806, file: !151, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !806, file: !151, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !806, file: !151, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !806, file: !151, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !806, file: !151, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !806, file: !151, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !806, file: !151, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !806, file: !151, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !806, file: !151, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !806, file: !151, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !806, file: !151, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !806, file: !151, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !806, file: !151, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !806, file: !151, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !806, file: !151, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !806, file: !151, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !806, file: !151, line: 2703, baseType: !7, size: 32, offset: 512)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !806, file: !151, line: 2705, baseType: !678, size: 64, offset: 576)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !806, file: !151, line: 2706, baseType: !678, size: 64, offset: 640)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !806, file: !151, line: 2707, baseType: !678, size: 64, offset: 704)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !806, file: !151, line: 2708, baseType: !678, size: 64, offset: 768)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !806, file: !151, line: 2711, baseType: !841, size: 64, offset: 832)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !151, line: 2711, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !680, file: !151, line: 3383, baseType: !844, size: 960)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !151, line: 2756, size: 960, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !844, file: !151, line: 2757, baseType: !806, size: 896)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !844, file: !151, line: 2758, baseType: !563, size: 64, offset: 896)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !680, file: !151, line: 3384, baseType: !849, size: 1472)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !151, line: 3114, size: 1472, elements: !850)
!850 = !{!851, !872, !873, !874, !875}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !849, file: !151, line: 3115, baseType: !852, size: 1216)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !151, line: 2984, size: 1216, elements: !853)
!853 = !{!854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !852, file: !151, line: 2985, baseType: !844, size: 960)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !852, file: !151, line: 2986, baseType: !678, size: 64, offset: 960)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !852, file: !151, line: 2987, baseType: !678, size: 64, offset: 1024)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !852, file: !151, line: 2988, baseType: !678, size: 64, offset: 1088)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !852, file: !151, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !852, file: !151, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !852, file: !151, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !852, file: !151, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !852, file: !151, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !852, file: !151, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !852, file: !151, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !852, file: !151, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !852, file: !151, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !852, file: !151, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !852, file: !151, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !852, file: !151, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !852, file: !151, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !852, file: !151, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !849, file: !151, line: 3117, baseType: !678, size: 64, offset: 1216)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !849, file: !151, line: 3119, baseType: !678, size: 64, offset: 1280)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !849, file: !151, line: 3121, baseType: !678, size: 64, offset: 1344)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !849, file: !151, line: 3123, baseType: !678, size: 64, offset: 1408)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !680, file: !151, line: 3385, baseType: !877, size: 1088)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !151, line: 2874, size: 1088, elements: !878)
!878 = !{!879, !880, !881}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !877, file: !151, line: 2875, baseType: !844, size: 960)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !877, file: !151, line: 2876, baseType: !563, size: 64, offset: 960)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !877, file: !151, line: 2877, baseType: !882, size: 64, offset: 1024)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !151, line: 2856, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !680, file: !151, line: 3386, baseType: !852, size: 1216)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !680, file: !151, line: 3387, baseType: !886, size: 1280)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !151, line: 3093, size: 1280, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !886, file: !151, line: 3094, baseType: !852, size: 1216)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !886, file: !151, line: 3095, baseType: !882, size: 64, offset: 1216)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !680, file: !151, line: 3388, baseType: !891, size: 1216)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !151, line: 2824, size: 1216, elements: !892)
!892 = !{!893, !894, !895, !896, !897, !898}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !891, file: !151, line: 2825, baseType: !806, size: 896)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !891, file: !151, line: 2827, baseType: !678, size: 64, offset: 896)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !891, file: !151, line: 2828, baseType: !678, size: 64, offset: 960)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !891, file: !151, line: 2829, baseType: !678, size: 64, offset: 1024)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !891, file: !151, line: 2830, baseType: !678, size: 64, offset: 1088)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !891, file: !151, line: 2831, baseType: !678, size: 64, offset: 1152)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !680, file: !151, line: 3389, baseType: !900, size: 1024)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !151, line: 2850, size: 1024, elements: !901)
!901 = !{!902, !903, !904}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !900, file: !151, line: 2851, baseType: !844, size: 960)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !900, file: !151, line: 2852, baseType: !553, size: 32, offset: 960)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !900, file: !151, line: 2853, baseType: !553, size: 32, offset: 992)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !680, file: !151, line: 3390, baseType: !906, size: 1024)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !151, line: 2857, size: 1024, elements: !907)
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !906, file: !151, line: 2858, baseType: !844, size: 960)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !906, file: !151, line: 2859, baseType: !882, size: 64, offset: 960)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !680, file: !151, line: 3391, baseType: !911, size: 960)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !151, line: 2862, size: 960, elements: !912)
!912 = !{!913}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !911, file: !151, line: 2863, baseType: !844, size: 960)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !680, file: !151, line: 3392, baseType: !915, size: 1472)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !151, line: 3304, size: 1472, elements: !916)
!916 = !{!917}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !915, file: !151, line: 3305, baseType: !849, size: 1472)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !680, file: !151, line: 3393, baseType: !919, size: 1792)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !151, line: 3248, size: 1792, elements: !920)
!920 = !{!921, !922, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !919, file: !151, line: 3249, baseType: !849, size: 1472)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !919, file: !151, line: 3251, baseType: !923, size: 64, offset: 1472)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !925, line: 463, size: 1152, elements: !926)
!925 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!926 = !{!927, !930, !1034, !1035, !1038, !1041, !1093, !1094, !1095, !1096, !1097, !1121, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !924, file: !925, line: 464, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !925, line: 464, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !924, file: !925, line: 467, baseType: !931, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !135, line: 374, size: 640, elements: !933)
!933 = !{!934, !1009, !1010, !1023, !1024, !1025, !1026, !1027, !1028, !1030, !1032, !1033}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !932, file: !135, line: 377, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !564, line: 111, baseType: !936)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !135, line: 217, size: 832, elements: !938)
!938 = !{!939, !974, !975, !976, !979, !983, !984, !985, !1003, !1004, !1005, !1006, !1007, !1008}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !937, file: !135, line: 219, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !135, line: 151, baseType: !942)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !135, line: 151, size: 128, elements: !943)
!943 = !{!944}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !942, file: !135, line: 151, baseType: !945, size: 128)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !135, line: 150, baseType: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !135, line: 150, size: 128, elements: !947)
!947 = !{!948, !949, !950}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !946, file: !135, line: 150, baseType: !7, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !946, file: !135, line: 150, baseType: !7, size: 32, offset: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !946, file: !135, line: 150, baseType: !951, size: 64, offset: 64)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !952, size: 64, elements: !598)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !564, line: 108, baseType: !953)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !135, line: 122, size: 512, elements: !955)
!955 = !{!956, !957, !958, !966, !967, !968, !969, !970, !971, !972}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !954, file: !135, line: 124, baseType: !936, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !954, file: !135, line: 125, baseType: !936, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !954, file: !135, line: 131, baseType: !959, size: 64, offset: 128)
!959 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !135, line: 128, size: 64, elements: !960)
!960 = !{!961, !965}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !959, file: !135, line: 129, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !564, line: 66, baseType: !963)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !564, line: 65, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !959, file: !135, line: 130, baseType: !563, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !954, file: !135, line: 134, baseType: !557, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !954, file: !135, line: 137, baseType: !678, size: 64, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !954, file: !135, line: 138, baseType: !798, size: 32, offset: 320)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !954, file: !135, line: 142, baseType: !7, size: 32, offset: 352)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !954, file: !135, line: 144, baseType: !553, size: 32, offset: 384)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !954, file: !135, line: 145, baseType: !553, size: 32, offset: 416)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !954, file: !135, line: 146, baseType: !973, size: 64, offset: 448)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !135, line: 119, baseType: !649)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !937, file: !135, line: 220, baseType: !940, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !937, file: !135, line: 223, baseType: !557, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !937, file: !135, line: 226, baseType: !977, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !135, line: 185, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !937, file: !135, line: 229, baseType: !980, size: 128, offset: 256)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !981, size: 128, elements: !633)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !135, line: 229, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !937, file: !135, line: 232, baseType: !936, size: 64, offset: 384)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !937, file: !135, line: 233, baseType: !936, size: 64, offset: 448)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !937, file: !135, line: 238, baseType: !986, size: 64, offset: 512)
!986 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !135, line: 235, size: 64, elements: !987)
!987 = !{!988, !994}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !986, file: !135, line: 236, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !135, line: 273, size: 128, elements: !991)
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !990, file: !135, line: 275, baseType: !962, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !990, file: !135, line: 278, baseType: !962, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !986, file: !135, line: 237, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !135, line: 259, size: 320, elements: !997)
!997 = !{!998, !999, !1000, !1001, !1002}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !996, file: !135, line: 261, baseType: !563, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !996, file: !135, line: 262, baseType: !563, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !996, file: !135, line: 266, baseType: !563, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !996, file: !135, line: 267, baseType: !563, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !996, file: !135, line: 270, baseType: !553, size: 32, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !937, file: !135, line: 241, baseType: !973, size: 64, offset: 576)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !937, file: !135, line: 244, baseType: !553, size: 32, offset: 640)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !937, file: !135, line: 247, baseType: !553, size: 32, offset: 672)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !937, file: !135, line: 250, baseType: !553, size: 32, offset: 704)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !937, file: !135, line: 253, baseType: !553, size: 32, offset: 736)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !937, file: !135, line: 256, baseType: !553, size: 32, offset: 768)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !932, file: !135, line: 378, baseType: !935, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !932, file: !135, line: 381, baseType: !1011, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !135, line: 282, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !135, line: 282, size: 128, elements: !1014)
!1014 = !{!1015}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1013, file: !135, line: 282, baseType: !1016, size: 128)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !135, line: 281, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !135, line: 281, size: 128, elements: !1018)
!1018 = !{!1019, !1020, !1021}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1017, file: !135, line: 281, baseType: !7, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1017, file: !135, line: 281, baseType: !7, size: 32, offset: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1017, file: !135, line: 281, baseType: !1022, size: 64, offset: 64)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !935, size: 64, elements: !598)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !932, file: !135, line: 384, baseType: !553, size: 32, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !932, file: !135, line: 387, baseType: !553, size: 32, offset: 224)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !932, file: !135, line: 390, baseType: !553, size: 32, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !932, file: !135, line: 394, baseType: !1011, size: 64, offset: 320)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !932, file: !135, line: 396, baseType: !134, size: 32, offset: 384)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !932, file: !135, line: 399, baseType: !1029, size: 64, offset: 416)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !633)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !932, file: !135, line: 402, baseType: !1031, size: 64, offset: 480)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !633)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !932, file: !135, line: 406, baseType: !553, size: 32, offset: 544)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !932, file: !135, line: 409, baseType: !553, size: 32, offset: 576)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !924, file: !925, line: 470, baseType: !963, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !924, file: !925, line: 473, baseType: !1036, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !925, line: 166, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !924, file: !925, line: 476, baseType: !1039, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !925, line: 476, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !924, file: !925, line: 479, baseType: !1042, size: 64, offset: 320)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1043, line: 144, baseType: !1044)
!1043 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1043, line: 100, size: 896, elements: !1046)
!1046 = !{!1047, !1055, !1060, !1065, !1067, !1070, !1071, !1072, !1073, !1074, !1079, !1081, !1082, !1087, !1092}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1045, file: !1043, line: 102, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1043, line: 52, baseType: !1049)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1043, line: 47, baseType: !7)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1045, file: !1043, line: 105, baseType: !1056, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1043, line: 59, baseType: !1057)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!553, !1053, !1053}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1045, file: !1043, line: 108, baseType: !1061, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1043, line: 63, baseType: !1062)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !557}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1045, file: !1043, line: 111, baseType: !1066, size: 64, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1045, file: !1043, line: 114, baseType: !1068, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1069, line: 46, baseType: !562)
!1069 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1045, file: !1043, line: 117, baseType: !1068, size: 64, offset: 320)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1045, file: !1043, line: 120, baseType: !1068, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1045, file: !1043, line: 124, baseType: !7, size: 32, offset: 448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1045, file: !1043, line: 128, baseType: !7, size: 32, offset: 480)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1045, file: !1043, line: 131, baseType: !1075, size: 64, offset: 512)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1043, line: 75, baseType: !1076)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!557, !1068, !1068}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1045, file: !1043, line: 132, baseType: !1080, size: 64, offset: 576)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1043, line: 78, baseType: !1062)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1045, file: !1043, line: 135, baseType: !557, size: 64, offset: 640)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1045, file: !1043, line: 136, baseType: !1083, size: 64, offset: 704)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1043, line: 82, baseType: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!557, !557, !1068, !1068}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1045, file: !1043, line: 137, baseType: !1088, size: 64, offset: 768)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1043, line: 83, baseType: !1089)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !557, !557}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1045, file: !1043, line: 141, baseType: !7, size: 32, offset: 832)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !924, file: !925, line: 484, baseType: !678, size: 64, offset: 384)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !924, file: !925, line: 488, baseType: !678, size: 64, offset: 448)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !924, file: !925, line: 493, baseType: !678, size: 64, offset: 512)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !924, file: !925, line: 496, baseType: !678, size: 64, offset: 576)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !924, file: !925, line: 501, baseType: !1098, size: 64, offset: 640)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !146, line: 2355, size: 576, elements: !1100)
!1100 = !{!1101, !1104, !1105, !1106, !1107, !1109, !1110, !1115, !1116, !1117, !1118, !1119, !1120}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1099, file: !146, line: 2356, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !146, line: 2356, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1099, file: !146, line: 2357, baseType: !558, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1099, file: !146, line: 2358, baseType: !553, size: 32, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1099, file: !146, line: 2359, baseType: !553, size: 32, offset: 160)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1099, file: !146, line: 2360, baseType: !1108, size: 128, offset: 192)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 128, elements: !658)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1099, file: !146, line: 2364, baseType: !553, size: 32, offset: 320)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1099, file: !146, line: 2367, baseType: !1111, size: 128, offset: 384)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !146, line: 2349, size: 128, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1111, file: !146, line: 2351, baseType: !563, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1111, file: !146, line: 2352, baseType: !649, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1099, file: !146, line: 2371, baseType: !145, size: 32, offset: 512)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1099, file: !146, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1099, file: !146, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1099, file: !146, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1099, file: !146, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1099, file: !146, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !924, file: !925, line: 504, baseType: !1122, size: 64, offset: 704)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !925, line: 504, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !924, file: !925, line: 507, baseType: !1042, size: 64, offset: 768)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !924, file: !925, line: 510, baseType: !553, size: 32, offset: 832)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !924, file: !925, line: 513, baseType: !553, size: 32, offset: 864)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !924, file: !925, line: 516, baseType: !798, size: 32, offset: 896)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !924, file: !925, line: 519, baseType: !798, size: 32, offset: 928)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !924, file: !925, line: 522, baseType: !7, size: 32, offset: 960)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !924, file: !925, line: 523, baseType: !7, size: 32, offset: 992)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !924, file: !925, line: 528, baseType: !558, size: 64, offset: 1024)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !924, file: !925, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !924, file: !925, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !924, file: !925, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !924, file: !925, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !924, file: !925, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !924, file: !925, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !924, file: !925, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !924, file: !925, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !924, file: !925, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !924, file: !925, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !924, file: !925, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !924, file: !925, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !924, file: !925, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !924, file: !925, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !924, file: !925, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !924, file: !925, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !919, file: !151, line: 3254, baseType: !678, size: 64, offset: 1536)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !919, file: !151, line: 3257, baseType: !678, size: 64, offset: 1600)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !919, file: !151, line: 3258, baseType: !678, size: 64, offset: 1664)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !919, file: !151, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !919, file: !151, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !919, file: !151, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !919, file: !151, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !919, file: !151, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !919, file: !151, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !919, file: !151, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !919, file: !151, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !919, file: !151, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !919, file: !151, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !919, file: !151, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !919, file: !151, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !919, file: !151, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !919, file: !151, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !919, file: !151, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !919, file: !151, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !919, file: !151, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !919, file: !151, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !680, file: !151, line: 3394, baseType: !1170, size: 1344)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !151, line: 2279, size: 1344, elements: !1171)
!1171 = !{!1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1197, !1198, !1199, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1170, file: !151, line: 2280, baseType: !716, size: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1170, file: !151, line: 2281, baseType: !678, size: 64, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1170, file: !151, line: 2282, baseType: !678, size: 64, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1170, file: !151, line: 2283, baseType: !678, size: 64, offset: 320)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1170, file: !151, line: 2284, baseType: !678, size: 64, offset: 384)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1170, file: !151, line: 2285, baseType: !7, size: 32, offset: 448)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1170, file: !151, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1170, file: !151, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1170, file: !151, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1170, file: !151, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1170, file: !151, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1170, file: !151, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1170, file: !151, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1170, file: !151, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1170, file: !151, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1170, file: !151, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1170, file: !151, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1170, file: !151, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1170, file: !151, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1170, file: !151, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1170, file: !151, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1170, file: !151, line: 2305, baseType: !7, size: 32, offset: 512)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1170, file: !151, line: 2306, baseType: !1195, size: 32, offset: 544)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1196, line: 31, baseType: !553)
!1196 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1170, file: !151, line: 2307, baseType: !678, size: 64, offset: 576)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1170, file: !151, line: 2308, baseType: !678, size: 64, offset: 640)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1170, file: !151, line: 2314, baseType: !1200, size: 64, offset: 704)
!1200 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !151, line: 2309, size: 64, elements: !1201)
!1201 = !{!1202, !1203, !1204}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1200, file: !151, line: 2310, baseType: !553, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1200, file: !151, line: 2311, baseType: !558, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1200, file: !151, line: 2312, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !151, line: 2277, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1170, file: !151, line: 2315, baseType: !678, size: 64, offset: 768)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1170, file: !151, line: 2316, baseType: !678, size: 64, offset: 832)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1170, file: !151, line: 2317, baseType: !678, size: 64, offset: 896)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1170, file: !151, line: 2318, baseType: !678, size: 64, offset: 960)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1170, file: !151, line: 2319, baseType: !678, size: 64, offset: 1024)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1170, file: !151, line: 2320, baseType: !678, size: 64, offset: 1088)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1170, file: !151, line: 2321, baseType: !678, size: 64, offset: 1152)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1170, file: !151, line: 2322, baseType: !678, size: 64, offset: 1216)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1170, file: !151, line: 2324, baseType: !1216, size: 64, offset: 1280)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !151, line: 2324, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !680, file: !151, line: 3395, baseType: !1219, size: 320)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !151, line: 1469, size: 320, elements: !1220)
!1220 = !{!1221, !1222, !1223}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1219, file: !151, line: 1470, baseType: !716, size: 192)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1219, file: !151, line: 1471, baseType: !678, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1219, file: !151, line: 1472, baseType: !678, size: 64, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !680, file: !151, line: 3396, baseType: !1225, size: 320)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !151, line: 1482, size: 320, elements: !1226)
!1226 = !{!1227, !1228, !1229}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1225, file: !151, line: 1483, baseType: !716, size: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1225, file: !151, line: 1484, baseType: !553, size: 32, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1225, file: !151, line: 1485, baseType: !1230, size: 64, offset: 256)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, size: 64, elements: !598)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !680, file: !151, line: 3397, baseType: !1232, size: 384)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !151, line: 1829, size: 384, elements: !1233)
!1233 = !{!1234, !1235, !1236, !1237}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1232, file: !151, line: 1830, baseType: !716, size: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1232, file: !151, line: 1831, baseType: !798, size: 32, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1232, file: !151, line: 1832, baseType: !678, size: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1232, file: !151, line: 1835, baseType: !1230, size: 64, offset: 320)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !680, file: !151, line: 3398, baseType: !1239, size: 704)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !151, line: 1898, size: 704, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1247, !1248, !1251}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1239, file: !151, line: 1899, baseType: !716, size: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1239, file: !151, line: 1902, baseType: !678, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1239, file: !151, line: 1905, baseType: !1244, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !564, line: 58, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !564, line: 57, flags: DIFlagFwdDecl)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1239, file: !151, line: 1908, baseType: !7, size: 32, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1239, file: !151, line: 1911, baseType: !1249, size: 64, offset: 384)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !151, line: 1876, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1239, file: !151, line: 1914, baseType: !1252, size: 256, offset: 448)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !151, line: 1883, size: 256, elements: !1253)
!1253 = !{!1254, !1256, !1257, !1262}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1252, file: !151, line: 1884, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1252, file: !151, line: 1885, baseType: !1255, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1252, file: !151, line: 1891, baseType: !1258, size: 64, offset: 128)
!1258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1252, file: !151, line: 1891, size: 64, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1258, file: !151, line: 1891, baseType: !1244, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1258, file: !151, line: 1891, baseType: !678, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1252, file: !151, line: 1892, baseType: !1263, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !680, file: !151, line: 3399, baseType: !1265, size: 704)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !151, line: 2008, size: 704, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1284, !1285, !1286, !1287, !1288}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1265, file: !151, line: 2009, baseType: !716, size: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1265, file: !151, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1265, file: !151, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1265, file: !151, line: 2014, baseType: !798, size: 32, offset: 224)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1265, file: !151, line: 2016, baseType: !678, size: 64, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1265, file: !151, line: 2017, baseType: !1273, size: 64, offset: 320)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !151, line: 183, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !151, line: 183, size: 128, elements: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1275, file: !151, line: 183, baseType: !1278, size: 128)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !151, line: 182, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !151, line: 182, size: 128, elements: !1280)
!1280 = !{!1281, !1282, !1283}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1279, file: !151, line: 182, baseType: !7, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1279, file: !151, line: 182, baseType: !7, size: 32, offset: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1279, file: !151, line: 182, baseType: !1230, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1265, file: !151, line: 2019, baseType: !678, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1265, file: !151, line: 2020, baseType: !678, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1265, file: !151, line: 2021, baseType: !678, size: 64, offset: 512)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1265, file: !151, line: 2022, baseType: !678, size: 64, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1265, file: !151, line: 2023, baseType: !678, size: 64, offset: 640)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !680, file: !151, line: 3400, baseType: !1290, size: 832)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !151, line: 2430, size: 832, elements: !1291)
!1291 = !{!1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1290, file: !151, line: 2431, baseType: !716, size: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1290, file: !151, line: 2433, baseType: !678, size: 64, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1290, file: !151, line: 2434, baseType: !678, size: 64, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1290, file: !151, line: 2435, baseType: !678, size: 64, offset: 320)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1290, file: !151, line: 2436, baseType: !678, size: 64, offset: 384)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1290, file: !151, line: 2437, baseType: !1273, size: 64, offset: 448)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1290, file: !151, line: 2438, baseType: !678, size: 64, offset: 512)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1290, file: !151, line: 2440, baseType: !678, size: 64, offset: 576)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1290, file: !151, line: 2441, baseType: !678, size: 64, offset: 640)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1290, file: !151, line: 2443, baseType: !1302, size: 128, offset: 704)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !151, line: 182, baseType: !1303)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !151, line: 182, size: 128, elements: !1304)
!1304 = !{!1305}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1303, file: !151, line: 182, baseType: !1278, size: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !680, file: !151, line: 3401, baseType: !1307, size: 320)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !151, line: 3327, size: 320, elements: !1308)
!1308 = !{!1309, !1310, !1317}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1307, file: !151, line: 3329, baseType: !716, size: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1307, file: !151, line: 3330, baseType: !1311, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !151, line: 3320, size: 192, elements: !1313)
!1313 = !{!1314, !1315, !1316}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1312, file: !151, line: 3322, baseType: !1311, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1312, file: !151, line: 3323, baseType: !1311, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1312, file: !151, line: 3324, baseType: !678, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1307, file: !151, line: 3331, baseType: !1311, size: 64, offset: 256)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !680, file: !151, line: 3402, baseType: !1319, size: 256)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !151, line: 1540, size: 256, elements: !1320)
!1320 = !{!1321, !1322}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1319, file: !151, line: 1541, baseType: !716, size: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1319, file: !151, line: 1542, baseType: !1323, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !151, line: 1538, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !151, line: 1538, size: 192, elements: !1326)
!1326 = !{!1327}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1325, file: !151, line: 1538, baseType: !1328, size: 192)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !151, line: 1537, baseType: !1329)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !151, line: 1537, size: 192, elements: !1330)
!1330 = !{!1331, !1332, !1333}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1329, file: !151, line: 1537, baseType: !7, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1329, file: !151, line: 1537, baseType: !7, size: 32, offset: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1329, file: !151, line: 1537, baseType: !1334, size: 128, offset: 64)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1335, size: 128, elements: !598)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !151, line: 1535, baseType: !1336)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !151, line: 1532, size: 128, elements: !1337)
!1337 = !{!1338, !1339}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1336, file: !151, line: 1533, baseType: !678, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1336, file: !151, line: 1534, baseType: !678, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !680, file: !151, line: 3403, baseType: !1341, size: 512)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !151, line: 1938, size: 512, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346, !1352, !1353, !1354}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1341, file: !151, line: 1939, baseType: !716, size: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1341, file: !151, line: 1940, baseType: !798, size: 32, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1341, file: !151, line: 1941, baseType: !150, size: 32, offset: 224)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1341, file: !151, line: 1946, baseType: !1347, size: 32, offset: 256)
!1347 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !151, line: 1942, size: 32, elements: !1348)
!1348 = !{!1349, !1350, !1351}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1347, file: !151, line: 1943, baseType: !169, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1347, file: !151, line: 1944, baseType: !176, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1347, file: !151, line: 1945, baseType: !183, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1341, file: !151, line: 1950, baseType: !962, size: 64, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1341, file: !151, line: 1951, baseType: !962, size: 64, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1341, file: !151, line: 1953, baseType: !1230, size: 64, offset: 448)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !680, file: !151, line: 3404, baseType: !1356, size: 1664)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !151, line: 3337, size: 1664, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1356, file: !151, line: 3338, baseType: !716, size: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1356, file: !151, line: 3341, baseType: !1360, size: 1472, offset: 192)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1361, line: 410, size: 1472, elements: !1362)
!1361 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1360, file: !1361, line: 412, baseType: !553, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1360, file: !1361, line: 413, baseType: !553, size: 32, offset: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1360, file: !1361, line: 414, baseType: !553, size: 32, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1360, file: !1361, line: 415, baseType: !553, size: 32, offset: 96)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1360, file: !1361, line: 416, baseType: !553, size: 32, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1360, file: !1361, line: 417, baseType: !553, size: 32, offset: 160)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1360, file: !1361, line: 418, baseType: !552, size: 8, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1360, file: !1361, line: 419, baseType: !552, size: 8, offset: 200)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1360, file: !1361, line: 420, baseType: !1372, size: 8, offset: 208)
!1372 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1360, file: !1361, line: 421, baseType: !1372, size: 8, offset: 216)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1360, file: !1361, line: 422, baseType: !1372, size: 8, offset: 224)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1360, file: !1361, line: 423, baseType: !1372, size: 8, offset: 232)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1360, file: !1361, line: 424, baseType: !1372, size: 8, offset: 240)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1360, file: !1361, line: 425, baseType: !1372, size: 8, offset: 248)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1360, file: !1361, line: 426, baseType: !1372, size: 8, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1360, file: !1361, line: 427, baseType: !1372, size: 8, offset: 264)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1360, file: !1361, line: 428, baseType: !1372, size: 8, offset: 272)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1360, file: !1361, line: 429, baseType: !1372, size: 8, offset: 280)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1360, file: !1361, line: 430, baseType: !1372, size: 8, offset: 288)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1360, file: !1361, line: 431, baseType: !1372, size: 8, offset: 296)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1360, file: !1361, line: 432, baseType: !1372, size: 8, offset: 304)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1360, file: !1361, line: 433, baseType: !1372, size: 8, offset: 312)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1360, file: !1361, line: 434, baseType: !1372, size: 8, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1360, file: !1361, line: 435, baseType: !1372, size: 8, offset: 328)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1360, file: !1361, line: 436, baseType: !1372, size: 8, offset: 336)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1360, file: !1361, line: 437, baseType: !1372, size: 8, offset: 344)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1360, file: !1361, line: 438, baseType: !1372, size: 8, offset: 352)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1360, file: !1361, line: 439, baseType: !1372, size: 8, offset: 360)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1360, file: !1361, line: 440, baseType: !1372, size: 8, offset: 368)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1360, file: !1361, line: 441, baseType: !1372, size: 8, offset: 376)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1360, file: !1361, line: 442, baseType: !1372, size: 8, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1360, file: !1361, line: 443, baseType: !1372, size: 8, offset: 392)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1360, file: !1361, line: 444, baseType: !1372, size: 8, offset: 400)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1360, file: !1361, line: 445, baseType: !1372, size: 8, offset: 408)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1360, file: !1361, line: 446, baseType: !1372, size: 8, offset: 416)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1360, file: !1361, line: 447, baseType: !1372, size: 8, offset: 424)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1360, file: !1361, line: 448, baseType: !1372, size: 8, offset: 432)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1360, file: !1361, line: 449, baseType: !1372, size: 8, offset: 440)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1360, file: !1361, line: 450, baseType: !1372, size: 8, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1360, file: !1361, line: 451, baseType: !1372, size: 8, offset: 456)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1360, file: !1361, line: 452, baseType: !1372, size: 8, offset: 464)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1360, file: !1361, line: 453, baseType: !1372, size: 8, offset: 472)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1360, file: !1361, line: 454, baseType: !1372, size: 8, offset: 480)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1360, file: !1361, line: 455, baseType: !1372, size: 8, offset: 488)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1360, file: !1361, line: 456, baseType: !1372, size: 8, offset: 496)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1360, file: !1361, line: 457, baseType: !1372, size: 8, offset: 504)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1360, file: !1361, line: 458, baseType: !1372, size: 8, offset: 512)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1360, file: !1361, line: 459, baseType: !1372, size: 8, offset: 520)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1360, file: !1361, line: 460, baseType: !1372, size: 8, offset: 528)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1360, file: !1361, line: 461, baseType: !1372, size: 8, offset: 536)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1360, file: !1361, line: 462, baseType: !1372, size: 8, offset: 544)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1360, file: !1361, line: 463, baseType: !1372, size: 8, offset: 552)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1360, file: !1361, line: 464, baseType: !1372, size: 8, offset: 560)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1360, file: !1361, line: 465, baseType: !1372, size: 8, offset: 568)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1360, file: !1361, line: 466, baseType: !1372, size: 8, offset: 576)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1360, file: !1361, line: 467, baseType: !1372, size: 8, offset: 584)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1360, file: !1361, line: 468, baseType: !1372, size: 8, offset: 592)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1360, file: !1361, line: 469, baseType: !1372, size: 8, offset: 600)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1360, file: !1361, line: 470, baseType: !1372, size: 8, offset: 608)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1360, file: !1361, line: 471, baseType: !1372, size: 8, offset: 616)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1360, file: !1361, line: 472, baseType: !1372, size: 8, offset: 624)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1360, file: !1361, line: 473, baseType: !1372, size: 8, offset: 632)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1360, file: !1361, line: 474, baseType: !1372, size: 8, offset: 640)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1360, file: !1361, line: 475, baseType: !1372, size: 8, offset: 648)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1360, file: !1361, line: 476, baseType: !1372, size: 8, offset: 656)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1360, file: !1361, line: 477, baseType: !1372, size: 8, offset: 664)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1360, file: !1361, line: 478, baseType: !1372, size: 8, offset: 672)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1360, file: !1361, line: 479, baseType: !1372, size: 8, offset: 680)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1360, file: !1361, line: 480, baseType: !1372, size: 8, offset: 688)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1360, file: !1361, line: 481, baseType: !1372, size: 8, offset: 696)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1360, file: !1361, line: 482, baseType: !1372, size: 8, offset: 704)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1360, file: !1361, line: 483, baseType: !1372, size: 8, offset: 712)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1360, file: !1361, line: 484, baseType: !1372, size: 8, offset: 720)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1360, file: !1361, line: 485, baseType: !1372, size: 8, offset: 728)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1360, file: !1361, line: 486, baseType: !1372, size: 8, offset: 736)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1360, file: !1361, line: 487, baseType: !1372, size: 8, offset: 744)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1360, file: !1361, line: 488, baseType: !1372, size: 8, offset: 752)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1360, file: !1361, line: 489, baseType: !1372, size: 8, offset: 760)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1360, file: !1361, line: 490, baseType: !1372, size: 8, offset: 768)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1360, file: !1361, line: 491, baseType: !1372, size: 8, offset: 776)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1360, file: !1361, line: 492, baseType: !1372, size: 8, offset: 784)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1360, file: !1361, line: 493, baseType: !1372, size: 8, offset: 792)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1360, file: !1361, line: 494, baseType: !1372, size: 8, offset: 800)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1360, file: !1361, line: 495, baseType: !1372, size: 8, offset: 808)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1360, file: !1361, line: 496, baseType: !1372, size: 8, offset: 816)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1360, file: !1361, line: 497, baseType: !1372, size: 8, offset: 824)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1360, file: !1361, line: 498, baseType: !1372, size: 8, offset: 832)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1360, file: !1361, line: 499, baseType: !1372, size: 8, offset: 840)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1360, file: !1361, line: 500, baseType: !1372, size: 8, offset: 848)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1360, file: !1361, line: 501, baseType: !1372, size: 8, offset: 856)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1360, file: !1361, line: 502, baseType: !1372, size: 8, offset: 864)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1360, file: !1361, line: 503, baseType: !1372, size: 8, offset: 872)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1360, file: !1361, line: 504, baseType: !1372, size: 8, offset: 880)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1360, file: !1361, line: 505, baseType: !1372, size: 8, offset: 888)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1360, file: !1361, line: 506, baseType: !1372, size: 8, offset: 896)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1360, file: !1361, line: 507, baseType: !1372, size: 8, offset: 904)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1360, file: !1361, line: 508, baseType: !1372, size: 8, offset: 912)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1360, file: !1361, line: 509, baseType: !1372, size: 8, offset: 920)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1360, file: !1361, line: 510, baseType: !1372, size: 8, offset: 928)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1360, file: !1361, line: 511, baseType: !1372, size: 8, offset: 936)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1360, file: !1361, line: 512, baseType: !1372, size: 8, offset: 944)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1360, file: !1361, line: 513, baseType: !1372, size: 8, offset: 952)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1360, file: !1361, line: 514, baseType: !1372, size: 8, offset: 960)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1360, file: !1361, line: 515, baseType: !1372, size: 8, offset: 968)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1360, file: !1361, line: 516, baseType: !1372, size: 8, offset: 976)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1360, file: !1361, line: 517, baseType: !1372, size: 8, offset: 984)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1360, file: !1361, line: 518, baseType: !1372, size: 8, offset: 992)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1360, file: !1361, line: 519, baseType: !1372, size: 8, offset: 1000)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1360, file: !1361, line: 520, baseType: !1372, size: 8, offset: 1008)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1360, file: !1361, line: 521, baseType: !1372, size: 8, offset: 1016)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1360, file: !1361, line: 522, baseType: !1372, size: 8, offset: 1024)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1360, file: !1361, line: 523, baseType: !1372, size: 8, offset: 1032)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1360, file: !1361, line: 524, baseType: !1372, size: 8, offset: 1040)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1360, file: !1361, line: 525, baseType: !1372, size: 8, offset: 1048)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1360, file: !1361, line: 526, baseType: !1372, size: 8, offset: 1056)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1360, file: !1361, line: 527, baseType: !1372, size: 8, offset: 1064)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1360, file: !1361, line: 528, baseType: !1372, size: 8, offset: 1072)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1360, file: !1361, line: 529, baseType: !1372, size: 8, offset: 1080)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1360, file: !1361, line: 530, baseType: !1372, size: 8, offset: 1088)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1360, file: !1361, line: 531, baseType: !1372, size: 8, offset: 1096)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1360, file: !1361, line: 532, baseType: !1372, size: 8, offset: 1104)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1360, file: !1361, line: 533, baseType: !1372, size: 8, offset: 1112)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1360, file: !1361, line: 534, baseType: !1372, size: 8, offset: 1120)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1360, file: !1361, line: 535, baseType: !1372, size: 8, offset: 1128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1360, file: !1361, line: 536, baseType: !1372, size: 8, offset: 1136)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1360, file: !1361, line: 537, baseType: !1372, size: 8, offset: 1144)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1360, file: !1361, line: 538, baseType: !1372, size: 8, offset: 1152)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1360, file: !1361, line: 539, baseType: !1372, size: 8, offset: 1160)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1360, file: !1361, line: 540, baseType: !1372, size: 8, offset: 1168)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1360, file: !1361, line: 541, baseType: !1372, size: 8, offset: 1176)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1360, file: !1361, line: 542, baseType: !1372, size: 8, offset: 1184)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1360, file: !1361, line: 543, baseType: !1372, size: 8, offset: 1192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1360, file: !1361, line: 544, baseType: !1372, size: 8, offset: 1200)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1360, file: !1361, line: 545, baseType: !1372, size: 8, offset: 1208)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1360, file: !1361, line: 546, baseType: !1372, size: 8, offset: 1216)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1360, file: !1361, line: 547, baseType: !1372, size: 8, offset: 1224)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1360, file: !1361, line: 548, baseType: !1372, size: 8, offset: 1232)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1360, file: !1361, line: 549, baseType: !1372, size: 8, offset: 1240)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1360, file: !1361, line: 550, baseType: !1372, size: 8, offset: 1248)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1360, file: !1361, line: 551, baseType: !1372, size: 8, offset: 1256)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1360, file: !1361, line: 552, baseType: !1372, size: 8, offset: 1264)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1360, file: !1361, line: 553, baseType: !1372, size: 8, offset: 1272)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1360, file: !1361, line: 554, baseType: !1372, size: 8, offset: 1280)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1360, file: !1361, line: 555, baseType: !1372, size: 8, offset: 1288)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1360, file: !1361, line: 556, baseType: !1372, size: 8, offset: 1296)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1360, file: !1361, line: 557, baseType: !1372, size: 8, offset: 1304)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1360, file: !1361, line: 558, baseType: !1372, size: 8, offset: 1312)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1360, file: !1361, line: 559, baseType: !1372, size: 8, offset: 1320)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1360, file: !1361, line: 560, baseType: !1372, size: 8, offset: 1328)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1360, file: !1361, line: 561, baseType: !1372, size: 8, offset: 1336)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1360, file: !1361, line: 562, baseType: !1372, size: 8, offset: 1344)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1360, file: !1361, line: 563, baseType: !1372, size: 8, offset: 1352)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1360, file: !1361, line: 564, baseType: !1372, size: 8, offset: 1360)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1360, file: !1361, line: 565, baseType: !1372, size: 8, offset: 1368)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1360, file: !1361, line: 566, baseType: !1372, size: 8, offset: 1376)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1360, file: !1361, line: 567, baseType: !1372, size: 8, offset: 1384)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1360, file: !1361, line: 568, baseType: !1372, size: 8, offset: 1392)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1360, file: !1361, line: 569, baseType: !1372, size: 8, offset: 1400)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1360, file: !1361, line: 570, baseType: !1372, size: 8, offset: 1408)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1360, file: !1361, line: 571, baseType: !1372, size: 8, offset: 1416)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1360, file: !1361, line: 572, baseType: !1372, size: 8, offset: 1424)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1360, file: !1361, line: 573, baseType: !1372, size: 8, offset: 1432)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1360, file: !1361, line: 574, baseType: !1372, size: 8, offset: 1440)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !680, file: !151, line: 3405, baseType: !1528, size: 384)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !151, line: 3352, size: 384, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1528, file: !151, line: 3353, baseType: !716, size: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1528, file: !151, line: 3356, baseType: !1532, size: 192, offset: 192)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1361, line: 578, size: 192, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1532, file: !1361, line: 580, baseType: !553, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1532, file: !1361, line: 581, baseType: !553, size: 32, offset: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1532, file: !1361, line: 582, baseType: !553, size: 32, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1532, file: !1361, line: 583, baseType: !553, size: 32, offset: 96)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1532, file: !1361, line: 584, baseType: !552, size: 8, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1532, file: !1361, line: 585, baseType: !552, size: 8, offset: 136)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1532, file: !1361, line: 586, baseType: !552, size: 8, offset: 144)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1532, file: !1361, line: 587, baseType: !552, size: 8, offset: 152)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1532, file: !1361, line: 588, baseType: !552, size: 8, offset: 160)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1532, file: !1361, line: 589, baseType: !552, size: 8, offset: 168)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1532, file: !1361, line: 590, baseType: !552, size: 8, offset: 176)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !584, file: !378, line: 178, baseType: !936, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !584, file: !378, line: 179, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !378, line: 150, baseType: !1549)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !378, line: 142, size: 320, elements: !1550)
!1550 = !{!1551, !1552, !1553, !1554, !1555, !1556}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1549, file: !378, line: 144, baseType: !678, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1549, file: !378, line: 145, baseType: !563, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1549, file: !378, line: 146, baseType: !563, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1549, file: !378, line: 147, baseType: !1195, size: 32, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1549, file: !378, line: 148, baseType: !7, size: 32, offset: 224)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1549, file: !378, line: 149, baseType: !552, size: 8, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !584, file: !378, line: 180, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !378, line: 162, baseType: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !378, line: 159, size: 128, elements: !1561)
!1561 = !{!1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1560, file: !378, line: 160, baseType: !678, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1560, file: !378, line: 161, baseType: !649, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !584, file: !378, line: 181, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !378, line: 181, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !579, file: !378, line: 317, baseType: !1568, size: 64)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !649, size: 64, elements: !598)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !579, file: !378, line: 318, baseType: !1570, size: 320)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !378, line: 188, size: 320, elements: !1571)
!1571 = !{!1572, !1574, !1629}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1570, file: !378, line: 190, baseType: !1573, size: 192)
!1573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 192, elements: !749)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1570, file: !378, line: 193, baseType: !1575, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !378, line: 206, size: 320, elements: !1577)
!1577 = !{!1578, !1614, !1615, !1616, !1628}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1576, file: !378, line: 208, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !564, line: 62, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1582, line: 538, size: 256, elements: !1583)
!1582 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1583 = !{!1584, !1588, !1594, !1605}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1581, file: !1582, line: 539, baseType: !1585, size: 32)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1582, line: 482, size: 32, elements: !1586)
!1586 = !{!1587}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1585, file: !1582, line: 484, baseType: !7, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1581, file: !1582, line: 540, baseType: !1589, size: 192)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1582, line: 488, size: 192, elements: !1590)
!1590 = !{!1591, !1592, !1593}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1589, file: !1582, line: 489, baseType: !1585, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1589, file: !1582, line: 492, baseType: !558, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1589, file: !1582, line: 496, baseType: !678, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1581, file: !1582, line: 541, baseType: !1595, size: 256)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1582, line: 504, size: 256, elements: !1596)
!1596 = !{!1597, !1598, !1603, !1604}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1595, file: !1582, line: 505, baseType: !1585, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1595, file: !1582, line: 509, baseType: !1599, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1582, line: 501, baseType: !1600)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{null, !1053}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1595, file: !1582, line: 510, baseType: !1053, size: 64, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1595, file: !1582, line: 513, baseType: !1579, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1581, file: !1582, line: 542, baseType: !1606, size: 128)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1582, line: 530, size: 128, elements: !1607)
!1607 = !{!1608, !1609}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1606, file: !1582, line: 531, baseType: !1585, size: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1606, file: !1582, line: 534, baseType: !1610, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1582, line: 525, baseType: !1611)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!552, !678, !558, !562, !562}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1576, file: !378, line: 211, baseType: !7, size: 32, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1576, file: !378, line: 214, baseType: !649, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1576, file: !378, line: 224, baseType: !1617, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !378, line: 202, baseType: !1619)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !378, line: 202, size: 128, elements: !1620)
!1620 = !{!1621}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1619, file: !378, line: 202, baseType: !1622, size: 128)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !378, line: 200, baseType: !1623)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !378, line: 200, size: 128, elements: !1624)
!1624 = !{!1625, !1626, !1627}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1623, file: !378, line: 200, baseType: !7, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1623, file: !378, line: 200, baseType: !7, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1623, file: !378, line: 200, baseType: !597, size: 64, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1576, file: !378, line: 234, baseType: !1617, size: 64, offset: 256)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1570, file: !378, line: 197, baseType: !649, size: 64, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !579, file: !378, line: 319, baseType: !738, size: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !579, file: !378, line: 320, baseType: !757, size: 192)
!1632 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "saved_hard_reg", file: !3, line: 328, size: 256, elements: !1635)
!1635 = !{!1636, !1637, !1638, !1639, !1640, !1641}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1634, file: !3, line: 331, baseType: !553, size: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "hard_regno", scope: !1634, file: !3, line: 333, baseType: !553, size: 32, offset: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "call_freq", scope: !1634, file: !3, line: 336, baseType: !553, size: 32, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !1634, file: !3, line: 338, baseType: !563, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "first_p", scope: !1634, file: !3, line: 341, baseType: !553, size: 32, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1634, file: !3, line: 344, baseType: !553, size: 32, offset: 224)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "regset", file: !135, line: 37, baseType: !1647)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !564, line: 47, baseType: !617)
!1648 = !{!1649, !0, !1665, !1667, !1673, !1676, !1678, !1682, !1684, !1686, !1688, !1690, !1692, !1694, !1696, !1698, !1700, !1703, !1705, !1707, !1712}
!1649 = !DIGlobalVariableExpression(var: !1650, expr: !DIExpression())
!1650 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_caller_save_h", scope: !2, file: !1651, line: 24, type: !1652, isLocal: false, isDefinition: true)
!1651 = !DIFile(filename: "./gt-caller-save.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1653, size: 2240, elements: !1663)
!1653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !1655, line: 69, size: 320, elements: !1656)
!1655 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1656 = !{!1657, !1658, !1659, !1660, !1662}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1654, file: !1655, line: 70, baseType: !557, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !1654, file: !1655, line: 71, baseType: !1068, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1654, file: !1655, line: 72, baseType: !1068, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1654, file: !1655, line: 73, baseType: !1661, size: 64, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !1655, line: 65, baseType: !1062)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !1654, file: !1655, line: 74, baseType: !1661, size: 64, offset: 256)
!1663 = !{!1664}
!1664 = !DISubrange(count: 7)
!1665 = !DIGlobalVariableExpression(var: !1666, expr: !DIExpression())
!1666 = distinct !DIGlobalVariable(name: "no_caller_save_reg_set", scope: !2, file: !3, line: 48, type: !560, isLocal: false, isDefinition: true)
!1667 = !DIGlobalVariableExpression(var: !1668, expr: !DIExpression())
!1668 = distinct !DIGlobalVariable(name: "regno_save_mode", scope: !2, file: !3, line: 66, type: !1669, isLocal: true, isDefinition: true)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8480, elements: !1670)
!1670 = !{!1671, !1672}
!1671 = !DISubrange(count: 53)
!1672 = !DISubrange(count: 5)
!1673 = !DIGlobalVariableExpression(var: !1674, expr: !DIExpression())
!1674 = distinct !DIGlobalVariable(name: "regno_save_mem", scope: !2, file: !3, line: 72, type: !1675, isLocal: true, isDefinition: true)
!1675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 16960, elements: !1670)
!1676 = !DIGlobalVariableExpression(var: !1677, expr: !DIExpression())
!1677 = distinct !DIGlobalVariable(name: "save_slots_num", scope: !2, file: !3, line: 75, type: !553, isLocal: true, isDefinition: true)
!1678 = !DIGlobalVariableExpression(var: !1679, expr: !DIExpression())
!1679 = distinct !DIGlobalVariable(name: "save_slots", scope: !2, file: !3, line: 78, type: !1680, isLocal: true, isDefinition: true)
!1680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 3392, elements: !1681)
!1681 = !{!1671}
!1682 = !DIGlobalVariableExpression(var: !1683, expr: !DIExpression())
!1683 = distinct !DIGlobalVariable(name: "hard_regs_saved", scope: !2, file: !3, line: 93, type: !560, isLocal: true, isDefinition: true)
!1684 = !DIGlobalVariableExpression(var: !1685, expr: !DIExpression())
!1685 = distinct !DIGlobalVariable(name: "n_regs_saved", scope: !2, file: !3, line: 97, type: !553, isLocal: true, isDefinition: true)
!1686 = !DIGlobalVariableExpression(var: !1687, expr: !DIExpression())
!1687 = distinct !DIGlobalVariable(name: "referenced_regs", scope: !2, file: !3, line: 101, type: !560, isLocal: true, isDefinition: true)
!1688 = !DIGlobalVariableExpression(var: !1689, expr: !DIExpression())
!1689 = distinct !DIGlobalVariable(name: "savepat", scope: !2, file: !3, line: 130, type: !563, isLocal: true, isDefinition: true)
!1690 = !DIGlobalVariableExpression(var: !1691, expr: !DIExpression())
!1691 = distinct !DIGlobalVariable(name: "restpat", scope: !2, file: !3, line: 131, type: !563, isLocal: true, isDefinition: true)
!1692 = !DIGlobalVariableExpression(var: !1693, expr: !DIExpression())
!1693 = distinct !DIGlobalVariable(name: "test_reg", scope: !2, file: !3, line: 132, type: !563, isLocal: true, isDefinition: true)
!1694 = !DIGlobalVariableExpression(var: !1695, expr: !DIExpression())
!1695 = distinct !DIGlobalVariable(name: "test_mem", scope: !2, file: !3, line: 133, type: !563, isLocal: true, isDefinition: true)
!1696 = !DIGlobalVariableExpression(var: !1697, expr: !DIExpression())
!1697 = distinct !DIGlobalVariable(name: "saveinsn", scope: !2, file: !3, line: 134, type: !563, isLocal: true, isDefinition: true)
!1698 = !DIGlobalVariableExpression(var: !1699, expr: !DIExpression())
!1699 = distinct !DIGlobalVariable(name: "restinsn", scope: !2, file: !3, line: 135, type: !563, isLocal: true, isDefinition: true)
!1700 = !DIGlobalVariableExpression(var: !1701, expr: !DIExpression())
!1701 = distinct !DIGlobalVariable(name: "hard_reg_map", scope: !2, file: !3, line: 348, type: !1702, isLocal: true, isDefinition: true)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1633, size: 3392, elements: !1681)
!1703 = !DIGlobalVariableExpression(var: !1704, expr: !DIExpression())
!1704 = distinct !DIGlobalVariable(name: "saved_regs_num", scope: !2, file: !3, line: 353, type: !553, isLocal: true, isDefinition: true)
!1705 = !DIGlobalVariableExpression(var: !1706, expr: !DIExpression())
!1706 = distinct !DIGlobalVariable(name: "all_saved_regs", scope: !2, file: !3, line: 357, type: !1702, isLocal: true, isDefinition: true)
!1707 = !DIGlobalVariableExpression(var: !1708, expr: !DIExpression())
!1708 = distinct !DIGlobalVariable(name: "cached_reg_save_code", scope: !2, file: !3, line: 87, type: !1709, isLocal: true, isDefinition: true)
!1709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 147552, elements: !1710)
!1710 = !{!1671, !1711}
!1711 = !DISubrange(count: 87)
!1712 = !DIGlobalVariableExpression(var: !1713, expr: !DIExpression())
!1713 = distinct !DIGlobalVariable(name: "cached_reg_restore_code", scope: !2, file: !3, line: 89, type: !1709, isLocal: true, isDefinition: true)
!1714 = !{i32 2, !"Dwarf Version", i32 4}
!1715 = !{i32 2, !"Debug Info Version", i32 3}
!1716 = !{i32 1, !"wchar_size", i32 4}
!1717 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1718 = distinct !DISubprogram(name: "vprintf", scope: !1719, file: !1719, line: 39, type: !1720, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1730)
!1719 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!553, !1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !558)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1729}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1724, file: !3, baseType: !7, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1724, file: !3, baseType: !7, size: 32, offset: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1724, file: !3, baseType: !557, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1724, file: !3, baseType: !557, size: 64, offset: 128)
!1730 = !{!1731, !1732}
!1731 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1718, file: !1719, line: 39, type: !1722)
!1732 = !DILocalVariable(name: "__arg", arg: 2, scope: !1718, file: !1719, line: 39, type: !1723)
!1733 = !DILocation(line: 0, scope: !1718)
!1734 = !DILocation(line: 41, column: 20, scope: !1718)
!1735 = !DILocation(line: 41, column: 10, scope: !1718)
!1736 = !DILocation(line: 41, column: 3, scope: !1718)
!1737 = distinct !DISubprogram(name: "getchar", scope: !1719, file: !1719, line: 47, type: !1738, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1740)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!553}
!1740 = !{}
!1741 = !DILocation(line: 49, column: 16, scope: !1737)
!1742 = !DILocation(line: 49, column: 10, scope: !1737)
!1743 = !DILocation(line: 49, column: 3, scope: !1737)
!1744 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1719, file: !1719, line: 56, type: !1745, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1797)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!553, !1747}
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1749, line: 7, baseType: !1750)
!1749 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1751, line: 49, size: 1728, elements: !1752)
!1751 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1752 = !{!1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1768, !1770, !1771, !1772, !1775, !1776, !1777, !1778, !1781, !1783, !1786, !1789, !1790, !1791, !1792, !1793}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1750, file: !1751, line: 51, baseType: !553, size: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1750, file: !1751, line: 54, baseType: !555, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1750, file: !1751, line: 55, baseType: !555, size: 64, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1750, file: !1751, line: 56, baseType: !555, size: 64, offset: 192)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1750, file: !1751, line: 57, baseType: !555, size: 64, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1750, file: !1751, line: 58, baseType: !555, size: 64, offset: 320)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1750, file: !1751, line: 59, baseType: !555, size: 64, offset: 384)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1750, file: !1751, line: 60, baseType: !555, size: 64, offset: 448)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1750, file: !1751, line: 61, baseType: !555, size: 64, offset: 512)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1750, file: !1751, line: 64, baseType: !555, size: 64, offset: 576)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1750, file: !1751, line: 65, baseType: !555, size: 64, offset: 640)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1750, file: !1751, line: 66, baseType: !555, size: 64, offset: 704)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1750, file: !1751, line: 68, baseType: !1766, size: 64, offset: 768)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1751, line: 36, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1750, file: !1751, line: 70, baseType: !1769, size: 64, offset: 832)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1750, file: !1751, line: 72, baseType: !553, size: 32, offset: 896)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1750, file: !1751, line: 73, baseType: !553, size: 32, offset: 928)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1750, file: !1751, line: 74, baseType: !1773, size: 64, offset: 960)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1774, line: 152, baseType: !649)
!1774 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1750, file: !1751, line: 77, baseType: !1632, size: 16, offset: 1024)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1750, file: !1751, line: 78, baseType: !1372, size: 8, offset: 1040)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1750, file: !1751, line: 79, baseType: !773, size: 8, offset: 1048)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1750, file: !1751, line: 81, baseType: !1779, size: 64, offset: 1088)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1751, line: 43, baseType: null)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1750, file: !1751, line: 89, baseType: !1782, size: 64, offset: 1152)
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1774, line: 153, baseType: !649)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1750, file: !1751, line: 91, baseType: !1784, size: 64, offset: 1216)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1751, line: 37, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1750, file: !1751, line: 92, baseType: !1787, size: 64, offset: 1280)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1751, line: 38, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1750, file: !1751, line: 93, baseType: !1769, size: 64, offset: 1344)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1750, file: !1751, line: 94, baseType: !557, size: 64, offset: 1408)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1750, file: !1751, line: 95, baseType: !1068, size: 64, offset: 1472)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1750, file: !1751, line: 96, baseType: !553, size: 32, offset: 1536)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1750, file: !1751, line: 98, baseType: !1794, size: 160, offset: 1568)
!1794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 160, elements: !1795)
!1795 = !{!1796}
!1796 = !DISubrange(count: 20)
!1797 = !{!1798}
!1798 = !DILocalVariable(name: "__fp", arg: 1, scope: !1744, file: !1719, line: 56, type: !1747)
!1799 = !DILocation(line: 0, scope: !1744)
!1800 = !DILocation(line: 58, column: 10, scope: !1744)
!1801 = !DILocation(line: 58, column: 3, scope: !1744)
!1802 = distinct !DISubprogram(name: "getc_unlocked", scope: !1719, file: !1719, line: 66, type: !1745, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1803)
!1803 = !{!1804}
!1804 = !DILocalVariable(name: "__fp", arg: 1, scope: !1802, file: !1719, line: 66, type: !1747)
!1805 = !DILocation(line: 0, scope: !1802)
!1806 = !DILocation(line: 68, column: 10, scope: !1802)
!1807 = !DILocation(line: 68, column: 3, scope: !1802)
!1808 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1719, file: !1719, line: 73, type: !1738, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1740)
!1809 = !DILocation(line: 75, column: 10, scope: !1808)
!1810 = !DILocation(line: 75, column: 3, scope: !1808)
!1811 = distinct !DISubprogram(name: "putchar", scope: !1719, file: !1719, line: 82, type: !1812, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1814)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!553, !553}
!1814 = !{!1815}
!1815 = !DILocalVariable(name: "__c", arg: 1, scope: !1811, file: !1719, line: 82, type: !553)
!1816 = !DILocation(line: 0, scope: !1811)
!1817 = !DILocation(line: 84, column: 21, scope: !1811)
!1818 = !DILocation(line: 84, column: 10, scope: !1811)
!1819 = !DILocation(line: 84, column: 3, scope: !1811)
!1820 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1719, file: !1719, line: 91, type: !1821, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1823)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!553, !553, !1747}
!1823 = !{!1824, !1825}
!1824 = !DILocalVariable(name: "__c", arg: 1, scope: !1820, file: !1719, line: 91, type: !553)
!1825 = !DILocalVariable(name: "__stream", arg: 2, scope: !1820, file: !1719, line: 91, type: !1747)
!1826 = !DILocation(line: 0, scope: !1820)
!1827 = !DILocation(line: 93, column: 10, scope: !1820)
!1828 = !DILocation(line: 93, column: 3, scope: !1820)
!1829 = distinct !DISubprogram(name: "putc_unlocked", scope: !1719, file: !1719, line: 101, type: !1821, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1830)
!1830 = !{!1831, !1832}
!1831 = !DILocalVariable(name: "__c", arg: 1, scope: !1829, file: !1719, line: 101, type: !553)
!1832 = !DILocalVariable(name: "__stream", arg: 2, scope: !1829, file: !1719, line: 101, type: !1747)
!1833 = !DILocation(line: 0, scope: !1829)
!1834 = !DILocation(line: 103, column: 10, scope: !1829)
!1835 = !DILocation(line: 103, column: 3, scope: !1829)
!1836 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1719, file: !1719, line: 108, type: !1812, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1837)
!1837 = !{!1838}
!1838 = !DILocalVariable(name: "__c", arg: 1, scope: !1836, file: !1719, line: 108, type: !553)
!1839 = !DILocation(line: 0, scope: !1836)
!1840 = !DILocation(line: 110, column: 10, scope: !1836)
!1841 = !DILocation(line: 110, column: 3, scope: !1836)
!1842 = distinct !DISubprogram(name: "getline", scope: !1719, file: !1719, line: 118, type: !1843, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1847)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!1845, !554, !1846, !1747}
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1774, line: 193, baseType: !649)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1847 = !{!1848, !1849, !1850}
!1848 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1842, file: !1719, line: 118, type: !554)
!1849 = !DILocalVariable(name: "__n", arg: 2, scope: !1842, file: !1719, line: 118, type: !1846)
!1850 = !DILocalVariable(name: "__stream", arg: 3, scope: !1842, file: !1719, line: 118, type: !1747)
!1851 = !DILocation(line: 0, scope: !1842)
!1852 = !DILocation(line: 120, column: 10, scope: !1842)
!1853 = !DILocation(line: 120, column: 3, scope: !1842)
!1854 = distinct !DISubprogram(name: "feof_unlocked", scope: !1719, file: !1719, line: 128, type: !1745, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1855)
!1855 = !{!1856}
!1856 = !DILocalVariable(name: "__stream", arg: 1, scope: !1854, file: !1719, line: 128, type: !1747)
!1857 = !DILocation(line: 0, scope: !1854)
!1858 = !DILocation(line: 130, column: 10, scope: !1854)
!1859 = !DILocation(line: 130, column: 3, scope: !1854)
!1860 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1719, file: !1719, line: 135, type: !1745, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1861)
!1861 = !{!1862}
!1862 = !DILocalVariable(name: "__stream", arg: 1, scope: !1860, file: !1719, line: 135, type: !1747)
!1863 = !DILocation(line: 0, scope: !1860)
!1864 = !DILocation(line: 137, column: 10, scope: !1860)
!1865 = !DILocation(line: 137, column: 3, scope: !1860)
!1866 = distinct !DISubprogram(name: "tolower", scope: !1867, file: !1867, line: 207, type: !1812, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1868)
!1867 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1868 = !{!1869}
!1869 = !DILocalVariable(name: "__c", arg: 1, scope: !1866, file: !1867, line: 207, type: !553)
!1870 = !DILocation(line: 0, scope: !1866)
!1871 = !DILocation(line: 209, column: 22, scope: !1866)
!1872 = !DILocation(line: 209, column: 39, scope: !1866)
!1873 = !DILocation(line: 209, column: 38, scope: !1866)
!1874 = !DILocation(line: 209, column: 37, scope: !1866)
!1875 = !DILocation(line: 209, column: 10, scope: !1866)
!1876 = !DILocation(line: 209, column: 3, scope: !1866)
!1877 = distinct !DISubprogram(name: "toupper", scope: !1867, file: !1867, line: 213, type: !1812, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1878)
!1878 = !{!1879}
!1879 = !DILocalVariable(name: "__c", arg: 1, scope: !1877, file: !1867, line: 213, type: !553)
!1880 = !DILocation(line: 0, scope: !1877)
!1881 = !DILocation(line: 215, column: 22, scope: !1877)
!1882 = !DILocation(line: 215, column: 39, scope: !1877)
!1883 = !DILocation(line: 215, column: 38, scope: !1877)
!1884 = !DILocation(line: 215, column: 37, scope: !1877)
!1885 = !DILocation(line: 215, column: 10, scope: !1877)
!1886 = !DILocation(line: 215, column: 3, scope: !1877)
!1887 = distinct !DISubprogram(name: "atoi", scope: !1888, file: !1888, line: 361, type: !1889, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1891)
!1888 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!553, !558}
!1891 = !{!1892}
!1892 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1887, file: !1888, line: 361, type: !558)
!1893 = !DILocation(line: 0, scope: !1887)
!1894 = !DILocation(line: 363, column: 16, scope: !1887)
!1895 = !DILocation(line: 363, column: 10, scope: !1887)
!1896 = !DILocation(line: 363, column: 3, scope: !1887)
!1897 = distinct !DISubprogram(name: "atol", scope: !1888, file: !1888, line: 366, type: !1898, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1900)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!649, !558}
!1900 = !{!1901}
!1901 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1897, file: !1888, line: 366, type: !558)
!1902 = !DILocation(line: 0, scope: !1897)
!1903 = !DILocation(line: 368, column: 10, scope: !1897)
!1904 = !DILocation(line: 368, column: 3, scope: !1897)
!1905 = distinct !DISubprogram(name: "atoll", scope: !1888, file: !1888, line: 373, type: !1906, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1909)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!1908, !558}
!1908 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1909 = !{!1910}
!1910 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1905, file: !1888, line: 373, type: !558)
!1911 = !DILocation(line: 0, scope: !1905)
!1912 = !DILocation(line: 375, column: 10, scope: !1905)
!1913 = !DILocation(line: 375, column: 3, scope: !1905)
!1914 = distinct !DISubprogram(name: "bsearch", scope: !1915, file: !1915, line: 20, type: !1916, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1919)
!1915 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!557, !1053, !1053, !1068, !1068, !1918}
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1888, line: 808, baseType: !1057)
!1919 = !{!1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929}
!1920 = !DILocalVariable(name: "__key", arg: 1, scope: !1914, file: !1915, line: 20, type: !1053)
!1921 = !DILocalVariable(name: "__base", arg: 2, scope: !1914, file: !1915, line: 20, type: !1053)
!1922 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1914, file: !1915, line: 20, type: !1068)
!1923 = !DILocalVariable(name: "__size", arg: 4, scope: !1914, file: !1915, line: 20, type: !1068)
!1924 = !DILocalVariable(name: "__compar", arg: 5, scope: !1914, file: !1915, line: 21, type: !1918)
!1925 = !DILocalVariable(name: "__l", scope: !1914, file: !1915, line: 23, type: !1068)
!1926 = !DILocalVariable(name: "__u", scope: !1914, file: !1915, line: 23, type: !1068)
!1927 = !DILocalVariable(name: "__idx", scope: !1914, file: !1915, line: 23, type: !1068)
!1928 = !DILocalVariable(name: "__p", scope: !1914, file: !1915, line: 24, type: !1053)
!1929 = !DILocalVariable(name: "__comparison", scope: !1914, file: !1915, line: 25, type: !553)
!1930 = !DILocation(line: 0, scope: !1914)
!1931 = !DILocation(line: 29, column: 3, scope: !1914)
!1932 = !DILocation(line: 27, column: 7, scope: !1914)
!1933 = !DILocation(line: 29, column: 14, scope: !1914)
!1934 = !DILocation(line: 31, column: 20, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1914, file: !1915, line: 30, column: 5)
!1936 = !DILocation(line: 31, column: 27, scope: !1935)
!1937 = !DILocation(line: 32, column: 56, scope: !1935)
!1938 = !DILocation(line: 32, column: 47, scope: !1935)
!1939 = !DILocation(line: 33, column: 22, scope: !1935)
!1940 = !DILocation(line: 34, column: 24, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1935, file: !1915, line: 34, column: 11)
!1942 = !DILocation(line: 34, column: 11, scope: !1935)
!1943 = !DILocation(line: 36, column: 29, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1941, file: !1915, line: 36, column: 16)
!1945 = !DILocation(line: 36, column: 16, scope: !1941)
!1946 = !DILocation(line: 37, column: 14, scope: !1944)
!1947 = distinct !{!1947, !1931, !1948}
!1948 = !DILocation(line: 40, column: 5, scope: !1914)
!1949 = !DILocation(line: 43, column: 1, scope: !1914)
!1950 = distinct !DISubprogram(name: "atof", scope: !1951, file: !1951, line: 25, type: !1952, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!1951 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!1954, !558}
!1954 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1955 = !{!1956}
!1956 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1950, file: !1951, line: 25, type: !558)
!1957 = !DILocation(line: 0, scope: !1950)
!1958 = !DILocation(line: 27, column: 10, scope: !1950)
!1959 = !DILocation(line: 27, column: 3, scope: !1950)
!1960 = distinct !DISubprogram(name: "strtoimax", scope: !1961, file: !1961, line: 324, type: !1962, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1968)
!1961 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!1964, !1722, !1967, !553}
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1965, line: 101, baseType: !1966)
!1965 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1774, line: 72, baseType: !649)
!1967 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !554)
!1968 = !{!1969, !1970, !1971}
!1969 = !DILocalVariable(name: "nptr", arg: 1, scope: !1960, file: !1961, line: 324, type: !1722)
!1970 = !DILocalVariable(name: "endptr", arg: 2, scope: !1960, file: !1961, line: 324, type: !1967)
!1971 = !DILocalVariable(name: "base", arg: 3, scope: !1960, file: !1961, line: 324, type: !553)
!1972 = !DILocation(line: 0, scope: !1960)
!1973 = !DILocation(line: 327, column: 10, scope: !1960)
!1974 = !DILocation(line: 327, column: 3, scope: !1960)
!1975 = distinct !DISubprogram(name: "strtoumax", scope: !1961, file: !1961, line: 336, type: !1976, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1980)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!1978, !1722, !1967, !553}
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1965, line: 102, baseType: !1979)
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1774, line: 73, baseType: !562)
!1980 = !{!1981, !1982, !1983}
!1981 = !DILocalVariable(name: "nptr", arg: 1, scope: !1975, file: !1961, line: 336, type: !1722)
!1982 = !DILocalVariable(name: "endptr", arg: 2, scope: !1975, file: !1961, line: 336, type: !1967)
!1983 = !DILocalVariable(name: "base", arg: 3, scope: !1975, file: !1961, line: 336, type: !553)
!1984 = !DILocation(line: 0, scope: !1975)
!1985 = !DILocation(line: 339, column: 10, scope: !1975)
!1986 = !DILocation(line: 339, column: 3, scope: !1975)
!1987 = distinct !DISubprogram(name: "wcstoimax", scope: !1961, file: !1961, line: 348, type: !1988, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1997)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!1964, !1990, !1994, !553}
!1990 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1991)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1993)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1961, line: 34, baseType: !553)
!1994 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1995)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1997 = !{!1998, !1999, !2000}
!1998 = !DILocalVariable(name: "nptr", arg: 1, scope: !1987, file: !1961, line: 348, type: !1990)
!1999 = !DILocalVariable(name: "endptr", arg: 2, scope: !1987, file: !1961, line: 348, type: !1994)
!2000 = !DILocalVariable(name: "base", arg: 3, scope: !1987, file: !1961, line: 348, type: !553)
!2001 = !DILocation(line: 0, scope: !1987)
!2002 = !DILocation(line: 351, column: 10, scope: !1987)
!2003 = !DILocation(line: 351, column: 3, scope: !1987)
!2004 = distinct !DISubprogram(name: "wcstoumax", scope: !1961, file: !1961, line: 362, type: !2005, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2007)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!1978, !1990, !1994, !553}
!2007 = !{!2008, !2009, !2010}
!2008 = !DILocalVariable(name: "nptr", arg: 1, scope: !2004, file: !1961, line: 362, type: !1990)
!2009 = !DILocalVariable(name: "endptr", arg: 2, scope: !2004, file: !1961, line: 362, type: !1994)
!2010 = !DILocalVariable(name: "base", arg: 3, scope: !2004, file: !1961, line: 362, type: !553)
!2011 = !DILocation(line: 0, scope: !2004)
!2012 = !DILocation(line: 365, column: 10, scope: !2004)
!2013 = !DILocation(line: 365, column: 3, scope: !2004)
!2014 = distinct !DISubprogram(name: "stat", scope: !2015, file: !2015, line: 453, type: !2016, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2053)
!2015 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!553, !558, !2018}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2020, line: 46, size: 1152, elements: !2021)
!2020 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2021 = !{!2022, !2024, !2026, !2028, !2030, !2032, !2034, !2035, !2036, !2037, !2039, !2041, !2049, !2050, !2051}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2019, file: !2020, line: 48, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1774, line: 145, baseType: !562)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2019, file: !2020, line: 53, baseType: !2025, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1774, line: 148, baseType: !562)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2019, file: !2020, line: 61, baseType: !2027, size: 64, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1774, line: 151, baseType: !562)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2019, file: !2020, line: 62, baseType: !2029, size: 32, offset: 192)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1774, line: 150, baseType: !7)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2019, file: !2020, line: 64, baseType: !2031, size: 32, offset: 224)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1774, line: 146, baseType: !7)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2019, file: !2020, line: 65, baseType: !2033, size: 32, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1774, line: 147, baseType: !7)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2019, file: !2020, line: 67, baseType: !553, size: 32, offset: 288)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2019, file: !2020, line: 69, baseType: !2023, size: 64, offset: 320)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2019, file: !2020, line: 74, baseType: !1773, size: 64, offset: 384)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2019, file: !2020, line: 78, baseType: !2038, size: 64, offset: 448)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1774, line: 174, baseType: !649)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2019, file: !2020, line: 80, baseType: !2040, size: 64, offset: 512)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1774, line: 179, baseType: !649)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2019, file: !2020, line: 91, baseType: !2042, size: 128, offset: 576)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2043, line: 10, size: 128, elements: !2044)
!2043 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2044 = !{!2045, !2047}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2042, file: !2043, line: 12, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1774, line: 160, baseType: !649)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2042, file: !2043, line: 16, baseType: !2048, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1774, line: 196, baseType: !649)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2019, file: !2020, line: 92, baseType: !2042, size: 128, offset: 704)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2019, file: !2020, line: 93, baseType: !2042, size: 128, offset: 832)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2019, file: !2020, line: 106, baseType: !2052, size: 192, offset: 960)
!2052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2048, size: 192, elements: !749)
!2053 = !{!2054, !2055}
!2054 = !DILocalVariable(name: "__path", arg: 1, scope: !2014, file: !2015, line: 453, type: !558)
!2055 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2014, file: !2015, line: 453, type: !2018)
!2056 = !DILocation(line: 0, scope: !2014)
!2057 = !DILocation(line: 455, column: 10, scope: !2014)
!2058 = !DILocation(line: 455, column: 3, scope: !2014)
!2059 = distinct !DISubprogram(name: "lstat", scope: !2015, file: !2015, line: 460, type: !2016, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2060)
!2060 = !{!2061, !2062}
!2061 = !DILocalVariable(name: "__path", arg: 1, scope: !2059, file: !2015, line: 460, type: !558)
!2062 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2059, file: !2015, line: 460, type: !2018)
!2063 = !DILocation(line: 0, scope: !2059)
!2064 = !DILocation(line: 462, column: 10, scope: !2059)
!2065 = !DILocation(line: 462, column: 3, scope: !2059)
!2066 = distinct !DISubprogram(name: "fstat", scope: !2015, file: !2015, line: 467, type: !2067, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2069)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!553, !553, !2018}
!2069 = !{!2070, !2071}
!2070 = !DILocalVariable(name: "__fd", arg: 1, scope: !2066, file: !2015, line: 467, type: !553)
!2071 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2066, file: !2015, line: 467, type: !2018)
!2072 = !DILocation(line: 0, scope: !2066)
!2073 = !DILocation(line: 469, column: 10, scope: !2066)
!2074 = !DILocation(line: 469, column: 3, scope: !2066)
!2075 = distinct !DISubprogram(name: "fstatat", scope: !2015, file: !2015, line: 474, type: !2076, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2078)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!553, !553, !558, !2018, !553}
!2078 = !{!2079, !2080, !2081, !2082}
!2079 = !DILocalVariable(name: "__fd", arg: 1, scope: !2075, file: !2015, line: 474, type: !553)
!2080 = !DILocalVariable(name: "__filename", arg: 2, scope: !2075, file: !2015, line: 474, type: !558)
!2081 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2075, file: !2015, line: 474, type: !2018)
!2082 = !DILocalVariable(name: "__flag", arg: 4, scope: !2075, file: !2015, line: 474, type: !553)
!2083 = !DILocation(line: 0, scope: !2075)
!2084 = !DILocation(line: 477, column: 10, scope: !2075)
!2085 = !DILocation(line: 477, column: 3, scope: !2075)
!2086 = distinct !DISubprogram(name: "mknod", scope: !2015, file: !2015, line: 483, type: !2087, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!553, !558, !2029, !2023}
!2089 = !{!2090, !2091, !2092}
!2090 = !DILocalVariable(name: "__path", arg: 1, scope: !2086, file: !2015, line: 483, type: !558)
!2091 = !DILocalVariable(name: "__mode", arg: 2, scope: !2086, file: !2015, line: 483, type: !2029)
!2092 = !DILocalVariable(name: "__dev", arg: 3, scope: !2086, file: !2015, line: 483, type: !2023)
!2093 = !DILocation(line: 0, scope: !2086)
!2094 = !DILocation(line: 485, column: 10, scope: !2086)
!2095 = !DILocation(line: 485, column: 3, scope: !2086)
!2096 = distinct !DISubprogram(name: "mknodat", scope: !2015, file: !2015, line: 491, type: !2097, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!553, !553, !558, !2029, !2023}
!2099 = !{!2100, !2101, !2102, !2103}
!2100 = !DILocalVariable(name: "__fd", arg: 1, scope: !2096, file: !2015, line: 491, type: !553)
!2101 = !DILocalVariable(name: "__path", arg: 2, scope: !2096, file: !2015, line: 491, type: !558)
!2102 = !DILocalVariable(name: "__mode", arg: 3, scope: !2096, file: !2015, line: 491, type: !2029)
!2103 = !DILocalVariable(name: "__dev", arg: 4, scope: !2096, file: !2015, line: 491, type: !2023)
!2104 = !DILocation(line: 0, scope: !2096)
!2105 = !DILocation(line: 494, column: 10, scope: !2096)
!2106 = !DILocation(line: 494, column: 3, scope: !2096)
!2107 = distinct !DISubprogram(name: "stat64", scope: !2015, file: !2015, line: 502, type: !2108, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2130)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!553, !558, !2110}
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2020, line: 119, size: 1152, elements: !2112)
!2112 = !{!2113, !2114, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2126, !2127, !2128, !2129}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2111, file: !2020, line: 121, baseType: !2023, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2111, file: !2020, line: 123, baseType: !2115, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1774, line: 149, baseType: !562)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2111, file: !2020, line: 124, baseType: !2027, size: 64, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2111, file: !2020, line: 125, baseType: !2029, size: 32, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2111, file: !2020, line: 132, baseType: !2031, size: 32, offset: 224)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2111, file: !2020, line: 133, baseType: !2033, size: 32, offset: 256)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2111, file: !2020, line: 135, baseType: !553, size: 32, offset: 288)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2111, file: !2020, line: 136, baseType: !2023, size: 64, offset: 320)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2111, file: !2020, line: 137, baseType: !1773, size: 64, offset: 384)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2111, file: !2020, line: 143, baseType: !2038, size: 64, offset: 448)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2111, file: !2020, line: 144, baseType: !2125, size: 64, offset: 512)
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1774, line: 180, baseType: !649)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2111, file: !2020, line: 152, baseType: !2042, size: 128, offset: 576)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2111, file: !2020, line: 153, baseType: !2042, size: 128, offset: 704)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2111, file: !2020, line: 154, baseType: !2042, size: 128, offset: 832)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2111, file: !2020, line: 164, baseType: !2052, size: 192, offset: 960)
!2130 = !{!2131, !2132}
!2131 = !DILocalVariable(name: "__path", arg: 1, scope: !2107, file: !2015, line: 502, type: !558)
!2132 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2107, file: !2015, line: 502, type: !2110)
!2133 = !DILocation(line: 0, scope: !2107)
!2134 = !DILocation(line: 504, column: 10, scope: !2107)
!2135 = !DILocation(line: 504, column: 3, scope: !2107)
!2136 = distinct !DISubprogram(name: "lstat64", scope: !2015, file: !2015, line: 509, type: !2108, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2137)
!2137 = !{!2138, !2139}
!2138 = !DILocalVariable(name: "__path", arg: 1, scope: !2136, file: !2015, line: 509, type: !558)
!2139 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2136, file: !2015, line: 509, type: !2110)
!2140 = !DILocation(line: 0, scope: !2136)
!2141 = !DILocation(line: 511, column: 10, scope: !2136)
!2142 = !DILocation(line: 511, column: 3, scope: !2136)
!2143 = distinct !DISubprogram(name: "fstat64", scope: !2015, file: !2015, line: 516, type: !2144, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!553, !553, !2110}
!2146 = !{!2147, !2148}
!2147 = !DILocalVariable(name: "__fd", arg: 1, scope: !2143, file: !2015, line: 516, type: !553)
!2148 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2143, file: !2015, line: 516, type: !2110)
!2149 = !DILocation(line: 0, scope: !2143)
!2150 = !DILocation(line: 518, column: 10, scope: !2143)
!2151 = !DILocation(line: 518, column: 3, scope: !2143)
!2152 = distinct !DISubprogram(name: "fstatat64", scope: !2015, file: !2015, line: 523, type: !2153, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2155)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!553, !553, !558, !2110, !553}
!2155 = !{!2156, !2157, !2158, !2159}
!2156 = !DILocalVariable(name: "__fd", arg: 1, scope: !2152, file: !2015, line: 523, type: !553)
!2157 = !DILocalVariable(name: "__filename", arg: 2, scope: !2152, file: !2015, line: 523, type: !558)
!2158 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2152, file: !2015, line: 523, type: !2110)
!2159 = !DILocalVariable(name: "__flag", arg: 4, scope: !2152, file: !2015, line: 523, type: !553)
!2160 = !DILocation(line: 0, scope: !2152)
!2161 = !DILocation(line: 526, column: 10, scope: !2152)
!2162 = !DILocation(line: 526, column: 3, scope: !2152)
!2163 = distinct !DISubprogram(name: "init_caller_save", scope: !3, file: !3, line: 207, type: !2164, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{null}
!2166 = !{!2167, !2168, !2169, !2170, !2171}
!2167 = !DILocalVariable(name: "addr_reg", scope: !2163, file: !3, line: 209, type: !563)
!2168 = !DILocalVariable(name: "offset", scope: !2163, file: !3, line: 210, type: !553)
!2169 = !DILocalVariable(name: "address", scope: !2163, file: !3, line: 211, type: !563)
!2170 = !DILocalVariable(name: "i", scope: !2163, file: !3, line: 212, type: !553)
!2171 = !DILocalVariable(name: "j", scope: !2163, file: !3, line: 212, type: !553)
!2172 = !DILocation(line: 214, column: 7, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 214, column: 7)
!2174 = !DILocation(line: 214, column: 7, scope: !2163)
!2175 = !DILocation(line: 217, column: 29, scope: !2163)
!2176 = !DILocation(line: 219, column: 3, scope: !2163)
!2177 = !DILocation(line: 0, scope: !2163)
!2178 = !DILocation(line: 224, column: 8, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 224, column: 3)
!2180 = !DILocation(line: 0, scope: !2179)
!2181 = !DILocation(line: 224, column: 17, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 224, column: 3)
!2183 = !DILocation(line: 224, column: 3, scope: !2179)
!2184 = !DILocation(line: 254, column: 3, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 254, column: 3)
!2186 = !DILocation(line: 226, column: 11, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 226, column: 11)
!2188 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 225, column: 5)
!2189 = !DILocation(line: 227, column: 11, scope: !2187)
!2190 = !DILocation(line: 227, column: 15, scope: !2187)
!2191 = !DILocation(line: 226, column: 11, scope: !2188)
!2192 = !DILocation(line: 0, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 230, column: 6)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 229, column: 4)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 229, column: 4)
!2196 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 228, column: 2)
!2197 = !DILocation(line: 229, column: 4, scope: !2195)
!2198 = !DILocation(line: 229, column: 18, scope: !2194)
!2199 = !DILocation(line: 231, column: 8, scope: !2193)
!2200 = !DILocation(line: 231, column: 30, scope: !2193)
!2201 = !DILocation(line: 233, column: 51, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 233, column: 12)
!2203 = !DILocation(line: 233, column: 46, scope: !2202)
!2204 = !DILocation(line: 235, column: 5, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 234, column: 3)
!2206 = !DILocation(line: 236, column: 3, scope: !2205)
!2207 = !DILocation(line: 229, column: 38, scope: !2194)
!2208 = !DILocation(line: 229, column: 4, scope: !2194)
!2209 = distinct !{!2209, !2197, !2210}
!2210 = !DILocation(line: 237, column: 6, scope: !2195)
!2211 = !DILocation(line: 224, column: 43, scope: !2182)
!2212 = !DILocation(line: 0, scope: !2195)
!2213 = !DILocation(line: 231, column: 32, scope: !2193)
!2214 = !DILocation(line: 233, column: 34, scope: !2202)
!2215 = !DILocation(line: 240, column: 2, scope: !2187)
!2216 = !DILocation(line: 240, column: 24, scope: !2187)
!2217 = !DILocation(line: 224, column: 3, scope: !2182)
!2218 = distinct !{!2218, !2183, !2219}
!2219 = !DILocation(line: 241, column: 5, scope: !2179)
!2220 = !DILocation(line: 0, scope: !2185)
!2221 = !DILocation(line: 254, column: 17, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 254, column: 3)
!2223 = !DILocation(line: 255, column: 9, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 255, column: 9)
!2225 = !DILocation(line: 255, column: 9, scope: !2222)
!2226 = !DILocation(line: 254, column: 43, scope: !2222)
!2227 = !DILocation(line: 254, column: 3, scope: !2222)
!2228 = distinct !{!2228, !2184, !2229}
!2229 = !DILocation(line: 258, column: 7, scope: !2185)
!2230 = !DILocation(line: 260, column: 3, scope: !2163)
!2231 = !DILocation(line: 262, column: 14, scope: !2163)
!2232 = !DILocation(line: 264, column: 8, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 264, column: 3)
!2234 = !DILocation(line: 0, scope: !2233)
!2235 = !DILocation(line: 264, column: 3, scope: !2233)
!2236 = !DILocation(line: 266, column: 17, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 265, column: 5)
!2238 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 264, column: 3)
!2239 = !DILocation(line: 268, column: 12, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 268, column: 7)
!2241 = !DILocation(line: 0, scope: !2240)
!2242 = !DILocation(line: 268, column: 7, scope: !2240)
!2243 = !DILocation(line: 268, column: 21, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 268, column: 7)
!2245 = !DILocation(line: 269, column: 6, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 269, column: 6)
!2247 = !DILocation(line: 269, column: 28, scope: !2246)
!2248 = !DILocation(line: 270, column: 4, scope: !2246)
!2249 = !DILocation(line: 270, column: 9, scope: !2246)
!2250 = !DILocation(line: 269, column: 6, scope: !2244)
!2251 = !DILocation(line: 268, column: 47, scope: !2244)
!2252 = !DILocation(line: 268, column: 7, scope: !2244)
!2253 = distinct !{!2253, !2242, !2254}
!2254 = !DILocation(line: 271, column: 4, scope: !2240)
!2255 = !DILocation(line: 273, column: 13, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 273, column: 11)
!2257 = !DILocation(line: 273, column: 11, scope: !2237)
!2258 = !DILocation(line: 264, column: 62, scope: !2238)
!2259 = !DILocation(line: 264, column: 3, scope: !2238)
!2260 = distinct !{!2260, !2235, !2261}
!2261 = !DILocation(line: 275, column: 5, scope: !2233)
!2262 = !DILocation(line: 278, column: 7, scope: !2163)
!2263 = !DILocation(line: 287, column: 14, scope: !2163)
!2264 = !DILocation(line: 287, column: 12, scope: !2163)
!2265 = !DILocation(line: 288, column: 14, scope: !2163)
!2266 = !DILocation(line: 288, column: 12, scope: !2163)
!2267 = !DILocation(line: 289, column: 13, scope: !2163)
!2268 = !DILocation(line: 289, column: 11, scope: !2163)
!2269 = !DILocation(line: 290, column: 13, scope: !2163)
!2270 = !DILocation(line: 290, column: 11, scope: !2163)
!2271 = !DILocation(line: 292, column: 14, scope: !2163)
!2272 = !DILocation(line: 292, column: 12, scope: !2163)
!2273 = !DILocation(line: 293, column: 14, scope: !2163)
!2274 = !DILocation(line: 293, column: 12, scope: !2163)
!2275 = !DILocation(line: 295, column: 8, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 295, column: 3)
!2277 = !DILocation(line: 0, scope: !2276)
!2278 = !DILocation(line: 295, column: 17, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 295, column: 3)
!2280 = !DILocation(line: 295, column: 3, scope: !2276)
!2281 = !DILocation(line: 0, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 301, column: 6)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 300, column: 8)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 298, column: 2)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 297, column: 11)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 296, column: 5)
!2287 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 296, column: 5)
!2288 = !DILocation(line: 0, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 303, column: 12)
!2290 = !DILocation(line: 296, column: 5, scope: !2287)
!2291 = !DILocation(line: 0, scope: !2287)
!2292 = !DILocation(line: 296, column: 19, scope: !2286)
!2293 = !DILocation(line: 297, column: 28, scope: !2285)
!2294 = !DILocation(line: 297, column: 11, scope: !2285)
!2295 = !DILocation(line: 297, column: 51, scope: !2285)
!2296 = !DILocation(line: 297, column: 11, scope: !2286)
!2297 = !DILocation(line: 299, column: 26, scope: !2284)
!2298 = !DILocation(line: 300, column: 10, scope: !2283)
!2299 = !DILocation(line: 300, column: 8, scope: !2284)
!2300 = !DILocation(line: 302, column: 8, scope: !2282)
!2301 = !DILocation(line: 303, column: 12, scope: !2289)
!2302 = !DILocation(line: 303, column: 12, scope: !2282)
!2303 = !DILocation(line: 304, column: 3, scope: !2289)
!2304 = !DILocation(line: 296, column: 39, scope: !2286)
!2305 = !DILocation(line: 296, column: 5, scope: !2286)
!2306 = distinct !{!2306, !2290, !2307}
!2307 = !DILocation(line: 306, column: 2, scope: !2287)
!2308 = !DILocation(line: 295, column: 43, scope: !2279)
!2309 = !DILocation(line: 295, column: 3, scope: !2279)
!2310 = distinct !{!2310, !2280, !2311}
!2311 = !DILocation(line: 306, column: 2, scope: !2276)
!2312 = !DILocation(line: 307, column: 1, scope: !2163)
!2313 = distinct !DISubprogram(name: "base_reg_class", scope: !2314, file: !2314, line: 25, type: !2315, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2317)
!2314 = !DIFile(filename: "./addresses.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!520, !5, !377, !377}
!2317 = !{!2318, !2319, !2320}
!2318 = !DILocalVariable(name: "mode", arg: 1, scope: !2313, file: !2314, line: 25, type: !5)
!2319 = !DILocalVariable(name: "outer_code", arg: 2, scope: !2313, file: !2314, line: 26, type: !377)
!2320 = !DILocalVariable(name: "index_code", arg: 3, scope: !2313, file: !2314, line: 27, type: !377)
!2321 = !DILocation(line: 0, scope: !2313)
!2322 = !DILocation(line: 39, column: 3, scope: !2313)
!2323 = distinct !DISubprogram(name: "reg_save_code", scope: !3, file: !3, line: 139, type: !2324, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2326)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!553, !553, !5}
!2326 = !{!2327, !2328, !2329}
!2327 = !DILocalVariable(name: "reg", arg: 1, scope: !2323, file: !3, line: 139, type: !553)
!2328 = !DILocalVariable(name: "mode", arg: 2, scope: !2323, file: !3, line: 139, type: !5)
!2329 = !DILocalVariable(name: "ok", scope: !2323, file: !3, line: 141, type: !552)
!2330 = !DILocation(line: 0, scope: !2323)
!2331 = !DILocation(line: 142, column: 7, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 142, column: 7)
!2333 = !DILocation(line: 142, column: 7, scope: !2323)
!2334 = !DILocation(line: 143, column: 6, scope: !2332)
!2335 = !DILocation(line: 144, column: 8, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 144, column: 7)
!2337 = !DILocation(line: 144, column: 7, scope: !2323)
!2338 = !DILocation(line: 146, column: 40, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 145, column: 6)
!2340 = !DILocation(line: 147, column: 8, scope: !2339)
!2341 = !DILocation(line: 147, column: 43, scope: !2339)
!2342 = !DILocation(line: 148, column: 8, scope: !2339)
!2343 = !DILocation(line: 153, column: 3, scope: !2323)
!2344 = !DILocation(line: 154, column: 3, scope: !2323)
!2345 = !DILocation(line: 155, column: 3, scope: !2323)
!2346 = !DILocation(line: 158, column: 3, scope: !2323)
!2347 = !DILocation(line: 158, column: 24, scope: !2323)
!2348 = !DILocation(line: 159, column: 3, scope: !2323)
!2349 = !DILocation(line: 159, column: 24, scope: !2323)
!2350 = !DILocation(line: 161, column: 37, scope: !2323)
!2351 = !DILocation(line: 161, column: 35, scope: !2323)
!2352 = !DILocation(line: 162, column: 56, scope: !2323)
!2353 = !DILocation(line: 162, column: 40, scope: !2323)
!2354 = !DILocation(line: 162, column: 3, scope: !2323)
!2355 = !DILocation(line: 162, column: 38, scope: !2323)
!2356 = !DILocation(line: 166, column: 9, scope: !2323)
!2357 = !DILocation(line: 166, column: 41, scope: !2323)
!2358 = !DILocation(line: 167, column: 2, scope: !2323)
!2359 = !DILocation(line: 167, column: 40, scope: !2323)
!2360 = !DILocation(line: 168, column: 7, scope: !2323)
!2361 = !DILocation(line: 170, column: 21, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 169, column: 5)
!2363 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 168, column: 7)
!2364 = !DILocation(line: 170, column: 7, scope: !2362)
!2365 = !DILocation(line: 171, column: 12, scope: !2362)
!2366 = !DILocation(line: 172, column: 21, scope: !2362)
!2367 = !DILocation(line: 172, column: 7, scope: !2362)
!2368 = !DILocation(line: 173, column: 13, scope: !2362)
!2369 = !DILocation(line: 173, column: 10, scope: !2362)
!2370 = !DILocation(line: 174, column: 5, scope: !2362)
!2371 = !DILocation(line: 176, column: 7, scope: !2323)
!2372 = !DILocation(line: 181, column: 3, scope: !2323)
!2373 = !DILocation(line: 178, column: 39, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 177, column: 5)
!2375 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 176, column: 7)
!2376 = !DILocation(line: 179, column: 42, scope: !2374)
!2377 = !DILocation(line: 180, column: 5, scope: !2374)
!2378 = !DILocation(line: 182, column: 10, scope: !2323)
!2379 = !DILocation(line: 182, column: 3, scope: !2323)
!2380 = !DILocation(line: 183, column: 1, scope: !2323)
!2381 = distinct !DISubprogram(name: "init_save_areas", scope: !3, file: !3, line: 314, type: !2164, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2382)
!2382 = !{!2383, !2384}
!2383 = !DILocalVariable(name: "i", scope: !2381, file: !3, line: 316, type: !553)
!2384 = !DILocalVariable(name: "j", scope: !2381, file: !3, line: 316, type: !553)
!2385 = !DILocation(line: 0, scope: !2381)
!2386 = !DILocation(line: 318, column: 8, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 318, column: 3)
!2388 = !DILocation(line: 0, scope: !2387)
!2389 = !DILocation(line: 318, column: 17, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 318, column: 3)
!2391 = !DILocation(line: 318, column: 3, scope: !2387)
!2392 = !DILocation(line: 319, column: 5, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 319, column: 5)
!2394 = !DILocation(line: 0, scope: !2393)
!2395 = !DILocation(line: 319, column: 19, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 319, column: 5)
!2397 = !DILocation(line: 320, column: 7, scope: !2396)
!2398 = !DILocation(line: 320, column: 28, scope: !2396)
!2399 = !DILocation(line: 319, column: 39, scope: !2396)
!2400 = !DILocation(line: 319, column: 5, scope: !2396)
!2401 = distinct !{!2401, !2392, !2402}
!2402 = !DILocation(line: 320, column: 30, scope: !2393)
!2403 = !DILocation(line: 318, column: 43, scope: !2390)
!2404 = !DILocation(line: 318, column: 3, scope: !2390)
!2405 = distinct !{!2405, !2391, !2406}
!2406 = !DILocation(line: 320, column: 30, scope: !2387)
!2407 = !DILocation(line: 321, column: 18, scope: !2381)
!2408 = !DILocation(line: 323, column: 1, scope: !2381)
!2409 = distinct !DISubprogram(name: "setup_save_areas", scope: !3, file: !3, line: 440, type: !2164, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2410)
!2410 = !{!2411, !2412, !2413, !2414, !2415, !2416, !2421, !2422, !2425, !2426, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2471, !2472, !2473, !2474, !2481, !2482, !2489, !2490}
!2411 = !DILocalVariable(name: "i", scope: !2409, file: !3, line: 442, type: !553)
!2412 = !DILocalVariable(name: "j", scope: !2409, file: !3, line: 442, type: !553)
!2413 = !DILocalVariable(name: "k", scope: !2409, file: !3, line: 442, type: !553)
!2414 = !DILocalVariable(name: "r", scope: !2409, file: !3, line: 443, type: !7)
!2415 = !DILocalVariable(name: "hard_regs_used", scope: !2409, file: !3, line: 444, type: !560)
!2416 = !DILocalVariable(name: "regno", scope: !2417, file: !3, line: 455, type: !7)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 454, column: 7)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 453, column: 9)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 452, column: 3)
!2420 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 452, column: 3)
!2421 = !DILocalVariable(name: "endregno", scope: !2417, file: !3, line: 456, type: !7)
!2422 = !DILocalVariable(name: "insn", scope: !2423, file: !3, line: 465, type: !563)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 464, column: 5)
!2424 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 463, column: 7)
!2425 = !DILocalVariable(name: "slot", scope: !2423, file: !3, line: 465, type: !563)
!2426 = !DILocalVariable(name: "chain", scope: !2423, file: !3, line: 466, type: !2427)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "insn_chain", file: !2429, line: 200, size: 1024, elements: !2430)
!2429 = !DIFile(filename: "./reload.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2430 = !{!2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2443, !2444, !2447, !2448}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2428, file: !2429, line: 203, baseType: !2427, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2428, file: !2429, line: 203, baseType: !2427, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "next_need_reload", scope: !2428, file: !2429, line: 207, baseType: !2427, size: 64, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2428, file: !2429, line: 210, baseType: !563, size: 64, offset: 192)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2428, file: !2429, line: 213, baseType: !553, size: 32, offset: 256)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "need_reload", scope: !2428, file: !2429, line: 216, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "need_operand_change", scope: !2428, file: !2429, line: 219, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "need_elim", scope: !2428, file: !2429, line: 221, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "is_caller_save_insn", scope: !2428, file: !2429, line: 223, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "live_throughout", scope: !2428, file: !2429, line: 228, baseType: !2441, size: 256, offset: 320)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "regset_head", file: !135, line: 34, baseType: !2442)
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_head", file: !619, line: 84, baseType: !618)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dead_or_set", scope: !2428, file: !2429, line: 229, baseType: !2441, size: 256, offset: 576)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "rld", scope: !2428, file: !2429, line: 232, baseType: !2445, size: 64, offset: 832)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DICompositeType(tag: DW_TAG_structure_type, name: "reload", file: !2429, line: 232, flags: DIFlagFwdDecl)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "n_reloads", scope: !2428, file: !2429, line: 233, baseType: !553, size: 32, offset: 896)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "used_spill_regs", scope: !2428, file: !2429, line: 236, baseType: !560, size: 64, offset: 960)
!2449 = !DILocalVariable(name: "next", scope: !2423, file: !3, line: 466, type: !2427)
!2450 = !DILocalVariable(name: "saved_reg_conflicts", scope: !2423, file: !3, line: 467, type: !555)
!2451 = !DILocalVariable(name: "regno", scope: !2423, file: !3, line: 468, type: !7)
!2452 = !DILocalVariable(name: "next_k", scope: !2423, file: !3, line: 469, type: !553)
!2453 = !DILocalVariable(name: "freq", scope: !2423, file: !3, line: 469, type: !553)
!2454 = !DILocalVariable(name: "saved_reg", scope: !2423, file: !3, line: 470, type: !1633)
!2455 = !DILocalVariable(name: "saved_reg2", scope: !2423, file: !3, line: 470, type: !1633)
!2456 = !DILocalVariable(name: "saved_reg3", scope: !2423, file: !3, line: 470, type: !1633)
!2457 = !DILocalVariable(name: "call_saved_regs_num", scope: !2423, file: !3, line: 471, type: !553)
!2458 = !DILocalVariable(name: "call_saved_regs", scope: !2423, file: !3, line: 472, type: !1702)
!2459 = !DILocalVariable(name: "hard_regs_to_save", scope: !2423, file: !3, line: 473, type: !560)
!2460 = !DILocalVariable(name: "used_regs", scope: !2423, file: !3, line: 473, type: !560)
!2461 = !DILocalVariable(name: "this_insn_sets", scope: !2423, file: !3, line: 473, type: !560)
!2462 = !DILocalVariable(name: "rsi", scope: !2423, file: !3, line: 474, type: !2463)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_set_iterator", file: !135, line: 90, baseType: !2464)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !619, line: 218, baseType: !2465)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !619, line: 203, size: 256, elements: !2466)
!2466 = !{!2467, !2468, !2469, !2470}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !2465, file: !619, line: 206, baseType: !622, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !2465, file: !619, line: 209, baseType: !622, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !2465, file: !619, line: 212, baseType: !7, size: 32, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2465, file: !619, line: 217, baseType: !632, size: 64, offset: 192)
!2471 = !DILocalVariable(name: "best_slot_num", scope: !2423, file: !3, line: 475, type: !553)
!2472 = !DILocalVariable(name: "prev_save_slots_num", scope: !2423, file: !3, line: 476, type: !553)
!2473 = !DILocalVariable(name: "prev_save_slots", scope: !2423, file: !3, line: 477, type: !1680)
!2474 = !DILocalVariable(name: "r", scope: !2475, file: !3, line: 519, type: !553)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 518, column: 6)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 516, column: 4)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 516, column: 4)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 482, column: 2)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 481, column: 7)
!2480 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 481, column: 7)
!2481 = !DILocalVariable(name: "bound", scope: !2475, file: !3, line: 520, type: !553)
!2482 = !DILocalVariable(name: "r", scope: !2483, file: !3, line: 577, type: !553)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 576, column: 6)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 574, column: 4)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 574, column: 4)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 541, column: 2)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 540, column: 7)
!2488 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 540, column: 7)
!2489 = !DILocalVariable(name: "bound", scope: !2483, file: !3, line: 578, type: !553)
!2490 = !DILocalVariable(name: "do_save", scope: !2491, file: !3, line: 706, type: !553)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 705, column: 4)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 704, column: 2)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 704, column: 2)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 703, column: 7)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 703, column: 7)
!2496 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 698, column: 5)
!2497 = !DILocation(line: 0, scope: !2409)
!2498 = !DILocation(line: 452, column: 8, scope: !2420)
!2499 = !DILocation(line: 451, column: 3, scope: !2409)
!2500 = !DILocation(line: 452, column: 39, scope: !2419)
!2501 = !DILocation(line: 452, column: 37, scope: !2419)
!2502 = !DILocation(line: 452, column: 3, scope: !2420)
!2503 = !DILocation(line: 453, column: 9, scope: !2418)
!2504 = !DILocation(line: 453, column: 25, scope: !2418)
!2505 = !DILocation(line: 453, column: 30, scope: !2418)
!2506 = !DILocation(line: 453, column: 33, scope: !2418)
!2507 = !DILocation(line: 453, column: 57, scope: !2418)
!2508 = !DILocation(line: 453, column: 9, scope: !2419)
!2509 = !DILocation(line: 455, column: 23, scope: !2417)
!2510 = !DILocation(line: 0, scope: !2417)
!2511 = !DILocation(line: 457, column: 22, scope: !2417)
!2512 = !DILocation(line: 457, column: 6, scope: !2417)
!2513 = !DILocation(line: 458, column: 7, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 458, column: 2)
!2515 = !DILocation(line: 458, column: 20, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 458, column: 2)
!2517 = !DILocation(line: 458, column: 2, scope: !2514)
!2518 = !DILocation(line: 459, column: 8, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 459, column: 8)
!2520 = !DILocation(line: 459, column: 8, scope: !2516)
!2521 = !DILocation(line: 458, column: 33, scope: !2516)
!2522 = !DILocation(line: 458, column: 2, scope: !2516)
!2523 = distinct !{!2523, !2517, !2524}
!2524 = !DILocation(line: 460, column: 6, scope: !2514)
!2525 = !DILocation(line: 452, column: 51, scope: !2419)
!2526 = !DILocation(line: 452, column: 3, scope: !2419)
!2527 = distinct !{!2527, !2502, !2528}
!2528 = !DILocation(line: 461, column: 7, scope: !2420)
!2529 = !DILocation(line: 463, column: 7, scope: !2424)
!2530 = !DILocation(line: 463, column: 19, scope: !2424)
!2531 = !DILocation(line: 463, column: 16, scope: !2424)
!2532 = !DILocation(line: 703, column: 7, scope: !2495)
!2533 = !DILocation(line: 468, column: 7, scope: !2423)
!2534 = !DILocation(line: 472, column: 7, scope: !2423)
!2535 = !DILocation(line: 472, column: 30, scope: !2423)
!2536 = !DILocation(line: 473, column: 7, scope: !2423)
!2537 = !DILocation(line: 474, column: 7, scope: !2423)
!2538 = !DILocation(line: 477, column: 7, scope: !2423)
!2539 = !DILocation(line: 477, column: 11, scope: !2423)
!2540 = !DILocation(line: 479, column: 7, scope: !2423)
!2541 = !DILocation(line: 481, column: 20, scope: !2480)
!2542 = !DILocation(line: 0, scope: !2423)
!2543 = !DILocation(line: 481, column: 12, scope: !2480)
!2544 = !DILocation(line: 0, scope: !2480)
!2545 = !DILocation(line: 481, column: 45, scope: !2479)
!2546 = !DILocation(line: 481, column: 7, scope: !2480)
!2547 = !DILocation(line: 483, column: 18, scope: !2478)
!2548 = !DILocation(line: 484, column: 18, scope: !2478)
!2549 = !DILocation(line: 485, column: 9, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 485, column: 8)
!2551 = !DILocation(line: 486, column: 8, scope: !2550)
!2552 = !DILocation(line: 486, column: 11, scope: !2550)
!2553 = !DILocation(line: 485, column: 8, scope: !2478)
!2554 = !DILocation(line: 488, column: 11, scope: !2478)
!2555 = !DILocation(line: 489, column: 4, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 489, column: 4)
!2557 = !DILocation(line: 491, column: 4, scope: !2478)
!2558 = !DILocation(line: 498, column: 4, scope: !2478)
!2559 = !DILocation(line: 499, column: 17, scope: !2478)
!2560 = !DILocation(line: 499, column: 4, scope: !2478)
!2561 = !DILocation(line: 501, column: 8, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 501, column: 8)
!2563 = !DILocation(line: 501, column: 39, scope: !2562)
!2564 = !DILocation(line: 501, column: 33, scope: !2562)
!2565 = !DILocation(line: 501, column: 30, scope: !2562)
!2566 = !DILocation(line: 502, column: 6, scope: !2562)
!2567 = !DILocation(line: 504, column: 4, scope: !2478)
!2568 = !DILocation(line: 505, column: 4, scope: !2478)
!2569 = !DILocation(line: 506, column: 4, scope: !2478)
!2570 = !DILocation(line: 507, column: 9, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 507, column: 4)
!2572 = !DILocation(line: 0, scope: !2571)
!2573 = !DILocation(line: 507, column: 26, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 507, column: 4)
!2575 = !DILocation(line: 507, column: 4, scope: !2571)
!2576 = !DILocation(line: 508, column: 10, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 508, column: 10)
!2578 = !DILocation(line: 508, column: 10, scope: !2574)
!2579 = !DILocation(line: 510, column: 7, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 510, column: 7)
!2581 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 509, column: 8)
!2582 = !DILocation(line: 510, column: 27, scope: !2580)
!2583 = !DILocation(line: 510, column: 7, scope: !2581)
!2584 = !DILocation(line: 511, column: 26, scope: !2580)
!2585 = !DILocation(line: 511, column: 36, scope: !2580)
!2586 = !DILocation(line: 511, column: 5, scope: !2580)
!2587 = !DILocation(line: 513, column: 17, scope: !2580)
!2588 = !DILocation(line: 507, column: 56, scope: !2574)
!2589 = !DILocation(line: 507, column: 4, scope: !2574)
!2590 = distinct !{!2590, !2575, !2591}
!2591 = !DILocation(line: 514, column: 8, scope: !2571)
!2592 = !DILocation(line: 516, column: 4, scope: !2477)
!2593 = !DILocation(line: 516, column: 4, scope: !2476)
!2594 = !DILocation(line: 519, column: 16, scope: !2475)
!2595 = !DILocation(line: 519, column: 29, scope: !2475)
!2596 = !DILocation(line: 0, scope: !2475)
!2597 = !DILocation(line: 522, column: 14, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 522, column: 12)
!2599 = !DILocation(line: 522, column: 12, scope: !2475)
!2600 = !DILocation(line: 525, column: 20, scope: !2475)
!2601 = !DILocation(line: 525, column: 40, scope: !2475)
!2602 = !DILocation(line: 525, column: 18, scope: !2475)
!2603 = !DILocation(line: 526, column: 8, scope: !2475)
!2604 = !DILocation(line: 526, column: 17, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 526, column: 8)
!2606 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 526, column: 8)
!2607 = !DILocation(line: 526, column: 8, scope: !2606)
!2608 = !DILocation(line: 527, column: 7, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 527, column: 7)
!2610 = !DILocation(line: 527, column: 7, scope: !2605)
!2611 = !DILocation(line: 529, column: 11, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 529, column: 11)
!2613 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 528, column: 5)
!2614 = !DILocation(line: 529, column: 27, scope: !2612)
!2615 = !DILocation(line: 529, column: 11, scope: !2613)
!2616 = !DILocation(line: 530, column: 26, scope: !2612)
!2617 = !DILocation(line: 530, column: 36, scope: !2612)
!2618 = !DILocation(line: 530, column: 9, scope: !2612)
!2619 = !DILocation(line: 532, column: 21, scope: !2612)
!2620 = !DILocation(line: 533, column: 7, scope: !2613)
!2621 = !DILocation(line: 534, column: 5, scope: !2613)
!2622 = !DILocation(line: 526, column: 27, scope: !2605)
!2623 = !DILocation(line: 526, column: 8, scope: !2605)
!2624 = distinct !{!2624, !2607, !2625}
!2625 = !DILocation(line: 534, column: 5, scope: !2606)
!2626 = distinct !{!2626, !2592, !2627}
!2627 = !DILocation(line: 535, column: 6, scope: !2477)
!2628 = !DILocation(line: 481, column: 7, scope: !2479)
!2629 = distinct !{!2629, !2546, !2630}
!2630 = !DILocation(line: 536, column: 2, scope: !2480)
!2631 = !DILocation(line: 538, column: 47, scope: !2423)
!2632 = !DILocation(line: 538, column: 62, scope: !2423)
!2633 = !DILocation(line: 538, column: 38, scope: !2423)
!2634 = !DILocation(line: 539, column: 39, scope: !2423)
!2635 = !DILocation(line: 539, column: 54, scope: !2423)
!2636 = !DILocation(line: 539, column: 7, scope: !2423)
!2637 = !DILocation(line: 540, column: 20, scope: !2488)
!2638 = !DILocation(line: 540, column: 12, scope: !2488)
!2639 = !DILocation(line: 0, scope: !2488)
!2640 = !DILocation(line: 540, column: 45, scope: !2487)
!2641 = !DILocation(line: 540, column: 7, scope: !2488)
!2642 = !DILocation(line: 543, column: 18, scope: !2486)
!2643 = !DILocation(line: 544, column: 18, scope: !2486)
!2644 = !DILocation(line: 545, column: 9, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 545, column: 8)
!2646 = !DILocation(line: 546, column: 8, scope: !2645)
!2647 = !DILocation(line: 546, column: 11, scope: !2645)
!2648 = !DILocation(line: 545, column: 8, scope: !2486)
!2649 = !DILocation(line: 548, column: 4, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 548, column: 4)
!2651 = !DILocation(line: 550, column: 4, scope: !2486)
!2652 = !DILocation(line: 557, column: 4, scope: !2486)
!2653 = !DILocation(line: 558, column: 17, scope: !2486)
!2654 = !DILocation(line: 558, column: 4, scope: !2486)
!2655 = !DILocation(line: 561, column: 8, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 561, column: 8)
!2657 = !DILocation(line: 561, column: 39, scope: !2656)
!2658 = !DILocation(line: 561, column: 33, scope: !2656)
!2659 = !DILocation(line: 561, column: 30, scope: !2656)
!2660 = !DILocation(line: 562, column: 6, scope: !2656)
!2661 = !DILocation(line: 564, column: 4, scope: !2486)
!2662 = !DILocation(line: 565, column: 4, scope: !2486)
!2663 = !DILocation(line: 566, column: 4, scope: !2486)
!2664 = !DILocation(line: 567, column: 9, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 567, column: 4)
!2666 = !DILocation(line: 0, scope: !2665)
!2667 = !DILocation(line: 0, scope: !2486)
!2668 = !DILocation(line: 567, column: 26, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 567, column: 4)
!2670 = !DILocation(line: 567, column: 4, scope: !2665)
!2671 = !DILocation(line: 568, column: 10, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 568, column: 10)
!2673 = !DILocation(line: 568, column: 10, scope: !2669)
!2674 = !DILocation(line: 570, column: 3, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 569, column: 8)
!2676 = !DILocation(line: 571, column: 57, scope: !2675)
!2677 = !DILocation(line: 571, column: 44, scope: !2675)
!2678 = !DILocation(line: 571, column: 38, scope: !2675)
!2679 = !DILocation(line: 571, column: 3, scope: !2675)
!2680 = !DILocation(line: 571, column: 42, scope: !2675)
!2681 = !DILocation(line: 572, column: 8, scope: !2675)
!2682 = !DILocation(line: 567, column: 56, scope: !2669)
!2683 = !DILocation(line: 567, column: 4, scope: !2669)
!2684 = distinct !{!2684, !2670, !2685}
!2685 = !DILocation(line: 572, column: 8, scope: !2665)
!2686 = !DILocation(line: 574, column: 4, scope: !2485)
!2687 = !DILocation(line: 542, column: 24, scope: !2486)
!2688 = !DILocation(line: 574, column: 4, scope: !2484)
!2689 = !DILocation(line: 588, column: 4, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 588, column: 4)
!2691 = !DILocation(line: 577, column: 16, scope: !2483)
!2692 = !DILocation(line: 577, column: 29, scope: !2483)
!2693 = !DILocation(line: 0, scope: !2483)
!2694 = !DILocation(line: 580, column: 14, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 580, column: 12)
!2696 = !DILocation(line: 580, column: 12, scope: !2483)
!2697 = !DILocation(line: 583, column: 20, scope: !2483)
!2698 = !DILocation(line: 583, column: 40, scope: !2483)
!2699 = !DILocation(line: 583, column: 18, scope: !2483)
!2700 = !DILocation(line: 584, column: 8, scope: !2483)
!2701 = !DILocation(line: 584, column: 17, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 584, column: 8)
!2703 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 584, column: 8)
!2704 = !DILocation(line: 584, column: 8, scope: !2703)
!2705 = !DILocation(line: 585, column: 7, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 585, column: 7)
!2707 = !DILocation(line: 585, column: 7, scope: !2702)
!2708 = !DILocation(line: 586, column: 46, scope: !2706)
!2709 = !DILocation(line: 586, column: 40, scope: !2706)
!2710 = !DILocation(line: 586, column: 5, scope: !2706)
!2711 = !DILocation(line: 586, column: 44, scope: !2706)
!2712 = !DILocation(line: 584, column: 27, scope: !2702)
!2713 = !DILocation(line: 584, column: 8, scope: !2702)
!2714 = distinct !{!2714, !2704, !2715}
!2715 = !DILocation(line: 586, column: 60, scope: !2703)
!2716 = distinct !{!2716, !2686, !2717}
!2717 = !DILocation(line: 587, column: 6, scope: !2485)
!2718 = !DILocation(line: 0, scope: !2690)
!2719 = !DILocation(line: 588, column: 18, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 588, column: 4)
!2721 = !DILocation(line: 590, column: 20, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 589, column: 6)
!2723 = !DILocation(line: 0, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 593, column: 5)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 592, column: 7)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 591, column: 8)
!2727 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 591, column: 8)
!2728 = !DILocation(line: 591, column: 22, scope: !2726)
!2729 = !DILocation(line: 591, column: 13, scope: !2727)
!2730 = !DILocation(line: 0, scope: !2727)
!2731 = !DILocation(line: 591, column: 8, scope: !2727)
!2732 = !DILocation(line: 592, column: 9, scope: !2725)
!2733 = !DILocation(line: 592, column: 7, scope: !2726)
!2734 = !DILocation(line: 594, column: 20, scope: !2724)
!2735 = !DILocation(line: 597, column: 43, scope: !2724)
!2736 = !DILocation(line: 597, column: 49, scope: !2724)
!2737 = !DILocation(line: 597, column: 47, scope: !2724)
!2738 = !DILocation(line: 598, column: 23, scope: !2724)
!2739 = !DILocation(line: 598, column: 10, scope: !2724)
!2740 = !DILocation(line: 597, column: 11, scope: !2724)
!2741 = !DILocation(line: 599, column: 9, scope: !2724)
!2742 = !DILocation(line: 595, column: 38, scope: !2724)
!2743 = !DILocation(line: 595, column: 44, scope: !2724)
!2744 = !DILocation(line: 595, column: 42, scope: !2724)
!2745 = !DILocation(line: 596, column: 20, scope: !2724)
!2746 = !DILocation(line: 596, column: 6, scope: !2724)
!2747 = !DILocation(line: 595, column: 7, scope: !2724)
!2748 = !DILocation(line: 597, column: 9, scope: !2724)
!2749 = !DILocation(line: 600, column: 5, scope: !2724)
!2750 = !DILocation(line: 591, column: 46, scope: !2726)
!2751 = !DILocation(line: 591, column: 8, scope: !2726)
!2752 = distinct !{!2752, !2731, !2753}
!2753 = !DILocation(line: 600, column: 5, scope: !2727)
!2754 = !DILocation(line: 588, column: 42, scope: !2720)
!2755 = !DILocation(line: 588, column: 4, scope: !2720)
!2756 = distinct !{!2756, !2689, !2757}
!2757 = !DILocation(line: 601, column: 6, scope: !2690)
!2758 = !DILocation(line: 540, column: 7, scope: !2487)
!2759 = distinct !{!2759, !2641, !2760}
!2760 = !DILocation(line: 602, column: 2, scope: !2488)
!2761 = !DILocation(line: 605, column: 35, scope: !2423)
!2762 = !DILocation(line: 605, column: 7, scope: !2423)
!2763 = !DILocation(line: 613, column: 29, scope: !2423)
!2764 = !DILocation(line: 614, column: 44, scope: !2423)
!2765 = !DILocation(line: 614, column: 59, scope: !2423)
!2766 = !DILocation(line: 614, column: 7, scope: !2423)
!2767 = !DILocation(line: 615, column: 22, scope: !2423)
!2768 = !DILocation(line: 617, column: 12, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 617, column: 7)
!2770 = !DILocation(line: 617, column: 23, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 617, column: 7)
!2772 = !DILocation(line: 617, column: 21, scope: !2771)
!2773 = !DILocation(line: 617, column: 7, scope: !2769)
!2774 = !DILocation(line: 619, column: 16, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 618, column: 2)
!2776 = !DILocation(line: 620, column: 23, scope: !2775)
!2777 = !DILocation(line: 620, column: 10, scope: !2775)
!2778 = !DILocation(line: 0, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 631, column: 9)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 628, column: 3)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 627, column: 8)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 627, column: 8)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 622, column: 6)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 621, column: 4)
!2785 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 621, column: 4)
!2786 = !DILocation(line: 0, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 635, column: 12)
!2788 = !DILocation(line: 621, column: 9, scope: !2785)
!2789 = !DILocation(line: 0, scope: !2785)
!2790 = !DILocation(line: 621, column: 18, scope: !2784)
!2791 = !DILocation(line: 621, column: 4, scope: !2785)
!2792 = !DILocation(line: 623, column: 21, scope: !2783)
!2793 = !DILocation(line: 624, column: 26, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 624, column: 12)
!2795 = !DILocation(line: 624, column: 14, scope: !2794)
!2796 = !DILocation(line: 624, column: 12, scope: !2783)
!2797 = !DILocation(line: 627, column: 13, scope: !2782)
!2798 = !DILocation(line: 0, scope: !2782)
!2799 = !DILocation(line: 627, column: 22, scope: !2781)
!2800 = !DILocation(line: 627, column: 8, scope: !2782)
!2801 = !DILocation(line: 629, column: 18, scope: !2780)
!2802 = !DILocation(line: 630, column: 26, scope: !2780)
!2803 = !DILocation(line: 631, column: 40, scope: !2779)
!2804 = !DILocation(line: 631, column: 44, scope: !2779)
!2805 = !DILocation(line: 632, column: 22, scope: !2779)
!2806 = !DILocation(line: 632, column: 8, scope: !2779)
!2807 = !DILocation(line: 631, column: 9, scope: !2779)
!2808 = !DILocation(line: 631, column: 9, scope: !2780)
!2809 = distinct !{!2809, !2800, !2810}
!2810 = !DILocation(line: 634, column: 3, scope: !2782)
!2811 = !DILocation(line: 635, column: 14, scope: !2787)
!2812 = !DILocation(line: 636, column: 5, scope: !2787)
!2813 = !DILocation(line: 636, column: 9, scope: !2787)
!2814 = !DILocation(line: 637, column: 12, scope: !2787)
!2815 = !DILocation(line: 637, column: 9, scope: !2787)
!2816 = !DILocation(line: 635, column: 12, scope: !2783)
!2817 = !DILocation(line: 626, column: 27, scope: !2783)
!2818 = !DILocation(line: 641, column: 9, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 639, column: 3)
!2820 = !DILocation(line: 640, column: 16, scope: !2819)
!2821 = !DILocation(line: 641, column: 7, scope: !2819)
!2822 = !DILocation(line: 643, column: 43, scope: !2819)
!2823 = !DILocation(line: 643, column: 20, scope: !2819)
!2824 = !DILocation(line: 643, column: 5, scope: !2819)
!2825 = !DILocation(line: 643, column: 30, scope: !2819)
!2826 = !DILocation(line: 644, column: 35, scope: !2819)
!2827 = !DILocation(line: 644, column: 16, scope: !2819)
!2828 = !DILocation(line: 644, column: 21, scope: !2819)
!2829 = !DILocation(line: 645, column: 22, scope: !2819)
!2830 = !DILocation(line: 646, column: 9, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 646, column: 9)
!2832 = !DILocation(line: 646, column: 19, scope: !2831)
!2833 = !DILocation(line: 646, column: 9, scope: !2819)
!2834 = !DILocation(line: 648, column: 28, scope: !2831)
!2835 = !DILocation(line: 647, column: 7, scope: !2831)
!2836 = !DILocation(line: 621, column: 24, scope: !2784)
!2837 = !DILocation(line: 621, column: 4, scope: !2784)
!2838 = distinct !{!2838, !2791, !2839}
!2839 = !DILocation(line: 651, column: 6, scope: !2785)
!2840 = !DILocation(line: 652, column: 10, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 652, column: 8)
!2842 = !DILocation(line: 652, column: 8, scope: !2775)
!2843 = !DILocation(line: 654, column: 19, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 653, column: 6)
!2845 = !DILocation(line: 654, column: 27, scope: !2844)
!2846 = !DILocation(line: 0, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 660, column: 9)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 656, column: 3)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 655, column: 8)
!2850 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 655, column: 8)
!2851 = !DILocation(line: 655, column: 13, scope: !2850)
!2852 = !DILocation(line: 655, column: 27, scope: !2850)
!2853 = !DILocation(line: 655, column: 42, scope: !2849)
!2854 = !DILocation(line: 655, column: 8, scope: !2850)
!2855 = !DILocation(line: 657, column: 12, scope: !2848)
!2856 = !DILocation(line: 658, column: 14, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 658, column: 9)
!2858 = !DILocation(line: 658, column: 9, scope: !2848)
!2859 = !DILocation(line: 660, column: 9, scope: !2847)
!2860 = !DILocation(line: 661, column: 12, scope: !2847)
!2861 = !DILocation(line: 661, column: 9, scope: !2847)
!2862 = !DILocation(line: 662, column: 26, scope: !2847)
!2863 = !DILocation(line: 662, column: 9, scope: !2847)
!2864 = !DILocation(line: 664, column: 25, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 664, column: 9)
!2866 = !DILocation(line: 664, column: 9, scope: !2848)
!2867 = !DILocation(line: 0, scope: !2850)
!2868 = !DILocation(line: 655, column: 66, scope: !2849)
!2869 = !DILocation(line: 655, column: 8, scope: !2849)
!2870 = distinct !{!2870, !2854, !2871}
!2871 = !DILocation(line: 666, column: 3, scope: !2850)
!2872 = !DILocation(line: 667, column: 26, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 667, column: 12)
!2874 = !DILocation(line: 667, column: 12, scope: !2844)
!2875 = !DILocation(line: 669, column: 23, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 668, column: 3)
!2877 = !DILocation(line: 669, column: 16, scope: !2876)
!2878 = !DILocation(line: 669, column: 21, scope: !2876)
!2879 = !DILocation(line: 671, column: 9, scope: !2876)
!2880 = !DILocation(line: 671, column: 7, scope: !2876)
!2881 = !DILocation(line: 674, column: 9, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 674, column: 9)
!2883 = !DILocation(line: 674, column: 19, scope: !2882)
!2884 = !DILocation(line: 674, column: 9, scope: !2876)
!2885 = !DILocation(line: 676, column: 49, scope: !2882)
!2886 = !DILocation(line: 675, column: 7, scope: !2882)
!2887 = !DILocation(line: 677, column: 36, scope: !2876)
!2888 = !DILocation(line: 678, column: 23, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 678, column: 9)
!2890 = !DILocation(line: 678, column: 27, scope: !2889)
!2891 = !DILocation(line: 678, column: 9, scope: !2876)
!2892 = !DILocation(line: 680, column: 3, scope: !2876)
!2893 = !DILocation(line: 685, column: 10, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 682, column: 3)
!2895 = !DILocation(line: 686, column: 10, scope: !2894)
!2896 = !DILocation(line: 684, column: 9, scope: !2894)
!2897 = !DILocation(line: 683, column: 16, scope: !2894)
!2898 = !DILocation(line: 684, column: 7, scope: !2894)
!2899 = !DILocation(line: 687, column: 9, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 687, column: 9)
!2901 = !DILocation(line: 687, column: 19, scope: !2900)
!2902 = !DILocation(line: 687, column: 9, scope: !2894)
!2903 = !DILocation(line: 688, column: 51, scope: !2900)
!2904 = !DILocation(line: 688, column: 7, scope: !2900)
!2905 = !DILocation(line: 690, column: 46, scope: !2844)
!2906 = !DILocation(line: 690, column: 23, scope: !2844)
!2907 = !DILocation(line: 690, column: 8, scope: !2844)
!2908 = !DILocation(line: 690, column: 33, scope: !2844)
!2909 = !DILocation(line: 691, column: 50, scope: !2844)
!2910 = !DILocation(line: 691, column: 33, scope: !2844)
!2911 = !DILocation(line: 691, column: 8, scope: !2844)
!2912 = !DILocation(line: 691, column: 37, scope: !2844)
!2913 = !DILocation(line: 692, column: 6, scope: !2844)
!2914 = !DILocation(line: 617, column: 40, scope: !2771)
!2915 = !DILocation(line: 617, column: 7, scope: !2771)
!2916 = distinct !{!2916, !2773, !2917}
!2917 = !DILocation(line: 693, column: 2, scope: !2769)
!2918 = !DILocation(line: 694, column: 7, scope: !2423)
!2919 = !DILocation(line: 695, column: 7, scope: !2423)
!2920 = !DILocation(line: 696, column: 5, scope: !2424)
!2921 = !DILocation(line: 696, column: 5, scope: !2423)
!2922 = !DILocation(line: 0, scope: !2495)
!2923 = !DILocation(line: 703, column: 21, scope: !2494)
!2924 = !DILocation(line: 0, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 710, column: 10)
!2926 = !DILocation(line: 704, column: 2, scope: !2493)
!2927 = !DILocation(line: 0, scope: !2493)
!2928 = !DILocation(line: 704, column: 29, scope: !2492)
!2929 = !DILocation(line: 0, scope: !2491)
!2930 = !DILocation(line: 710, column: 10, scope: !2925)
!2931 = !DILocation(line: 710, column: 32, scope: !2925)
!2932 = !DILocation(line: 710, column: 44, scope: !2925)
!2933 = !DILocation(line: 710, column: 47, scope: !2925)
!2934 = !DILocation(line: 710, column: 68, scope: !2925)
!2935 = !DILocation(line: 710, column: 10, scope: !2491)
!2936 = !DILocation(line: 714, column: 6, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 714, column: 6)
!2938 = !DILocation(line: 0, scope: !2937)
!2939 = !DILocation(line: 714, column: 20, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 714, column: 6)
!2941 = !DILocation(line: 715, column: 29, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 715, column: 12)
!2943 = !DILocation(line: 715, column: 12, scope: !2942)
!2944 = !DILocation(line: 715, column: 12, scope: !2940)
!2945 = !DILocation(line: 714, column: 26, scope: !2940)
!2946 = !DILocation(line: 714, column: 6, scope: !2940)
!2947 = distinct !{!2947, !2936, !2948}
!2948 = !DILocation(line: 719, column: 3, scope: !2937)
!2949 = !DILocation(line: 720, column: 12, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 720, column: 10)
!2951 = !DILocation(line: 720, column: 10, scope: !2491)
!2952 = !DILocation(line: 723, column: 6, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 723, column: 6)
!2954 = !DILocation(line: 0, scope: !2953)
!2955 = !DILocation(line: 723, column: 20, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 723, column: 6)
!2957 = !DILocation(line: 724, column: 14, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 724, column: 12)
!2959 = !DILocation(line: 724, column: 12, scope: !2956)
!2960 = !DILocation(line: 723, column: 26, scope: !2956)
!2961 = !DILocation(line: 723, column: 6, scope: !2956)
!2962 = distinct !{!2962, !2952, !2963}
!2963 = !DILocation(line: 728, column: 3, scope: !2953)
!2964 = !DILocation(line: 729, column: 12, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 729, column: 10)
!2966 = !DILocation(line: 729, column: 10, scope: !2491)
!2967 = !DILocation(line: 741, column: 11, scope: !2491)
!2968 = !DILocation(line: 740, column: 10, scope: !2491)
!2969 = !DILocation(line: 739, column: 6, scope: !2491)
!2970 = !DILocation(line: 740, column: 8, scope: !2491)
!2971 = !DILocation(line: 745, column: 11, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 745, column: 6)
!2973 = !DILocation(line: 0, scope: !2972)
!2974 = !DILocation(line: 745, column: 20, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 745, column: 6)
!2976 = !DILocation(line: 745, column: 6, scope: !2972)
!2977 = !DILocation(line: 749, column: 5, scope: !2975)
!2978 = !DILocation(line: 748, column: 8, scope: !2975)
!2979 = !DILocation(line: 749, column: 3, scope: !2975)
!2980 = !DILocation(line: 745, column: 26, scope: !2975)
!2981 = !DILocation(line: 745, column: 6, scope: !2975)
!2982 = distinct !{!2982, !2976, !2983}
!2983 = !DILocation(line: 749, column: 5, scope: !2972)
!2984 = !DILocation(line: 704, column: 35, scope: !2492)
!2985 = !DILocation(line: 704, column: 2, scope: !2492)
!2986 = distinct !{!2986, !2926, !2987}
!2987 = !DILocation(line: 752, column: 4, scope: !2493)
!2988 = !DILocation(line: 703, column: 47, scope: !2494)
!2989 = !DILocation(line: 703, column: 7, scope: !2494)
!2990 = distinct !{!2990, !2532, !2991}
!2991 = !DILocation(line: 752, column: 4, scope: !2495)
!2992 = !DILocation(line: 757, column: 8, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 757, column: 3)
!2994 = !DILocation(line: 0, scope: !2993)
!2995 = !DILocation(line: 757, column: 17, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2993, file: !3, line: 757, column: 3)
!2997 = !DILocation(line: 757, column: 3, scope: !2993)
!2998 = !DILocation(line: 758, column: 5, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 758, column: 5)
!3000 = !DILocation(line: 0, scope: !2999)
!3001 = !DILocation(line: 758, column: 32, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 758, column: 5)
!3003 = !DILocation(line: 759, column: 11, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 759, column: 11)
!3005 = !DILocation(line: 759, column: 32, scope: !3004)
!3006 = !DILocation(line: 759, column: 11, scope: !3002)
!3007 = !DILocation(line: 760, column: 43, scope: !3004)
!3008 = !DILocation(line: 760, column: 2, scope: !3004)
!3009 = !DILocation(line: 758, column: 38, scope: !3002)
!3010 = !DILocation(line: 758, column: 5, scope: !3002)
!3011 = distinct !{!3011, !2998, !3012}
!3012 = !DILocation(line: 760, column: 65, scope: !2999)
!3013 = !DILocation(line: 757, column: 43, scope: !2996)
!3014 = !DILocation(line: 757, column: 3, scope: !2996)
!3015 = distinct !{!3015, !2997, !3016}
!3016 = !DILocation(line: 760, column: 65, scope: !2993)
!3017 = !DILocation(line: 761, column: 1, scope: !2409)
!3018 = distinct !DISubprogram(name: "end_hard_regno", scope: !3019, file: !3019, line: 290, type: !3020, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3022)
!3019 = !DIFile(filename: "./regs.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!7, !5, !7}
!3022 = !{!3023, !3024}
!3023 = !DILocalVariable(name: "mode", arg: 1, scope: !3018, file: !3019, line: 290, type: !5)
!3024 = !DILocalVariable(name: "regno", arg: 2, scope: !3018, file: !3019, line: 290, type: !7)
!3025 = !DILocation(line: 0, scope: !3018)
!3026 = !DILocation(line: 292, column: 18, scope: !3018)
!3027 = !DILocation(line: 292, column: 16, scope: !3018)
!3028 = !DILocation(line: 292, column: 3, scope: !3018)
!3029 = distinct !DISubprogram(name: "initiate_saved_hard_regs", scope: !3, file: !3, line: 361, type: !2164, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3030)
!3030 = !{!3031}
!3031 = !DILocalVariable(name: "i", scope: !3029, file: !3, line: 363, type: !553)
!3032 = !DILocation(line: 365, column: 18, scope: !3029)
!3033 = !DILocation(line: 0, scope: !3029)
!3034 = !DILocation(line: 366, column: 8, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 366, column: 3)
!3036 = !DILocation(line: 0, scope: !3035)
!3037 = !DILocation(line: 366, column: 17, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 366, column: 3)
!3039 = !DILocation(line: 366, column: 3, scope: !3035)
!3040 = !DILocation(line: 367, column: 5, scope: !3038)
!3041 = !DILocation(line: 367, column: 21, scope: !3038)
!3042 = !DILocation(line: 366, column: 43, scope: !3038)
!3043 = !DILocation(line: 366, column: 3, scope: !3038)
!3044 = distinct !{!3044, !3039, !3045}
!3045 = !DILocation(line: 367, column: 23, scope: !3035)
!3046 = !DILocation(line: 368, column: 1, scope: !3029)
!3047 = distinct !DISubprogram(name: "mark_set_regs", scope: !3, file: !3, line: 936, type: !3048, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3053)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{null, !563, !3050, !557}
!3050 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !564, line: 51, baseType: !3051)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!3053 = !{!3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061}
!3054 = !DILocalVariable(name: "reg", arg: 1, scope: !3047, file: !3, line: 936, type: !563)
!3055 = !DILocalVariable(name: "setter", arg: 2, scope: !3047, file: !3, line: 936, type: !3050)
!3056 = !DILocalVariable(name: "data", arg: 3, scope: !3047, file: !3, line: 936, type: !557)
!3057 = !DILocalVariable(name: "regno", scope: !3047, file: !3, line: 938, type: !553)
!3058 = !DILocalVariable(name: "endregno", scope: !3047, file: !3, line: 938, type: !553)
!3059 = !DILocalVariable(name: "i", scope: !3047, file: !3, line: 938, type: !553)
!3060 = !DILocalVariable(name: "this_insn_sets", scope: !3047, file: !3, line: 939, type: !1644)
!3061 = !DILocalVariable(name: "inner", scope: !3062, file: !3, line: 943, type: !563)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 942, column: 5)
!3063 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 941, column: 7)
!3064 = !DILocation(line: 0, scope: !3047)
!3065 = !DILocation(line: 939, column: 34, scope: !3047)
!3066 = !DILocation(line: 941, column: 7, scope: !3063)
!3067 = !DILocation(line: 941, column: 22, scope: !3063)
!3068 = !DILocation(line: 941, column: 7, scope: !3047)
!3069 = !DILocation(line: 943, column: 19, scope: !3062)
!3070 = !DILocation(line: 0, scope: !3062)
!3071 = !DILocation(line: 944, column: 12, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 944, column: 11)
!3073 = !DILocation(line: 944, column: 26, scope: !3072)
!3074 = !DILocation(line: 944, column: 29, scope: !3072)
!3075 = !DILocation(line: 944, column: 43, scope: !3072)
!3076 = !DILocation(line: 944, column: 11, scope: !3062)
!3077 = !DILocation(line: 946, column: 15, scope: !3062)
!3078 = !DILocation(line: 947, column: 26, scope: !3062)
!3079 = !DILocation(line: 947, column: 24, scope: !3062)
!3080 = !DILocation(line: 948, column: 5, scope: !3063)
!3081 = !DILocation(line: 949, column: 12, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 949, column: 12)
!3083 = !DILocation(line: 950, column: 5, scope: !3082)
!3084 = !DILocation(line: 950, column: 8, scope: !3082)
!3085 = !DILocation(line: 950, column: 20, scope: !3082)
!3086 = !DILocation(line: 949, column: 12, scope: !3063)
!3087 = !DILocation(line: 952, column: 15, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 951, column: 5)
!3089 = !DILocation(line: 953, column: 18, scope: !3088)
!3090 = !DILocation(line: 958, column: 8, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 958, column: 3)
!3092 = !DILocation(line: 0, scope: !3091)
!3093 = !DILocation(line: 958, column: 21, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 958, column: 3)
!3095 = !DILocation(line: 958, column: 3, scope: !3091)
!3096 = !DILocation(line: 959, column: 5, scope: !3094)
!3097 = !DILocation(line: 958, column: 34, scope: !3094)
!3098 = !DILocation(line: 958, column: 3, scope: !3094)
!3099 = distinct !{!3099, !3095, !3100}
!3100 = !DILocation(line: 959, column: 5, scope: !3091)
!3101 = !DILocation(line: 960, column: 1, scope: !3047)
!3102 = distinct !DISubprogram(name: "new_saved_hard_reg", scope: !3, file: !3, line: 373, type: !3103, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3105)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!1633, !553, !553}
!3105 = !{!3106, !3107, !3108}
!3106 = !DILocalVariable(name: "regno", arg: 1, scope: !3102, file: !3, line: 373, type: !553)
!3107 = !DILocalVariable(name: "call_freq", arg: 2, scope: !3102, file: !3, line: 373, type: !553)
!3108 = !DILocalVariable(name: "saved_reg", scope: !3102, file: !3, line: 375, type: !1633)
!3109 = !DILocation(line: 0, scope: !3102)
!3110 = !DILocation(line: 378, column: 33, scope: !3102)
!3111 = !DILocation(line: 378, column: 7, scope: !3102)
!3112 = !DILocation(line: 379, column: 40, scope: !3102)
!3113 = !DILocation(line: 379, column: 25, scope: !3102)
!3114 = !DILocation(line: 379, column: 56, scope: !3102)
!3115 = !DILocation(line: 379, column: 3, scope: !3102)
!3116 = !DILocation(line: 379, column: 23, scope: !3102)
!3117 = !DILocation(line: 380, column: 34, scope: !3102)
!3118 = !DILocation(line: 380, column: 14, scope: !3102)
!3119 = !DILocation(line: 380, column: 18, scope: !3102)
!3120 = !DILocation(line: 381, column: 14, scope: !3102)
!3121 = !DILocation(line: 381, column: 25, scope: !3102)
!3122 = !DILocation(line: 382, column: 14, scope: !3102)
!3123 = !DILocation(line: 382, column: 24, scope: !3102)
!3124 = !DILocation(line: 383, column: 14, scope: !3102)
!3125 = !DILocation(line: 383, column: 22, scope: !3102)
!3126 = !DILocation(line: 384, column: 14, scope: !3102)
!3127 = !DILocation(line: 384, column: 19, scope: !3102)
!3128 = !DILocation(line: 385, column: 3, scope: !3102)
!3129 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !619, file: !619, line: 224, type: !3130, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3137)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !3132, !3133, !7, !3136}
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !564, line: 48, baseType: !3134)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3137 = !{!3138, !3139, !3140, !3141}
!3138 = !DILocalVariable(name: "bi", arg: 1, scope: !3129, file: !619, line: 224, type: !3132)
!3139 = !DILocalVariable(name: "map", arg: 2, scope: !3129, file: !619, line: 224, type: !3133)
!3140 = !DILocalVariable(name: "start_bit", arg: 3, scope: !3129, file: !619, line: 225, type: !7)
!3141 = !DILocalVariable(name: "bit_no", arg: 4, scope: !3129, file: !619, line: 225, type: !3136)
!3142 = !DILocation(line: 0, scope: !3129)
!3143 = !DILocation(line: 227, column: 19, scope: !3129)
!3144 = !DILocation(line: 227, column: 12, scope: !3129)
!3145 = !DILocation(line: 228, column: 7, scope: !3129)
!3146 = !DILocation(line: 228, column: 12, scope: !3129)
!3147 = !DILocation(line: 0, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !619, line: 233, column: 11)
!3149 = distinct !DILexicalBlock(scope: !3129, file: !619, line: 232, column: 5)
!3150 = !DILocation(line: 231, column: 3, scope: !3129)
!3151 = !DILocation(line: 233, column: 12, scope: !3148)
!3152 = !DILocation(line: 233, column: 11, scope: !3149)
!3153 = !DILocation(line: 235, column: 13, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3148, file: !619, line: 234, column: 2)
!3155 = !DILocation(line: 236, column: 4, scope: !3154)
!3156 = !DILocation(line: 239, column: 11, scope: !3149)
!3157 = distinct !{!3157, !3150, !3158}
!3158 = !DILocation(line: 242, column: 5, scope: !3129)
!3159 = !DILocation(line: 245, column: 11, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3129, file: !619, line: 245, column: 7)
!3161 = !DILocation(line: 245, column: 17, scope: !3160)
!3162 = !DILocation(line: 245, column: 22, scope: !3160)
!3163 = !DILocation(line: 245, column: 7, scope: !3129)
!3164 = !DILocation(line: 246, column: 27, scope: !3160)
!3165 = !DILocation(line: 246, column: 32, scope: !3160)
!3166 = !DILocation(line: 246, column: 5, scope: !3160)
!3167 = !DILocation(line: 249, column: 7, scope: !3129)
!3168 = !DILocation(line: 249, column: 15, scope: !3129)
!3169 = !DILocation(line: 250, column: 14, scope: !3129)
!3170 = !DILocation(line: 251, column: 26, scope: !3129)
!3171 = !DILocation(line: 251, column: 7, scope: !3129)
!3172 = !DILocation(line: 251, column: 12, scope: !3129)
!3173 = !DILocation(line: 257, column: 16, scope: !3129)
!3174 = !DILocation(line: 257, column: 13, scope: !3129)
!3175 = !DILocation(line: 259, column: 11, scope: !3129)
!3176 = !DILocation(line: 260, column: 1, scope: !3129)
!3177 = distinct !DISubprogram(name: "bmp_iter_set", scope: !619, file: !619, line: 393, type: !3178, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3180)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!552, !3132, !3136}
!3180 = !{!3181, !3182, !3183}
!3181 = !DILocalVariable(name: "bi", arg: 1, scope: !3177, file: !619, line: 393, type: !3132)
!3182 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3177, file: !619, line: 393, type: !3136)
!3183 = !DILabel(scope: !3184, name: "next_bit", file: !619, line: 398)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !619, line: 397, column: 5)
!3185 = distinct !DILexicalBlock(scope: !3177, file: !619, line: 396, column: 7)
!3186 = !DILocation(line: 0, scope: !3177)
!3187 = !DILocation(line: 396, column: 11, scope: !3185)
!3188 = !DILocation(line: 396, column: 7, scope: !3185)
!3189 = !DILocation(line: 396, column: 7, scope: !3177)
!3190 = !DILocation(line: 419, column: 15, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !619, line: 418, column: 2)
!3192 = distinct !DILexicalBlock(scope: !3177, file: !619, line: 415, column: 5)
!3193 = !DILocation(line: 399, column: 7, scope: !3184)
!3194 = !DILocation(line: 398, column: 5, scope: !3184)
!3195 = !DILocation(line: 399, column: 20, scope: !3184)
!3196 = !DILocation(line: 399, column: 25, scope: !3184)
!3197 = !DILocation(line: 399, column: 14, scope: !3184)
!3198 = !DILocation(line: 401, column: 13, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3184, file: !619, line: 400, column: 2)
!3200 = !DILocation(line: 402, column: 12, scope: !3199)
!3201 = distinct !{!3201, !3193, !3202}
!3202 = !DILocation(line: 403, column: 2, scope: !3184)
!3203 = !DILocation(line: 410, column: 15, scope: !3177)
!3204 = !DILocation(line: 410, column: 42, scope: !3177)
!3205 = !DILocation(line: 411, column: 26, scope: !3177)
!3206 = !DILocation(line: 410, column: 11, scope: !3177)
!3207 = !DILocation(line: 412, column: 7, scope: !3177)
!3208 = !DILocation(line: 412, column: 14, scope: !3177)
!3209 = !DILocation(line: 0, scope: !3192)
!3210 = !DILocation(line: 414, column: 3, scope: !3177)
!3211 = !DILocation(line: 417, column: 7, scope: !3192)
!3212 = !DILocation(line: 417, column: 18, scope: !3192)
!3213 = !DILocation(line: 417, column: 26, scope: !3192)
!3214 = !DILocation(line: 419, column: 13, scope: !3191)
!3215 = !DILocation(line: 420, column: 8, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3191, file: !619, line: 420, column: 8)
!3217 = !DILocation(line: 420, column: 8, scope: !3191)
!3218 = !DILocation(line: 422, column: 12, scope: !3191)
!3219 = !DILocation(line: 423, column: 15, scope: !3191)
!3220 = distinct !{!3220, !3211, !3221}
!3221 = !DILocation(line: 424, column: 2, scope: !3192)
!3222 = !DILocation(line: 427, column: 28, scope: !3192)
!3223 = !DILocation(line: 427, column: 16, scope: !3192)
!3224 = !DILocation(line: 428, column: 12, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3192, file: !619, line: 428, column: 11)
!3226 = !DILocation(line: 428, column: 11, scope: !3192)
!3227 = !DILocation(line: 430, column: 27, scope: !3192)
!3228 = !DILocation(line: 430, column: 32, scope: !3192)
!3229 = !DILocation(line: 430, column: 15, scope: !3192)
!3230 = !DILocation(line: 431, column: 19, scope: !3192)
!3231 = distinct !{!3231, !3210, !3232}
!3232 = !DILocation(line: 432, column: 5, scope: !3177)
!3233 = !DILocation(line: 433, column: 1, scope: !3177)
!3234 = distinct !DISubprogram(name: "bmp_iter_next", scope: !619, file: !619, line: 382, type: !3235, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3237)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{null, !3132, !3136}
!3237 = !{!3238, !3239}
!3238 = !DILocalVariable(name: "bi", arg: 1, scope: !3234, file: !619, line: 382, type: !3132)
!3239 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3234, file: !619, line: 382, type: !3136)
!3240 = !DILocation(line: 0, scope: !3234)
!3241 = !DILocation(line: 384, column: 7, scope: !3234)
!3242 = !DILocation(line: 384, column: 12, scope: !3234)
!3243 = !DILocation(line: 385, column: 11, scope: !3234)
!3244 = !DILocation(line: 386, column: 1, scope: !3234)
!3245 = distinct !DISubprogram(name: "saved_hard_reg_compare_func", scope: !3, file: !3, line: 401, type: !1058, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3246)
!3246 = !{!3247, !3248, !3249, !3252}
!3247 = !DILocalVariable(name: "v1p", arg: 1, scope: !3245, file: !3, line: 401, type: !1053)
!3248 = !DILocalVariable(name: "v2p", arg: 2, scope: !3245, file: !3, line: 401, type: !1053)
!3249 = !DILocalVariable(name: "p1", scope: !3245, file: !3, line: 403, type: !3250)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1634)
!3252 = !DILocalVariable(name: "p2", scope: !3245, file: !3, line: 404, type: !3250)
!3253 = !DILocation(line: 0, scope: !3245)
!3254 = !DILocation(line: 403, column: 38, scope: !3245)
!3255 = !DILocation(line: 403, column: 37, scope: !3245)
!3256 = !DILocation(line: 404, column: 38, scope: !3245)
!3257 = !DILocation(line: 404, column: 37, scope: !3245)
!3258 = !DILocation(line: 406, column: 7, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 406, column: 7)
!3260 = !DILocation(line: 406, column: 7, scope: !3245)
!3261 = !DILocation(line: 408, column: 15, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 408, column: 11)
!3263 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 407, column: 5)
!3264 = !DILocation(line: 408, column: 31, scope: !3262)
!3265 = !DILocation(line: 408, column: 41, scope: !3262)
!3266 = !DILocation(line: 408, column: 11, scope: !3263)
!3267 = !DILocation(line: 409, column: 23, scope: !3262)
!3268 = !DILocation(line: 409, column: 2, scope: !3262)
!3269 = !DILocation(line: 411, column: 16, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 411, column: 12)
!3271 = !DILocation(line: 411, column: 32, scope: !3270)
!3272 = !DILocation(line: 411, column: 42, scope: !3270)
!3273 = !DILocation(line: 411, column: 12, scope: !3259)
!3274 = !DILocation(line: 412, column: 26, scope: !3270)
!3275 = !DILocation(line: 412, column: 5, scope: !3270)
!3276 = !DILocation(line: 414, column: 14, scope: !3245)
!3277 = !DILocation(line: 414, column: 24, scope: !3245)
!3278 = !DILocation(line: 414, column: 18, scope: !3245)
!3279 = !DILocation(line: 414, column: 3, scope: !3245)
!3280 = !DILocation(line: 415, column: 1, scope: !3245)
!3281 = distinct !DISubprogram(name: "finish_saved_hard_regs", scope: !3, file: !3, line: 390, type: !2164, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3282)
!3282 = !{!3283}
!3283 = !DILocalVariable(name: "i", scope: !3281, file: !3, line: 392, type: !553)
!3284 = !DILocation(line: 0, scope: !3281)
!3285 = !DILocation(line: 394, column: 8, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 394, column: 3)
!3287 = !DILocation(line: 0, scope: !3286)
!3288 = !DILocation(line: 394, column: 19, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 394, column: 3)
!3290 = !DILocation(line: 394, column: 17, scope: !3289)
!3291 = !DILocation(line: 394, column: 3, scope: !3286)
!3292 = !DILocation(line: 395, column: 11, scope: !3289)
!3293 = !DILocation(line: 395, column: 5, scope: !3289)
!3294 = !DILocation(line: 394, column: 36, scope: !3289)
!3295 = !DILocation(line: 394, column: 3, scope: !3289)
!3296 = distinct !{!3296, !3291, !3297}
!3297 = !DILocation(line: 395, column: 28, scope: !3286)
!3298 = !DILocation(line: 396, column: 1, scope: !3281)
!3299 = distinct !DISubprogram(name: "save_call_clobbered_regs", scope: !3, file: !3, line: 768, type: !2164, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3300)
!3300 = !{!3301, !3302, !3303, !3304, !3306, !3307, !3311, !3312, !3317, !3320, !3321, !3322, !3326, !3327, !3328, !3331, !3334, !3335}
!3301 = !DILocalVariable(name: "chain", scope: !3299, file: !3, line: 770, type: !2427)
!3302 = !DILocalVariable(name: "next", scope: !3299, file: !3, line: 770, type: !2427)
!3303 = !DILocalVariable(name: "last", scope: !3299, file: !3, line: 770, type: !2427)
!3304 = !DILocalVariable(name: "save_mode", scope: !3299, file: !3, line: 771, type: !3305)
!3305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1696, elements: !1681)
!3306 = !DILocalVariable(name: "this_insn_sets", scope: !3299, file: !3, line: 775, type: !560)
!3307 = !DILocalVariable(name: "insn", scope: !3308, file: !3, line: 782, type: !563)
!3308 = distinct !DILexicalBlock(scope: !3309, file: !3, line: 781, column: 5)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !3, line: 780, column: 3)
!3310 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 780, column: 3)
!3311 = !DILocalVariable(name: "code", scope: !3308, file: !3, line: 783, type: !377)
!3312 = !DILocalVariable(name: "regno", scope: !3313, file: !3, line: 796, type: !553)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 795, column: 6)
!3314 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 794, column: 8)
!3315 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 790, column: 2)
!3316 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 789, column: 11)
!3317 = !DILocalVariable(name: "regno", scope: !3318, file: !3, line: 818, type: !7)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !3, line: 817, column: 6)
!3319 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 814, column: 8)
!3320 = !DILocalVariable(name: "hard_regs_to_save", scope: !3318, file: !3, line: 819, type: !560)
!3321 = !DILocalVariable(name: "rsi", scope: !3318, file: !3, line: 820, type: !2463)
!3322 = !DILocalVariable(name: "r", scope: !3323, file: !3, line: 838, type: !553)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 837, column: 3)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 835, column: 8)
!3325 = distinct !DILexicalBlock(scope: !3318, file: !3, line: 835, column: 8)
!3326 = !DILocalVariable(name: "nregs", scope: !3323, file: !3, line: 839, type: !553)
!3327 = !DILocalVariable(name: "mode", scope: !3323, file: !3, line: 840, type: !5)
!3328 = !DILocalVariable(name: "regno", scope: !3329, file: !3, line: 886, type: !553)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 885, column: 2)
!3330 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 884, column: 11)
!3331 = !DILocalVariable(name: "ins", scope: !3332, file: !3, line: 893, type: !563)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 892, column: 6)
!3333 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 891, column: 8)
!3334 = !DILocalVariable(name: "prev", scope: !3332, file: !3, line: 893, type: !563)
!3335 = !DILocalVariable(name: "bb", scope: !3332, file: !3, line: 894, type: !935)
!3336 = !DILocation(line: 0, scope: !3299)
!3337 = !DILocation(line: 771, column: 3, scope: !3299)
!3338 = !DILocation(line: 771, column: 21, scope: !3299)
!3339 = !DILocation(line: 775, column: 3, scope: !3299)
!3340 = !DILocation(line: 777, column: 3, scope: !3299)
!3341 = !DILocation(line: 778, column: 16, scope: !3299)
!3342 = !DILocation(line: 780, column: 16, scope: !3310)
!3343 = !DILocation(line: 0, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 810, column: 7)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 809, column: 8)
!3346 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 809, column: 8)
!3347 = !DILocation(line: 0, scope: !3318)
!3348 = !DILocation(line: 780, column: 8, scope: !3310)
!3349 = !DILocation(line: 0, scope: !3310)
!3350 = !DILocation(line: 780, column: 41, scope: !3309)
!3351 = !DILocation(line: 780, column: 3, scope: !3310)
!3352 = !DILocation(line: 782, column: 25, scope: !3308)
!3353 = !DILocation(line: 0, scope: !3308)
!3354 = !DILocation(line: 783, column: 28, scope: !3308)
!3355 = !DILocation(line: 785, column: 21, scope: !3308)
!3356 = !DILocation(line: 787, column: 7, scope: !3308)
!3357 = !DILocation(line: 789, column: 11, scope: !3316)
!3358 = !DILocation(line: 789, column: 11, scope: !3308)
!3359 = !DILocation(line: 794, column: 8, scope: !3314)
!3360 = !DILocation(line: 794, column: 8, scope: !3315)
!3361 = !DILocation(line: 798, column: 17, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 798, column: 12)
!3363 = !DILocation(line: 798, column: 12, scope: !3313)
!3364 = !DILocation(line: 800, column: 3, scope: !3362)
!3365 = !DILocation(line: 803, column: 5, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 802, column: 3)
!3367 = !DILocation(line: 804, column: 28, scope: !3366)
!3368 = !DILocation(line: 804, column: 5, scope: !3366)
!3369 = !DILocation(line: 806, column: 5, scope: !3366)
!3370 = !DILocation(line: 0, scope: !3362)
!3371 = !DILocation(line: 0, scope: !3313)
!3372 = !DILocation(line: 809, column: 13, scope: !3346)
!3373 = !DILocation(line: 0, scope: !3346)
!3374 = !DILocation(line: 809, column: 30, scope: !3345)
!3375 = !DILocation(line: 809, column: 8, scope: !3346)
!3376 = !DILocation(line: 810, column: 7, scope: !3344)
!3377 = !DILocation(line: 810, column: 7, scope: !3345)
!3378 = !DILocation(line: 811, column: 14, scope: !3344)
!3379 = !DILocation(line: 811, column: 11, scope: !3344)
!3380 = !DILocation(line: 811, column: 5, scope: !3344)
!3381 = !DILocation(line: 809, column: 60, scope: !3345)
!3382 = !DILocation(line: 809, column: 8, scope: !3345)
!3383 = distinct !{!3383, !3375, !3384}
!3384 = !DILocation(line: 811, column: 72, scope: !3346)
!3385 = !DILocation(line: 814, column: 13, scope: !3319)
!3386 = !DILocation(line: 815, column: 8, scope: !3319)
!3387 = !DILocation(line: 815, column: 13, scope: !3319)
!3388 = !DILocation(line: 816, column: 8, scope: !3319)
!3389 = !DILocation(line: 816, column: 13, scope: !3319)
!3390 = !DILocation(line: 814, column: 8, scope: !3315)
!3391 = !DILocation(line: 818, column: 8, scope: !3318)
!3392 = !DILocation(line: 819, column: 8, scope: !3318)
!3393 = !DILocation(line: 820, column: 8, scope: !3318)
!3394 = !DILocation(line: 824, column: 8, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3318, file: !3, line: 824, column: 8)
!3396 = !DILocation(line: 0, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 828, column: 7)
!3398 = distinct !DILexicalBlock(scope: !3399, file: !3, line: 827, column: 8)
!3399 = distinct !DILexicalBlock(scope: !3318, file: !3, line: 827, column: 8)
!3400 = !DILocation(line: 827, column: 13, scope: !3399)
!3401 = !DILocation(line: 0, scope: !3399)
!3402 = !DILocation(line: 827, column: 30, scope: !3398)
!3403 = !DILocation(line: 827, column: 8, scope: !3399)
!3404 = !DILocation(line: 828, column: 7, scope: !3397)
!3405 = !DILocation(line: 828, column: 7, scope: !3398)
!3406 = !DILocation(line: 829, column: 25, scope: !3397)
!3407 = !DILocation(line: 829, column: 5, scope: !3397)
!3408 = !DILocation(line: 829, column: 23, scope: !3397)
!3409 = !DILocation(line: 831, column: 5, scope: !3397)
!3410 = !DILocation(line: 831, column: 23, scope: !3397)
!3411 = !DILocation(line: 827, column: 60, scope: !3398)
!3412 = !DILocation(line: 827, column: 8, scope: !3398)
!3413 = distinct !{!3413, !3403, !3414}
!3414 = !DILocation(line: 831, column: 25, scope: !3399)
!3415 = !DILocation(line: 835, column: 8, scope: !3325)
!3416 = !DILocation(line: 835, column: 8, scope: !3324)
!3417 = !DILocation(line: 838, column: 13, scope: !3323)
!3418 = !DILocation(line: 838, column: 26, scope: !3323)
!3419 = !DILocation(line: 0, scope: !3323)
!3420 = !DILocation(line: 842, column: 11, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 842, column: 9)
!3422 = !DILocation(line: 842, column: 9, scope: !3323)
!3423 = !DILocation(line: 844, column: 13, scope: !3323)
!3424 = !DILocation(line: 844, column: 33, scope: !3323)
!3425 = !DILocation(line: 845, column: 12, scope: !3323)
!3426 = !DILocation(line: 847, column: 9, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 847, column: 9)
!3428 = !DILocation(line: 848, column: 11, scope: !3427)
!3429 = !DILocation(line: 848, column: 9, scope: !3427)
!3430 = !DILocation(line: 847, column: 9, scope: !3323)
!3431 = !DILocation(line: 849, column: 20, scope: !3427)
!3432 = !DILocation(line: 849, column: 7, scope: !3427)
!3433 = !DILocation(line: 850, column: 5, scope: !3323)
!3434 = !DILocation(line: 850, column: 17, scope: !3323)
!3435 = !DILocation(line: 850, column: 20, scope: !3323)
!3436 = !DILocation(line: 851, column: 7, scope: !3323)
!3437 = distinct !{!3437, !3433, !3436}
!3438 = distinct !{!3438, !3415, !3439}
!3439 = !DILocation(line: 852, column: 3, scope: !3325)
!3440 = !DILocation(line: 858, column: 8, scope: !3318)
!3441 = !DILocation(line: 859, column: 21, scope: !3318)
!3442 = !DILocation(line: 859, column: 8, scope: !3318)
!3443 = !DILocation(line: 862, column: 8, scope: !3318)
!3444 = !DILocation(line: 863, column: 8, scope: !3318)
!3445 = !DILocation(line: 864, column: 8, scope: !3318)
!3446 = !DILocation(line: 865, column: 8, scope: !3318)
!3447 = !DILocation(line: 867, column: 13, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3318, file: !3, line: 867, column: 8)
!3449 = !DILocation(line: 0, scope: !3448)
!3450 = !DILocation(line: 867, column: 30, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 867, column: 8)
!3452 = !DILocation(line: 867, column: 8, scope: !3448)
!3453 = !DILocation(line: 868, column: 7, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 868, column: 7)
!3455 = !DILocation(line: 868, column: 7, scope: !3451)
!3456 = !DILocation(line: 869, column: 14, scope: !3454)
!3457 = !DILocation(line: 869, column: 11, scope: !3454)
!3458 = !DILocation(line: 869, column: 5, scope: !3454)
!3459 = !DILocation(line: 867, column: 60, scope: !3451)
!3460 = !DILocation(line: 867, column: 8, scope: !3451)
!3461 = distinct !{!3461, !3452, !3462}
!3462 = !DILocation(line: 869, column: 73, scope: !3448)
!3463 = !DILocation(line: 872, column: 21, scope: !3318)
!3464 = !DILocation(line: 0, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 874, column: 7)
!3466 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 873, column: 8)
!3467 = distinct !DILexicalBlock(scope: !3318, file: !3, line: 873, column: 8)
!3468 = !DILocation(line: 873, column: 13, scope: !3467)
!3469 = !DILocation(line: 873, column: 30, scope: !3466)
!3470 = !DILocation(line: 873, column: 8, scope: !3467)
!3471 = !DILocation(line: 874, column: 7, scope: !3465)
!3472 = !DILocation(line: 874, column: 7, scope: !3466)
!3473 = !DILocation(line: 875, column: 17, scope: !3465)
!3474 = !DILocation(line: 875, column: 5, scope: !3465)
!3475 = !DILocation(line: 873, column: 60, scope: !3466)
!3476 = !DILocation(line: 873, column: 8, scope: !3466)
!3477 = distinct !{!3477, !3470, !3478}
!3478 = !DILocation(line: 875, column: 17, scope: !3467)
!3479 = !DILocation(line: 876, column: 6, scope: !3319)
!3480 = !DILocation(line: 876, column: 6, scope: !3318)
!3481 = !DILocation(line: 879, column: 16, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 879, column: 16)
!3483 = !DILocation(line: 879, column: 39, scope: !3482)
!3484 = !DILocation(line: 879, column: 36, scope: !3482)
!3485 = !DILocation(line: 880, column: 25, scope: !3482)
!3486 = !DILocation(line: 880, column: 2, scope: !3482)
!3487 = !DILocation(line: 884, column: 18, scope: !3330)
!3488 = !DILocation(line: 884, column: 23, scope: !3330)
!3489 = !DILocation(line: 884, column: 28, scope: !3330)
!3490 = !DILocation(line: 884, column: 44, scope: !3330)
!3491 = !DILocation(line: 884, column: 60, scope: !3330)
!3492 = !DILocation(line: 884, column: 50, scope: !3330)
!3493 = !DILocation(line: 884, column: 11, scope: !3308)
!3494 = !DILocation(line: 891, column: 8, scope: !3333)
!3495 = !DILocation(line: 891, column: 31, scope: !3333)
!3496 = !DILocation(line: 891, column: 28, scope: !3333)
!3497 = !DILocation(line: 891, column: 45, scope: !3333)
!3498 = !DILocation(line: 891, column: 61, scope: !3333)
!3499 = !DILocation(line: 891, column: 51, scope: !3333)
!3500 = !DILocation(line: 891, column: 8, scope: !3329)
!3501 = !DILocation(line: 894, column: 25, scope: !3332)
!3502 = !DILocation(line: 0, scope: !3332)
!3503 = !DILocation(line: 900, column: 19, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 900, column: 8)
!3505 = !DILocation(line: 0, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 900, column: 8)
!3507 = !DILocation(line: 0, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 904, column: 7)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !3, line: 903, column: 9)
!3510 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 901, column: 3)
!3511 = !DILocation(line: 0, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 912, column: 27)
!3513 = !DILocation(line: 900, column: 13, scope: !3504)
!3514 = !DILocation(line: 0, scope: !3504)
!3515 = !DILocation(line: 900, column: 50, scope: !3506)
!3516 = !DILocation(line: 900, column: 41, scope: !3506)
!3517 = !DILocation(line: 900, column: 8, scope: !3504)
!3518 = !DILocation(line: 902, column: 12, scope: !3510)
!3519 = !DILocation(line: 903, column: 9, scope: !3509)
!3520 = !DILocation(line: 903, column: 9, scope: !3510)
!3521 = !DILocation(line: 905, column: 28, scope: !3508)
!3522 = !DILocation(line: 905, column: 9, scope: !3508)
!3523 = !DILocation(line: 905, column: 26, scope: !3508)
!3524 = !DILocation(line: 906, column: 9, scope: !3508)
!3525 = !DILocation(line: 906, column: 37, scope: !3508)
!3526 = !DILocation(line: 907, column: 25, scope: !3508)
!3527 = !DILocation(line: 908, column: 27, scope: !3508)
!3528 = !DILocation(line: 908, column: 25, scope: !3508)
!3529 = !DILocation(line: 909, column: 26, scope: !3508)
!3530 = !DILocation(line: 910, column: 13, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 910, column: 13)
!3532 = !DILocation(line: 910, column: 13, scope: !3508)
!3533 = !DILocation(line: 911, column: 4, scope: !3531)
!3534 = !DILocation(line: 911, column: 32, scope: !3531)
!3535 = !DILocation(line: 912, column: 27, scope: !3512)
!3536 = !DILocation(line: 912, column: 39, scope: !3512)
!3537 = !DILocation(line: 912, column: 27, scope: !3508)
!3538 = !DILocation(line: 913, column: 16, scope: !3512)
!3539 = !DILocation(line: 913, column: 4, scope: !3512)
!3540 = !DILocation(line: 916, column: 7, scope: !3509)
!3541 = !DILocation(line: 900, column: 8, scope: !3506)
!3542 = distinct !{!3542, !3517, !3543}
!3543 = !DILocation(line: 917, column: 3, scope: !3504)
!3544 = !DILocation(line: 921, column: 8, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 921, column: 8)
!3546 = !DILocation(line: 921, column: 8, scope: !3329)
!3547 = !DILocation(line: 922, column: 6, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 922, column: 6)
!3549 = !DILocation(line: 0, scope: !3548)
!3550 = !DILocation(line: 0, scope: !3329)
!3551 = !DILocation(line: 922, column: 28, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 922, column: 6)
!3553 = !DILocation(line: 923, column: 12, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 923, column: 12)
!3555 = !DILocation(line: 923, column: 12, scope: !3552)
!3556 = !DILocation(line: 924, column: 35, scope: !3554)
!3557 = !DILocation(line: 924, column: 12, scope: !3554)
!3558 = !DILocation(line: 924, column: 9, scope: !3554)
!3559 = !DILocation(line: 924, column: 3, scope: !3554)
!3560 = !DILocation(line: 922, column: 58, scope: !3552)
!3561 = !DILocation(line: 922, column: 6, scope: !3552)
!3562 = distinct !{!3562, !3547, !3563}
!3563 = !DILocation(line: 925, column: 39, scope: !3548)
!3564 = !DILocation(line: 780, column: 3, scope: !3309)
!3565 = distinct !{!3565, !3351, !3566}
!3566 = !DILocation(line: 927, column: 5, scope: !3310)
!3567 = !DILocation(line: 928, column: 1, scope: !3299)
!3568 = distinct !DISubprogram(name: "mark_referenced_regs", scope: !3, file: !3, line: 1002, type: !3569, scopeLine: 1003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3576)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{null, !3571, !3572, !557}
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_typedef, name: "refmarker_fn", file: !3, line: 104, baseType: !3574)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{null, !3571, !5, !553, !557}
!3576 = !{!3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3587}
!3577 = !DILocalVariable(name: "loc", arg: 1, scope: !3568, file: !3, line: 1002, type: !3571)
!3578 = !DILocalVariable(name: "mark", arg: 2, scope: !3568, file: !3, line: 1002, type: !3572)
!3579 = !DILocalVariable(name: "arg", arg: 3, scope: !3568, file: !3, line: 1002, type: !557)
!3580 = !DILocalVariable(name: "code", scope: !3568, file: !3, line: 1004, type: !377)
!3581 = !DILocalVariable(name: "fmt", scope: !3568, file: !3, line: 1005, type: !558)
!3582 = !DILocalVariable(name: "i", scope: !3568, file: !3, line: 1006, type: !553)
!3583 = !DILocalVariable(name: "j", scope: !3568, file: !3, line: 1006, type: !553)
!3584 = !DILocalVariable(name: "regno", scope: !3585, file: !3, line: 1035, type: !553)
!3585 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 1034, column: 5)
!3586 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 1033, column: 7)
!3587 = !DILocalVariable(name: "hardregno", scope: !3585, file: !3, line: 1036, type: !553)
!3588 = !DILocation(line: 0, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !3, line: 1041, column: 16)
!3590 = distinct !DILexicalBlock(scope: !3585, file: !3, line: 1039, column: 11)
!3591 = !DILocation(line: 1052, column: 2, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !3, line: 1051, column: 16)
!3593 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 1049, column: 16)
!3594 = !DILocation(line: 0, scope: !3568)
!3595 = !DILocation(line: 1004, column: 24, scope: !3568)
!3596 = !DILocation(line: 1008, column: 7, scope: !3568)
!3597 = !DILocation(line: 1009, column: 28, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 1008, column: 7)
!3599 = !DILocation(line: 1009, column: 5, scope: !3598)
!3600 = !DILocation(line: 1012, column: 14, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 1011, column: 5)
!3602 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 1010, column: 7)
!3603 = !DILocation(line: 1010, column: 19, scope: !3602)
!3604 = !DILocation(line: 1013, column: 14, scope: !3601)
!3605 = !DILocation(line: 1014, column: 24, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 1014, column: 11)
!3607 = !DILocation(line: 1014, column: 27, scope: !3606)
!3608 = !DILocation(line: 1014, column: 40, scope: !3606)
!3609 = !DILocation(line: 1015, column: 4, scope: !3606)
!3610 = !DILocation(line: 1016, column: 26, scope: !3606)
!3611 = !DILocation(line: 1017, column: 8, scope: !3606)
!3612 = !DILocation(line: 1017, column: 11, scope: !3606)
!3613 = !DILocation(line: 1017, column: 37, scope: !3606)
!3614 = !DILocation(line: 1021, column: 8, scope: !3606)
!3615 = !DILocation(line: 1021, column: 13, scope: !3606)
!3616 = !DILocation(line: 1022, column: 9, scope: !3606)
!3617 = !DILocation(line: 1022, column: 6, scope: !3606)
!3618 = !DILocation(line: 1023, column: 5, scope: !3606)
!3619 = !DILocation(line: 1024, column: 9, scope: !3606)
!3620 = !DILocation(line: 1014, column: 11, scope: !3601)
!3621 = !DILocation(line: 1027, column: 19, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 1027, column: 7)
!3623 = !DILocation(line: 1029, column: 14, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 1028, column: 5)
!3625 = !DILocation(line: 1030, column: 14, scope: !3624)
!3626 = !DILocation(line: 1031, column: 5, scope: !3624)
!3627 = !DILocation(line: 1033, column: 12, scope: !3586)
!3628 = !DILocation(line: 1033, column: 7, scope: !3568)
!3629 = !DILocation(line: 1035, column: 19, scope: !3585)
!3630 = !DILocation(line: 0, scope: !3585)
!3631 = !DILocation(line: 1036, column: 30, scope: !3585)
!3632 = !DILocation(line: 1036, column: 24, scope: !3585)
!3633 = !DILocation(line: 1037, column: 12, scope: !3585)
!3634 = !DILocation(line: 1039, column: 21, scope: !3590)
!3635 = !DILocation(line: 1039, column: 11, scope: !3585)
!3636 = !DILocation(line: 1049, column: 16, scope: !3593)
!3637 = !DILocation(line: 1049, column: 37, scope: !3593)
!3638 = !DILocation(line: 1049, column: 16, scope: !3589)
!3639 = !DILocation(line: 1050, column: 25, scope: !3593)
!3640 = !DILocation(line: 1050, column: 2, scope: !3593)
!3641 = !DILocation(line: 1051, column: 16, scope: !3592)
!3642 = !DILocation(line: 1051, column: 41, scope: !3592)
!3643 = !DILocation(line: 1051, column: 16, scope: !3593)
!3644 = !DILocation(line: 1065, column: 1, scope: !3568)
!3645 = !DILocation(line: 1056, column: 9, scope: !3568)
!3646 = !DILocation(line: 1040, column: 13, scope: !3590)
!3647 = !DILocation(line: 1040, column: 2, scope: !3590)
!3648 = !DILocation(line: 1041, column: 16, scope: !3590)
!3649 = !DILocation(line: 1057, column: 12, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 1057, column: 3)
!3651 = !DILocation(line: 1057, column: 8, scope: !3650)
!3652 = !DILocation(line: 0, scope: !3650)
!3653 = !DILocation(line: 1057, column: 41, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 1057, column: 3)
!3655 = !DILocation(line: 1057, column: 3, scope: !3650)
!3656 = !DILocation(line: 1059, column: 11, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 1059, column: 11)
!3658 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 1058, column: 5)
!3659 = !DILocation(line: 1059, column: 18, scope: !3657)
!3660 = !DILocation(line: 1059, column: 11, scope: !3658)
!3661 = !DILocation(line: 1060, column: 25, scope: !3657)
!3662 = !DILocation(line: 1060, column: 2, scope: !3657)
!3663 = !DILocation(line: 1061, column: 23, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 1061, column: 16)
!3665 = !DILocation(line: 1061, column: 16, scope: !3657)
!3666 = !DILocation(line: 1062, column: 11, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 1062, column: 2)
!3668 = !DILocation(line: 1062, column: 7, scope: !3667)
!3669 = !DILocation(line: 0, scope: !3667)
!3670 = !DILocation(line: 1062, column: 36, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 1062, column: 2)
!3672 = !DILocation(line: 1062, column: 2, scope: !3667)
!3673 = !DILocation(line: 1063, column: 27, scope: !3671)
!3674 = !DILocation(line: 1063, column: 4, scope: !3671)
!3675 = !DILocation(line: 1062, column: 2, scope: !3671)
!3676 = distinct !{!3676, !3672, !3677}
!3677 = !DILocation(line: 1063, column: 58, scope: !3667)
!3678 = !DILocation(line: 1057, column: 3, scope: !3654)
!3679 = distinct !{!3679, !3655, !3680}
!3680 = !DILocation(line: 1064, column: 5, scope: !3650)
!3681 = distinct !DISubprogram(name: "mark_reg_as_referenced", scope: !3, file: !3, line: 1072, type: !3574, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3682)
!3682 = !{!3683, !3684, !3685, !3686}
!3683 = !DILocalVariable(name: "loc", arg: 1, scope: !3681, file: !3, line: 1072, type: !3571)
!3684 = !DILocalVariable(name: "mode", arg: 2, scope: !3681, file: !3, line: 1073, type: !5)
!3685 = !DILocalVariable(name: "hardregno", arg: 3, scope: !3681, file: !3, line: 1074, type: !553)
!3686 = !DILocalVariable(name: "arg", arg: 4, scope: !3681, file: !3, line: 1075, type: !557)
!3687 = !DILocation(line: 0, scope: !3681)
!3688 = !DILocation(line: 1077, column: 3, scope: !3681)
!3689 = !DILocation(line: 1078, column: 1, scope: !3681)
!3690 = distinct !DISubprogram(name: "insert_restore", scope: !3, file: !3, line: 1169, type: !3691, scopeLine: 1171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3693)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!553, !2427, !553, !553, !553, !1645}
!3693 = !{!3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3710}
!3694 = !DILocalVariable(name: "chain", arg: 1, scope: !3690, file: !3, line: 1169, type: !2427)
!3695 = !DILocalVariable(name: "before_p", arg: 2, scope: !3690, file: !3, line: 1169, type: !553)
!3696 = !DILocalVariable(name: "regno", arg: 3, scope: !3690, file: !3, line: 1169, type: !553)
!3697 = !DILocalVariable(name: "maxrestore", arg: 4, scope: !3690, file: !3, line: 1170, type: !553)
!3698 = !DILocalVariable(name: "save_mode", arg: 5, scope: !3690, file: !3, line: 1170, type: !1645)
!3699 = !DILocalVariable(name: "i", scope: !3690, file: !3, line: 1172, type: !553)
!3700 = !DILocalVariable(name: "k", scope: !3690, file: !3, line: 1172, type: !553)
!3701 = !DILocalVariable(name: "pat", scope: !3690, file: !3, line: 1173, type: !563)
!3702 = !DILocalVariable(name: "code", scope: !3690, file: !3, line: 1174, type: !553)
!3703 = !DILocalVariable(name: "numregs", scope: !3690, file: !3, line: 1175, type: !7)
!3704 = !DILocalVariable(name: "new_chain", scope: !3690, file: !3, line: 1176, type: !2427)
!3705 = !DILocalVariable(name: "mem", scope: !3690, file: !3, line: 1177, type: !563)
!3706 = !DILocalVariable(name: "j", scope: !3707, file: !3, line: 1193, type: !553)
!3707 = distinct !DILexicalBlock(scope: !3708, file: !3, line: 1192, column: 5)
!3708 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 1191, column: 3)
!3709 = distinct !DILexicalBlock(scope: !3690, file: !3, line: 1191, column: 3)
!3710 = !DILocalVariable(name: "ok", scope: !3707, file: !3, line: 1194, type: !553)
!3711 = !DILocation(line: 0, scope: !3690)
!3712 = !DILocation(line: 1185, column: 3, scope: !3690)
!3713 = !DILocation(line: 0, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 1200, column: 6)
!3715 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 1199, column: 7)
!3716 = distinct !DILexicalBlock(scope: !3707, file: !3, line: 1199, column: 7)
!3717 = !DILocation(line: 1191, column: 8, scope: !3709)
!3718 = !DILocation(line: 0, scope: !3709)
!3719 = !DILocation(line: 1175, column: 16, scope: !3690)
!3720 = !DILocation(line: 1191, column: 26, scope: !3708)
!3721 = !DILocation(line: 1191, column: 3, scope: !3709)
!3722 = !DILocation(line: 0, scope: !3707)
!3723 = !DILocation(line: 1196, column: 11, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3707, file: !3, line: 1196, column: 11)
!3725 = !DILocation(line: 1196, column: 36, scope: !3724)
!3726 = !DILocation(line: 1196, column: 11, scope: !3707)
!3727 = !DILocation(line: 1199, column: 7, scope: !3716)
!3728 = !DILocation(line: 0, scope: !3716)
!3729 = !DILocation(line: 1199, column: 21, scope: !3715)
!3730 = !DILocation(line: 1200, column: 8, scope: !3714)
!3731 = !DILocation(line: 1200, column: 6, scope: !3715)
!3732 = !DILocation(line: 1199, column: 27, scope: !3715)
!3733 = !DILocation(line: 1199, column: 7, scope: !3715)
!3734 = distinct !{!3734, !3727, !3735}
!3735 = !DILocation(line: 1204, column: 4, scope: !3716)
!3736 = !DILocation(line: 1191, column: 32, scope: !3708)
!3737 = !DILocation(line: 1191, column: 3, scope: !3708)
!3738 = distinct !{!3738, !3721, !3739}
!3739 = !DILocation(line: 1211, column: 5, scope: !3709)
!3740 = !DILocation(line: 1213, column: 9, scope: !3690)
!3741 = !DILocation(line: 1214, column: 7, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3690, file: !3, line: 1214, column: 7)
!3743 = !DILocation(line: 1214, column: 25, scope: !3742)
!3744 = !DILocation(line: 1215, column: 7, scope: !3742)
!3745 = !DILocation(line: 1215, column: 31, scope: !3742)
!3746 = !DILocation(line: 1215, column: 28, scope: !3742)
!3747 = !DILocation(line: 1216, column: 7, scope: !3742)
!3748 = !DILocation(line: 1216, column: 36, scope: !3742)
!3749 = !DILocation(line: 1216, column: 21, scope: !3742)
!3750 = !DILocation(line: 1216, column: 18, scope: !3742)
!3751 = !DILocation(line: 1219, column: 7, scope: !3742)
!3752 = !DILocation(line: 1219, column: 10, scope: !3742)
!3753 = !DILocation(line: 1219, column: 50, scope: !3742)
!3754 = !DILocation(line: 1214, column: 7, scope: !3690)
!3755 = !DILocation(line: 1220, column: 11, scope: !3742)
!3756 = !DILocation(line: 1220, column: 5, scope: !3742)
!3757 = !DILocation(line: 1222, column: 11, scope: !3742)
!3758 = !DILocation(line: 0, scope: !3742)
!3759 = !DILocation(line: 1226, column: 3, scope: !3690)
!3760 = !DILocation(line: 1229, column: 9, scope: !3690)
!3761 = !DILocation(line: 1232, column: 35, scope: !3690)
!3762 = !DILocation(line: 1232, column: 10, scope: !3690)
!3763 = !DILocation(line: 1233, column: 15, scope: !3690)
!3764 = !DILocation(line: 0, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !3, line: 1237, column: 5)
!3766 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 1236, column: 3)
!3767 = distinct !DILexicalBlock(scope: !3690, file: !3, line: 1236, column: 3)
!3768 = !DILocation(line: 1236, column: 17, scope: !3766)
!3769 = !DILocation(line: 1236, column: 8, scope: !3767)
!3770 = !DILocation(line: 0, scope: !3767)
!3771 = !DILocation(line: 1236, column: 3, scope: !3767)
!3772 = !DILocation(line: 1238, column: 7, scope: !3765)
!3773 = !DILocation(line: 1239, column: 7, scope: !3765)
!3774 = !DILocation(line: 1240, column: 19, scope: !3765)
!3775 = !DILocation(line: 1236, column: 23, scope: !3766)
!3776 = !DILocation(line: 1236, column: 3, scope: !3766)
!3777 = distinct !{!3777, !3771, !3778}
!3778 = !DILocation(line: 1241, column: 5, scope: !3767)
!3779 = !DILocation(line: 1244, column: 18, scope: !3690)
!3780 = !DILocation(line: 1244, column: 3, scope: !3690)
!3781 = distinct !DISubprogram(name: "insert_save", scope: !3, file: !3, line: 1250, type: !3782, scopeLine: 1252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3784)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!553, !2427, !553, !553, !1644, !1645}
!3784 = !{!3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3801}
!3785 = !DILocalVariable(name: "chain", arg: 1, scope: !3781, file: !3, line: 1250, type: !2427)
!3786 = !DILocalVariable(name: "before_p", arg: 2, scope: !3781, file: !3, line: 1250, type: !553)
!3787 = !DILocalVariable(name: "regno", arg: 3, scope: !3781, file: !3, line: 1250, type: !553)
!3788 = !DILocalVariable(name: "to_save", arg: 4, scope: !3781, file: !3, line: 1251, type: !1644)
!3789 = !DILocalVariable(name: "save_mode", arg: 5, scope: !3781, file: !3, line: 1251, type: !1645)
!3790 = !DILocalVariable(name: "i", scope: !3781, file: !3, line: 1253, type: !553)
!3791 = !DILocalVariable(name: "k", scope: !3781, file: !3, line: 1254, type: !7)
!3792 = !DILocalVariable(name: "pat", scope: !3781, file: !3, line: 1255, type: !563)
!3793 = !DILocalVariable(name: "code", scope: !3781, file: !3, line: 1256, type: !553)
!3794 = !DILocalVariable(name: "numregs", scope: !3781, file: !3, line: 1257, type: !7)
!3795 = !DILocalVariable(name: "new_chain", scope: !3781, file: !3, line: 1258, type: !2427)
!3796 = !DILocalVariable(name: "mem", scope: !3781, file: !3, line: 1259, type: !563)
!3797 = !DILocalVariable(name: "j", scope: !3798, file: !3, line: 1275, type: !553)
!3798 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 1274, column: 5)
!3799 = distinct !DILexicalBlock(scope: !3800, file: !3, line: 1273, column: 3)
!3800 = distinct !DILexicalBlock(scope: !3781, file: !3, line: 1273, column: 3)
!3801 = !DILocalVariable(name: "ok", scope: !3798, file: !3, line: 1276, type: !553)
!3802 = !DILocation(line: 0, scope: !3781)
!3803 = !DILocation(line: 1267, column: 3, scope: !3781)
!3804 = !DILocation(line: 1273, column: 8, scope: !3800)
!3805 = !DILocation(line: 0, scope: !3800)
!3806 = !DILocation(line: 1257, column: 16, scope: !3781)
!3807 = !DILocation(line: 1273, column: 30, scope: !3799)
!3808 = !DILocation(line: 1273, column: 3, scope: !3800)
!3809 = !DILocation(line: 0, scope: !3798)
!3810 = !DILocation(line: 1277, column: 11, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3798, file: !3, line: 1277, column: 11)
!3812 = !DILocation(line: 1277, column: 36, scope: !3811)
!3813 = !DILocation(line: 1277, column: 11, scope: !3798)
!3814 = !DILocation(line: 1280, column: 7, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3798, file: !3, line: 1280, column: 7)
!3816 = !DILocation(line: 0, scope: !3815)
!3817 = !DILocation(line: 1280, column: 21, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 1280, column: 7)
!3819 = !DILocation(line: 1281, column: 8, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3818, file: !3, line: 1281, column: 6)
!3821 = !DILocation(line: 1281, column: 6, scope: !3818)
!3822 = !DILocation(line: 1280, column: 27, scope: !3818)
!3823 = !DILocation(line: 1280, column: 7, scope: !3818)
!3824 = distinct !{!3824, !3814, !3825}
!3825 = !DILocation(line: 1285, column: 4, scope: !3815)
!3826 = !DILocation(line: 1273, column: 36, scope: !3799)
!3827 = !DILocation(line: 1273, column: 3, scope: !3799)
!3828 = distinct !{!3828, !3808, !3829}
!3829 = !DILocation(line: 1292, column: 5, scope: !3800)
!3830 = !DILocation(line: 1294, column: 9, scope: !3781)
!3831 = !DILocation(line: 1295, column: 7, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3781, file: !3, line: 1295, column: 7)
!3833 = !DILocation(line: 1295, column: 25, scope: !3832)
!3834 = !DILocation(line: 1296, column: 7, scope: !3832)
!3835 = !DILocation(line: 1296, column: 31, scope: !3832)
!3836 = !DILocation(line: 1296, column: 28, scope: !3832)
!3837 = !DILocation(line: 1297, column: 7, scope: !3832)
!3838 = !DILocation(line: 1297, column: 36, scope: !3832)
!3839 = !DILocation(line: 1297, column: 21, scope: !3832)
!3840 = !DILocation(line: 1297, column: 18, scope: !3832)
!3841 = !DILocation(line: 1300, column: 7, scope: !3832)
!3842 = !DILocation(line: 1300, column: 10, scope: !3832)
!3843 = !DILocation(line: 1300, column: 50, scope: !3832)
!3844 = !DILocation(line: 1295, column: 7, scope: !3781)
!3845 = !DILocation(line: 1301, column: 11, scope: !3832)
!3846 = !DILocation(line: 1301, column: 5, scope: !3832)
!3847 = !DILocation(line: 1303, column: 11, scope: !3832)
!3848 = !DILocation(line: 0, scope: !3832)
!3849 = !DILocation(line: 1307, column: 3, scope: !3781)
!3850 = !DILocation(line: 1310, column: 9, scope: !3781)
!3851 = !DILocation(line: 1313, column: 32, scope: !3781)
!3852 = !DILocation(line: 1313, column: 10, scope: !3781)
!3853 = !DILocation(line: 1314, column: 15, scope: !3781)
!3854 = !DILocation(line: 0, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 1318, column: 5)
!3856 = distinct !DILexicalBlock(scope: !3857, file: !3, line: 1317, column: 3)
!3857 = distinct !DILexicalBlock(scope: !3781, file: !3, line: 1317, column: 3)
!3858 = !DILocation(line: 1317, column: 17, scope: !3856)
!3859 = !DILocation(line: 1317, column: 8, scope: !3857)
!3860 = !DILocation(line: 0, scope: !3857)
!3861 = !DILocation(line: 1317, column: 3, scope: !3857)
!3862 = !DILocation(line: 1319, column: 7, scope: !3855)
!3863 = !DILocation(line: 1320, column: 7, scope: !3855)
!3864 = !DILocation(line: 1321, column: 19, scope: !3855)
!3865 = !DILocation(line: 1317, column: 29, scope: !3856)
!3866 = !DILocation(line: 1317, column: 3, scope: !3856)
!3867 = distinct !{!3867, !3861, !3868}
!3868 = !DILocation(line: 1322, column: 5, scope: !3857)
!3869 = !DILocation(line: 1325, column: 18, scope: !3781)
!3870 = !DILocation(line: 1325, column: 3, scope: !3781)
!3871 = distinct !DISubprogram(name: "replace_reg_with_saved_mem", scope: !3, file: !3, line: 1085, type: !3574, scopeLine: 1089, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3872)
!3872 = !{!3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881}
!3873 = !DILocalVariable(name: "loc", arg: 1, scope: !3871, file: !3, line: 1085, type: !3571)
!3874 = !DILocalVariable(name: "mode", arg: 2, scope: !3871, file: !3, line: 1086, type: !5)
!3875 = !DILocalVariable(name: "regno", arg: 3, scope: !3871, file: !3, line: 1087, type: !553)
!3876 = !DILocalVariable(name: "arg", arg: 4, scope: !3871, file: !3, line: 1088, type: !557)
!3877 = !DILocalVariable(name: "i", scope: !3871, file: !3, line: 1090, type: !7)
!3878 = !DILocalVariable(name: "nregs", scope: !3871, file: !3, line: 1090, type: !7)
!3879 = !DILocalVariable(name: "mem", scope: !3871, file: !3, line: 1091, type: !563)
!3880 = !DILocalVariable(name: "save_mode", scope: !3871, file: !3, line: 1092, type: !1645)
!3881 = !DILocalVariable(name: "offset", scope: !3882, file: !3, line: 1119, type: !553)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 1116, column: 2)
!3883 = distinct !DILexicalBlock(scope: !3884, file: !3, line: 1115, column: 11)
!3884 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 1109, column: 5)
!3885 = distinct !DILexicalBlock(scope: !3871, file: !3, line: 1107, column: 7)
!3886 = !DILocation(line: 0, scope: !3871)
!3887 = !DILocation(line: 1090, column: 27, scope: !3871)
!3888 = !DILocation(line: 1092, column: 34, scope: !3871)
!3889 = !DILocation(line: 0, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 1095, column: 9)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 1094, column: 3)
!3892 = distinct !DILexicalBlock(scope: !3871, file: !3, line: 1094, column: 3)
!3893 = !DILocation(line: 1094, column: 17, scope: !3891)
!3894 = !DILocation(line: 1094, column: 8, scope: !3892)
!3895 = !DILocation(line: 0, scope: !3892)
!3896 = !DILocation(line: 1094, column: 3, scope: !3892)
!3897 = !DILocation(line: 1095, column: 9, scope: !3890)
!3898 = !DILocation(line: 1095, column: 9, scope: !3891)
!3899 = !DILocation(line: 1094, column: 27, scope: !3891)
!3900 = !DILocation(line: 1094, column: 3, scope: !3891)
!3901 = distinct !{!3901, !3896, !3902}
!3902 = !DILocation(line: 1096, column: 7, scope: !3892)
!3903 = !DILocation(line: 1100, column: 9, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3871, file: !3, line: 1100, column: 7)
!3905 = !DILocation(line: 1100, column: 7, scope: !3871)
!3906 = !DILocation(line: 1103, column: 3, scope: !3871)
!3907 = !DILocation(line: 1103, column: 10, scope: !3871)
!3908 = !DILocation(line: 1103, column: 14, scope: !3871)
!3909 = !DILocation(line: 1104, column: 10, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3871, file: !3, line: 1104, column: 9)
!3911 = !DILocation(line: 1104, column: 9, scope: !3871)
!3912 = distinct !{!3912, !3906, !3913}
!3913 = !DILocation(line: 1105, column: 7, scope: !3871)
!3914 = !DILocation(line: 1107, column: 9, scope: !3885)
!3915 = !DILocation(line: 1108, column: 7, scope: !3885)
!3916 = !DILocation(line: 1108, column: 10, scope: !3885)
!3917 = !DILocation(line: 1107, column: 7, scope: !3871)
!3918 = !DILocation(line: 1110, column: 13, scope: !3884)
!3919 = !DILocation(line: 1112, column: 59, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3884, file: !3, line: 1112, column: 11)
!3921 = !DILocation(line: 1112, column: 35, scope: !3920)
!3922 = !DILocation(line: 1112, column: 17, scope: !3920)
!3923 = !DILocation(line: 1112, column: 11, scope: !3884)
!3924 = !DILocation(line: 1113, column: 8, scope: !3920)
!3925 = !DILocation(line: 1113, column: 2, scope: !3920)
!3926 = !DILocation(line: 0, scope: !3884)
!3927 = !DILocation(line: 1115, column: 11, scope: !3883)
!3928 = !DILocation(line: 1115, column: 26, scope: !3883)
!3929 = !DILocation(line: 1115, column: 11, scope: !3884)
!3930 = !DILocation(line: 0, scope: !3882)
!3931 = !DILocation(line: 1130, column: 10, scope: !3882)
!3932 = !DILocation(line: 1131, column: 2, scope: !3882)
!3933 = !DILocation(line: 1135, column: 13, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 1134, column: 5)
!3935 = !DILocation(line: 0, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3937, file: !3, line: 1138, column: 4)
!3937 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 1137, column: 6)
!3938 = distinct !DILexicalBlock(scope: !3939, file: !3, line: 1136, column: 7)
!3939 = distinct !DILexicalBlock(scope: !3934, file: !3, line: 1136, column: 7)
!3940 = !DILocation(line: 0, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3937, file: !3, line: 1143, column: 4)
!3942 = !DILocation(line: 1136, column: 21, scope: !3938)
!3943 = !DILocation(line: 1136, column: 12, scope: !3939)
!3944 = !DILocation(line: 0, scope: !3939)
!3945 = !DILocation(line: 1136, column: 7, scope: !3939)
!3946 = !DILocation(line: 1137, column: 6, scope: !3937)
!3947 = !DILocation(line: 1137, column: 6, scope: !3938)
!3948 = !DILocation(line: 1139, column: 6, scope: !3936)
!3949 = !DILocation(line: 1140, column: 38, scope: !3936)
!3950 = !DILocation(line: 1140, column: 28, scope: !3936)
!3951 = !DILocation(line: 1140, column: 6, scope: !3936)
!3952 = !DILocation(line: 1140, column: 26, scope: !3936)
!3953 = !DILocation(line: 1141, column: 4, scope: !3936)
!3954 = !DILocation(line: 1144, column: 6, scope: !3941)
!3955 = !DILocation(line: 1145, column: 41, scope: !3941)
!3956 = !DILocation(line: 1145, column: 28, scope: !3941)
!3957 = !DILocation(line: 1145, column: 6, scope: !3941)
!3958 = !DILocation(line: 1145, column: 26, scope: !3941)
!3959 = !DILocation(line: 1136, column: 31, scope: !3938)
!3960 = !DILocation(line: 1136, column: 7, scope: !3938)
!3961 = distinct !{!3961, !3945, !3962}
!3962 = !DILocation(line: 1147, column: 4, scope: !3939)
!3963 = !DILocation(line: 1150, column: 3, scope: !3871)
!3964 = !DILocation(line: 0, scope: !3885)
!3965 = !DILocation(line: 1151, column: 8, scope: !3871)
!3966 = !DILocation(line: 1152, column: 1, scope: !3871)
!3967 = distinct !DISubprogram(name: "rhs_regno", scope: !378, file: !378, line: 1051, type: !3968, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3970)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!7, !3050}
!3970 = !{!3971}
!3971 = !DILocalVariable(name: "x", arg: 1, scope: !3967, file: !378, line: 1051, type: !3050)
!3972 = !DILocation(line: 0, scope: !3967)
!3973 = !DILocation(line: 1053, column: 10, scope: !3967)
!3974 = !DILocation(line: 1053, column: 3, scope: !3967)
!3975 = distinct !DISubprogram(name: "recog_memoized", scope: !3976, file: !3976, line: 150, type: !3977, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3979)
!3976 = !DIFile(filename: "./recog.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!553, !563}
!3979 = !{!3980}
!3980 = !DILocalVariable(name: "insn", arg: 1, scope: !3975, file: !3976, line: 150, type: !563)
!3981 = !DILocation(line: 0, scope: !3975)
!3982 = !DILocation(line: 152, column: 7, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3975, file: !3976, line: 152, column: 7)
!3984 = !DILocation(line: 152, column: 24, scope: !3983)
!3985 = !DILocation(line: 152, column: 7, scope: !3975)
!3986 = !DILocation(line: 153, column: 31, scope: !3983)
!3987 = !DILocation(line: 153, column: 24, scope: !3983)
!3988 = !DILocation(line: 153, column: 22, scope: !3983)
!3989 = !DILocation(line: 153, column: 5, scope: !3983)
!3990 = !DILocation(line: 154, column: 10, scope: !3975)
!3991 = !DILocation(line: 154, column: 3, scope: !3975)
!3992 = distinct !DISubprogram(name: "add_to_hard_reg_set", scope: !3019, file: !3019, line: 307, type: !3993, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3995)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{null, !1644, !5, !7}
!3995 = !{!3996, !3997, !3998, !3999}
!3996 = !DILocalVariable(name: "regs", arg: 1, scope: !3992, file: !3019, line: 307, type: !1644)
!3997 = !DILocalVariable(name: "mode", arg: 2, scope: !3992, file: !3019, line: 307, type: !5)
!3998 = !DILocalVariable(name: "regno", arg: 3, scope: !3992, file: !3019, line: 308, type: !7)
!3999 = !DILocalVariable(name: "end_regno", scope: !3992, file: !3019, line: 310, type: !7)
!4000 = !DILocation(line: 0, scope: !3992)
!4001 = !DILocation(line: 312, column: 15, scope: !3992)
!4002 = !DILocation(line: 314, column: 5, scope: !3992)
!4003 = !DILocation(line: 313, column: 3, scope: !3992)
!4004 = !DILocation(line: 315, column: 10, scope: !3992)
!4005 = !DILocation(line: 315, column: 18, scope: !3992)
!4006 = distinct !{!4006, !4003, !4007}
!4007 = !DILocation(line: 315, column: 29, scope: !3992)
!4008 = !DILocation(line: 316, column: 1, scope: !3992)
!4009 = distinct !DISubprogram(name: "reg_restore_code", scope: !3, file: !3, line: 187, type: !2324, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4010)
!4010 = !{!4011, !4012}
!4011 = !DILocalVariable(name: "reg", arg: 1, scope: !4009, file: !3, line: 187, type: !553)
!4012 = !DILocalVariable(name: "mode", arg: 2, scope: !4009, file: !3, line: 187, type: !5)
!4013 = !DILocation(line: 0, scope: !4009)
!4014 = !DILocation(line: 189, column: 7, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4009, file: !3, line: 189, column: 7)
!4016 = !DILocation(line: 189, column: 7, scope: !4009)
!4017 = !DILocation(line: 190, column: 6, scope: !4015)
!4018 = !DILocation(line: 192, column: 3, scope: !4009)
!4019 = !DILocation(line: 193, column: 3, scope: !4009)
!4020 = !DILocation(line: 194, column: 1, scope: !4009)
!4021 = distinct !DISubprogram(name: "insert_one_insn", scope: !3, file: !3, line: 1363, type: !4022, scopeLine: 1364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4024)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!2427, !2427, !553, !553, !563}
!4024 = !{!4025, !4026, !4027, !4028, !4029, !4030, !4031}
!4025 = !DILocalVariable(name: "chain", arg: 1, scope: !4021, file: !3, line: 1363, type: !2427)
!4026 = !DILocalVariable(name: "before_p", arg: 2, scope: !4021, file: !3, line: 1363, type: !553)
!4027 = !DILocalVariable(name: "code", arg: 3, scope: !4021, file: !3, line: 1363, type: !553)
!4028 = !DILocalVariable(name: "pat", arg: 4, scope: !4021, file: !3, line: 1363, type: !563)
!4029 = !DILocalVariable(name: "insn", scope: !4021, file: !3, line: 1365, type: !563)
!4030 = !DILocalVariable(name: "new_chain", scope: !4021, file: !3, line: 1366, type: !2427)
!4031 = !DILocalVariable(name: "link", scope: !4032, file: !3, line: 1384, type: !563)
!4032 = distinct !DILexicalBlock(scope: !4033, file: !3, line: 1383, column: 5)
!4033 = distinct !DILexicalBlock(scope: !4021, file: !3, line: 1382, column: 7)
!4034 = !DILocation(line: 0, scope: !4021)
!4035 = !DILocation(line: 1365, column: 21, scope: !4021)
!4036 = !DILocation(line: 1381, column: 15, scope: !4021)
!4037 = !DILocation(line: 1382, column: 7, scope: !4033)
!4038 = !DILocation(line: 1382, column: 7, scope: !4021)
!4039 = !DILocation(line: 1386, column: 32, scope: !4032)
!4040 = !DILocation(line: 1386, column: 18, scope: !4032)
!4041 = !DILocation(line: 1386, column: 23, scope: !4032)
!4042 = !DILocation(line: 1387, column: 27, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 1387, column: 11)
!4044 = !DILocation(line: 1387, column: 11, scope: !4032)
!4045 = !DILocation(line: 1388, column: 19, scope: !4043)
!4046 = !DILocation(line: 1388, column: 24, scope: !4043)
!4047 = !DILocation(line: 1388, column: 2, scope: !4043)
!4048 = !DILocation(line: 1390, column: 20, scope: !4043)
!4049 = !DILocation(line: 1392, column: 19, scope: !4032)
!4050 = !DILocation(line: 1393, column: 18, scope: !4032)
!4051 = !DILocation(line: 1393, column: 23, scope: !4032)
!4052 = !DILocation(line: 1394, column: 25, scope: !4032)
!4053 = !DILocation(line: 1394, column: 18, scope: !4032)
!4054 = !DILocation(line: 1394, column: 23, scope: !4032)
!4055 = !DILocation(line: 1397, column: 7, scope: !4032)
!4056 = !DILocation(line: 1398, column: 19, scope: !4032)
!4057 = !DILocation(line: 1399, column: 4, scope: !4032)
!4058 = !DILocation(line: 1398, column: 7, scope: !4032)
!4059 = !DILocation(line: 1402, column: 11, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 1402, column: 11)
!4061 = !DILocation(line: 1402, column: 11, scope: !4032)
!4062 = !DILocation(line: 1403, column: 14, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4060, file: !3, line: 1403, column: 2)
!4064 = !DILocation(line: 1403, column: 7, scope: !4063)
!4065 = !DILocation(line: 0, scope: !4063)
!4066 = !DILocation(line: 0, scope: !4032)
!4067 = !DILocation(line: 1404, column: 12, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4063, file: !3, line: 1403, column: 2)
!4069 = !DILocation(line: 1403, column: 2, scope: !4063)
!4070 = !DILocation(line: 1406, column: 16, scope: !4068)
!4071 = !DILocation(line: 1406, column: 4, scope: !4068)
!4072 = !DILocation(line: 1405, column: 14, scope: !4068)
!4073 = !DILocation(line: 1403, column: 2, scope: !4068)
!4074 = distinct !{!4074, !4069, !4075}
!4075 = !DILocation(line: 1407, column: 35, scope: !4063)
!4076 = !DILocation(line: 1409, column: 7, scope: !4032)
!4077 = !DILocation(line: 1410, column: 18, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 1410, column: 11)
!4079 = !DILocation(line: 1410, column: 26, scope: !4078)
!4080 = !DILocation(line: 1410, column: 23, scope: !4078)
!4081 = !DILocation(line: 1410, column: 11, scope: !4032)
!4082 = !DILocation(line: 1411, column: 52, scope: !4078)
!4083 = !DILocation(line: 1411, column: 2, scope: !4078)
!4084 = !DILocation(line: 1411, column: 39, scope: !4078)
!4085 = !DILocation(line: 1415, column: 32, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4033, file: !3, line: 1414, column: 5)
!4087 = !DILocation(line: 1415, column: 23, scope: !4086)
!4088 = !DILocation(line: 1416, column: 27, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4086, file: !3, line: 1416, column: 11)
!4090 = !DILocation(line: 1416, column: 11, scope: !4086)
!4091 = !DILocation(line: 1417, column: 19, scope: !4089)
!4092 = !DILocation(line: 1417, column: 24, scope: !4089)
!4093 = !DILocation(line: 1417, column: 2, scope: !4089)
!4094 = !DILocation(line: 1418, column: 14, scope: !4086)
!4095 = !DILocation(line: 1418, column: 19, scope: !4086)
!4096 = !DILocation(line: 1419, column: 18, scope: !4086)
!4097 = !DILocation(line: 1419, column: 23, scope: !4086)
!4098 = !DILocation(line: 1420, column: 25, scope: !4086)
!4099 = !DILocation(line: 1420, column: 18, scope: !4086)
!4100 = !DILocation(line: 1420, column: 23, scope: !4086)
!4101 = !DILocation(line: 1423, column: 7, scope: !4086)
!4102 = !DILocation(line: 1427, column: 20, scope: !4086)
!4103 = !DILocation(line: 1428, column: 6, scope: !4086)
!4104 = !DILocation(line: 1427, column: 7, scope: !4086)
!4105 = !DILocation(line: 1429, column: 7, scope: !4086)
!4106 = !DILocation(line: 1430, column: 18, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4086, file: !3, line: 1430, column: 11)
!4108 = !DILocation(line: 1430, column: 26, scope: !4107)
!4109 = !DILocation(line: 1430, column: 23, scope: !4107)
!4110 = !DILocation(line: 1430, column: 11, scope: !4086)
!4111 = !DILocation(line: 1431, column: 51, scope: !4107)
!4112 = !DILocation(line: 1431, column: 2, scope: !4107)
!4113 = !DILocation(line: 1431, column: 38, scope: !4107)
!4114 = !DILocation(line: 1433, column: 29, scope: !4021)
!4115 = !DILocation(line: 1433, column: 14, scope: !4021)
!4116 = !DILocation(line: 1433, column: 20, scope: !4021)
!4117 = !DILocation(line: 1434, column: 14, scope: !4021)
!4118 = !DILocation(line: 1434, column: 34, scope: !4021)
!4119 = !DILocation(line: 1436, column: 3, scope: !4021)
!4120 = !DILocation(line: 1436, column: 31, scope: !4021)
!4121 = !DILocation(line: 1437, column: 3, scope: !4021)
!4122 = distinct !DISubprogram(name: "add_used_regs", scope: !3, file: !3, line: 1356, type: !4123, scopeLine: 1357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4125)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{null, !3571, !557}
!4125 = !{!4126, !4127}
!4126 = !DILocalVariable(name: "loc", arg: 1, scope: !4122, file: !3, line: 1356, type: !3571)
!4127 = !DILocalVariable(name: "data", arg: 2, scope: !4122, file: !3, line: 1356, type: !557)
!4128 = !DILocation(line: 0, scope: !4122)
!4129 = !DILocation(line: 1358, column: 3, scope: !4122)
!4130 = !DILocation(line: 1359, column: 1, scope: !4122)
!4131 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !135, file: !135, line: 281, type: !4132, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4136)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!935, !4134, !7}
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1016)
!4136 = !{!4137, !4138}
!4137 = !DILocalVariable(name: "vec_", arg: 1, scope: !4131, file: !135, line: 281, type: !4134)
!4138 = !DILocalVariable(name: "ix_", arg: 2, scope: !4131, file: !135, line: 281, type: !7)
!4139 = !DILocation(line: 0, scope: !4131)
!4140 = !DILocation(line: 281, column: 1, scope: !4131)
!4141 = distinct !DISubprogram(name: "add_stored_regs", scope: !3, file: !3, line: 967, type: !3048, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4142)
!4142 = !{!4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150}
!4143 = !DILocalVariable(name: "reg", arg: 1, scope: !4141, file: !3, line: 967, type: !563)
!4144 = !DILocalVariable(name: "setter", arg: 2, scope: !4141, file: !3, line: 967, type: !3050)
!4145 = !DILocalVariable(name: "data", arg: 3, scope: !4141, file: !3, line: 967, type: !557)
!4146 = !DILocalVariable(name: "regno", scope: !4141, file: !3, line: 969, type: !553)
!4147 = !DILocalVariable(name: "endregno", scope: !4141, file: !3, line: 969, type: !553)
!4148 = !DILocalVariable(name: "i", scope: !4141, file: !3, line: 969, type: !553)
!4149 = !DILocalVariable(name: "mode", scope: !4141, file: !3, line: 970, type: !5)
!4150 = !DILocalVariable(name: "offset", scope: !4141, file: !3, line: 971, type: !553)
!4151 = !DILocation(line: 0, scope: !4141)
!4152 = !DILocation(line: 970, column: 28, scope: !4141)
!4153 = !DILocation(line: 973, column: 7, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 973, column: 7)
!4155 = !DILocation(line: 973, column: 25, scope: !4154)
!4156 = !DILocation(line: 973, column: 7, scope: !4141)
!4157 = !DILocation(line: 976, column: 7, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 976, column: 7)
!4159 = !DILocation(line: 976, column: 22, scope: !4158)
!4160 = !DILocation(line: 977, column: 7, scope: !4158)
!4161 = !DILocation(line: 977, column: 10, scope: !4158)
!4162 = !DILocation(line: 978, column: 7, scope: !4158)
!4163 = !DILocation(line: 978, column: 10, scope: !4158)
!4164 = !DILocation(line: 978, column: 35, scope: !4158)
!4165 = !DILocation(line: 976, column: 7, scope: !4141)
!4166 = !DILocation(line: 989, column: 12, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4168, file: !3, line: 989, column: 11)
!4168 = distinct !DILexicalBlock(scope: !4158, file: !3, line: 988, column: 5)
!4169 = !DILocation(line: 980, column: 37, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4158, file: !3, line: 979, column: 5)
!4171 = !DILocation(line: 981, column: 9, scope: !4170)
!4172 = !DILocation(line: 982, column: 9, scope: !4170)
!4173 = !DILocation(line: 983, column: 9, scope: !4170)
!4174 = !DILocation(line: 980, column: 16, scope: !4170)
!4175 = !DILocation(line: 984, column: 15, scope: !4170)
!4176 = !DILocation(line: 984, column: 40, scope: !4170)
!4177 = !DILocation(line: 985, column: 26, scope: !4170)
!4178 = !DILocation(line: 985, column: 24, scope: !4170)
!4179 = !DILocation(line: 986, column: 5, scope: !4170)
!4180 = !DILocation(line: 989, column: 24, scope: !4167)
!4181 = !DILocation(line: 989, column: 27, scope: !4167)
!4182 = !DILocation(line: 989, column: 39, scope: !4167)
!4183 = !DILocation(line: 989, column: 11, scope: !4168)
!4184 = !DILocation(line: 992, column: 15, scope: !4168)
!4185 = !DILocation(line: 993, column: 18, scope: !4168)
!4186 = !DILocation(line: 0, scope: !4158)
!4187 = !DILocation(line: 0, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 996, column: 3)
!4189 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 996, column: 3)
!4190 = !DILocation(line: 996, column: 8, scope: !4189)
!4191 = !DILocation(line: 0, scope: !4189)
!4192 = !DILocation(line: 996, column: 21, scope: !4188)
!4193 = !DILocation(line: 996, column: 3, scope: !4189)
!4194 = !DILocation(line: 997, column: 5, scope: !4188)
!4195 = !DILocation(line: 996, column: 34, scope: !4188)
!4196 = !DILocation(line: 996, column: 3, scope: !4188)
!4197 = distinct !{!4197, !4193, !4198}
!4198 = !DILocation(line: 997, column: 5, scope: !4189)
!4199 = !DILocation(line: 998, column: 1, scope: !4141)
!4200 = distinct !DISubprogram(name: "add_used_regs_1", scope: !3, file: !3, line: 1332, type: !4201, scopeLine: 1333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4203)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!553, !3571, !557}
!4203 = !{!4204, !4205, !4206, !4207, !4208, !4209}
!4204 = !DILocalVariable(name: "loc", arg: 1, scope: !4200, file: !3, line: 1332, type: !3571)
!4205 = !DILocalVariable(name: "data", arg: 2, scope: !4200, file: !3, line: 1332, type: !557)
!4206 = !DILocalVariable(name: "regno", scope: !4200, file: !3, line: 1334, type: !553)
!4207 = !DILocalVariable(name: "i", scope: !4200, file: !3, line: 1334, type: !553)
!4208 = !DILocalVariable(name: "live", scope: !4200, file: !3, line: 1335, type: !1646)
!4209 = !DILocalVariable(name: "x", scope: !4200, file: !3, line: 1336, type: !563)
!4210 = !DILocation(line: 0, scope: !4200)
!4211 = !DILocation(line: 1338, column: 7, scope: !4200)
!4212 = !DILocation(line: 1339, column: 10, scope: !4200)
!4213 = !DILocation(line: 1340, column: 7, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4200, file: !3, line: 1340, column: 7)
!4215 = !DILocation(line: 1340, column: 7, scope: !4200)
!4216 = !DILocation(line: 1342, column: 15, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 1341, column: 5)
!4218 = !DILocation(line: 1343, column: 12, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 1343, column: 11)
!4220 = !DILocation(line: 1343, column: 11, scope: !4217)
!4221 = !DILocation(line: 1344, column: 10, scope: !4219)
!4222 = !DILocation(line: 1344, column: 2, scope: !4219)
!4223 = !DILocation(line: 0, scope: !4217)
!4224 = !DILocation(line: 1345, column: 17, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 1345, column: 11)
!4226 = !DILocation(line: 1345, column: 11, scope: !4217)
!4227 = !DILocation(line: 1346, column: 11, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 1346, column: 2)
!4229 = !DILocation(line: 1346, column: 35, scope: !4228)
!4230 = !DILocation(line: 1346, column: 7, scope: !4228)
!4231 = !DILocation(line: 0, scope: !4228)
!4232 = !DILocation(line: 1346, column: 56, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4228, file: !3, line: 1346, column: 2)
!4234 = !DILocation(line: 1346, column: 2, scope: !4228)
!4235 = !DILocation(line: 1347, column: 4, scope: !4233)
!4236 = !DILocation(line: 1346, column: 2, scope: !4233)
!4237 = distinct !{!4237, !4234, !4238}
!4238 = !DILocation(line: 1347, column: 4, scope: !4228)
!4239 = !DILocation(line: 1349, column: 3, scope: !4200)
