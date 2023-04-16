; ModuleID = 'cfgloopanal.bc'
source_filename = "cfgloopanal.c"
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
%struct.loop = type { i32, i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.lpt_decision, i32, i32, %struct.VEC_loop_p_gc*, %struct.loop*, %struct.loop*, i8*, %union.tree_node*, %struct.double_int, %struct.double_int, i8, i8, i32, %struct.nb_iter_bound*, %struct.loop_exit*, i8, %union.tree_node* }
%struct.lpt_decision = type { i32, i32 }
%struct.VEC_loop_p_gc = type { %struct.VEC_loop_p_base }
%struct.VEC_loop_p_base = type { i32, i32, [1 x %struct.loop*] }
%struct.double_int = type { i64, i64 }
%struct.nb_iter_bound = type { %union.gimple_statement_d*, %struct.double_int, i8, %struct.nb_iter_bound* }
%union.gimple_statement_d = type opaque
%struct.loop_exit = type { %struct.edge_def*, %struct.loop_exit*, %struct.loop_exit*, %struct.loop_exit* }
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
%struct.gimple_seq_d = type opaque
%struct.gimple_df = type opaque
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
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.graph = type { i32, %struct.vertex*, %struct.htab* }
%struct.vertex = type { %struct.graph_edge*, %struct.graph_edge*, i32, i32, i8* }
%struct.graph_edge = type { i32, i32, %struct.graph_edge*, %struct.graph_edge*, i8* }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str = private unnamed_addr constant [14 x i8] c"cfgloopanal.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@target_avail_regs = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@reg_class_contents = external dso_local local_unnamed_addr global [27 x i64], align 16
@fixed_regs = external dso_local local_unnamed_addr global [53 x i8], align 16
@target_res_regs = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !1674
@x_rtl = external dso_local local_unnamed_addr global %struct.rtl_data, align 8
@target_reg_cost = common dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4, !dbg !1676
@target_spill_cost = common dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4, !dbg !1678
@optimize = external dso_local local_unnamed_addr global i32, align 4
@flag_ira_region = external dso_local local_unnamed_addr global i32, align 4
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1684 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1697, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1698, metadata !DIExpression()), !dbg !1699
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1700
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1701
  ret i32 %call, !dbg !1702
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1703 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1707
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1708
  ret i32 %call, !dbg !1709
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1710 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1765, metadata !DIExpression()), !dbg !1766
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1767
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1767
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1767
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1767
  %cmp = icmp uge i8* %0, %1, !dbg !1767
  %conv1 = zext i1 %cmp to i64, !dbg !1767
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1767
  %tobool = icmp eq i64 %expval, 0, !dbg !1767
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1767

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1767
  br label %cond.end, !dbg !1767

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1767
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1767
  %2 = load i8, i8* %0, align 1, !dbg !1767
  %conv3 = zext i8 %2 to i32, !dbg !1767
  br label %cond.end, !dbg !1767

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1767
  ret i32 %cond, !dbg !1768
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1769 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1771, metadata !DIExpression()), !dbg !1772
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1773
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1773
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1773
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1773
  %cmp = icmp uge i8* %0, %1, !dbg !1773
  %conv1 = zext i1 %cmp to i64, !dbg !1773
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1773
  %tobool = icmp eq i64 %expval, 0, !dbg !1773
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1773

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1773
  br label %cond.end, !dbg !1773

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1773
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1773
  %2 = load i8, i8* %0, align 1, !dbg !1773
  %conv3 = zext i8 %2 to i32, !dbg !1773
  br label %cond.end, !dbg !1773

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1773
  ret i32 %cond, !dbg !1774
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1775 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1776
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1776
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1776
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1776
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1776
  %cmp = icmp uge i8* %1, %2, !dbg !1776
  %conv1 = zext i1 %cmp to i64, !dbg !1776
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1776
  %tobool = icmp eq i64 %expval, 0, !dbg !1776
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1776

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1776
  br label %cond.end, !dbg !1776

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1776
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1776
  %3 = load i8, i8* %1, align 1, !dbg !1776
  %conv3 = zext i8 %3 to i32, !dbg !1776
  br label %cond.end, !dbg !1776

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1776
  ret i32 %cond, !dbg !1777
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1778 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1782, metadata !DIExpression()), !dbg !1783
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1784
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1785
  ret i32 %call, !dbg !1786
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1787 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1791, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1792, metadata !DIExpression()), !dbg !1793
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1794
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1794
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1794
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1794
  %cmp = icmp uge i8* %0, %1, !dbg !1794
  %conv1 = zext i1 %cmp to i64, !dbg !1794
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1794
  %tobool = icmp eq i64 %expval, 0, !dbg !1794
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1794

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1794
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1794
  br label %cond.end, !dbg !1794

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1794
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1794
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1794
  store i8 %conv2, i8* %0, align 1, !dbg !1794
  %conv6 = and i32 %__c, 255, !dbg !1794
  br label %cond.end, !dbg !1794

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1794
  ret i32 %cond, !dbg !1795
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1796 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1798, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1799, metadata !DIExpression()), !dbg !1800
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1801
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1801
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1801
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1801
  %cmp = icmp uge i8* %0, %1, !dbg !1801
  %conv1 = zext i1 %cmp to i64, !dbg !1801
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1801
  %tobool = icmp eq i64 %expval, 0, !dbg !1801
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1801

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1801
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1801
  br label %cond.end, !dbg !1801

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1801
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1801
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1801
  store i8 %conv2, i8* %0, align 1, !dbg !1801
  %conv6 = and i32 %__c, 255, !dbg !1801
  br label %cond.end, !dbg !1801

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1801
  ret i32 %cond, !dbg !1802
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1803 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1805, metadata !DIExpression()), !dbg !1806
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1807
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1807
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1807
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1807
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1807
  %cmp = icmp uge i8* %1, %2, !dbg !1807
  %conv1 = zext i1 %cmp to i64, !dbg !1807
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1807
  %tobool = icmp eq i64 %expval, 0, !dbg !1807
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1807

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1807
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1807
  br label %cond.end, !dbg !1807

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1807
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1807
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1807
  store i8 %conv4, i8* %1, align 1, !dbg !1807
  %conv6 = and i32 %__c, 255, !dbg !1807
  br label %cond.end, !dbg !1807

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1807
  ret i32 %cond, !dbg !1808
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1809 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1815, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1816, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1817, metadata !DIExpression()), !dbg !1818
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1819
  ret i64 %call, !dbg !1820
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1821 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1823, metadata !DIExpression()), !dbg !1824
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1825
  %0 = load i32, i32* %_flags, align 8, !dbg !1825
  %and = lshr i32 %0, 4, !dbg !1825
  %and.lobit = and i32 %and, 1, !dbg !1825
  ret i32 %and.lobit, !dbg !1826
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1827 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1829, metadata !DIExpression()), !dbg !1830
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1831
  %0 = load i32, i32* %_flags, align 8, !dbg !1831
  %and = lshr i32 %0, 5, !dbg !1831
  %and.lobit = and i32 %and, 1, !dbg !1831
  ret i32 %and.lobit, !dbg !1832
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1833 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1836, metadata !DIExpression()), !dbg !1837
  %__c.off = add i32 %__c, 128, !dbg !1838
  %0 = icmp ult i32 %__c.off, 384, !dbg !1838
  br i1 %0, label %cond.true, label %cond.end, !dbg !1838

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1839
  %1 = load i32*, i32** %call, align 8, !dbg !1840
  %idxprom = sext i32 %__c to i64, !dbg !1841
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1841
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1841
  br label %cond.end, !dbg !1842

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1842
  ret i32 %cond, !dbg !1843
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1844 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1846, metadata !DIExpression()), !dbg !1847
  %__c.off = add i32 %__c, 128, !dbg !1848
  %0 = icmp ult i32 %__c.off, 384, !dbg !1848
  br i1 %0, label %cond.true, label %cond.end, !dbg !1848

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1849
  %1 = load i32*, i32** %call, align 8, !dbg !1850
  %idxprom = sext i32 %__c to i64, !dbg !1851
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1851
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1851
  br label %cond.end, !dbg !1852

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1852
  ret i32 %cond, !dbg !1853
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1854 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1859, metadata !DIExpression()), !dbg !1860
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1861
  %conv = trunc i64 %call to i32, !dbg !1862
  ret i32 %conv, !dbg !1863
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1864 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1868, metadata !DIExpression()), !dbg !1869
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1870
  ret i64 %call, !dbg !1871
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1872 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1877, metadata !DIExpression()), !dbg !1878
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1879
  ret i64 %call, !dbg !1880
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1881 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1887, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1888, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1889, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1890, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1891, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 0, metadata !1892, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1893, metadata !DIExpression()), !dbg !1897
  br label %while.cond, !dbg !1898

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1899
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1897
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1893, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1892, metadata !DIExpression()), !dbg !1897
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1900
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1898

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1901
  %div = lshr i64 %add, 1, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %div, metadata !1894, metadata !DIExpression()), !dbg !1897
  %mul = mul i64 %div, %__size, !dbg !1904
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1905
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1895, metadata !DIExpression()), !dbg !1897
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1906
  call void @llvm.dbg.value(metadata i32 %call, metadata !1896, metadata !DIExpression()), !dbg !1897
  %cmp1 = icmp slt i32 %call, 0, !dbg !1907
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1909

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1910
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1912

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1913
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1892, metadata !DIExpression()), !dbg !1897
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1897
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1897
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1893, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1892, metadata !DIExpression()), !dbg !1897
  br label %while.cond, !dbg !1898, !llvm.loop !1914

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1897
  ret i8* %retval.0, !dbg !1916
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1917 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1923, metadata !DIExpression()), !dbg !1924
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1925
  ret double %call, !dbg !1926
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1927 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1936, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1937, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i32 %base, metadata !1938, metadata !DIExpression()), !dbg !1939
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1940
  ret i64 %call, !dbg !1941
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1942 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1948, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1949, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i32 %base, metadata !1950, metadata !DIExpression()), !dbg !1951
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1952
  ret i64 %call, !dbg !1953
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1954 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1965, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1966, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i32 %base, metadata !1967, metadata !DIExpression()), !dbg !1968
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1969
  ret i64 %call, !dbg !1970
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1971 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1975, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1976, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i32 %base, metadata !1977, metadata !DIExpression()), !dbg !1978
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1979
  ret i64 %call, !dbg !1980
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1981 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2021, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2022, metadata !DIExpression()), !dbg !2023
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2024
  ret i32 %call, !dbg !2025
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2026 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2028, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2029, metadata !DIExpression()), !dbg !2030
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2031
  ret i32 %call, !dbg !2032
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2033 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2037, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2038, metadata !DIExpression()), !dbg !2039
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2040
  ret i32 %call, !dbg !2041
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2042 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2046, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2047, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2048, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2049, metadata !DIExpression()), !dbg !2050
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2051
  ret i32 %call, !dbg !2052
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2053 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2057, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2058, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2059, metadata !DIExpression()), !dbg !2060
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2059, metadata !DIExpression(DW_OP_deref)), !dbg !2060
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2061
  ret i32 %call, !dbg !2062
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2063 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2067, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2068, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2069, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2070, metadata !DIExpression()), !dbg !2071
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2070, metadata !DIExpression(DW_OP_deref)), !dbg !2071
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2072
  ret i32 %call, !dbg !2073
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2074 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2098, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2099, metadata !DIExpression()), !dbg !2100
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2101
  ret i32 %call, !dbg !2102
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2103 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2105, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2106, metadata !DIExpression()), !dbg !2107
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2108
  ret i32 %call, !dbg !2109
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2110 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2114, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2115, metadata !DIExpression()), !dbg !2116
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2117
  ret i32 %call, !dbg !2118
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2119 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2123, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2124, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2125, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2126, metadata !DIExpression()), !dbg !2127
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2128
  ret i32 %call, !dbg !2129
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @just_once_each_iteration_p(%struct.loop* %loop, %struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !2130 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2139, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2140, metadata !DIExpression()), !dbg !2141
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !2142
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !2142
  %call = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %0, %struct.basic_block_def* %bb) #6, !dbg !2144
  %tobool = icmp eq i8 %call, 0, !dbg !2144
  br i1 %tobool, label %return, label %if.end, !dbg !2145

if.end:                                           ; preds = %entry
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 3, !dbg !2146
  %1 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2146
  %cmp = icmp eq %struct.loop* %1, %loop, !dbg !2148
  br i1 %cmp, label %if.end2, label %return, !dbg !2149

if.end2:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !2150
  %2 = load i32, i32* %flags, align 8, !dbg !2150
  %and = lshr i32 %2, 2, !dbg !2141
  %3 = trunc i32 %and to i8, !dbg !2141
  %4 = and i8 %3, 1, !dbg !2141
  %5 = xor i8 %4, 1, !dbg !2141
  br label %return, !dbg !2141

return:                                           ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i8 [ 0, %entry ], [ 0, %if.end ], [ %5, %if.end2 ], !dbg !2141
  ret i8 %retval.0, !dbg !2152
}

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @mark_irreducible_loops() local_unnamed_addr #4 !dbg !2153 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp25 = alloca %struct.edge_iterator, align 8
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2204
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2204
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2205
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2205
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !2206
  call void @llvm.dbg.value(metadata i32 %call, metadata !2194, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2207
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2208
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !2208
  %3 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2208
  %cmp = icmp eq %struct.loops* %3, null, !dbg !2208
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2208

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2208
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2209
  br label %cond.end, !dbg !2208

cond.end:                                         ; preds = %entry, %cond.true
  %4 = phi %struct.function* [ %2, %entry ], [ %.pre, %cond.true ], !dbg !2209
  %cfg = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !2209
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2209
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 0, !dbg !2209
  %6 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2211
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2211
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2211
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2215
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2215
  br label %for.cond, !dbg !2209

for.cond:                                         ; preds = %for.inc11, %cond.end
  %11 = phi %struct.control_flow_graph* [ %5, %cond.end ], [ %.pre2, %for.inc11 ], !dbg !2217
  %act.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %cond.end ], [ %next_bb, %for.inc11 ]
  %act.0 = load %struct.basic_block_def*, %struct.basic_block_def** %act.0.in, align 8, !dbg !2218
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %act.0, metadata !2157, metadata !DIExpression()), !dbg !2207
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 1, !dbg !2217
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2217
  %cmp4 = icmp eq %struct.basic_block_def* %act.0, %12, !dbg !2217
  br i1 %cmp4, label %for.end12, label %for.body, !dbg !2209

for.body:                                         ; preds = %for.cond
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %act.0, i64 0, i32 13, !dbg !2219
  %13 = load i32, i32* %flags, align 8, !dbg !2220
  %and = and i32 %13, -5, !dbg !2220
  store i32 %and, i32* %flags, align 8, !dbg !2220
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #7, !dbg !2221
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %act.0, i64 0, i32 1, !dbg !2221
  %call5 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !2221
  %14 = extractvalue { i32, %struct.VEC_edge_gc** } %call5, 0, !dbg !2221
  store i32 %14, i32* %7, align 8, !dbg !2221
  %15 = extractvalue { i32, %struct.VEC_edge_gc** } %call5, 1, !dbg !2221
  store %struct.VEC_edge_gc** %15, %struct.VEC_edge_gc*** %8, align 8, !dbg !2221
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !2221
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #7, !dbg !2221
  br label %for.cond6, !dbg !2221

for.cond6:                                        ; preds = %for.body8, %for.body
  %16 = load i32, i32* %9, align 8, !dbg !2222
  %17 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %10, align 8, !dbg !2222
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2168, metadata !DIExpression(DW_OP_deref)), !dbg !2207
  %call7 = call fastcc zeroext i8 @ei_cond(i32 %16, %struct.VEC_edge_gc** %17, %struct.edge_def** nonnull %e) #8, !dbg !2222
  %tobool = icmp eq i8 %call7, 0, !dbg !2221
  br i1 %tobool, label %for.inc11, label %for.body8, !dbg !2221

for.body8:                                        ; preds = %for.cond6
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2223
  call void @llvm.dbg.value(metadata %struct.edge_def* %18, metadata !2168, metadata !DIExpression()), !dbg !2207
  %flags9 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i64 0, i32 7, !dbg !2224
  %19 = load i32, i32* %flags9, align 8, !dbg !2225
  %and10 = and i32 %19, -129, !dbg !2225
  store i32 %and10, i32* %flags9, align 8, !dbg !2225
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2169, metadata !DIExpression(DW_OP_deref)), !dbg !2207
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2222
  br label %for.cond6, !dbg !2222, !llvm.loop !2226

for.inc11:                                        ; preds = %for.cond6
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %act.0, i64 0, i32 6, !dbg !2217
  %.pre1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2217
  %cfg3.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre1, i64 0, i32 1, !dbg !2228
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg3.phi.trans.insert, align 8, !dbg !2217
  br label %for.cond, !dbg !2217, !llvm.loop !2229

for.end12:                                        ; preds = %for.cond
  %.lcssa = phi %struct.control_flow_graph* [ %11, %for.cond ], !dbg !2217
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa, i64 0, i32 5, !dbg !2231
  %20 = load i32, i32* %x_last_basic_block, align 8, !dbg !2231
  %add = add nsw i32 %20, %call, !dbg !2232
  %call15 = call %struct.graph* @new_graph(i32 %add) #6, !dbg !2233
  call void @llvm.dbg.value(metadata %struct.graph* %call15, metadata !2179, metadata !DIExpression()), !dbg !2207
  %21 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2234
  %cfg17 = getelementptr inbounds %struct.function, %struct.function* %21, i64 0, i32 1, !dbg !2234
  %22 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg17, align 8, !dbg !2234
  %x_entry_block_ptr18 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %22, i64 0, i32 0, !dbg !2234
  %23 = bitcast %struct.edge_iterator* %tmp25 to i8*, !dbg !2236
  %24 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp25, i64 0, i32 0, !dbg !2236
  %25 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp25, i64 0, i32 1, !dbg !2236
  %26 = bitcast %struct.edge_def** %e to i64*, !dbg !2239
  br label %for.cond19, !dbg !2234

for.cond19:                                       ; preds = %for.inc98, %for.end12
  %27 = phi %struct.control_flow_graph* [ %22, %for.end12 ], [ %.pre4, %for.inc98 ], !dbg !2242
  %act.1.in = phi %struct.basic_block_def** [ %x_entry_block_ptr18, %for.end12 ], [ %next_bb99, %for.inc98 ]
  %act.1 = load %struct.basic_block_def*, %struct.basic_block_def** %act.1.in, align 8, !dbg !2243
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %act.1, metadata !2157, metadata !DIExpression()), !dbg !2207
  %x_exit_block_ptr22 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %27, i64 0, i32 1, !dbg !2242
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr22, align 8, !dbg !2242
  %cmp23 = icmp eq %struct.basic_block_def* %act.1, %28, !dbg !2242
  br i1 %cmp23, label %for.end100, label %for.body24, !dbg !2234

for.body24:                                       ; preds = %for.cond19
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %23) #7, !dbg !2244
  %succs26 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %act.1, i64 0, i32 1, !dbg !2244
  %call27 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs26) #8, !dbg !2244
  %29 = extractvalue { i32, %struct.VEC_edge_gc** } %call27, 0, !dbg !2244
  store i32 %29, i32* %24, align 8, !dbg !2244
  %30 = extractvalue { i32, %struct.VEC_edge_gc** } %call27, 1, !dbg !2244
  store %struct.VEC_edge_gc** %30, %struct.VEC_edge_gc*** %25, align 8, !dbg !2244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %23, i64 16, i1 false), !dbg !2244
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %23) #7, !dbg !2244
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %act.1, i64 0, i32 9, !dbg !2239
  %loop_father63 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %act.1, i64 0, i32 3, !dbg !2245
  br label %for.cond28, !dbg !2244

for.cond28:                                       ; preds = %for.inc96, %for.body24
  %31 = load i32, i32* %9, align 8, !dbg !2247
  %32 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %10, align 8, !dbg !2247
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2168, metadata !DIExpression(DW_OP_deref)), !dbg !2207
  %call29 = call fastcc zeroext i8 @ei_cond(i32 %31, %struct.VEC_edge_gc** %32, %struct.edge_def** nonnull %e) #8, !dbg !2247
  %tobool30 = icmp eq i8 %call29, 0, !dbg !2244
  br i1 %tobool30, label %for.inc98, label %for.body31, !dbg !2244

for.body31:                                       ; preds = %for.cond28
  %33 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2248
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !2168, metadata !DIExpression()), !dbg !2207
  %dest32 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i64 0, i32 1, !dbg !2250
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %dest32, align 8, !dbg !2250
  %35 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2251
  %cfg34 = getelementptr inbounds %struct.function, %struct.function* %35, i64 0, i32 1, !dbg !2251
  %36 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg34, align 8, !dbg !2251
  %x_exit_block_ptr35 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %36, i64 0, i32 1, !dbg !2251
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr35, align 8, !dbg !2251
  %cmp36 = icmp eq %struct.basic_block_def* %34, %37, !dbg !2252
  br i1 %cmp36, label %for.inc96, label %if.end, !dbg !2253

if.end:                                           ; preds = %for.body31
  %38 = load i32, i32* %index, align 8, !dbg !2254
  %add37 = add nsw i32 %38, 1, !dbg !2254
  call void @llvm.dbg.value(metadata i32 %add37, metadata !2176, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !2168, metadata !DIExpression()), !dbg !2207
  %index39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i64 0, i32 9, !dbg !2255
  %39 = load i32, i32* %index39, align 8, !dbg !2255
  %add40 = add nsw i32 %39, 1, !dbg !2255
  call void @llvm.dbg.value(metadata i32 %add40, metadata !2177, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !2168, metadata !DIExpression()), !dbg !2207
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i64 0, i32 3, !dbg !2256
  %40 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2256
  %header = getelementptr inbounds %struct.loop, %struct.loop* %40, i64 0, i32 2, !dbg !2258
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !2258
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !2168, metadata !DIExpression()), !dbg !2207
  %cmp43 = icmp eq %struct.basic_block_def* %41, %34, !dbg !2259
  br i1 %cmp43, label %land.lhs.true, label %if.end48, !dbg !2260

land.lhs.true:                                    ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !2168, metadata !DIExpression()), !dbg !2207
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %40, i64 0, i32 3, !dbg !2261
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !2261
  %cmp46 = icmp eq %struct.basic_block_def* %42, %act.1, !dbg !2262
  br i1 %cmp46, label %for.inc96, label %if.end48, !dbg !2263

if.end48:                                         ; preds = %land.lhs.true, %if.end
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !2168, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !2168, metadata !DIExpression()), !dbg !2207
  br i1 %cmp43, label %if.then54, label %if.end62, !dbg !2264

if.then54:                                        ; preds = %if.end48
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !2168, metadata !DIExpression()), !dbg !2207
  %num57 = getelementptr inbounds %struct.loop, %struct.loop* %40, i64 0, i32 0, !dbg !2265
  %43 = load i32, i32* %num57, align 8, !dbg !2265
  %x_last_basic_block60 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %36, i64 0, i32 5, !dbg !2265
  %44 = load i32, i32* %x_last_basic_block60, align 8, !dbg !2265
  %add61 = add nsw i32 %43, %44, !dbg !2265
  call void @llvm.dbg.value(metadata i32 %add61, metadata !2177, metadata !DIExpression()), !dbg !2207
  br label %if.end62, !dbg !2267

if.end62:                                         ; preds = %if.then54, %if.end48
  %dest.0 = phi i32 [ %add61, %if.then54 ], [ %add40, %if.end48 ], !dbg !2239
  call void @llvm.dbg.value(metadata i32 %dest.0, metadata !2177, metadata !DIExpression()), !dbg !2207
  %45 = load %struct.loop*, %struct.loop** %loop_father63, align 8, !dbg !2268
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !2168, metadata !DIExpression()), !dbg !2207
  %call65 = call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %45, %struct.basic_block_def* %34) #6, !dbg !2269
  %tobool66 = icmp eq i8 %call65, 0, !dbg !2269
  br i1 %tobool66, label %if.then67, label %if.end94, !dbg !2270

if.then67:                                        ; preds = %if.end62
  %46 = load %struct.loop*, %struct.loop** %loop_father63, align 8, !dbg !2271
  %47 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2273
  call void @llvm.dbg.value(metadata %struct.edge_def* %47, metadata !2168, metadata !DIExpression()), !dbg !2207
  %dest69 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %47, i64 0, i32 1, !dbg !2274
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %dest69, align 8, !dbg !2274
  %loop_father70 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %48, i64 0, i32 3, !dbg !2275
  %49 = load %struct.loop*, %struct.loop** %loop_father70, align 8, !dbg !2275
  %call71 = call %struct.loop* @find_common_loop(%struct.loop* %46, %struct.loop* %49) #6, !dbg !2276
  %call72 = call fastcc i32 @loop_depth(%struct.loop* %call71) #8, !dbg !2277
  %add73 = add i32 %call72, 1, !dbg !2278
  call void @llvm.dbg.value(metadata i32 %add73, metadata !2178, metadata !DIExpression()), !dbg !2207
  %50 = load %struct.loop*, %struct.loop** %loop_father63, align 8, !dbg !2279
  %call75 = call fastcc i32 @loop_depth(%struct.loop* %50) #8, !dbg !2281
  %cmp76 = icmp eq i32 %add73, %call75, !dbg !2282
  %51 = load %struct.loop*, %struct.loop** %loop_father63, align 8, !dbg !2283
  br i1 %cmp76, label %if.end88, label %if.else, !dbg !2284

if.else:                                          ; preds = %if.then67
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %51, i64 0, i32 7, !dbg !2285
  %52 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2285
  %tobool80 = icmp eq %struct.VEC_loop_p_gc* %52, null, !dbg !2285
  br i1 %tobool80, label %cond.end85, label %cond.true81, !dbg !2285

cond.true81:                                      ; preds = %if.else
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %52, i64 0, i32 0, !dbg !2285
  br label %cond.end85, !dbg !2285

cond.end85:                                       ; preds = %if.else, %cond.true81
  %cond86 = phi %struct.VEC_loop_p_base* [ %base, %cond.true81 ], [ null, %if.else ], !dbg !2285
  %call87 = call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond86, i32 %add73) #8, !dbg !2285
  call void @llvm.dbg.value(metadata %struct.loop* %call87, metadata !2195, metadata !DIExpression()), !dbg !2207
  br label %if.end88

if.end88:                                         ; preds = %if.then67, %cond.end85
  %cloop.0 = phi %struct.loop* [ %call87, %cond.end85 ], [ %51, %if.then67 ], !dbg !2283
  call void @llvm.dbg.value(metadata %struct.loop* %cloop.0, metadata !2195, metadata !DIExpression()), !dbg !2207
  %num89 = getelementptr inbounds %struct.loop, %struct.loop* %cloop.0, i64 0, i32 0, !dbg !2286
  %53 = load i32, i32* %num89, align 8, !dbg !2286
  %54 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2286
  %cfg91 = getelementptr inbounds %struct.function, %struct.function* %54, i64 0, i32 1, !dbg !2286
  %55 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg91, align 8, !dbg !2286
  %x_last_basic_block92 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %55, i64 0, i32 5, !dbg !2286
  %56 = load i32, i32* %x_last_basic_block92, align 8, !dbg !2286
  %add93 = add nsw i32 %53, %56, !dbg !2286
  call void @llvm.dbg.value(metadata i32 %add93, metadata !2176, metadata !DIExpression()), !dbg !2207
  br label %if.end94, !dbg !2287

if.end94:                                         ; preds = %if.end62, %if.end88
  %src.0 = phi i32 [ %add37, %if.end62 ], [ %add93, %if.end88 ], !dbg !2239
  call void @llvm.dbg.value(metadata i32 %src.0, metadata !2176, metadata !DIExpression()), !dbg !2207
  %57 = load i64, i64* %26, align 8, !dbg !2288
  %call95 = call %struct.graph_edge* @add_edge(%struct.graph* %call15, i32 %src.0, i32 %dest.0) #6, !dbg !2289
  %data = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %call95, i64 0, i32 4, !dbg !2290
  %58 = bitcast i8** %data to i64*, !dbg !2291
  store i64 %57, i64* %58, align 8, !dbg !2291
  br label %for.inc96, !dbg !2292

for.inc96:                                        ; preds = %land.lhs.true, %for.body31, %if.end94
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2169, metadata !DIExpression(DW_OP_deref)), !dbg !2207
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2247
  br label %for.cond28, !dbg !2247, !llvm.loop !2293

for.inc98:                                        ; preds = %for.cond28
  %next_bb99 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %act.1, i64 0, i32 6, !dbg !2242
  %.pre3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2242
  %cfg21.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre3, i64 0, i32 1, !dbg !2295
  %.pre4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg21.phi.trans.insert, align 8, !dbg !2242
  br label %for.cond19, !dbg !2242, !llvm.loop !2296

for.end100:                                       ; preds = %for.cond19
  %call101 = call i32 @graphds_scc(%struct.graph* %call15, %struct.bitmap_head_def* null) #6, !dbg !2298
  call void @llvm.dbg.value(metadata i32 0, metadata !2197, metadata !DIExpression()), !dbg !2207
  %n_vertices = getelementptr inbounds %struct.graph, %struct.graph* %call15, i64 0, i32 0, !dbg !2299
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %call15, i64 0, i32 1, !dbg !2300
  br label %for.cond102, !dbg !2301

for.cond102:                                      ; preds = %for.inc149, %for.end100
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc149 ], [ 0, %for.end100 ], !dbg !2302
  %irred_loop_found.0 = phi i8 [ %irred_loop_found.1.lcssa, %for.inc149 ], [ 0, %for.end100 ], !dbg !2302
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2197, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 %irred_loop_found.0, metadata !2196, metadata !DIExpression()), !dbg !2207
  %59 = load i32, i32* %n_vertices, align 8, !dbg !2303
  %60 = sext i32 %59 to i64, !dbg !2304
  %cmp103 = icmp slt i64 %indvars.iv, %60, !dbg !2304
  br i1 %cmp103, label %for.body104, label %for.end150, !dbg !2305

for.body104:                                      ; preds = %for.cond102
  %61 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !2306
  %succ = getelementptr inbounds %struct.vertex, %struct.vertex* %61, i64 %indvars.iv, i32 1, !dbg !2307
  br label %for.cond105, !dbg !2308

for.cond105:                                      ; preds = %cleanup, %for.body104
  %irred_loop_found.1 = phi i8 [ %irred_loop_found.0, %for.body104 ], [ %irred_loop_found.2, %cleanup ], !dbg !2302
  %ge.0.in = phi %struct.graph_edge** [ %succ, %for.body104 ], [ %succ_next, %cleanup ]
  %ge.0 = load %struct.graph_edge*, %struct.graph_edge** %ge.0.in, align 8, !dbg !2300
  call void @llvm.dbg.value(metadata %struct.graph_edge* %ge.0, metadata !2158, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 %irred_loop_found.1, metadata !2196, metadata !DIExpression()), !dbg !2207
  %tobool106 = icmp eq %struct.graph_edge* %ge.0, null, !dbg !2309
  br i1 %tobool106, label %for.inc149, label %for.body107, !dbg !2309

for.body107:                                      ; preds = %for.cond105
  %data108 = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %ge.0, i64 0, i32 4, !dbg !2310
  %62 = bitcast i8** %data108 to %struct.edge_def**, !dbg !2310
  %63 = load %struct.edge_def*, %struct.edge_def** %62, align 8, !dbg !2310
  call void @llvm.dbg.value(metadata %struct.edge_def* %63, metadata !2198, metadata !DIExpression()), !dbg !2311
  %64 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !2312
  %src110 = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %ge.0, i64 0, i32 0, !dbg !2312
  %65 = load i32, i32* %src110, align 8, !dbg !2312
  %idxprom111 = sext i32 %65 to i64, !dbg !2312
  %component = getelementptr inbounds %struct.vertex, %struct.vertex* %64, i64 %idxprom111, i32 2, !dbg !2312
  %66 = load i32, i32* %component, align 8, !dbg !2312
  %dest114 = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %ge.0, i64 0, i32 1, !dbg !2312
  %67 = load i32, i32* %dest114, align 4, !dbg !2312
  %idxprom115 = sext i32 %67 to i64, !dbg !2312
  %component117 = getelementptr inbounds %struct.vertex, %struct.vertex* %64, i64 %idxprom115, i32 2, !dbg !2312
  %68 = load i32, i32* %component117, align 8, !dbg !2312
  %cmp118 = icmp slt i32 %66, %68, !dbg !2312
  br i1 %cmp118, label %cond.true119, label %cond.end121, !dbg !2312

cond.true119:                                     ; preds = %for.body107
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2312
  %.pre5 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !2313
  %.pre6 = load i32, i32* %src110, align 8, !dbg !2315
  %idxprom125.phi.trans.insert = sext i32 %.pre6 to i64, !dbg !2316
  %component127.phi.trans.insert = getelementptr inbounds %struct.vertex, %struct.vertex* %.pre5, i64 %idxprom125.phi.trans.insert, i32 2, !dbg !2316
  %.pre7 = load i32, i32* %component127.phi.trans.insert, align 8, !dbg !2317
  %.pre8 = load i32, i32* %dest114, align 4, !dbg !2318
  %idxprom130.phi.trans.insert = sext i32 %.pre8 to i64, !dbg !2316
  %component132.phi.trans.insert = getelementptr inbounds %struct.vertex, %struct.vertex* %.pre5, i64 %idxprom130.phi.trans.insert, i32 2, !dbg !2316
  %.pre9 = load i32, i32* %component132.phi.trans.insert, align 8, !dbg !2319
  br label %cond.end121, !dbg !2312

cond.end121:                                      ; preds = %for.body107, %cond.true119
  %69 = phi i32 [ %68, %for.body107 ], [ %.pre9, %cond.true119 ], !dbg !2319
  %70 = phi i32 [ %66, %for.body107 ], [ %.pre7, %cond.true119 ], !dbg !2317
  %cmp133 = icmp eq i32 %70, %69, !dbg !2320
  br i1 %cmp133, label %if.end135, label %cleanup, !dbg !2321

if.end135:                                        ; preds = %cond.end121
  %flags136 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %63, i64 0, i32 7, !dbg !2322
  %71 = load i32, i32* %flags136, align 8, !dbg !2323
  %or = or i32 %71, 128, !dbg !2323
  store i32 %or, i32* %flags136, align 8, !dbg !2323
  call void @llvm.dbg.value(metadata i8 1, metadata !2196, metadata !DIExpression()), !dbg !2207
  %src137 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %63, i64 0, i32 0, !dbg !2324
  %72 = load %struct.basic_block_def*, %struct.basic_block_def** %src137, align 8, !dbg !2324
  %loop_father138 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %72, i64 0, i32 3, !dbg !2326
  %73 = load %struct.loop*, %struct.loop** %loop_father138, align 8, !dbg !2326
  %dest139 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %63, i64 0, i32 1, !dbg !2327
  %74 = load %struct.basic_block_def*, %struct.basic_block_def** %dest139, align 8, !dbg !2327
  %call140 = call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %73, %struct.basic_block_def* %74) #6, !dbg !2328
  %tobool141 = icmp eq i8 %call140, 0, !dbg !2328
  br i1 %tobool141, label %cleanup, label %if.then142, !dbg !2329

if.then142:                                       ; preds = %if.end135
  %75 = load %struct.basic_block_def*, %struct.basic_block_def** %src137, align 8, !dbg !2330
  %flags144 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %75, i64 0, i32 13, !dbg !2331
  %76 = load i32, i32* %flags144, align 8, !dbg !2332
  %or145 = or i32 %76, 4, !dbg !2332
  store i32 %or145, i32* %flags144, align 8, !dbg !2332
  br label %cleanup, !dbg !2333

cleanup:                                          ; preds = %if.end135, %cond.end121, %if.then142
  %irred_loop_found.2 = phi i8 [ %irred_loop_found.1, %cond.end121 ], [ 1, %if.then142 ], [ 1, %if.end135 ], !dbg !2207
  call void @llvm.dbg.value(metadata i8 %irred_loop_found.2, metadata !2196, metadata !DIExpression()), !dbg !2207
  %succ_next = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %ge.0, i64 0, i32 3, !dbg !2334
  br label %for.cond105, !dbg !2335, !llvm.loop !2336

for.inc149:                                       ; preds = %for.cond105
  %irred_loop_found.1.lcssa = phi i8 [ %irred_loop_found.1, %for.cond105 ], !dbg !2302
  call void @llvm.dbg.value(metadata i8 %irred_loop_found.1.lcssa, metadata !2196, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 %irred_loop_found.1.lcssa, metadata !2196, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 %irred_loop_found.1.lcssa, metadata !2196, metadata !DIExpression()), !dbg !2207
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2338
  call void @llvm.dbg.value(metadata i32 undef, metadata !2197, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2207
  br label %for.cond102, !dbg !2339, !llvm.loop !2340

for.end150:                                       ; preds = %for.cond102
  %irred_loop_found.0.lcssa = phi i8 [ %irred_loop_found.0, %for.cond102 ], !dbg !2302
  call void @llvm.dbg.value(metadata i8 %irred_loop_found.0.lcssa, metadata !2196, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 %irred_loop_found.0.lcssa, metadata !2196, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 %irred_loop_found.0.lcssa, metadata !2196, metadata !DIExpression()), !dbg !2207
  call void @free_graph(%struct.graph* %call15) #6, !dbg !2342
  call fastcc void @loops_state_set(i32 4) #8, !dbg !2343
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2344
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2344
  ret i8 %irred_loop_found.0.lcssa, !dbg !2345
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !dbg !2346 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2349
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2349
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2349
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2349
  br i1 %tobool, label %return, label %if.end, !dbg !2351

if.end:                                           ; preds = %entry
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !2352
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2352
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !2352
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !2352

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !2352
  br label %cond.end, !dbg !2352

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !2352
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !2352
  br label %return, !dbg !2353

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ], !dbg !2354
  ret i32 %retval.0, !dbg !2355
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2356 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2360, metadata !DIExpression()), !dbg !2362
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2363
  store i32 0, i32* %index, align 8, !dbg !2364
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2365
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2366
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2367
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2367
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2367
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2368 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2374, metadata !DIExpression()), !dbg !2375
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !2376
  %tobool = icmp eq i8 %call, 0, !dbg !2376
  br i1 %tobool, label %if.then, label %if.else, !dbg !2378

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !2379
  br label %return, !dbg !2381

if.else:                                          ; preds = %entry
  br label %return, !dbg !2382

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2384
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2384
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2384
  ret i8 %retval.0, !dbg !2385
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !2386 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !2391, metadata !DIExpression()), !dbg !2392
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !2393
  %0 = load i32, i32* %index, align 8, !dbg !2393
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !2393
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2393
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #8, !dbg !2393
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2393
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2393

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !2393
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2393
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #8, !dbg !2393
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2393
  br label %cond.end, !dbg !2393

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2393
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2393
  %cmp = icmp ult i32 %0, %call2, !dbg !2393
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !2393

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2393
  br label %cond.end5, !dbg !2393

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !2394
  %inc = add i32 %5, 1, !dbg !2394
  store i32 %inc, i32* %index, align 8, !dbg !2394
  ret void, !dbg !2395
}

declare dso_local %struct.graph* @new_graph(i32) local_unnamed_addr #1

declare dso_local zeroext i8 @flow_bb_inside_loop_p(%struct.loop*, %struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @loop_depth(%struct.loop* %loop) unnamed_addr #0 !dbg !2396 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2400, metadata !DIExpression()), !dbg !2401
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !2402
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2402
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !2402
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2402

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !2402
  br label %cond.end, !dbg !2402

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2402
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !2402
  ret i32 %call, !dbg !2403
}

declare dso_local %struct.loop* @find_common_loop(%struct.loop*, %struct.loop*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2404 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2410, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2411, metadata !DIExpression()), !dbg !2412
  br label %land.end, !dbg !2413

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2413
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2413
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !2413
  ret %struct.loop* %0, !dbg !2413
}

declare dso_local %struct.graph_edge* @add_edge(%struct.graph*, i32, i32) local_unnamed_addr #1

declare dso_local i32 @graphds_scc(%struct.graph*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @free_graph(%struct.graph*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @loops_state_set(i32 %flags) unnamed_addr #0 !dbg !2414 {
entry:
  call void @llvm.dbg.value(metadata i32 4, metadata !2418, metadata !DIExpression()), !dbg !2419
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2420
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2420
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2420
  %state = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 0, !dbg !2421
  %2 = load i32, i32* %state, align 8, !dbg !2422
  %or = or i32 %2, 4, !dbg !2422
  store i32 %or, i32* %state, align 8, !dbg !2422
  ret void, !dbg !2423
}

; Function Attrs: nounwind uwtable
define dso_local i32 @num_loop_insns(%struct.loop* %loop) local_unnamed_addr #4 !dbg !2424 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2428, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i32 0, metadata !2433, metadata !DIExpression()), !dbg !2435
  %call = tail call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #6, !dbg !2436
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call, metadata !2429, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i32 0, metadata !2432, metadata !DIExpression()), !dbg !2435
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !2437
  %0 = load i32, i32* %num_nodes, align 4, !dbg !2437
  %wide.trip.count = zext i32 %0 to i64, !dbg !2440
  br label %for.cond, !dbg !2441

for.cond:                                         ; preds = %for.inc26, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc26 ], [ 0, %entry ], !dbg !2442
  %ninsns.0 = phi i32 [ %ninsns.1.lcssa, %for.inc26 ], [ 0, %entry ], !dbg !2443
  call void @llvm.dbg.value(metadata i32 %ninsns.0, metadata !2433, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2432, metadata !DIExpression()), !dbg !2435
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !2440
  br i1 %exitcond, label %for.end28, label %for.body, !dbg !2444

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call, i64 %indvars.iv, !dbg !2445
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2445
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %1, metadata !2431, metadata !DIExpression()), !dbg !2435
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i64 0, i32 7, !dbg !2447
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2447
  %2 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2447
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %2, i64 0, i32 0, !dbg !2447
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %2, i64 0, i32 1, !dbg !2449
  br label %for.cond1, !dbg !2447

for.cond1:                                        ; preds = %for.inc, %for.body
  %ninsns.1 = phi i32 [ %ninsns.0, %for.body ], [ %ninsns.2, %for.inc ], !dbg !2443
  %insn.0.in = phi %struct.rtx_def** [ %head_, %for.body ], [ %rt_rtx25, %for.inc ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2451
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2434, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i32 %ninsns.1, metadata !2433, metadata !DIExpression()), !dbg !2435
  %tobool = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2449
  br i1 %tobool, label %for.inc26, label %land.rhs, !dbg !2449

land.rhs:                                         ; preds = %for.cond1
  %3 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2449
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2449
  %rt_rtx = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !2449
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2449
  %cmp5 = icmp eq %struct.rtx_def* %insn.0, %5, !dbg !2449
  br i1 %cmp5, label %for.inc26, label %for.body6, !dbg !2447

for.body6:                                        ; preds = %land.rhs
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2452
  %bf.load = load i32, i32* %6, align 8, !dbg !2452
  %bf.clear = and i32 %bf.load, 65535, !dbg !2452
  %cmp7 = icmp eq i32 %bf.clear, 8, !dbg !2452
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false, !dbg !2452

lor.lhs.false:                                    ; preds = %for.body6
  %cmp10 = icmp eq i32 %bf.clear, 7, !dbg !2452
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false11, !dbg !2452

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %cmp14 = icmp eq i32 %bf.clear, 9, !dbg !2452
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false15, !dbg !2452

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %cmp18 = icmp eq i32 %bf.clear, 10, !dbg !2452
  br i1 %cmp18, label %land.lhs.true, label %for.inc, !dbg !2452

land.lhs.true:                                    ; preds = %lor.lhs.false15, %lor.lhs.false11, %lor.lhs.false, %for.body6
  %cmp21 = icmp ne i32 %bf.clear, 7, !dbg !2452
  %inc = zext i1 %cmp21 to i32, !dbg !2454
  %spec.select = add i32 %ninsns.1, %inc, !dbg !2454
  br label %for.inc, !dbg !2454

for.inc:                                          ; preds = %land.lhs.true, %lor.lhs.false15
  %ninsns.2 = phi i32 [ %ninsns.1, %lor.lhs.false15 ], [ %spec.select, %land.lhs.true ], !dbg !2435
  call void @llvm.dbg.value(metadata i32 %ninsns.2, metadata !2433, metadata !DIExpression()), !dbg !2435
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2449
  %rt_rtx25 = bitcast %union.rtunion_def* %7 to %struct.rtx_def**, !dbg !2449
  br label %for.cond1, !dbg !2449, !llvm.loop !2455

for.inc26:                                        ; preds = %land.rhs, %for.cond1
  %ninsns.1.lcssa = phi i32 [ %ninsns.1, %land.rhs ], [ %ninsns.1, %for.cond1 ], !dbg !2443
  call void @llvm.dbg.value(metadata i32 %ninsns.1.lcssa, metadata !2433, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i32 %ninsns.1.lcssa, metadata !2433, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i32 %ninsns.1.lcssa, metadata !2433, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i32 %ninsns.1.lcssa, metadata !2433, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i32 %ninsns.1.lcssa, metadata !2433, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i32 %ninsns.1.lcssa, metadata !2433, metadata !DIExpression()), !dbg !2435
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2457
  br label %for.cond, !dbg !2458, !llvm.loop !2459

for.end28:                                        ; preds = %for.cond
  %ninsns.0.lcssa = phi i32 [ %ninsns.0, %for.cond ], !dbg !2443
  call void @llvm.dbg.value(metadata i32 %ninsns.0.lcssa, metadata !2433, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i32 %ninsns.0.lcssa, metadata !2433, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i32 %ninsns.0.lcssa, metadata !2433, metadata !DIExpression()), !dbg !2435
  %8 = bitcast %struct.basic_block_def** %call to i8*, !dbg !2461
  tail call void @free(i8* %8) #6, !dbg !2462
  %tobool29 = icmp eq i32 %ninsns.0.lcssa, 0, !dbg !2463
  %spec.select1 = select i1 %tobool29, i32 1, i32 %ninsns.0.lcssa, !dbg !2465
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !2433, metadata !DIExpression()), !dbg !2435
  ret i32 %spec.select1, !dbg !2466
}

declare dso_local %struct.basic_block_def** @get_loop_body(%struct.loop*) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @average_num_loop_insns(%struct.loop* %loop) local_unnamed_addr #4 !dbg !2467 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2469, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 0, metadata !2474, metadata !DIExpression()), !dbg !2477
  %call = tail call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #6, !dbg !2478
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call, metadata !2470, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 0, metadata !2472, metadata !DIExpression()), !dbg !2477
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !2479
  %0 = load i32, i32* %num_nodes, align 4, !dbg !2479
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !2482
  %wide.trip.count = zext i32 %0 to i64, !dbg !2484
  br label %for.cond, !dbg !2485

for.cond:                                         ; preds = %cond.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end ], [ 0, %entry ], !dbg !2486
  %ninsns.0 = phi i32 [ %add, %cond.end ], [ 0, %entry ], !dbg !2477
  call void @llvm.dbg.value(metadata i32 %ninsns.0, metadata !2474, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2472, metadata !DIExpression()), !dbg !2477
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !2484
  br i1 %exitcond, label %for.end33, label %for.body, !dbg !2487

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call, i64 %indvars.iv, !dbg !2488
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2488
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %1, metadata !2471, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 0, metadata !2473, metadata !DIExpression()), !dbg !2477
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i64 0, i32 7, !dbg !2489
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2489
  %2 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2489
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %2, i64 0, i32 0, !dbg !2489
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %2, i64 0, i32 1, !dbg !2491
  br label %for.cond1, !dbg !2489

for.cond1:                                        ; preds = %for.inc, %for.body
  %binsns.0 = phi i32 [ 0, %for.body ], [ %binsns.1, %for.inc ], !dbg !2493
  %insn.0.in = phi %struct.rtx_def** [ %head_, %for.body ], [ %rt_rtx25, %for.inc ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2494
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2476, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 %binsns.0, metadata !2473, metadata !DIExpression()), !dbg !2477
  %tobool = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2491
  br i1 %tobool, label %for.end, label %land.rhs, !dbg !2491

land.rhs:                                         ; preds = %for.cond1
  %3 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2491
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2491
  %rt_rtx = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !2491
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2491
  %cmp5 = icmp eq %struct.rtx_def* %insn.0, %5, !dbg !2491
  br i1 %cmp5, label %for.end, label %for.body6, !dbg !2489

for.body6:                                        ; preds = %land.rhs
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2495
  %bf.load = load i32, i32* %6, align 8, !dbg !2495
  %bf.clear = and i32 %bf.load, 65535, !dbg !2495
  %cmp7 = icmp eq i32 %bf.clear, 8, !dbg !2495
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false, !dbg !2495

lor.lhs.false:                                    ; preds = %for.body6
  %cmp10 = icmp eq i32 %bf.clear, 7, !dbg !2495
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false11, !dbg !2495

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %cmp14 = icmp eq i32 %bf.clear, 9, !dbg !2495
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false15, !dbg !2495

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %cmp18 = icmp eq i32 %bf.clear, 10, !dbg !2495
  br i1 %cmp18, label %land.lhs.true, label %for.inc, !dbg !2495

land.lhs.true:                                    ; preds = %lor.lhs.false15, %lor.lhs.false11, %lor.lhs.false, %for.body6
  %cmp21 = icmp ne i32 %bf.clear, 7, !dbg !2495
  %inc = zext i1 %cmp21 to i32, !dbg !2497
  %spec.select = add i32 %binsns.0, %inc, !dbg !2497
  br label %for.inc, !dbg !2497

for.inc:                                          ; preds = %land.lhs.true, %lor.lhs.false15
  %binsns.1 = phi i32 [ %binsns.0, %lor.lhs.false15 ], [ %spec.select, %land.lhs.true ], !dbg !2482
  call void @llvm.dbg.value(metadata i32 %binsns.1, metadata !2473, metadata !DIExpression()), !dbg !2477
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2491
  %rt_rtx25 = bitcast %union.rtunion_def* %7 to %struct.rtx_def**, !dbg !2491
  br label %for.cond1, !dbg !2491, !llvm.loop !2498

for.end:                                          ; preds = %land.rhs, %for.cond1
  %binsns.0.lcssa = phi i32 [ %binsns.0, %land.rhs ], [ %binsns.0, %for.cond1 ], !dbg !2493
  call void @llvm.dbg.value(metadata i32 %binsns.0.lcssa, metadata !2473, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 %binsns.0.lcssa, metadata !2473, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 %binsns.0.lcssa, metadata !2473, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 %binsns.0.lcssa, metadata !2473, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 %binsns.0.lcssa, metadata !2473, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 %binsns.0.lcssa, metadata !2473, metadata !DIExpression()), !dbg !2477
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !2500
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i64 0, i32 11, !dbg !2501
  %9 = load i32, i32* %frequency, align 8, !dbg !2501
  %cmp26 = icmp eq i32 %9, 0, !dbg !2502
  br i1 %cmp26, label %cond.end, label %cond.false, !dbg !2503

cond.false:                                       ; preds = %for.end
  %frequency27 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i64 0, i32 11, !dbg !2504
  %10 = load i32, i32* %frequency27, align 8, !dbg !2504
  %mul = mul nsw i32 %10, 10000, !dbg !2505
  %div = sdiv i32 %mul, %9, !dbg !2506
  br label %cond.end, !dbg !2503

cond.end:                                         ; preds = %for.end, %cond.false
  %cond = phi i32 [ %div, %cond.false ], [ 10000, %for.end ], !dbg !2503
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2475, metadata !DIExpression()), !dbg !2477
  %mul30 = mul i32 %binsns.0.lcssa, %cond, !dbg !2507
  %add = add i32 %ninsns.0, %mul30, !dbg !2508
  call void @llvm.dbg.value(metadata i32 %add, metadata !2474, metadata !DIExpression()), !dbg !2477
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2509
  br label %for.cond, !dbg !2510, !llvm.loop !2511

for.end33:                                        ; preds = %for.cond
  %ninsns.0.lcssa = phi i32 [ %ninsns.0, %for.cond ], !dbg !2477
  call void @llvm.dbg.value(metadata i32 %ninsns.0.lcssa, metadata !2474, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 %ninsns.0.lcssa, metadata !2474, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 %ninsns.0.lcssa, metadata !2474, metadata !DIExpression()), !dbg !2477
  %11 = bitcast %struct.basic_block_def** %call to i8*, !dbg !2513
  tail call void @free(i8* %11) #6, !dbg !2514
  %div34 = udiv i32 %ninsns.0.lcssa, 10000, !dbg !2515
  call void @llvm.dbg.value(metadata i32 %div34, metadata !2474, metadata !DIExpression()), !dbg !2477
  %12 = icmp ugt i32 %ninsns.0.lcssa, 9999, !dbg !2516
  %spec.select1 = select i1 %12, i32 %div34, i32 1, !dbg !2518
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !2474, metadata !DIExpression()), !dbg !2477
  ret i32 %spec.select1, !dbg !2519
}

; Function Attrs: nounwind uwtable
define dso_local i64 @expected_loop_iterations_unbounded(%struct.loop* %loop) local_unnamed_addr #4 !dbg !2520 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp16 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2524, metadata !DIExpression()), !dbg !2535
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2536
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2536
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2537
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2537
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !2538
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !2538
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 8, !dbg !2539
  %3 = load i64, i64* %count, align 8, !dbg !2539
  %tobool = icmp eq i64 %3, 0, !dbg !2540
  br i1 %tobool, label %lor.lhs.false, label %entry.if.then_crit_edge, !dbg !2541

entry.if.then_crit_edge:                          ; preds = %entry
  %header3.phi.trans.insert = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !2542
  %.pre = load %struct.basic_block_def*, %struct.basic_block_def** %header3.phi.trans.insert, align 8, !dbg !2544
  br label %if.then, !dbg !2541

lor.lhs.false:                                    ; preds = %entry
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !2545
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !2545
  %count1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 8, !dbg !2546
  %5 = load i64, i64* %count1, align 8, !dbg !2546
  %tobool2 = icmp eq i64 %5, 0, !dbg !2547
  br i1 %tobool2, label %if.else15, label %if.then, !dbg !2548

if.then:                                          ; preds = %entry.if.then_crit_edge, %lor.lhs.false
  %6 = phi %struct.basic_block_def* [ %.pre, %entry.if.then_crit_edge ], [ %4, %lor.lhs.false ], !dbg !2544
  call void @llvm.dbg.value(metadata i64 0, metadata !2527, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 0, metadata !2530, metadata !DIExpression()), !dbg !2549
  %7 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2544
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #7, !dbg !2544
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 0, !dbg !2544
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !2544
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2544
  %9 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !2544
  store i32 %9, i32* %8, align 8, !dbg !2544
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2544
  %11 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !2544
  store %struct.VEC_edge_gc** %11, %struct.VEC_edge_gc*** %10, align 8, !dbg !2544
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %7, i64 16, i1 false), !dbg !2544
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #7, !dbg !2544
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2550
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2550
  br label %for.cond, !dbg !2544

for.cond:                                         ; preds = %for.body, %if.then
  %count_latch.0 = phi i64 [ 0, %if.then ], [ %count_latch.1, %for.body ], !dbg !2549
  %count_in.0 = phi i64 [ 0, %if.then ], [ %count_in.1, %for.body ], !dbg !2552
  call void @llvm.dbg.value(metadata i64 %count_in.0, metadata !2527, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 %count_latch.0, metadata !2530, metadata !DIExpression()), !dbg !2549
  %14 = load i32, i32* %12, align 8, !dbg !2553
  %15 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %13, align 8, !dbg !2553
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2525, metadata !DIExpression(DW_OP_deref)), !dbg !2535
  %call4 = call fastcc zeroext i8 @ei_cond(i32 %14, %struct.VEC_edge_gc** %15, %struct.edge_def** nonnull %e) #8, !dbg !2553
  %tobool5 = icmp eq i8 %call4, 0, !dbg !2544
  br i1 %tobool5, label %for.end, label %for.body, !dbg !2544

for.body:                                         ; preds = %for.cond
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2554
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !2525, metadata !DIExpression()), !dbg !2535
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 0, !dbg !2556
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2556
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !2557
  %cmp = icmp eq %struct.basic_block_def* %17, %18, !dbg !2558
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !2525, metadata !DIExpression()), !dbg !2535
  %count8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 9, !dbg !2559
  %19 = load i64, i64* %count8, align 8, !dbg !2559
  %count_latch.1 = select i1 %cmp, i64 %19, i64 %count_latch.0, !dbg !2560
  %add = select i1 %cmp, i64 0, i64 %19, !dbg !2560
  %count_in.1 = add nsw i64 %count_in.0, %add, !dbg !2560
  call void @llvm.dbg.value(metadata i64 %count_in.1, metadata !2527, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 %count_latch.1, metadata !2530, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2526, metadata !DIExpression(DW_OP_deref)), !dbg !2535
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2553
  br label %for.cond, !dbg !2553, !llvm.loop !2561

for.end:                                          ; preds = %for.cond
  %count_latch.0.lcssa = phi i64 [ %count_latch.0, %for.cond ], !dbg !2549
  %count_in.0.lcssa = phi i64 [ %count_in.0, %for.cond ], !dbg !2552
  call void @llvm.dbg.value(metadata i64 %count_latch.0.lcssa, metadata !2530, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 %count_in.0.lcssa, metadata !2527, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 %count_latch.0.lcssa, metadata !2530, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 %count_in.0.lcssa, metadata !2527, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 %count_latch.0.lcssa, metadata !2530, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i64 %count_in.0.lcssa, metadata !2527, metadata !DIExpression()), !dbg !2549
  %cmp10 = icmp eq i64 %count_in.0.lcssa, 0, !dbg !2563
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !2565

if.then11:                                        ; preds = %for.end
  %mul = shl nsw i64 %count_latch.0.lcssa, 1, !dbg !2566
  call void @llvm.dbg.value(metadata i64 %mul, metadata !2531, metadata !DIExpression()), !dbg !2549
  br label %cleanup52, !dbg !2567

if.else12:                                        ; preds = %for.end
  %add13 = add nsw i64 %count_latch.0.lcssa, %count_in.0.lcssa, !dbg !2568
  %sub = add nsw i64 %add13, -1, !dbg !2569
  %div = sdiv i64 %sub, %count_in.0.lcssa, !dbg !2570
  call void @llvm.dbg.value(metadata i64 %div, metadata !2531, metadata !DIExpression()), !dbg !2549
  br label %cleanup52

if.else15:                                        ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata i32 0, metadata !2532, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 0, metadata !2534, metadata !DIExpression()), !dbg !2571
  %20 = bitcast %struct.edge_iterator* %tmp16 to i8*, !dbg !2572
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #7, !dbg !2572
  %preds18 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 0, !dbg !2572
  %call19 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds18) #8, !dbg !2572
  %21 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp16, i64 0, i32 0, !dbg !2572
  %22 = extractvalue { i32, %struct.VEC_edge_gc** } %call19, 0, !dbg !2572
  store i32 %22, i32* %21, align 8, !dbg !2572
  %23 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp16, i64 0, i32 1, !dbg !2572
  %24 = extractvalue { i32, %struct.VEC_edge_gc** } %call19, 1, !dbg !2572
  store %struct.VEC_edge_gc** %24, %struct.VEC_edge_gc*** %23, align 8, !dbg !2572
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %20, i64 16, i1 false), !dbg !2572
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #7, !dbg !2572
  %25 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2574
  %26 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2574
  br label %for.cond20, !dbg !2572

for.cond20:                                       ; preds = %for.body23, %if.else15
  %freq_in.0 = phi i32 [ 0, %if.else15 ], [ %freq_in.1, %for.body23 ], !dbg !2576
  %freq_latch.0 = phi i32 [ 0, %if.else15 ], [ %freq_latch.1, %for.body23 ], !dbg !2571
  call void @llvm.dbg.value(metadata i32 %freq_latch.0, metadata !2534, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %freq_in.0, metadata !2532, metadata !DIExpression()), !dbg !2571
  %27 = load i32, i32* %25, align 8, !dbg !2577
  %28 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %26, align 8, !dbg !2577
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2525, metadata !DIExpression(DW_OP_deref)), !dbg !2535
  %call21 = call fastcc zeroext i8 @ei_cond(i32 %27, %struct.VEC_edge_gc** %28, %struct.edge_def** nonnull %e) #8, !dbg !2577
  %tobool22 = icmp eq i8 %call21, 0, !dbg !2572
  br i1 %tobool22, label %for.end42, label %for.body23, !dbg !2572

for.body23:                                       ; preds = %for.cond20
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2578
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !2525, metadata !DIExpression()), !dbg !2535
  %src24 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 0, !dbg !2580
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %src24, align 8, !dbg !2580
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !2581
  %cmp26 = icmp eq %struct.basic_block_def* %30, %31, !dbg !2582
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !2525, metadata !DIExpression()), !dbg !2535
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i64 0, i32 11, !dbg !2583
  %32 = load i32, i32* %frequency, align 8, !dbg !2583
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !2525, metadata !DIExpression()), !dbg !2535
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 8, !dbg !2583
  %33 = load i32, i32* %probability, align 4, !dbg !2583
  %mul29 = mul nsw i32 %32, %33, !dbg !2583
  %add30 = add nsw i32 %mul29, 5000, !dbg !2583
  %div31 = sdiv i32 %add30, 10000, !dbg !2583
  %add39 = select i1 %cmp26, i32 0, i32 %div31, !dbg !2584
  %freq_in.1 = add nsw i32 %freq_in.0, %add39, !dbg !2584
  %freq_latch.1 = select i1 %cmp26, i32 %div31, i32 %freq_latch.0, !dbg !2584
  call void @llvm.dbg.value(metadata i32 %freq_latch.1, metadata !2534, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %freq_in.1, metadata !2532, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2526, metadata !DIExpression(DW_OP_deref)), !dbg !2535
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2577
  br label %for.cond20, !dbg !2577, !llvm.loop !2585

for.end42:                                        ; preds = %for.cond20
  %freq_in.0.lcssa = phi i32 [ %freq_in.0, %for.cond20 ], !dbg !2576
  %freq_latch.0.lcssa = phi i32 [ %freq_latch.0, %for.cond20 ], !dbg !2571
  call void @llvm.dbg.value(metadata i32 %freq_in.0.lcssa, metadata !2532, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %freq_latch.0.lcssa, metadata !2534, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %freq_in.0.lcssa, metadata !2532, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %freq_latch.0.lcssa, metadata !2534, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %freq_in.0.lcssa, metadata !2532, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %freq_latch.0.lcssa, metadata !2534, metadata !DIExpression()), !dbg !2571
  %cmp43 = icmp eq i32 %freq_in.0.lcssa, 0, !dbg !2587
  br i1 %cmp43, label %if.then44, label %if.end46, !dbg !2589

if.then44:                                        ; preds = %for.end42
  %mul45 = shl nsw i32 %freq_latch.0.lcssa, 1, !dbg !2590
  %conv = sext i32 %mul45 to i64, !dbg !2591
  br label %cleanup52, !dbg !2592

if.end46:                                         ; preds = %for.end42
  %add47 = add nsw i32 %freq_latch.0.lcssa, %freq_in.0.lcssa, !dbg !2593
  %sub48 = add nsw i32 %add47, -1, !dbg !2594
  %div49 = sdiv i32 %sub48, %freq_in.0.lcssa, !dbg !2595
  %conv50 = sext i32 %div49 to i64, !dbg !2596
  br label %cleanup52, !dbg !2597

cleanup52:                                        ; preds = %if.then44, %if.end46, %if.then11, %if.else12
  %retval.1 = phi i64 [ %mul, %if.then11 ], [ %div, %if.else12 ], [ %conv, %if.then44 ], [ %conv50, %if.end46 ], !dbg !2598
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2599
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2599
  ret i64 %retval.1, !dbg !2599
}

; Function Attrs: nounwind uwtable
define dso_local i32 @expected_loop_iterations(%struct.loop* %loop) local_unnamed_addr #4 !dbg !2600 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2602, metadata !DIExpression()), !dbg !2604
  %call = tail call i64 @expected_loop_iterations_unbounded(%struct.loop* %loop) #8, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %call, metadata !2603, metadata !DIExpression()), !dbg !2604
  %0 = icmp slt i64 %call, 10000, !dbg !2606
  %.call = select i1 %0, i64 %call, i64 10000, !dbg !2606
  %conv = trunc i64 %.call to i32, !dbg !2607
  ret i32 %conv, !dbg !2608
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_loop_level(%struct.loop* %loop) local_unnamed_addr #4 !dbg !2609 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2611, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 0, metadata !2613, metadata !DIExpression()), !dbg !2615
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 8, !dbg !2616
  br label %for.cond, !dbg !2618

for.cond:                                         ; preds = %for.body, %entry
  %ploop.0.in = phi %struct.loop** [ %inner, %entry ], [ %next, %for.body ]
  %mx.0 = phi i32 [ 0, %entry ], [ %spec.select, %for.body ], !dbg !2615
  %ploop.0 = load %struct.loop*, %struct.loop** %ploop.0.in, align 8, !dbg !2619
  call void @llvm.dbg.value(metadata i32 %mx.0, metadata !2613, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata %struct.loop* %ploop.0, metadata !2612, metadata !DIExpression()), !dbg !2615
  %tobool = icmp eq %struct.loop* %ploop.0, null, !dbg !2620
  br i1 %tobool, label %for.end, label %for.body, !dbg !2620

for.body:                                         ; preds = %for.cond
  %call = tail call i32 @get_loop_level(%struct.loop* nonnull %ploop.0) #8, !dbg !2621
  call void @llvm.dbg.value(metadata i32 %call, metadata !2614, metadata !DIExpression()), !dbg !2615
  %cmp = icmp ult i32 %call, %mx.0, !dbg !2624
  %add = add i32 %call, 1, !dbg !2626
  %spec.select = select i1 %cmp, i32 %mx.0, i32 %add, !dbg !2627
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2613, metadata !DIExpression()), !dbg !2615
  %next = getelementptr inbounds %struct.loop, %struct.loop* %ploop.0, i64 0, i32 9, !dbg !2628
  br label %for.cond, !dbg !2629, !llvm.loop !2630

for.end:                                          ; preds = %for.cond
  %mx.0.lcssa = phi i32 [ %mx.0, %for.cond ], !dbg !2615
  call void @llvm.dbg.value(metadata i32 %mx.0.lcssa, metadata !2613, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 %mx.0.lcssa, metadata !2613, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 %mx.0.lcssa, metadata !2613, metadata !DIExpression()), !dbg !2615
  ret i32 %mx.0.lcssa, !dbg !2632
}

; Function Attrs: nounwind uwtable
define dso_local void @init_set_costs() local_unnamed_addr #4 !dbg !2633 {
entry:
  %call = tail call %struct.rtx_def* @gen_raw_REG(i32 16, i32 53) #6, !dbg !2644
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2639, metadata !DIExpression()), !dbg !2645
  %call1 = tail call %struct.rtx_def* @gen_raw_REG(i32 16, i32 54) #6, !dbg !2646
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call1, metadata !2640, metadata !DIExpression()), !dbg !2645
  %call2 = tail call %struct.rtx_def* @gen_raw_REG(i32 16, i32 55) #6, !dbg !2647
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call2, metadata !2641, metadata !DIExpression()), !dbg !2645
  %call3 = tail call %struct.rtx_def* @gen_rtx_MEM(i32 16, %struct.rtx_def* %call2) #6, !dbg !2648
  %call4 = tail call %struct.rtx_def* @validize_mem(%struct.rtx_def* %call3) #6, !dbg !2649
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call4, metadata !2642, metadata !DIExpression()), !dbg !2645
  store i32 0, i32* @target_avail_regs, align 4, !dbg !2650
  call void @llvm.dbg.value(metadata i32 0, metadata !2643, metadata !DIExpression()), !dbg !2645
  %0 = load i64, i64* getelementptr inbounds ([27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 13), align 8, !dbg !2651
  br label %for.cond, !dbg !2655

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc ], [ 0, %entry ]
  %1 = phi i32 [ %3, %for.inc ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !2643, metadata !DIExpression()), !dbg !2645
  %exitcond3 = icmp eq i64 %indvars.iv1, 53, !dbg !2656
  br i1 %exitcond3, label %for.end, label %for.body, !dbg !2657

for.body:                                         ; preds = %for.cond
  %shl = shl i64 1, %indvars.iv1, !dbg !2658
  %and = and i64 %0, %shl, !dbg !2658
  %tobool = icmp eq i64 %and, 0, !dbg !2658
  br i1 %tobool, label %for.inc, label %land.lhs.true, !dbg !2659

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 %indvars.iv1, !dbg !2660
  %2 = load i8, i8* %arrayidx, align 1, !dbg !2660
  %tobool5 = icmp eq i8 %2, 0, !dbg !2660
  br i1 %tobool5, label %if.then, label %for.inc, !dbg !2661

if.then:                                          ; preds = %land.lhs.true
  %inc = add i32 %1, 1, !dbg !2662
  store i32 %inc, i32* @target_avail_regs, align 4, !dbg !2662
  br label %for.inc, !dbg !2663

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then
  %3 = phi i32 [ %1, %land.lhs.true ], [ %1, %for.body ], [ %inc, %if.then ]
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !2664
  call void @llvm.dbg.value(metadata i32 undef, metadata !2643, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2645
  br label %for.cond, !dbg !2665, !llvm.loop !2666

for.end:                                          ; preds = %for.cond
  store i32 3, i32* @target_res_regs, align 4, !dbg !2668
  call void @llvm.dbg.value(metadata i32 0, metadata !2637, metadata !DIExpression()), !dbg !2645
  br label %for.cond7, !dbg !2669

for.cond7:                                        ; preds = %for.body9, %for.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 0, %for.end ], !dbg !2671
  %speed.0 = phi i32 [ %inc24, %for.body9 ], [ 0, %for.end ], !dbg !2671
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2637, metadata !DIExpression()), !dbg !2645
  %exitcond = icmp eq i64 %indvars.iv, 2, !dbg !2672
  br i1 %exitcond, label %for.end25, label %for.body9, !dbg !2674

for.body9:                                        ; preds = %for.cond7
  %conv = trunc i32 %speed.0 to i8, !dbg !2675
  store i8 %conv, i8* getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 42), align 2, !dbg !2677
  tail call void @start_sequence() #6, !dbg !2678
  %call10 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call, %struct.rtx_def* %call1) #6, !dbg !2679
  %call11 = tail call %struct.rtx_def* @get_insns() #6, !dbg !2680
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call11, metadata !2638, metadata !DIExpression()), !dbg !2645
  tail call void @end_sequence() #6, !dbg !2681
  %call13 = tail call fastcc i32 @seq_cost(%struct.rtx_def* %call11, i8 zeroext %conv) #8, !dbg !2682
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* @target_reg_cost, i64 0, i64 %indvars.iv, !dbg !2683
  store i32 %call13, i32* %arrayidx15, align 4, !dbg !2684
  tail call void @start_sequence() #6, !dbg !2685
  %call16 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call4, %struct.rtx_def* %call) #6, !dbg !2686
  %call17 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call1, %struct.rtx_def* %call4) #6, !dbg !2687
  %call18 = tail call %struct.rtx_def* @get_insns() #6, !dbg !2688
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call18, metadata !2638, metadata !DIExpression()), !dbg !2645
  tail call void @end_sequence() #6, !dbg !2689
  %call20 = tail call fastcc i32 @seq_cost(%struct.rtx_def* %call18, i8 zeroext %conv) #8, !dbg !2690
  %arrayidx22 = getelementptr inbounds [2 x i32], [2 x i32]* @target_spill_cost, i64 0, i64 %indvars.iv, !dbg !2691
  store i32 %call20, i32* %arrayidx22, align 4, !dbg !2692
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2693
  %inc24 = add nuw nsw i32 %speed.0, 1, !dbg !2693
  call void @llvm.dbg.value(metadata i32 %inc24, metadata !2637, metadata !DIExpression()), !dbg !2645
  br label %for.cond7, !dbg !2694, !llvm.loop !2695

for.end25:                                        ; preds = %for.cond7
  tail call void @default_rtl_profile() #6, !dbg !2697
  ret void, !dbg !2698
}

declare dso_local %struct.rtx_def* @gen_raw_REG(i32, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @validize_mem(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_rtx_MEM(i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @start_sequence() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @get_insns() local_unnamed_addr #1

declare dso_local void @end_sequence() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @seq_cost(%struct.rtx_def* %seq, i8 zeroext %speed) unnamed_addr #4 !dbg !2699 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %seq, metadata !2706, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 %speed, metadata !2707, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i32 0, metadata !2708, metadata !DIExpression()), !dbg !2710
  br label %for.cond, !dbg !2711

for.cond:                                         ; preds = %for.inc, %entry
  %cost.0 = phi i32 [ 0, %entry ], [ %cost.1, %for.inc ], !dbg !2710
  %seq.addr.0 = phi %struct.rtx_def* [ %seq, %entry ], [ %6, %for.inc ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %seq.addr.0, metadata !2706, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i32 %cost.0, metadata !2708, metadata !DIExpression()), !dbg !2710
  %tobool = icmp eq %struct.rtx_def* %seq.addr.0, null, !dbg !2712
  br i1 %tobool, label %for.end, label %for.body, !dbg !2712

for.body:                                         ; preds = %for.cond
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %seq.addr.0, i64 0, i32 0, !dbg !2714
  %bf.load = load i32, i32* %0, align 8, !dbg !2714
  %bf.clear = and i32 %bf.load, 65535, !dbg !2714
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !2714
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !2714

lor.lhs.false:                                    ; preds = %for.body
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !2714
  br i1 %cmp3, label %cond.true, label %lor.lhs.false4, !dbg !2714

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !2714
  br i1 %cmp7, label %cond.true, label %lor.lhs.false8, !dbg !2714

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !2714
  br i1 %cmp11, label %cond.true, label %cond.end25, !dbg !2714

cond.true:                                        ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %for.body
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %seq.addr.0, i64 0, i32 1, !dbg !2714
  %1 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !2714
  %2 = bitcast %union.rtunion_def* %1 to i32**, !dbg !2714
  %3 = load i32*, i32** %2, align 8, !dbg !2714
  %bf.load12 = load i32, i32* %3, align 8, !dbg !2714
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !2714
  %cmp14 = icmp eq i32 %bf.clear13, 23, !dbg !2714
  %4 = bitcast i32* %3 to %struct.rtx_def*, !dbg !2714
  br i1 %cmp14, label %cond.end25, label %cond.false, !dbg !2714

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* nonnull %seq.addr.0, %struct.rtx_def* %4) #6, !dbg !2714
  br label %cond.end25, !dbg !2714

cond.end25:                                       ; preds = %lor.lhs.false8, %cond.false, %cond.true
  %cond26 = phi %struct.rtx_def* [ %call, %cond.false ], [ %4, %cond.true ], [ null, %lor.lhs.false8 ], !dbg !2714
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond26, metadata !2709, metadata !DIExpression()), !dbg !2710
  %tobool27 = icmp eq %struct.rtx_def* %cond26, null, !dbg !2717
  br i1 %tobool27, label %if.else, label %if.then, !dbg !2719

if.then:                                          ; preds = %cond.end25
  %call28 = tail call i32 @rtx_cost(%struct.rtx_def* nonnull %cond26, i32 23, i8 zeroext %speed) #6, !dbg !2720
  br label %for.inc, !dbg !2721

if.else:                                          ; preds = %cond.end25
  call void @llvm.dbg.value(metadata i32 %cost.0, metadata !2708, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2710
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %call28.pn = phi i32 [ %call28, %if.then ], [ 1, %if.else ]
  %cost.1 = add i32 %cost.0, %call28.pn, !dbg !2722
  call void @llvm.dbg.value(metadata i32 %cost.1, metadata !2708, metadata !DIExpression()), !dbg !2710
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %seq.addr.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2723
  %rt_rtx32 = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !2723
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx32, align 8, !dbg !2723
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !2706, metadata !DIExpression()), !dbg !2710
  br label %for.cond, !dbg !2724, !llvm.loop !2725

for.end:                                          ; preds = %for.cond
  %cost.0.lcssa = phi i32 [ %cost.0, %for.cond ], !dbg !2710
  call void @llvm.dbg.value(metadata i32 %cost.0.lcssa, metadata !2708, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i32 %cost.0.lcssa, metadata !2708, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i32 %cost.0.lcssa, metadata !2708, metadata !DIExpression()), !dbg !2710
  ret i32 %cost.0.lcssa, !dbg !2727
}

declare dso_local void @default_rtl_profile() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @estimate_reg_pressure_cost(i32 %n_new, i32 %n_old, i8 zeroext %speed) local_unnamed_addr #4 !dbg !2728 {
entry:
  call void @llvm.dbg.value(metadata i32 %n_new, metadata !2732, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i32 %n_old, metadata !2733, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8 %speed, metadata !2734, metadata !DIExpression()), !dbg !2737
  %add = add i32 %n_new, %n_old, !dbg !2738
  call void @llvm.dbg.value(metadata i32 %add, metadata !2736, metadata !DIExpression()), !dbg !2737
  %0 = load i32, i32* @target_res_regs, align 4, !dbg !2739
  %add1 = add i32 %add, %0, !dbg !2741
  %1 = load i32, i32* @target_avail_regs, align 4, !dbg !2742
  %cmp = icmp ugt i32 %add1, %1, !dbg !2743
  br i1 %cmp, label %if.end, label %cleanup, !dbg !2744

if.end:                                           ; preds = %entry
  %cmp2 = icmp ugt i32 %add, %1, !dbg !2745
  %idxprom = zext i8 %speed to i64, !dbg !2747
  br i1 %cmp2, label %if.else, label %if.then3, !dbg !2748

if.then3:                                         ; preds = %if.end
  br label %if.end7, !dbg !2749

if.else:                                          ; preds = %if.end
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %target_reg_cost.pn = phi [2 x i32]* [ @target_reg_cost, %if.then3 ], [ @target_spill_cost, %if.else ]
  %.pn.in = getelementptr inbounds [2 x i32], [2 x i32]* %target_reg_cost.pn, i64 0, i64 %idxprom, !dbg !2747
  %.pn = load i32, i32* %.pn.in, align 4, !dbg !2747
  %cost.0 = mul i32 %.pn, %n_new, !dbg !2747
  call void @llvm.dbg.value(metadata i32 %cost.0, metadata !2735, metadata !DIExpression()), !dbg !2737
  %2 = load i32, i32* @optimize, align 4, !dbg !2750
  %tobool = icmp eq i32 %2, 0, !dbg !2750
  br i1 %tobool, label %cleanup, label %land.lhs.true, !dbg !2752

land.lhs.true:                                    ; preds = %if.end7
  %3 = load i32, i32* @flag_ira_region, align 4, !dbg !2753
  %4 = add i32 %3, -1, !dbg !2754
  %5 = icmp ult i32 %4, 2, !dbg !2754
  br i1 %5, label %land.lhs.true10, label %cleanup, !dbg !2754

land.lhs.true10:                                  ; preds = %land.lhs.true
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !2755
  %6 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2756
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %6, i64 105, i32 1, !dbg !2756
  %7 = load i32, i32* %value, align 8, !dbg !2756
  %cmp12 = icmp ugt i32 %call, %7, !dbg !2757
  br i1 %cmp12, label %cleanup, label %if.then13, !dbg !2758

if.then13:                                        ; preds = %land.lhs.true10
  %div = lshr i32 %cost.0, 1, !dbg !2759
  call void @llvm.dbg.value(metadata i32 %div, metadata !2735, metadata !DIExpression()), !dbg !2737
  br label %cleanup, !dbg !2760

cleanup:                                          ; preds = %land.lhs.true10, %if.end7, %entry, %if.then13, %land.lhs.true
  %retval.0 = phi i32 [ 0, %entry ], [ %div, %if.then13 ], [ %cost.0, %land.lhs.true10 ], [ %cost.0, %if.end7 ], [ %cost.0, %land.lhs.true ], !dbg !2737
  ret i32 %retval.0, !dbg !2761
}

; Function Attrs: nounwind uwtable
define dso_local void @mark_loop_exit_edges() local_unnamed_addr #4 !dbg !2762 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2770
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2770
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !2771
  %cmp = icmp ult i32 %call, 2, !dbg !2773
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2774

if.end:                                           ; preds = %entry
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2775
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2775
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2775
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !2775
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2775
  %4 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2776
  %5 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2777
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2777
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2777
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2779
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2779
  br label %for.cond, !dbg !2775

for.cond:                                         ; preds = %for.end, %if.end
  %10 = phi %struct.control_flow_graph* [ %2, %if.end ], [ %.pre1, %for.end ], !dbg !2781
  %.pn = phi %struct.basic_block_def* [ %3, %if.end ], [ %bb.0, %for.end ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2782
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2782
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2764, metadata !DIExpression()), !dbg !2783
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 1, !dbg !2781
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2781
  %cmp3 = icmp eq %struct.basic_block_def* %bb.0, %11, !dbg !2781
  br i1 %cmp3, label %cleanup.loopexit, label %for.body, !dbg !2775

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !2784
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !2785
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !2785
  %call4 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !2785
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call4, 0, !dbg !2785
  store i32 %12, i32* %6, align 8, !dbg !2785
  %13 = extractvalue { i32, %struct.VEC_edge_gc** } %call4, 1, !dbg !2785
  store %struct.VEC_edge_gc** %13, %struct.VEC_edge_gc*** %7, align 8, !dbg !2785
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !2785
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !2785
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 3, !dbg !2786
  br label %for.cond5, !dbg !2785

for.cond5:                                        ; preds = %for.inc, %for.body
  %14 = load i32, i32* %8, align 8, !dbg !2789
  %15 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !2789
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2765, metadata !DIExpression(DW_OP_deref)), !dbg !2783
  %call6 = call fastcc zeroext i8 @ei_cond(i32 %14, %struct.VEC_edge_gc** %15, %struct.edge_def** nonnull %e) #8, !dbg !2789
  %tobool = icmp eq i8 %call6, 0, !dbg !2785
  br i1 %tobool, label %for.end, label %for.body7, !dbg !2785

for.body7:                                        ; preds = %for.cond5
  %16 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2790
  %call8 = call fastcc %struct.loop* @loop_outer(%struct.loop* %16) #8, !dbg !2791
  %tobool9 = icmp eq %struct.loop* %call8, null, !dbg !2791
  br i1 %tobool9, label %if.else, label %land.lhs.true, !dbg !2792

land.lhs.true:                                    ; preds = %for.body7
  %17 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2793
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2794
  call void @llvm.dbg.value(metadata %struct.edge_def* %18, metadata !2765, metadata !DIExpression()), !dbg !2783
  %call11 = call zeroext i8 @loop_exit_edge_p(%struct.loop* %17, %struct.edge_def* %18) #6, !dbg !2795
  %tobool12 = icmp eq i8 %call11, 0, !dbg !2795
  br i1 %tobool12, label %if.else, label %if.then13, !dbg !2796

if.then13:                                        ; preds = %land.lhs.true
  %19 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2797
  call void @llvm.dbg.value(metadata %struct.edge_def* %19, metadata !2765, metadata !DIExpression()), !dbg !2783
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %19, i64 0, i32 7, !dbg !2798
  %20 = load i32, i32* %flags, align 8, !dbg !2799
  %or = or i32 %20, 512, !dbg !2799
  store i32 %or, i32* %flags, align 8, !dbg !2799
  br label %for.inc, !dbg !2797

if.else:                                          ; preds = %land.lhs.true, %for.body7
  %21 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2800
  call void @llvm.dbg.value(metadata %struct.edge_def* %21, metadata !2765, metadata !DIExpression()), !dbg !2783
  %flags14 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i64 0, i32 7, !dbg !2801
  %22 = load i32, i32* %flags14, align 8, !dbg !2802
  %and = and i32 %22, -513, !dbg !2802
  store i32 %and, i32* %flags14, align 8, !dbg !2802
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %if.else
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2766, metadata !DIExpression(DW_OP_deref)), !dbg !2776
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2789
  br label %for.cond5, !dbg !2789, !llvm.loop !2803

for.end:                                          ; preds = %for.cond5
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !2805
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2781
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2806
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2781
  br label %for.cond, !dbg !2781, !llvm.loop !2807

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !2809

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2809
  ret void, !dbg !2809
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !2810 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2814, metadata !DIExpression()), !dbg !2816
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !2817
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2817
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !2817
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2817

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !2817
  br label %cond.end, !dbg !2817

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2817
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !2817
  call void @llvm.dbg.value(metadata i32 %call, metadata !2815, metadata !DIExpression()), !dbg !2816
  %cmp = icmp eq i32 %call, 0, !dbg !2818
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2820

if.end:                                           ; preds = %cond.end
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2821
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !2821
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !2821

cond.true4:                                       ; preds = %if.end
  %base6 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !2821
  br label %cond.end8, !dbg !2821

cond.end8:                                        ; preds = %if.end, %cond.true4
  %cond9 = phi %struct.VEC_loop_p_base* [ %base6, %cond.true4 ], [ null, %if.end ], !dbg !2821
  %sub = add i32 %call, -1, !dbg !2821
  %call10 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond9, i32 %sub) #8, !dbg !2821
  br label %cleanup, !dbg !2822

cleanup:                                          ; preds = %cond.end, %cond.end8
  %retval.0 = phi %struct.loop* [ %call10, %cond.end8 ], [ null, %cond.end ], !dbg !2816
  ret %struct.loop* %retval.0, !dbg !2823
}

declare dso_local zeroext i8 @loop_exit_edge_p(%struct.loop*, %struct.edge_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !2824 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2828, metadata !DIExpression()), !dbg !2829
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !2830
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2830

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !2830
  %0 = load i32, i32* %num, align 8, !dbg !2830
  br label %cond.end, !dbg !2830

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2830
  ret i32 %cond, !dbg !2830
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2831 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !2836
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2836
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2836

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !2836
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2836
  br label %cond.end, !dbg !2836

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2836
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2836
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !2837
  %conv3 = zext i1 %cmp to i8, !dbg !2838
  ret i8 %conv3, !dbg !2839
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2840 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !2845
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2845
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2845

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !2845
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2845
  br label %cond.end, !dbg !2845

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2845
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #8, !dbg !2845
  ret %struct.edge_def* %call2, !dbg !2846
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !2847 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2853, metadata !DIExpression()), !dbg !2854
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !2855
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2855

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !2855
  %0 = load i32, i32* %num, align 8, !dbg !2855
  br label %cond.end, !dbg !2855

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2855
  ret i32 %cond, !dbg !2855
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2856 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !2861
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2861

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2861
  br label %cond.end, !dbg !2861

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !2862
  ret %struct.VEC_edge_gc* %0, !dbg !2863
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2864 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2868, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2869, metadata !DIExpression()), !dbg !2870
  br label %land.end, !dbg !2871

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2871
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2871
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2871
  ret %struct.edge_def* %0, !dbg !2871
}

declare dso_local %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @rtx_cost(%struct.rtx_def*, i32, i8 zeroext) local_unnamed_addr #1

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
!llvm.module.flags = !{!1680, !1681, !1682}
!llvm.ident = !{!1683}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "target_avail_regs", scope: !2, file: !3, line: 322, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !533, globals: !1673, nameTableKind: None)
!3 = !DIFile(filename: "cfgloopanal.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !140, !145, !150, !169, !176, !183, !377, !386, !390}
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
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !378, line: 31, baseType: !7, size: 32, elements: !379)
!378 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!379 = !{!380, !381, !382, !383, !384, !385}
!380 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!381 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!382 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!383 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!384 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!385 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!386 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !378, line: 91, baseType: !7, size: 32, elements: !387)
!387 = !{!388, !389}
!388 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!389 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !391, line: 45, baseType: !7, size: 32, elements: !392)
!391 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!393 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!394 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!395 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!396 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!397 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!398 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!399 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!400 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!401 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!402 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!403 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!404 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!405 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!406 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!407 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!408 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!409 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!410 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!411 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!412 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!413 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!414 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!415 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!416 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!417 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!418 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!419 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!420 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!421 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!422 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!423 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!424 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!425 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!426 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!427 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!428 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!429 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!430 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!431 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!432 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!433 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!434 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!435 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!436 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!437 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!438 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!439 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!440 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!441 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!442 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!443 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!444 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!445 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!446 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!447 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!448 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!449 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!450 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!451 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!452 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!453 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!454 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!455 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!456 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!457 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!458 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!459 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!460 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!461 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!462 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!463 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!464 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!465 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!466 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!467 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!468 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!469 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!470 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!471 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!472 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!473 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!474 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!475 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!476 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!477 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!478 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!479 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!480 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!481 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!482 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!483 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!484 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!485 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!486 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!487 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!488 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!489 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!490 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!491 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!492 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!493 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!494 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!495 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!496 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!497 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!498 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!499 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!500 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!501 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!502 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!503 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!504 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!505 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!506 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!507 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!508 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!509 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!510 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!511 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!512 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!513 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!514 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!515 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!516 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!517 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!518 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!519 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!520 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!521 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!522 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!523 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!524 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!525 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!526 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!527 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!528 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!529 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!530 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!531 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!532 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!533 = !{!534, !535, !536, !537, !540, !541, !543, !390, !1671, !7, !774}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!536 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !544, line: 108, baseType: !545)
!544 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !135, line: 122, size: 512, elements: !547)
!547 = !{!548, !1658, !1659, !1664, !1665, !1666, !1667, !1668, !1669, !1670}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !546, file: !135, line: 124, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !135, line: 217, size: 832, elements: !551)
!551 = !{!552, !567, !568, !569, !1627, !1631, !1632, !1633, !1651, !1653, !1654, !1655, !1656, !1657}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !550, file: !135, line: 219, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !135, line: 151, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !135, line: 151, size: 128, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !555, file: !135, line: 151, baseType: !558, size: 128)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !135, line: 150, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !135, line: 150, size: 128, elements: !560)
!560 = !{!561, !562, !563}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !559, file: !135, line: 150, baseType: !7, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !559, file: !135, line: 150, baseType: !7, size: 32, offset: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !559, file: !135, line: 150, baseType: !564, size: 64, offset: 64)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 64, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 1)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !550, file: !135, line: 220, baseType: !553, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !550, file: !135, line: 223, baseType: !540, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !550, file: !135, line: 226, baseType: !570, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !378, line: 100, size: 1216, elements: !572)
!572 = !{!573, !574, !575, !576, !577, !582, !583, !584, !598, !599, !600, !601, !1604, !1605, !1606, !1607, !1608, !1609, !1617, !1625, !1626}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !571, file: !378, line: 102, baseType: !536, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !571, file: !378, line: 105, baseType: !7, size: 32, offset: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !571, file: !378, line: 108, baseType: !549, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !571, file: !378, line: 111, baseType: !549, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !571, file: !378, line: 114, baseType: !578, size: 64, offset: 192)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !378, line: 41, size: 64, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !578, file: !378, line: 42, baseType: !377, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !578, file: !378, line: 43, baseType: !7, size: 32, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !571, file: !378, line: 117, baseType: !7, size: 32, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !571, file: !378, line: 120, baseType: !7, size: 32, offset: 288)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !571, file: !378, line: 123, baseType: !585, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !378, line: 87, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !378, line: 87, size: 128, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !587, file: !378, line: 87, baseType: !590, size: 128)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !378, line: 85, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !378, line: 85, size: 128, elements: !592)
!592 = !{!593, !594, !595}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !591, file: !378, line: 85, baseType: !7, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !591, file: !378, line: 85, baseType: !7, size: 32, offset: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !591, file: !378, line: 85, baseType: !596, size: 64, offset: 64)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, size: 64, elements: !565)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !378, line: 84, baseType: !570)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !571, file: !378, line: 126, baseType: !570, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !571, file: !378, line: 129, baseType: !570, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !571, file: !378, line: 132, baseType: !540, size: 64, offset: 512)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !571, file: !378, line: 139, baseType: !602, size: 64, offset: 576)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !544, line: 56, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !151, line: 3371, size: 1792, elements: !605)
!605 = !{!606, !639, !645, !658, !677, !688, !693, !700, !706, !719, !731, !769, !976, !1004, !1012, !1013, !1018, !1027, !1033, !1038, !1042, !1046, !1229, !1276, !1282, !1289, !1296, !1322, !1347, !1364, !1376, !1398, !1414, !1586}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !604, file: !151, line: 3372, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !151, line: 360, size: 64, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !607, file: !151, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !607, file: !151, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !607, file: !151, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !607, file: !151, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !607, file: !151, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !607, file: !151, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !607, file: !151, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !607, file: !151, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !607, file: !151, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !607, file: !151, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !607, file: !151, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !607, file: !151, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !607, file: !151, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !607, file: !151, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !607, file: !151, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !607, file: !151, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !607, file: !151, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !607, file: !151, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !607, file: !151, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !607, file: !151, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !607, file: !151, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !607, file: !151, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !607, file: !151, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !607, file: !151, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !607, file: !151, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !607, file: !151, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !607, file: !151, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !607, file: !151, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !607, file: !151, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !607, file: !151, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !604, file: !151, line: 3373, baseType: !640, size: 192)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !151, line: 402, size: 192, elements: !641)
!641 = !{!642, !643, !644}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !640, file: !151, line: 403, baseType: !607, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !640, file: !151, line: 404, baseType: !602, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !640, file: !151, line: 405, baseType: !602, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !604, file: !151, line: 3374, baseType: !646, size: 320)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !151, line: 1384, size: 320, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !646, file: !151, line: 1385, baseType: !640, size: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !646, file: !151, line: 1386, baseType: !650, size: 128, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !651, line: 58, baseType: !652)
!651 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !651, line: 54, size: 128, elements: !653)
!653 = !{!654, !656}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !652, file: !651, line: 56, baseType: !655, size: 64)
!655 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !652, file: !651, line: 57, baseType: !657, size: 64, offset: 64)
!657 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !604, file: !151, line: 3375, baseType: !659, size: 256)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !151, line: 1397, size: 256, elements: !660)
!660 = !{!661, !662}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !659, file: !151, line: 1398, baseType: !640, size: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !659, file: !151, line: 1399, baseType: !663, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !665, line: 52, size: 256, elements: !666)
!665 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!666 = !{!667, !668, !669, !670, !671, !672, !673}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !664, file: !665, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !664, file: !665, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !664, file: !665, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !664, file: !665, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !664, file: !665, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !664, file: !665, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !664, file: !665, line: 62, baseType: !674, size: 192, offset: 64)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 192, elements: !675)
!675 = !{!676}
!676 = !DISubrange(count: 3)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !604, file: !151, line: 3376, baseType: !678, size: 256)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !151, line: 1408, size: 256, elements: !679)
!679 = !{!680, !681}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !678, file: !151, line: 1409, baseType: !640, size: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !678, file: !151, line: 1410, baseType: !682, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !684, line: 27, size: 192, elements: !685)
!684 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !683, file: !684, line: 29, baseType: !650, size: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !683, file: !684, line: 30, baseType: !5, size: 32, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !604, file: !151, line: 3377, baseType: !689, size: 256)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !151, line: 1437, size: 256, elements: !690)
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !689, file: !151, line: 1438, baseType: !640, size: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !689, file: !151, line: 1439, baseType: !602, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !604, file: !151, line: 3378, baseType: !694, size: 256)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !151, line: 1418, size: 256, elements: !695)
!695 = !{!696, !697, !698}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !694, file: !151, line: 1419, baseType: !640, size: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !694, file: !151, line: 1420, baseType: !536, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !694, file: !151, line: 1421, baseType: !699, size: 8, offset: 224)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 8, elements: !565)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !604, file: !151, line: 3379, baseType: !701, size: 320)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !151, line: 1428, size: 320, elements: !702)
!702 = !{!703, !704, !705}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !701, file: !151, line: 1429, baseType: !640, size: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !701, file: !151, line: 1430, baseType: !602, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !701, file: !151, line: 1431, baseType: !602, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !604, file: !151, line: 3380, baseType: !707, size: 320)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !151, line: 1460, size: 320, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !707, file: !151, line: 1461, baseType: !640, size: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !707, file: !151, line: 1462, baseType: !711, size: 128, offset: 192)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !712, line: 31, size: 128, elements: !713)
!712 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!713 = !{!714, !717, !718}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !711, file: !712, line: 32, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !711, file: !712, line: 33, baseType: !7, size: 32, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !711, file: !712, line: 34, baseType: !7, size: 32, offset: 96)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !604, file: !151, line: 3381, baseType: !720, size: 384)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !151, line: 2507, size: 384, elements: !721)
!721 = !{!722, !723, !728, !729, !730}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !720, file: !151, line: 2508, baseType: !640, size: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !720, file: !151, line: 2509, baseType: !724, size: 32, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !725, line: 58, baseType: !726)
!725 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !727, line: 44, baseType: !7)
!727 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!728 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !720, file: !151, line: 2510, baseType: !7, size: 32, offset: 224)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !720, file: !151, line: 2511, baseType: !602, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !720, file: !151, line: 2512, baseType: !602, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !604, file: !151, line: 3382, baseType: !732, size: 896)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !151, line: 2652, size: 896, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !732, file: !151, line: 2653, baseType: !720, size: 384)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !732, file: !151, line: 2654, baseType: !602, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !732, file: !151, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !732, file: !151, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !732, file: !151, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !732, file: !151, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !732, file: !151, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !732, file: !151, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !732, file: !151, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !732, file: !151, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !732, file: !151, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !732, file: !151, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !732, file: !151, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !732, file: !151, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !732, file: !151, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !732, file: !151, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !732, file: !151, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !732, file: !151, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !732, file: !151, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !732, file: !151, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !732, file: !151, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !732, file: !151, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !732, file: !151, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !732, file: !151, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !732, file: !151, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !732, file: !151, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !732, file: !151, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !732, file: !151, line: 2703, baseType: !7, size: 32, offset: 512)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !732, file: !151, line: 2705, baseType: !602, size: 64, offset: 576)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !732, file: !151, line: 2706, baseType: !602, size: 64, offset: 640)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !732, file: !151, line: 2707, baseType: !602, size: 64, offset: 704)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !732, file: !151, line: 2708, baseType: !602, size: 64, offset: 768)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !732, file: !151, line: 2711, baseType: !767, size: 64, offset: 832)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !151, line: 2711, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !604, file: !151, line: 3383, baseType: !770, size: 960)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !151, line: 2756, size: 960, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !770, file: !151, line: 2757, baseType: !732, size: 896)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !770, file: !151, line: 2758, baseType: !774, size: 64, offset: 896)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !544, line: 50, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !391, line: 240, size: 384, elements: !777)
!777 = !{!778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !776, file: !391, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !776, file: !391, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !776, file: !391, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !776, file: !391, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !776, file: !391, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !776, file: !391, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !776, file: !391, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !776, file: !391, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !776, file: !391, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !776, file: !391, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !776, file: !391, line: 321, baseType: !789, size: 320, offset: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !391, line: 315, size: 320, elements: !790)
!790 = !{!791, !909, !911, !974, !975}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !789, file: !391, line: 316, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 64, elements: !565)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !391, line: 183, baseType: !794)
!794 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !391, line: 166, size: 64, elements: !795)
!795 = !{!796, !797, !798, !799, !800, !808, !809, !821, !824, !884, !885, !886, !899, !906}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !794, file: !391, line: 168, baseType: !536, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !794, file: !391, line: 169, baseType: !7, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !794, file: !391, line: 170, baseType: !541, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !794, file: !391, line: 171, baseType: !774, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !794, file: !391, line: 172, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !544, line: 53, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !391, line: 359, size: 128, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !803, file: !391, line: 360, baseType: !536, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !803, file: !391, line: 361, baseType: !807, size: 64, offset: 64)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 64, elements: !565)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !794, file: !391, line: 173, baseType: !5, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !794, file: !391, line: 174, baseType: !810, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !391, line: 133, baseType: !811)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 115, size: 32, elements: !812)
!812 = !{!813, !814, !815, !816, !817, !818, !819, !820}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !811, file: !391, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !811, file: !391, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !811, file: !391, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !811, file: !391, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !811, file: !391, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !811, file: !391, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !811, file: !391, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !811, file: !391, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !794, file: !391, line: 175, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !391, line: 175, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !794, file: !391, line: 176, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !827, line: 75, size: 256, elements: !828)
!827 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!828 = !{!829, !843, !844, !845}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !826, file: !827, line: 76, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !827, line: 68, baseType: !832)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !827, line: 63, size: 320, elements: !833)
!833 = !{!834, !836, !837, !838}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !832, file: !827, line: 64, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !832, file: !827, line: 65, baseType: !835, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !832, file: !827, line: 66, baseType: !7, size: 32, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !832, file: !827, line: 67, baseType: !839, size: 128, offset: 192)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 128, elements: !841)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !827, line: 29, baseType: !655)
!841 = !{!842}
!842 = !DISubrange(count: 2)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !826, file: !827, line: 77, baseType: !830, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !826, file: !827, line: 78, baseType: !7, size: 32, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !826, file: !827, line: 79, baseType: !846, size: 64, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !827, line: 49, baseType: !848)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !827, line: 45, size: 832, elements: !849)
!849 = !{!850, !851, !852}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !848, file: !827, line: 46, baseType: !835, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !848, file: !827, line: 47, baseType: !825, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !848, file: !827, line: 48, baseType: !853, size: 704, offset: 128)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !854, line: 164, size: 704, elements: !855)
!854 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!855 = !{!856, !857, !867, !868, !869, !870, !871, !872, !876, !880, !881, !882, !883}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !853, file: !854, line: 166, baseType: !657, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !853, file: !854, line: 167, baseType: !858, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !854, line: 157, size: 192, elements: !860)
!860 = !{!861, !862, !863}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !859, file: !854, line: 159, baseType: !538, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !859, file: !854, line: 160, baseType: !858, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !859, file: !854, line: 161, baseType: !864, size: 32, offset: 128)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 32, elements: !865)
!865 = !{!866}
!866 = !DISubrange(count: 4)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !853, file: !854, line: 168, baseType: !538, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !853, file: !854, line: 169, baseType: !538, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !853, file: !854, line: 170, baseType: !538, size: 64, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !853, file: !854, line: 171, baseType: !657, size: 64, offset: 320)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !853, file: !854, line: 172, baseType: !536, size: 32, offset: 384)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !853, file: !854, line: 176, baseType: !873, size: 64, offset: 448)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!858, !540, !657}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !853, file: !854, line: 177, baseType: !877, size: 64, offset: 512)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !540, !858}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !853, file: !854, line: 178, baseType: !540, size: 64, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !853, file: !854, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !853, file: !854, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !853, file: !854, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !794, file: !391, line: 177, baseType: !602, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !794, file: !391, line: 178, baseType: !549, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !794, file: !391, line: 179, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !391, line: 150, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !391, line: 142, size: 320, elements: !890)
!890 = !{!891, !892, !893, !894, !897, !898}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !889, file: !391, line: 144, baseType: !602, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !889, file: !391, line: 145, baseType: !774, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !889, file: !391, line: 146, baseType: !774, size: 64, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !889, file: !391, line: 147, baseType: !895, size: 32, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !896, line: 31, baseType: !536)
!896 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!897 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !889, file: !391, line: 148, baseType: !7, size: 32, offset: 224)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !889, file: !391, line: 149, baseType: !535, size: 8, offset: 256)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !794, file: !391, line: 180, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !391, line: 162, baseType: !902)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !391, line: 159, size: 128, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !902, file: !391, line: 160, baseType: !602, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !902, file: !391, line: 161, baseType: !657, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !794, file: !391, line: 181, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !391, line: 181, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !789, file: !391, line: 317, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 64, elements: !565)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !789, file: !391, line: 318, baseType: !912, size: 320)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !391, line: 188, size: 320, elements: !913)
!913 = !{!914, !916, !973}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !912, file: !391, line: 190, baseType: !915, size: 192)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 192, elements: !675)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !912, file: !391, line: 193, baseType: !917, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !391, line: 206, size: 320, elements: !919)
!919 = !{!920, !958, !959, !960, !972}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !918, file: !391, line: 208, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !544, line: 62, baseType: !923)
!923 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !924, line: 538, size: 256, elements: !925)
!924 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!925 = !{!926, !930, !936, !949}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !923, file: !924, line: 539, baseType: !927, size: 32)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !924, line: 482, size: 32, elements: !928)
!928 = !{!929}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !927, file: !924, line: 484, baseType: !7, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !923, file: !924, line: 540, baseType: !931, size: 192)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !924, line: 488, size: 192, elements: !932)
!932 = !{!933, !934, !935}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !931, file: !924, line: 489, baseType: !927, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !931, file: !924, line: 492, baseType: !541, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !931, file: !924, line: 496, baseType: !602, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !923, file: !924, line: 541, baseType: !937, size: 256)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !924, line: 504, size: 256, elements: !938)
!938 = !{!939, !940, !947, !948}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !937, file: !924, line: 505, baseType: !927, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !937, file: !924, line: 509, baseType: !941, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !924, line: 501, baseType: !942)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !945}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !937, file: !924, line: 510, baseType: !945, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !937, file: !924, line: 513, baseType: !921, size: 64, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !923, file: !924, line: 542, baseType: !950, size: 128)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !924, line: 530, size: 128, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !950, file: !924, line: 531, baseType: !927, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !950, file: !924, line: 534, baseType: !954, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !924, line: 525, baseType: !955)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!535, !602, !541, !655, !655}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !918, file: !391, line: 211, baseType: !7, size: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !918, file: !391, line: 214, baseType: !657, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !918, file: !391, line: 224, baseType: !961, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !391, line: 202, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !391, line: 202, size: 128, elements: !964)
!964 = !{!965}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !963, file: !391, line: 202, baseType: !966, size: 128)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !391, line: 200, baseType: !967)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !391, line: 200, size: 128, elements: !968)
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !967, file: !391, line: 200, baseType: !7, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !967, file: !391, line: 200, baseType: !7, size: 32, offset: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !967, file: !391, line: 200, baseType: !807, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !918, file: !391, line: 234, baseType: !961, size: 64, offset: 256)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !912, file: !391, line: 197, baseType: !657, size: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !789, file: !391, line: 319, baseType: !664, size: 256)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !789, file: !391, line: 320, baseType: !683, size: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !604, file: !151, line: 3384, baseType: !977, size: 1472)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !151, line: 3114, size: 1472, elements: !978)
!978 = !{!979, !1000, !1001, !1002, !1003}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !977, file: !151, line: 3115, baseType: !980, size: 1216)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !151, line: 2984, size: 1216, elements: !981)
!981 = !{!982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !980, file: !151, line: 2985, baseType: !770, size: 960)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !980, file: !151, line: 2986, baseType: !602, size: 64, offset: 960)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !980, file: !151, line: 2987, baseType: !602, size: 64, offset: 1024)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !980, file: !151, line: 2988, baseType: !602, size: 64, offset: 1088)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !980, file: !151, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !980, file: !151, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !980, file: !151, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !980, file: !151, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !980, file: !151, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !980, file: !151, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !980, file: !151, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !980, file: !151, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !980, file: !151, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !980, file: !151, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !980, file: !151, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !980, file: !151, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !980, file: !151, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !980, file: !151, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !977, file: !151, line: 3117, baseType: !602, size: 64, offset: 1216)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !977, file: !151, line: 3119, baseType: !602, size: 64, offset: 1280)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !977, file: !151, line: 3121, baseType: !602, size: 64, offset: 1344)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !977, file: !151, line: 3123, baseType: !602, size: 64, offset: 1408)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !604, file: !151, line: 3385, baseType: !1005, size: 1088)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !151, line: 2874, size: 1088, elements: !1006)
!1006 = !{!1007, !1008, !1009}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1005, file: !151, line: 2875, baseType: !770, size: 960)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1005, file: !151, line: 2876, baseType: !774, size: 64, offset: 960)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1005, file: !151, line: 2877, baseType: !1010, size: 64, offset: 1024)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !151, line: 2856, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !604, file: !151, line: 3386, baseType: !980, size: 1216)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !604, file: !151, line: 3387, baseType: !1014, size: 1280)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !151, line: 3093, size: 1280, elements: !1015)
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1014, file: !151, line: 3094, baseType: !980, size: 1216)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1014, file: !151, line: 3095, baseType: !1010, size: 64, offset: 1216)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !604, file: !151, line: 3388, baseType: !1019, size: 1216)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !151, line: 2824, size: 1216, elements: !1020)
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1026}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1019, file: !151, line: 2825, baseType: !732, size: 896)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1019, file: !151, line: 2827, baseType: !602, size: 64, offset: 896)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1019, file: !151, line: 2828, baseType: !602, size: 64, offset: 960)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1019, file: !151, line: 2829, baseType: !602, size: 64, offset: 1024)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1019, file: !151, line: 2830, baseType: !602, size: 64, offset: 1088)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1019, file: !151, line: 2831, baseType: !602, size: 64, offset: 1152)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !604, file: !151, line: 3389, baseType: !1028, size: 1024)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !151, line: 2850, size: 1024, elements: !1029)
!1029 = !{!1030, !1031, !1032}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1028, file: !151, line: 2851, baseType: !770, size: 960)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1028, file: !151, line: 2852, baseType: !536, size: 32, offset: 960)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1028, file: !151, line: 2853, baseType: !536, size: 32, offset: 992)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !604, file: !151, line: 3390, baseType: !1034, size: 1024)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !151, line: 2857, size: 1024, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1034, file: !151, line: 2858, baseType: !770, size: 960)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1034, file: !151, line: 2859, baseType: !1010, size: 64, offset: 960)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !604, file: !151, line: 3391, baseType: !1039, size: 960)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !151, line: 2862, size: 960, elements: !1040)
!1040 = !{!1041}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1039, file: !151, line: 2863, baseType: !770, size: 960)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !604, file: !151, line: 3392, baseType: !1043, size: 1472)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !151, line: 3304, size: 1472, elements: !1044)
!1044 = !{!1045}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1043, file: !151, line: 3305, baseType: !977, size: 1472)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !604, file: !151, line: 3393, baseType: !1047, size: 1792)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !151, line: 3248, size: 1792, elements: !1048)
!1048 = !{!1049, !1050, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1047, file: !151, line: 3249, baseType: !977, size: 1472)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1047, file: !151, line: 3251, baseType: !1051, size: 64, offset: 1472)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1053, line: 463, size: 1152, elements: !1054)
!1053 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1054 = !{!1055, !1058, !1089, !1092, !1095, !1152, !1153, !1154, !1155, !1156, !1157, !1181, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1052, file: !1053, line: 464, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1053, line: 464, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1052, file: !1053, line: 467, baseType: !1059, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !135, line: 374, size: 640, elements: !1061)
!1061 = !{!1062, !1064, !1065, !1078, !1079, !1080, !1081, !1082, !1083, !1085, !1087, !1088}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1060, file: !135, line: 377, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !544, line: 111, baseType: !549)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1060, file: !135, line: 378, baseType: !1063, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1060, file: !135, line: 381, baseType: !1066, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !135, line: 282, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !135, line: 282, size: 128, elements: !1069)
!1069 = !{!1070}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1068, file: !135, line: 282, baseType: !1071, size: 128)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !135, line: 281, baseType: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !135, line: 281, size: 128, elements: !1073)
!1073 = !{!1074, !1075, !1076}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1072, file: !135, line: 281, baseType: !7, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1072, file: !135, line: 281, baseType: !7, size: 32, offset: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1072, file: !135, line: 281, baseType: !1077, size: 64, offset: 64)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1063, size: 64, elements: !565)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1060, file: !135, line: 384, baseType: !536, size: 32, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1060, file: !135, line: 387, baseType: !536, size: 32, offset: 224)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1060, file: !135, line: 390, baseType: !536, size: 32, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1060, file: !135, line: 394, baseType: !1066, size: 64, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1060, file: !135, line: 396, baseType: !134, size: 32, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1060, file: !135, line: 399, baseType: !1084, size: 64, offset: 416)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !841)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1060, file: !135, line: 402, baseType: !1086, size: 64, offset: 480)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !841)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1060, file: !135, line: 406, baseType: !536, size: 32, offset: 544)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1060, file: !135, line: 409, baseType: !536, size: 32, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1052, file: !1053, line: 470, baseType: !1090, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !544, line: 65, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1052, file: !1053, line: 473, baseType: !1093, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1053, line: 166, flags: DIFlagFwdDecl)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1052, file: !1053, line: 476, baseType: !1096, size: 64, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !378, line: 187, size: 256, elements: !1098)
!1098 = !{!1099, !1100, !1101, !1151}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1097, file: !378, line: 189, baseType: !536, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1097, file: !378, line: 192, baseType: !585, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1097, file: !378, line: 197, baseType: !1102, size: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1103, line: 144, baseType: !1104)
!1103 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1103, line: 100, size: 896, elements: !1106)
!1106 = !{!1107, !1113, !1118, !1123, !1125, !1128, !1129, !1130, !1131, !1132, !1137, !1139, !1140, !1145, !1150}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1105, file: !1103, line: 102, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1103, line: 52, baseType: !1109)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!1112, !945}
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1103, line: 47, baseType: !7)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1105, file: !1103, line: 105, baseType: !1114, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1103, line: 59, baseType: !1115)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!536, !945, !945}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1105, file: !1103, line: 108, baseType: !1119, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1103, line: 63, baseType: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !540}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1105, file: !1103, line: 111, baseType: !1124, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1105, file: !1103, line: 114, baseType: !1126, size: 64, offset: 256)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1127, line: 46, baseType: !655)
!1127 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1105, file: !1103, line: 117, baseType: !1126, size: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1105, file: !1103, line: 120, baseType: !1126, size: 64, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1105, file: !1103, line: 124, baseType: !7, size: 32, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1105, file: !1103, line: 128, baseType: !7, size: 32, offset: 480)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1105, file: !1103, line: 131, baseType: !1133, size: 64, offset: 512)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1103, line: 75, baseType: !1134)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!540, !1126, !1126}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1105, file: !1103, line: 132, baseType: !1138, size: 64, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1103, line: 78, baseType: !1120)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1105, file: !1103, line: 135, baseType: !540, size: 64, offset: 640)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1105, file: !1103, line: 136, baseType: !1141, size: 64, offset: 704)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1103, line: 82, baseType: !1142)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!540, !540, !1126, !1126}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1105, file: !1103, line: 137, baseType: !1146, size: 64, offset: 768)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1103, line: 83, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !540, !540}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1105, file: !1103, line: 141, baseType: !7, size: 32, offset: 832)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1097, file: !378, line: 200, baseType: !570, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1052, file: !1053, line: 479, baseType: !1102, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1052, file: !1053, line: 484, baseType: !602, size: 64, offset: 384)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1052, file: !1053, line: 488, baseType: !602, size: 64, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1052, file: !1053, line: 493, baseType: !602, size: 64, offset: 512)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1052, file: !1053, line: 496, baseType: !602, size: 64, offset: 576)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1052, file: !1053, line: 501, baseType: !1158, size: 64, offset: 640)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !146, line: 2355, size: 576, elements: !1160)
!1160 = !{!1161, !1164, !1165, !1166, !1167, !1169, !1170, !1175, !1176, !1177, !1178, !1179, !1180}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1159, file: !146, line: 2356, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !146, line: 2356, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1159, file: !146, line: 2357, baseType: !541, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1159, file: !146, line: 2358, baseType: !536, size: 32, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1159, file: !146, line: 2359, baseType: !536, size: 32, offset: 160)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1159, file: !146, line: 2360, baseType: !1168, size: 128, offset: 192)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 128, elements: !865)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1159, file: !146, line: 2364, baseType: !536, size: 32, offset: 320)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1159, file: !146, line: 2367, baseType: !1171, size: 128, offset: 384)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !146, line: 2349, size: 128, elements: !1172)
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1171, file: !146, line: 2351, baseType: !774, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1171, file: !146, line: 2352, baseType: !657, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1159, file: !146, line: 2371, baseType: !145, size: 32, offset: 512)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1159, file: !146, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1159, file: !146, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1159, file: !146, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1159, file: !146, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1159, file: !146, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1052, file: !1053, line: 504, baseType: !1182, size: 64, offset: 704)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1053, line: 504, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1052, file: !1053, line: 507, baseType: !1102, size: 64, offset: 768)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1052, file: !1053, line: 510, baseType: !536, size: 32, offset: 832)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1052, file: !1053, line: 513, baseType: !536, size: 32, offset: 864)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1052, file: !1053, line: 516, baseType: !724, size: 32, offset: 896)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1052, file: !1053, line: 519, baseType: !724, size: 32, offset: 928)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1052, file: !1053, line: 522, baseType: !7, size: 32, offset: 960)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1052, file: !1053, line: 523, baseType: !7, size: 32, offset: 992)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1052, file: !1053, line: 528, baseType: !541, size: 64, offset: 1024)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1052, file: !1053, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1052, file: !1053, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1052, file: !1053, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1052, file: !1053, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1052, file: !1053, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1052, file: !1053, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1052, file: !1053, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1052, file: !1053, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1052, file: !1053, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1052, file: !1053, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1052, file: !1053, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1052, file: !1053, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1052, file: !1053, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1052, file: !1053, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1052, file: !1053, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1052, file: !1053, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1047, file: !151, line: 3254, baseType: !602, size: 64, offset: 1536)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1047, file: !151, line: 3257, baseType: !602, size: 64, offset: 1600)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1047, file: !151, line: 3258, baseType: !602, size: 64, offset: 1664)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1047, file: !151, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1047, file: !151, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1047, file: !151, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1047, file: !151, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1047, file: !151, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1047, file: !151, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1047, file: !151, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1047, file: !151, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1047, file: !151, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1047, file: !151, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1047, file: !151, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1047, file: !151, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1047, file: !151, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1047, file: !151, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1047, file: !151, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1047, file: !151, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1047, file: !151, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1047, file: !151, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !604, file: !151, line: 3394, baseType: !1230, size: 1344)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !151, line: 2279, size: 1344, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1230, file: !151, line: 2280, baseType: !640, size: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1230, file: !151, line: 2281, baseType: !602, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1230, file: !151, line: 2282, baseType: !602, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1230, file: !151, line: 2283, baseType: !602, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1230, file: !151, line: 2284, baseType: !602, size: 64, offset: 384)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1230, file: !151, line: 2285, baseType: !7, size: 32, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1230, file: !151, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1230, file: !151, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1230, file: !151, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1230, file: !151, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1230, file: !151, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1230, file: !151, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1230, file: !151, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1230, file: !151, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1230, file: !151, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1230, file: !151, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1230, file: !151, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1230, file: !151, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1230, file: !151, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1230, file: !151, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1230, file: !151, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1230, file: !151, line: 2305, baseType: !7, size: 32, offset: 512)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1230, file: !151, line: 2306, baseType: !895, size: 32, offset: 544)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1230, file: !151, line: 2307, baseType: !602, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1230, file: !151, line: 2308, baseType: !602, size: 64, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1230, file: !151, line: 2314, baseType: !1258, size: 64, offset: 704)
!1258 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !151, line: 2309, size: 64, elements: !1259)
!1259 = !{!1260, !1261, !1262}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1258, file: !151, line: 2310, baseType: !536, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1258, file: !151, line: 2311, baseType: !541, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1258, file: !151, line: 2312, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !151, line: 2277, flags: DIFlagFwdDecl)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1230, file: !151, line: 2315, baseType: !602, size: 64, offset: 768)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1230, file: !151, line: 2316, baseType: !602, size: 64, offset: 832)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1230, file: !151, line: 2317, baseType: !602, size: 64, offset: 896)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1230, file: !151, line: 2318, baseType: !602, size: 64, offset: 960)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1230, file: !151, line: 2319, baseType: !602, size: 64, offset: 1024)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1230, file: !151, line: 2320, baseType: !602, size: 64, offset: 1088)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1230, file: !151, line: 2321, baseType: !602, size: 64, offset: 1152)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1230, file: !151, line: 2322, baseType: !602, size: 64, offset: 1216)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1230, file: !151, line: 2324, baseType: !1274, size: 64, offset: 1280)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !151, line: 2324, flags: DIFlagFwdDecl)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !604, file: !151, line: 3395, baseType: !1277, size: 320)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !151, line: 1469, size: 320, elements: !1278)
!1278 = !{!1279, !1280, !1281}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1277, file: !151, line: 1470, baseType: !640, size: 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1277, file: !151, line: 1471, baseType: !602, size: 64, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1277, file: !151, line: 1472, baseType: !602, size: 64, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !604, file: !151, line: 3396, baseType: !1283, size: 320)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !151, line: 1482, size: 320, elements: !1284)
!1284 = !{!1285, !1286, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1283, file: !151, line: 1483, baseType: !640, size: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1283, file: !151, line: 1484, baseType: !536, size: 32, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1283, file: !151, line: 1485, baseType: !1288, size: 64, offset: 256)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 64, elements: !565)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !604, file: !151, line: 3397, baseType: !1290, size: 384)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !151, line: 1829, size: 384, elements: !1291)
!1291 = !{!1292, !1293, !1294, !1295}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1290, file: !151, line: 1830, baseType: !640, size: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1290, file: !151, line: 1831, baseType: !724, size: 32, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1290, file: !151, line: 1832, baseType: !602, size: 64, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1290, file: !151, line: 1835, baseType: !1288, size: 64, offset: 320)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !604, file: !151, line: 3398, baseType: !1297, size: 704)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !151, line: 1898, size: 704, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1305, !1306, !1309}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1297, file: !151, line: 1899, baseType: !640, size: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1297, file: !151, line: 1902, baseType: !602, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1297, file: !151, line: 1905, baseType: !1302, size: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !544, line: 58, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !544, line: 57, flags: DIFlagFwdDecl)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1297, file: !151, line: 1908, baseType: !7, size: 32, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1297, file: !151, line: 1911, baseType: !1307, size: 64, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !151, line: 1876, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1297, file: !151, line: 1914, baseType: !1310, size: 256, offset: 448)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !151, line: 1883, size: 256, elements: !1311)
!1311 = !{!1312, !1314, !1315, !1320}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1310, file: !151, line: 1884, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1310, file: !151, line: 1885, baseType: !1313, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1310, file: !151, line: 1891, baseType: !1316, size: 64, offset: 128)
!1316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1310, file: !151, line: 1891, size: 64, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1316, file: !151, line: 1891, baseType: !1302, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1316, file: !151, line: 1891, baseType: !602, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1310, file: !151, line: 1892, baseType: !1321, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !604, file: !151, line: 3399, baseType: !1323, size: 704)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !151, line: 2008, size: 704, elements: !1324)
!1324 = !{!1325, !1326, !1327, !1328, !1329, !1330, !1342, !1343, !1344, !1345, !1346}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1323, file: !151, line: 2009, baseType: !640, size: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1323, file: !151, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1323, file: !151, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1323, file: !151, line: 2014, baseType: !724, size: 32, offset: 224)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1323, file: !151, line: 2016, baseType: !602, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1323, file: !151, line: 2017, baseType: !1331, size: 64, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !151, line: 183, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !151, line: 183, size: 128, elements: !1334)
!1334 = !{!1335}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1333, file: !151, line: 183, baseType: !1336, size: 128)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !151, line: 182, baseType: !1337)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !151, line: 182, size: 128, elements: !1338)
!1338 = !{!1339, !1340, !1341}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1337, file: !151, line: 182, baseType: !7, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1337, file: !151, line: 182, baseType: !7, size: 32, offset: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1337, file: !151, line: 182, baseType: !1288, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1323, file: !151, line: 2019, baseType: !602, size: 64, offset: 384)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1323, file: !151, line: 2020, baseType: !602, size: 64, offset: 448)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1323, file: !151, line: 2021, baseType: !602, size: 64, offset: 512)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1323, file: !151, line: 2022, baseType: !602, size: 64, offset: 576)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1323, file: !151, line: 2023, baseType: !602, size: 64, offset: 640)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !604, file: !151, line: 3400, baseType: !1348, size: 832)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !151, line: 2430, size: 832, elements: !1349)
!1349 = !{!1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1348, file: !151, line: 2431, baseType: !640, size: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1348, file: !151, line: 2433, baseType: !602, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1348, file: !151, line: 2434, baseType: !602, size: 64, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1348, file: !151, line: 2435, baseType: !602, size: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1348, file: !151, line: 2436, baseType: !602, size: 64, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1348, file: !151, line: 2437, baseType: !1331, size: 64, offset: 448)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1348, file: !151, line: 2438, baseType: !602, size: 64, offset: 512)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1348, file: !151, line: 2440, baseType: !602, size: 64, offset: 576)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1348, file: !151, line: 2441, baseType: !602, size: 64, offset: 640)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1348, file: !151, line: 2443, baseType: !1360, size: 128, offset: 704)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !151, line: 182, baseType: !1361)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !151, line: 182, size: 128, elements: !1362)
!1362 = !{!1363}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1361, file: !151, line: 182, baseType: !1336, size: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !604, file: !151, line: 3401, baseType: !1365, size: 320)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !151, line: 3327, size: 320, elements: !1366)
!1366 = !{!1367, !1368, !1375}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1365, file: !151, line: 3329, baseType: !640, size: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1365, file: !151, line: 3330, baseType: !1369, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !151, line: 3320, size: 192, elements: !1371)
!1371 = !{!1372, !1373, !1374}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1370, file: !151, line: 3322, baseType: !1369, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1370, file: !151, line: 3323, baseType: !1369, size: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1370, file: !151, line: 3324, baseType: !602, size: 64, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1365, file: !151, line: 3331, baseType: !1369, size: 64, offset: 256)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !604, file: !151, line: 3402, baseType: !1377, size: 256)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !151, line: 1540, size: 256, elements: !1378)
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1377, file: !151, line: 1541, baseType: !640, size: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1377, file: !151, line: 1542, baseType: !1381, size: 64, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !151, line: 1538, baseType: !1383)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !151, line: 1538, size: 192, elements: !1384)
!1384 = !{!1385}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1383, file: !151, line: 1538, baseType: !1386, size: 192)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !151, line: 1537, baseType: !1387)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !151, line: 1537, size: 192, elements: !1388)
!1388 = !{!1389, !1390, !1391}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1387, file: !151, line: 1537, baseType: !7, size: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1387, file: !151, line: 1537, baseType: !7, size: 32, offset: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1387, file: !151, line: 1537, baseType: !1392, size: 128, offset: 64)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1393, size: 128, elements: !565)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !151, line: 1535, baseType: !1394)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !151, line: 1532, size: 128, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1394, file: !151, line: 1533, baseType: !602, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1394, file: !151, line: 1534, baseType: !602, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !604, file: !151, line: 3403, baseType: !1399, size: 512)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !151, line: 1938, size: 512, elements: !1400)
!1400 = !{!1401, !1402, !1403, !1404, !1410, !1412, !1413}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1399, file: !151, line: 1939, baseType: !640, size: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1399, file: !151, line: 1940, baseType: !724, size: 32, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1399, file: !151, line: 1941, baseType: !150, size: 32, offset: 224)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1399, file: !151, line: 1946, baseType: !1405, size: 32, offset: 256)
!1405 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !151, line: 1942, size: 32, elements: !1406)
!1406 = !{!1407, !1408, !1409}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1405, file: !151, line: 1943, baseType: !169, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1405, file: !151, line: 1944, baseType: !176, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1405, file: !151, line: 1945, baseType: !183, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1399, file: !151, line: 1950, baseType: !1411, size: 64, offset: 320)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !544, line: 66, baseType: !1090)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1399, file: !151, line: 1951, baseType: !1411, size: 64, offset: 384)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1399, file: !151, line: 1953, baseType: !1288, size: 64, offset: 448)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !604, file: !151, line: 3404, baseType: !1415, size: 1664)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !151, line: 3337, size: 1664, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1415, file: !151, line: 3338, baseType: !640, size: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1415, file: !151, line: 3341, baseType: !1419, size: 1472, offset: 192)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1420, line: 410, size: 1472, elements: !1421)
!1420 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1419, file: !1420, line: 412, baseType: !536, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1419, file: !1420, line: 413, baseType: !536, size: 32, offset: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1419, file: !1420, line: 414, baseType: !536, size: 32, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1419, file: !1420, line: 415, baseType: !536, size: 32, offset: 96)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1419, file: !1420, line: 416, baseType: !536, size: 32, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1419, file: !1420, line: 417, baseType: !536, size: 32, offset: 160)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1419, file: !1420, line: 418, baseType: !535, size: 8, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1419, file: !1420, line: 419, baseType: !535, size: 8, offset: 200)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1419, file: !1420, line: 420, baseType: !1431, size: 8, offset: 208)
!1431 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1419, file: !1420, line: 421, baseType: !1431, size: 8, offset: 216)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1419, file: !1420, line: 422, baseType: !1431, size: 8, offset: 224)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1419, file: !1420, line: 423, baseType: !1431, size: 8, offset: 232)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1419, file: !1420, line: 424, baseType: !1431, size: 8, offset: 240)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1419, file: !1420, line: 425, baseType: !1431, size: 8, offset: 248)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1419, file: !1420, line: 426, baseType: !1431, size: 8, offset: 256)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1419, file: !1420, line: 427, baseType: !1431, size: 8, offset: 264)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1419, file: !1420, line: 428, baseType: !1431, size: 8, offset: 272)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1419, file: !1420, line: 429, baseType: !1431, size: 8, offset: 280)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1419, file: !1420, line: 430, baseType: !1431, size: 8, offset: 288)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1419, file: !1420, line: 431, baseType: !1431, size: 8, offset: 296)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1419, file: !1420, line: 432, baseType: !1431, size: 8, offset: 304)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1419, file: !1420, line: 433, baseType: !1431, size: 8, offset: 312)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1419, file: !1420, line: 434, baseType: !1431, size: 8, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1419, file: !1420, line: 435, baseType: !1431, size: 8, offset: 328)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1419, file: !1420, line: 436, baseType: !1431, size: 8, offset: 336)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1419, file: !1420, line: 437, baseType: !1431, size: 8, offset: 344)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1419, file: !1420, line: 438, baseType: !1431, size: 8, offset: 352)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1419, file: !1420, line: 439, baseType: !1431, size: 8, offset: 360)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1419, file: !1420, line: 440, baseType: !1431, size: 8, offset: 368)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1419, file: !1420, line: 441, baseType: !1431, size: 8, offset: 376)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1419, file: !1420, line: 442, baseType: !1431, size: 8, offset: 384)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1419, file: !1420, line: 443, baseType: !1431, size: 8, offset: 392)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1419, file: !1420, line: 444, baseType: !1431, size: 8, offset: 400)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1419, file: !1420, line: 445, baseType: !1431, size: 8, offset: 408)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1419, file: !1420, line: 446, baseType: !1431, size: 8, offset: 416)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1419, file: !1420, line: 447, baseType: !1431, size: 8, offset: 424)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1419, file: !1420, line: 448, baseType: !1431, size: 8, offset: 432)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1419, file: !1420, line: 449, baseType: !1431, size: 8, offset: 440)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1419, file: !1420, line: 450, baseType: !1431, size: 8, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1419, file: !1420, line: 451, baseType: !1431, size: 8, offset: 456)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1419, file: !1420, line: 452, baseType: !1431, size: 8, offset: 464)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1419, file: !1420, line: 453, baseType: !1431, size: 8, offset: 472)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1419, file: !1420, line: 454, baseType: !1431, size: 8, offset: 480)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1419, file: !1420, line: 455, baseType: !1431, size: 8, offset: 488)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1419, file: !1420, line: 456, baseType: !1431, size: 8, offset: 496)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1419, file: !1420, line: 457, baseType: !1431, size: 8, offset: 504)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1419, file: !1420, line: 458, baseType: !1431, size: 8, offset: 512)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1419, file: !1420, line: 459, baseType: !1431, size: 8, offset: 520)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1419, file: !1420, line: 460, baseType: !1431, size: 8, offset: 528)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1419, file: !1420, line: 461, baseType: !1431, size: 8, offset: 536)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1419, file: !1420, line: 462, baseType: !1431, size: 8, offset: 544)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1419, file: !1420, line: 463, baseType: !1431, size: 8, offset: 552)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1419, file: !1420, line: 464, baseType: !1431, size: 8, offset: 560)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1419, file: !1420, line: 465, baseType: !1431, size: 8, offset: 568)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1419, file: !1420, line: 466, baseType: !1431, size: 8, offset: 576)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1419, file: !1420, line: 467, baseType: !1431, size: 8, offset: 584)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1419, file: !1420, line: 468, baseType: !1431, size: 8, offset: 592)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1419, file: !1420, line: 469, baseType: !1431, size: 8, offset: 600)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1419, file: !1420, line: 470, baseType: !1431, size: 8, offset: 608)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1419, file: !1420, line: 471, baseType: !1431, size: 8, offset: 616)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1419, file: !1420, line: 472, baseType: !1431, size: 8, offset: 624)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1419, file: !1420, line: 473, baseType: !1431, size: 8, offset: 632)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1419, file: !1420, line: 474, baseType: !1431, size: 8, offset: 640)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1419, file: !1420, line: 475, baseType: !1431, size: 8, offset: 648)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1419, file: !1420, line: 476, baseType: !1431, size: 8, offset: 656)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1419, file: !1420, line: 477, baseType: !1431, size: 8, offset: 664)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1419, file: !1420, line: 478, baseType: !1431, size: 8, offset: 672)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1419, file: !1420, line: 479, baseType: !1431, size: 8, offset: 680)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1419, file: !1420, line: 480, baseType: !1431, size: 8, offset: 688)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1419, file: !1420, line: 481, baseType: !1431, size: 8, offset: 696)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1419, file: !1420, line: 482, baseType: !1431, size: 8, offset: 704)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1419, file: !1420, line: 483, baseType: !1431, size: 8, offset: 712)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1419, file: !1420, line: 484, baseType: !1431, size: 8, offset: 720)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1419, file: !1420, line: 485, baseType: !1431, size: 8, offset: 728)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1419, file: !1420, line: 486, baseType: !1431, size: 8, offset: 736)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1419, file: !1420, line: 487, baseType: !1431, size: 8, offset: 744)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1419, file: !1420, line: 488, baseType: !1431, size: 8, offset: 752)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1419, file: !1420, line: 489, baseType: !1431, size: 8, offset: 760)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1419, file: !1420, line: 490, baseType: !1431, size: 8, offset: 768)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1419, file: !1420, line: 491, baseType: !1431, size: 8, offset: 776)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1419, file: !1420, line: 492, baseType: !1431, size: 8, offset: 784)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1419, file: !1420, line: 493, baseType: !1431, size: 8, offset: 792)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1419, file: !1420, line: 494, baseType: !1431, size: 8, offset: 800)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1419, file: !1420, line: 495, baseType: !1431, size: 8, offset: 808)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1419, file: !1420, line: 496, baseType: !1431, size: 8, offset: 816)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1419, file: !1420, line: 497, baseType: !1431, size: 8, offset: 824)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1419, file: !1420, line: 498, baseType: !1431, size: 8, offset: 832)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1419, file: !1420, line: 499, baseType: !1431, size: 8, offset: 840)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1419, file: !1420, line: 500, baseType: !1431, size: 8, offset: 848)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1419, file: !1420, line: 501, baseType: !1431, size: 8, offset: 856)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1419, file: !1420, line: 502, baseType: !1431, size: 8, offset: 864)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1419, file: !1420, line: 503, baseType: !1431, size: 8, offset: 872)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1419, file: !1420, line: 504, baseType: !1431, size: 8, offset: 880)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1419, file: !1420, line: 505, baseType: !1431, size: 8, offset: 888)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1419, file: !1420, line: 506, baseType: !1431, size: 8, offset: 896)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1419, file: !1420, line: 507, baseType: !1431, size: 8, offset: 904)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1419, file: !1420, line: 508, baseType: !1431, size: 8, offset: 912)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1419, file: !1420, line: 509, baseType: !1431, size: 8, offset: 920)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1419, file: !1420, line: 510, baseType: !1431, size: 8, offset: 928)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1419, file: !1420, line: 511, baseType: !1431, size: 8, offset: 936)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1419, file: !1420, line: 512, baseType: !1431, size: 8, offset: 944)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1419, file: !1420, line: 513, baseType: !1431, size: 8, offset: 952)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1419, file: !1420, line: 514, baseType: !1431, size: 8, offset: 960)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1419, file: !1420, line: 515, baseType: !1431, size: 8, offset: 968)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1419, file: !1420, line: 516, baseType: !1431, size: 8, offset: 976)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1419, file: !1420, line: 517, baseType: !1431, size: 8, offset: 984)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1419, file: !1420, line: 518, baseType: !1431, size: 8, offset: 992)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1419, file: !1420, line: 519, baseType: !1431, size: 8, offset: 1000)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1419, file: !1420, line: 520, baseType: !1431, size: 8, offset: 1008)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1419, file: !1420, line: 521, baseType: !1431, size: 8, offset: 1016)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1419, file: !1420, line: 522, baseType: !1431, size: 8, offset: 1024)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1419, file: !1420, line: 523, baseType: !1431, size: 8, offset: 1032)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1419, file: !1420, line: 524, baseType: !1431, size: 8, offset: 1040)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1419, file: !1420, line: 525, baseType: !1431, size: 8, offset: 1048)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1419, file: !1420, line: 526, baseType: !1431, size: 8, offset: 1056)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1419, file: !1420, line: 527, baseType: !1431, size: 8, offset: 1064)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1419, file: !1420, line: 528, baseType: !1431, size: 8, offset: 1072)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1419, file: !1420, line: 529, baseType: !1431, size: 8, offset: 1080)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1419, file: !1420, line: 530, baseType: !1431, size: 8, offset: 1088)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1419, file: !1420, line: 531, baseType: !1431, size: 8, offset: 1096)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1419, file: !1420, line: 532, baseType: !1431, size: 8, offset: 1104)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1419, file: !1420, line: 533, baseType: !1431, size: 8, offset: 1112)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1419, file: !1420, line: 534, baseType: !1431, size: 8, offset: 1120)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1419, file: !1420, line: 535, baseType: !1431, size: 8, offset: 1128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1419, file: !1420, line: 536, baseType: !1431, size: 8, offset: 1136)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1419, file: !1420, line: 537, baseType: !1431, size: 8, offset: 1144)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1419, file: !1420, line: 538, baseType: !1431, size: 8, offset: 1152)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1419, file: !1420, line: 539, baseType: !1431, size: 8, offset: 1160)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1419, file: !1420, line: 540, baseType: !1431, size: 8, offset: 1168)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1419, file: !1420, line: 541, baseType: !1431, size: 8, offset: 1176)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1419, file: !1420, line: 542, baseType: !1431, size: 8, offset: 1184)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1419, file: !1420, line: 543, baseType: !1431, size: 8, offset: 1192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1419, file: !1420, line: 544, baseType: !1431, size: 8, offset: 1200)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1419, file: !1420, line: 545, baseType: !1431, size: 8, offset: 1208)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1419, file: !1420, line: 546, baseType: !1431, size: 8, offset: 1216)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1419, file: !1420, line: 547, baseType: !1431, size: 8, offset: 1224)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1419, file: !1420, line: 548, baseType: !1431, size: 8, offset: 1232)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1419, file: !1420, line: 549, baseType: !1431, size: 8, offset: 1240)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1419, file: !1420, line: 550, baseType: !1431, size: 8, offset: 1248)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1419, file: !1420, line: 551, baseType: !1431, size: 8, offset: 1256)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1419, file: !1420, line: 552, baseType: !1431, size: 8, offset: 1264)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1419, file: !1420, line: 553, baseType: !1431, size: 8, offset: 1272)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1419, file: !1420, line: 554, baseType: !1431, size: 8, offset: 1280)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1419, file: !1420, line: 555, baseType: !1431, size: 8, offset: 1288)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1419, file: !1420, line: 556, baseType: !1431, size: 8, offset: 1296)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1419, file: !1420, line: 557, baseType: !1431, size: 8, offset: 1304)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1419, file: !1420, line: 558, baseType: !1431, size: 8, offset: 1312)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1419, file: !1420, line: 559, baseType: !1431, size: 8, offset: 1320)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1419, file: !1420, line: 560, baseType: !1431, size: 8, offset: 1328)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1419, file: !1420, line: 561, baseType: !1431, size: 8, offset: 1336)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1419, file: !1420, line: 562, baseType: !1431, size: 8, offset: 1344)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1419, file: !1420, line: 563, baseType: !1431, size: 8, offset: 1352)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1419, file: !1420, line: 564, baseType: !1431, size: 8, offset: 1360)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1419, file: !1420, line: 565, baseType: !1431, size: 8, offset: 1368)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1419, file: !1420, line: 566, baseType: !1431, size: 8, offset: 1376)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1419, file: !1420, line: 567, baseType: !1431, size: 8, offset: 1384)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1419, file: !1420, line: 568, baseType: !1431, size: 8, offset: 1392)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1419, file: !1420, line: 569, baseType: !1431, size: 8, offset: 1400)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1419, file: !1420, line: 570, baseType: !1431, size: 8, offset: 1408)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1419, file: !1420, line: 571, baseType: !1431, size: 8, offset: 1416)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1419, file: !1420, line: 572, baseType: !1431, size: 8, offset: 1424)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1419, file: !1420, line: 573, baseType: !1431, size: 8, offset: 1432)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1419, file: !1420, line: 574, baseType: !1431, size: 8, offset: 1440)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !604, file: !151, line: 3405, baseType: !1587, size: 384)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !151, line: 3352, size: 384, elements: !1588)
!1588 = !{!1589, !1590}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1587, file: !151, line: 3353, baseType: !640, size: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1587, file: !151, line: 3356, baseType: !1591, size: 192, offset: 192)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1420, line: 578, size: 192, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1591, file: !1420, line: 580, baseType: !536, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1591, file: !1420, line: 581, baseType: !536, size: 32, offset: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1591, file: !1420, line: 582, baseType: !536, size: 32, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1591, file: !1420, line: 583, baseType: !536, size: 32, offset: 96)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1591, file: !1420, line: 584, baseType: !535, size: 8, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1591, file: !1420, line: 585, baseType: !535, size: 8, offset: 136)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1591, file: !1420, line: 586, baseType: !535, size: 8, offset: 144)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1591, file: !1420, line: 587, baseType: !535, size: 8, offset: 152)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1591, file: !1420, line: 588, baseType: !535, size: 8, offset: 160)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1591, file: !1420, line: 589, baseType: !535, size: 8, offset: 168)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1591, file: !1420, line: 590, baseType: !535, size: 8, offset: 176)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !571, file: !378, line: 143, baseType: !650, size: 128, offset: 640)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !571, file: !378, line: 146, baseType: !650, size: 128, offset: 768)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !571, file: !378, line: 148, baseType: !535, size: 8, offset: 896)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !571, file: !378, line: 149, baseType: !535, size: 8, offset: 904)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !571, file: !378, line: 153, baseType: !386, size: 32, offset: 928)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !571, file: !378, line: 156, baseType: !1610, size: 64, offset: 960)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !378, line: 48, size: 320, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1616}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1611, file: !378, line: 50, baseType: !1302, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1611, file: !378, line: 59, baseType: !650, size: 128, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1611, file: !378, line: 64, baseType: !535, size: 8, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1611, file: !378, line: 67, baseType: !1610, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !571, file: !378, line: 159, baseType: !1618, size: 64, offset: 1024)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !378, line: 72, size: 256, elements: !1620)
!1620 = !{!1621, !1622, !1623, !1624}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1619, file: !378, line: 74, baseType: !545, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1619, file: !378, line: 77, baseType: !1618, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1619, file: !378, line: 78, baseType: !1618, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1619, file: !378, line: 81, baseType: !1618, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !571, file: !378, line: 162, baseType: !535, size: 8, offset: 1088)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !571, file: !378, line: 166, baseType: !602, size: 64, offset: 1152)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !550, file: !135, line: 229, baseType: !1628, size: 128, offset: 256)
!1628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1629, size: 128, elements: !841)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !135, line: 229, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !550, file: !135, line: 232, baseType: !549, size: 64, offset: 384)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !550, file: !135, line: 233, baseType: !549, size: 64, offset: 448)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !550, file: !135, line: 238, baseType: !1634, size: 64, offset: 512)
!1634 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !135, line: 235, size: 64, elements: !1635)
!1635 = !{!1636, !1642}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1634, file: !135, line: 236, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !135, line: 273, size: 128, elements: !1639)
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1638, file: !135, line: 275, baseType: !1411, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1638, file: !135, line: 278, baseType: !1411, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1634, file: !135, line: 237, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !135, line: 259, size: 320, elements: !1645)
!1645 = !{!1646, !1647, !1648, !1649, !1650}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1644, file: !135, line: 261, baseType: !774, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1644, file: !135, line: 262, baseType: !774, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1644, file: !135, line: 266, baseType: !774, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1644, file: !135, line: 267, baseType: !774, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1644, file: !135, line: 270, baseType: !536, size: 32, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !550, file: !135, line: 241, baseType: !1652, size: 64, offset: 576)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !135, line: 119, baseType: !657)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !550, file: !135, line: 244, baseType: !536, size: 32, offset: 640)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !550, file: !135, line: 247, baseType: !536, size: 32, offset: 672)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !550, file: !135, line: 250, baseType: !536, size: 32, offset: 704)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !550, file: !135, line: 253, baseType: !536, size: 32, offset: 736)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !550, file: !135, line: 256, baseType: !536, size: 32, offset: 768)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !546, file: !135, line: 125, baseType: !549, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !546, file: !135, line: 131, baseType: !1660, size: 64, offset: 128)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !135, line: 128, size: 64, elements: !1661)
!1661 = !{!1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1660, file: !135, line: 129, baseType: !1411, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1660, file: !135, line: 130, baseType: !774, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !546, file: !135, line: 134, baseType: !540, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !546, file: !135, line: 137, baseType: !602, size: 64, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !546, file: !135, line: 138, baseType: !724, size: 32, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !546, file: !135, line: 142, baseType: !7, size: 32, offset: 352)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !546, file: !135, line: 144, baseType: !536, size: 32, offset: 384)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !546, file: !135, line: 145, baseType: !536, size: 32, offset: 416)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !546, file: !135, line: 146, baseType: !1652, size: 64, offset: 448)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "HARD_REG_ELT_TYPE", file: !1672, line: 42, baseType: !655)
!1672 = !DIFile(filename: "./hard-reg-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1673 = !{!0, !1674, !1676, !1678}
!1674 = !DIGlobalVariableExpression(var: !1675, expr: !DIExpression())
!1675 = distinct !DIGlobalVariable(name: "target_res_regs", scope: !2, file: !3, line: 323, type: !7, isLocal: false, isDefinition: true)
!1676 = !DIGlobalVariableExpression(var: !1677, expr: !DIExpression())
!1677 = distinct !DIGlobalVariable(name: "target_reg_cost", scope: !2, file: !3, line: 325, type: !1086, isLocal: false, isDefinition: true)
!1678 = !DIGlobalVariableExpression(var: !1679, expr: !DIExpression())
!1679 = distinct !DIGlobalVariable(name: "target_spill_cost", scope: !2, file: !3, line: 328, type: !1086, isLocal: false, isDefinition: true)
!1680 = !{i32 2, !"Dwarf Version", i32 4}
!1681 = !{i32 2, !"Debug Info Version", i32 3}
!1682 = !{i32 1, !"wchar_size", i32 4}
!1683 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1684 = distinct !DISubprogram(name: "vprintf", scope: !1685, file: !1685, line: 39, type: !1686, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1696)
!1685 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!536, !1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !541)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1691)
!1691 = !{!1692, !1693, !1694, !1695}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1690, file: !3, baseType: !7, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1690, file: !3, baseType: !7, size: 32, offset: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1690, file: !3, baseType: !540, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1690, file: !3, baseType: !540, size: 64, offset: 128)
!1696 = !{!1697, !1698}
!1697 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1684, file: !1685, line: 39, type: !1688)
!1698 = !DILocalVariable(name: "__arg", arg: 2, scope: !1684, file: !1685, line: 39, type: !1689)
!1699 = !DILocation(line: 0, scope: !1684)
!1700 = !DILocation(line: 41, column: 20, scope: !1684)
!1701 = !DILocation(line: 41, column: 10, scope: !1684)
!1702 = !DILocation(line: 41, column: 3, scope: !1684)
!1703 = distinct !DISubprogram(name: "getchar", scope: !1685, file: !1685, line: 47, type: !1704, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1706)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!536}
!1706 = !{}
!1707 = !DILocation(line: 49, column: 16, scope: !1703)
!1708 = !DILocation(line: 49, column: 10, scope: !1703)
!1709 = !DILocation(line: 49, column: 3, scope: !1703)
!1710 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1685, file: !1685, line: 56, type: !1711, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1764)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!536, !1713}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1715, line: 7, baseType: !1716)
!1715 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1717, line: 49, size: 1728, elements: !1718)
!1717 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1734, !1736, !1737, !1738, !1741, !1743, !1744, !1745, !1748, !1750, !1753, !1756, !1757, !1758, !1759, !1760}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1716, file: !1717, line: 51, baseType: !536, size: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1716, file: !1717, line: 54, baseType: !538, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1716, file: !1717, line: 55, baseType: !538, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1716, file: !1717, line: 56, baseType: !538, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1716, file: !1717, line: 57, baseType: !538, size: 64, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1716, file: !1717, line: 58, baseType: !538, size: 64, offset: 320)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1716, file: !1717, line: 59, baseType: !538, size: 64, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1716, file: !1717, line: 60, baseType: !538, size: 64, offset: 448)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1716, file: !1717, line: 61, baseType: !538, size: 64, offset: 512)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1716, file: !1717, line: 64, baseType: !538, size: 64, offset: 576)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1716, file: !1717, line: 65, baseType: !538, size: 64, offset: 640)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1716, file: !1717, line: 66, baseType: !538, size: 64, offset: 704)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1716, file: !1717, line: 68, baseType: !1732, size: 64, offset: 768)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1717, line: 36, flags: DIFlagFwdDecl)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1716, file: !1717, line: 70, baseType: !1735, size: 64, offset: 832)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1716, file: !1717, line: 72, baseType: !536, size: 32, offset: 896)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1716, file: !1717, line: 73, baseType: !536, size: 32, offset: 928)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1716, file: !1717, line: 74, baseType: !1739, size: 64, offset: 960)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1740, line: 152, baseType: !657)
!1740 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1716, file: !1717, line: 77, baseType: !1742, size: 16, offset: 1024)
!1742 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1716, file: !1717, line: 78, baseType: !1431, size: 8, offset: 1040)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1716, file: !1717, line: 79, baseType: !699, size: 8, offset: 1048)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1716, file: !1717, line: 81, baseType: !1746, size: 64, offset: 1088)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1717, line: 43, baseType: null)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1716, file: !1717, line: 89, baseType: !1749, size: 64, offset: 1152)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1740, line: 153, baseType: !657)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1716, file: !1717, line: 91, baseType: !1751, size: 64, offset: 1216)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1717, line: 37, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1716, file: !1717, line: 92, baseType: !1754, size: 64, offset: 1280)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1717, line: 38, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1716, file: !1717, line: 93, baseType: !1735, size: 64, offset: 1344)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1716, file: !1717, line: 94, baseType: !540, size: 64, offset: 1408)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1716, file: !1717, line: 95, baseType: !1126, size: 64, offset: 1472)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1716, file: !1717, line: 96, baseType: !536, size: 32, offset: 1536)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1716, file: !1717, line: 98, baseType: !1761, size: 160, offset: 1568)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 160, elements: !1762)
!1762 = !{!1763}
!1763 = !DISubrange(count: 20)
!1764 = !{!1765}
!1765 = !DILocalVariable(name: "__fp", arg: 1, scope: !1710, file: !1685, line: 56, type: !1713)
!1766 = !DILocation(line: 0, scope: !1710)
!1767 = !DILocation(line: 58, column: 10, scope: !1710)
!1768 = !DILocation(line: 58, column: 3, scope: !1710)
!1769 = distinct !DISubprogram(name: "getc_unlocked", scope: !1685, file: !1685, line: 66, type: !1711, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1770)
!1770 = !{!1771}
!1771 = !DILocalVariable(name: "__fp", arg: 1, scope: !1769, file: !1685, line: 66, type: !1713)
!1772 = !DILocation(line: 0, scope: !1769)
!1773 = !DILocation(line: 68, column: 10, scope: !1769)
!1774 = !DILocation(line: 68, column: 3, scope: !1769)
!1775 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1685, file: !1685, line: 73, type: !1704, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1706)
!1776 = !DILocation(line: 75, column: 10, scope: !1775)
!1777 = !DILocation(line: 75, column: 3, scope: !1775)
!1778 = distinct !DISubprogram(name: "putchar", scope: !1685, file: !1685, line: 82, type: !1779, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1781)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!536, !536}
!1781 = !{!1782}
!1782 = !DILocalVariable(name: "__c", arg: 1, scope: !1778, file: !1685, line: 82, type: !536)
!1783 = !DILocation(line: 0, scope: !1778)
!1784 = !DILocation(line: 84, column: 21, scope: !1778)
!1785 = !DILocation(line: 84, column: 10, scope: !1778)
!1786 = !DILocation(line: 84, column: 3, scope: !1778)
!1787 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1685, file: !1685, line: 91, type: !1788, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1790)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!536, !536, !1713}
!1790 = !{!1791, !1792}
!1791 = !DILocalVariable(name: "__c", arg: 1, scope: !1787, file: !1685, line: 91, type: !536)
!1792 = !DILocalVariable(name: "__stream", arg: 2, scope: !1787, file: !1685, line: 91, type: !1713)
!1793 = !DILocation(line: 0, scope: !1787)
!1794 = !DILocation(line: 93, column: 10, scope: !1787)
!1795 = !DILocation(line: 93, column: 3, scope: !1787)
!1796 = distinct !DISubprogram(name: "putc_unlocked", scope: !1685, file: !1685, line: 101, type: !1788, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1797)
!1797 = !{!1798, !1799}
!1798 = !DILocalVariable(name: "__c", arg: 1, scope: !1796, file: !1685, line: 101, type: !536)
!1799 = !DILocalVariable(name: "__stream", arg: 2, scope: !1796, file: !1685, line: 101, type: !1713)
!1800 = !DILocation(line: 0, scope: !1796)
!1801 = !DILocation(line: 103, column: 10, scope: !1796)
!1802 = !DILocation(line: 103, column: 3, scope: !1796)
!1803 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1685, file: !1685, line: 108, type: !1779, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1804)
!1804 = !{!1805}
!1805 = !DILocalVariable(name: "__c", arg: 1, scope: !1803, file: !1685, line: 108, type: !536)
!1806 = !DILocation(line: 0, scope: !1803)
!1807 = !DILocation(line: 110, column: 10, scope: !1803)
!1808 = !DILocation(line: 110, column: 3, scope: !1803)
!1809 = distinct !DISubprogram(name: "getline", scope: !1685, file: !1685, line: 118, type: !1810, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1814)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!1812, !537, !1813, !1713}
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1740, line: 193, baseType: !657)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1814 = !{!1815, !1816, !1817}
!1815 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1809, file: !1685, line: 118, type: !537)
!1816 = !DILocalVariable(name: "__n", arg: 2, scope: !1809, file: !1685, line: 118, type: !1813)
!1817 = !DILocalVariable(name: "__stream", arg: 3, scope: !1809, file: !1685, line: 118, type: !1713)
!1818 = !DILocation(line: 0, scope: !1809)
!1819 = !DILocation(line: 120, column: 10, scope: !1809)
!1820 = !DILocation(line: 120, column: 3, scope: !1809)
!1821 = distinct !DISubprogram(name: "feof_unlocked", scope: !1685, file: !1685, line: 128, type: !1711, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1822)
!1822 = !{!1823}
!1823 = !DILocalVariable(name: "__stream", arg: 1, scope: !1821, file: !1685, line: 128, type: !1713)
!1824 = !DILocation(line: 0, scope: !1821)
!1825 = !DILocation(line: 130, column: 10, scope: !1821)
!1826 = !DILocation(line: 130, column: 3, scope: !1821)
!1827 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1685, file: !1685, line: 135, type: !1711, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1828)
!1828 = !{!1829}
!1829 = !DILocalVariable(name: "__stream", arg: 1, scope: !1827, file: !1685, line: 135, type: !1713)
!1830 = !DILocation(line: 0, scope: !1827)
!1831 = !DILocation(line: 137, column: 10, scope: !1827)
!1832 = !DILocation(line: 137, column: 3, scope: !1827)
!1833 = distinct !DISubprogram(name: "tolower", scope: !1834, file: !1834, line: 207, type: !1779, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1835)
!1834 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1835 = !{!1836}
!1836 = !DILocalVariable(name: "__c", arg: 1, scope: !1833, file: !1834, line: 207, type: !536)
!1837 = !DILocation(line: 0, scope: !1833)
!1838 = !DILocation(line: 209, column: 22, scope: !1833)
!1839 = !DILocation(line: 209, column: 39, scope: !1833)
!1840 = !DILocation(line: 209, column: 38, scope: !1833)
!1841 = !DILocation(line: 209, column: 37, scope: !1833)
!1842 = !DILocation(line: 209, column: 10, scope: !1833)
!1843 = !DILocation(line: 209, column: 3, scope: !1833)
!1844 = distinct !DISubprogram(name: "toupper", scope: !1834, file: !1834, line: 213, type: !1779, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1845)
!1845 = !{!1846}
!1846 = !DILocalVariable(name: "__c", arg: 1, scope: !1844, file: !1834, line: 213, type: !536)
!1847 = !DILocation(line: 0, scope: !1844)
!1848 = !DILocation(line: 215, column: 22, scope: !1844)
!1849 = !DILocation(line: 215, column: 39, scope: !1844)
!1850 = !DILocation(line: 215, column: 38, scope: !1844)
!1851 = !DILocation(line: 215, column: 37, scope: !1844)
!1852 = !DILocation(line: 215, column: 10, scope: !1844)
!1853 = !DILocation(line: 215, column: 3, scope: !1844)
!1854 = distinct !DISubprogram(name: "atoi", scope: !1855, file: !1855, line: 361, type: !1856, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1858)
!1855 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!536, !541}
!1858 = !{!1859}
!1859 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1854, file: !1855, line: 361, type: !541)
!1860 = !DILocation(line: 0, scope: !1854)
!1861 = !DILocation(line: 363, column: 16, scope: !1854)
!1862 = !DILocation(line: 363, column: 10, scope: !1854)
!1863 = !DILocation(line: 363, column: 3, scope: !1854)
!1864 = distinct !DISubprogram(name: "atol", scope: !1855, file: !1855, line: 366, type: !1865, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1867)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!657, !541}
!1867 = !{!1868}
!1868 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1864, file: !1855, line: 366, type: !541)
!1869 = !DILocation(line: 0, scope: !1864)
!1870 = !DILocation(line: 368, column: 10, scope: !1864)
!1871 = !DILocation(line: 368, column: 3, scope: !1864)
!1872 = distinct !DISubprogram(name: "atoll", scope: !1855, file: !1855, line: 373, type: !1873, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1876)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!1875, !541}
!1875 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1876 = !{!1877}
!1877 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1872, file: !1855, line: 373, type: !541)
!1878 = !DILocation(line: 0, scope: !1872)
!1879 = !DILocation(line: 375, column: 10, scope: !1872)
!1880 = !DILocation(line: 375, column: 3, scope: !1872)
!1881 = distinct !DISubprogram(name: "bsearch", scope: !1882, file: !1882, line: 20, type: !1883, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1886)
!1882 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!540, !945, !945, !1126, !1126, !1885}
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1855, line: 808, baseType: !1115)
!1886 = !{!1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896}
!1887 = !DILocalVariable(name: "__key", arg: 1, scope: !1881, file: !1882, line: 20, type: !945)
!1888 = !DILocalVariable(name: "__base", arg: 2, scope: !1881, file: !1882, line: 20, type: !945)
!1889 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1881, file: !1882, line: 20, type: !1126)
!1890 = !DILocalVariable(name: "__size", arg: 4, scope: !1881, file: !1882, line: 20, type: !1126)
!1891 = !DILocalVariable(name: "__compar", arg: 5, scope: !1881, file: !1882, line: 21, type: !1885)
!1892 = !DILocalVariable(name: "__l", scope: !1881, file: !1882, line: 23, type: !1126)
!1893 = !DILocalVariable(name: "__u", scope: !1881, file: !1882, line: 23, type: !1126)
!1894 = !DILocalVariable(name: "__idx", scope: !1881, file: !1882, line: 23, type: !1126)
!1895 = !DILocalVariable(name: "__p", scope: !1881, file: !1882, line: 24, type: !945)
!1896 = !DILocalVariable(name: "__comparison", scope: !1881, file: !1882, line: 25, type: !536)
!1897 = !DILocation(line: 0, scope: !1881)
!1898 = !DILocation(line: 29, column: 3, scope: !1881)
!1899 = !DILocation(line: 27, column: 7, scope: !1881)
!1900 = !DILocation(line: 29, column: 14, scope: !1881)
!1901 = !DILocation(line: 31, column: 20, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1881, file: !1882, line: 30, column: 5)
!1903 = !DILocation(line: 31, column: 27, scope: !1902)
!1904 = !DILocation(line: 32, column: 56, scope: !1902)
!1905 = !DILocation(line: 32, column: 47, scope: !1902)
!1906 = !DILocation(line: 33, column: 22, scope: !1902)
!1907 = !DILocation(line: 34, column: 24, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1902, file: !1882, line: 34, column: 11)
!1909 = !DILocation(line: 34, column: 11, scope: !1902)
!1910 = !DILocation(line: 36, column: 29, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1908, file: !1882, line: 36, column: 16)
!1912 = !DILocation(line: 36, column: 16, scope: !1908)
!1913 = !DILocation(line: 37, column: 14, scope: !1911)
!1914 = distinct !{!1914, !1898, !1915}
!1915 = !DILocation(line: 40, column: 5, scope: !1881)
!1916 = !DILocation(line: 43, column: 1, scope: !1881)
!1917 = distinct !DISubprogram(name: "atof", scope: !1918, file: !1918, line: 25, type: !1919, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1922)
!1918 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!1921, !541}
!1921 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1922 = !{!1923}
!1923 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1917, file: !1918, line: 25, type: !541)
!1924 = !DILocation(line: 0, scope: !1917)
!1925 = !DILocation(line: 27, column: 10, scope: !1917)
!1926 = !DILocation(line: 27, column: 3, scope: !1917)
!1927 = distinct !DISubprogram(name: "strtoimax", scope: !1928, file: !1928, line: 324, type: !1929, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1935)
!1928 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!1931, !1688, !1934, !536}
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1932, line: 101, baseType: !1933)
!1932 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1740, line: 72, baseType: !657)
!1934 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !537)
!1935 = !{!1936, !1937, !1938}
!1936 = !DILocalVariable(name: "nptr", arg: 1, scope: !1927, file: !1928, line: 324, type: !1688)
!1937 = !DILocalVariable(name: "endptr", arg: 2, scope: !1927, file: !1928, line: 324, type: !1934)
!1938 = !DILocalVariable(name: "base", arg: 3, scope: !1927, file: !1928, line: 324, type: !536)
!1939 = !DILocation(line: 0, scope: !1927)
!1940 = !DILocation(line: 327, column: 10, scope: !1927)
!1941 = !DILocation(line: 327, column: 3, scope: !1927)
!1942 = distinct !DISubprogram(name: "strtoumax", scope: !1928, file: !1928, line: 336, type: !1943, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1947)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1945, !1688, !1934, !536}
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1932, line: 102, baseType: !1946)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1740, line: 73, baseType: !655)
!1947 = !{!1948, !1949, !1950}
!1948 = !DILocalVariable(name: "nptr", arg: 1, scope: !1942, file: !1928, line: 336, type: !1688)
!1949 = !DILocalVariable(name: "endptr", arg: 2, scope: !1942, file: !1928, line: 336, type: !1934)
!1950 = !DILocalVariable(name: "base", arg: 3, scope: !1942, file: !1928, line: 336, type: !536)
!1951 = !DILocation(line: 0, scope: !1942)
!1952 = !DILocation(line: 339, column: 10, scope: !1942)
!1953 = !DILocation(line: 339, column: 3, scope: !1942)
!1954 = distinct !DISubprogram(name: "wcstoimax", scope: !1928, file: !1928, line: 348, type: !1955, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1964)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!1931, !1957, !1961, !536}
!1957 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1958)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1960)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1928, line: 34, baseType: !536)
!1961 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1962)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1964 = !{!1965, !1966, !1967}
!1965 = !DILocalVariable(name: "nptr", arg: 1, scope: !1954, file: !1928, line: 348, type: !1957)
!1966 = !DILocalVariable(name: "endptr", arg: 2, scope: !1954, file: !1928, line: 348, type: !1961)
!1967 = !DILocalVariable(name: "base", arg: 3, scope: !1954, file: !1928, line: 348, type: !536)
!1968 = !DILocation(line: 0, scope: !1954)
!1969 = !DILocation(line: 351, column: 10, scope: !1954)
!1970 = !DILocation(line: 351, column: 3, scope: !1954)
!1971 = distinct !DISubprogram(name: "wcstoumax", scope: !1928, file: !1928, line: 362, type: !1972, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!1945, !1957, !1961, !536}
!1974 = !{!1975, !1976, !1977}
!1975 = !DILocalVariable(name: "nptr", arg: 1, scope: !1971, file: !1928, line: 362, type: !1957)
!1976 = !DILocalVariable(name: "endptr", arg: 2, scope: !1971, file: !1928, line: 362, type: !1961)
!1977 = !DILocalVariable(name: "base", arg: 3, scope: !1971, file: !1928, line: 362, type: !536)
!1978 = !DILocation(line: 0, scope: !1971)
!1979 = !DILocation(line: 365, column: 10, scope: !1971)
!1980 = !DILocation(line: 365, column: 3, scope: !1971)
!1981 = distinct !DISubprogram(name: "stat", scope: !1982, file: !1982, line: 453, type: !1983, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2020)
!1982 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!536, !541, !1985}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1987, line: 46, size: 1152, elements: !1988)
!1987 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1988 = !{!1989, !1991, !1993, !1995, !1997, !1999, !2001, !2002, !2003, !2004, !2006, !2008, !2016, !2017, !2018}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1986, file: !1987, line: 48, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1740, line: 145, baseType: !655)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1986, file: !1987, line: 53, baseType: !1992, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1740, line: 148, baseType: !655)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1986, file: !1987, line: 61, baseType: !1994, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1740, line: 151, baseType: !655)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1986, file: !1987, line: 62, baseType: !1996, size: 32, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1740, line: 150, baseType: !7)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1986, file: !1987, line: 64, baseType: !1998, size: 32, offset: 224)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1740, line: 146, baseType: !7)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1986, file: !1987, line: 65, baseType: !2000, size: 32, offset: 256)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1740, line: 147, baseType: !7)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1986, file: !1987, line: 67, baseType: !536, size: 32, offset: 288)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1986, file: !1987, line: 69, baseType: !1990, size: 64, offset: 320)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1986, file: !1987, line: 74, baseType: !1739, size: 64, offset: 384)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1986, file: !1987, line: 78, baseType: !2005, size: 64, offset: 448)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1740, line: 174, baseType: !657)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1986, file: !1987, line: 80, baseType: !2007, size: 64, offset: 512)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1740, line: 179, baseType: !657)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1986, file: !1987, line: 91, baseType: !2009, size: 128, offset: 576)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2010, line: 10, size: 128, elements: !2011)
!2010 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2011 = !{!2012, !2014}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2009, file: !2010, line: 12, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1740, line: 160, baseType: !657)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2009, file: !2010, line: 16, baseType: !2015, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1740, line: 196, baseType: !657)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1986, file: !1987, line: 92, baseType: !2009, size: 128, offset: 704)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1986, file: !1987, line: 93, baseType: !2009, size: 128, offset: 832)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1986, file: !1987, line: 106, baseType: !2019, size: 192, offset: 960)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2015, size: 192, elements: !675)
!2020 = !{!2021, !2022}
!2021 = !DILocalVariable(name: "__path", arg: 1, scope: !1981, file: !1982, line: 453, type: !541)
!2022 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1981, file: !1982, line: 453, type: !1985)
!2023 = !DILocation(line: 0, scope: !1981)
!2024 = !DILocation(line: 455, column: 10, scope: !1981)
!2025 = !DILocation(line: 455, column: 3, scope: !1981)
!2026 = distinct !DISubprogram(name: "lstat", scope: !1982, file: !1982, line: 460, type: !1983, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2027)
!2027 = !{!2028, !2029}
!2028 = !DILocalVariable(name: "__path", arg: 1, scope: !2026, file: !1982, line: 460, type: !541)
!2029 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2026, file: !1982, line: 460, type: !1985)
!2030 = !DILocation(line: 0, scope: !2026)
!2031 = !DILocation(line: 462, column: 10, scope: !2026)
!2032 = !DILocation(line: 462, column: 3, scope: !2026)
!2033 = distinct !DISubprogram(name: "fstat", scope: !1982, file: !1982, line: 467, type: !2034, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2036)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!536, !536, !1985}
!2036 = !{!2037, !2038}
!2037 = !DILocalVariable(name: "__fd", arg: 1, scope: !2033, file: !1982, line: 467, type: !536)
!2038 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2033, file: !1982, line: 467, type: !1985)
!2039 = !DILocation(line: 0, scope: !2033)
!2040 = !DILocation(line: 469, column: 10, scope: !2033)
!2041 = !DILocation(line: 469, column: 3, scope: !2033)
!2042 = distinct !DISubprogram(name: "fstatat", scope: !1982, file: !1982, line: 474, type: !2043, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2045)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!536, !536, !541, !1985, !536}
!2045 = !{!2046, !2047, !2048, !2049}
!2046 = !DILocalVariable(name: "__fd", arg: 1, scope: !2042, file: !1982, line: 474, type: !536)
!2047 = !DILocalVariable(name: "__filename", arg: 2, scope: !2042, file: !1982, line: 474, type: !541)
!2048 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2042, file: !1982, line: 474, type: !1985)
!2049 = !DILocalVariable(name: "__flag", arg: 4, scope: !2042, file: !1982, line: 474, type: !536)
!2050 = !DILocation(line: 0, scope: !2042)
!2051 = !DILocation(line: 477, column: 10, scope: !2042)
!2052 = !DILocation(line: 477, column: 3, scope: !2042)
!2053 = distinct !DISubprogram(name: "mknod", scope: !1982, file: !1982, line: 483, type: !2054, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2056)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!536, !541, !1996, !1990}
!2056 = !{!2057, !2058, !2059}
!2057 = !DILocalVariable(name: "__path", arg: 1, scope: !2053, file: !1982, line: 483, type: !541)
!2058 = !DILocalVariable(name: "__mode", arg: 2, scope: !2053, file: !1982, line: 483, type: !1996)
!2059 = !DILocalVariable(name: "__dev", arg: 3, scope: !2053, file: !1982, line: 483, type: !1990)
!2060 = !DILocation(line: 0, scope: !2053)
!2061 = !DILocation(line: 485, column: 10, scope: !2053)
!2062 = !DILocation(line: 485, column: 3, scope: !2053)
!2063 = distinct !DISubprogram(name: "mknodat", scope: !1982, file: !1982, line: 491, type: !2064, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!536, !536, !541, !1996, !1990}
!2066 = !{!2067, !2068, !2069, !2070}
!2067 = !DILocalVariable(name: "__fd", arg: 1, scope: !2063, file: !1982, line: 491, type: !536)
!2068 = !DILocalVariable(name: "__path", arg: 2, scope: !2063, file: !1982, line: 491, type: !541)
!2069 = !DILocalVariable(name: "__mode", arg: 3, scope: !2063, file: !1982, line: 491, type: !1996)
!2070 = !DILocalVariable(name: "__dev", arg: 4, scope: !2063, file: !1982, line: 491, type: !1990)
!2071 = !DILocation(line: 0, scope: !2063)
!2072 = !DILocation(line: 494, column: 10, scope: !2063)
!2073 = !DILocation(line: 494, column: 3, scope: !2063)
!2074 = distinct !DISubprogram(name: "stat64", scope: !1982, file: !1982, line: 502, type: !2075, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2097)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!536, !541, !2077}
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1987, line: 119, size: 1152, elements: !2079)
!2079 = !{!2080, !2081, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2093, !2094, !2095, !2096}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2078, file: !1987, line: 121, baseType: !1990, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2078, file: !1987, line: 123, baseType: !2082, size: 64, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1740, line: 149, baseType: !655)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2078, file: !1987, line: 124, baseType: !1994, size: 64, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2078, file: !1987, line: 125, baseType: !1996, size: 32, offset: 192)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2078, file: !1987, line: 132, baseType: !1998, size: 32, offset: 224)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2078, file: !1987, line: 133, baseType: !2000, size: 32, offset: 256)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2078, file: !1987, line: 135, baseType: !536, size: 32, offset: 288)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2078, file: !1987, line: 136, baseType: !1990, size: 64, offset: 320)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2078, file: !1987, line: 137, baseType: !1739, size: 64, offset: 384)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2078, file: !1987, line: 143, baseType: !2005, size: 64, offset: 448)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2078, file: !1987, line: 144, baseType: !2092, size: 64, offset: 512)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1740, line: 180, baseType: !657)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2078, file: !1987, line: 152, baseType: !2009, size: 128, offset: 576)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2078, file: !1987, line: 153, baseType: !2009, size: 128, offset: 704)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2078, file: !1987, line: 154, baseType: !2009, size: 128, offset: 832)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2078, file: !1987, line: 164, baseType: !2019, size: 192, offset: 960)
!2097 = !{!2098, !2099}
!2098 = !DILocalVariable(name: "__path", arg: 1, scope: !2074, file: !1982, line: 502, type: !541)
!2099 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2074, file: !1982, line: 502, type: !2077)
!2100 = !DILocation(line: 0, scope: !2074)
!2101 = !DILocation(line: 504, column: 10, scope: !2074)
!2102 = !DILocation(line: 504, column: 3, scope: !2074)
!2103 = distinct !DISubprogram(name: "lstat64", scope: !1982, file: !1982, line: 509, type: !2075, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2104)
!2104 = !{!2105, !2106}
!2105 = !DILocalVariable(name: "__path", arg: 1, scope: !2103, file: !1982, line: 509, type: !541)
!2106 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2103, file: !1982, line: 509, type: !2077)
!2107 = !DILocation(line: 0, scope: !2103)
!2108 = !DILocation(line: 511, column: 10, scope: !2103)
!2109 = !DILocation(line: 511, column: 3, scope: !2103)
!2110 = distinct !DISubprogram(name: "fstat64", scope: !1982, file: !1982, line: 516, type: !2111, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2113)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!536, !536, !2077}
!2113 = !{!2114, !2115}
!2114 = !DILocalVariable(name: "__fd", arg: 1, scope: !2110, file: !1982, line: 516, type: !536)
!2115 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2110, file: !1982, line: 516, type: !2077)
!2116 = !DILocation(line: 0, scope: !2110)
!2117 = !DILocation(line: 518, column: 10, scope: !2110)
!2118 = !DILocation(line: 518, column: 3, scope: !2110)
!2119 = distinct !DISubprogram(name: "fstatat64", scope: !1982, file: !1982, line: 523, type: !2120, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2122)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!536, !536, !541, !2077, !536}
!2122 = !{!2123, !2124, !2125, !2126}
!2123 = !DILocalVariable(name: "__fd", arg: 1, scope: !2119, file: !1982, line: 523, type: !536)
!2124 = !DILocalVariable(name: "__filename", arg: 2, scope: !2119, file: !1982, line: 523, type: !541)
!2125 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2119, file: !1982, line: 523, type: !2077)
!2126 = !DILocalVariable(name: "__flag", arg: 4, scope: !2119, file: !1982, line: 523, type: !536)
!2127 = !DILocation(line: 0, scope: !2119)
!2128 = !DILocation(line: 526, column: 10, scope: !2119)
!2129 = !DILocation(line: 526, column: 3, scope: !2119)
!2130 = distinct !DISubprogram(name: "just_once_each_iteration_p", scope: !3, file: !3, line: 38, type: !2131, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!535, !2133, !2135}
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !544, line: 112, baseType: !2136)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!2138 = !{!2139, !2140}
!2139 = !DILocalVariable(name: "loop", arg: 1, scope: !2130, file: !3, line: 38, type: !2133)
!2140 = !DILocalVariable(name: "bb", arg: 2, scope: !2130, file: !3, line: 38, type: !2135)
!2141 = !DILocation(line: 0, scope: !2130)
!2142 = !DILocation(line: 41, column: 46, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 41, column: 7)
!2144 = !DILocation(line: 41, column: 8, scope: !2143)
!2145 = !DILocation(line: 41, column: 7, scope: !2130)
!2146 = !DILocation(line: 45, column: 11, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 45, column: 7)
!2148 = !DILocation(line: 45, column: 23, scope: !2147)
!2149 = !DILocation(line: 45, column: 7, scope: !2130)
!2150 = !DILocation(line: 49, column: 11, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 49, column: 7)
!2152 = !DILocation(line: 53, column: 1, scope: !2130)
!2153 = distinct !DISubprogram(name: "mark_irreducible_loops", scope: !3, file: !3, line: 68, type: !2154, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2156)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!535}
!2156 = !{!2157, !2158, !2168, !2169, !2176, !2177, !2178, !2179, !2194, !2195, !2196, !2197, !2198}
!2157 = !DILocalVariable(name: "act", scope: !2153, file: !3, line: 70, type: !1063)
!2158 = !DILocalVariable(name: "ge", scope: !2153, file: !3, line: 71, type: !2159)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "graph_edge", file: !2161, line: 23, size: 256, elements: !2162)
!2161 = !DIFile(filename: "./graphds.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2162 = !{!2163, !2164, !2165, !2166, !2167}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2160, file: !2161, line: 25, baseType: !536, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !2160, file: !2161, line: 25, baseType: !536, size: 32, offset: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "pred_next", scope: !2160, file: !2161, line: 26, baseType: !2159, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "succ_next", scope: !2160, file: !2161, line: 26, baseType: !2159, size: 64, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2160, file: !2161, line: 28, baseType: !540, size: 64, offset: 192)
!2168 = !DILocalVariable(name: "e", scope: !2153, file: !3, line: 72, type: !543)
!2169 = !DILocalVariable(name: "ei", scope: !2153, file: !3, line: 73, type: !2170)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !135, line: 682, baseType: !2171)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 679, size: 128, elements: !2172)
!2172 = !{!2173, !2174}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2171, file: !135, line: 680, baseType: !7, size: 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2171, file: !135, line: 681, baseType: !2175, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!2176 = !DILocalVariable(name: "src", scope: !2153, file: !3, line: 74, type: !536)
!2177 = !DILocalVariable(name: "dest", scope: !2153, file: !3, line: 74, type: !536)
!2178 = !DILocalVariable(name: "depth", scope: !2153, file: !3, line: 75, type: !7)
!2179 = !DILocalVariable(name: "g", scope: !2153, file: !3, line: 76, type: !2180)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "graph", file: !2161, line: 45, size: 192, elements: !2182)
!2182 = !{!2183, !2184, !2193}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "n_vertices", scope: !2181, file: !2161, line: 47, baseType: !536, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "vertices", scope: !2181, file: !2161, line: 48, baseType: !2185, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vertex", file: !2161, line: 33, size: 256, elements: !2187)
!2187 = !{!2188, !2189, !2190, !2191, !2192}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !2186, file: !2161, line: 35, baseType: !2159, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "succ", scope: !2186, file: !2161, line: 35, baseType: !2159, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "component", scope: !2186, file: !2161, line: 37, baseType: !536, size: 32, offset: 128)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !2186, file: !2161, line: 39, baseType: !536, size: 32, offset: 160)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2186, file: !2161, line: 40, baseType: !540, size: 64, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !2181, file: !2161, line: 50, baseType: !1102, size: 64, offset: 128)
!2194 = !DILocalVariable(name: "num", scope: !2153, file: !3, line: 77, type: !536)
!2195 = !DILocalVariable(name: "cloop", scope: !2153, file: !3, line: 78, type: !570)
!2196 = !DILocalVariable(name: "irred_loop_found", scope: !2153, file: !3, line: 79, type: !535)
!2197 = !DILocalVariable(name: "i", scope: !2153, file: !3, line: 80, type: !536)
!2198 = !DILocalVariable(name: "real", scope: !2199, file: !3, line: 143, type: !543)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 142, column: 7)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 141, column: 5)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 141, column: 5)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 140, column: 3)
!2203 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 140, column: 3)
!2204 = !DILocation(line: 72, column: 3, scope: !2153)
!2205 = !DILocation(line: 73, column: 3, scope: !2153)
!2206 = !DILocation(line: 77, column: 13, scope: !2153)
!2207 = !DILocation(line: 0, scope: !2153)
!2208 = !DILocation(line: 82, column: 3, scope: !2153)
!2209 = !DILocation(line: 85, column: 3, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 85, column: 3)
!2211 = !DILocation(line: 0, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 88, column: 7)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 86, column: 5)
!2214 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 85, column: 3)
!2215 = !DILocation(line: 0, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 88, column: 7)
!2217 = !DILocation(line: 85, column: 3, scope: !2214)
!2218 = !DILocation(line: 0, scope: !2210)
!2219 = !DILocation(line: 87, column: 12, scope: !2213)
!2220 = !DILocation(line: 87, column: 18, scope: !2213)
!2221 = !DILocation(line: 88, column: 7, scope: !2212)
!2222 = !DILocation(line: 88, column: 7, scope: !2216)
!2223 = !DILocation(line: 89, column: 2, scope: !2216)
!2224 = !DILocation(line: 89, column: 5, scope: !2216)
!2225 = !DILocation(line: 89, column: 11, scope: !2216)
!2226 = distinct !{!2226, !2221, !2227}
!2227 = !DILocation(line: 89, column: 15, scope: !2212)
!2228 = !DILocation(line: 0, scope: !2214)
!2229 = distinct !{!2229, !2209, !2230}
!2230 = !DILocation(line: 90, column: 5, scope: !2210)
!2231 = !DILocation(line: 93, column: 18, scope: !2153)
!2232 = !DILocation(line: 93, column: 35, scope: !2153)
!2233 = !DILocation(line: 93, column: 7, scope: !2153)
!2234 = !DILocation(line: 95, column: 3, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 95, column: 3)
!2236 = !DILocation(line: 0, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 96, column: 5)
!2238 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 95, column: 3)
!2239 = !DILocation(line: 0, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 97, column: 7)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 96, column: 5)
!2242 = !DILocation(line: 95, column: 3, scope: !2238)
!2243 = !DILocation(line: 0, scope: !2235)
!2244 = !DILocation(line: 96, column: 5, scope: !2237)
!2245 = !DILocation(line: 0, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 121, column: 6)
!2247 = !DILocation(line: 96, column: 5, scope: !2241)
!2248 = !DILocation(line: 99, column: 6, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 99, column: 6)
!2250 = !DILocation(line: 99, column: 9, scope: !2249)
!2251 = !DILocation(line: 99, column: 17, scope: !2249)
!2252 = !DILocation(line: 99, column: 14, scope: !2249)
!2253 = !DILocation(line: 99, column: 6, scope: !2240)
!2254 = !DILocation(line: 102, column: 8, scope: !2240)
!2255 = !DILocation(line: 103, column: 9, scope: !2240)
!2256 = !DILocation(line: 106, column: 15, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 106, column: 6)
!2258 = !DILocation(line: 106, column: 28, scope: !2257)
!2259 = !DILocation(line: 106, column: 35, scope: !2257)
!2260 = !DILocation(line: 107, column: 6, scope: !2257)
!2261 = !DILocation(line: 107, column: 31, scope: !2257)
!2262 = !DILocation(line: 107, column: 37, scope: !2257)
!2263 = !DILocation(line: 106, column: 6, scope: !2240)
!2264 = !DILocation(line: 118, column: 6, scope: !2240)
!2265 = !DILocation(line: 119, column: 11, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 118, column: 6)
!2267 = !DILocation(line: 119, column: 4, scope: !2266)
!2268 = !DILocation(line: 121, column: 35, scope: !2246)
!2269 = !DILocation(line: 121, column: 7, scope: !2246)
!2270 = !DILocation(line: 121, column: 6, scope: !2240)
!2271 = !DILocation(line: 123, column: 53, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 122, column: 4)
!2273 = !DILocation(line: 124, column: 13, scope: !2272)
!2274 = !DILocation(line: 124, column: 16, scope: !2272)
!2275 = !DILocation(line: 124, column: 22, scope: !2272)
!2276 = !DILocation(line: 123, column: 30, scope: !2272)
!2277 = !DILocation(line: 123, column: 18, scope: !2272)
!2278 = !DILocation(line: 123, column: 16, scope: !2272)
!2279 = !DILocation(line: 125, column: 36, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 125, column: 10)
!2281 = !DILocation(line: 125, column: 19, scope: !2280)
!2282 = !DILocation(line: 125, column: 16, scope: !2280)
!2283 = !DILocation(line: 0, scope: !2280)
!2284 = !DILocation(line: 125, column: 10, scope: !2272)
!2285 = !DILocation(line: 128, column: 16, scope: !2280)
!2286 = !DILocation(line: 130, column: 12, scope: !2272)
!2287 = !DILocation(line: 131, column: 4, scope: !2272)
!2288 = !DILocation(line: 133, column: 34, scope: !2240)
!2289 = !DILocation(line: 133, column: 2, scope: !2240)
!2290 = !DILocation(line: 133, column: 27, scope: !2240)
!2291 = !DILocation(line: 133, column: 32, scope: !2240)
!2292 = !DILocation(line: 134, column: 7, scope: !2240)
!2293 = distinct !{!2293, !2244, !2294}
!2294 = !DILocation(line: 134, column: 7, scope: !2237)
!2295 = !DILocation(line: 0, scope: !2238)
!2296 = distinct !{!2296, !2234, !2297}
!2297 = !DILocation(line: 134, column: 7, scope: !2235)
!2298 = !DILocation(line: 137, column: 3, scope: !2153)
!2299 = !DILocation(line: 0, scope: !2202)
!2300 = !DILocation(line: 0, scope: !2201)
!2301 = !DILocation(line: 140, column: 8, scope: !2203)
!2302 = !DILocation(line: 79, column: 8, scope: !2153)
!2303 = !DILocation(line: 140, column: 22, scope: !2202)
!2304 = !DILocation(line: 140, column: 17, scope: !2202)
!2305 = !DILocation(line: 140, column: 3, scope: !2203)
!2306 = !DILocation(line: 141, column: 18, scope: !2201)
!2307 = !DILocation(line: 141, column: 30, scope: !2201)
!2308 = !DILocation(line: 141, column: 10, scope: !2201)
!2309 = !DILocation(line: 141, column: 5, scope: !2201)
!2310 = !DILocation(line: 143, column: 25, scope: !2199)
!2311 = !DILocation(line: 0, scope: !2199)
!2312 = !DILocation(line: 149, column: 2, scope: !2199)
!2313 = !DILocation(line: 151, column: 9, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 151, column: 6)
!2315 = !DILocation(line: 151, column: 22, scope: !2314)
!2316 = !DILocation(line: 0, scope: !2314)
!2317 = !DILocation(line: 151, column: 27, scope: !2314)
!2318 = !DILocation(line: 151, column: 56, scope: !2314)
!2319 = !DILocation(line: 151, column: 62, scope: !2314)
!2320 = !DILocation(line: 151, column: 37, scope: !2314)
!2321 = !DILocation(line: 151, column: 6, scope: !2199)
!2322 = !DILocation(line: 154, column: 8, scope: !2199)
!2323 = !DILocation(line: 154, column: 14, scope: !2199)
!2324 = !DILocation(line: 156, column: 35, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 156, column: 6)
!2326 = !DILocation(line: 156, column: 40, scope: !2325)
!2327 = !DILocation(line: 156, column: 59, scope: !2325)
!2328 = !DILocation(line: 156, column: 6, scope: !2325)
!2329 = !DILocation(line: 156, column: 6, scope: !2199)
!2330 = !DILocation(line: 157, column: 10, scope: !2325)
!2331 = !DILocation(line: 157, column: 15, scope: !2325)
!2332 = !DILocation(line: 157, column: 21, scope: !2325)
!2333 = !DILocation(line: 157, column: 4, scope: !2325)
!2334 = !DILocation(line: 141, column: 49, scope: !2200)
!2335 = !DILocation(line: 141, column: 5, scope: !2200)
!2336 = distinct !{!2336, !2309, !2337}
!2337 = !DILocation(line: 158, column: 7, scope: !2201)
!2338 = !DILocation(line: 140, column: 35, scope: !2202)
!2339 = !DILocation(line: 140, column: 3, scope: !2202)
!2340 = distinct !{!2340, !2305, !2341}
!2341 = !DILocation(line: 158, column: 7, scope: !2203)
!2342 = !DILocation(line: 160, column: 3, scope: !2153)
!2343 = !DILocation(line: 162, column: 3, scope: !2153)
!2344 = !DILocation(line: 164, column: 1, scope: !2153)
!2345 = !DILocation(line: 163, column: 3, scope: !2153)
!2346 = distinct !DISubprogram(name: "number_of_loops", scope: !378, file: !378, line: 459, type: !2347, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1706)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!7}
!2349 = !DILocation(line: 461, column: 8, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2346, file: !378, line: 461, column: 7)
!2351 = !DILocation(line: 461, column: 7, scope: !2346)
!2352 = !DILocation(line: 464, column: 10, scope: !2346)
!2353 = !DILocation(line: 464, column: 3, scope: !2346)
!2354 = !DILocation(line: 0, scope: !2346)
!2355 = !DILocation(line: 465, column: 1, scope: !2346)
!2356 = distinct !DISubprogram(name: "ei_start_1", scope: !135, file: !135, line: 696, type: !2357, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2359)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!2170, !2175}
!2359 = !{!2360, !2361}
!2360 = !DILocalVariable(name: "ev", arg: 1, scope: !2356, file: !135, line: 696, type: !2175)
!2361 = !DILocalVariable(name: "i", scope: !2356, file: !135, line: 698, type: !2170)
!2362 = !DILocation(line: 0, scope: !2356)
!2363 = !DILocation(line: 700, column: 5, scope: !2356)
!2364 = !DILocation(line: 700, column: 11, scope: !2356)
!2365 = !DILocation(line: 701, column: 5, scope: !2356)
!2366 = !DILocation(line: 701, column: 15, scope: !2356)
!2367 = !DILocation(line: 703, column: 3, scope: !2356)
!2368 = distinct !DISubprogram(name: "ei_cond", scope: !135, file: !135, line: 771, type: !2369, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2372)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!535, !2170, !2371}
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!2372 = !{!2373, !2374}
!2373 = !DILocalVariable(name: "ei", arg: 1, scope: !2368, file: !135, line: 771, type: !2170)
!2374 = !DILocalVariable(name: "p", arg: 2, scope: !2368, file: !135, line: 771, type: !2371)
!2375 = !DILocation(line: 0, scope: !2368)
!2376 = !DILocation(line: 773, column: 8, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2368, file: !135, line: 773, column: 7)
!2378 = !DILocation(line: 773, column: 7, scope: !2368)
!2379 = !DILocation(line: 775, column: 12, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2377, file: !135, line: 774, column: 5)
!2381 = !DILocation(line: 776, column: 7, scope: !2380)
!2382 = !DILocation(line: 781, column: 7, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2377, file: !135, line: 779, column: 5)
!2384 = !DILocation(line: 0, scope: !2377)
!2385 = !DILocation(line: 783, column: 1, scope: !2368)
!2386 = distinct !DISubprogram(name: "ei_next", scope: !135, file: !135, line: 736, type: !2387, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2390)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !2389}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2390 = !{!2391}
!2391 = !DILocalVariable(name: "i", arg: 1, scope: !2386, file: !135, line: 736, type: !2389)
!2392 = !DILocation(line: 0, scope: !2386)
!2393 = !DILocation(line: 738, column: 3, scope: !2386)
!2394 = !DILocation(line: 739, column: 11, scope: !2386)
!2395 = !DILocation(line: 740, column: 1, scope: !2386)
!2396 = distinct !DISubprogram(name: "loop_depth", scope: !378, file: !378, line: 425, type: !2397, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2399)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!7, !2133}
!2399 = !{!2400}
!2400 = !DILocalVariable(name: "loop", arg: 1, scope: !2396, file: !378, line: 425, type: !2133)
!2401 = !DILocation(line: 0, scope: !2396)
!2402 = !DILocation(line: 427, column: 10, scope: !2396)
!2403 = !DILocation(line: 427, column: 3, scope: !2396)
!2404 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !378, file: !378, line: 85, type: !2405, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2409)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!597, !2407, !7}
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!2409 = !{!2410, !2411}
!2410 = !DILocalVariable(name: "vec_", arg: 1, scope: !2404, file: !378, line: 85, type: !2407)
!2411 = !DILocalVariable(name: "ix_", arg: 2, scope: !2404, file: !378, line: 85, type: !7)
!2412 = !DILocation(line: 0, scope: !2404)
!2413 = !DILocation(line: 85, column: 1, scope: !2404)
!2414 = distinct !DISubprogram(name: "loops_state_set", scope: !378, file: !378, line: 479, type: !2415, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{null, !7}
!2417 = !{!2418}
!2418 = !DILocalVariable(name: "flags", arg: 1, scope: !2414, file: !378, line: 479, type: !7)
!2419 = !DILocation(line: 0, scope: !2414)
!2420 = !DILocation(line: 481, column: 3, scope: !2414)
!2421 = !DILocation(line: 481, column: 18, scope: !2414)
!2422 = !DILocation(line: 481, column: 24, scope: !2414)
!2423 = !DILocation(line: 482, column: 1, scope: !2414)
!2424 = distinct !DISubprogram(name: "num_loop_insns", scope: !3, file: !3, line: 168, type: !2425, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!536, !2133}
!2427 = !{!2428, !2429, !2431, !2432, !2433, !2434}
!2428 = !DILocalVariable(name: "loop", arg: 1, scope: !2424, file: !3, line: 168, type: !2133)
!2429 = !DILocalVariable(name: "bbs", scope: !2424, file: !3, line: 170, type: !2430)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!2431 = !DILocalVariable(name: "bb", scope: !2424, file: !3, line: 170, type: !1063)
!2432 = !DILocalVariable(name: "i", scope: !2424, file: !3, line: 171, type: !7)
!2433 = !DILocalVariable(name: "ninsns", scope: !2424, file: !3, line: 171, type: !7)
!2434 = !DILocalVariable(name: "insn", scope: !2424, file: !3, line: 172, type: !774)
!2435 = !DILocation(line: 0, scope: !2424)
!2436 = !DILocation(line: 174, column: 9, scope: !2424)
!2437 = !DILocation(line: 0, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 175, column: 3)
!2439 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 175, column: 3)
!2440 = !DILocation(line: 175, column: 17, scope: !2438)
!2441 = !DILocation(line: 175, column: 8, scope: !2439)
!2442 = !DILocation(line: 0, scope: !2439)
!2443 = !DILocation(line: 171, column: 15, scope: !2424)
!2444 = !DILocation(line: 175, column: 3, scope: !2439)
!2445 = !DILocation(line: 177, column: 12, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 176, column: 5)
!2447 = !DILocation(line: 178, column: 7, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 178, column: 7)
!2449 = !DILocation(line: 178, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 178, column: 7)
!2451 = !DILocation(line: 0, scope: !2448)
!2452 = !DILocation(line: 179, column: 6, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 179, column: 6)
!2454 = !DILocation(line: 179, column: 6, scope: !2450)
!2455 = distinct !{!2455, !2447, !2456}
!2456 = !DILocation(line: 180, column: 10, scope: !2448)
!2457 = !DILocation(line: 175, column: 37, scope: !2438)
!2458 = !DILocation(line: 175, column: 3, scope: !2438)
!2459 = distinct !{!2459, !2444, !2460}
!2460 = !DILocation(line: 181, column: 5, scope: !2439)
!2461 = !DILocation(line: 182, column: 9, scope: !2424)
!2462 = !DILocation(line: 182, column: 3, scope: !2424)
!2463 = !DILocation(line: 184, column: 8, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 184, column: 7)
!2465 = !DILocation(line: 184, column: 7, scope: !2424)
!2466 = !DILocation(line: 187, column: 3, scope: !2424)
!2467 = distinct !DISubprogram(name: "average_num_loop_insns", scope: !3, file: !3, line: 192, type: !2425, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2468)
!2468 = !{!2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476}
!2469 = !DILocalVariable(name: "loop", arg: 1, scope: !2467, file: !3, line: 192, type: !2133)
!2470 = !DILocalVariable(name: "bbs", scope: !2467, file: !3, line: 194, type: !2430)
!2471 = !DILocalVariable(name: "bb", scope: !2467, file: !3, line: 194, type: !1063)
!2472 = !DILocalVariable(name: "i", scope: !2467, file: !3, line: 195, type: !7)
!2473 = !DILocalVariable(name: "binsns", scope: !2467, file: !3, line: 195, type: !7)
!2474 = !DILocalVariable(name: "ninsns", scope: !2467, file: !3, line: 195, type: !7)
!2475 = !DILocalVariable(name: "ratio", scope: !2467, file: !3, line: 195, type: !7)
!2476 = !DILocalVariable(name: "insn", scope: !2467, file: !3, line: 196, type: !774)
!2477 = !DILocation(line: 0, scope: !2467)
!2478 = !DILocation(line: 199, column: 9, scope: !2467)
!2479 = !DILocation(line: 0, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 200, column: 3)
!2481 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 200, column: 3)
!2482 = !DILocation(line: 0, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 201, column: 5)
!2484 = !DILocation(line: 200, column: 17, scope: !2480)
!2485 = !DILocation(line: 200, column: 8, scope: !2481)
!2486 = !DILocation(line: 0, scope: !2481)
!2487 = !DILocation(line: 200, column: 3, scope: !2481)
!2488 = !DILocation(line: 202, column: 12, scope: !2483)
!2489 = !DILocation(line: 205, column: 7, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 205, column: 7)
!2491 = !DILocation(line: 205, column: 7, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 205, column: 7)
!2493 = !DILocation(line: 204, column: 14, scope: !2483)
!2494 = !DILocation(line: 0, scope: !2490)
!2495 = !DILocation(line: 206, column: 6, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 206, column: 6)
!2497 = !DILocation(line: 206, column: 6, scope: !2492)
!2498 = distinct !{!2498, !2489, !2499}
!2499 = !DILocation(line: 207, column: 10, scope: !2490)
!2500 = !DILocation(line: 209, column: 21, scope: !2483)
!2501 = !DILocation(line: 209, column: 29, scope: !2483)
!2502 = !DILocation(line: 209, column: 39, scope: !2483)
!2503 = !DILocation(line: 209, column: 15, scope: !2483)
!2504 = !DILocation(line: 211, column: 15, scope: !2483)
!2505 = !DILocation(line: 211, column: 25, scope: !2483)
!2506 = !DILocation(line: 211, column: 40, scope: !2483)
!2507 = !DILocation(line: 212, column: 24, scope: !2483)
!2508 = !DILocation(line: 212, column: 14, scope: !2483)
!2509 = !DILocation(line: 200, column: 37, scope: !2480)
!2510 = !DILocation(line: 200, column: 3, scope: !2480)
!2511 = distinct !{!2511, !2487, !2512}
!2512 = !DILocation(line: 213, column: 5, scope: !2481)
!2513 = !DILocation(line: 214, column: 9, scope: !2467)
!2514 = !DILocation(line: 214, column: 3, scope: !2467)
!2515 = !DILocation(line: 216, column: 10, scope: !2467)
!2516 = !DILocation(line: 217, column: 8, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 217, column: 7)
!2518 = !DILocation(line: 217, column: 7, scope: !2467)
!2519 = !DILocation(line: 220, column: 3, scope: !2467)
!2520 = distinct !DISubprogram(name: "expected_loop_iterations_unbounded", scope: !3, file: !3, line: 228, type: !2521, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!1652, !2133}
!2523 = !{!2524, !2525, !2526, !2527, !2530, !2531, !2532, !2534}
!2524 = !DILocalVariable(name: "loop", arg: 1, scope: !2520, file: !3, line: 228, type: !2133)
!2525 = !DILocalVariable(name: "e", scope: !2520, file: !3, line: 230, type: !543)
!2526 = !DILocalVariable(name: "ei", scope: !2520, file: !3, line: 231, type: !2170)
!2527 = !DILocalVariable(name: "count_in", scope: !2528, file: !3, line: 235, type: !1652)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 234, column: 5)
!2529 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 233, column: 7)
!2530 = !DILocalVariable(name: "count_latch", scope: !2528, file: !3, line: 235, type: !1652)
!2531 = !DILocalVariable(name: "expected", scope: !2528, file: !3, line: 235, type: !1652)
!2532 = !DILocalVariable(name: "freq_in", scope: !2533, file: !3, line: 255, type: !536)
!2533 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 254, column: 5)
!2534 = !DILocalVariable(name: "freq_latch", scope: !2533, file: !3, line: 255, type: !536)
!2535 = !DILocation(line: 0, scope: !2520)
!2536 = !DILocation(line: 230, column: 3, scope: !2520)
!2537 = !DILocation(line: 231, column: 3, scope: !2520)
!2538 = !DILocation(line: 233, column: 13, scope: !2529)
!2539 = !DILocation(line: 233, column: 20, scope: !2529)
!2540 = !DILocation(line: 233, column: 7, scope: !2529)
!2541 = !DILocation(line: 233, column: 26, scope: !2529)
!2542 = !DILocation(line: 0, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 240, column: 7)
!2544 = !DILocation(line: 240, column: 7, scope: !2543)
!2545 = !DILocation(line: 233, column: 35, scope: !2529)
!2546 = !DILocation(line: 233, column: 43, scope: !2529)
!2547 = !DILocation(line: 233, column: 29, scope: !2529)
!2548 = !DILocation(line: 233, column: 7, scope: !2520)
!2549 = !DILocation(line: 0, scope: !2528)
!2550 = !DILocation(line: 0, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 240, column: 7)
!2552 = !DILocation(line: 237, column: 16, scope: !2528)
!2553 = !DILocation(line: 240, column: 7, scope: !2551)
!2554 = !DILocation(line: 241, column: 6, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 241, column: 6)
!2556 = !DILocation(line: 241, column: 9, scope: !2555)
!2557 = !DILocation(line: 241, column: 22, scope: !2555)
!2558 = !DILocation(line: 241, column: 13, scope: !2555)
!2559 = !DILocation(line: 0, scope: !2555)
!2560 = !DILocation(line: 241, column: 6, scope: !2551)
!2561 = distinct !{!2561, !2544, !2562}
!2562 = !DILocation(line: 244, column: 19, scope: !2543)
!2563 = !DILocation(line: 246, column: 20, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 246, column: 11)
!2565 = !DILocation(line: 246, column: 11, scope: !2528)
!2566 = !DILocation(line: 247, column: 25, scope: !2564)
!2567 = !DILocation(line: 247, column: 2, scope: !2564)
!2568 = !DILocation(line: 249, column: 26, scope: !2564)
!2569 = !DILocation(line: 249, column: 37, scope: !2564)
!2570 = !DILocation(line: 249, column: 42, scope: !2564)
!2571 = !DILocation(line: 0, scope: !2533)
!2572 = !DILocation(line: 260, column: 7, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 260, column: 7)
!2574 = !DILocation(line: 0, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 260, column: 7)
!2576 = !DILocation(line: 257, column: 15, scope: !2533)
!2577 = !DILocation(line: 260, column: 7, scope: !2575)
!2578 = !DILocation(line: 261, column: 6, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 261, column: 6)
!2580 = !DILocation(line: 261, column: 9, scope: !2579)
!2581 = !DILocation(line: 261, column: 22, scope: !2579)
!2582 = !DILocation(line: 261, column: 13, scope: !2579)
!2583 = !DILocation(line: 0, scope: !2579)
!2584 = !DILocation(line: 261, column: 6, scope: !2575)
!2585 = distinct !{!2585, !2572, !2586}
!2586 = !DILocation(line: 264, column: 15, scope: !2573)
!2587 = !DILocation(line: 266, column: 19, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 266, column: 11)
!2589 = !DILocation(line: 266, column: 11, scope: !2533)
!2590 = !DILocation(line: 267, column: 20, scope: !2588)
!2591 = !DILocation(line: 267, column: 9, scope: !2588)
!2592 = !DILocation(line: 267, column: 2, scope: !2588)
!2593 = !DILocation(line: 269, column: 26, scope: !2533)
!2594 = !DILocation(line: 269, column: 36, scope: !2533)
!2595 = !DILocation(line: 269, column: 41, scope: !2533)
!2596 = !DILocation(line: 269, column: 14, scope: !2533)
!2597 = !DILocation(line: 269, column: 7, scope: !2533)
!2598 = !DILocation(line: 0, scope: !2529)
!2599 = !DILocation(line: 271, column: 1, scope: !2520)
!2600 = distinct !DISubprogram(name: "expected_loop_iterations", scope: !3, file: !3, line: 277, type: !2397, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2601)
!2601 = !{!2602, !2603}
!2602 = !DILocalVariable(name: "loop", arg: 1, scope: !2600, file: !3, line: 277, type: !2133)
!2603 = !DILocalVariable(name: "expected", scope: !2600, file: !3, line: 279, type: !1652)
!2604 = !DILocation(line: 0, scope: !2600)
!2605 = !DILocation(line: 279, column: 24, scope: !2600)
!2606 = !DILocation(line: 280, column: 11, scope: !2600)
!2607 = !DILocation(line: 280, column: 10, scope: !2600)
!2608 = !DILocation(line: 280, column: 3, scope: !2600)
!2609 = distinct !DISubprogram(name: "get_loop_level", scope: !3, file: !3, line: 286, type: !2397, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2610)
!2610 = !{!2611, !2612, !2613, !2614}
!2611 = !DILocalVariable(name: "loop", arg: 1, scope: !2609, file: !3, line: 286, type: !2133)
!2612 = !DILocalVariable(name: "ploop", scope: !2609, file: !3, line: 288, type: !2133)
!2613 = !DILocalVariable(name: "mx", scope: !2609, file: !3, line: 289, type: !7)
!2614 = !DILocalVariable(name: "l", scope: !2609, file: !3, line: 289, type: !7)
!2615 = !DILocation(line: 0, scope: !2609)
!2616 = !DILocation(line: 291, column: 22, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 291, column: 3)
!2618 = !DILocation(line: 291, column: 8, scope: !2617)
!2619 = !DILocation(line: 0, scope: !2617)
!2620 = !DILocation(line: 291, column: 3, scope: !2617)
!2621 = !DILocation(line: 293, column: 11, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 292, column: 5)
!2623 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 291, column: 3)
!2624 = !DILocation(line: 294, column: 13, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 294, column: 11)
!2626 = !DILocation(line: 295, column: 9, scope: !2625)
!2627 = !DILocation(line: 294, column: 11, scope: !2622)
!2628 = !DILocation(line: 291, column: 51, scope: !2623)
!2629 = !DILocation(line: 291, column: 3, scope: !2623)
!2630 = distinct !{!2630, !2620, !2631}
!2631 = !DILocation(line: 296, column: 5, scope: !2617)
!2632 = !DILocation(line: 297, column: 3, scope: !2609)
!2633 = distinct !DISubprogram(name: "init_set_costs", scope: !3, file: !3, line: 334, type: !2634, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2636)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{null}
!2636 = !{!2637, !2638, !2639, !2640, !2641, !2642, !2643}
!2637 = !DILocalVariable(name: "speed", scope: !2633, file: !3, line: 336, type: !536)
!2638 = !DILocalVariable(name: "seq", scope: !2633, file: !3, line: 337, type: !774)
!2639 = !DILocalVariable(name: "reg1", scope: !2633, file: !3, line: 338, type: !774)
!2640 = !DILocalVariable(name: "reg2", scope: !2633, file: !3, line: 339, type: !774)
!2641 = !DILocalVariable(name: "addr", scope: !2633, file: !3, line: 340, type: !774)
!2642 = !DILocalVariable(name: "mem", scope: !2633, file: !3, line: 341, type: !774)
!2643 = !DILocalVariable(name: "i", scope: !2633, file: !3, line: 342, type: !7)
!2644 = !DILocation(line: 338, column: 14, scope: !2633)
!2645 = !DILocation(line: 0, scope: !2633)
!2646 = !DILocation(line: 339, column: 14, scope: !2633)
!2647 = !DILocation(line: 340, column: 14, scope: !2633)
!2648 = !DILocation(line: 341, column: 27, scope: !2633)
!2649 = !DILocation(line: 341, column: 13, scope: !2633)
!2650 = !DILocation(line: 344, column: 21, scope: !2633)
!2651 = !DILocation(line: 0, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 346, column: 9)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 345, column: 3)
!2654 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 345, column: 3)
!2655 = !DILocation(line: 345, column: 8, scope: !2654)
!2656 = !DILocation(line: 345, column: 17, scope: !2653)
!2657 = !DILocation(line: 345, column: 3, scope: !2654)
!2658 = !DILocation(line: 346, column: 9, scope: !2652)
!2659 = !DILocation(line: 347, column: 2, scope: !2652)
!2660 = !DILocation(line: 347, column: 6, scope: !2652)
!2661 = !DILocation(line: 346, column: 9, scope: !2653)
!2662 = !DILocation(line: 348, column: 24, scope: !2652)
!2663 = !DILocation(line: 348, column: 7, scope: !2652)
!2664 = !DILocation(line: 345, column: 43, scope: !2653)
!2665 = !DILocation(line: 345, column: 3, scope: !2653)
!2666 = distinct !{!2666, !2657, !2667}
!2667 = !DILocation(line: 348, column: 24, scope: !2654)
!2668 = !DILocation(line: 350, column: 19, scope: !2633)
!2669 = !DILocation(line: 352, column: 8, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 352, column: 3)
!2671 = !DILocation(line: 0, scope: !2670)
!2672 = !DILocation(line: 352, column: 25, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 352, column: 3)
!2674 = !DILocation(line: 352, column: 3, scope: !2670)
!2675 = !DILocation(line: 354, column: 32, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 353, column: 6)
!2677 = !DILocation(line: 354, column: 30, scope: !2676)
!2678 = !DILocation(line: 364, column: 7, scope: !2676)
!2679 = !DILocation(line: 365, column: 7, scope: !2676)
!2680 = !DILocation(line: 366, column: 13, scope: !2676)
!2681 = !DILocation(line: 367, column: 7, scope: !2676)
!2682 = !DILocation(line: 368, column: 33, scope: !2676)
!2683 = !DILocation(line: 368, column: 7, scope: !2676)
!2684 = !DILocation(line: 368, column: 31, scope: !2676)
!2685 = !DILocation(line: 370, column: 7, scope: !2676)
!2686 = !DILocation(line: 371, column: 7, scope: !2676)
!2687 = !DILocation(line: 372, column: 7, scope: !2676)
!2688 = !DILocation(line: 373, column: 13, scope: !2676)
!2689 = !DILocation(line: 374, column: 7, scope: !2676)
!2690 = !DILocation(line: 375, column: 35, scope: !2676)
!2691 = !DILocation(line: 375, column: 7, scope: !2676)
!2692 = !DILocation(line: 375, column: 33, scope: !2676)
!2693 = !DILocation(line: 352, column: 35, scope: !2673)
!2694 = !DILocation(line: 352, column: 3, scope: !2673)
!2695 = distinct !{!2695, !2674, !2696}
!2696 = !DILocation(line: 376, column: 5, scope: !2670)
!2697 = !DILocation(line: 377, column: 3, scope: !2633)
!2698 = !DILocation(line: 378, column: 1, scope: !2633)
!2699 = distinct !DISubprogram(name: "seq_cost", scope: !3, file: !3, line: 303, type: !2700, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2705)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!7, !2702, !535}
!2702 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !544, line: 51, baseType: !2703)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!2705 = !{!2706, !2707, !2708, !2709}
!2706 = !DILocalVariable(name: "seq", arg: 1, scope: !2699, file: !3, line: 303, type: !2702)
!2707 = !DILocalVariable(name: "speed", arg: 2, scope: !2699, file: !3, line: 303, type: !535)
!2708 = !DILocalVariable(name: "cost", scope: !2699, file: !3, line: 305, type: !7)
!2709 = !DILocalVariable(name: "set", scope: !2699, file: !3, line: 306, type: !774)
!2710 = !DILocation(line: 0, scope: !2699)
!2711 = !DILocation(line: 308, column: 3, scope: !2699)
!2712 = !DILocation(line: 308, column: 3, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 308, column: 3)
!2714 = !DILocation(line: 310, column: 13, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 309, column: 5)
!2716 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 308, column: 3)
!2717 = !DILocation(line: 311, column: 11, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2715, file: !3, line: 311, column: 11)
!2719 = !DILocation(line: 311, column: 11, scope: !2715)
!2720 = !DILocation(line: 312, column: 10, scope: !2718)
!2721 = !DILocation(line: 312, column: 2, scope: !2718)
!2722 = !DILocation(line: 0, scope: !2718)
!2723 = !DILocation(line: 308, column: 21, scope: !2716)
!2724 = !DILocation(line: 308, column: 3, scope: !2716)
!2725 = distinct !{!2725, !2712, !2726}
!2726 = !DILocation(line: 315, column: 5, scope: !2713)
!2727 = !DILocation(line: 317, column: 3, scope: !2699)
!2728 = distinct !DISubprogram(name: "estimate_reg_pressure_cost", scope: !3, file: !3, line: 385, type: !2729, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2731)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!7, !7, !7, !535}
!2731 = !{!2732, !2733, !2734, !2735, !2736}
!2732 = !DILocalVariable(name: "n_new", arg: 1, scope: !2728, file: !3, line: 385, type: !7)
!2733 = !DILocalVariable(name: "n_old", arg: 2, scope: !2728, file: !3, line: 385, type: !7)
!2734 = !DILocalVariable(name: "speed", arg: 3, scope: !2728, file: !3, line: 385, type: !535)
!2735 = !DILocalVariable(name: "cost", scope: !2728, file: !3, line: 387, type: !7)
!2736 = !DILocalVariable(name: "regs_needed", scope: !2728, file: !3, line: 388, type: !7)
!2737 = !DILocation(line: 0, scope: !2728)
!2738 = !DILocation(line: 388, column: 32, scope: !2728)
!2739 = !DILocation(line: 392, column: 21, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 392, column: 7)
!2741 = !DILocation(line: 392, column: 19, scope: !2740)
!2742 = !DILocation(line: 392, column: 40, scope: !2740)
!2743 = !DILocation(line: 392, column: 37, scope: !2740)
!2744 = !DILocation(line: 392, column: 7, scope: !2728)
!2745 = !DILocation(line: 395, column: 19, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 395, column: 7)
!2747 = !DILocation(line: 0, scope: !2746)
!2748 = !DILocation(line: 395, column: 7, scope: !2728)
!2749 = !DILocation(line: 398, column: 5, scope: !2746)
!2750 = !DILocation(line: 404, column: 7, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 404, column: 7)
!2752 = !DILocation(line: 404, column: 16, scope: !2751)
!2753 = !DILocation(line: 404, column: 20, scope: !2751)
!2754 = !DILocation(line: 405, column: 6, scope: !2751)
!2755 = !DILocation(line: 406, column: 10, scope: !2751)
!2756 = !DILocation(line: 406, column: 43, scope: !2751)
!2757 = !DILocation(line: 406, column: 29, scope: !2751)
!2758 = !DILocation(line: 404, column: 7, scope: !2728)
!2759 = !DILocation(line: 411, column: 10, scope: !2751)
!2760 = !DILocation(line: 411, column: 5, scope: !2751)
!2761 = !DILocation(line: 414, column: 1, scope: !2728)
!2762 = distinct !DISubprogram(name: "mark_loop_exit_edges", scope: !3, file: !3, line: 419, type: !2634, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2763)
!2763 = !{!2764, !2765, !2766}
!2764 = !DILocalVariable(name: "bb", scope: !2762, file: !3, line: 421, type: !1063)
!2765 = !DILocalVariable(name: "e", scope: !2762, file: !3, line: 422, type: !543)
!2766 = !DILocalVariable(name: "ei", scope: !2767, file: !3, line: 429, type: !2170)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 428, column: 5)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 427, column: 3)
!2769 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 427, column: 3)
!2770 = !DILocation(line: 422, column: 3, scope: !2762)
!2771 = !DILocation(line: 424, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 424, column: 7)
!2773 = !DILocation(line: 424, column: 26, scope: !2772)
!2774 = !DILocation(line: 424, column: 7, scope: !2762)
!2775 = !DILocation(line: 427, column: 3, scope: !2769)
!2776 = !DILocation(line: 0, scope: !2767)
!2777 = !DILocation(line: 0, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 431, column: 7)
!2779 = !DILocation(line: 0, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 431, column: 7)
!2781 = !DILocation(line: 427, column: 3, scope: !2768)
!2782 = !DILocation(line: 0, scope: !2769)
!2783 = !DILocation(line: 0, scope: !2762)
!2784 = !DILocation(line: 429, column: 7, scope: !2767)
!2785 = !DILocation(line: 431, column: 7, scope: !2778)
!2786 = !DILocation(line: 0, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 433, column: 8)
!2788 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 432, column: 2)
!2789 = !DILocation(line: 431, column: 7, scope: !2780)
!2790 = !DILocation(line: 433, column: 24, scope: !2787)
!2791 = !DILocation(line: 433, column: 8, scope: !2787)
!2792 = !DILocation(line: 434, column: 8, scope: !2787)
!2793 = !DILocation(line: 434, column: 33, scope: !2787)
!2794 = !DILocation(line: 434, column: 46, scope: !2787)
!2795 = !DILocation(line: 434, column: 11, scope: !2787)
!2796 = !DILocation(line: 433, column: 8, scope: !2788)
!2797 = !DILocation(line: 435, column: 6, scope: !2787)
!2798 = !DILocation(line: 435, column: 9, scope: !2787)
!2799 = !DILocation(line: 435, column: 15, scope: !2787)
!2800 = !DILocation(line: 437, column: 6, scope: !2787)
!2801 = !DILocation(line: 437, column: 9, scope: !2787)
!2802 = !DILocation(line: 437, column: 15, scope: !2787)
!2803 = distinct !{!2803, !2785, !2804}
!2804 = !DILocation(line: 438, column: 2, scope: !2778)
!2805 = !DILocation(line: 439, column: 5, scope: !2768)
!2806 = !DILocation(line: 0, scope: !2768)
!2807 = distinct !{!2807, !2775, !2808}
!2808 = !DILocation(line: 439, column: 5, scope: !2769)
!2809 = !DILocation(line: 440, column: 1, scope: !2762)
!2810 = distinct !DISubprogram(name: "loop_outer", scope: !378, file: !378, line: 434, type: !2811, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!570, !2133}
!2813 = !{!2814, !2815}
!2814 = !DILocalVariable(name: "loop", arg: 1, scope: !2810, file: !378, line: 434, type: !2133)
!2815 = !DILocalVariable(name: "n", scope: !2810, file: !378, line: 436, type: !7)
!2816 = !DILocation(line: 0, scope: !2810)
!2817 = !DILocation(line: 436, column: 16, scope: !2810)
!2818 = !DILocation(line: 438, column: 9, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2810, file: !378, line: 438, column: 7)
!2820 = !DILocation(line: 438, column: 7, scope: !2810)
!2821 = !DILocation(line: 441, column: 10, scope: !2810)
!2822 = !DILocation(line: 441, column: 3, scope: !2810)
!2823 = !DILocation(line: 442, column: 1, scope: !2810)
!2824 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !378, file: !378, line: 85, type: !2825, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!7, !2407}
!2827 = !{!2828}
!2828 = !DILocalVariable(name: "vec_", arg: 1, scope: !2824, file: !378, line: 85, type: !2407)
!2829 = !DILocation(line: 0, scope: !2824)
!2830 = !DILocation(line: 85, column: 1, scope: !2824)
!2831 = distinct !DISubprogram(name: "ei_end_p", scope: !135, file: !135, line: 721, type: !2832, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2834)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!535, !2170}
!2834 = !{!2835}
!2835 = !DILocalVariable(name: "i", arg: 1, scope: !2831, file: !135, line: 721, type: !2170)
!2836 = !DILocation(line: 723, column: 22, scope: !2831)
!2837 = !DILocation(line: 723, column: 19, scope: !2831)
!2838 = !DILocation(line: 723, column: 10, scope: !2831)
!2839 = !DILocation(line: 723, column: 3, scope: !2831)
!2840 = distinct !DISubprogram(name: "ei_edge", scope: !135, file: !135, line: 752, type: !2841, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2843)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!543, !2170}
!2843 = !{!2844}
!2844 = !DILocalVariable(name: "i", arg: 1, scope: !2840, file: !135, line: 752, type: !2170)
!2845 = !DILocation(line: 754, column: 10, scope: !2840)
!2846 = !DILocation(line: 754, column: 3, scope: !2840)
!2847 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !135, file: !135, line: 150, type: !2848, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2852)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!7, !2850}
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!2852 = !{!2853}
!2853 = !DILocalVariable(name: "vec_", arg: 1, scope: !2847, file: !135, line: 150, type: !2850)
!2854 = !DILocation(line: 0, scope: !2847)
!2855 = !DILocation(line: 150, column: 1, scope: !2847)
!2856 = distinct !DISubprogram(name: "ei_container", scope: !135, file: !135, line: 685, type: !2857, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!553, !2170}
!2859 = !{!2860}
!2860 = !DILocalVariable(name: "i", arg: 1, scope: !2856, file: !135, line: 685, type: !2170)
!2861 = !DILocation(line: 687, column: 3, scope: !2856)
!2862 = !DILocation(line: 688, column: 10, scope: !2856)
!2863 = !DILocation(line: 688, column: 3, scope: !2856)
!2864 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !135, file: !135, line: 150, type: !2865, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!543, !2850, !7}
!2867 = !{!2868, !2869}
!2868 = !DILocalVariable(name: "vec_", arg: 1, scope: !2864, file: !135, line: 150, type: !2850)
!2869 = !DILocalVariable(name: "ix_", arg: 2, scope: !2864, file: !135, line: 150, type: !7)
!2870 = !DILocation(line: 0, scope: !2864)
!2871 = !DILocation(line: 150, column: 1, scope: !2864)
