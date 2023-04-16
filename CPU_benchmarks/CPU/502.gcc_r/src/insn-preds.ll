; ModuleID = 'insn-preds.bc'
source_filename = "insn-preds.c"
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
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.VEC_temp_slot_p_gc = type { %struct.VEC_temp_slot_p_base }
%struct.VEC_temp_slot_p_base = type { i32, i32, [1 x %struct.temp_slot*] }
%struct.temp_slot = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.ix86_address = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, i32 }
%struct.mem_attrs = type { %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32, i8 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@const_int_rtx = external dso_local local_unnamed_addr global [129 x %struct.rtx_def*], align 16
@ix86_tune_features = external dso_local local_unnamed_addr global [62 x i8], align 16
@.str = private unnamed_addr constant [3 x i8] c"Y2\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Yi\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Ym\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Yz\00", align 1
@target_flags = external dso_local local_unnamed_addr global i32, align 4
@ix86_isa_flags = external dso_local local_unnamed_addr global i32, align 4
@ix86_cmodel = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"insn-preds.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_pic = external dso_local local_unnamed_addr global i32, align 4
@internal_label_prefix = external dso_local global [16 x i8], align 16
@internal_label_prefix_len = external dso_local local_unnamed_addr global i32, align 4
@global_rtl = external dso_local local_unnamed_addr global [11 x %struct.rtx_def*], align 16
@reload_in_progress = external dso_local local_unnamed_addr global i32, align 4
@reload_completed = external dso_local local_unnamed_addr global i32, align 4
@reg_renumber = external dso_local local_unnamed_addr global i16*, align 8
@const_tiny_rtx = external dso_local local_unnamed_addr global [3 x [87 x %struct.rtx_def*]], align 16
@mode_inner = external dso_local local_unnamed_addr constant [87 x i8], align 16
@mode_nunits = external dso_local local_unnamed_addr constant [87 x i8], align 16
@x_rtl = external dso_local local_unnamed_addr global %struct.rtl_data, align 8

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
define dso_local i32 @any_fp_register_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2130 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2134, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2135, metadata !DIExpression()), !dbg !2136
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2137
  %bf.load = load i32, i32* %0, align 8, !dbg !2137
  %bf.clear = and i32 %bf.load, 65535, !dbg !2137
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !2138
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !2139

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op) #7, !dbg !2140
  %1 = and i32 %call, -8, !dbg !2140
  %cmp1 = icmp eq i32 %1, 8, !dbg !2140
  br i1 %cmp1, label %land.rhs, label %lor.lhs.false, !dbg !2140

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call3 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op) #7, !dbg !2140
  %conv4 = zext i32 %call3 to i64, !dbg !2140
  %sub5 = add nsw i64 %conv4, -21, !dbg !2140
  %cmp6 = icmp ult i64 %sub5, 8, !dbg !2140
  br i1 %cmp6, label %land.rhs, label %lor.lhs.false8, !dbg !2140

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call9 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op) #7, !dbg !2140
  %conv10 = zext i32 %call9 to i64, !dbg !2140
  %sub11 = add nsw i64 %conv10, -45, !dbg !2140
  %cmp12 = icmp ult i64 %sub11, 8, !dbg !2140
  br i1 %cmp12, label %land.rhs, label %land.end, !dbg !2141

land.rhs:                                         ; preds = %lor.lhs.false8, %lor.lhs.false, %land.lhs.true
  %cmp14 = icmp eq i32 %mode, 0, !dbg !2142
  br i1 %cmp14, label %land.end, label %lor.rhs, !dbg !2143

lor.rhs:                                          ; preds = %land.rhs
  %bf.load16 = load i32, i32* %0, align 8, !dbg !2144
  %bf.lshr = lshr i32 %bf.load16, 16, !dbg !2144
  %bf.clear17 = and i32 %bf.lshr, 255, !dbg !2144
  %cmp18 = icmp eq i32 %bf.clear17, %mode, !dbg !2145
  %phitmp = zext i1 %cmp18 to i32, !dbg !2143
  br label %land.end, !dbg !2143

land.end:                                         ; preds = %land.rhs, %lor.rhs, %lor.lhs.false8, %entry
  %2 = phi i32 [ 0, %lor.lhs.false8 ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %2, !dbg !2146
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !2147 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2154, metadata !DIExpression()), !dbg !2155
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2156
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !2156
  %0 = load i32, i32* %rt_uint, align 8, !dbg !2156
  ret i32 %0, !dbg !2157
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fp_register_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2158 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2160, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2161, metadata !DIExpression()), !dbg !2162
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2163
  %bf.load = load i32, i32* %0, align 8, !dbg !2163
  %bf.clear = and i32 %bf.load, 65535, !dbg !2163
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !2164
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !2165

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op) #7, !dbg !2166
  %1 = and i32 %call, -8, !dbg !2166
  %cmp1 = icmp eq i32 %1, 8, !dbg !2166
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !2167

land.rhs:                                         ; preds = %land.lhs.true
  %cmp3 = icmp eq i32 %mode, 0, !dbg !2168
  br i1 %cmp3, label %land.end, label %lor.rhs, !dbg !2169

lor.rhs:                                          ; preds = %land.rhs
  %bf.load5 = load i32, i32* %0, align 8, !dbg !2170
  %bf.lshr = lshr i32 %bf.load5, 16, !dbg !2170
  %bf.clear6 = and i32 %bf.lshr, 255, !dbg !2170
  %cmp7 = icmp eq i32 %bf.clear6, %mode, !dbg !2171
  %phitmp = zext i1 %cmp7 to i32, !dbg !2169
  br label %land.end, !dbg !2169

land.end:                                         ; preds = %land.rhs, %lor.rhs, %land.lhs.true, %entry
  %2 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %2, !dbg !2172
}

; Function Attrs: nounwind uwtable
define dso_local i32 @register_and_not_any_fp_reg_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2173 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2175, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2176, metadata !DIExpression()), !dbg !2177
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2178
  %bf.load = load i32, i32* %0, align 8, !dbg !2178
  %bf.clear = and i32 %bf.load, 65535, !dbg !2178
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !2179
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !2180

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op) #7, !dbg !2181
  %1 = and i32 %call, -8, !dbg !2181
  %cmp1 = icmp eq i32 %1, 8, !dbg !2181
  br i1 %cmp1, label %land.end, label %lor.lhs.false, !dbg !2181

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call3 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op) #7, !dbg !2181
  %conv4 = zext i32 %call3 to i64, !dbg !2181
  %sub5 = add nsw i64 %conv4, -21, !dbg !2181
  %cmp6 = icmp ult i64 %sub5, 8, !dbg !2181
  br i1 %cmp6, label %land.end, label %lor.lhs.false8, !dbg !2181

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call9 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op) #7, !dbg !2181
  %conv10 = zext i32 %call9 to i64, !dbg !2181
  %sub11 = add nsw i64 %conv10, -45, !dbg !2181
  %cmp12 = icmp ult i64 %sub11, 8, !dbg !2181
  br i1 %cmp12, label %land.end, label %land.rhs, !dbg !2182

land.rhs:                                         ; preds = %lor.lhs.false8
  %cmp14 = icmp eq i32 %mode, 0, !dbg !2183
  br i1 %cmp14, label %land.end, label %lor.rhs, !dbg !2184

lor.rhs:                                          ; preds = %land.rhs
  %bf.load16 = load i32, i32* %0, align 8, !dbg !2185
  %bf.lshr = lshr i32 %bf.load16, 16, !dbg !2185
  %bf.clear17 = and i32 %bf.lshr, 255, !dbg !2185
  %cmp18 = icmp eq i32 %bf.clear17, %mode, !dbg !2186
  %phitmp = zext i1 %cmp18 to i32, !dbg !2184
  br label %land.end, !dbg !2184

land.end:                                         ; preds = %land.rhs, %lor.rhs, %lor.lhs.false8, %lor.lhs.false, %land.lhs.true, %entry
  %2 = phi i32 [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %2, !dbg !2187
}

; Function Attrs: nounwind uwtable
define dso_local i32 @register_and_not_fp_reg_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2188 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2190, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2191, metadata !DIExpression()), !dbg !2192
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2193
  %bf.load = load i32, i32* %0, align 8, !dbg !2193
  %bf.clear = and i32 %bf.load, 65535, !dbg !2193
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !2194
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !2195

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op) #7, !dbg !2196
  %1 = and i32 %call, -8, !dbg !2196
  %cmp1 = icmp eq i32 %1, 8, !dbg !2196
  br i1 %cmp1, label %land.end, label %land.rhs, !dbg !2197

land.rhs:                                         ; preds = %land.lhs.true
  %cmp3 = icmp eq i32 %mode, 0, !dbg !2198
  br i1 %cmp3, label %land.end, label %lor.rhs, !dbg !2199

lor.rhs:                                          ; preds = %land.rhs
  %bf.load5 = load i32, i32* %0, align 8, !dbg !2200
  %bf.lshr = lshr i32 %bf.load5, 16, !dbg !2200
  %bf.clear6 = and i32 %bf.lshr, 255, !dbg !2200
  %cmp7 = icmp eq i32 %bf.clear6, %mode, !dbg !2201
  %phitmp = zext i1 %cmp7 to i32, !dbg !2199
  br label %land.end, !dbg !2199

land.end:                                         ; preds = %land.rhs, %lor.rhs, %land.lhs.true, %entry
  %2 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %2, !dbg !2202
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mmx_reg_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2203 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2205, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2206, metadata !DIExpression()), !dbg !2207
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2208
  %bf.load = load i32, i32* %0, align 8, !dbg !2208
  %bf.clear = and i32 %bf.load, 65535, !dbg !2208
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !2209
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !2210

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op) #7, !dbg !2211
  %conv = zext i32 %call to i64, !dbg !2211
  %sub = add nsw i64 %conv, -29, !dbg !2211
  %cmp1 = icmp ult i64 %sub, 8, !dbg !2211
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !2212

land.rhs:                                         ; preds = %land.lhs.true
  %cmp3 = icmp eq i32 %mode, 0, !dbg !2213
  br i1 %cmp3, label %land.end, label %lor.rhs, !dbg !2214

lor.rhs:                                          ; preds = %land.rhs
  %bf.load5 = load i32, i32* %0, align 8, !dbg !2215
  %bf.lshr = lshr i32 %bf.load5, 16, !dbg !2215
  %bf.clear6 = and i32 %bf.lshr, 255, !dbg !2215
  %cmp7 = icmp eq i32 %bf.clear6, %mode, !dbg !2216
  %phitmp = zext i1 %cmp7 to i32, !dbg !2214
  br label %land.end, !dbg !2214

land.end:                                         ; preds = %land.rhs, %lor.rhs, %land.lhs.true, %entry
  %1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !2217
}

; Function Attrs: nounwind uwtable
define dso_local i32 @q_regs_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2218 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2220, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2221, metadata !DIExpression()), !dbg !2222
  %call = tail call i32 @register_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !2223
  %tobool = icmp eq i32 %call, 0, !dbg !2223
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2224

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @q_regs_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2225
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2224
  %phitmp = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %0, !dbg !2226
}

declare dso_local i32 @register_operand(%struct.rtx_def*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @q_regs_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !2227 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2229, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2230, metadata !DIExpression()), !dbg !2231
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2232
  %bf.load = load i32, i32* %0, align 8, !dbg !2232
  %bf.clear = and i32 %bf.load, 65535, !dbg !2232
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !2234
  br i1 %cmp, label %if.then, label %if.end, !dbg !2235

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2236
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2236
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2236
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !2229, metadata !DIExpression()), !dbg !2231
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !2231
  %bf.load1.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !2237
  br label %if.end, !dbg !2238

if.end:                                           ; preds = %if.then, %entry
  %bf.load1 = phi i32 [ %bf.load1.pre, %if.then ], [ %bf.load, %entry ], !dbg !2237
  %op.addr.0 = phi %struct.rtx_def* [ %1, %if.then ], [ %op, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op.addr.0, metadata !2229, metadata !DIExpression()), !dbg !2231
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !2237
  %cmp3 = icmp eq i32 %bf.clear2, 37, !dbg !2237
  br i1 %cmp3, label %land.rhs, label %land.end, !dbg !2237

land.rhs:                                         ; preds = %if.end
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op.addr.0) #7, !dbg !2237
  %cmp4 = icmp ult i32 %call, 4, !dbg !2237
  %phitmp = zext i1 %cmp4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %2 = phi i32 [ 0, %if.end ], [ %phitmp, %land.rhs ]
  ret i32 %2, !dbg !2239
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ext_register_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2240 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2242, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2243, metadata !DIExpression()), !dbg !2244
  %call = tail call i32 @register_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !2245
  %tobool = icmp eq i32 %call, 0, !dbg !2245
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2246

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @ext_register_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2247
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2246
  %phitmp = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %0, !dbg !2248
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ext_register_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !2249 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2251, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2252, metadata !DIExpression()), !dbg !2253
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2254
  %bf.load = load i32, i32* %0, align 8, !dbg !2254
  %bf.clear = and i32 %bf.load, 16711680, !dbg !2254
  %cmp = icmp eq i32 %bf.clear, 1048576, !dbg !2256
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !2257

land.lhs.true:                                    ; preds = %entry
  %cmp4 = icmp eq i32 %bf.clear, 983040, !dbg !2258
  br i1 %cmp4, label %if.end, label %return, !dbg !2259

if.end:                                           ; preds = %land.lhs.true, %entry
  %bf.clear6 = and i32 %bf.load, 65535, !dbg !2260
  %cmp7 = icmp eq i32 %bf.clear6, 39, !dbg !2262
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2263

if.then8:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2264
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2264
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2264
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !2251, metadata !DIExpression()), !dbg !2253
  br label %if.end9, !dbg !2265

if.end9:                                          ; preds = %if.then8, %if.end
  %op.addr.0 = phi %struct.rtx_def* [ %1, %if.then8 ], [ %op, %if.end ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op.addr.0, metadata !2251, metadata !DIExpression()), !dbg !2253
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op.addr.0) #7, !dbg !2266
  %cmp10 = icmp ugt i32 %call, 57, !dbg !2267
  br i1 %cmp10, label %lor.end, label %lor.rhs, !dbg !2268

lor.rhs:                                          ; preds = %if.end9
  %call11 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op.addr.0) #7, !dbg !2269
  %cmp12 = icmp ult i32 %call11, 4, !dbg !2270
  %phitmp = zext i1 %cmp12 to i32, !dbg !2268
  br label %lor.end, !dbg !2268

lor.end:                                          ; preds = %lor.rhs, %if.end9
  %2 = phi i32 [ 1, %if.end9 ], [ %phitmp, %lor.rhs ]
  br label %return, !dbg !2271

return:                                           ; preds = %land.lhs.true, %lor.end
  %retval.0 = phi i32 [ %2, %lor.end ], [ 0, %land.lhs.true ], !dbg !2253
  ret i32 %retval.0, !dbg !2272
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ax_reg_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2273 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2275, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2276, metadata !DIExpression()), !dbg !2277
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2278
  %bf.load = load i32, i32* %0, align 8, !dbg !2278
  %bf.clear = and i32 %bf.load, 65535, !dbg !2278
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !2279
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !2280

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op) #7, !dbg !2281
  %cmp1 = icmp eq i32 %call, 0, !dbg !2282
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !2283

land.rhs:                                         ; preds = %land.lhs.true
  %cmp2 = icmp eq i32 %mode, 0, !dbg !2284
  br i1 %cmp2, label %land.end, label %lor.rhs, !dbg !2285

lor.rhs:                                          ; preds = %land.rhs
  %bf.load3 = load i32, i32* %0, align 8, !dbg !2286
  %bf.lshr = lshr i32 %bf.load3, 16, !dbg !2286
  %bf.clear4 = and i32 %bf.lshr, 255, !dbg !2286
  %cmp5 = icmp eq i32 %bf.clear4, %mode, !dbg !2287
  %phitmp = zext i1 %cmp5 to i32, !dbg !2285
  br label %land.end, !dbg !2285

land.end:                                         ; preds = %land.rhs, %lor.rhs, %land.lhs.true, %entry
  %1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !2288
}

; Function Attrs: nounwind uwtable
define dso_local i32 @flags_reg_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2289 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2291, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2292, metadata !DIExpression()), !dbg !2293
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2294
  %bf.load = load i32, i32* %0, align 8, !dbg !2294
  %bf.clear = and i32 %bf.load, 65535, !dbg !2294
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !2295
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !2296

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op) #7, !dbg !2297
  %cmp1 = icmp eq i32 %call, 17, !dbg !2298
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !2299

land.rhs:                                         ; preds = %land.lhs.true
  %cmp2 = icmp eq i32 %mode, 0, !dbg !2300
  br i1 %cmp2, label %land.end, label %lor.rhs, !dbg !2301

lor.rhs:                                          ; preds = %land.rhs
  %bf.load3 = load i32, i32* %0, align 8, !dbg !2302
  %bf.lshr = lshr i32 %bf.load3, 16, !dbg !2302
  %bf.clear4 = and i32 %bf.lshr, 255, !dbg !2302
  %cmp5 = icmp eq i32 %bf.clear4, %mode, !dbg !2303
  %phitmp = zext i1 %cmp5 to i32, !dbg !2301
  br label %land.end, !dbg !2301

land.end:                                         ; preds = %land.rhs, %lor.rhs, %land.lhs.true, %entry
  %1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !2304
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ext_QIreg_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2305 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2307, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2308, metadata !DIExpression()), !dbg !2309
  ret i32 0, !dbg !2310
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ext_QIreg_nomode_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2311 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2313, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2314, metadata !DIExpression()), !dbg !2315
  ret i32 0, !dbg !2316
}

; Function Attrs: nounwind uwtable
define dso_local i32 @reg_not_xmm0_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2317 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2319, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2320, metadata !DIExpression()), !dbg !2321
  %call = tail call i32 @register_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !2322
  %tobool = icmp eq i32 %call, 0, !dbg !2322
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2323

land.rhs:                                         ; preds = %entry
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2324
  %bf.load = load i32, i32* %0, align 8, !dbg !2324
  %bf.clear = and i32 %bf.load, 65535, !dbg !2324
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !2324
  br i1 %cmp, label %lor.rhs, label %land.end, !dbg !2325

lor.rhs:                                          ; preds = %land.rhs
  %call1 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op) #7, !dbg !2326
  %cmp2 = icmp ne i32 %call1, 21, !dbg !2327
  %phitmp = zext i1 %cmp2 to i32, !dbg !2325
  br label %land.end, !dbg !2325

land.end:                                         ; preds = %entry, %land.rhs, %lor.rhs
  %1 = phi i32 [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !2328
}

; Function Attrs: nounwind uwtable
define dso_local i32 @nonimm_not_xmm0_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2329 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2331, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2332, metadata !DIExpression()), !dbg !2333
  %call = tail call i32 @nonimmediate_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !2334
  %tobool = icmp eq i32 %call, 0, !dbg !2334
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2335

land.rhs:                                         ; preds = %entry
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2336
  %bf.load = load i32, i32* %0, align 8, !dbg !2336
  %bf.clear = and i32 %bf.load, 65535, !dbg !2336
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !2336
  br i1 %cmp, label %lor.rhs, label %land.end, !dbg !2337

lor.rhs:                                          ; preds = %land.rhs
  %call1 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op) #7, !dbg !2338
  %cmp2 = icmp ne i32 %call1, 21, !dbg !2339
  %phitmp = zext i1 %cmp2 to i32, !dbg !2337
  br label %land.end, !dbg !2337

land.end:                                         ; preds = %entry, %land.rhs, %lor.rhs
  %1 = phi i32 [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !2340
}

declare dso_local i32 @nonimmediate_operand(%struct.rtx_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @x86_64_immediate_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2341 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2343, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2344, metadata !DIExpression()), !dbg !2345
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2346
  %bf.load = load i32, i32* %0, align 8, !dbg !2346
  %trunc = trunc i32 %bf.load to i16, !dbg !2347
  switch i16 %trunc, label %return [
    i16 30, label %sw.epilog
    i16 45, label %sw.epilog
    i16 44, label %sw.epilog
    i16 35, label %sw.epilog
  ], !dbg !2347

sw.epilog:                                        ; preds = %entry, %entry, %entry, %entry
  %call = tail call fastcc i32 @x86_64_immediate_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2348
  br label %return, !dbg !2349

return:                                           ; preds = %entry, %sw.epilog
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ 0, %entry ], !dbg !2345
  ret i32 %retval.0, !dbg !2350
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @x86_64_immediate_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !2351 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2353, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2354, metadata !DIExpression()), !dbg !2355
  %call = tail call i32 @immediate_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !2356
  ret i32 %call, !dbg !2358
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x86_64_zext_immediate_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2359 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2361, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2362, metadata !DIExpression()), !dbg !2363
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2364
  %bf.load = load i32, i32* %0, align 8, !dbg !2364
  %trunc = trunc i32 %bf.load to i16, !dbg !2365
  switch i16 %trunc, label %return [
    i16 32, label %sw.epilog
    i16 30, label %sw.epilog
    i16 45, label %sw.epilog
    i16 44, label %sw.epilog
    i16 35, label %sw.epilog
  ], !dbg !2365

sw.epilog:                                        ; preds = %entry, %entry, %entry, %entry, %entry
  %call = tail call fastcc i32 @x86_64_zext_immediate_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2366
  br label %return, !dbg !2367

return:                                           ; preds = %entry, %sw.epilog
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ 0, %entry ], !dbg !2363
  ret i32 %retval.0, !dbg !2368
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @x86_64_zext_immediate_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !2369 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2371, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2372, metadata !DIExpression()), !dbg !2378
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2379
  %bf.load = load i32, i32* %0, align 8, !dbg !2379
  %trunc = trunc i32 %bf.load to i16, !dbg !2380
  switch i16 %trunc, label %sw.default116 [
    i16 32, label %return
    i16 30, label %sw.bb1
    i16 45, label %sw.bb2
    i16 44, label %sw.bb16
    i16 35, label %sw.bb22
  ], !dbg !2380

sw.bb1:                                           ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !2381
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !2381
  %1 = load i64, i64* %arrayidx, align 8, !dbg !2381
  %tobool = icmp ult i64 %1, 4294967296, !dbg !2383
  %lnot.ext = zext i1 %tobool to i32, !dbg !2383
  br label %return, !dbg !2384

sw.bb2:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2385
  %rt_int = bitcast %union.rtunion_def* %2 to i32*, !dbg !2385
  %3 = load i32, i32* %rt_int, align 8, !dbg !2385
  %and5 = and i32 %3, 56, !dbg !2385
  %tobool6 = icmp eq i32 %and5, 0, !dbg !2385
  br i1 %tobool6, label %if.end, label %return, !dbg !2387

if.end:                                           ; preds = %sw.bb2
  %4 = load i32, i32* @ix86_cmodel, align 4, !dbg !2388
  %cmp = icmp eq i32 %4, 1, !dbg !2389
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2390

lor.rhs:                                          ; preds = %if.end
  %cmp7 = icmp eq i32 %4, 3, !dbg !2391
  br i1 %cmp7, label %land.rhs, label %lor.end, !dbg !2392

land.rhs:                                         ; preds = %lor.rhs
  %and12 = lshr i32 %3, 9
  %and12.lobit = and i32 %and12, 1
  %5 = xor i32 %and12.lobit, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs, %if.end
  %6 = phi i32 [ 1, %if.end ], [ 0, %lor.rhs ], [ %5, %land.rhs ]
  br label %return, !dbg !2393

sw.bb16:                                          ; preds = %entry
  %7 = load i32, i32* @ix86_cmodel, align 4, !dbg !2394
  %8 = or i32 %7, 2, !dbg !2395
  %9 = icmp eq i32 %8, 3, !dbg !2395
  %lor.ext21 = zext i1 %9 to i32, !dbg !2395
  br label %return, !dbg !2396

sw.bb22:                                          ; preds = %entry
  %arrayidx25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2397
  %10 = bitcast %union.rtunion_def* %arrayidx25 to i32**, !dbg !2397
  %11 = load i32*, i32** %10, align 8, !dbg !2397
  %bf.load26 = load i32, i32* %11, align 8, !dbg !2397
  %bf.clear27 = and i32 %bf.load26, 65535, !dbg !2397
  %cmp28 = icmp eq i32 %bf.clear27, 49, !dbg !2398
  br i1 %cmp28, label %if.then29, label %sw.epilog117, !dbg !2399

if.then29:                                        ; preds = %sw.bb22
  %arrayidx36 = getelementptr inbounds i32, i32* %11, i64 2, !dbg !2400
  %rt_rtx37 = bitcast i32* %arrayidx36 to %struct.rtx_def**, !dbg !2400
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx37, align 8, !dbg !2400
  call void @llvm.dbg.value(metadata %struct.rtx_def* %12, metadata !2373, metadata !DIExpression()), !dbg !2401
  %13 = getelementptr inbounds i32, i32* %11, i64 4, !dbg !2402
  %rt_rtx45 = bitcast i32* %13 to %struct.rtx_def**, !dbg !2402
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx45, align 8, !dbg !2402
  call void @llvm.dbg.value(metadata %struct.rtx_def* %14, metadata !2377, metadata !DIExpression()), !dbg !2401
  %15 = load i32, i32* @ix86_cmodel, align 4, !dbg !2403
  %cmp46 = icmp eq i32 %15, 4, !dbg !2405
  br i1 %cmp46, label %cleanup, label %if.end48, !dbg !2406

if.end48:                                         ; preds = %if.then29
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i64 0, i32 0, !dbg !2407
  %bf.load49 = load i32, i32* %16, align 8, !dbg !2407
  %trunc1 = trunc i32 %bf.load49 to i16, !dbg !2408
  switch i16 %trunc1, label %cleanup [
    i16 45, label %sw.bb51
    i16 44, label %sw.bb89
  ], !dbg !2408

sw.bb51:                                          ; preds = %if.end48
  %17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2409
  %rt_int55 = bitcast %union.rtunion_def* %17 to i32*, !dbg !2409
  %18 = load i32, i32* %rt_int55, align 8, !dbg !2409
  %and57 = and i32 %18, 56, !dbg !2409
  %tobool58 = icmp eq i32 %and57, 0, !dbg !2409
  br i1 %tobool58, label %if.end60, label %cleanup, !dbg !2412

if.end60:                                         ; preds = %sw.bb51
  %cmp61 = icmp eq i32 %15, 1, !dbg !2413
  br i1 %cmp61, label %land.lhs.true69, label %lor.lhs.false, !dbg !2415

lor.lhs.false:                                    ; preds = %if.end60
  %cmp62 = icmp eq i32 %15, 3, !dbg !2416
  br i1 %cmp62, label %land.lhs.true, label %sw.epilog, !dbg !2417

land.lhs.true:                                    ; preds = %lor.lhs.false
  %and67 = and i32 %18, 512, !dbg !2418
  %cmp68 = icmp eq i32 %and67, 0, !dbg !2418
  br i1 %cmp68, label %land.lhs.true69, label %sw.epilog, !dbg !2419

land.lhs.true69:                                  ; preds = %land.lhs.true, %if.end60
  %19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i64 0, i32 0, !dbg !2420
  %bf.load70 = load i32, i32* %19, align 8, !dbg !2420
  %bf.clear71 = and i32 %bf.load70, 65535, !dbg !2420
  %cmp72 = icmp eq i32 %bf.clear71, 30, !dbg !2420
  br i1 %cmp72, label %land.lhs.true73, label %sw.epilog, !dbg !2421

land.lhs.true73:                                  ; preds = %land.lhs.true69
  %u74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i64 0, i32 1, !dbg !2422
  %arrayidx76 = bitcast %union.u* %u74 to i64*, !dbg !2422
  %20 = load i64, i64* %arrayidx76, align 8, !dbg !2422
  %call = tail call i64 @trunc_int_for_mode(i64 %20, i32 17) #6, !dbg !2423
  %cmp77 = icmp sgt i64 %call, -65536, !dbg !2424
  br i1 %cmp77, label %land.lhs.true78, label %sw.epilog, !dbg !2425

land.lhs.true78:                                  ; preds = %land.lhs.true73
  %21 = load i64, i64* %arrayidx76, align 8, !dbg !2426
  %call82 = tail call i64 @trunc_int_for_mode(i64 %21, i32 16) #6, !dbg !2427
  %22 = load i64, i64* %arrayidx76, align 8, !dbg !2428
  %cmp86 = icmp eq i64 %call82, %22, !dbg !2429
  br i1 %cmp86, label %cleanup, label %sw.epilog, !dbg !2430

sw.bb89:                                          ; preds = %if.end48
  %23 = or i32 %15, 2, !dbg !2431
  %24 = icmp eq i32 %23, 3, !dbg !2431
  br i1 %24, label %land.lhs.true93, label %sw.epilog, !dbg !2431

land.lhs.true93:                                  ; preds = %sw.bb89
  %25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i64 0, i32 0, !dbg !2433
  %bf.load94 = load i32, i32* %25, align 8, !dbg !2433
  %bf.clear95 = and i32 %bf.load94, 65535, !dbg !2433
  %cmp96 = icmp eq i32 %bf.clear95, 30, !dbg !2433
  br i1 %cmp96, label %land.lhs.true97, label %sw.epilog, !dbg !2434

land.lhs.true97:                                  ; preds = %land.lhs.true93
  %u98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i64 0, i32 1, !dbg !2435
  %arrayidx100 = bitcast %union.u* %u98 to i64*, !dbg !2435
  %26 = load i64, i64* %arrayidx100, align 8, !dbg !2435
  %call101 = tail call i64 @trunc_int_for_mode(i64 %26, i32 17) #6, !dbg !2436
  %cmp102 = icmp sgt i64 %call101, -65536, !dbg !2437
  br i1 %cmp102, label %land.lhs.true103, label %sw.epilog, !dbg !2438

land.lhs.true103:                                 ; preds = %land.lhs.true97
  %27 = load i64, i64* %arrayidx100, align 8, !dbg !2439
  %call107 = tail call i64 @trunc_int_for_mode(i64 %27, i32 16) #6, !dbg !2440
  %28 = load i64, i64* %arrayidx100, align 8, !dbg !2441
  %cmp111 = icmp eq i64 %call107, %28, !dbg !2442
  br i1 %cmp111, label %cleanup, label %sw.epilog, !dbg !2443

sw.epilog:                                        ; preds = %land.lhs.true, %land.lhs.true93, %land.lhs.true97, %land.lhs.true103, %sw.bb89, %lor.lhs.false, %land.lhs.true69, %land.lhs.true73, %land.lhs.true78
  br label %cleanup, !dbg !2444

cleanup:                                          ; preds = %sw.bb51, %if.end48, %land.lhs.true103, %land.lhs.true78, %if.then29, %sw.epilog
  %cleanup.dest.slot.0 = phi i1 [ true, %sw.epilog ], [ false, %if.then29 ], [ false, %sw.bb51 ], [ false, %land.lhs.true78 ], [ false, %land.lhs.true103 ], [ false, %if.end48 ]
  %retval.0 = phi i32 [ undef, %sw.epilog ], [ 0, %if.then29 ], [ 0, %sw.bb51 ], [ 1, %land.lhs.true78 ], [ 1, %land.lhs.true103 ], [ 0, %if.end48 ]
  br i1 %cleanup.dest.slot.0, label %sw.epilog117, label %return

sw.default116:                                    ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 388, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2445
  br label %sw.epilog117, !dbg !2446

sw.epilog117:                                     ; preds = %sw.bb22, %cleanup, %sw.default116
  br label %return, !dbg !2447

return:                                           ; preds = %sw.bb2, %cleanup, %entry, %sw.epilog117, %sw.bb16, %lor.end, %sw.bb1
  %retval.1 = phi i32 [ 0, %sw.epilog117 ], [ %retval.0, %cleanup ], [ %lor.ext21, %sw.bb16 ], [ %6, %lor.end ], [ %lnot.ext, %sw.bb1 ], [ 0, %entry ], [ 0, %sw.bb2 ], !dbg !2378
  ret i32 %retval.1, !dbg !2448
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x86_64_general_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2449 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2451, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2452, metadata !DIExpression()), !dbg !2453
  %call = tail call i32 @general_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !2454
  ret i32 %call, !dbg !2455
}

declare dso_local i32 @general_operand(%struct.rtx_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @x86_64_szext_general_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2456 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2458, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2459, metadata !DIExpression()), !dbg !2460
  %call = tail call i32 @general_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !2461
  ret i32 %call, !dbg !2462
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x86_64_nonmemory_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2463 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2465, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2466, metadata !DIExpression()), !dbg !2467
  %call = tail call i32 @nonmemory_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !2468
  ret i32 %call, !dbg !2469
}

declare dso_local i32 @nonmemory_operand(%struct.rtx_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @x86_64_szext_nonmemory_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2470 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2472, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2473, metadata !DIExpression()), !dbg !2474
  %call = tail call i32 @nonmemory_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !2475
  ret i32 %call, !dbg !2476
}

; Function Attrs: nounwind uwtable
define dso_local i32 @pic_32bit_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2477 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2479, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2480, metadata !DIExpression()), !dbg !2481
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2482
  %bf.load = load i32, i32* %0, align 8, !dbg !2482
  %trunc = trunc i32 %bf.load to i16, !dbg !2483
  switch i16 %trunc, label %return [
    i16 35, label %sw.epilog
    i16 45, label %sw.epilog
    i16 44, label %sw.epilog
  ], !dbg !2483

sw.epilog:                                        ; preds = %entry, %entry, %entry
  %call = tail call fastcc i32 @pic_32bit_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2484
  %tobool = icmp eq i32 %call, 0, !dbg !2484
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2485

land.rhs:                                         ; preds = %sw.epilog
  %cmp = icmp eq i32 %mode, 0, !dbg !2486
  br i1 %cmp, label %land.end, label %lor.rhs, !dbg !2487

lor.rhs:                                          ; preds = %land.rhs
  %bf.load1 = load i32, i32* %0, align 8, !dbg !2488
  %bf.lshr = lshr i32 %bf.load1, 16, !dbg !2488
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !2488
  %cmp3 = icmp eq i32 %bf.clear2, %mode, !dbg !2489
  %phitmp = zext i1 %cmp3 to i32, !dbg !2487
  br label %land.end, !dbg !2487

land.end:                                         ; preds = %sw.epilog, %land.rhs, %lor.rhs
  %1 = phi i32 [ 0, %sw.epilog ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  br label %return, !dbg !2490

return:                                           ; preds = %entry, %land.end
  %retval.0 = phi i32 [ %1, %land.end ], [ 0, %entry ], !dbg !2481
  ret i32 %retval.0, !dbg !2491
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @pic_32bit_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !2492 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2494, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2495, metadata !DIExpression()), !dbg !2496
  %0 = load i32, i32* @flag_pic, align 4, !dbg !2497
  %tobool = icmp eq i32 %0, 0, !dbg !2497
  br i1 %tobool, label %return, label %if.end, !dbg !2499

if.end:                                           ; preds = %entry
  %call = tail call i32 @symbolic_operand(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2500
  br label %return, !dbg !2501

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ], !dbg !2496
  ret i32 %retval.0, !dbg !2502
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x86_64_movabs_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2503 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2505, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2506, metadata !DIExpression()), !dbg !2507
  %call = tail call i32 @nonmemory_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !2508
  ret i32 %call, !dbg !2509
}

; Function Attrs: nounwind uwtable
define dso_local i32 @symbolic_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2510 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2512, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2513, metadata !DIExpression()), !dbg !2514
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2515
  %bf.load = load i32, i32* %0, align 8, !dbg !2515
  %trunc = trunc i32 %bf.load to i16, !dbg !2516
  switch i16 %trunc, label %return [
    i16 45, label %sw.epilog
    i16 44, label %sw.epilog
    i16 35, label %sw.epilog
  ], !dbg !2516

sw.epilog:                                        ; preds = %entry, %entry, %entry
  %call = tail call fastcc i32 @symbolic_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2517
  %tobool = icmp eq i32 %call, 0, !dbg !2517
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2518

land.rhs:                                         ; preds = %sw.epilog
  %cmp = icmp eq i32 %mode, 0, !dbg !2519
  br i1 %cmp, label %land.end, label %lor.rhs, !dbg !2520

lor.rhs:                                          ; preds = %land.rhs
  %bf.load1 = load i32, i32* %0, align 8, !dbg !2521
  %bf.lshr = lshr i32 %bf.load1, 16, !dbg !2521
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !2521
  %cmp3 = icmp eq i32 %bf.clear2, %mode, !dbg !2522
  %phitmp = zext i1 %cmp3 to i32, !dbg !2520
  br label %land.end, !dbg !2520

land.end:                                         ; preds = %sw.epilog, %land.rhs, %lor.rhs
  %1 = phi i32 [ 0, %sw.epilog ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  br label %return, !dbg !2523

return:                                           ; preds = %entry, %land.end
  %retval.0 = phi i32 [ %1, %land.end ], [ 0, %entry ], !dbg !2514
  ret i32 %retval.0, !dbg !2524
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @symbolic_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !2525 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2527, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2528, metadata !DIExpression()), !dbg !2529
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2530
  %bf.load = load i32, i32* %0, align 8, !dbg !2530
  %trunc = trunc i32 %bf.load to i16, !dbg !2531
  switch i16 %trunc, label %sw.default [
    i16 45, label %return
    i16 44, label %return
    i16 35, label %sw.bb1
  ], !dbg !2531

sw.bb1:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2532
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2532
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2532
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !2527, metadata !DIExpression()), !dbg !2529
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !2534
  %bf.load2 = load i32, i32* %2, align 8, !dbg !2534
  %bf.clear3 = and i32 %bf.load2, 65535, !dbg !2534
  %cmp = icmp eq i32 %bf.clear3, 45, !dbg !2536
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !2537

lor.lhs.false:                                    ; preds = %sw.bb1
  %cmp6 = icmp eq i32 %bf.clear3, 44, !dbg !2538
  br i1 %cmp6, label %return, label %lor.lhs.false7, !dbg !2539

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %cmp10 = icmp eq i32 %bf.clear3, 18, !dbg !2540
  br i1 %cmp10, label %land.lhs.true, label %if.end, !dbg !2541

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2542
  %rt_int = bitcast %union.rtunion_def* %3 to i32*, !dbg !2542
  %4 = load i32, i32* %rt_int, align 8, !dbg !2542
  %cmp14 = icmp eq i32 %4, 0, !dbg !2543
  br i1 %cmp14, label %return, label %lor.lhs.false15, !dbg !2544

lor.lhs.false15:                                  ; preds = %land.lhs.true
  %cmp20 = icmp eq i32 %4, 1, !dbg !2545
  br i1 %cmp20, label %return, label %lor.lhs.false21, !dbg !2546

lor.lhs.false21:                                  ; preds = %lor.lhs.false15
  %cmp26 = icmp eq i32 %4, 2, !dbg !2547
  br i1 %cmp26, label %return, label %if.end, !dbg !2548

if.end:                                           ; preds = %lor.lhs.false21, %lor.lhs.false7
  %cmp29 = icmp eq i32 %bf.clear3, 49, !dbg !2549
  br i1 %cmp29, label %lor.lhs.false30, label %return, !dbg !2551

lor.lhs.false30:                                  ; preds = %if.end
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2552
  %6 = bitcast %union.rtunion_def* %5 to i32**, !dbg !2552
  %7 = load i32*, i32** %6, align 8, !dbg !2552
  %bf.load35 = load i32, i32* %7, align 8, !dbg !2552
  %bf.clear36 = and i32 %bf.load35, 65535, !dbg !2552
  %cmp37 = icmp eq i32 %bf.clear36, 30, !dbg !2552
  br i1 %cmp37, label %if.end39, label %return, !dbg !2553

if.end39:                                         ; preds = %lor.lhs.false30
  %arrayidx42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2554
  %rt_rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**, !dbg !2554
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx43, align 8, !dbg !2554
  call void @llvm.dbg.value(metadata %struct.rtx_def* %8, metadata !2527, metadata !DIExpression()), !dbg !2529
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 0, !dbg !2555
  %bf.load44 = load i32, i32* %9, align 8, !dbg !2555
  %bf.clear45 = and i32 %bf.load44, 65535, !dbg !2555
  %cmp46 = icmp eq i32 %bf.clear45, 45, !dbg !2557
  br i1 %cmp46, label %return, label %lor.lhs.false47, !dbg !2558

lor.lhs.false47:                                  ; preds = %if.end39
  %cmp50 = icmp eq i32 %bf.clear45, 44, !dbg !2559
  br i1 %cmp50, label %return, label %if.end52, !dbg !2560

if.end52:                                         ; preds = %lor.lhs.false47
  %cmp55 = icmp eq i32 %bf.clear45, 18, !dbg !2561
  br i1 %cmp55, label %lor.lhs.false56, label %return, !dbg !2563

lor.lhs.false56:                                  ; preds = %if.end52
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2564
  %rt_int60 = bitcast %union.rtunion_def* %10 to i32*, !dbg !2564
  %11 = load i32, i32* %rt_int60, align 8, !dbg !2564
  %cmp61 = icmp eq i32 %11, 1, !dbg !2565
  br i1 %cmp61, label %if.end63, label %return, !dbg !2566

if.end63:                                         ; preds = %lor.lhs.false56
  %arrayidx66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2567
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtvec_def**, !dbg !2567
  %12 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !2567
  %arrayidx67 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %12, i64 0, i32 1, i64 0, !dbg !2567
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx67, align 8, !dbg !2567
  call void @llvm.dbg.value(metadata %struct.rtx_def* %13, metadata !2527, metadata !DIExpression()), !dbg !2529
  %14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i64 0, i32 0, !dbg !2568
  %bf.load68 = load i32, i32* %14, align 8, !dbg !2568
  %bf.clear69 = and i32 %bf.load68, 65535, !dbg !2568
  %cmp70 = icmp eq i32 %bf.clear69, 45, !dbg !2570
  br i1 %cmp70, label %return, label %lor.lhs.false71, !dbg !2571

lor.lhs.false71:                                  ; preds = %if.end63
  %cmp74 = icmp eq i32 %bf.clear69, 44, !dbg !2572
  %spec.select = zext i1 %cmp74 to i32, !dbg !2573
  ret i32 %spec.select, !dbg !2573

sw.default:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 529, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2574
  br label %return, !dbg !2575

return:                                           ; preds = %lor.lhs.false56, %if.end52, %if.end, %if.end63, %if.end39, %lor.lhs.false47, %lor.lhs.false30, %sw.bb1, %lor.lhs.false, %land.lhs.true, %lor.lhs.false15, %lor.lhs.false21, %entry, %entry, %sw.default
  %retval.0 = phi i32 [ -1, %sw.default ], [ 1, %entry ], [ 1, %entry ], [ 1, %lor.lhs.false21 ], [ 1, %lor.lhs.false15 ], [ 1, %land.lhs.true ], [ 1, %lor.lhs.false ], [ 1, %sw.bb1 ], [ 0, %lor.lhs.false30 ], [ 0, %if.end ], [ 1, %lor.lhs.false47 ], [ 1, %if.end39 ], [ 0, %lor.lhs.false56 ], [ 0, %if.end52 ], [ 1, %if.end63 ], !dbg !2529
  ret i32 %retval.0, !dbg !2576
}

; Function Attrs: nounwind uwtable
define dso_local i32 @pic_symbolic_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2577 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2579, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2580, metadata !DIExpression()), !dbg !2581
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2582
  %bf.load = load i32, i32* %0, align 8, !dbg !2582
  %bf.clear = and i32 %bf.load, 65535, !dbg !2582
  %cmp = icmp eq i32 %bf.clear, 35, !dbg !2583
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !2584

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @pic_symbolic_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2585
  %tobool = icmp eq i32 %call, 0, !dbg !2585
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2586

land.rhs:                                         ; preds = %land.lhs.true
  %cmp1 = icmp eq i32 %mode, 0, !dbg !2587
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !2588

lor.rhs:                                          ; preds = %land.rhs
  %bf.load2 = load i32, i32* %0, align 8, !dbg !2589
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !2589
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !2589
  %cmp4 = icmp eq i32 %bf.clear3, %mode, !dbg !2590
  %phitmp = zext i1 %cmp4 to i32, !dbg !2588
  br label %land.end, !dbg !2588

land.end:                                         ; preds = %land.lhs.true, %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !2591
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @pic_symbolic_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !2592 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2594, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2595, metadata !DIExpression()), !dbg !2596
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2597
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2597
  %0 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2597
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !2594, metadata !DIExpression()), !dbg !2596
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0, !dbg !2598
  %bf.load = load i32, i32* %1, align 8, !dbg !2598
  %bf.clear = and i32 %bf.load, 65535, !dbg !2598
  %cmp = icmp eq i32 %bf.clear, 18, !dbg !2602
  br i1 %cmp, label %return, label %if.end, !dbg !2603

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 49, !dbg !2604
  br i1 %cmp3, label %lor.lhs.false, label %return, !dbg !2606

lor.lhs.false:                                    ; preds = %if.end
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2607
  %3 = bitcast %union.rtunion_def* %2 to i32**, !dbg !2607
  %4 = load i32*, i32** %3, align 8, !dbg !2607
  %bf.load8 = load i32, i32* %4, align 8, !dbg !2607
  %bf.clear9 = and i32 %bf.load8, 65535, !dbg !2607
  %cmp10 = icmp eq i32 %bf.clear9, 30, !dbg !2607
  br i1 %cmp10, label %if.end12, label %return, !dbg !2608

if.end12:                                         ; preds = %lor.lhs.false
  %arrayidx15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2609
  %rt_rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**, !dbg !2609
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx16, align 8, !dbg !2609
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !2594, metadata !DIExpression()), !dbg !2596
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 0, !dbg !2610
  %bf.load17 = load i32, i32* %6, align 8, !dbg !2610
  %bf.clear18 = and i32 %bf.load17, 65535, !dbg !2610
  %cmp19 = icmp eq i32 %bf.clear18, 18, !dbg !2612
  br i1 %cmp19, label %land.lhs.true, label %if.end25, !dbg !2613

land.lhs.true:                                    ; preds = %if.end12
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2614
  %rt_int = bitcast %union.rtunion_def* %7 to i32*, !dbg !2614
  %8 = load i32, i32* %rt_int, align 8, !dbg !2614
  %cmp23 = icmp eq i32 %8, 10, !dbg !2615
  br i1 %cmp23, label %if.end25, label %return, !dbg !2616

if.end25:                                         ; preds = %land.lhs.true, %if.end12
  br label %return, !dbg !2617

return:                                           ; preds = %land.lhs.true, %if.end, %lor.lhs.false, %entry, %if.end25
  %retval.0 = phi i32 [ 0, %if.end25 ], [ 1, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 1, %land.lhs.true ], !dbg !2596
  ret i32 %retval.0, !dbg !2618
}

; Function Attrs: nounwind uwtable
define dso_local i32 @local_symbolic_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2619 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2621, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2622, metadata !DIExpression()), !dbg !2623
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2624
  %bf.load = load i32, i32* %0, align 8, !dbg !2624
  %trunc = trunc i32 %bf.load to i16, !dbg !2625
  switch i16 %trunc, label %return [
    i16 35, label %sw.epilog
    i16 44, label %sw.epilog
    i16 45, label %sw.epilog
  ], !dbg !2625

sw.epilog:                                        ; preds = %entry, %entry, %entry
  %call = tail call fastcc i32 @local_symbolic_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2626
  %tobool = icmp eq i32 %call, 0, !dbg !2626
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2627

land.rhs:                                         ; preds = %sw.epilog
  %cmp = icmp eq i32 %mode, 0, !dbg !2628
  br i1 %cmp, label %land.end, label %lor.rhs, !dbg !2629

lor.rhs:                                          ; preds = %land.rhs
  %bf.load1 = load i32, i32* %0, align 8, !dbg !2630
  %bf.lshr = lshr i32 %bf.load1, 16, !dbg !2630
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !2630
  %cmp3 = icmp eq i32 %bf.clear2, %mode, !dbg !2631
  %phitmp = zext i1 %cmp3 to i32, !dbg !2629
  br label %land.end, !dbg !2629

land.end:                                         ; preds = %sw.epilog, %land.rhs, %lor.rhs
  %1 = phi i32 [ 0, %sw.epilog ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  br label %return, !dbg !2632

return:                                           ; preds = %entry, %land.end
  %retval.0 = phi i32 [ %1, %land.end ], [ 0, %entry ], !dbg !2623
  ret i32 %retval.0, !dbg !2633
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @local_symbolic_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !2634 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2636, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2637, metadata !DIExpression()), !dbg !2638
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2639
  %bf.load = load i32, i32* %0, align 8, !dbg !2639
  %bf.clear = and i32 %bf.load, 65535, !dbg !2639
  %cmp = icmp eq i32 %bf.clear, 35, !dbg !2641
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2642

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2643
  %1 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !2643
  %2 = load i32*, i32** %1, align 8, !dbg !2643
  %bf.load1 = load i32, i32* %2, align 8, !dbg !2643
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !2643
  %cmp3 = icmp eq i32 %bf.clear2, 49, !dbg !2644
  br i1 %cmp3, label %land.lhs.true4, label %if.end, !dbg !2645

land.lhs.true4:                                   ; preds = %land.lhs.true
  %3 = getelementptr inbounds i32, i32* %2, i64 4, !dbg !2646
  %4 = bitcast i32* %3 to i32**, !dbg !2646
  %5 = load i32*, i32** %4, align 8, !dbg !2646
  %bf.load13 = load i32, i32* %5, align 8, !dbg !2646
  %bf.clear14 = and i32 %bf.load13, 65535, !dbg !2646
  %cmp15 = icmp eq i32 %bf.clear14, 30, !dbg !2646
  br i1 %cmp15, label %if.then, label %if.end, !dbg !2647

if.then:                                          ; preds = %land.lhs.true4
  %arrayidx22 = getelementptr inbounds i32, i32* %2, i64 2, !dbg !2648
  %rt_rtx23 = bitcast i32* %arrayidx22 to %struct.rtx_def**, !dbg !2648
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx23, align 8, !dbg !2648
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !2636, metadata !DIExpression()), !dbg !2638
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 0, !dbg !2649
  %bf.load24.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !2651
  br label %if.end, !dbg !2652

if.end:                                           ; preds = %if.then, %land.lhs.true4, %land.lhs.true, %entry
  %bf.load29 = phi i32 [ %bf.load24.pre, %if.then ], [ %bf.load, %land.lhs.true4 ], [ %bf.load, %land.lhs.true ], [ %bf.load, %entry ], !dbg !2651
  %op.addr.0 = phi %struct.rtx_def* [ %6, %if.then ], [ %op, %land.lhs.true4 ], [ %op, %land.lhs.true ], [ %op, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op.addr.0, metadata !2636, metadata !DIExpression()), !dbg !2638
  %bf.clear25 = and i32 %bf.load29, 65535, !dbg !2651
  %cmp26 = icmp eq i32 %bf.clear25, 44, !dbg !2653
  br i1 %cmp26, label %return, label %if.end28, !dbg !2654

if.end28:                                         ; preds = %if.end
  %cmp31 = icmp eq i32 %bf.clear25, 45, !dbg !2655
  br i1 %cmp31, label %if.end33, label %return, !dbg !2657

if.end33:                                         ; preds = %if.end28
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op.addr.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2658
  %rt_int = bitcast %union.rtunion_def* %7 to i32*, !dbg !2658
  %8 = load i32, i32* %rt_int, align 8, !dbg !2658
  %and = and i32 %8, 56, !dbg !2658
  %cmp37 = icmp eq i32 %and, 0, !dbg !2660
  br i1 %cmp37, label %if.end39, label %return, !dbg !2661

if.end39:                                         ; preds = %if.end33
  %and44 = and i32 %8, 2, !dbg !2662
  %cmp45 = icmp eq i32 %and44, 0, !dbg !2662
  br i1 %cmp45, label %if.end47, label %return, !dbg !2664

if.end47:                                         ; preds = %if.end39
  %rt_str = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op.addr.0, i64 0, i32 1, i32 0, i32 0, i64 0, i32 0, !dbg !2665
  %9 = load i8*, i8** %rt_str, align 8, !dbg !2665
  %10 = load i32, i32* @internal_label_prefix_len, align 4, !dbg !2667
  %conv = sext i32 %10 to i64, !dbg !2667
  %call = tail call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @internal_label_prefix, i64 0, i64 0), i64 %conv) #6, !dbg !2668
  %cmp51 = icmp eq i32 %call, 0, !dbg !2669
  %. = zext i1 %cmp51 to i32, !dbg !2638
  br label %return, !dbg !2638

return:                                           ; preds = %if.end39, %if.end33, %if.end28, %if.end47, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.end28 ], [ 0, %if.end33 ], [ 1, %if.end39 ], [ %., %if.end47 ], !dbg !2638
  ret i32 %retval.0, !dbg !2670
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gotoff_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2671 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2673, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2674, metadata !DIExpression()), !dbg !2675
  %call = tail call i32 @local_symbolic_operand(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2676
  %tobool = icmp ne i32 %call, 0, !dbg !2677
  %land.ext = zext i1 %tobool to i32, !dbg !2677
  ret i32 %land.ext, !dbg !2678
}

; Function Attrs: nounwind uwtable
define dso_local i32 @tls_symbolic_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2679 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2681, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2682, metadata !DIExpression()), !dbg !2683
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2684
  %bf.load = load i32, i32* %0, align 8, !dbg !2684
  %bf.clear = and i32 %bf.load, 65535, !dbg !2684
  %cmp = icmp eq i32 %bf.clear, 45, !dbg !2685
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !2686

land.lhs.true:                                    ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2687
  %rt_int = bitcast %union.rtunion_def* %1 to i32*, !dbg !2687
  %2 = load i32, i32* %rt_int, align 8, !dbg !2687
  %and = and i32 %2, 56, !dbg !2687
  %cmp1 = icmp eq i32 %and, 0, !dbg !2688
  br i1 %cmp1, label %land.end, label %land.rhs, !dbg !2689

land.rhs:                                         ; preds = %land.lhs.true
  %cmp2 = icmp eq i32 %mode, 0, !dbg !2690
  br i1 %cmp2, label %land.end, label %lor.rhs, !dbg !2691

lor.rhs:                                          ; preds = %land.rhs
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2692
  %bf.clear4 = and i32 %bf.lshr, 255, !dbg !2692
  %cmp5 = icmp eq i32 %bf.clear4, %mode, !dbg !2693
  %phitmp = zext i1 %cmp5 to i32, !dbg !2691
  br label %land.end, !dbg !2691

land.end:                                         ; preds = %land.lhs.true, %land.rhs, %lor.rhs, %entry
  %3 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %3, !dbg !2694
}

; Function Attrs: nounwind uwtable
define dso_local i32 @tls_modbase_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2695 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2697, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2698, metadata !DIExpression()), !dbg !2699
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2700
  %bf.load = load i32, i32* %0, align 8, !dbg !2700
  %bf.clear = and i32 %bf.load, 65535, !dbg !2700
  %cmp = icmp eq i32 %bf.clear, 45, !dbg !2701
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !2702

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.rtx_def* @ix86_tls_module_base() #6, !dbg !2703
  %cmp1 = icmp eq %struct.rtx_def* %call, %op, !dbg !2704
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !2705

land.rhs:                                         ; preds = %land.lhs.true
  %cmp2 = icmp eq i32 %mode, 0, !dbg !2706
  br i1 %cmp2, label %land.end, label %lor.rhs, !dbg !2707

lor.rhs:                                          ; preds = %land.rhs
  %bf.load3 = load i32, i32* %0, align 8, !dbg !2708
  %bf.lshr = lshr i32 %bf.load3, 16, !dbg !2708
  %bf.clear4 = and i32 %bf.lshr, 255, !dbg !2708
  %cmp5 = icmp eq i32 %bf.clear4, %mode, !dbg !2709
  %phitmp = zext i1 %cmp5 to i32, !dbg !2707
  br label %land.end, !dbg !2707

land.end:                                         ; preds = %land.rhs, %lor.rhs, %land.lhs.true, %entry
  %1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !2710
}

declare dso_local %struct.rtx_def* @ix86_tls_module_base() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @tp_or_register_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2711 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2713, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2714, metadata !DIExpression()), !dbg !2715
  %call = tail call i32 @register_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !2716
  %tobool = icmp eq i32 %call, 0, !dbg !2716
  br i1 %tobool, label %lor.rhs, label %lor.end7, !dbg !2717

lor.rhs:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2718
  %bf.load = load i32, i32* %0, align 8, !dbg !2718
  %bf.clear = and i32 %bf.load, 65535, !dbg !2718
  %cmp = icmp eq i32 %bf.clear, 18, !dbg !2719
  br i1 %cmp, label %land.lhs.true, label %lor.end7, !dbg !2720

land.lhs.true:                                    ; preds = %lor.rhs
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2721
  %rt_int = bitcast %union.rtunion_def* %1 to i32*, !dbg !2721
  %2 = load i32, i32* %rt_int, align 8, !dbg !2721
  %cmp1 = icmp eq i32 %2, 20, !dbg !2722
  br i1 %cmp1, label %land.rhs, label %lor.end7, !dbg !2723

land.rhs:                                         ; preds = %land.lhs.true
  %cmp2 = icmp eq i32 %mode, 0, !dbg !2724
  br i1 %cmp2, label %lor.end7, label %lor.rhs3, !dbg !2725

lor.rhs3:                                         ; preds = %land.rhs
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2726
  %bf.clear5 = and i32 %bf.lshr, 255, !dbg !2726
  %cmp6 = icmp eq i32 %bf.clear5, %mode, !dbg !2727
  %phitmp = zext i1 %cmp6 to i32, !dbg !2725
  br label %lor.end7, !dbg !2725

lor.end7:                                         ; preds = %entry, %lor.rhs, %land.lhs.true, %lor.rhs3, %land.rhs
  %3 = phi i32 [ 1, %entry ], [ 0, %land.lhs.true ], [ 0, %lor.rhs ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs3 ]
  ret i32 %3, !dbg !2728
}

; Function Attrs: nounwind uwtable
define dso_local i32 @constant_call_address_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2729 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2731, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2732, metadata !DIExpression()), !dbg !2733
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2734
  %bf.load = load i32, i32* %0, align 8, !dbg !2734
  %bf.clear = and i32 %bf.load, 65535, !dbg !2734
  %cmp = icmp eq i32 %bf.clear, 45, !dbg !2735
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !2736

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @constant_call_address_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2737
  %tobool = icmp eq i32 %call, 0, !dbg !2737
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2738

land.rhs:                                         ; preds = %land.lhs.true
  %cmp1 = icmp eq i32 %mode, 0, !dbg !2739
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !2740

lor.rhs:                                          ; preds = %land.rhs
  %bf.load2 = load i32, i32* %0, align 8, !dbg !2741
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !2741
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !2741
  %cmp4 = icmp eq i32 %bf.clear3, %mode, !dbg !2742
  %phitmp = zext i1 %cmp4 to i32, !dbg !2740
  br label %land.end, !dbg !2740

land.end:                                         ; preds = %land.lhs.true, %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !2743
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @constant_call_address_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !2744 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2746, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2747, metadata !DIExpression()), !dbg !2748
  %0 = load i32, i32* @ix86_cmodel, align 4, !dbg !2749
  %cmp = icmp ne i32 %0, 4, !dbg !2751
  %cmp1 = icmp ne i32 %0, 7, !dbg !2752
  %1 = and i1 %cmp, %cmp1, !dbg !2753
  %retval.0 = zext i1 %1 to i32, !dbg !2753
  ret i32 %retval.0, !dbg !2754
}

; Function Attrs: nounwind uwtable
define dso_local i32 @register_no_elim_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2755 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2757, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2758, metadata !DIExpression()), !dbg !2759
  %call = tail call i32 @register_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !2760
  %tobool = icmp eq i32 %call, 0, !dbg !2760
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2761

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @register_no_elim_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2762
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2761
  %phitmp = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %0, !dbg !2763
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @register_no_elim_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !2764 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2766, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2767, metadata !DIExpression()), !dbg !2768
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2769
  %bf.load = load i32, i32* %0, align 8, !dbg !2769
  %bf.clear = and i32 %bf.load, 65535, !dbg !2769
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !2771
  br i1 %cmp, label %if.then, label %if.end, !dbg !2772

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2773
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2773
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2773
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !2766, metadata !DIExpression()), !dbg !2768
  br label %if.end, !dbg !2774

if.end:                                           ; preds = %if.then, %entry
  %op.addr.0 = phi %struct.rtx_def* [ %1, %if.then ], [ %op, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op.addr.0, metadata !2766, metadata !DIExpression()), !dbg !2768
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 5), align 8, !dbg !2775
  %cmp1 = icmp eq %struct.rtx_def* %op.addr.0, %2, !dbg !2776
  %3 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 3), align 8, !dbg !2777
  %cmp2 = icmp eq %struct.rtx_def* %op.addr.0, %3, !dbg !2778
  %or.cond = or i1 %cmp1, %cmp2, !dbg !2779
  br i1 %or.cond, label %lor.end, label %lor.rhs, !dbg !2779

lor.rhs:                                          ; preds = %if.end
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op.addr.0) #7, !dbg !2780
  %conv = zext i32 %call to i64, !dbg !2780
  %sub = add nsw i64 %conv, -53, !dbg !2780
  %cmp3 = icmp ugt i64 %sub, 4, !dbg !2780
  %phitmp = zext i1 %cmp3 to i32, !dbg !2781
  br label %lor.end, !dbg !2781

lor.end:                                          ; preds = %lor.rhs, %if.end
  %4 = phi i32 [ 0, %if.end ], [ %phitmp, %lor.rhs ]
  ret i32 %4, !dbg !2782
}

; Function Attrs: nounwind uwtable
define dso_local i32 @call_register_no_elim_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2783 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2785, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2786, metadata !DIExpression()), !dbg !2787
  %call = tail call i32 @register_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !2788
  %tobool = icmp eq i32 %call, 0, !dbg !2788
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2789

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @call_register_no_elim_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2790
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2789
  %phitmp = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %0, !dbg !2791
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @call_register_no_elim_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !2792 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2794, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2795, metadata !DIExpression()), !dbg !2796
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2797
  %bf.load = load i32, i32* %0, align 8, !dbg !2797
  %bf.clear = and i32 %bf.load, 65535, !dbg !2797
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !2799
  br i1 %cmp, label %if.then, label %if.end, !dbg !2800

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2801
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2801
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2801
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !2794, metadata !DIExpression()), !dbg !2796
  br label %if.end, !dbg !2802

if.end:                                           ; preds = %if.then, %entry
  %op.addr.0 = phi %struct.rtx_def* [ %1, %if.then ], [ %op, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op.addr.0, metadata !2794, metadata !DIExpression()), !dbg !2796
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2803
  %cmp1 = icmp eq %struct.rtx_def* %op.addr.0, %2, !dbg !2805
  br i1 %cmp1, label %return, label %if.end3, !dbg !2806

if.end3:                                          ; preds = %if.end
  %call = tail call i32 @register_no_elim_operand(%struct.rtx_def* %op.addr.0, i32 %mode) #7, !dbg !2807
  br label %return, !dbg !2808

return:                                           ; preds = %if.end, %if.end3
  %retval.0 = phi i32 [ %call, %if.end3 ], [ 0, %if.end ], !dbg !2796
  ret i32 %retval.0, !dbg !2809
}

; Function Attrs: nounwind uwtable
define dso_local i32 @index_register_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2810 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2812, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2813, metadata !DIExpression()), !dbg !2814
  %call = tail call i32 @register_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !2815
  %tobool = icmp eq i32 %call, 0, !dbg !2815
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2816

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @index_register_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2817
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2816
  %phitmp = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %0, !dbg !2818
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @index_register_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !2819 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2821, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2822, metadata !DIExpression()), !dbg !2823
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2824
  %bf.load = load i32, i32* %0, align 8, !dbg !2824
  %bf.clear = and i32 %bf.load, 65535, !dbg !2824
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !2826
  br i1 %cmp, label %if.then, label %if.end, !dbg !2827

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2828
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2828
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2828
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !2821, metadata !DIExpression()), !dbg !2823
  br label %if.end, !dbg !2829

if.end:                                           ; preds = %if.then, %entry
  %op.addr.0 = phi %struct.rtx_def* [ %1, %if.then ], [ %op, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op.addr.0, metadata !2821, metadata !DIExpression()), !dbg !2823
  %2 = load i32, i32* @reload_in_progress, align 4, !dbg !2830
  %3 = load i32, i32* @reload_completed, align 4, !dbg !2832
  %4 = or i32 %2, %3, !dbg !2833
  %5 = icmp eq i32 %4, 0, !dbg !2833
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op.addr.0) #7, !dbg !2834
  %cmp3 = icmp ult i32 %call, 7, !dbg !2834
  br i1 %5, label %if.else, label %if.then2, !dbg !2833

if.then2:                                         ; preds = %if.end
  br i1 %cmp3, label %lor.end, label %lor.lhs.false4, !dbg !2835

lor.lhs.false4:                                   ; preds = %if.then2
  %call5 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op.addr.0) #7, !dbg !2835
  %conv = zext i32 %call5 to i64, !dbg !2835
  %sub = add nsw i64 %conv, -37, !dbg !2835
  %cmp6 = icmp ult i64 %sub, 8, !dbg !2835
  br i1 %cmp6, label %lor.end, label %lor.lhs.false8, !dbg !2835

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %6 = load i16*, i16** @reg_renumber, align 8, !dbg !2835
  %call9 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op.addr.0) #7, !dbg !2835
  %idxprom = zext i32 %call9 to i64, !dbg !2835
  %arrayidx10 = getelementptr inbounds i16, i16* %6, i64 %idxprom, !dbg !2835
  %7 = load i16, i16* %arrayidx10, align 2, !dbg !2835
  %cmp12 = icmp ult i16 %7, 7, !dbg !2835
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !2835

lor.rhs:                                          ; preds = %lor.lhs.false8
  %8 = load i16*, i16** @reg_renumber, align 8, !dbg !2835
  %call14 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op.addr.0) #7, !dbg !2835
  %idxprom15 = zext i32 %call14 to i64, !dbg !2835
  %arrayidx16 = getelementptr inbounds i16, i16* %8, i64 %idxprom15, !dbg !2835
  %9 = load i16, i16* %arrayidx16, align 2, !dbg !2835
  %conv17 = sext i16 %9 to i64, !dbg !2835
  %conv18 = and i64 %conv17, 4294967295, !dbg !2835
  %sub19 = add nsw i64 %conv18, -37, !dbg !2835
  %cmp20 = icmp ult i64 %sub19, 8, !dbg !2835
  %phitmp1 = zext i1 %cmp20 to i32, !dbg !2835
  br label %lor.end, !dbg !2835

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false8, %lor.lhs.false4, %if.then2
  %10 = phi i32 [ 1, %lor.lhs.false8 ], [ 1, %lor.lhs.false4 ], [ 1, %if.then2 ], [ %phitmp1, %lor.rhs ]
  br label %return, !dbg !2836

if.else:                                          ; preds = %if.end
  br i1 %cmp3, label %lor.end35, label %lor.lhs.false25, !dbg !2837

lor.lhs.false25:                                  ; preds = %if.else
  %call26 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op.addr.0) #7, !dbg !2837
  %conv27 = zext i32 %call26 to i64, !dbg !2837
  %sub28 = add nsw i64 %conv27, -37, !dbg !2837
  %cmp29 = icmp ult i64 %sub28, 8, !dbg !2837
  br i1 %cmp29, label %lor.end35, label %lor.rhs31, !dbg !2837

lor.rhs31:                                        ; preds = %lor.lhs.false25
  %call32 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %op.addr.0) #7, !dbg !2837
  %cmp33 = icmp ugt i32 %call32, 52, !dbg !2837
  %phitmp = zext i1 %cmp33 to i32, !dbg !2837
  br label %lor.end35, !dbg !2837

lor.end35:                                        ; preds = %lor.rhs31, %lor.lhs.false25, %if.else
  %11 = phi i32 [ 1, %lor.lhs.false25 ], [ 1, %if.else ], [ %phitmp, %lor.rhs31 ]
  br label %return, !dbg !2838

return:                                           ; preds = %lor.end35, %lor.end
  %retval.0 = phi i32 [ %10, %lor.end ], [ %11, %lor.end35 ], !dbg !2834
  ret i32 %retval.0, !dbg !2839
}

; Function Attrs: nounwind uwtable
define dso_local i32 @general_no_elim_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2840 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2842, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2843, metadata !DIExpression()), !dbg !2844
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2845
  %bf.load = load i32, i32* %0, align 8, !dbg !2845
  %bf.clear = and i32 %bf.load, 65535, !dbg !2845
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !2846
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !2847

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 39, !dbg !2848
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !2849

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %call = tail call i32 @register_no_elim_operand(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2850
  br label %cond.end, !dbg !2849

cond.false:                                       ; preds = %lor.lhs.false
  %call4 = tail call i32 @general_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !2851
  br label %cond.end, !dbg !2849

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call4, %cond.false ], !dbg !2849
  ret i32 %cond, !dbg !2852
}

; Function Attrs: nounwind uwtable
define dso_local i32 @nonmemory_no_elim_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2853 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2855, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2856, metadata !DIExpression()), !dbg !2857
  %call = tail call i32 @register_no_elim_operand(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2858
  %tobool = icmp eq i32 %call, 0, !dbg !2858
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !2859

lor.rhs:                                          ; preds = %entry
  %call1 = tail call i32 @immediate_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !2860
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2859
  %phitmp = zext i1 %tobool2 to i32, !dbg !2859
  br label %lor.end, !dbg !2859

lor.end:                                          ; preds = %entry, %lor.rhs
  %0 = phi i32 [ 1, %entry ], [ %phitmp, %lor.rhs ]
  ret i32 %0, !dbg !2861
}

declare dso_local i32 @immediate_operand(%struct.rtx_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @call_insn_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2862 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2864, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2865, metadata !DIExpression()), !dbg !2866
  %call = tail call i32 @constant_call_address_operand(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2867
  %tobool = icmp eq i32 %call, 0, !dbg !2867
  br i1 %tobool, label %lor.rhs, label %lor.end6, !dbg !2868

lor.rhs:                                          ; preds = %entry
  %call1 = tail call i32 @call_register_no_elim_operand(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2869
  %tobool2 = icmp eq i32 %call1, 0, !dbg !2869
  br i1 %tobool2, label %lor.rhs3, label %lor.end6, !dbg !2870

lor.rhs3:                                         ; preds = %lor.rhs
  %call4 = tail call i32 @memory_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !2871
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2870
  %phitmp = zext i1 %tobool5 to i32, !dbg !2870
  br label %lor.end6, !dbg !2870

lor.end6:                                         ; preds = %lor.rhs, %entry, %lor.rhs3
  %0 = phi i32 [ 1, %entry ], [ 1, %lor.rhs ], [ %phitmp, %lor.rhs3 ]
  ret i32 %0, !dbg !2872
}

declare dso_local i32 @memory_operand(%struct.rtx_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @sibcall_insn_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2873 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2875, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2876, metadata !DIExpression()), !dbg !2877
  %call = tail call i32 @constant_call_address_operand(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2878
  %tobool = icmp eq i32 %call, 0, !dbg !2878
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !2879

lor.rhs:                                          ; preds = %entry
  %call1 = tail call i32 @register_no_elim_operand(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2880
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2879
  %phitmp = zext i1 %tobool2 to i32, !dbg !2879
  br label %lor.end, !dbg !2879

lor.end:                                          ; preds = %entry, %lor.rhs
  %0 = phi i32 [ 1, %entry ], [ %phitmp, %lor.rhs ]
  ret i32 %0, !dbg !2881
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const0_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2882 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2884, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2885, metadata !DIExpression()), !dbg !2886
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2887
  %bf.load = load i32, i32* %0, align 8, !dbg !2887
  %trunc = trunc i32 %bf.load to i16, !dbg !2888
  switch i16 %trunc, label %return [
    i16 30, label %sw.epilog
    i16 32, label %sw.epilog
    i16 33, label %sw.epilog
  ], !dbg !2888

sw.epilog:                                        ; preds = %entry, %entry, %entry
  %call = tail call fastcc i32 @const0_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2889
  br label %return, !dbg !2890

return:                                           ; preds = %entry, %sw.epilog
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ 0, %entry ], !dbg !2886
  ret i32 %retval.0, !dbg !2891
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @const0_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !2892 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2894, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2895, metadata !DIExpression()), !dbg !2896
  %cmp = icmp eq i32 %mode, 0, !dbg !2897
  br i1 %cmp, label %if.then, label %if.end, !dbg !2899

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2900
  %bf.load = load i32, i32* %0, align 8, !dbg !2900
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2900
  %bf.clear = and i32 %bf.lshr, 255, !dbg !2900
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !2895, metadata !DIExpression()), !dbg !2896
  br label %if.end, !dbg !2901

if.end:                                           ; preds = %if.then, %entry
  %mode.addr.0 = phi i32 [ %bf.clear, %if.then ], [ %mode, %entry ]
  call void @llvm.dbg.value(metadata i32 %mode.addr.0, metadata !2895, metadata !DIExpression()), !dbg !2896
  %idxprom = sext i32 %mode.addr.0 to i64, !dbg !2902
  %arrayidx = getelementptr inbounds [3 x [87 x %struct.rtx_def*]], [3 x [87 x %struct.rtx_def*]]* @const_tiny_rtx, i64 0, i64 0, i64 %idxprom, !dbg !2902
  %1 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8, !dbg !2902
  %cmp1 = icmp eq %struct.rtx_def* %1, %op, !dbg !2903
  %conv = zext i1 %cmp1 to i32, !dbg !2903
  ret i32 %conv, !dbg !2904
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const1_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2905 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2907, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2908, metadata !DIExpression()), !dbg !2909
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2910
  %bf.load = load i32, i32* %0, align 8, !dbg !2910
  %bf.clear = and i32 %bf.load, 65535, !dbg !2910
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !2911
  %1 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 65), align 8, !dbg !2912
  %cmp1 = icmp eq %struct.rtx_def* %1, %op, !dbg !2912
  %2 = and i1 %cmp, %cmp1, !dbg !2912
  %land.ext = zext i1 %2 to i32, !dbg !2912
  ret i32 %land.ext, !dbg !2913
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const8_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2914 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2916, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2917, metadata !DIExpression()), !dbg !2918
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2919
  %bf.load = load i32, i32* %0, align 8, !dbg !2919
  %bf.clear = and i32 %bf.load, 65535, !dbg !2919
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !2920
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2921

land.rhs:                                         ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !2922
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !2922
  %1 = load i64, i64* %arrayidx, align 8, !dbg !2922
  %cmp1 = icmp eq i64 %1, 8, !dbg !2923
  %phitmp = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %2, !dbg !2924
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const128_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2925 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2927, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2928, metadata !DIExpression()), !dbg !2929
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2930
  %bf.load = load i32, i32* %0, align 8, !dbg !2930
  %bf.clear = and i32 %bf.load, 65535, !dbg !2930
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !2931
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2932

land.rhs:                                         ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !2933
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !2933
  %1 = load i64, i64* %arrayidx, align 8, !dbg !2933
  %cmp1 = icmp eq i64 %1, 128, !dbg !2934
  %phitmp = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %2, !dbg !2935
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const248_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2936 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2938, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2939, metadata !DIExpression()), !dbg !2940
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2941
  %bf.load = load i32, i32* %0, align 8, !dbg !2941
  %bf.clear = and i32 %bf.load, 65535, !dbg !2941
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !2942
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2943

land.rhs:                                         ; preds = %entry
  %call = tail call fastcc i32 @const248_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !2944
  %tobool = icmp ne i32 %call, 0, !dbg !2943
  %phitmp = zext i1 %tobool to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %1, !dbg !2945
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @const248_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !2946 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2948, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2949, metadata !DIExpression()), !dbg !2951
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !2952
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !2952
  %0 = load i64, i64* %arrayidx, align 8, !dbg !2952
  call void @llvm.dbg.value(metadata i64 %0, metadata !2950, metadata !DIExpression()), !dbg !2951
  switch i64 %0, label %lor.rhs [
    i64 2, label %lor.end
    i64 4, label %lor.end
    i64 8, label %lor.end
  ], !dbg !2953

lor.rhs:                                          ; preds = %entry
  br label %lor.end, !dbg !2954

lor.end:                                          ; preds = %entry, %entry, %entry, %lor.rhs
  %1 = phi i32 [ 1, %entry ], [ 0, %lor.rhs ], [ 1, %entry ], [ 1, %entry ]
  ret i32 %1, !dbg !2955
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_0_to_1_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2956 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2958, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2959, metadata !DIExpression()), !dbg !2960
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2961
  %bf.load = load i32, i32* %0, align 8, !dbg !2961
  %bf.clear = and i32 %bf.load, 65535, !dbg !2961
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !2962
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2963

land.rhs:                                         ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !2964
  %cmp1 = icmp eq %struct.rtx_def* %1, %op, !dbg !2965
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 65), align 8, !dbg !2966
  %cmp2 = icmp eq %struct.rtx_def* %2, %op, !dbg !2966
  %3 = or i1 %cmp1, %cmp2, !dbg !2966
  %phitmp = zext i1 %3 to i32, !dbg !2966
  br label %land.end, !dbg !2966

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %4, !dbg !2967
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_0_to_3_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2968 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2970, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2971, metadata !DIExpression()), !dbg !2972
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2973
  %bf.load = load i32, i32* %0, align 8, !dbg !2973
  %bf.clear = and i32 %bf.load, 65535, !dbg !2973
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !2974
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2975

land.rhs:                                         ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !2976
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !2976
  %1 = load i64, i64* %arrayidx, align 8, !dbg !2976
  %cmp1 = icmp ult i64 %1, 4, !dbg !2976
  %phitmp = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %2, !dbg !2977
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_0_to_7_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2978 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2980, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2981, metadata !DIExpression()), !dbg !2982
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2983
  %bf.load = load i32, i32* %0, align 8, !dbg !2983
  %bf.clear = and i32 %bf.load, 65535, !dbg !2983
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !2984
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2985

land.rhs:                                         ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !2986
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !2986
  %1 = load i64, i64* %arrayidx, align 8, !dbg !2986
  %cmp1 = icmp ult i64 %1, 8, !dbg !2986
  %phitmp = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %2, !dbg !2987
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_0_to_15_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2988 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !2990, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2991, metadata !DIExpression()), !dbg !2992
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !2993
  %bf.load = load i32, i32* %0, align 8, !dbg !2993
  %bf.clear = and i32 %bf.load, 65535, !dbg !2993
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !2994
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2995

land.rhs:                                         ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !2996
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !2996
  %1 = load i64, i64* %arrayidx, align 8, !dbg !2996
  %cmp1 = icmp ult i64 %1, 16, !dbg !2996
  %phitmp = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %2, !dbg !2997
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_0_to_31_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !2998 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3000, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3001, metadata !DIExpression()), !dbg !3002
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3003
  %bf.load = load i32, i32* %0, align 8, !dbg !3003
  %bf.clear = and i32 %bf.load, 65535, !dbg !3003
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !3004
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3005

land.rhs:                                         ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !3006
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3006
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3006
  %cmp1 = icmp ult i64 %1, 32, !dbg !3006
  %phitmp = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %2, !dbg !3007
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_0_to_63_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3008 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3010, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3011, metadata !DIExpression()), !dbg !3012
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3013
  %bf.load = load i32, i32* %0, align 8, !dbg !3013
  %bf.clear = and i32 %bf.load, 65535, !dbg !3013
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !3014
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3015

land.rhs:                                         ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !3016
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3016
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3016
  %cmp1 = icmp ult i64 %1, 64, !dbg !3016
  %phitmp = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %2, !dbg !3017
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_0_to_255_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3018 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3020, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3021, metadata !DIExpression()), !dbg !3022
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3023
  %bf.load = load i32, i32* %0, align 8, !dbg !3023
  %bf.clear = and i32 %bf.load, 65535, !dbg !3023
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !3024
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3025

land.rhs:                                         ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !3026
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3026
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3026
  %cmp1 = icmp ult i64 %1, 256, !dbg !3026
  %phitmp = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %2, !dbg !3027
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_0_to_255_mul_8_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3028 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3030, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3031, metadata !DIExpression()), !dbg !3032
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3033
  %bf.load = load i32, i32* %0, align 8, !dbg !3033
  %bf.clear = and i32 %bf.load, 65535, !dbg !3033
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !3034
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3035

land.rhs:                                         ; preds = %entry
  %call = tail call fastcc i32 @const_0_to_255_mul_8_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3036
  %tobool = icmp ne i32 %call, 0, !dbg !3035
  %phitmp = zext i1 %tobool to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %1, !dbg !3037
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @const_0_to_255_mul_8_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !3038 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3040, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3041, metadata !DIExpression()), !dbg !3043
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !3044
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3044
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3044
  call void @llvm.dbg.value(metadata i64 %0, metadata !3042, metadata !DIExpression()), !dbg !3043
  %cmp = icmp ult i64 %0, 2041, !dbg !3045
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3046

land.rhs:                                         ; preds = %entry
  %rem = and i64 %0, 7, !dbg !3047
  %cmp1 = icmp eq i64 %rem, 0, !dbg !3048
  %phitmp = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %1, !dbg !3049
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_1_to_31_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3050 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3052, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3053, metadata !DIExpression()), !dbg !3054
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3055
  %bf.load = load i32, i32* %0, align 8, !dbg !3055
  %bf.clear = and i32 %bf.load, 65535, !dbg !3055
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !3056
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3057

land.rhs:                                         ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !3058
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3058
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3058
  %sub = add i64 %1, -1, !dbg !3058
  %cmp1 = icmp ult i64 %sub, 31, !dbg !3058
  %phitmp = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %2, !dbg !3059
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_1_to_63_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3060 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3062, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3063, metadata !DIExpression()), !dbg !3064
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3065
  %bf.load = load i32, i32* %0, align 8, !dbg !3065
  %bf.clear = and i32 %bf.load, 65535, !dbg !3065
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !3066
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3067

land.rhs:                                         ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !3068
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3068
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3068
  %sub = add i64 %1, -1, !dbg !3068
  %cmp1 = icmp ult i64 %sub, 63, !dbg !3068
  %phitmp = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %2, !dbg !3069
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_2_to_3_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3070 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3072, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3073, metadata !DIExpression()), !dbg !3074
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3075
  %bf.load = load i32, i32* %0, align 8, !dbg !3075
  %bf.clear = and i32 %bf.load, 65535, !dbg !3075
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !3076
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3077

land.rhs:                                         ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !3078
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3078
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3078
  %2 = and i64 %1, -2, !dbg !3078
  %cmp1 = icmp eq i64 %2, 2, !dbg !3078
  %phitmp = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %3, !dbg !3079
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_4_to_5_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3080 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3082, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3083, metadata !DIExpression()), !dbg !3084
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3085
  %bf.load = load i32, i32* %0, align 8, !dbg !3085
  %bf.clear = and i32 %bf.load, 65535, !dbg !3085
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !3086
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3087

land.rhs:                                         ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !3088
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3088
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3088
  %2 = and i64 %1, -2, !dbg !3088
  %cmp1 = icmp eq i64 %2, 4, !dbg !3088
  %phitmp = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %3, !dbg !3089
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_4_to_7_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3090 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3092, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3093, metadata !DIExpression()), !dbg !3094
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3095
  %bf.load = load i32, i32* %0, align 8, !dbg !3095
  %bf.clear = and i32 %bf.load, 65535, !dbg !3095
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !3096
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3097

land.rhs:                                         ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !3098
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3098
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3098
  %2 = and i64 %1, -4, !dbg !3098
  %cmp1 = icmp eq i64 %2, 4, !dbg !3098
  %phitmp = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %3, !dbg !3099
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_6_to_7_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3100 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3102, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3103, metadata !DIExpression()), !dbg !3104
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3105
  %bf.load = load i32, i32* %0, align 8, !dbg !3105
  %bf.clear = and i32 %bf.load, 65535, !dbg !3105
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !3106
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3107

land.rhs:                                         ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !3108
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3108
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3108
  %2 = and i64 %1, -2, !dbg !3108
  %cmp1 = icmp eq i64 %2, 6, !dbg !3108
  %phitmp = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %3, !dbg !3109
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_8_to_11_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3110 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3112, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3113, metadata !DIExpression()), !dbg !3114
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3115
  %bf.load = load i32, i32* %0, align 8, !dbg !3115
  %bf.clear = and i32 %bf.load, 65535, !dbg !3115
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !3116
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3117

land.rhs:                                         ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !3118
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3118
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3118
  %2 = and i64 %1, -4, !dbg !3118
  %cmp1 = icmp eq i64 %2, 8, !dbg !3118
  %phitmp = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %3, !dbg !3119
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_12_to_15_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3120 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3122, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3123, metadata !DIExpression()), !dbg !3124
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3125
  %bf.load = load i32, i32* %0, align 8, !dbg !3125
  %bf.clear = and i32 %bf.load, 65535, !dbg !3125
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !3126
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3127

land.rhs:                                         ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !3128
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3128
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3128
  %2 = and i64 %1, -4, !dbg !3128
  %cmp1 = icmp eq i64 %2, 12, !dbg !3128
  %phitmp = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %3, !dbg !3129
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_pow2_1_to_2_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3130 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3132, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3133, metadata !DIExpression()), !dbg !3134
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3135
  %bf.load = load i32, i32* %0, align 8, !dbg !3135
  %bf.clear = and i32 %bf.load, 65535, !dbg !3135
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !3136
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3137

land.rhs:                                         ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !3138
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3138
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3138
  %cmp1 = icmp eq i64 %1, 1, !dbg !3139
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !3140

lor.rhs:                                          ; preds = %land.rhs
  %cmp5 = icmp eq i64 %1, 2, !dbg !3141
  %phitmp = zext i1 %cmp5 to i32, !dbg !3140
  br label %land.end, !dbg !3140

land.end:                                         ; preds = %land.rhs, %lor.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %2, !dbg !3142
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_pow2_1_to_8_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3143 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3145, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3146, metadata !DIExpression()), !dbg !3147
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3148
  %bf.load = load i32, i32* %0, align 8, !dbg !3148
  %bf.clear = and i32 %bf.load, 65535, !dbg !3148
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !3149
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3150

land.rhs:                                         ; preds = %entry
  %call = tail call fastcc i32 @const_pow2_1_to_8_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3151
  %tobool = icmp ne i32 %call, 0, !dbg !3150
  %phitmp = zext i1 %tobool to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %1, !dbg !3152
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @const_pow2_1_to_8_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !3153 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3155, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3156, metadata !DIExpression()), !dbg !3158
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !3159
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3159
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3159
  %call = tail call i32 @exact_log2(i64 %0) #6, !dbg !3160
  call void @llvm.dbg.value(metadata i32 %call, metadata !3157, metadata !DIExpression()), !dbg !3158
  %cmp = icmp ult i32 %call, 4, !dbg !3161
  %conv = zext i1 %cmp to i32, !dbg !3161
  ret i32 %conv, !dbg !3162
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_pow2_1_to_128_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3163 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3165, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3166, metadata !DIExpression()), !dbg !3167
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3168
  %bf.load = load i32, i32* %0, align 8, !dbg !3168
  %bf.clear = and i32 %bf.load, 65535, !dbg !3168
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !3169
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3170

land.rhs:                                         ; preds = %entry
  %call = tail call fastcc i32 @const_pow2_1_to_128_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3171
  %tobool = icmp ne i32 %call, 0, !dbg !3170
  %phitmp = zext i1 %tobool to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %1, !dbg !3172
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @const_pow2_1_to_128_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !3173 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3175, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3176, metadata !DIExpression()), !dbg !3178
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !3179
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3179
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3179
  %call = tail call i32 @exact_log2(i64 %0) #6, !dbg !3180
  call void @llvm.dbg.value(metadata i32 %call, metadata !3177, metadata !DIExpression()), !dbg !3178
  %cmp = icmp ult i32 %call, 8, !dbg !3181
  %conv = zext i1 %cmp to i32, !dbg !3181
  ret i32 %conv, !dbg !3182
}

; Function Attrs: nounwind uwtable
define dso_local i32 @const_pow2_1_to_32768_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3183 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3185, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3186, metadata !DIExpression()), !dbg !3187
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3188
  %bf.load = load i32, i32* %0, align 8, !dbg !3188
  %bf.clear = and i32 %bf.load, 65535, !dbg !3188
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !3189
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3190

land.rhs:                                         ; preds = %entry
  %call = tail call fastcc i32 @const_pow2_1_to_32768_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3191
  %tobool = icmp ne i32 %call, 0, !dbg !3190
  %phitmp = zext i1 %tobool to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %1, !dbg !3192
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @const_pow2_1_to_32768_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !3193 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3195, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3196, metadata !DIExpression()), !dbg !3198
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !3199
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !3199
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3199
  %call = tail call i32 @exact_log2(i64 %0) #6, !dbg !3200
  call void @llvm.dbg.value(metadata i32 %call, metadata !3197, metadata !DIExpression()), !dbg !3198
  %cmp = icmp ult i32 %call, 16, !dbg !3201
  %conv = zext i1 %cmp to i32, !dbg !3201
  ret i32 %conv, !dbg !3202
}

; Function Attrs: nounwind uwtable
define dso_local i32 @incdec_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3203 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3205, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3206, metadata !DIExpression()), !dbg !3207
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3208
  %bf.load = load i32, i32* %0, align 8, !dbg !3208
  %bf.clear = and i32 %bf.load, 65535, !dbg !3208
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !3209
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3210

land.rhs:                                         ; preds = %entry
  %call = tail call fastcc i32 @incdec_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3211
  %tobool = icmp ne i32 %call, 0, !dbg !3210
  %phitmp = zext i1 %tobool to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %1, !dbg !3212
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @incdec_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !3213 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3215, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3216, metadata !DIExpression()), !dbg !3217
  %0 = load i8, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @ix86_tune_features, i64 0, i64 47), align 1, !dbg !3218
  %tobool = icmp eq i8 %0, 0, !dbg !3218
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3220

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i8 @optimize_insn_for_size_p() #6, !dbg !3221
  %tobool1 = icmp eq i8 %call, 0, !dbg !3221
  br i1 %tobool1, label %return, label %if.end, !dbg !3222

if.end:                                           ; preds = %land.lhs.true, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 65), align 8, !dbg !3223
  %cmp = icmp eq %struct.rtx_def* %1, %op, !dbg !3224
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 63), align 8, !dbg !3225
  %cmp2 = icmp eq %struct.rtx_def* %2, %op, !dbg !3225
  %3 = or i1 %cmp, %cmp2, !dbg !3225
  %lor.ext = zext i1 %3 to i32, !dbg !3225
  br label %return, !dbg !3226

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ %lor.ext, %if.end ], [ 0, %land.lhs.true ], !dbg !3217
  ret i32 %retval.0, !dbg !3227
}

; Function Attrs: nounwind uwtable
define dso_local i32 @reg_or_pm1_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3228 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3230, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3231, metadata !DIExpression()), !dbg !3232
  %call = tail call i32 @register_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !3233
  %tobool = icmp eq i32 %call, 0, !dbg !3233
  br i1 %tobool, label %lor.rhs, label %lor.end4, !dbg !3234

lor.rhs:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3235
  %bf.load = load i32, i32* %0, align 8, !dbg !3235
  %bf.clear = and i32 %bf.load, 65535, !dbg !3235
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !3236
  br i1 %cmp, label %land.rhs, label %lor.end4, !dbg !3237

land.rhs:                                         ; preds = %lor.rhs
  %1 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 65), align 8, !dbg !3238
  %cmp1 = icmp eq %struct.rtx_def* %1, %op, !dbg !3239
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 63), align 8, !dbg !3240
  %cmp3 = icmp eq %struct.rtx_def* %2, %op, !dbg !3240
  %3 = or i1 %cmp1, %cmp3, !dbg !3240
  %phitmp = zext i1 %3 to i32, !dbg !3240
  br label %lor.end4, !dbg !3240

lor.end4:                                         ; preds = %entry, %lor.rhs, %land.rhs
  %4 = phi i32 [ 1, %entry ], [ 0, %lor.rhs ], [ %phitmp, %land.rhs ]
  ret i32 %4, !dbg !3241
}

; Function Attrs: nounwind uwtable
define dso_local i32 @shiftdi_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3242 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3244, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3245, metadata !DIExpression()), !dbg !3246
  %call = tail call i32 @register_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !3247
  ret i32 %call, !dbg !3248
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ashldi_input_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3249 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3251, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3252, metadata !DIExpression()), !dbg !3253
  %call = tail call i32 @reg_or_pm1_operand(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3254
  ret i32 %call, !dbg !3255
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zero_extended_scalar_load_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3256 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3258, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3259, metadata !DIExpression()), !dbg !3260
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3261
  %bf.load = load i32, i32* %0, align 8, !dbg !3261
  %bf.clear = and i32 %bf.load, 65535, !dbg !3261
  %cmp = icmp eq i32 %bf.clear, 43, !dbg !3262
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !3263

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @zero_extended_scalar_load_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3264
  %tobool = icmp eq i32 %call, 0, !dbg !3264
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3265

land.rhs:                                         ; preds = %land.lhs.true
  %cmp1 = icmp eq i32 %mode, 0, !dbg !3266
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !3267

lor.rhs:                                          ; preds = %land.rhs
  %bf.load2 = load i32, i32* %0, align 8, !dbg !3268
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !3268
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !3268
  %cmp4 = icmp eq i32 %bf.clear3, %mode, !dbg !3269
  %phitmp = zext i1 %cmp4 to i32, !dbg !3267
  br label %land.end, !dbg !3267

land.end:                                         ; preds = %land.lhs.true, %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !3270
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @zero_extended_scalar_load_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !3271 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3273, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3274, metadata !DIExpression()), !dbg !3280
  %call = tail call %struct.rtx_def* @maybe_get_pool_constant(%struct.rtx_def* %op) #6, !dbg !3281
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3273, metadata !DIExpression()), !dbg !3280
  %tobool = icmp eq %struct.rtx_def* %call, null, !dbg !3282
  br i1 %tobool, label %cleanup18, label %land.lhs.true, !dbg !3284

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !3285
  %bf.load = load i32, i32* %0, align 8, !dbg !3285
  %bf.clear = and i32 %bf.load, 65535, !dbg !3285
  %cmp = icmp eq i32 %bf.clear, 33, !dbg !3286
  br i1 %cmp, label %if.end, label %cleanup18, !dbg !3287

if.end:                                           ; preds = %land.lhs.true
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3288
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**, !dbg !3288
  %1 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3288
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1, i64 0, i32 0, !dbg !3288
  %2 = load i32, i32* %num_elem, align 8, !dbg !3288
  call void @llvm.dbg.value(metadata i32 %2, metadata !3275, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i32 %2, metadata !3275, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3280
  br label %for.cond, !dbg !3289

for.cond:                                         ; preds = %for.inc, %if.end
  %n_elts.0.in = phi i32 [ %2, %if.end ], [ %n_elts.0, %for.inc ]
  %n_elts.0 = add i32 %n_elts.0.in, -1, !dbg !3290
  call void @llvm.dbg.value(metadata i32 %n_elts.0, metadata !3275, metadata !DIExpression()), !dbg !3280
  %cmp1 = icmp eq i32 %n_elts.0, 0, !dbg !3291
  br i1 %cmp1, label %cleanup18.loopexit, label %for.body, !dbg !3292

for.body:                                         ; preds = %for.cond
  %idxprom = zext i32 %n_elts.0 to i64, !dbg !3293
  %arrayidx6 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1, i64 0, i32 1, i64 %idxprom, !dbg !3293
  %3 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx6, align 8, !dbg !3293
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !3276, metadata !DIExpression()), !dbg !3294
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3295
  %bf.clear8 = and i32 %bf.lshr, 255, !dbg !3295
  %idxprom9 = zext i32 %bf.clear8 to i64, !dbg !3295
  %arrayidx10 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom9, !dbg !3295
  %4 = load i8, i8* %arrayidx10, align 1, !dbg !3295
  %idxprom11 = zext i8 %4 to i64, !dbg !3295
  %arrayidx12 = getelementptr inbounds [3 x [87 x %struct.rtx_def*]], [3 x [87 x %struct.rtx_def*]]* @const_tiny_rtx, i64 0, i64 0, i64 %idxprom11, !dbg !3295
  %5 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx12, align 8, !dbg !3295
  %cmp13 = icmp eq %struct.rtx_def* %3, %5, !dbg !3297
  br i1 %cmp13, label %for.inc, label %cleanup18.loopexit

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %n_elts.0, metadata !3275, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3280
  br label %for.cond, !dbg !3298, !llvm.loop !3299

cleanup18.loopexit:                               ; preds = %for.body, %for.cond
  %retval.2.ph = phi i32 [ 1, %for.cond ], [ 0, %for.body ]
  br label %cleanup18, !dbg !3301

cleanup18:                                        ; preds = %cleanup18.loopexit, %entry, %land.lhs.true
  %retval.2 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %retval.2.ph, %cleanup18.loopexit ], !dbg !3280
  ret i32 %retval.2, !dbg !3301
}

; Function Attrs: nounwind uwtable
define dso_local i32 @vector_all_ones_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3302 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3304, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3305, metadata !DIExpression()), !dbg !3306
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3307
  %bf.load = load i32, i32* %0, align 8, !dbg !3307
  %bf.clear = and i32 %bf.load, 65535, !dbg !3307
  %cmp = icmp eq i32 %bf.clear, 33, !dbg !3308
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !3309

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @vector_all_ones_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3310
  %tobool = icmp eq i32 %call, 0, !dbg !3310
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3311

land.rhs:                                         ; preds = %land.lhs.true
  %cmp1 = icmp eq i32 %mode, 0, !dbg !3312
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !3313

lor.rhs:                                          ; preds = %land.rhs
  %bf.load2 = load i32, i32* %0, align 8, !dbg !3314
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !3314
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !3314
  %cmp4 = icmp eq i32 %bf.clear3, %mode, !dbg !3315
  %phitmp = zext i1 %cmp4 to i32, !dbg !3313
  br label %land.end, !dbg !3313

land.end:                                         ; preds = %land.lhs.true, %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !3316
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @vector_all_ones_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !3317 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3319, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3320, metadata !DIExpression()), !dbg !3329
  %idxprom = zext i32 %mode to i64, !dbg !3330
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_nunits, i64 0, i64 %idxprom, !dbg !3330
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3330
  call void @llvm.dbg.value(metadata i8 %0, metadata !3321, metadata !DIExpression()), !dbg !3329
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3331
  %bf.load = load i32, i32* %1, align 8, !dbg !3331
  %bf.clear = and i32 %bf.load, 65535, !dbg !3331
  %cmp = icmp eq i32 %bf.clear, 33, !dbg !3332
  br i1 %cmp, label %land.lhs.true, label %cleanup18, !dbg !3333

land.lhs.true:                                    ; preds = %entry
  %conv = zext i8 %0 to i32, !dbg !3330
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3321, metadata !DIExpression()), !dbg !3329
  %arrayidx2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3334
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtvec_def**, !dbg !3334
  %2 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3334
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2, i64 0, i32 0, !dbg !3334
  %3 = load i32, i32* %num_elem, align 8, !dbg !3334
  %cmp3 = icmp eq i32 %3, %conv, !dbg !3335
  br i1 %cmp3, label %for.cond.preheader, label %cleanup18, !dbg !3336

for.cond.preheader:                               ; preds = %land.lhs.true
  %4 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 63), align 8, !dbg !3337
  %wide.trip.count = zext i8 %0 to i64, !dbg !3339
  br label %for.cond, !dbg !3340

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !3341
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3322, metadata !DIExpression()), !dbg !3342
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !3339
  br i1 %exitcond, label %cleanup18.loopexit, label %for.body, !dbg !3340

for.body:                                         ; preds = %for.cond
  %arrayidx12 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2, i64 0, i32 1, i64 %indvars.iv, !dbg !3343
  %5 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx12, align 8, !dbg !3343
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !3325, metadata !DIExpression()), !dbg !3344
  %cmp13 = icmp eq %struct.rtx_def* %5, %4, !dbg !3345
  br i1 %cmp13, label %for.inc, label %cleanup18.loopexit

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3346
  call void @llvm.dbg.value(metadata i32 undef, metadata !3322, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3342
  br label %for.cond, !dbg !3347, !llvm.loop !3348

cleanup18.loopexit:                               ; preds = %for.body, %for.cond
  %retval.3.ph = phi i32 [ 1, %for.cond ], [ 0, %for.body ]
  br label %cleanup18, !dbg !3350

cleanup18:                                        ; preds = %cleanup18.loopexit, %entry, %land.lhs.true
  %retval.3 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %retval.3.ph, %cleanup18.loopexit ], !dbg !3329
  ret i32 %retval.3, !dbg !3350
}

; Function Attrs: nounwind uwtable
define dso_local i32 @vector_move_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3351 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3353, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3354, metadata !DIExpression()), !dbg !3355
  %call = tail call i32 @nonimmediate_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !3356
  %tobool = icmp eq i32 %call, 0, !dbg !3356
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3357

lor.rhs:                                          ; preds = %entry
  %call1 = tail call i32 @const0_operand(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3358
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3357
  %phitmp = zext i1 %tobool2 to i32, !dbg !3357
  br label %lor.end, !dbg !3357

lor.end:                                          ; preds = %entry, %lor.rhs
  %0 = phi i32 [ 1, %entry ], [ %phitmp, %lor.rhs ]
  ret i32 %0, !dbg !3359
}

; Function Attrs: nounwind uwtable
define dso_local i32 @nonimmediate_or_sse_const_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3360 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3362, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3363, metadata !DIExpression()), !dbg !3364
  %call = tail call i32 @general_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !3365
  %tobool = icmp eq i32 %call, 0, !dbg !3365
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3366

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @nonimmediate_or_sse_const_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3367
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3366
  %phitmp = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %0, !dbg !3368
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @nonimmediate_or_sse_const_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !3369 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3371, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3372, metadata !DIExpression()), !dbg !3373
  %call = tail call i32 @nonimmediate_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !3374
  %tobool = icmp eq i32 %call, 0, !dbg !3374
  br i1 %tobool, label %if.end, label %return, !dbg !3376

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @standard_sse_constant_p(%struct.rtx_def* %op) #6, !dbg !3377
  %cmp = icmp sgt i32 %call1, 0, !dbg !3379
  %. = zext i1 %cmp to i32, !dbg !3373
  br label %return, !dbg !3373

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ], !dbg !3373
  ret i32 %retval.0, !dbg !3380
}

; Function Attrs: nounwind uwtable
define dso_local i32 @reg_or_0_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3381 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3383, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3384, metadata !DIExpression()), !dbg !3385
  %call = tail call i32 @register_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !3386
  %tobool = icmp eq i32 %call, 0, !dbg !3386
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3387

lor.rhs:                                          ; preds = %entry
  %call1 = tail call i32 @const0_operand(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3388
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3387
  %phitmp = zext i1 %tobool2 to i32, !dbg !3387
  br label %lor.end, !dbg !3387

lor.end:                                          ; preds = %entry, %lor.rhs
  %0 = phi i32 [ 1, %entry ], [ %phitmp, %lor.rhs ]
  ret i32 %0, !dbg !3389
}

; Function Attrs: nounwind uwtable
define dso_local i32 @no_seg_address_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3390 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3392, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3393, metadata !DIExpression()), !dbg !3394
  %call = tail call i32 @address_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !3395
  %tobool = icmp eq i32 %call, 0, !dbg !3395
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3396

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @no_seg_address_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3397
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3396
  %phitmp = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %0, !dbg !3398
}

declare dso_local i32 @address_operand(%struct.rtx_def*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @no_seg_address_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !3399 {
entry:
  %parts = alloca %struct.ix86_address, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3401, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3402, metadata !DIExpression()), !dbg !3412
  %0 = bitcast %struct.ix86_address* %parts to i8*, !dbg !3413
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3413
  call void @llvm.dbg.value(metadata %struct.ix86_address* %parts, metadata !3403, metadata !DIExpression(DW_OP_deref)), !dbg !3412
  %call = call i32 @ix86_decompose_address(%struct.rtx_def* %op, %struct.ix86_address* nonnull %parts) #6, !dbg !3414
  call void @llvm.dbg.value(metadata i32 %call, metadata !3411, metadata !DIExpression()), !dbg !3412
  %tobool = icmp eq i32 %call, 0, !dbg !3415
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3415

cond.true:                                        ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 1168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3415
  br label %cond.end, !dbg !3415

cond.end:                                         ; preds = %entry, %cond.true
  %seg = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %parts, i64 0, i32 4, !dbg !3416
  %1 = load i32, i32* %seg, align 8, !dbg !3416
  %cmp = icmp eq i32 %1, 0, !dbg !3417
  %conv = zext i1 %cmp to i32, !dbg !3417
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3418
  ret i32 %conv, !dbg !3419
}

; Function Attrs: nounwind uwtable
define dso_local i32 @aligned_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3420 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3422, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3423, metadata !DIExpression()), !dbg !3424
  %call = tail call i32 @general_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !3425
  %tobool = icmp eq i32 %call, 0, !dbg !3425
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3426

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @aligned_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3427
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3426
  %phitmp = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %0, !dbg !3428
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @aligned_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !3429 {
entry:
  %parts = alloca %struct.ix86_address, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3431, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3432, metadata !DIExpression()), !dbg !3435
  %0 = bitcast %struct.ix86_address* %parts to i8*, !dbg !3436
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3436
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3437
  %bf.load = load i32, i32* %1, align 8, !dbg !3437
  %bf.clear = and i32 %bf.load, 65535, !dbg !3437
  %cmp = icmp eq i32 %bf.clear, 43, !dbg !3437
  br i1 %cmp, label %if.end, label %cleanup, !dbg !3439

if.end:                                           ; preds = %entry
  %2 = load i8, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @ix86_tune_features, i64 0, i64 37), align 1, !dbg !3440
  %tobool = icmp eq i8 %2, 0, !dbg !3440
  br i1 %tobool, label %if.end3, label %land.lhs.true, !dbg !3442

land.lhs.true:                                    ; preds = %if.end
  %call = tail call zeroext i8 @optimize_insn_for_size_p() #6, !dbg !3443
  %tobool1 = icmp eq i8 %call, 0, !dbg !3443
  br i1 %tobool1, label %cleanup, label %land.lhs.true.if.end3_crit_edge, !dbg !3444

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  %bf.load4.pre = load i32, i32* %1, align 8, !dbg !3445
  br label %if.end3, !dbg !3444

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end
  %bf.load4 = phi i32 [ %bf.load4.pre, %land.lhs.true.if.end3_crit_edge ], [ %bf.load, %if.end ], !dbg !3445
  %bf.clear5 = and i32 %bf.load4, 134217728, !dbg !3445
  %tobool6 = icmp eq i32 %bf.clear5, 0, !dbg !3445
  br i1 %tobool6, label %if.end8, label %cleanup, !dbg !3447

if.end8:                                          ; preds = %if.end3
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3448
  %rt_mem = bitcast %union.rtunion_def* %3 to %struct.mem_attrs**, !dbg !3448
  %4 = load %struct.mem_attrs*, %struct.mem_attrs** %rt_mem, align 8, !dbg !3448
  %cmp9 = icmp eq %struct.mem_attrs* %4, null, !dbg !3448
  br i1 %cmp9, label %cond.end, label %cond.true, !dbg !3448

cond.true:                                        ; preds = %if.end8
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %4, i64 0, i32 4, !dbg !3448
  %5 = load i32, i32* %align, align 4, !dbg !3448
  %phitmp = icmp ugt i32 %5, 31, !dbg !3448
  br label %cond.end, !dbg !3448

cond.end:                                         ; preds = %if.end8, %cond.true
  %cond = phi i1 [ %phitmp, %cond.true ], [ false, %if.end8 ]
  br i1 %cond, label %cleanup, label %if.end18, !dbg !3450

if.end18:                                         ; preds = %cond.end
  %arrayidx21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3451
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**, !dbg !3451
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3451
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !3431, metadata !DIExpression()), !dbg !3435
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 0, !dbg !3452
  %bf.load22 = load i32, i32* %7, align 8, !dbg !3452
  %bf.clear23 = and i32 %bf.load22, 65535, !dbg !3452
  %cmp24 = icmp eq i32 %bf.clear23, 74, !dbg !3454
  br i1 %cmp24, label %cleanup, label %lor.lhs.false, !dbg !3455

lor.lhs.false:                                    ; preds = %if.end18
  %cmp28 = icmp eq i32 %bf.clear23, 77, !dbg !3456
  br i1 %cmp28, label %cleanup, label %if.end31, !dbg !3457

if.end31:                                         ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct.ix86_address* %parts, metadata !3433, metadata !DIExpression(DW_OP_deref)), !dbg !3435
  %call32 = call i32 @ix86_decompose_address(%struct.rtx_def* %6, %struct.ix86_address* nonnull %parts) #6, !dbg !3458
  call void @llvm.dbg.value(metadata i32 %call32, metadata !3434, metadata !DIExpression()), !dbg !3435
  %tobool33 = icmp eq i32 %call32, 0, !dbg !3459
  br i1 %tobool33, label %cond.true34, label %cond.end36, !dbg !3459

cond.true34:                                      ; preds = %if.end31
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 1211, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3459
  br label %cond.end36, !dbg !3459

cond.end36:                                       ; preds = %if.end31, %cond.true34
  %index = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %parts, i64 0, i32 1, !dbg !3460
  %8 = load %struct.rtx_def*, %struct.rtx_def** %index, align 8, !dbg !3460
  %tobool38 = icmp eq %struct.rtx_def* %8, null, !dbg !3462
  br i1 %tobool38, label %if.end48, label %if.then39, !dbg !3463

if.then39:                                        ; preds = %cond.end36
  %9 = load i8*, i8** getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 1, i32 9), align 8, !dbg !3464
  %call41 = call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %8) #7, !dbg !3464
  %idxprom = zext i32 %call41 to i64, !dbg !3464
  %arrayidx42 = getelementptr inbounds i8, i8* %9, i64 %idxprom, !dbg !3464
  %10 = load i8, i8* %arrayidx42, align 1, !dbg !3464
  %conv43 = zext i8 %10 to i64, !dbg !3464
  %scale = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %parts, i64 0, i32 3, !dbg !3467
  %11 = load i64, i64* %scale, align 8, !dbg !3467
  %mul = mul nsw i64 %11, %conv43, !dbg !3468
  %cmp44 = icmp slt i64 %mul, 32, !dbg !3469
  br i1 %cmp44, label %cleanup, label %if.end48, !dbg !3470

if.end48:                                         ; preds = %cond.end36, %if.then39
  %base = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %parts, i64 0, i32 0, !dbg !3471
  %12 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8, !dbg !3471
  %tobool49 = icmp eq %struct.rtx_def* %12, null, !dbg !3473
  br i1 %tobool49, label %if.end60, label %if.then50, !dbg !3474

if.then50:                                        ; preds = %if.end48
  %13 = load i8*, i8** getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 1, i32 9), align 8, !dbg !3475
  %call52 = call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %12) #7, !dbg !3475
  %idxprom53 = zext i32 %call52 to i64, !dbg !3475
  %arrayidx54 = getelementptr inbounds i8, i8* %13, i64 %idxprom53, !dbg !3475
  %14 = load i8, i8* %arrayidx54, align 1, !dbg !3475
  %cmp56 = icmp ult i8 %14, 32, !dbg !3478
  br i1 %cmp56, label %cleanup, label %if.end60, !dbg !3479

if.end60:                                         ; preds = %if.end48, %if.then50
  %disp = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %parts, i64 0, i32 2, !dbg !3480
  %15 = load %struct.rtx_def*, %struct.rtx_def** %disp, align 8, !dbg !3480
  %tobool61 = icmp eq %struct.rtx_def* %15, null, !dbg !3482
  br i1 %tobool61, label %if.end76, label %if.then62, !dbg !3483

if.then62:                                        ; preds = %if.end60
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i64 0, i32 0, !dbg !3483
  %bf.load64 = load i32, i32* %16, align 8, !dbg !3484
  %bf.clear65 = and i32 %bf.load64, 65535, !dbg !3484
  %cmp66 = icmp eq i32 %bf.clear65, 30, !dbg !3484
  br i1 %cmp66, label %lor.lhs.false68, label %cleanup, !dbg !3487

lor.lhs.false68:                                  ; preds = %if.then62
  %u70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i64 0, i32 1, !dbg !3488
  %arrayidx71 = bitcast %union.u* %u70 to i64*, !dbg !3488
  %17 = load i64, i64* %arrayidx71, align 8, !dbg !3488
  %and = and i64 %17, 3, !dbg !3489
  %cmp72 = icmp eq i64 %and, 0, !dbg !3490
  br i1 %cmp72, label %if.end76, label %cleanup, !dbg !3491

if.end76:                                         ; preds = %lor.lhs.false68, %if.end60
  br label %cleanup, !dbg !3492

cleanup:                                          ; preds = %land.lhs.true, %lor.lhs.false68, %if.end3, %if.then62, %if.then50, %if.then39, %if.end18, %lor.lhs.false, %cond.end, %entry, %if.end76
  %retval.0 = phi i32 [ 1, %if.end76 ], [ 1, %entry ], [ 0, %land.lhs.true ], [ 0, %if.end3 ], [ 1, %cond.end ], [ 1, %lor.lhs.false ], [ 1, %if.end18 ], [ 0, %if.then39 ], [ 0, %if.then50 ], [ 0, %lor.lhs.false68 ], [ 0, %if.then62 ], !dbg !3435
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3493
  ret i32 %retval.0, !dbg !3493
}

; Function Attrs: nounwind uwtable
define dso_local i32 @memory_displacement_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3494 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3496, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3497, metadata !DIExpression()), !dbg !3498
  %call = tail call i32 @memory_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !3499
  %tobool = icmp eq i32 %call, 0, !dbg !3499
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3500

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @memory_displacement_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3501
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3500
  %phitmp = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %0, !dbg !3502
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @memory_displacement_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !3503 {
entry:
  %parts = alloca %struct.ix86_address, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3505, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3506, metadata !DIExpression()), !dbg !3509
  %0 = bitcast %struct.ix86_address* %parts to i8*, !dbg !3510
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3510
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3511
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3511
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3511
  call void @llvm.dbg.value(metadata %struct.ix86_address* %parts, metadata !3507, metadata !DIExpression(DW_OP_deref)), !dbg !3509
  %call = call i32 @ix86_decompose_address(%struct.rtx_def* %1, %struct.ix86_address* nonnull %parts) #6, !dbg !3512
  call void @llvm.dbg.value(metadata i32 %call, metadata !3508, metadata !DIExpression()), !dbg !3509
  %tobool = icmp eq i32 %call, 0, !dbg !3513
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3513

cond.true:                                        ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 1250, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3513
  br label %cond.end, !dbg !3513

cond.end:                                         ; preds = %entry, %cond.true
  %disp = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %parts, i64 0, i32 2, !dbg !3514
  %2 = load %struct.rtx_def*, %struct.rtx_def** %disp, align 8, !dbg !3514
  %cmp = icmp ne %struct.rtx_def* %2, null, !dbg !3515
  %conv = zext i1 %cmp to i32, !dbg !3515
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3516
  ret i32 %conv, !dbg !3517
}

; Function Attrs: nounwind uwtable
define dso_local i32 @memory_displacement_only_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3518 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3520, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3521, metadata !DIExpression()), !dbg !3522
  %call = tail call i32 @memory_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !3523
  %tobool = icmp eq i32 %call, 0, !dbg !3523
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3524

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @memory_displacement_only_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3525
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3524
  %phitmp = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %0, !dbg !3526
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @memory_displacement_only_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !3527 {
entry:
  %parts = alloca %struct.ix86_address, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3529, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3530, metadata !DIExpression()), !dbg !3533
  %0 = bitcast %struct.ix86_address* %parts to i8*, !dbg !3534
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3534
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3535
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3535
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3535
  call void @llvm.dbg.value(metadata %struct.ix86_address* %parts, metadata !3531, metadata !DIExpression(DW_OP_deref)), !dbg !3533
  %call = call i32 @ix86_decompose_address(%struct.rtx_def* %1, %struct.ix86_address* nonnull %parts) #6, !dbg !3536
  call void @llvm.dbg.value(metadata i32 %call, metadata !3532, metadata !DIExpression()), !dbg !3533
  %tobool = icmp eq i32 %call, 0, !dbg !3537
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3537

cond.true:                                        ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 1272, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3537
  br label %cond.end, !dbg !3537

cond.end:                                         ; preds = %entry, %cond.true
  %base = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %parts, i64 0, i32 0, !dbg !3538
  %2 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8, !dbg !3538
  %tobool1 = icmp eq %struct.rtx_def* %2, null, !dbg !3540
  br i1 %tobool1, label %lor.lhs.false, label %cleanup, !dbg !3541

lor.lhs.false:                                    ; preds = %cond.end
  %index = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %parts, i64 0, i32 1, !dbg !3542
  %3 = load %struct.rtx_def*, %struct.rtx_def** %index, align 8, !dbg !3542
  %tobool2 = icmp eq %struct.rtx_def* %3, null, !dbg !3543
  br i1 %tobool2, label %if.end, label %cleanup, !dbg !3544

if.end:                                           ; preds = %lor.lhs.false
  %disp = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %parts, i64 0, i32 2, !dbg !3545
  %4 = load %struct.rtx_def*, %struct.rtx_def** %disp, align 8, !dbg !3545
  %cmp = icmp ne %struct.rtx_def* %4, null, !dbg !3546
  %conv = zext i1 %cmp to i32, !dbg !3546
  br label %cleanup, !dbg !3547

cleanup:                                          ; preds = %lor.lhs.false, %cond.end, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %lor.lhs.false ], [ 0, %cond.end ], !dbg !3533
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3548
  ret i32 %retval.0, !dbg !3548
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cmpxchg8b_pic_memory_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3549 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3551, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3552, metadata !DIExpression()), !dbg !3553
  %call = tail call i32 @memory_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !3554
  %tobool = icmp eq i32 %call, 0, !dbg !3554
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3555

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @cmpxchg8b_pic_memory_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3556
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3555
  %phitmp = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %0, !dbg !3557
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @cmpxchg8b_pic_memory_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !3558 {
entry:
  %parts = alloca %struct.ix86_address, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3560, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3561, metadata !DIExpression()), !dbg !3564
  %0 = bitcast %struct.ix86_address* %parts to i8*, !dbg !3565
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3565
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3566
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3566
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3566
  call void @llvm.dbg.value(metadata %struct.ix86_address* %parts, metadata !3562, metadata !DIExpression(DW_OP_deref)), !dbg !3564
  %call = call i32 @ix86_decompose_address(%struct.rtx_def* %1, %struct.ix86_address* nonnull %parts) #6, !dbg !3567
  call void @llvm.dbg.value(metadata i32 %call, metadata !3563, metadata !DIExpression()), !dbg !3564
  %tobool = icmp eq i32 %call, 0, !dbg !3568
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3568

cond.true:                                        ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 1295, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3568
  br label %cond.end, !dbg !3568

cond.end:                                         ; preds = %entry, %cond.true
  %base = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %parts, i64 0, i32 0, !dbg !3569
  %2 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8, !dbg !3569
  %cmp = icmp eq %struct.rtx_def* %2, null, !dbg !3571
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !3572

lor.lhs.false:                                    ; preds = %cond.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 5), align 8, !dbg !3573
  %cmp2 = icmp eq %struct.rtx_def* %2, %3, !dbg !3574
  br i1 %cmp2, label %cleanup, label %lor.lhs.false3, !dbg !3575

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 3), align 8, !dbg !3576
  %cmp5 = icmp eq %struct.rtx_def* %2, %4, !dbg !3577
  br i1 %cmp5, label %cleanup, label %lor.lhs.false6, !dbg !3578

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %5 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 4), align 16, !dbg !3579
  %cmp8 = icmp eq %struct.rtx_def* %2, %5, !dbg !3580
  br i1 %cmp8, label %cleanup, label %lor.lhs.false9, !dbg !3581

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %6 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3582
  %cmp11 = icmp eq %struct.rtx_def* %2, %6, !dbg !3583
  br i1 %cmp11, label %cleanup, label %if.end, !dbg !3584

if.end:                                           ; preds = %lor.lhs.false9
  %index = getelementptr inbounds %struct.ix86_address, %struct.ix86_address* %parts, i64 0, i32 1, !dbg !3585
  %7 = load %struct.rtx_def*, %struct.rtx_def** %index, align 8, !dbg !3585
  %cmp12 = icmp eq %struct.rtx_def* %7, null, !dbg !3587
  br i1 %cmp12, label %cleanup, label %lor.lhs.false13, !dbg !3588

lor.lhs.false13:                                  ; preds = %if.end
  %cmp15 = icmp eq %struct.rtx_def* %7, %3, !dbg !3589
  br i1 %cmp15, label %cleanup, label %lor.lhs.false16, !dbg !3590

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %cmp18 = icmp eq %struct.rtx_def* %7, %4, !dbg !3591
  br i1 %cmp18, label %cleanup, label %lor.lhs.false19, !dbg !3592

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %cmp21 = icmp eq %struct.rtx_def* %7, %5, !dbg !3593
  br i1 %cmp21, label %cleanup, label %lor.lhs.false22, !dbg !3594

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %cmp24 = icmp eq %struct.rtx_def* %7, %6, !dbg !3595
  %spec.select = zext i1 %cmp24 to i32, !dbg !3596
  br label %cleanup, !dbg !3596

cleanup:                                          ; preds = %lor.lhs.false22, %if.end, %lor.lhs.false13, %lor.lhs.false16, %lor.lhs.false19, %cond.end, %lor.lhs.false, %lor.lhs.false3, %lor.lhs.false6, %lor.lhs.false9
  %retval.0 = phi i32 [ 1, %lor.lhs.false9 ], [ 1, %lor.lhs.false6 ], [ 1, %lor.lhs.false3 ], [ 1, %lor.lhs.false ], [ 1, %cond.end ], [ 1, %lor.lhs.false19 ], [ 1, %lor.lhs.false16 ], [ 1, %lor.lhs.false13 ], [ 1, %if.end ], [ %spec.select, %lor.lhs.false22 ], !dbg !3564
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3597
  ret i32 %retval.0, !dbg !3597
}

; Function Attrs: nounwind uwtable
define dso_local i32 @long_memory_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3598 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3600, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3601, metadata !DIExpression()), !dbg !3602
  %call = tail call i32 @memory_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !3603
  %tobool = icmp eq i32 %call, 0, !dbg !3603
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3604

land.rhs:                                         ; preds = %entry
  %call1 = tail call i32 @memory_address_length(%struct.rtx_def* %op) #6, !dbg !3605
  %cmp = icmp ne i32 %call1, 0, !dbg !3606
  %phitmp = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %0, !dbg !3607
}

declare dso_local i32 @memory_address_length(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @fcmov_comparison_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3608 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3610, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3611, metadata !DIExpression()), !dbg !3612
  %call = tail call i32 @comparison_operator(%struct.rtx_def* %op, i32 %mode) #6, !dbg !3613
  %tobool = icmp eq i32 %call, 0, !dbg !3613
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3614

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @fcmov_comparison_operator_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3615
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3614
  %phitmp = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %0, !dbg !3616
}

declare dso_local i32 @comparison_operator(%struct.rtx_def*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @fcmov_comparison_operator_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !3617 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3619, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3620, metadata !DIExpression()), !dbg !3623
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3624
  %0 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !3624
  %1 = load i32*, i32** %0, align 8, !dbg !3624
  %bf.load = load i32, i32* %1, align 8, !dbg !3624
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3624
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3624
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3621, metadata !DIExpression()), !dbg !3623
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3625
  %bf.load1 = load i32, i32* %2, align 8, !dbg !3625
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !3625
  call void @llvm.dbg.value(metadata i32 %bf.clear2, metadata !3622, metadata !DIExpression()), !dbg !3623
  %bf.clear.off = add nsw i32 %bf.clear, -11, !dbg !3626
  %switch = icmp ult i32 %bf.clear.off, 2, !dbg !3626
  br i1 %switch, label %if.then, label %if.end6, !dbg !3626

if.then:                                          ; preds = %entry
  %call = tail call i32 @ix86_trivial_fp_comparison_operator(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3628
  %tobool = icmp eq i32 %call, 0, !dbg !3628
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3631

if.end:                                           ; preds = %if.then
  %call5 = tail call i32 @ix86_fp_compare_code_to_integer(i32 %bf.clear2) #6, !dbg !3632
  call void @llvm.dbg.value(metadata i32 %call5, metadata !3622, metadata !DIExpression()), !dbg !3623
  br label %if.end6, !dbg !3633

if.end6:                                          ; preds = %entry, %if.end
  %code.0 = phi i32 [ %call5, %if.end ], [ %bf.clear2, %entry ], !dbg !3623
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3622, metadata !DIExpression()), !dbg !3623
  switch i32 %code.0, label %sw.default [
    i32 89, label %sw.bb
    i32 87, label %sw.bb
    i32 88, label %sw.bb
    i32 86, label %sw.bb
    i32 91, label %cleanup
    i32 90, label %cleanup
    i32 81, label %cleanup
    i32 80, label %cleanup
  ], !dbg !3634

sw.bb:                                            ; preds = %if.end6, %if.end6, %if.end6, %if.end6
  %trunc = trunc i32 %bf.lshr to i8, !dbg !3635
  switch i8 %trunc, label %if.end15 [
    i8 2, label %cleanup
    i8 11, label %cleanup
    i8 12, label %cleanup
    i8 7, label %cleanup
  ], !dbg !3635

if.end15:                                         ; preds = %sw.bb
  br label %cleanup, !dbg !3638

sw.default:                                       ; preds = %if.end6
  br label %cleanup, !dbg !3639

cleanup:                                          ; preds = %if.then, %if.end6, %if.end6, %if.end6, %if.end6, %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.default, %if.end15
  %retval.0 = phi i32 [ 0, %sw.default ], [ 0, %if.end15 ], [ 0, %if.then ], [ 1, %sw.bb ], [ 1, %sw.bb ], [ 1, %sw.bb ], [ 1, %sw.bb ], [ 1, %if.end6 ], [ 1, %if.end6 ], [ 1, %if.end6 ], [ 1, %if.end6 ], !dbg !3623
  ret i32 %retval.0, !dbg !3640
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sse_comparison_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3641 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3643, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3644, metadata !DIExpression()), !dbg !3645
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3646
  %bf.load = load i32, i32* %0, align 8, !dbg !3646
  %trunc = trunc i32 %bf.load to i16, !dbg !3647
  switch i16 %trunc, label %sw.epilog [
    i16 81, label %return
    i16 85, label %return
    i16 84, label %return
    i16 90, label %return
    i16 80, label %return
    i16 93, label %return
    i16 94, label %return
    i16 91, label %return
  ], !dbg !3647

sw.epilog:                                        ; preds = %entry
  br label %return, !dbg !3648

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.epilog
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], !dbg !3645
  ret i32 %retval.0, !dbg !3649
}

; Function Attrs: nounwind uwtable
define dso_local i32 @avx_comparison_float_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3650 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3652, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3653, metadata !DIExpression()), !dbg !3654
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3655
  %bf.load = load i32, i32* %0, align 8, !dbg !3655
  %trunc = trunc i32 %bf.load to i16, !dbg !3656
  switch i16 %trunc, label %return [
    i16 80, label %sw.epilog
    i16 81, label %sw.epilog
    i16 82, label %sw.epilog
    i16 83, label %sw.epilog
    i16 84, label %sw.epilog
    i16 85, label %sw.epilog
    i16 90, label %sw.epilog
    i16 91, label %sw.epilog
    i16 92, label %sw.epilog
    i16 93, label %sw.epilog
    i16 94, label %sw.epilog
    i16 95, label %sw.epilog
    i16 96, label %sw.epilog
    i16 97, label %sw.epilog
  ], !dbg !3656

sw.epilog:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %cmp = icmp eq i32 %mode, 0, !dbg !3657
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3658

lor.rhs:                                          ; preds = %sw.epilog
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3659
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !3659
  %cmp3 = icmp eq i32 %bf.clear2, %mode, !dbg !3660
  %phitmp = zext i1 %cmp3 to i32, !dbg !3658
  br label %lor.end, !dbg !3658

lor.end:                                          ; preds = %lor.rhs, %sw.epilog
  %1 = phi i32 [ 1, %sw.epilog ], [ %phitmp, %lor.rhs ]
  br label %return, !dbg !3661

return:                                           ; preds = %entry, %lor.end
  %retval.0 = phi i32 [ %1, %lor.end ], [ 0, %entry ], !dbg !3654
  ret i32 %retval.0, !dbg !3662
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ix86_comparison_int_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3663 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3665, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3666, metadata !DIExpression()), !dbg !3667
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3668
  %bf.load = load i32, i32* %0, align 8, !dbg !3668
  %bf.clear = and i32 %bf.load, 65535, !dbg !3668
  %bf.clear.off = add nsw i32 %bf.clear, -80, !dbg !3669
  %switch = icmp ult i32 %bf.clear.off, 6, !dbg !3669
  br i1 %switch, label %sw.epilog, label %return, !dbg !3669

sw.epilog:                                        ; preds = %entry
  %cmp = icmp eq i32 %mode, 0, !dbg !3670
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3671

lor.rhs:                                          ; preds = %sw.epilog
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3672
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !3672
  %cmp3 = icmp eq i32 %bf.clear2, %mode, !dbg !3673
  %phitmp = zext i1 %cmp3 to i32, !dbg !3671
  br label %lor.end, !dbg !3671

lor.end:                                          ; preds = %lor.rhs, %sw.epilog
  %1 = phi i32 [ 1, %sw.epilog ], [ %phitmp, %lor.rhs ]
  br label %return, !dbg !3674

return:                                           ; preds = %entry, %lor.end
  %retval.0 = phi i32 [ %1, %lor.end ], [ 0, %entry ], !dbg !3667
  ret i32 %retval.0, !dbg !3675
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ix86_comparison_uns_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3676 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3678, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3679, metadata !DIExpression()), !dbg !3680
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3681
  %bf.load = load i32, i32* %0, align 8, !dbg !3681
  %trunc = trunc i32 %bf.load to i16, !dbg !3682
  switch i16 %trunc, label %return [
    i16 80, label %sw.epilog
    i16 81, label %sw.epilog
    i16 86, label %sw.epilog
    i16 87, label %sw.epilog
    i16 88, label %sw.epilog
    i16 89, label %sw.epilog
  ], !dbg !3682

sw.epilog:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %cmp = icmp eq i32 %mode, 0, !dbg !3683
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3684

lor.rhs:                                          ; preds = %sw.epilog
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3685
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !3685
  %cmp3 = icmp eq i32 %bf.clear2, %mode, !dbg !3686
  %phitmp = zext i1 %cmp3 to i32, !dbg !3684
  br label %lor.end, !dbg !3684

lor.end:                                          ; preds = %lor.rhs, %sw.epilog
  %1 = phi i32 [ 1, %sw.epilog ], [ %phitmp, %lor.rhs ]
  br label %return, !dbg !3687

return:                                           ; preds = %entry, %lor.end
  %retval.0 = phi i32 [ %1, %lor.end ], [ 0, %entry ], !dbg !3680
  ret i32 %retval.0, !dbg !3688
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bt_comparison_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3689 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3691, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3692, metadata !DIExpression()), !dbg !3693
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3694
  %bf.load = load i32, i32* %0, align 8, !dbg !3694
  %bf.clear = and i32 %bf.load, 65534, !dbg !3694
  %switch = icmp eq i32 %bf.clear, 80, !dbg !3695
  br i1 %switch, label %sw.epilog, label %return, !dbg !3695

sw.epilog:                                        ; preds = %entry
  %cmp = icmp eq i32 %mode, 0, !dbg !3696
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3697

lor.rhs:                                          ; preds = %sw.epilog
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3698
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !3698
  %cmp3 = icmp eq i32 %bf.clear2, %mode, !dbg !3699
  %phitmp = zext i1 %cmp3 to i32, !dbg !3697
  br label %lor.end, !dbg !3697

lor.end:                                          ; preds = %lor.rhs, %sw.epilog
  %1 = phi i32 [ 1, %sw.epilog ], [ %phitmp, %lor.rhs ]
  br label %return, !dbg !3700

return:                                           ; preds = %entry, %lor.end
  %retval.0 = phi i32 [ %1, %lor.end ], [ 0, %entry ], !dbg !3693
  ret i32 %retval.0, !dbg !3701
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ix86_comparison_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3702 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3704, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3705, metadata !DIExpression()), !dbg !3706
  %call = tail call i32 @comparison_operator(%struct.rtx_def* %op, i32 %mode) #6, !dbg !3707
  %tobool = icmp eq i32 %call, 0, !dbg !3707
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3708

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @ix86_comparison_operator_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3709
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3708
  %phitmp = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %0, !dbg !3710
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ix86_comparison_operator_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !3711 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3713, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3714, metadata !DIExpression()), !dbg !3717
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3718
  %0 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !3718
  %1 = load i32*, i32** %0, align 8, !dbg !3718
  %bf.load = load i32, i32* %1, align 8, !dbg !3718
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3718
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3718
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3715, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i32 undef, metadata !3716, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !3717
  %bf.clear.off = add nsw i32 %bf.clear, -11, !dbg !3719
  %switch = icmp ult i32 %bf.clear.off, 2, !dbg !3719
  br i1 %switch, label %if.then, label %if.end, !dbg !3719

if.then:                                          ; preds = %entry
  %call = tail call i32 @ix86_trivial_fp_comparison_operator(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3721
  br label %cleanup, !dbg !3722

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3723
  %bf.load1 = load i32, i32* %2, align 8, !dbg !3723
  call void @llvm.dbg.value(metadata i32 %bf.load1, metadata !3716, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !3717
  call void @llvm.dbg.value(metadata i32 %bf.load1, metadata !3716, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !3717
  %trunc = trunc i32 %bf.load1 to i16, !dbg !3724
  switch i16 %trunc, label %sw.default [
    i16 81, label %cleanup
    i16 80, label %cleanup
    i16 85, label %sw.bb4
    i16 82, label %sw.bb4
    i16 89, label %sw.bb14
    i16 87, label %sw.bb14
    i16 88, label %sw.bb14
    i16 86, label %sw.bb14
    i16 91, label %sw.bb20
    i16 90, label %sw.bb20
    i16 83, label %sw.bb24
    i16 84, label %sw.bb24
  ], !dbg !3724

sw.bb4:                                           ; preds = %if.end, %if.end
  %bf.clear.off1 = add nsw i32 %bf.clear, -2, !dbg !3725
  %switch2 = icmp ult i32 %bf.clear.off1, 4, !dbg !3725
  %spec.select = zext i1 %switch2 to i32, !dbg !3725
  ret i32 %spec.select, !dbg !3725

sw.bb14:                                          ; preds = %if.end, %if.end, %if.end, %if.end
  %trunc4 = trunc i32 %bf.lshr to i8, !dbg !3728
  switch i8 %trunc4, label %if.end19 [
    i8 2, label %cleanup
    i8 7, label %cleanup
  ], !dbg !3728

if.end19:                                         ; preds = %sw.bb14
  br label %cleanup, !dbg !3730

sw.bb20:                                          ; preds = %if.end, %if.end
  %cmp21 = icmp eq i32 %bf.clear, 2, !dbg !3731
  %. = zext i1 %cmp21 to i32, !dbg !3733
  br label %cleanup, !dbg !3733

sw.bb24:                                          ; preds = %if.end, %if.end
  %trunc3 = trunc i32 %bf.lshr to i8, !dbg !3734
  switch i8 %trunc3, label %if.end31 [
    i8 2, label %cleanup
    i8 3, label %cleanup
    i8 5, label %cleanup
  ], !dbg !3734

if.end31:                                         ; preds = %sw.bb24
  br label %cleanup, !dbg !3736

sw.default:                                       ; preds = %if.end
  br label %cleanup, !dbg !3737

cleanup:                                          ; preds = %sw.bb24, %sw.bb24, %sw.bb24, %sw.bb20, %sw.bb14, %sw.bb14, %if.end, %if.end, %sw.default, %if.end31, %if.end19, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %sw.default ], [ 0, %if.end31 ], [ 0, %if.end19 ], [ 1, %if.end ], [ 1, %if.end ], [ 1, %sw.bb14 ], [ 1, %sw.bb14 ], [ %., %sw.bb20 ], [ 1, %sw.bb24 ], [ 1, %sw.bb24 ], [ 1, %sw.bb24 ], !dbg !3717
  ret i32 %retval.0, !dbg !3738
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ix86_carry_flag_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3739 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3741, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3742, metadata !DIExpression()), !dbg !3743
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3744
  %bf.load = load i32, i32* %0, align 8, !dbg !3744
  %trunc = trunc i32 %bf.load to i16, !dbg !3745
  switch i16 %trunc, label %return [
    i16 89, label %sw.epilog
    i16 85, label %sw.epilog
    i16 96, label %sw.epilog
    i16 87, label %sw.epilog
    i16 83, label %sw.epilog
    i16 94, label %sw.epilog
    i16 84, label %sw.epilog
    i16 95, label %sw.epilog
    i16 82, label %sw.epilog
    i16 93, label %sw.epilog
    i16 97, label %sw.epilog
    i16 92, label %sw.epilog
  ], !dbg !3745

sw.epilog:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %call = tail call fastcc i32 @ix86_carry_flag_operator_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3746
  %tobool = icmp eq i32 %call, 0, !dbg !3746
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3747

land.rhs:                                         ; preds = %sw.epilog
  %cmp = icmp eq i32 %mode, 0, !dbg !3748
  br i1 %cmp, label %land.end, label %lor.rhs, !dbg !3749

lor.rhs:                                          ; preds = %land.rhs
  %bf.load1 = load i32, i32* %0, align 8, !dbg !3750
  %bf.lshr = lshr i32 %bf.load1, 16, !dbg !3750
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !3750
  %cmp3 = icmp eq i32 %bf.clear2, %mode, !dbg !3751
  %phitmp = zext i1 %cmp3 to i32, !dbg !3749
  br label %land.end, !dbg !3749

land.end:                                         ; preds = %sw.epilog, %land.rhs, %lor.rhs
  %1 = phi i32 [ 0, %sw.epilog ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  br label %return, !dbg !3752

return:                                           ; preds = %entry, %land.end
  %retval.0 = phi i32 [ %1, %land.end ], [ 0, %entry ], !dbg !3743
  ret i32 %retval.0, !dbg !3753
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ix86_carry_flag_operator_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !3754 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3756, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3757, metadata !DIExpression()), !dbg !3760
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3761
  %0 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !3761
  %1 = load i32*, i32** %0, align 8, !dbg !3761
  %bf.load = load i32, i32* %1, align 8, !dbg !3761
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3761
  call void @llvm.dbg.value(metadata i32 %bf.lshr, metadata !3758, metadata !DIExpression(DW_OP_constu, 255, DW_OP_and, DW_OP_stack_value)), !dbg !3760
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3762
  %bf.load1 = load i32, i32* %2, align 8, !dbg !3762
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !3762
  call void @llvm.dbg.value(metadata i32 %bf.clear2, metadata !3759, metadata !DIExpression()), !dbg !3760
  %trunc = trunc i32 %bf.lshr to i8, !dbg !3763
  switch i8 %trunc, label %cleanup [
    i8 11, label %if.then
    i8 12, label %if.then
    i8 7, label %if.then7
    i8 2, label %if.end15
  ], !dbg !3763

if.then:                                          ; preds = %entry, %entry
  %call = tail call i32 @ix86_trivial_fp_comparison_operator(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3765
  %tobool = icmp eq i32 %call, 0, !dbg !3765
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3768

if.end:                                           ; preds = %if.then
  %call5 = tail call i32 @ix86_fp_compare_code_to_integer(i32 %bf.clear2) #6, !dbg !3769
  call void @llvm.dbg.value(metadata i32 %call5, metadata !3759, metadata !DIExpression()), !dbg !3760
  br label %if.end15, !dbg !3770

if.then7:                                         ; preds = %entry
  %cmp8 = icmp eq i32 %bf.clear2, 89, !dbg !3771
  %cmp9 = icmp eq i32 %bf.clear2, 87, !dbg !3773
  %spec.select = or i1 %cmp8, %cmp9, !dbg !3774
  br label %cleanup, !dbg !3775

if.end15:                                         ; preds = %entry, %if.end
  %code.0 = phi i32 [ %call5, %if.end ], [ %bf.clear2, %entry ], !dbg !3760
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3759, metadata !DIExpression()), !dbg !3760
  %cmp16 = icmp eq i32 %code.0, 89, !dbg !3776
  br label %cleanup, !dbg !3777

cleanup:                                          ; preds = %if.then, %entry, %if.end15, %if.then7
  %retval.0.shrunk = phi i1 [ %cmp16, %if.end15 ], [ %spec.select, %if.then7 ], [ false, %if.then ], [ false, %entry ]
  %retval.0 = zext i1 %retval.0.shrunk to i32, !dbg !3760
  ret i32 %retval.0, !dbg !3778
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ix86_trivial_fp_comparison_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3779 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3781, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3782, metadata !DIExpression()), !dbg !3783
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3784
  %bf.load = load i32, i32* %0, align 8, !dbg !3784
  %trunc = trunc i32 %bf.load to i16, !dbg !3785
  switch i16 %trunc, label %return [
    i16 83, label %sw.epilog
    i16 82, label %sw.epilog
    i16 96, label %sw.epilog
    i16 95, label %sw.epilog
    i16 92, label %sw.epilog
    i16 97, label %sw.epilog
    i16 91, label %sw.epilog
    i16 90, label %sw.epilog
  ], !dbg !3785

sw.epilog:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %cmp = icmp eq i32 %mode, 0, !dbg !3786
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3787

lor.rhs:                                          ; preds = %sw.epilog
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3788
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !3788
  %cmp3 = icmp eq i32 %bf.clear2, %mode, !dbg !3789
  %phitmp = zext i1 %cmp3 to i32, !dbg !3787
  br label %lor.end, !dbg !3787

lor.end:                                          ; preds = %lor.rhs, %sw.epilog
  %1 = phi i32 [ 1, %sw.epilog ], [ %phitmp, %lor.rhs ]
  br label %return, !dbg !3790

return:                                           ; preds = %entry, %lor.end
  %retval.0 = phi i32 [ %1, %lor.end ], [ 0, %entry ], !dbg !3783
  ret i32 %retval.0, !dbg !3791
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ix86_fp_comparison_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3792 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3794, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3795, metadata !DIExpression()), !dbg !3796
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3797
  %bf.load = load i32, i32* %0, align 8, !dbg !3797
  %bf.clear = and i32 %bf.load, 65535, !dbg !3797
  %call = tail call i32 @ix86_fp_comparison_strategy(i32 %bf.clear) #6, !dbg !3798
  %cmp = icmp eq i32 %call, 2, !dbg !3799
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3800

cond.true:                                        ; preds = %entry
  %call1 = tail call i32 @comparison_operator(%struct.rtx_def* %op, i32 %mode) #6, !dbg !3801
  br label %cond.end, !dbg !3800

cond.false:                                       ; preds = %entry
  %call2 = tail call i32 @ix86_trivial_fp_comparison_operator(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3802
  br label %cond.end, !dbg !3800

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %call2, %cond.false ], !dbg !3800
  ret i32 %cond, !dbg !3803
}

declare dso_local i32 @ix86_fp_comparison_strategy(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @cmp_fp_expander_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3804 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3806, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3807, metadata !DIExpression()), !dbg !3808
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3809
  %bf.load = load i32, i32* %0, align 8, !dbg !3809
  %bf.clear = and i32 %bf.load, 65535, !dbg !3809
  %cmp = icmp eq i32 %bf.clear, 32, !dbg !3810
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3811

lor.rhs:                                          ; preds = %entry
  %call = tail call i32 @general_operand(%struct.rtx_def* %op, i32 %mode) #6, !dbg !3812
  %tobool = icmp ne i32 %call, 0, !dbg !3811
  %phitmp = zext i1 %tobool to i32, !dbg !3811
  br label %lor.end, !dbg !3811

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i32 [ 1, %entry ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !3813
}

; Function Attrs: nounwind uwtable
define dso_local i32 @binary_fp_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3814 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3816, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3817, metadata !DIExpression()), !dbg !3818
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3819
  %bf.load = load i32, i32* %0, align 8, !dbg !3819
  %trunc = trunc i32 %bf.load to i16, !dbg !3820
  switch i16 %trunc, label %return [
    i16 49, label %sw.epilog
    i16 50, label %sw.epilog
    i16 52, label %sw.epilog
    i16 55, label %sw.epilog
  ], !dbg !3820

sw.epilog:                                        ; preds = %entry, %entry, %entry, %entry
  %cmp = icmp eq i32 %mode, 0, !dbg !3821
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3822

lor.rhs:                                          ; preds = %sw.epilog
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3823
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !3823
  %cmp3 = icmp eq i32 %bf.clear2, %mode, !dbg !3824
  %phitmp = zext i1 %cmp3 to i32, !dbg !3822
  br label %lor.end, !dbg !3822

lor.end:                                          ; preds = %lor.rhs, %sw.epilog
  %1 = phi i32 [ 1, %sw.epilog ], [ %phitmp, %lor.rhs ]
  br label %return, !dbg !3825

return:                                           ; preds = %entry, %lor.end
  %retval.0 = phi i32 [ %1, %lor.end ], [ 0, %entry ], !dbg !3818
  ret i32 %retval.0, !dbg !3826
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mult_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3827 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3829, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3830, metadata !DIExpression()), !dbg !3831
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3832
  %bf.load = load i32, i32* %0, align 8, !dbg !3832
  %bf.clear = and i32 %bf.load, 65535, !dbg !3832
  %cmp = icmp eq i32 %bf.clear, 52, !dbg !3833
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3834

land.rhs:                                         ; preds = %entry
  %cmp1 = icmp eq i32 %mode, 0, !dbg !3835
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !3836

lor.rhs:                                          ; preds = %land.rhs
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3837
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !3837
  %cmp4 = icmp eq i32 %bf.clear3, %mode, !dbg !3838
  %phitmp = zext i1 %cmp4 to i32, !dbg !3836
  br label %land.end, !dbg !3836

land.end:                                         ; preds = %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !3839
}

; Function Attrs: nounwind uwtable
define dso_local i32 @div_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3840 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3842, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3843, metadata !DIExpression()), !dbg !3844
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3845
  %bf.load = load i32, i32* %0, align 8, !dbg !3845
  %bf.clear = and i32 %bf.load, 65535, !dbg !3845
  %cmp = icmp eq i32 %bf.clear, 55, !dbg !3846
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3847

land.rhs:                                         ; preds = %entry
  %cmp1 = icmp eq i32 %mode, 0, !dbg !3848
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !3849

lor.rhs:                                          ; preds = %land.rhs
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3850
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !3850
  %cmp4 = icmp eq i32 %bf.clear3, %mode, !dbg !3851
  %phitmp = zext i1 %cmp4 to i32, !dbg !3849
  br label %land.end, !dbg !3849

land.end:                                         ; preds = %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !3852
}

; Function Attrs: nounwind uwtable
define dso_local i32 @float_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3853 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3855, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3856, metadata !DIExpression()), !dbg !3857
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3858
  %bf.load = load i32, i32* %0, align 8, !dbg !3858
  %bf.clear = and i32 %bf.load, 65535, !dbg !3858
  %cmp = icmp eq i32 %bf.clear, 103, !dbg !3859
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3860

land.rhs:                                         ; preds = %entry
  %cmp1 = icmp eq i32 %mode, 0, !dbg !3861
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !3862

lor.rhs:                                          ; preds = %land.rhs
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3863
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !3863
  %cmp4 = icmp eq i32 %bf.clear3, %mode, !dbg !3864
  %phitmp = zext i1 %cmp4 to i32, !dbg !3862
  br label %land.end, !dbg !3862

land.end:                                         ; preds = %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !3865
}

; Function Attrs: nounwind uwtable
define dso_local i32 @arith_or_logical_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3866 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3868, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3869, metadata !DIExpression()), !dbg !3870
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3871
  %bf.load = load i32, i32* %0, align 8, !dbg !3871
  %trunc = trunc i32 %bf.load to i16, !dbg !3872
  switch i16 %trunc, label %return [
    i16 49, label %sw.epilog
    i16 52, label %sw.epilog
    i16 61, label %sw.epilog
    i16 62, label %sw.epilog
    i16 63, label %sw.epilog
    i16 70, label %sw.epilog
    i16 71, label %sw.epilog
    i16 72, label %sw.epilog
    i16 73, label %sw.epilog
    i16 48, label %sw.epilog
    i16 50, label %sw.epilog
    i16 55, label %sw.epilog
    i16 58, label %sw.epilog
    i16 59, label %sw.epilog
    i16 60, label %sw.epilog
    i16 65, label %sw.epilog
    i16 66, label %sw.epilog
    i16 67, label %sw.epilog
    i16 68, label %sw.epilog
    i16 69, label %sw.epilog
  ], !dbg !3872

sw.epilog:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %cmp = icmp eq i32 %mode, 0, !dbg !3873
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3874

lor.rhs:                                          ; preds = %sw.epilog
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3875
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !3875
  %cmp3 = icmp eq i32 %bf.clear2, %mode, !dbg !3876
  %phitmp = zext i1 %cmp3 to i32, !dbg !3874
  br label %lor.end, !dbg !3874

lor.end:                                          ; preds = %lor.rhs, %sw.epilog
  %1 = phi i32 [ 1, %sw.epilog ], [ %phitmp, %lor.rhs ]
  br label %return, !dbg !3877

return:                                           ; preds = %entry, %lor.end
  %retval.0 = phi i32 [ %1, %lor.end ], [ 0, %entry ], !dbg !3870
  ret i32 %retval.0, !dbg !3878
}

; Function Attrs: nounwind uwtable
define dso_local i32 @commutative_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3879 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3881, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3882, metadata !DIExpression()), !dbg !3883
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3884
  %bf.load = load i32, i32* %0, align 8, !dbg !3884
  %trunc = trunc i32 %bf.load to i16, !dbg !3885
  switch i16 %trunc, label %return [
    i16 49, label %sw.epilog
    i16 52, label %sw.epilog
    i16 61, label %sw.epilog
    i16 62, label %sw.epilog
    i16 63, label %sw.epilog
    i16 70, label %sw.epilog
    i16 71, label %sw.epilog
    i16 72, label %sw.epilog
    i16 73, label %sw.epilog
  ], !dbg !3885

sw.epilog:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %cmp = icmp eq i32 %mode, 0, !dbg !3886
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3887

lor.rhs:                                          ; preds = %sw.epilog
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3888
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !3888
  %cmp3 = icmp eq i32 %bf.clear2, %mode, !dbg !3889
  %phitmp = zext i1 %cmp3 to i32, !dbg !3887
  br label %lor.end, !dbg !3887

lor.end:                                          ; preds = %lor.rhs, %sw.epilog
  %1 = phi i32 [ 1, %sw.epilog ], [ %phitmp, %lor.rhs ]
  br label %return, !dbg !3890

return:                                           ; preds = %entry, %lor.end
  %retval.0 = phi i32 [ %1, %lor.end ], [ 0, %entry ], !dbg !3883
  ret i32 %retval.0, !dbg !3891
}

; Function Attrs: nounwind uwtable
define dso_local i32 @promotable_binary_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3892 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3894, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3895, metadata !DIExpression()), !dbg !3896
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3897
  %bf.load = load i32, i32* %0, align 8, !dbg !3897
  %bf.clear = and i32 %bf.load, 65535, !dbg !3897
  %cmp = icmp eq i32 %bf.clear, 49, !dbg !3898
  br i1 %cmp, label %land.rhs, label %lor.lhs.false, !dbg !3899

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 61, !dbg !3900
  br i1 %cmp3, label %land.rhs, label %lor.lhs.false4, !dbg !3901

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 62, !dbg !3902
  br i1 %cmp7, label %land.rhs, label %lor.lhs.false8, !dbg !3903

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 63, !dbg !3904
  br i1 %cmp11, label %land.rhs, label %lor.lhs.false12, !dbg !3905

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %cmp15 = icmp eq i32 %bf.clear, 65, !dbg !3906
  br i1 %cmp15, label %land.rhs, label %lor.lhs.false16, !dbg !3907

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %cmp19 = icmp eq i32 %bf.clear, 52, !dbg !3908
  br i1 %cmp19, label %land.lhs.true, label %land.end, !dbg !3909

land.lhs.true:                                    ; preds = %lor.lhs.false16
  %1 = load i8, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @ix86_tune_features, i64 0, i64 52), align 4, !dbg !3910
  %tobool = icmp eq i8 %1, 0, !dbg !3911
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3912

land.rhs:                                         ; preds = %land.lhs.true, %lor.lhs.false12, %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %entry
  %cmp20 = icmp eq i32 %mode, 0, !dbg !3913
  br i1 %cmp20, label %land.end, label %lor.rhs, !dbg !3914

lor.rhs:                                          ; preds = %land.rhs
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3915
  %bf.clear23 = and i32 %bf.lshr, 255, !dbg !3915
  %cmp24 = icmp eq i32 %bf.clear23, %mode, !dbg !3916
  %phitmp = zext i1 %cmp24 to i32, !dbg !3914
  br label %land.end, !dbg !3914

land.end:                                         ; preds = %land.lhs.true, %land.rhs, %lor.rhs, %lor.lhs.false16
  %2 = phi i32 [ 0, %land.lhs.true ], [ 0, %lor.lhs.false16 ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %2, !dbg !3917
}

; Function Attrs: nounwind uwtable
define dso_local i32 @compare_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3918 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3920, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3921, metadata !DIExpression()), !dbg !3922
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3923
  %bf.load = load i32, i32* %0, align 8, !dbg !3923
  %bf.clear = and i32 %bf.load, 65535, !dbg !3923
  %cmp = icmp eq i32 %bf.clear, 48, !dbg !3924
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3925

land.rhs:                                         ; preds = %entry
  %cmp1 = icmp eq i32 %mode, 0, !dbg !3926
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !3927

lor.rhs:                                          ; preds = %land.rhs
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3928
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !3928
  %cmp4 = icmp eq i32 %bf.clear3, %mode, !dbg !3929
  %phitmp = zext i1 %cmp4 to i32, !dbg !3927
  br label %land.end, !dbg !3927

land.end:                                         ; preds = %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !3930
}

; Function Attrs: nounwind uwtable
define dso_local i32 @absneg_operator(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3931 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3933, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3934, metadata !DIExpression()), !dbg !3935
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3936
  %bf.load = load i32, i32* %0, align 8, !dbg !3936
  %trunc = trunc i32 %bf.load to i16, !dbg !3937
  switch i16 %trunc, label %return [
    i16 111, label %sw.epilog
    i16 51, label %sw.epilog
  ], !dbg !3937

sw.epilog:                                        ; preds = %entry, %entry
  %cmp = icmp eq i32 %mode, 0, !dbg !3938
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3939

lor.rhs:                                          ; preds = %sw.epilog
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3940
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !3940
  %cmp3 = icmp eq i32 %bf.clear2, %mode, !dbg !3941
  %phitmp = zext i1 %cmp3 to i32, !dbg !3939
  br label %lor.end, !dbg !3939

lor.end:                                          ; preds = %lor.rhs, %sw.epilog
  %1 = phi i32 [ 1, %sw.epilog ], [ %phitmp, %lor.rhs ]
  br label %return, !dbg !3942

return:                                           ; preds = %entry, %lor.end
  %retval.0 = phi i32 [ %1, %lor.end ], [ 0, %entry ], !dbg !3935
  ret i32 %retval.0, !dbg !3943
}

; Function Attrs: nounwind uwtable
define dso_local i32 @misaligned_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3944 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3946, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3947, metadata !DIExpression()), !dbg !3948
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3949
  %bf.load = load i32, i32* %0, align 8, !dbg !3949
  %bf.clear = and i32 %bf.load, 65535, !dbg !3949
  %cmp = icmp eq i32 %bf.clear, 43, !dbg !3950
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !3951

land.lhs.true:                                    ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3952
  %rt_mem = bitcast %union.rtunion_def* %1 to %struct.mem_attrs**, !dbg !3952
  %2 = load %struct.mem_attrs*, %struct.mem_attrs** %rt_mem, align 8, !dbg !3952
  %cmp1 = icmp eq %struct.mem_attrs* %2, null, !dbg !3952
  br i1 %cmp1, label %cond.end, label %cond.true, !dbg !3952

cond.true:                                        ; preds = %land.lhs.true
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %2, i64 0, i32 4, !dbg !3952
  %3 = load i32, i32* %align, align 4, !dbg !3952
  br label %cond.end, !dbg !3952

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 8, %land.lhs.true ], !dbg !3952
  %call = tail call i32 @get_mode_alignment(i32 %mode) #6, !dbg !3953
  %cmp6 = icmp ult i32 %cond, %call, !dbg !3954
  br i1 %cmp6, label %land.rhs, label %land.end, !dbg !3955

land.rhs:                                         ; preds = %cond.end
  %cmp7 = icmp eq i32 %mode, 0, !dbg !3956
  br i1 %cmp7, label %land.end, label %lor.rhs, !dbg !3957

lor.rhs:                                          ; preds = %land.rhs
  %bf.load8 = load i32, i32* %0, align 8, !dbg !3958
  %bf.lshr = lshr i32 %bf.load8, 16, !dbg !3958
  %bf.clear9 = and i32 %bf.lshr, 255, !dbg !3958
  %cmp10 = icmp eq i32 %bf.clear9, %mode, !dbg !3959
  %phitmp = zext i1 %cmp10 to i32, !dbg !3957
  br label %land.end, !dbg !3957

land.end:                                         ; preds = %land.rhs, %lor.rhs, %cond.end, %entry
  %4 = phi i32 [ 0, %cond.end ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %4, !dbg !3960
}

declare dso_local i32 @get_mode_alignment(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @emms_operation(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !3961 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3963, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3964, metadata !DIExpression()), !dbg !3965
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !3966
  %bf.load = load i32, i32* %0, align 8, !dbg !3966
  %bf.clear = and i32 %bf.load, 65535, !dbg !3966
  %cmp = icmp eq i32 %bf.clear, 15, !dbg !3967
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !3968

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @emms_operation_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !3969
  %tobool = icmp eq i32 %call, 0, !dbg !3969
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3970

land.rhs:                                         ; preds = %land.lhs.true
  %cmp1 = icmp eq i32 %mode, 0, !dbg !3971
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !3972

lor.rhs:                                          ; preds = %land.rhs
  %bf.load2 = load i32, i32* %0, align 8, !dbg !3973
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !3973
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !3973
  %cmp4 = icmp eq i32 %bf.clear3, %mode, !dbg !3974
  %phitmp = zext i1 %cmp4 to i32, !dbg !3972
  br label %land.end, !dbg !3972

land.end:                                         ; preds = %land.lhs.true, %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !3975
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @emms_operation_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !3976 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !3978, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3979, metadata !DIExpression()), !dbg !3985
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3986
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**, !dbg !3986
  %0 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3986
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %0, i64 0, i32 0, !dbg !3986
  %1 = load i32, i32* %num_elem, align 8, !dbg !3986
  %cmp = icmp eq i32 %1, 17, !dbg !3988
  br i1 %cmp, label %for.cond.preheader, label %cleanup69, !dbg !3989

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !3990

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !3991
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3980, metadata !DIExpression()), !dbg !3985
  %exitcond = icmp eq i64 %indvars.iv, 8, !dbg !3992
  br i1 %exitcond, label %cleanup69.loopexit, label %for.body, !dbg !3990

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3993
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3993
  %arrayidx6 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2, i64 0, i32 1, i64 %indvars.iv.next, !dbg !3993
  %3 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx6, align 8, !dbg !3993
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !3981, metadata !DIExpression()), !dbg !3994
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 0, !dbg !3995
  %bf.load = load i32, i32* %4, align 8, !dbg !3995
  %bf.clear = and i32 %bf.load, 65535, !dbg !3995
  %cmp7 = icmp eq i32 %bf.clear, 25, !dbg !3997
  br i1 %cmp7, label %lor.lhs.false, label %cleanup, !dbg !3998

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3999
  %5 = bitcast %union.rtunion_def* %arrayidx10 to i32**, !dbg !3999
  %6 = load i32*, i32** %5, align 8, !dbg !3999
  %bf.load11 = load i32, i32* %6, align 8, !dbg !3999
  %bf.clear12 = and i32 %bf.load11, 65535, !dbg !3999
  %cmp13 = icmp eq i32 %bf.clear12, 37, !dbg !4000
  %7 = bitcast i32* %6 to %struct.rtx_def*, !dbg !4001
  br i1 %cmp13, label %lor.lhs.false14, label %cleanup, !dbg !4001

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %bf.clear20 = and i32 %bf.load11, 16711680, !dbg !4002
  %cmp21 = icmp eq i32 %bf.clear20, 2621440, !dbg !4003
  br i1 %cmp21, label %lor.lhs.false22, label %cleanup, !dbg !4004

lor.lhs.false22:                                  ; preds = %lor.lhs.false14
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %7) #7, !dbg !4005
  %8 = add nuw nsw i64 %indvars.iv, 8, !dbg !4006
  %9 = zext i32 %call to i64, !dbg !4007
  %cmp28 = icmp eq i64 %8, %9, !dbg !4007
  br i1 %cmp28, label %if.end30, label %cleanup, !dbg !4008

if.end30:                                         ; preds = %lor.lhs.false22
  %10 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4009
  %11 = add nuw nsw i64 %indvars.iv, 9, !dbg !4009
  %arrayidx38 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %10, i64 0, i32 1, i64 %11, !dbg !4009
  %12 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx38, align 8, !dbg !4009
  call void @llvm.dbg.value(metadata %struct.rtx_def* %12, metadata !3981, metadata !DIExpression()), !dbg !3994
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i64 0, i32 0, !dbg !4010
  %bf.load39 = load i32, i32* %13, align 8, !dbg !4010
  %bf.clear40 = and i32 %bf.load39, 65535, !dbg !4010
  %cmp41 = icmp eq i32 %bf.clear40, 25, !dbg !4012
  br i1 %cmp41, label %lor.lhs.false42, label %cleanup, !dbg !4013

lor.lhs.false42:                                  ; preds = %if.end30
  %arrayidx45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4014
  %14 = bitcast %union.rtunion_def* %arrayidx45 to i32**, !dbg !4014
  %15 = load i32*, i32** %14, align 8, !dbg !4014
  %bf.load47 = load i32, i32* %15, align 8, !dbg !4014
  %bf.clear48 = and i32 %bf.load47, 65535, !dbg !4014
  %cmp49 = icmp eq i32 %bf.clear48, 37, !dbg !4015
  %16 = bitcast i32* %15 to %struct.rtx_def*, !dbg !4016
  br i1 %cmp49, label %lor.lhs.false50, label %cleanup, !dbg !4016

lor.lhs.false50:                                  ; preds = %lor.lhs.false42
  %bf.clear57 = and i32 %bf.load47, 16711680, !dbg !4017
  %cmp58 = icmp eq i32 %bf.clear57, 1114112, !dbg !4018
  br i1 %cmp58, label %lor.lhs.false59, label %cleanup, !dbg !4019

lor.lhs.false59:                                  ; preds = %lor.lhs.false50
  %call64 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %16) #7, !dbg !4020
  %17 = add nuw nsw i64 %indvars.iv, 29, !dbg !4021
  %18 = zext i32 %call64 to i64, !dbg !4022
  %cmp66 = icmp ne i64 %17, %18, !dbg !4022
  %spec.select = zext i1 %cmp66 to i32, !dbg !4023
  br label %cleanup, !dbg !4023

cleanup:                                          ; preds = %lor.lhs.false50, %lor.lhs.false42, %if.end30, %lor.lhs.false22, %lor.lhs.false14, %lor.lhs.false, %for.body, %lor.lhs.false59
  %cleanup.dest.slot.0 = phi i32 [ 1, %lor.lhs.false22 ], [ 1, %lor.lhs.false14 ], [ 1, %lor.lhs.false ], [ 1, %for.body ], [ 1, %lor.lhs.false50 ], [ 1, %lor.lhs.false42 ], [ 1, %if.end30 ], [ %spec.select, %lor.lhs.false59 ]
  %cond = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond, label %for.inc, label %cleanup69.loopexit

for.inc:                                          ; preds = %cleanup
  call void @llvm.dbg.value(metadata i32 undef, metadata !3980, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3985
  br label %for.cond, !dbg !4024, !llvm.loop !4025

cleanup69.loopexit:                               ; preds = %for.cond, %cleanup
  %retval.2.ph = phi i32 [ 1, %for.cond ], [ 0, %cleanup ]
  br label %cleanup69, !dbg !4027

cleanup69:                                        ; preds = %cleanup69.loopexit, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ %retval.2.ph, %cleanup69.loopexit ], !dbg !3985
  ret i32 %retval.2, !dbg !4027
}

; Function Attrs: nounwind uwtable
define dso_local i32 @vzeroall_operation(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !4028 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4030, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4031, metadata !DIExpression()), !dbg !4032
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4033
  %bf.load = load i32, i32* %0, align 8, !dbg !4033
  %bf.clear = and i32 %bf.load, 65535, !dbg !4033
  %cmp = icmp eq i32 %bf.clear, 15, !dbg !4034
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !4035

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @vzeroall_operation_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !4036
  %tobool = icmp eq i32 %call, 0, !dbg !4036
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4037

land.rhs:                                         ; preds = %land.lhs.true
  %cmp1 = icmp eq i32 %mode, 0, !dbg !4038
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !4039

lor.rhs:                                          ; preds = %land.rhs
  %bf.load2 = load i32, i32* %0, align 8, !dbg !4040
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !4040
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !4040
  %cmp4 = icmp eq i32 %bf.clear3, %mode, !dbg !4041
  %phitmp = zext i1 %cmp4 to i32, !dbg !4039
  br label %land.end, !dbg !4039

land.end:                                         ; preds = %land.lhs.true, %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !4042
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @vzeroall_operation_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !4043 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4045, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4046, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i32 8, metadata !4048, metadata !DIExpression()), !dbg !4053
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4054
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**, !dbg !4054
  %0 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4054
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %0, i64 0, i32 0, !dbg !4054
  %1 = load i32, i32* %num_elem, align 8, !dbg !4054
  %cmp = icmp eq i32 %1, 9, !dbg !4056
  br i1 %cmp, label %for.cond.preheader, label %cleanup40, !dbg !4057

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !4058

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !4059
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4047, metadata !DIExpression()), !dbg !4053
  %exitcond = icmp eq i64 %indvars.iv, 8, !dbg !4060
  br i1 %exitcond, label %cleanup40.loopexit, label %for.body, !dbg !4058

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4061
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4061
  %arrayidx7 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2, i64 0, i32 1, i64 %indvars.iv.next, !dbg !4061
  %3 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx7, align 8, !dbg !4061
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !4049, metadata !DIExpression()), !dbg !4062
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 0, !dbg !4063
  %bf.load = load i32, i32* %4, align 8, !dbg !4063
  %bf.clear = and i32 %bf.load, 65535, !dbg !4063
  %cmp8 = icmp eq i32 %bf.clear, 23, !dbg !4065
  br i1 %cmp8, label %lor.lhs.false, label %cleanup, !dbg !4066

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4067
  %5 = bitcast %union.rtunion_def* %arrayidx11 to i32**, !dbg !4067
  %6 = load i32*, i32** %5, align 8, !dbg !4067
  %bf.load12 = load i32, i32* %6, align 8, !dbg !4067
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !4067
  %cmp14 = icmp eq i32 %bf.clear13, 37, !dbg !4068
  %7 = bitcast i32* %6 to %struct.rtx_def*, !dbg !4069
  br i1 %cmp14, label %lor.lhs.false15, label %cleanup, !dbg !4069

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %bf.clear21 = and i32 %bf.load12, 16711680, !dbg !4070
  %cmp22 = icmp eq i32 %bf.clear21, 4587520, !dbg !4071
  br i1 %cmp22, label %lor.lhs.false23, label %cleanup, !dbg !4072

lor.lhs.false23:                                  ; preds = %lor.lhs.false15
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %7) #7, !dbg !4073
  %8 = add nuw nsw i64 %indvars.iv, 21, !dbg !4074
  %9 = zext i32 %call to i64, !dbg !4075
  %cmp31 = icmp eq i64 %8, %9, !dbg !4075
  br i1 %cmp31, label %lor.lhs.false32, label %cleanup, !dbg !4076

lor.lhs.false32:                                  ; preds = %lor.lhs.false23
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4077
  %rt_rtx36 = bitcast %union.rtunion_def* %10 to %struct.rtx_def**, !dbg !4077
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx36, align 8, !dbg !4077
  %12 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([3 x [87 x %struct.rtx_def*]], [3 x [87 x %struct.rtx_def*]]* @const_tiny_rtx, i64 0, i64 0, i64 70), align 16, !dbg !4078
  %cmp37 = icmp ne %struct.rtx_def* %11, %12, !dbg !4079
  %spec.select = zext i1 %cmp37 to i32, !dbg !4080
  br label %cleanup, !dbg !4080

cleanup:                                          ; preds = %lor.lhs.false23, %lor.lhs.false15, %lor.lhs.false, %for.body, %lor.lhs.false32
  %cleanup.dest.slot.0 = phi i32 [ 1, %lor.lhs.false23 ], [ 1, %lor.lhs.false15 ], [ 1, %lor.lhs.false ], [ 1, %for.body ], [ %spec.select, %lor.lhs.false32 ]
  %cond1 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond1, label %for.inc, label %cleanup40.loopexit

for.inc:                                          ; preds = %cleanup
  call void @llvm.dbg.value(metadata i32 undef, metadata !4047, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4053
  br label %for.cond, !dbg !4081, !llvm.loop !4082

cleanup40.loopexit:                               ; preds = %for.cond, %cleanup
  %retval.2.ph = phi i32 [ 1, %for.cond ], [ 0, %cleanup ]
  br label %cleanup40, !dbg !4084

cleanup40:                                        ; preds = %cleanup40.loopexit, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ %retval.2.ph, %cleanup40.loopexit ], !dbg !4053
  ret i32 %retval.2, !dbg !4084
}

; Function Attrs: nounwind uwtable
define dso_local i32 @vzeroupper_operation(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !4085 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4087, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4088, metadata !DIExpression()), !dbg !4089
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4090
  %bf.load = load i32, i32* %0, align 8, !dbg !4090
  %bf.clear = and i32 %bf.load, 65535, !dbg !4090
  %cmp = icmp eq i32 %bf.clear, 15, !dbg !4091
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !4092

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @vzeroupper_operation_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !4093
  %tobool = icmp eq i32 %call, 0, !dbg !4093
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4094

land.rhs:                                         ; preds = %land.lhs.true
  %cmp1 = icmp eq i32 %mode, 0, !dbg !4095
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !4096

lor.rhs:                                          ; preds = %land.rhs
  %bf.load2 = load i32, i32* %0, align 8, !dbg !4097
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !4097
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !4097
  %cmp4 = icmp eq i32 %bf.clear3, %mode, !dbg !4098
  %phitmp = zext i1 %cmp4 to i32, !dbg !4096
  br label %land.end, !dbg !4096

land.end:                                         ; preds = %land.lhs.true, %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !4099
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @vzeroupper_operation_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !4100 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4102, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4103, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i32 8, metadata !4105, metadata !DIExpression()), !dbg !4110
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4111
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**, !dbg !4111
  %0 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4111
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %0, i64 0, i32 0, !dbg !4111
  %1 = load i32, i32* %num_elem, align 8, !dbg !4111
  %cmp = icmp eq i32 %1, 9, !dbg !4113
  br i1 %cmp, label %for.cond.preheader, label %cleanup34, !dbg !4114

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !4115

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !4116
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4104, metadata !DIExpression()), !dbg !4110
  %exitcond = icmp eq i64 %indvars.iv, 8, !dbg !4117
  br i1 %exitcond, label %cleanup34.loopexit, label %for.body, !dbg !4115

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4118
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4118
  %arrayidx7 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2, i64 0, i32 1, i64 %indvars.iv.next, !dbg !4118
  %3 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx7, align 8, !dbg !4118
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !4106, metadata !DIExpression()), !dbg !4119
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 0, !dbg !4120
  %bf.load = load i32, i32* %4, align 8, !dbg !4120
  %bf.clear = and i32 %bf.load, 65535, !dbg !4120
  %cmp8 = icmp eq i32 %bf.clear, 25, !dbg !4122
  br i1 %cmp8, label %lor.lhs.false, label %cleanup, !dbg !4123

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4124
  %5 = bitcast %union.rtunion_def* %arrayidx11 to i32**, !dbg !4124
  %6 = load i32*, i32** %5, align 8, !dbg !4124
  %bf.load12 = load i32, i32* %6, align 8, !dbg !4124
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !4124
  %cmp14 = icmp eq i32 %bf.clear13, 37, !dbg !4125
  %7 = bitcast i32* %6 to %struct.rtx_def*, !dbg !4126
  br i1 %cmp14, label %lor.lhs.false15, label %cleanup, !dbg !4126

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %bf.clear21 = and i32 %bf.load12, 16711680, !dbg !4127
  %cmp22 = icmp eq i32 %bf.clear21, 4587520, !dbg !4128
  br i1 %cmp22, label %lor.lhs.false23, label %cleanup, !dbg !4129

lor.lhs.false23:                                  ; preds = %lor.lhs.false15
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %7) #7, !dbg !4130
  %8 = add nuw nsw i64 %indvars.iv, 21, !dbg !4131
  %9 = zext i32 %call to i64, !dbg !4132
  %cmp31 = icmp ne i64 %8, %9, !dbg !4132
  %spec.select = zext i1 %cmp31 to i32, !dbg !4133
  br label %cleanup, !dbg !4133

cleanup:                                          ; preds = %lor.lhs.false15, %lor.lhs.false, %for.body, %lor.lhs.false23
  %cleanup.dest.slot.0 = phi i32 [ 1, %lor.lhs.false15 ], [ 1, %lor.lhs.false ], [ 1, %for.body ], [ %spec.select, %lor.lhs.false23 ]
  %cond1 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond1, label %for.inc, label %cleanup34.loopexit

for.inc:                                          ; preds = %cleanup
  call void @llvm.dbg.value(metadata i32 undef, metadata !4104, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4110
  br label %for.cond, !dbg !4134, !llvm.loop !4135

cleanup34.loopexit:                               ; preds = %for.cond, %cleanup
  %retval.2.ph = phi i32 [ 1, %for.cond ], [ 0, %cleanup ]
  br label %cleanup34, !dbg !4137

cleanup34:                                        ; preds = %cleanup34.loopexit, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ %retval.2.ph, %cleanup34.loopexit ], !dbg !4110
  ret i32 %retval.2, !dbg !4137
}

; Function Attrs: nounwind uwtable
define dso_local i32 @avx_vpermilp_v8sf_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !4138 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4140, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4141, metadata !DIExpression()), !dbg !4142
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4143
  %bf.load = load i32, i32* %0, align 8, !dbg !4143
  %bf.clear = and i32 %bf.load, 65535, !dbg !4143
  %cmp = icmp eq i32 %bf.clear, 15, !dbg !4144
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !4145

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @avx_vpermilp_parallel(%struct.rtx_def* %op, i32 81) #6, !dbg !4146
  %tobool = icmp eq i32 %call, 0, !dbg !4146
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4147

land.rhs:                                         ; preds = %land.lhs.true
  %cmp1 = icmp eq i32 %mode, 0, !dbg !4148
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !4149

lor.rhs:                                          ; preds = %land.rhs
  %bf.load2 = load i32, i32* %0, align 8, !dbg !4150
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !4150
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !4150
  %cmp4 = icmp eq i32 %bf.clear3, %mode, !dbg !4151
  %phitmp = zext i1 %cmp4 to i32, !dbg !4149
  br label %land.end, !dbg !4149

land.end:                                         ; preds = %land.lhs.true, %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !4152
}

declare dso_local i32 @avx_vpermilp_parallel(%struct.rtx_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @avx_vpermilp_v4df_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !4153 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4155, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4156, metadata !DIExpression()), !dbg !4157
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4158
  %bf.load = load i32, i32* %0, align 8, !dbg !4158
  %bf.clear = and i32 %bf.load, 65535, !dbg !4158
  %cmp = icmp eq i32 %bf.clear, 15, !dbg !4159
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !4160

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @avx_vpermilp_parallel(%struct.rtx_def* %op, i32 82) #6, !dbg !4161
  %tobool = icmp eq i32 %call, 0, !dbg !4161
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4162

land.rhs:                                         ; preds = %land.lhs.true
  %cmp1 = icmp eq i32 %mode, 0, !dbg !4163
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !4164

lor.rhs:                                          ; preds = %land.rhs
  %bf.load2 = load i32, i32* %0, align 8, !dbg !4165
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !4165
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !4165
  %cmp4 = icmp eq i32 %bf.clear3, %mode, !dbg !4166
  %phitmp = zext i1 %cmp4 to i32, !dbg !4164
  br label %land.end, !dbg !4164

land.end:                                         ; preds = %land.lhs.true, %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !4167
}

; Function Attrs: nounwind uwtable
define dso_local i32 @avx_vpermilp_v4sf_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !4168 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4170, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4171, metadata !DIExpression()), !dbg !4172
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4173
  %bf.load = load i32, i32* %0, align 8, !dbg !4173
  %bf.clear = and i32 %bf.load, 65535, !dbg !4173
  %cmp = icmp eq i32 %bf.clear, 15, !dbg !4174
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !4175

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @avx_vpermilp_parallel(%struct.rtx_def* %op, i32 79) #6, !dbg !4176
  %tobool = icmp eq i32 %call, 0, !dbg !4176
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4177

land.rhs:                                         ; preds = %land.lhs.true
  %cmp1 = icmp eq i32 %mode, 0, !dbg !4178
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !4179

lor.rhs:                                          ; preds = %land.rhs
  %bf.load2 = load i32, i32* %0, align 8, !dbg !4180
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !4180
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !4180
  %cmp4 = icmp eq i32 %bf.clear3, %mode, !dbg !4181
  %phitmp = zext i1 %cmp4 to i32, !dbg !4179
  br label %land.end, !dbg !4179

land.end:                                         ; preds = %land.lhs.true, %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !4182
}

; Function Attrs: nounwind uwtable
define dso_local i32 @avx_vpermilp_v2df_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !4183 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4185, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4186, metadata !DIExpression()), !dbg !4187
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4188
  %bf.load = load i32, i32* %0, align 8, !dbg !4188
  %bf.clear = and i32 %bf.load, 65535, !dbg !4188
  %cmp = icmp eq i32 %bf.clear, 15, !dbg !4189
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !4190

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @avx_vpermilp_parallel(%struct.rtx_def* %op, i32 80) #6, !dbg !4191
  %tobool = icmp eq i32 %call, 0, !dbg !4191
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4192

land.rhs:                                         ; preds = %land.lhs.true
  %cmp1 = icmp eq i32 %mode, 0, !dbg !4193
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !4194

lor.rhs:                                          ; preds = %land.rhs
  %bf.load2 = load i32, i32* %0, align 8, !dbg !4195
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !4195
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !4195
  %cmp4 = icmp eq i32 %bf.clear3, %mode, !dbg !4196
  %phitmp = zext i1 %cmp4 to i32, !dbg !4194
  br label %land.end, !dbg !4194

land.end:                                         ; preds = %land.lhs.true, %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !4197
}

; Function Attrs: nounwind uwtable
define dso_local i32 @avx_vperm2f128_v8sf_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !4198 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4200, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4201, metadata !DIExpression()), !dbg !4202
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4203
  %bf.load = load i32, i32* %0, align 8, !dbg !4203
  %bf.clear = and i32 %bf.load, 65535, !dbg !4203
  %cmp = icmp eq i32 %bf.clear, 15, !dbg !4204
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !4205

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @avx_vperm2f128_parallel(%struct.rtx_def* %op, i32 81) #6, !dbg !4206
  %tobool = icmp eq i32 %call, 0, !dbg !4206
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4207

land.rhs:                                         ; preds = %land.lhs.true
  %cmp1 = icmp eq i32 %mode, 0, !dbg !4208
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !4209

lor.rhs:                                          ; preds = %land.rhs
  %bf.load2 = load i32, i32* %0, align 8, !dbg !4210
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !4210
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !4210
  %cmp4 = icmp eq i32 %bf.clear3, %mode, !dbg !4211
  %phitmp = zext i1 %cmp4 to i32, !dbg !4209
  br label %land.end, !dbg !4209

land.end:                                         ; preds = %land.lhs.true, %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !4212
}

declare dso_local i32 @avx_vperm2f128_parallel(%struct.rtx_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @avx_vperm2f128_v8si_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !4213 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4215, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4216, metadata !DIExpression()), !dbg !4217
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4218
  %bf.load = load i32, i32* %0, align 8, !dbg !4218
  %bf.clear = and i32 %bf.load, 65535, !dbg !4218
  %cmp = icmp eq i32 %bf.clear, 15, !dbg !4219
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !4220

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @avx_vperm2f128_parallel(%struct.rtx_def* %op, i32 70) #6, !dbg !4221
  %tobool = icmp eq i32 %call, 0, !dbg !4221
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4222

land.rhs:                                         ; preds = %land.lhs.true
  %cmp1 = icmp eq i32 %mode, 0, !dbg !4223
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !4224

lor.rhs:                                          ; preds = %land.rhs
  %bf.load2 = load i32, i32* %0, align 8, !dbg !4225
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !4225
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !4225
  %cmp4 = icmp eq i32 %bf.clear3, %mode, !dbg !4226
  %phitmp = zext i1 %cmp4 to i32, !dbg !4224
  br label %land.end, !dbg !4224

land.end:                                         ; preds = %land.lhs.true, %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !4227
}

; Function Attrs: nounwind uwtable
define dso_local i32 @avx_vperm2f128_v4df_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !4228 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4230, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4231, metadata !DIExpression()), !dbg !4232
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4233
  %bf.load = load i32, i32* %0, align 8, !dbg !4233
  %bf.clear = and i32 %bf.load, 65535, !dbg !4233
  %cmp = icmp eq i32 %bf.clear, 15, !dbg !4234
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !4235

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @avx_vperm2f128_parallel(%struct.rtx_def* %op, i32 82) #6, !dbg !4236
  %tobool = icmp eq i32 %call, 0, !dbg !4236
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4237

land.rhs:                                         ; preds = %land.lhs.true
  %cmp1 = icmp eq i32 %mode, 0, !dbg !4238
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !4239

lor.rhs:                                          ; preds = %land.rhs
  %bf.load2 = load i32, i32* %0, align 8, !dbg !4240
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !4240
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !4240
  %cmp4 = icmp eq i32 %bf.clear3, %mode, !dbg !4241
  %phitmp = zext i1 %cmp4 to i32, !dbg !4239
  br label %land.end, !dbg !4239

land.end:                                         ; preds = %land.lhs.true, %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %1, !dbg !4242
}

; Function Attrs: nounwind uwtable
define dso_local i32 @avx_vbroadcast_operand(%struct.rtx_def* %op, i32 %mode) local_unnamed_addr #4 !dbg !4243 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4245, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4246, metadata !DIExpression()), !dbg !4247
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4248
  %bf.load = load i32, i32* %0, align 8, !dbg !4248
  %bf.clear = and i32 %bf.load, 65535, !dbg !4248
  %cmp = icmp eq i32 %bf.clear, 15, !dbg !4249
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !4250

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4251
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**, !dbg !4251
  %1 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4251
  %arrayidx1 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1, i64 0, i32 1, i64 0, !dbg !4251
  %2 = bitcast %struct.rtx_def** %arrayidx1 to i32**, !dbg !4251
  %3 = load i32*, i32** %2, align 8, !dbg !4251
  %bf.load2 = load i32, i32* %3, align 8, !dbg !4251
  %bf.clear3 = and i32 %bf.load2, 65535, !dbg !4251
  %cmp4 = icmp eq i32 %bf.clear3, 30, !dbg !4252
  br i1 %cmp4, label %land.lhs.true5, label %land.end, !dbg !4253

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call = tail call fastcc i32 @avx_vbroadcast_operand_1(%struct.rtx_def* %op, i32 %mode) #7, !dbg !4254
  %tobool = icmp eq i32 %call, 0, !dbg !4254
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4255

land.rhs:                                         ; preds = %land.lhs.true5
  %cmp6 = icmp eq i32 %mode, 0, !dbg !4256
  br i1 %cmp6, label %land.end, label %lor.rhs, !dbg !4257

lor.rhs:                                          ; preds = %land.rhs
  %bf.load7 = load i32, i32* %0, align 8, !dbg !4258
  %bf.lshr = lshr i32 %bf.load7, 16, !dbg !4258
  %bf.clear8 = and i32 %bf.lshr, 255, !dbg !4258
  %cmp9 = icmp eq i32 %bf.clear8, %mode, !dbg !4259
  %phitmp = zext i1 %cmp9 to i32, !dbg !4257
  br label %land.end, !dbg !4257

land.end:                                         ; preds = %land.lhs.true5, %land.rhs, %lor.rhs, %land.lhs.true, %entry
  %4 = phi i32 [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i32 %4, !dbg !4260
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @avx_vbroadcast_operand_1(%struct.rtx_def* %op, i32 %mode) unnamed_addr #0 !dbg !4261 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4263, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4264, metadata !DIExpression()), !dbg !4268
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4269
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**, !dbg !4269
  %0 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4269
  %arrayidx1 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %0, i64 0, i32 1, i64 0, !dbg !4269
  %1 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1, align 8, !dbg !4269
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !4265, metadata !DIExpression()), !dbg !4268
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %0, i64 0, i32 0, !dbg !4270
  %2 = load i32, i32* %num_elem, align 8, !dbg !4270
  call void @llvm.dbg.value(metadata i32 %2, metadata !4267, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i32 1, metadata !4266, metadata !DIExpression()), !dbg !4268
  %3 = sext i32 %2 to i64, !dbg !4271
  br label %for.cond, !dbg !4271

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ], !dbg !4273
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4266, metadata !DIExpression()), !dbg !4268
  %cmp = icmp slt i64 %indvars.iv, %3, !dbg !4274
  br i1 %cmp, label %for.body, label %cleanup, !dbg !4276

for.body:                                         ; preds = %for.cond
  %arrayidx11 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %0, i64 0, i32 1, i64 %indvars.iv, !dbg !4277
  %4 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx11, align 8, !dbg !4277
  %cmp12 = icmp eq %struct.rtx_def* %4, %1, !dbg !4279
  br i1 %cmp12, label %for.inc, label %cleanup, !dbg !4280

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4281
  call void @llvm.dbg.value(metadata i32 undef, metadata !4266, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4268
  br label %for.cond, !dbg !4282, !llvm.loop !4283

cleanup:                                          ; preds = %for.body, %for.cond
  %retval.0 = phi i32 [ 0, %for.body ], [ 1, %for.cond ], !dbg !4268
  ret i32 %retval.0, !dbg !4285
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lookup_constraint(i8* %str) local_unnamed_addr #4 !dbg !4286 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !4290, metadata !DIExpression()), !dbg !4291
  %0 = load i8, i8* %str, align 1, !dbg !4292
  %conv = sext i8 %0 to i32, !dbg !4292
  switch i32 %conv, label %sw.epilog [
    i32 65, label %return
    i32 67, label %sw.bb1
    i32 68, label %sw.bb2
    i32 71, label %sw.bb3
    i32 73, label %sw.bb4
    i32 74, label %sw.bb5
    i32 75, label %sw.bb6
    i32 76, label %sw.bb7
    i32 77, label %sw.bb8
    i32 78, label %sw.bb9
    i32 79, label %sw.bb10
    i32 81, label %sw.bb11
    i32 82, label %sw.bb12
    i32 83, label %sw.bb13
    i32 85, label %sw.bb14
    i32 89, label %sw.bb15
    i32 90, label %sw.bb28
    i32 97, label %sw.bb29
    i32 98, label %sw.bb30
    i32 99, label %sw.bb31
    i32 100, label %sw.bb32
    i32 101, label %sw.bb33
    i32 102, label %sw.bb34
    i32 108, label %sw.bb35
    i32 113, label %sw.bb36
    i32 116, label %sw.bb37
    i32 117, label %sw.bb38
    i32 120, label %sw.bb39
    i32 121, label %sw.bb40
  ], !dbg !4293

sw.bb1:                                           ; preds = %entry
  br label %return, !dbg !4294

sw.bb2:                                           ; preds = %entry
  br label %return, !dbg !4296

sw.bb3:                                           ; preds = %entry
  br label %return, !dbg !4297

sw.bb4:                                           ; preds = %entry
  br label %return, !dbg !4298

sw.bb5:                                           ; preds = %entry
  br label %return, !dbg !4299

sw.bb6:                                           ; preds = %entry
  br label %return, !dbg !4300

sw.bb7:                                           ; preds = %entry
  br label %return, !dbg !4301

sw.bb8:                                           ; preds = %entry
  br label %return, !dbg !4302

sw.bb9:                                           ; preds = %entry
  br label %return, !dbg !4303

sw.bb10:                                          ; preds = %entry
  br label %return, !dbg !4304

sw.bb11:                                          ; preds = %entry
  br label %return, !dbg !4305

sw.bb12:                                          ; preds = %entry
  br label %return, !dbg !4306

sw.bb13:                                          ; preds = %entry
  br label %return, !dbg !4307

sw.bb14:                                          ; preds = %entry
  br label %return, !dbg !4308

sw.bb15:                                          ; preds = %entry
  %call = tail call i32 @strncmp(i8* %str, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2) #6, !dbg !4309
  %tobool = icmp eq i32 %call, 0, !dbg !4309
  br i1 %tobool, label %return, label %if.end, !dbg !4311

if.end:                                           ; preds = %sw.bb15
  %call16 = tail call i32 @strncmp(i8* %str, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 2) #6, !dbg !4312
  %tobool17 = icmp eq i32 %call16, 0, !dbg !4312
  br i1 %tobool17, label %return, label %if.end19, !dbg !4314

if.end19:                                         ; preds = %if.end
  %call20 = tail call i32 @strncmp(i8* %str, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 2) #6, !dbg !4315
  %tobool21 = icmp eq i32 %call20, 0, !dbg !4315
  br i1 %tobool21, label %return, label %if.end23, !dbg !4317

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @strncmp(i8* %str, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 2) #6, !dbg !4318
  %tobool25 = icmp eq i32 %call24, 0, !dbg !4318
  br i1 %tobool25, label %return, label %sw.epilog, !dbg !4320

sw.bb28:                                          ; preds = %entry
  br label %return, !dbg !4321

sw.bb29:                                          ; preds = %entry
  br label %return, !dbg !4322

sw.bb30:                                          ; preds = %entry
  br label %return, !dbg !4323

sw.bb31:                                          ; preds = %entry
  br label %return, !dbg !4324

sw.bb32:                                          ; preds = %entry
  br label %return, !dbg !4325

sw.bb33:                                          ; preds = %entry
  br label %return, !dbg !4326

sw.bb34:                                          ; preds = %entry
  br label %return, !dbg !4327

sw.bb35:                                          ; preds = %entry
  br label %return, !dbg !4328

sw.bb36:                                          ; preds = %entry
  br label %return, !dbg !4329

sw.bb37:                                          ; preds = %entry
  br label %return, !dbg !4330

sw.bb38:                                          ; preds = %entry
  br label %return, !dbg !4331

sw.bb39:                                          ; preds = %entry
  br label %return, !dbg !4332

sw.bb40:                                          ; preds = %entry
  br label %return, !dbg !4333

sw.epilog:                                        ; preds = %if.end23, %entry
  br label %return, !dbg !4334

return:                                           ; preds = %if.end23, %if.end19, %if.end, %sw.bb15, %entry, %sw.epilog, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 16, %sw.bb40 ], [ 17, %sw.bb39 ], [ 15, %sw.bb38 ], [ 14, %sw.bb37 ], [ 2, %sw.bb36 ], [ 4, %sw.bb35 ], [ 13, %sw.bb34 ], [ 31, %sw.bb33 ], [ 8, %sw.bb32 ], [ 7, %sw.bb31 ], [ 6, %sw.bb30 ], [ 5, %sw.bb29 ], [ 32, %sw.bb28 ], [ 12, %sw.bb14 ], [ 9, %sw.bb13 ], [ 1, %sw.bb12 ], [ 3, %sw.bb11 ], [ 28, %sw.bb10 ], [ 27, %sw.bb9 ], [ 26, %sw.bb8 ], [ 25, %sw.bb7 ], [ 24, %sw.bb6 ], [ 23, %sw.bb5 ], [ 22, %sw.bb4 ], [ 29, %sw.bb3 ], [ 10, %sw.bb2 ], [ 30, %sw.bb1 ], [ 11, %entry ], [ 19, %sw.bb15 ], [ 20, %if.end ], [ 21, %if.end19 ], [ 18, %if.end23 ], !dbg !4291
  ret i32 %retval.0, !dbg !4335
}

declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @regclass_for_constraint(i32 %c) local_unnamed_addr #4 !dbg !4336 {
entry:
  call void @llvm.dbg.value(metadata i32 %c, metadata !4340, metadata !DIExpression()), !dbg !4341
  switch i32 %c, label %sw.epilog [
    i32 1, label %return
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
    i32 7, label %sw.bb6
    i32 8, label %sw.bb7
    i32 9, label %sw.bb8
    i32 10, label %sw.bb9
    i32 11, label %sw.bb10
    i32 12, label %sw.bb11
    i32 13, label %sw.bb12
    i32 14, label %sw.bb15
    i32 15, label %sw.bb23
    i32 16, label %sw.bb31
    i32 17, label %sw.bb35
    i32 18, label %sw.bb39
    i32 19, label %sw.bb43
    i32 20, label %sw.bb47
    i32 21, label %sw.bb51
  ], !dbg !4342

sw.bb1:                                           ; preds = %entry
  br label %return, !dbg !4343

sw.bb2:                                           ; preds = %entry
  br label %return, !dbg !4345

sw.bb3:                                           ; preds = %entry
  br label %return, !dbg !4346

sw.bb4:                                           ; preds = %entry
  br label %return, !dbg !4347

sw.bb5:                                           ; preds = %entry
  br label %return, !dbg !4348

sw.bb6:                                           ; preds = %entry
  br label %return, !dbg !4349

sw.bb7:                                           ; preds = %entry
  br label %return, !dbg !4350

sw.bb8:                                           ; preds = %entry
  br label %return, !dbg !4351

sw.bb9:                                           ; preds = %entry
  br label %return, !dbg !4352

sw.bb10:                                          ; preds = %entry
  br label %return, !dbg !4353

sw.bb11:                                          ; preds = %entry
  br label %return, !dbg !4354

sw.bb12:                                          ; preds = %entry
  %0 = load i32, i32* @target_flags, align 4, !dbg !4355
  %and = and i32 %0, 2, !dbg !4355
  %cmp = icmp eq i32 %and, 0, !dbg !4355
  br i1 %cmp, label %lor.rhs, label %lor.end, !dbg !4356

lor.rhs:                                          ; preds = %sw.bb12
  %and13 = lshr i32 %0, 1, !dbg !4356
  %1 = and i32 %and13, 16, !dbg !4356
  br label %lor.end, !dbg !4356

lor.end:                                          ; preds = %sw.bb12, %lor.rhs
  %2 = phi i32 [ 16, %sw.bb12 ], [ %1, %lor.rhs ]
  br label %return, !dbg !4357

sw.bb15:                                          ; preds = %entry
  %3 = load i32, i32* @target_flags, align 4, !dbg !4358
  %and16 = and i32 %3, 2, !dbg !4358
  %cmp17 = icmp eq i32 %and16, 0, !dbg !4358
  br i1 %cmp17, label %lor.rhs18, label %lor.end21, !dbg !4359

lor.rhs18:                                        ; preds = %sw.bb15
  %and19 = and i32 %3, 32, !dbg !4360
  %cmp20 = icmp eq i32 %and19, 0, !dbg !4360
  %phitmp1 = select i1 %cmp20, i32 0, i32 14, !dbg !4359
  br label %lor.end21, !dbg !4359

lor.end21:                                        ; preds = %sw.bb15, %lor.rhs18
  %4 = phi i32 [ 14, %sw.bb15 ], [ %phitmp1, %lor.rhs18 ]
  br label %return, !dbg !4361

sw.bb23:                                          ; preds = %entry
  %5 = load i32, i32* @target_flags, align 4, !dbg !4362
  %and24 = and i32 %5, 2, !dbg !4362
  %cmp25 = icmp eq i32 %and24, 0, !dbg !4362
  br i1 %cmp25, label %lor.rhs26, label %lor.end29, !dbg !4363

lor.rhs26:                                        ; preds = %sw.bb23
  %and27 = and i32 %5, 32, !dbg !4364
  %cmp28 = icmp eq i32 %and27, 0, !dbg !4364
  %phitmp = select i1 %cmp28, i32 0, i32 15, !dbg !4363
  br label %lor.end29, !dbg !4363

lor.end29:                                        ; preds = %sw.bb23, %lor.rhs26
  %6 = phi i32 [ 15, %sw.bb23 ], [ %phitmp, %lor.rhs26 ]
  br label %return, !dbg !4365

sw.bb31:                                          ; preds = %entry
  %7 = load i32, i32* @ix86_isa_flags, align 4, !dbg !4366
  %and32 = and i32 %7, 2048, !dbg !4366
  %cmp33 = icmp eq i32 %and32, 0, !dbg !4366
  %cond34 = select i1 %cmp33, i32 0, i32 19, !dbg !4366
  br label %return, !dbg !4367

sw.bb35:                                          ; preds = %entry
  %8 = load i32, i32* @ix86_isa_flags, align 4, !dbg !4368
  %and36 = and i32 %8, 65536, !dbg !4368
  %cmp37 = icmp eq i32 %and36, 0, !dbg !4368
  %cond38 = select i1 %cmp37, i32 0, i32 18, !dbg !4368
  br label %return, !dbg !4369

sw.bb39:                                          ; preds = %entry
  %9 = load i32, i32* @ix86_isa_flags, align 4, !dbg !4370
  %and40 = and i32 %9, 65536, !dbg !4370
  %cmp41 = icmp eq i32 %and40, 0, !dbg !4370
  %cond42 = select i1 %cmp41, i32 0, i32 17, !dbg !4370
  br label %return, !dbg !4371

sw.bb43:                                          ; preds = %entry
  %10 = load i32, i32* @ix86_isa_flags, align 4, !dbg !4372
  %and44 = and i32 %10, 131072, !dbg !4372
  %cmp45 = icmp eq i32 %and44, 0, !dbg !4372
  %cond46 = select i1 %cmp45, i32 0, i32 18, !dbg !4372
  br label %return, !dbg !4373

sw.bb47:                                          ; preds = %entry
  %11 = load i32, i32* @ix86_isa_flags, align 4, !dbg !4374
  %and48 = and i32 %11, 131072, !dbg !4374
  %cmp49 = icmp ne i32 %and48, 0, !dbg !4374
  %12 = load i8, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @ix86_tune_features, i64 0, i64 42), align 2, !dbg !4375
  %tobool = icmp ne i8 %12, 0, !dbg !4375
  %13 = and i1 %tobool, %cmp49, !dbg !4375
  %cond50 = select i1 %13, i32 18, i32 0, !dbg !4374
  br label %return, !dbg !4376

sw.bb51:                                          ; preds = %entry
  %14 = load i32, i32* @ix86_isa_flags, align 4, !dbg !4377
  %and52 = and i32 %14, 2048, !dbg !4377
  %cmp53 = icmp ne i32 %and52, 0, !dbg !4377
  %15 = load i8, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @ix86_tune_features, i64 0, i64 42), align 2, !dbg !4378
  %tobool57 = icmp ne i8 %15, 0, !dbg !4378
  %16 = and i1 %tobool57, %cmp53, !dbg !4378
  %cond59 = select i1 %16, i32 19, i32 0, !dbg !4377
  br label %return, !dbg !4379

sw.epilog:                                        ; preds = %entry
  br label %return, !dbg !4380

return:                                           ; preds = %entry, %sw.epilog, %sw.bb51, %sw.bb47, %sw.bb43, %sw.bb39, %sw.bb35, %sw.bb31, %lor.end29, %lor.end21, %lor.end, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %cond59, %sw.bb51 ], [ %cond50, %sw.bb47 ], [ %cond46, %sw.bb43 ], [ %cond42, %sw.bb39 ], [ %cond38, %sw.bb35 ], [ %cond34, %sw.bb31 ], [ %6, %lor.end29 ], [ %4, %lor.end21 ], [ %2, %lor.end ], [ 8, %sw.bb11 ], [ 7, %sw.bb10 ], [ 6, %sw.bb9 ], [ 5, %sw.bb8 ], [ 2, %sw.bb7 ], [ 3, %sw.bb6 ], [ 4, %sw.bb5 ], [ 1, %sw.bb4 ], [ 11, %sw.bb3 ], [ 9, %sw.bb2 ], [ 9, %sw.bb1 ], [ 12, %entry ], !dbg !4341
  ret i32 %retval.0, !dbg !4381
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @constraint_satisfied_p(%struct.rtx_def* %op, i32 %c) local_unnamed_addr #4 !dbg !4382 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4386, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i32 %c, metadata !4387, metadata !DIExpression()), !dbg !4388
  switch i32 %c, label %return [
    i32 22, label %sw.bb
    i32 23, label %sw.bb1
    i32 24, label %sw.bb3
    i32 25, label %sw.bb5
    i32 26, label %sw.bb7
    i32 27, label %sw.bb9
    i32 28, label %sw.bb11
    i32 29, label %sw.bb13
    i32 30, label %sw.bb15
    i32 31, label %sw.bb17
    i32 32, label %sw.bb19
  ], !dbg !4389

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc zeroext i8 @satisfies_constraint_I(%struct.rtx_def* %op) #7, !dbg !4390
  br label %return, !dbg !4392

sw.bb1:                                           ; preds = %entry
  %call2 = tail call fastcc zeroext i8 @satisfies_constraint_J(%struct.rtx_def* %op) #7, !dbg !4393
  br label %return, !dbg !4394

sw.bb3:                                           ; preds = %entry
  %call4 = tail call fastcc zeroext i8 @satisfies_constraint_K(%struct.rtx_def* %op) #7, !dbg !4395
  br label %return, !dbg !4396

sw.bb5:                                           ; preds = %entry
  %call6 = tail call fastcc zeroext i8 @satisfies_constraint_L(%struct.rtx_def* %op) #7, !dbg !4397
  br label %return, !dbg !4398

sw.bb7:                                           ; preds = %entry
  %call8 = tail call fastcc zeroext i8 @satisfies_constraint_M(%struct.rtx_def* %op) #7, !dbg !4399
  br label %return, !dbg !4400

sw.bb9:                                           ; preds = %entry
  %call10 = tail call fastcc zeroext i8 @satisfies_constraint_N(%struct.rtx_def* %op) #7, !dbg !4401
  br label %return, !dbg !4402

sw.bb11:                                          ; preds = %entry
  %call12 = tail call fastcc zeroext i8 @satisfies_constraint_O(%struct.rtx_def* %op) #7, !dbg !4403
  br label %return, !dbg !4404

sw.bb13:                                          ; preds = %entry
  %call14 = tail call fastcc zeroext i8 @satisfies_constraint_G(%struct.rtx_def* %op) #7, !dbg !4405
  br label %return, !dbg !4406

sw.bb15:                                          ; preds = %entry
  %call16 = tail call fastcc zeroext i8 @satisfies_constraint_C(%struct.rtx_def* %op) #7, !dbg !4407
  br label %return, !dbg !4408

sw.bb17:                                          ; preds = %entry
  %call18 = tail call fastcc zeroext i8 @satisfies_constraint_e(%struct.rtx_def* %op) #7, !dbg !4409
  br label %return, !dbg !4410

sw.bb19:                                          ; preds = %entry
  %call20 = tail call fastcc zeroext i8 @satisfies_constraint_Z(%struct.rtx_def* %op) #7, !dbg !4411
  br label %return, !dbg !4412

return:                                           ; preds = %entry, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i8 [ %call20, %sw.bb19 ], [ %call18, %sw.bb17 ], [ %call16, %sw.bb15 ], [ %call14, %sw.bb13 ], [ %call12, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ 0, %entry ], !dbg !4388
  ret i8 %retval.0, !dbg !4413
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @satisfies_constraint_I(%struct.rtx_def* %op) unnamed_addr #0 !dbg !4414 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4419, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.value(metadata i64 0, metadata !4420, metadata !DIExpression()), !dbg !4421
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4422
  %bf.load = load i32, i32* %0, align 8, !dbg !4422
  %bf.clear = and i32 %bf.load, 65535, !dbg !4422
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !4422
  br i1 %cmp, label %if.then, label %if.end, !dbg !4424

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !4425
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !4425
  %1 = load i64, i64* %arrayidx, align 8, !dbg !4425
  call void @llvm.dbg.value(metadata i64 %1, metadata !4420, metadata !DIExpression()), !dbg !4421
  %phitmp = icmp ult i64 %1, 32, !dbg !4426
  br label %if.end, !dbg !4426

if.end:                                           ; preds = %if.then, %entry
  %ival.0 = phi i1 [ %phitmp, %if.then ], [ true, %entry ]
  %2 = and i1 %cmp, %ival.0, !dbg !4427
  %conv = zext i1 %2 to i8, !dbg !4428
  ret i8 %conv, !dbg !4429
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @satisfies_constraint_J(%struct.rtx_def* %op) unnamed_addr #0 !dbg !4430 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4432, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i64 0, metadata !4433, metadata !DIExpression()), !dbg !4434
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4435
  %bf.load = load i32, i32* %0, align 8, !dbg !4435
  %bf.clear = and i32 %bf.load, 65535, !dbg !4435
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !4435
  br i1 %cmp, label %if.then, label %if.end, !dbg !4437

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !4438
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !4438
  %1 = load i64, i64* %arrayidx, align 8, !dbg !4438
  call void @llvm.dbg.value(metadata i64 %1, metadata !4433, metadata !DIExpression()), !dbg !4434
  %phitmp = icmp ult i64 %1, 64, !dbg !4439
  br label %if.end, !dbg !4439

if.end:                                           ; preds = %if.then, %entry
  %ival.0 = phi i1 [ %phitmp, %if.then ], [ true, %entry ]
  %2 = and i1 %cmp, %ival.0, !dbg !4440
  %conv = zext i1 %2 to i8, !dbg !4441
  ret i8 %conv, !dbg !4442
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @satisfies_constraint_K(%struct.rtx_def* %op) unnamed_addr #0 !dbg !4443 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4445, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.value(metadata i64 0, metadata !4446, metadata !DIExpression()), !dbg !4447
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4448
  %bf.load = load i32, i32* %0, align 8, !dbg !4448
  %bf.clear = and i32 %bf.load, 65535, !dbg !4448
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !4448
  br i1 %cmp, label %if.then, label %if.end, !dbg !4450

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !4451
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !4451
  %1 = load i64, i64* %arrayidx, align 8, !dbg !4451
  call void @llvm.dbg.value(metadata i64 %1, metadata !4446, metadata !DIExpression()), !dbg !4447
  %phitmp = add i64 %1, 128, !dbg !4452
  %phitmp1 = icmp ult i64 %phitmp, 256, !dbg !4452
  br label %if.end, !dbg !4452

if.end:                                           ; preds = %if.then, %entry
  %ival.0 = phi i1 [ %phitmp1, %if.then ], [ true, %entry ]
  %2 = and i1 %cmp, %ival.0, !dbg !4453
  %conv = zext i1 %2 to i8, !dbg !4454
  ret i8 %conv, !dbg !4455
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @satisfies_constraint_L(%struct.rtx_def* %op) unnamed_addr #0 !dbg !4456 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4458, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i64 0, metadata !4459, metadata !DIExpression()), !dbg !4460
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4461
  %bf.load = load i32, i32* %0, align 8, !dbg !4461
  %bf.clear = and i32 %bf.load, 65535, !dbg !4461
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !4461
  br i1 %cmp, label %if.then, label %if.end, !dbg !4463

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !4464
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !4464
  %1 = load i64, i64* %arrayidx, align 8, !dbg !4464
  call void @llvm.dbg.value(metadata i64 %1, metadata !4459, metadata !DIExpression()), !dbg !4460
  br label %if.end, !dbg !4465

if.end:                                           ; preds = %if.then, %entry
  %ival.0 = phi i64 [ %1, %if.then ], [ 0, %entry ], !dbg !4460
  call void @llvm.dbg.value(metadata i64 %ival.0, metadata !4459, metadata !DIExpression()), !dbg !4460
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4466

land.rhs:                                         ; preds = %if.end
  %cmp4 = icmp eq i64 %ival.0, 255, !dbg !4467
  %cmp5 = icmp eq i64 %ival.0, 65535, !dbg !4468
  %spec.select = or i1 %cmp4, %cmp5, !dbg !4469
  %phitmp = zext i1 %spec.select to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %2 = phi i8 [ 0, %if.end ], [ %phitmp, %land.rhs ]
  ret i8 %2, !dbg !4470
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @satisfies_constraint_M(%struct.rtx_def* %op) unnamed_addr #0 !dbg !4471 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4473, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata i64 0, metadata !4474, metadata !DIExpression()), !dbg !4475
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4476
  %bf.load = load i32, i32* %0, align 8, !dbg !4476
  %bf.clear = and i32 %bf.load, 65535, !dbg !4476
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !4476
  br i1 %cmp, label %if.then, label %if.end, !dbg !4478

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !4479
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !4479
  %1 = load i64, i64* %arrayidx, align 8, !dbg !4479
  call void @llvm.dbg.value(metadata i64 %1, metadata !4474, metadata !DIExpression()), !dbg !4475
  %phitmp = icmp ult i64 %1, 4, !dbg !4480
  br label %if.end, !dbg !4480

if.end:                                           ; preds = %if.then, %entry
  %ival.0 = phi i1 [ %phitmp, %if.then ], [ true, %entry ]
  %2 = and i1 %cmp, %ival.0, !dbg !4481
  %conv = zext i1 %2 to i8, !dbg !4482
  ret i8 %conv, !dbg !4483
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @satisfies_constraint_N(%struct.rtx_def* %op) unnamed_addr #0 !dbg !4484 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4486, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i64 0, metadata !4487, metadata !DIExpression()), !dbg !4488
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4489
  %bf.load = load i32, i32* %0, align 8, !dbg !4489
  %bf.clear = and i32 %bf.load, 65535, !dbg !4489
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !4489
  br i1 %cmp, label %if.then, label %if.end, !dbg !4491

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !4492
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !4492
  %1 = load i64, i64* %arrayidx, align 8, !dbg !4492
  call void @llvm.dbg.value(metadata i64 %1, metadata !4487, metadata !DIExpression()), !dbg !4488
  %phitmp = icmp ult i64 %1, 256, !dbg !4493
  br label %if.end, !dbg !4493

if.end:                                           ; preds = %if.then, %entry
  %ival.0 = phi i1 [ %phitmp, %if.then ], [ true, %entry ]
  %2 = and i1 %cmp, %ival.0, !dbg !4494
  %conv = zext i1 %2 to i8, !dbg !4495
  ret i8 %conv, !dbg !4496
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @satisfies_constraint_O(%struct.rtx_def* %op) unnamed_addr #0 !dbg !4497 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4499, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 0, metadata !4500, metadata !DIExpression()), !dbg !4501
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4502
  %bf.load = load i32, i32* %0, align 8, !dbg !4502
  %bf.clear = and i32 %bf.load, 65535, !dbg !4502
  %cmp = icmp eq i32 %bf.clear, 30, !dbg !4502
  br i1 %cmp, label %if.then, label %if.end, !dbg !4504

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, !dbg !4505
  %arrayidx = bitcast %union.u* %u to i64*, !dbg !4505
  %1 = load i64, i64* %arrayidx, align 8, !dbg !4505
  call void @llvm.dbg.value(metadata i64 %1, metadata !4500, metadata !DIExpression()), !dbg !4501
  %phitmp = icmp ult i64 %1, 128, !dbg !4506
  br label %if.end, !dbg !4506

if.end:                                           ; preds = %if.then, %entry
  %ival.0 = phi i1 [ %phitmp, %if.then ], [ true, %entry ]
  %2 = and i1 %cmp, %ival.0, !dbg !4507
  %conv = zext i1 %2 to i8, !dbg !4508
  ret i8 %conv, !dbg !4509
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @satisfies_constraint_G(%struct.rtx_def* %op) unnamed_addr #0 !dbg !4510 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4512, metadata !DIExpression()), !dbg !4513
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4514
  %bf.load = load i32, i32* %0, align 8, !dbg !4514
  %bf.clear = and i32 %bf.load, 65535, !dbg !4514
  %cmp = icmp eq i32 %bf.clear, 32, !dbg !4515
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4516

land.rhs:                                         ; preds = %entry
  %call = tail call i32 @standard_80387_constant_p(%struct.rtx_def* %op) #6, !dbg !4517
  %tobool = icmp ne i32 %call, 0, !dbg !4516
  %phitmp = zext i1 %tobool to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %1, !dbg !4518
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @satisfies_constraint_C(%struct.rtx_def* %op) unnamed_addr #0 !dbg !4519 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4521, metadata !DIExpression()), !dbg !4522
  %call = tail call i32 @standard_sse_constant_p(%struct.rtx_def* %op) #6, !dbg !4523
  %conv = trunc i32 %call to i8, !dbg !4524
  ret i8 %conv, !dbg !4525
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @satisfies_constraint_e(%struct.rtx_def* %op) unnamed_addr #0 !dbg !4526 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4528, metadata !DIExpression()), !dbg !4530
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4531
  %bf.load = load i32, i32* %0, align 8, !dbg !4531
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4531
  %bf.clear = and i32 %bf.lshr, 255, !dbg !4531
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4529, metadata !DIExpression()), !dbg !4530
  %call = tail call i32 @x86_64_immediate_operand(%struct.rtx_def* %op, i32 %bf.clear) #7, !dbg !4532
  %conv = trunc i32 %call to i8, !dbg !4532
  ret i8 %conv, !dbg !4533
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @satisfies_constraint_Z(%struct.rtx_def* %op) unnamed_addr #0 !dbg !4534 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4536, metadata !DIExpression()), !dbg !4538
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4539
  %bf.load = load i32, i32* %0, align 8, !dbg !4539
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4539
  %bf.clear = and i32 %bf.lshr, 255, !dbg !4539
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4537, metadata !DIExpression()), !dbg !4538
  %call = tail call i32 @x86_64_zext_immediate_operand(%struct.rtx_def* %op, i32 %bf.clear) #7, !dbg !4540
  %conv = trunc i32 %call to i8, !dbg !4540
  ret i8 %conv, !dbg !4541
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @insn_const_int_ok_for_constraint(i64 %ival, i32 %c) local_unnamed_addr #4 !dbg !4542 {
entry:
  call void @llvm.dbg.value(metadata i64 %ival, metadata !4546, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 %c, metadata !4547, metadata !DIExpression()), !dbg !4548
  switch i32 %c, label %return [
    i32 22, label %sw.bb
    i32 23, label %sw.bb2
    i32 24, label %sw.bb7
    i32 25, label %sw.bb12
    i32 26, label %sw.bb18
    i32 27, label %sw.bb23
    i32 28, label %sw.bb28
  ], !dbg !4549

sw.bb:                                            ; preds = %entry
  %cmp = icmp ult i64 %ival, 32, !dbg !4550
  br label %return, !dbg !4552

sw.bb2:                                           ; preds = %entry
  %cmp4 = icmp ult i64 %ival, 64, !dbg !4553
  br label %return, !dbg !4554

sw.bb7:                                           ; preds = %entry
  %sub8 = add i64 %ival, 128, !dbg !4555
  %cmp9 = icmp ult i64 %sub8, 256, !dbg !4555
  br label %return, !dbg !4556

sw.bb12:                                          ; preds = %entry
  %cmp13 = icmp eq i64 %ival, 255, !dbg !4557
  %cmp15 = icmp eq i64 %ival, 65535, !dbg !4558
  %spec.select = or i1 %cmp13, %cmp15, !dbg !4559
  br label %return, !dbg !4560

sw.bb18:                                          ; preds = %entry
  %cmp20 = icmp ult i64 %ival, 4, !dbg !4561
  br label %return, !dbg !4562

sw.bb23:                                          ; preds = %entry
  %cmp25 = icmp ult i64 %ival, 256, !dbg !4563
  br label %return, !dbg !4564

sw.bb28:                                          ; preds = %entry
  %cmp30 = icmp ult i64 %ival, 128, !dbg !4565
  br label %return, !dbg !4566

return:                                           ; preds = %entry, %sw.bb28, %sw.bb23, %sw.bb18, %sw.bb12, %sw.bb7, %sw.bb2, %sw.bb
  %retval.0.shrunk = phi i1 [ %cmp30, %sw.bb28 ], [ %cmp25, %sw.bb23 ], [ %cmp20, %sw.bb18 ], [ %spec.select, %sw.bb12 ], [ %cmp9, %sw.bb7 ], [ %cmp4, %sw.bb2 ], [ %cmp, %sw.bb ], [ false, %entry ]
  %retval.0 = zext i1 %retval.0.shrunk to i8, !dbg !4548
  ret i8 %retval.0, !dbg !4567
}

declare dso_local i64 @trunc_int_for_mode(i64, i32) local_unnamed_addr #1

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local i32 @exact_log2(i64) local_unnamed_addr #1

declare dso_local zeroext i8 @optimize_insn_for_size_p() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @maybe_get_pool_constant(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @standard_sse_constant_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @ix86_decompose_address(%struct.rtx_def*, %struct.ix86_address*) local_unnamed_addr #1

declare dso_local i32 @ix86_fp_compare_code_to_integer(i32) local_unnamed_addr #1

declare dso_local i32 @standard_80387_constant_p(%struct.rtx_def*) local_unnamed_addr #1

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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1680, !1681, !1682}
!llvm.ident = !{!1683}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !601, nameTableKind: None)
!1 = !DIFile(filename: "insn-preds.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !132, !138, !143, !148, !167, !174, !181, !375, !518, !528, !565, !595}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !4, line: 7, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!7 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!17 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!18 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!19 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!20 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!21 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!22 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!23 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!24 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!25 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!26 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!27 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!28 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!29 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!30 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!31 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!32 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!33 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!34 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!35 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!36 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!37 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!38 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!39 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!40 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!41 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!42 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!43 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!44 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!45 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!46 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!47 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!48 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!49 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!50 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!51 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!52 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!53 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!54 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!55 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!56 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!57 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!58 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!59 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!60 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!61 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!62 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!63 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!64 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!65 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!66 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!67 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!68 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!69 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!70 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!71 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!72 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!73 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!74 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!75 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!76 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!77 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!78 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!79 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!80 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!81 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!82 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!83 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!84 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!85 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!86 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!87 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!88 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!89 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!90 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!91 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!92 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!93 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!94 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!95 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!96 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!98 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!99 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!100 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!101 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!104 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!105 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!106 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!107 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!108 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!109 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!110 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!111 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!112 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!113 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!114 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!115 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!116 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!117 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!118 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!119 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!120 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!121 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!123 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!130 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!131 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !133, line: 363, baseType: !5, size: 32, elements: !134)
!133 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!134 = !{!135, !136, !137}
!135 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !133, line: 355, baseType: !5, size: 32, elements: !139)
!139 = !{!140, !141, !142}
!140 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!141 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!142 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !144, line: 474, baseType: !5, size: 32, elements: !145)
!144 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!145 = !{!146, !147}
!146 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!147 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !149, line: 280, baseType: !5, size: 32, elements: !150)
!149 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!151 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!153 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!154 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!155 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!156 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!157 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!158 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!159 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!160 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !149, line: 1817, baseType: !5, size: 32, elements: !168)
!168 = !{!169, !170, !171, !172, !173}
!169 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !149, line: 1805, baseType: !5, size: 32, elements: !175)
!175 = !{!176, !177, !178, !179, !180}
!176 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!177 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!178 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !149, line: 39, baseType: !5, size: 32, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374}
!183 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!184 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!185 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!186 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!187 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!188 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!189 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!190 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!191 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!192 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!193 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!194 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!195 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!196 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!197 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!198 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!199 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!200 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!201 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!202 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!203 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!204 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!205 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!206 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!207 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!208 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!209 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!210 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!211 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!212 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!213 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!214 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!215 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!216 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!217 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!218 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!219 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!220 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!221 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!222 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!223 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!224 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!225 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!226 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!227 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!228 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!229 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!230 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!231 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!232 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!233 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!234 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!235 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!236 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!237 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!238 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!239 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!240 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!241 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!242 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!243 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!244 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!245 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!246 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!247 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!248 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!249 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!250 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!251 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!252 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!253 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!254 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!255 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!256 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!257 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!258 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!259 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!260 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!261 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!262 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!263 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!264 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!265 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!266 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!267 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!268 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!269 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!270 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!271 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!272 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!273 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!274 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!275 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!276 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!277 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!278 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!279 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!280 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!281 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!282 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!283 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!284 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!285 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!286 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!287 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!288 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!289 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!290 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!291 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!292 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!293 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!294 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!295 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!296 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!297 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!298 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!299 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!300 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!301 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!302 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!303 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!304 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!305 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!306 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!307 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!308 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!309 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!310 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!311 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!312 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!313 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!314 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!315 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!316 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!317 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!318 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!319 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!320 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!321 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!322 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!323 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!324 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!325 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!326 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!327 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!328 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!329 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!330 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!331 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!332 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!333 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!334 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!335 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!336 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!337 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!338 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!339 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!340 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!341 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!342 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!343 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!347 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!348 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!349 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!350 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!351 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!352 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!353 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!354 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!355 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!356 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!357 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!358 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!359 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!360 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!361 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!362 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!363 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!364 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!365 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!366 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!367 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!368 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!369 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!370 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!371 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!372 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!373 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!374 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!375 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !376, line: 45, baseType: !5, size: 32, elements: !377)
!376 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517}
!378 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!379 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!380 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!381 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!382 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!383 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!384 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!385 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!386 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!387 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!388 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!389 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!390 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!391 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!392 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!393 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!394 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!395 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!396 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!397 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!398 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!399 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!400 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!401 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!402 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!403 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!404 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!405 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!406 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!407 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!408 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!409 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!410 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!411 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!412 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!413 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!414 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!415 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!416 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!417 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!418 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!419 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!420 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!421 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!422 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!423 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!424 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!425 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!426 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!427 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!428 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!429 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!430 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!431 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!432 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!433 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!434 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!435 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!436 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!437 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!438 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!439 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!440 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!441 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!442 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!443 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!444 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!445 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!446 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!447 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!448 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!449 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!450 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!451 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!452 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!453 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!454 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!455 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!456 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!457 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!458 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!459 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!460 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!461 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!462 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!463 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!464 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!465 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!466 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!467 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!468 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!469 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!470 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!471 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!472 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!473 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!474 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!475 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!476 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!477 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!478 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!479 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!480 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!481 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!482 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!483 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!484 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!485 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!486 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!487 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!488 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!489 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!490 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!491 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!492 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!493 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!494 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!495 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!496 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!497 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!498 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!499 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!500 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!501 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!502 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!503 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!504 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!505 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!506 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!507 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!508 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!509 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!510 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!511 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!512 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!513 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!514 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!515 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!516 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!517 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!518 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tls_model", file: !519, line: 97, baseType: !5, size: 32, elements: !520)
!519 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!520 = !{!521, !522, !523, !524, !525, !526, !527}
!521 = !DIEnumerator(name: "TLS_MODEL_NONE", value: 0, isUnsigned: true)
!522 = !DIEnumerator(name: "TLS_MODEL_EMULATED", value: 1, isUnsigned: true)
!523 = !DIEnumerator(name: "TLS_MODEL_REAL", value: 2, isUnsigned: true)
!524 = !DIEnumerator(name: "TLS_MODEL_GLOBAL_DYNAMIC", value: 2, isUnsigned: true)
!525 = !DIEnumerator(name: "TLS_MODEL_LOCAL_DYNAMIC", value: 3, isUnsigned: true)
!526 = !DIEnumerator(name: "TLS_MODEL_INITIAL_EXEC", value: 4, isUnsigned: true)
!527 = !DIEnumerator(name: "TLS_MODEL_LOCAL_EXEC", value: 5, isUnsigned: true)
!528 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "constraint_num", file: !529, line: 135, baseType: !5, size: 32, elements: !530)
!529 = !DIFile(filename: "./tm-preds.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564}
!531 = !DIEnumerator(name: "CONSTRAINT__UNKNOWN", value: 0, isUnsigned: true)
!532 = !DIEnumerator(name: "CONSTRAINT_R", value: 1, isUnsigned: true)
!533 = !DIEnumerator(name: "CONSTRAINT_q", value: 2, isUnsigned: true)
!534 = !DIEnumerator(name: "CONSTRAINT_Q", value: 3, isUnsigned: true)
!535 = !DIEnumerator(name: "CONSTRAINT_l", value: 4, isUnsigned: true)
!536 = !DIEnumerator(name: "CONSTRAINT_a", value: 5, isUnsigned: true)
!537 = !DIEnumerator(name: "CONSTRAINT_b", value: 6, isUnsigned: true)
!538 = !DIEnumerator(name: "CONSTRAINT_c", value: 7, isUnsigned: true)
!539 = !DIEnumerator(name: "CONSTRAINT_d", value: 8, isUnsigned: true)
!540 = !DIEnumerator(name: "CONSTRAINT_S", value: 9, isUnsigned: true)
!541 = !DIEnumerator(name: "CONSTRAINT_D", value: 10, isUnsigned: true)
!542 = !DIEnumerator(name: "CONSTRAINT_A", value: 11, isUnsigned: true)
!543 = !DIEnumerator(name: "CONSTRAINT_U", value: 12, isUnsigned: true)
!544 = !DIEnumerator(name: "CONSTRAINT_f", value: 13, isUnsigned: true)
!545 = !DIEnumerator(name: "CONSTRAINT_t", value: 14, isUnsigned: true)
!546 = !DIEnumerator(name: "CONSTRAINT_u", value: 15, isUnsigned: true)
!547 = !DIEnumerator(name: "CONSTRAINT_y", value: 16, isUnsigned: true)
!548 = !DIEnumerator(name: "CONSTRAINT_x", value: 17, isUnsigned: true)
!549 = !DIEnumerator(name: "CONSTRAINT_Yz", value: 18, isUnsigned: true)
!550 = !DIEnumerator(name: "CONSTRAINT_Y2", value: 19, isUnsigned: true)
!551 = !DIEnumerator(name: "CONSTRAINT_Yi", value: 20, isUnsigned: true)
!552 = !DIEnumerator(name: "CONSTRAINT_Ym", value: 21, isUnsigned: true)
!553 = !DIEnumerator(name: "CONSTRAINT_I", value: 22, isUnsigned: true)
!554 = !DIEnumerator(name: "CONSTRAINT_J", value: 23, isUnsigned: true)
!555 = !DIEnumerator(name: "CONSTRAINT_K", value: 24, isUnsigned: true)
!556 = !DIEnumerator(name: "CONSTRAINT_L", value: 25, isUnsigned: true)
!557 = !DIEnumerator(name: "CONSTRAINT_M", value: 26, isUnsigned: true)
!558 = !DIEnumerator(name: "CONSTRAINT_N", value: 27, isUnsigned: true)
!559 = !DIEnumerator(name: "CONSTRAINT_O", value: 28, isUnsigned: true)
!560 = !DIEnumerator(name: "CONSTRAINT_G", value: 29, isUnsigned: true)
!561 = !DIEnumerator(name: "CONSTRAINT_C", value: 30, isUnsigned: true)
!562 = !DIEnumerator(name: "CONSTRAINT_e", value: 31, isUnsigned: true)
!563 = !DIEnumerator(name: "CONSTRAINT_Z", value: 32, isUnsigned: true)
!564 = !DIEnumerator(name: "CONSTRAINT__LIMIT", value: 33, isUnsigned: true)
!565 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_class", file: !144, line: 1188, baseType: !5, size: 32, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594}
!567 = !DIEnumerator(name: "NO_REGS", value: 0, isUnsigned: true)
!568 = !DIEnumerator(name: "AREG", value: 1, isUnsigned: true)
!569 = !DIEnumerator(name: "DREG", value: 2, isUnsigned: true)
!570 = !DIEnumerator(name: "CREG", value: 3, isUnsigned: true)
!571 = !DIEnumerator(name: "BREG", value: 4, isUnsigned: true)
!572 = !DIEnumerator(name: "SIREG", value: 5, isUnsigned: true)
!573 = !DIEnumerator(name: "DIREG", value: 6, isUnsigned: true)
!574 = !DIEnumerator(name: "AD_REGS", value: 7, isUnsigned: true)
!575 = !DIEnumerator(name: "CLOBBERED_REGS", value: 8, isUnsigned: true)
!576 = !DIEnumerator(name: "Q_REGS", value: 9, isUnsigned: true)
!577 = !DIEnumerator(name: "NON_Q_REGS", value: 10, isUnsigned: true)
!578 = !DIEnumerator(name: "INDEX_REGS", value: 11, isUnsigned: true)
!579 = !DIEnumerator(name: "LEGACY_REGS", value: 12, isUnsigned: true)
!580 = !DIEnumerator(name: "GENERAL_REGS", value: 13, isUnsigned: true)
!581 = !DIEnumerator(name: "FP_TOP_REG", value: 14, isUnsigned: true)
!582 = !DIEnumerator(name: "FP_SECOND_REG", value: 15, isUnsigned: true)
!583 = !DIEnumerator(name: "FLOAT_REGS", value: 16, isUnsigned: true)
!584 = !DIEnumerator(name: "SSE_FIRST_REG", value: 17, isUnsigned: true)
!585 = !DIEnumerator(name: "SSE_REGS", value: 18, isUnsigned: true)
!586 = !DIEnumerator(name: "MMX_REGS", value: 19, isUnsigned: true)
!587 = !DIEnumerator(name: "FP_TOP_SSE_REGS", value: 20, isUnsigned: true)
!588 = !DIEnumerator(name: "FP_SECOND_SSE_REGS", value: 21, isUnsigned: true)
!589 = !DIEnumerator(name: "FLOAT_SSE_REGS", value: 22, isUnsigned: true)
!590 = !DIEnumerator(name: "FLOAT_INT_REGS", value: 23, isUnsigned: true)
!591 = !DIEnumerator(name: "INT_SSE_REGS", value: 24, isUnsigned: true)
!592 = !DIEnumerator(name: "FLOAT_INT_SSE_REGS", value: 25, isUnsigned: true)
!593 = !DIEnumerator(name: "ALL_REGS", value: 26, isUnsigned: true)
!594 = !DIEnumerator(name: "LIM_REG_CLASSES", value: 27, isUnsigned: true)
!595 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ix86_address_seg", file: !596, line: 254, baseType: !5, size: 32, elements: !597)
!596 = !DIFile(filename: "./config/i386/i386-protos.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!597 = !{!598, !599, !600}
!598 = !DIEnumerator(name: "SEG_DEFAULT", value: 0, isUnsigned: true)
!599 = !DIEnumerator(name: "SEG_FS", value: 1, isUnsigned: true)
!600 = !DIEnumerator(name: "SEG_GS", value: 2, isUnsigned: true)
!601 = !{!602, !603, !604, !605, !608, !609, !375, !611, !3, !518, !612, !5, !613}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!604 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!611 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!612 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !519, line: 50, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !376, line: 240, size: 384, elements: !616)
!616 = !{!617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !615, file: !376, line: 242, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !615, file: !376, line: 245, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !615, file: !376, line: 252, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !615, file: !376, line: 257, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !615, file: !376, line: 265, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !615, file: !376, line: 277, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !615, file: !376, line: 291, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !615, file: !376, line: 298, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !615, file: !376, line: 305, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !615, file: !376, line: 310, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !615, file: !376, line: 321, baseType: !628, size: 320, offset: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !376, line: 315, size: 320, elements: !629)
!629 = !{!630, !1615, !1617, !1678, !1679}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !628, file: !376, line: 316, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 64, elements: !647)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !376, line: 183, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !376, line: 166, size: 64, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !649, !650, !662, !665, !725, !1593, !1594, !1605, !1612}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !633, file: !376, line: 168, baseType: !604, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !633, file: !376, line: 169, baseType: !5, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !633, file: !376, line: 170, baseType: !609, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !633, file: !376, line: 171, baseType: !613, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !633, file: !376, line: 172, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !519, line: 53, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !376, line: 359, size: 128, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !642, file: !376, line: 360, baseType: !604, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !642, file: !376, line: 361, baseType: !646, size: 64, offset: 64)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 64, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 1)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !633, file: !376, line: 173, baseType: !3, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !633, file: !376, line: 174, baseType: !651, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !376, line: 133, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 115, size: 32, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !652, file: !376, line: 118, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !652, file: !376, line: 120, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !652, file: !376, line: 121, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !652, file: !376, line: 123, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !652, file: !376, line: 125, baseType: !5, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !652, file: !376, line: 127, baseType: !5, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !652, file: !376, line: 130, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !652, file: !376, line: 132, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !633, file: !376, line: 175, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !376, line: 175, flags: DIFlagFwdDecl)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !633, file: !376, line: 176, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !668, line: 75, size: 256, elements: !669)
!668 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!669 = !{!670, !684, !685, !686}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !667, file: !668, line: 76, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !668, line: 68, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !668, line: 63, size: 320, elements: !674)
!674 = !{!675, !677, !678, !679}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !673, file: !668, line: 64, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !673, file: !668, line: 65, baseType: !676, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !673, file: !668, line: 66, baseType: !5, size: 32, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !673, file: !668, line: 67, baseType: !680, size: 128, offset: 192)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !681, size: 128, elements: !682)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !668, line: 29, baseType: !611)
!682 = !{!683}
!683 = !DISubrange(count: 2)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !667, file: !668, line: 77, baseType: !671, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !667, file: !668, line: 78, baseType: !5, size: 32, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !667, file: !668, line: 79, baseType: !687, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !668, line: 49, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !668, line: 45, size: 832, elements: !690)
!690 = !{!691, !692, !693}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !689, file: !668, line: 46, baseType: !676, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !689, file: !668, line: 47, baseType: !666, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !689, file: !668, line: 48, baseType: !694, size: 704, offset: 128)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !695, line: 164, size: 704, elements: !696)
!695 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!696 = !{!697, !698, !708, !709, !710, !711, !712, !713, !717, !721, !722, !723, !724}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !694, file: !695, line: 166, baseType: !612, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !694, file: !695, line: 167, baseType: !699, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !695, line: 157, size: 192, elements: !701)
!701 = !{!702, !703, !704}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !700, file: !695, line: 159, baseType: !606, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !700, file: !695, line: 160, baseType: !699, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !700, file: !695, line: 161, baseType: !705, size: 32, offset: 128)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 32, elements: !706)
!706 = !{!707}
!707 = !DISubrange(count: 4)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !694, file: !695, line: 168, baseType: !606, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !694, file: !695, line: 169, baseType: !606, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !694, file: !695, line: 170, baseType: !606, size: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !694, file: !695, line: 171, baseType: !612, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !694, file: !695, line: 172, baseType: !604, size: 32, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !694, file: !695, line: 176, baseType: !714, size: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!699, !608, !612}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !694, file: !695, line: 177, baseType: !718, size: 64, offset: 512)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !608, !699}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !694, file: !695, line: 178, baseType: !608, size: 64, offset: 576)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !694, file: !695, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !694, file: !695, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !694, file: !695, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !633, file: !376, line: 177, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !519, line: 56, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !149, line: 3371, size: 1792, elements: !729)
!729 = !{!730, !763, !769, !780, !799, !810, !815, !822, !828, !841, !853, !891, !896, !924, !932, !933, !938, !947, !953, !958, !962, !966, !1217, !1266, !1272, !1279, !1286, !1312, !1337, !1354, !1366, !1388, !1403, !1575}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !728, file: !149, line: 3372, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !149, line: 360, size: 64, elements: !732)
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !731, file: !149, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !731, file: !149, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !731, file: !149, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !731, file: !149, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !731, file: !149, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !731, file: !149, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !731, file: !149, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !731, file: !149, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !731, file: !149, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !731, file: !149, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !731, file: !149, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !731, file: !149, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !731, file: !149, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !731, file: !149, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !731, file: !149, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !731, file: !149, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !731, file: !149, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !731, file: !149, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !731, file: !149, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !731, file: !149, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !731, file: !149, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !731, file: !149, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !731, file: !149, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !731, file: !149, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !731, file: !149, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !731, file: !149, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !731, file: !149, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !731, file: !149, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !731, file: !149, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !731, file: !149, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !728, file: !149, line: 3373, baseType: !764, size: 192)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !149, line: 402, size: 192, elements: !765)
!765 = !{!766, !767, !768}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !764, file: !149, line: 403, baseType: !731, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !764, file: !149, line: 404, baseType: !726, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !149, line: 405, baseType: !726, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !728, file: !149, line: 3374, baseType: !770, size: 320)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !149, line: 1384, size: 320, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !770, file: !149, line: 1385, baseType: !764, size: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !770, file: !149, line: 1386, baseType: !774, size: 128, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !775, line: 58, baseType: !776)
!775 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !775, line: 54, size: 128, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !776, file: !775, line: 56, baseType: !611, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !776, file: !775, line: 57, baseType: !612, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !728, file: !149, line: 3375, baseType: !781, size: 256)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !149, line: 1397, size: 256, elements: !782)
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !781, file: !149, line: 1398, baseType: !764, size: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !781, file: !149, line: 1399, baseType: !785, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !787, line: 52, size: 256, elements: !788)
!787 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!788 = !{!789, !790, !791, !792, !793, !794, !795}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !786, file: !787, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !786, file: !787, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !786, file: !787, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !786, file: !787, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !786, file: !787, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !786, file: !787, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !786, file: !787, line: 62, baseType: !796, size: 192, offset: 64)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 192, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 3)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !728, file: !149, line: 3376, baseType: !800, size: 256)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !149, line: 1408, size: 256, elements: !801)
!801 = !{!802, !803}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !800, file: !149, line: 1409, baseType: !764, size: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !800, file: !149, line: 1410, baseType: !804, size: 64, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !806, line: 27, size: 192, elements: !807)
!806 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !805, file: !806, line: 29, baseType: !774, size: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !805, file: !806, line: 30, baseType: !3, size: 32, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !728, file: !149, line: 3377, baseType: !811, size: 256)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !149, line: 1437, size: 256, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !811, file: !149, line: 1438, baseType: !764, size: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !811, file: !149, line: 1439, baseType: !726, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !728, file: !149, line: 3378, baseType: !816, size: 256)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !149, line: 1418, size: 256, elements: !817)
!817 = !{!818, !819, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !816, file: !149, line: 1419, baseType: !764, size: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !816, file: !149, line: 1420, baseType: !604, size: 32, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !816, file: !149, line: 1421, baseType: !821, size: 8, offset: 224)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 8, elements: !647)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !728, file: !149, line: 3379, baseType: !823, size: 320)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !149, line: 1428, size: 320, elements: !824)
!824 = !{!825, !826, !827}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !823, file: !149, line: 1429, baseType: !764, size: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !823, file: !149, line: 1430, baseType: !726, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !823, file: !149, line: 1431, baseType: !726, size: 64, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !728, file: !149, line: 3380, baseType: !829, size: 320)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !149, line: 1460, size: 320, elements: !830)
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !829, file: !149, line: 1461, baseType: !764, size: 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !829, file: !149, line: 1462, baseType: !833, size: 128, offset: 192)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !834, line: 31, size: 128, elements: !835)
!834 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!835 = !{!836, !839, !840}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !833, file: !834, line: 32, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !833, file: !834, line: 33, baseType: !5, size: 32, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !833, file: !834, line: 34, baseType: !5, size: 32, offset: 96)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !728, file: !149, line: 3381, baseType: !842, size: 384)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !149, line: 2507, size: 384, elements: !843)
!843 = !{!844, !845, !850, !851, !852}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !842, file: !149, line: 2508, baseType: !764, size: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !842, file: !149, line: 2509, baseType: !846, size: 32, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !847, line: 58, baseType: !848)
!847 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !849, line: 44, baseType: !5)
!849 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!850 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !842, file: !149, line: 2510, baseType: !5, size: 32, offset: 224)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !842, file: !149, line: 2511, baseType: !726, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !842, file: !149, line: 2512, baseType: !726, size: 64, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !728, file: !149, line: 3382, baseType: !854, size: 896)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !149, line: 2652, size: 896, elements: !855)
!855 = !{!856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !854, file: !149, line: 2653, baseType: !842, size: 384)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !854, file: !149, line: 2654, baseType: !726, size: 64, offset: 384)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !854, file: !149, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !854, file: !149, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !854, file: !149, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !854, file: !149, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !854, file: !149, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !854, file: !149, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !854, file: !149, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !854, file: !149, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !854, file: !149, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !854, file: !149, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !854, file: !149, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !854, file: !149, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !854, file: !149, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !854, file: !149, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !854, file: !149, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !854, file: !149, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !854, file: !149, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !854, file: !149, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !854, file: !149, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !854, file: !149, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !854, file: !149, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !854, file: !149, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !854, file: !149, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !854, file: !149, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !854, file: !149, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !854, file: !149, line: 2703, baseType: !5, size: 32, offset: 512)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !854, file: !149, line: 2705, baseType: !726, size: 64, offset: 576)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !854, file: !149, line: 2706, baseType: !726, size: 64, offset: 640)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !854, file: !149, line: 2707, baseType: !726, size: 64, offset: 704)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !854, file: !149, line: 2708, baseType: !726, size: 64, offset: 768)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !854, file: !149, line: 2711, baseType: !889, size: 64, offset: 832)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !149, line: 2711, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !728, file: !149, line: 3383, baseType: !892, size: 960)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !149, line: 2756, size: 960, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !892, file: !149, line: 2757, baseType: !854, size: 896)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !892, file: !149, line: 2758, baseType: !613, size: 64, offset: 896)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !728, file: !149, line: 3384, baseType: !897, size: 1472)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !149, line: 3114, size: 1472, elements: !898)
!898 = !{!899, !920, !921, !922, !923}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !897, file: !149, line: 3115, baseType: !900, size: 1216)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !149, line: 2984, size: 1216, elements: !901)
!901 = !{!902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !900, file: !149, line: 2985, baseType: !892, size: 960)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !900, file: !149, line: 2986, baseType: !726, size: 64, offset: 960)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !900, file: !149, line: 2987, baseType: !726, size: 64, offset: 1024)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !900, file: !149, line: 2988, baseType: !726, size: 64, offset: 1088)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !900, file: !149, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !900, file: !149, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !900, file: !149, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !900, file: !149, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !900, file: !149, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !900, file: !149, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !900, file: !149, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !900, file: !149, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !900, file: !149, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !900, file: !149, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !900, file: !149, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !900, file: !149, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !900, file: !149, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !900, file: !149, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !897, file: !149, line: 3117, baseType: !726, size: 64, offset: 1216)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !897, file: !149, line: 3119, baseType: !726, size: 64, offset: 1280)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !897, file: !149, line: 3121, baseType: !726, size: 64, offset: 1344)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !897, file: !149, line: 3123, baseType: !726, size: 64, offset: 1408)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !728, file: !149, line: 3385, baseType: !925, size: 1088)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !149, line: 2874, size: 1088, elements: !926)
!926 = !{!927, !928, !929}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !925, file: !149, line: 2875, baseType: !892, size: 960)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !925, file: !149, line: 2876, baseType: !613, size: 64, offset: 960)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !925, file: !149, line: 2877, baseType: !930, size: 64, offset: 1024)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !149, line: 2856, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !728, file: !149, line: 3386, baseType: !900, size: 1216)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !728, file: !149, line: 3387, baseType: !934, size: 1280)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !149, line: 3093, size: 1280, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !934, file: !149, line: 3094, baseType: !900, size: 1216)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !934, file: !149, line: 3095, baseType: !930, size: 64, offset: 1216)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !728, file: !149, line: 3388, baseType: !939, size: 1216)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !149, line: 2824, size: 1216, elements: !940)
!940 = !{!941, !942, !943, !944, !945, !946}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !939, file: !149, line: 2825, baseType: !854, size: 896)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !939, file: !149, line: 2827, baseType: !726, size: 64, offset: 896)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !939, file: !149, line: 2828, baseType: !726, size: 64, offset: 960)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !939, file: !149, line: 2829, baseType: !726, size: 64, offset: 1024)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !939, file: !149, line: 2830, baseType: !726, size: 64, offset: 1088)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !939, file: !149, line: 2831, baseType: !726, size: 64, offset: 1152)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !728, file: !149, line: 3389, baseType: !948, size: 1024)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !149, line: 2850, size: 1024, elements: !949)
!949 = !{!950, !951, !952}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !948, file: !149, line: 2851, baseType: !892, size: 960)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !948, file: !149, line: 2852, baseType: !604, size: 32, offset: 960)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !948, file: !149, line: 2853, baseType: !604, size: 32, offset: 992)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !728, file: !149, line: 3390, baseType: !954, size: 1024)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !149, line: 2857, size: 1024, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !954, file: !149, line: 2858, baseType: !892, size: 960)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !954, file: !149, line: 2859, baseType: !930, size: 64, offset: 960)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !728, file: !149, line: 3391, baseType: !959, size: 960)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !149, line: 2862, size: 960, elements: !960)
!960 = !{!961}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !959, file: !149, line: 2863, baseType: !892, size: 960)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !728, file: !149, line: 3392, baseType: !963, size: 1472)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !149, line: 3304, size: 1472, elements: !964)
!964 = !{!965}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !963, file: !149, line: 3305, baseType: !897, size: 1472)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !728, file: !149, line: 3393, baseType: !967, size: 1792)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !149, line: 3248, size: 1792, elements: !968)
!968 = !{!969, !970, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !967, file: !149, line: 3249, baseType: !897, size: 1472)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !967, file: !149, line: 3251, baseType: !971, size: 64, offset: 1472)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !973, line: 463, size: 1152, elements: !974)
!973 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!974 = !{!975, !978, !1082, !1083, !1086, !1089, !1141, !1142, !1143, !1144, !1145, !1169, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !972, file: !973, line: 464, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !973, line: 464, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !972, file: !973, line: 467, baseType: !979, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !133, line: 374, size: 640, elements: !981)
!981 = !{!982, !1057, !1058, !1071, !1072, !1073, !1074, !1075, !1076, !1078, !1080, !1081}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !980, file: !133, line: 377, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !519, line: 111, baseType: !984)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !133, line: 217, size: 832, elements: !986)
!986 = !{!987, !1022, !1023, !1024, !1027, !1031, !1032, !1033, !1051, !1052, !1053, !1054, !1055, !1056}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !985, file: !133, line: 219, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !133, line: 151, baseType: !990)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !133, line: 151, size: 128, elements: !991)
!991 = !{!992}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !990, file: !133, line: 151, baseType: !993, size: 128)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !133, line: 150, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !133, line: 150, size: 128, elements: !995)
!995 = !{!996, !997, !998}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !994, file: !133, line: 150, baseType: !5, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !994, file: !133, line: 150, baseType: !5, size: 32, offset: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !994, file: !133, line: 150, baseType: !999, size: 64, offset: 64)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, size: 64, elements: !647)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !519, line: 108, baseType: !1001)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !133, line: 122, size: 512, elements: !1003)
!1003 = !{!1004, !1005, !1006, !1014, !1015, !1016, !1017, !1018, !1019, !1020}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1002, file: !133, line: 124, baseType: !984, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1002, file: !133, line: 125, baseType: !984, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1002, file: !133, line: 131, baseType: !1007, size: 64, offset: 128)
!1007 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !133, line: 128, size: 64, elements: !1008)
!1008 = !{!1009, !1013}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1007, file: !133, line: 129, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !519, line: 66, baseType: !1011)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !519, line: 65, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1007, file: !133, line: 130, baseType: !613, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1002, file: !133, line: 134, baseType: !608, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1002, file: !133, line: 137, baseType: !726, size: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1002, file: !133, line: 138, baseType: !846, size: 32, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1002, file: !133, line: 142, baseType: !5, size: 32, offset: 352)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1002, file: !133, line: 144, baseType: !604, size: 32, offset: 384)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1002, file: !133, line: 145, baseType: !604, size: 32, offset: 416)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1002, file: !133, line: 146, baseType: !1021, size: 64, offset: 448)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !133, line: 119, baseType: !612)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !985, file: !133, line: 220, baseType: !988, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !985, file: !133, line: 223, baseType: !608, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !985, file: !133, line: 226, baseType: !1025, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !133, line: 185, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !985, file: !133, line: 229, baseType: !1028, size: 128, offset: 256)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 128, elements: !682)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !133, line: 229, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !985, file: !133, line: 232, baseType: !984, size: 64, offset: 384)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !985, file: !133, line: 233, baseType: !984, size: 64, offset: 448)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !985, file: !133, line: 238, baseType: !1034, size: 64, offset: 512)
!1034 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !133, line: 235, size: 64, elements: !1035)
!1035 = !{!1036, !1042}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1034, file: !133, line: 236, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !133, line: 273, size: 128, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1038, file: !133, line: 275, baseType: !1010, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1038, file: !133, line: 278, baseType: !1010, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1034, file: !133, line: 237, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !133, line: 259, size: 320, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1049, !1050}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1044, file: !133, line: 261, baseType: !613, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1044, file: !133, line: 262, baseType: !613, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1044, file: !133, line: 266, baseType: !613, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1044, file: !133, line: 267, baseType: !613, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1044, file: !133, line: 270, baseType: !604, size: 32, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !985, file: !133, line: 241, baseType: !1021, size: 64, offset: 576)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !985, file: !133, line: 244, baseType: !604, size: 32, offset: 640)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !985, file: !133, line: 247, baseType: !604, size: 32, offset: 672)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !985, file: !133, line: 250, baseType: !604, size: 32, offset: 704)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !985, file: !133, line: 253, baseType: !604, size: 32, offset: 736)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !985, file: !133, line: 256, baseType: !604, size: 32, offset: 768)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !980, file: !133, line: 378, baseType: !983, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !980, file: !133, line: 381, baseType: !1059, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !133, line: 282, baseType: !1061)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !133, line: 282, size: 128, elements: !1062)
!1062 = !{!1063}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1061, file: !133, line: 282, baseType: !1064, size: 128)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !133, line: 281, baseType: !1065)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !133, line: 281, size: 128, elements: !1066)
!1066 = !{!1067, !1068, !1069}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1065, file: !133, line: 281, baseType: !5, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1065, file: !133, line: 281, baseType: !5, size: 32, offset: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1065, file: !133, line: 281, baseType: !1070, size: 64, offset: 64)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !983, size: 64, elements: !647)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !980, file: !133, line: 384, baseType: !604, size: 32, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !980, file: !133, line: 387, baseType: !604, size: 32, offset: 224)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !980, file: !133, line: 390, baseType: !604, size: 32, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !980, file: !133, line: 394, baseType: !1059, size: 64, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !980, file: !133, line: 396, baseType: !132, size: 32, offset: 384)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !980, file: !133, line: 399, baseType: !1077, size: 64, offset: 416)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !682)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !980, file: !133, line: 402, baseType: !1079, size: 64, offset: 480)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !682)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !980, file: !133, line: 406, baseType: !604, size: 32, offset: 544)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !980, file: !133, line: 409, baseType: !604, size: 32, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !972, file: !973, line: 470, baseType: !1011, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !972, file: !973, line: 473, baseType: !1084, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !973, line: 166, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !972, file: !973, line: 476, baseType: !1087, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !973, line: 476, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !972, file: !973, line: 479, baseType: !1090, size: 64, offset: 320)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1091, line: 144, baseType: !1092)
!1091 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1091, line: 100, size: 896, elements: !1094)
!1094 = !{!1095, !1103, !1108, !1113, !1115, !1118, !1119, !1120, !1121, !1122, !1127, !1129, !1130, !1135, !1140}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1093, file: !1091, line: 102, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1091, line: 52, baseType: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!1100, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1091, line: 47, baseType: !5)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1093, file: !1091, line: 105, baseType: !1104, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1091, line: 59, baseType: !1105)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!604, !1101, !1101}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1093, file: !1091, line: 108, baseType: !1109, size: 64, offset: 128)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1091, line: 63, baseType: !1110)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null, !608}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1093, file: !1091, line: 111, baseType: !1114, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1093, file: !1091, line: 114, baseType: !1116, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1117, line: 46, baseType: !611)
!1117 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1093, file: !1091, line: 117, baseType: !1116, size: 64, offset: 320)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1093, file: !1091, line: 120, baseType: !1116, size: 64, offset: 384)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1093, file: !1091, line: 124, baseType: !5, size: 32, offset: 448)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1093, file: !1091, line: 128, baseType: !5, size: 32, offset: 480)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1093, file: !1091, line: 131, baseType: !1123, size: 64, offset: 512)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1091, line: 75, baseType: !1124)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!608, !1116, !1116}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1093, file: !1091, line: 132, baseType: !1128, size: 64, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1091, line: 78, baseType: !1110)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1093, file: !1091, line: 135, baseType: !608, size: 64, offset: 640)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1093, file: !1091, line: 136, baseType: !1131, size: 64, offset: 704)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1091, line: 82, baseType: !1132)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!608, !608, !1116, !1116}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1093, file: !1091, line: 137, baseType: !1136, size: 64, offset: 768)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1091, line: 83, baseType: !1137)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !608, !608}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1093, file: !1091, line: 141, baseType: !5, size: 32, offset: 832)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !972, file: !973, line: 484, baseType: !726, size: 64, offset: 384)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !972, file: !973, line: 488, baseType: !726, size: 64, offset: 448)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !972, file: !973, line: 493, baseType: !726, size: 64, offset: 512)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !972, file: !973, line: 496, baseType: !726, size: 64, offset: 576)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !972, file: !973, line: 501, baseType: !1146, size: 64, offset: 640)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !144, line: 2355, size: 576, elements: !1148)
!1148 = !{!1149, !1152, !1153, !1154, !1155, !1157, !1158, !1163, !1164, !1165, !1166, !1167, !1168}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1147, file: !144, line: 2356, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !144, line: 2356, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1147, file: !144, line: 2357, baseType: !609, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1147, file: !144, line: 2358, baseType: !604, size: 32, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1147, file: !144, line: 2359, baseType: !604, size: 32, offset: 160)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1147, file: !144, line: 2360, baseType: !1156, size: 128, offset: 192)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 128, elements: !706)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1147, file: !144, line: 2364, baseType: !604, size: 32, offset: 320)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1147, file: !144, line: 2367, baseType: !1159, size: 128, offset: 384)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !144, line: 2349, size: 128, elements: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1159, file: !144, line: 2351, baseType: !613, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1159, file: !144, line: 2352, baseType: !612, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1147, file: !144, line: 2371, baseType: !143, size: 32, offset: 512)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1147, file: !144, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1147, file: !144, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1147, file: !144, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1147, file: !144, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1147, file: !144, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !972, file: !973, line: 504, baseType: !1170, size: 64, offset: 704)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !973, line: 504, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !972, file: !973, line: 507, baseType: !1090, size: 64, offset: 768)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !972, file: !973, line: 510, baseType: !604, size: 32, offset: 832)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !972, file: !973, line: 513, baseType: !604, size: 32, offset: 864)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !972, file: !973, line: 516, baseType: !846, size: 32, offset: 896)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !972, file: !973, line: 519, baseType: !846, size: 32, offset: 928)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !972, file: !973, line: 522, baseType: !5, size: 32, offset: 960)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !972, file: !973, line: 523, baseType: !5, size: 32, offset: 992)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !972, file: !973, line: 528, baseType: !609, size: 64, offset: 1024)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !972, file: !973, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !972, file: !973, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !972, file: !973, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !972, file: !973, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !972, file: !973, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !972, file: !973, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !972, file: !973, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !972, file: !973, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !972, file: !973, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !972, file: !973, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !972, file: !973, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !972, file: !973, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !972, file: !973, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !972, file: !973, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !972, file: !973, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !972, file: !973, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !967, file: !149, line: 3254, baseType: !726, size: 64, offset: 1536)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !967, file: !149, line: 3257, baseType: !726, size: 64, offset: 1600)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !967, file: !149, line: 3258, baseType: !726, size: 64, offset: 1664)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !967, file: !149, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !967, file: !149, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !967, file: !149, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !967, file: !149, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !967, file: !149, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !967, file: !149, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !967, file: !149, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !967, file: !149, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !967, file: !149, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !967, file: !149, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !967, file: !149, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !967, file: !149, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !967, file: !149, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !967, file: !149, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !967, file: !149, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !967, file: !149, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !967, file: !149, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !967, file: !149, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !728, file: !149, line: 3394, baseType: !1218, size: 1344)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !149, line: 2279, size: 1344, elements: !1219)
!1219 = !{!1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1245, !1246, !1247, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1218, file: !149, line: 2280, baseType: !764, size: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1218, file: !149, line: 2281, baseType: !726, size: 64, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1218, file: !149, line: 2282, baseType: !726, size: 64, offset: 256)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1218, file: !149, line: 2283, baseType: !726, size: 64, offset: 320)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1218, file: !149, line: 2284, baseType: !726, size: 64, offset: 384)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1218, file: !149, line: 2285, baseType: !5, size: 32, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1218, file: !149, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1218, file: !149, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1218, file: !149, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1218, file: !149, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1218, file: !149, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1218, file: !149, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1218, file: !149, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1218, file: !149, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1218, file: !149, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1218, file: !149, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1218, file: !149, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1218, file: !149, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1218, file: !149, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1218, file: !149, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1218, file: !149, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1218, file: !149, line: 2305, baseType: !5, size: 32, offset: 512)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1218, file: !149, line: 2306, baseType: !1243, size: 32, offset: 544)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1244, line: 31, baseType: !604)
!1244 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1218, file: !149, line: 2307, baseType: !726, size: 64, offset: 576)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1218, file: !149, line: 2308, baseType: !726, size: 64, offset: 640)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1218, file: !149, line: 2314, baseType: !1248, size: 64, offset: 704)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !149, line: 2309, size: 64, elements: !1249)
!1249 = !{!1250, !1251, !1252}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1248, file: !149, line: 2310, baseType: !604, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1248, file: !149, line: 2311, baseType: !609, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1248, file: !149, line: 2312, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !149, line: 2277, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1218, file: !149, line: 2315, baseType: !726, size: 64, offset: 768)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1218, file: !149, line: 2316, baseType: !726, size: 64, offset: 832)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1218, file: !149, line: 2317, baseType: !726, size: 64, offset: 896)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1218, file: !149, line: 2318, baseType: !726, size: 64, offset: 960)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1218, file: !149, line: 2319, baseType: !726, size: 64, offset: 1024)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1218, file: !149, line: 2320, baseType: !726, size: 64, offset: 1088)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1218, file: !149, line: 2321, baseType: !726, size: 64, offset: 1152)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1218, file: !149, line: 2322, baseType: !726, size: 64, offset: 1216)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1218, file: !149, line: 2324, baseType: !1264, size: 64, offset: 1280)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !149, line: 2324, flags: DIFlagFwdDecl)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !728, file: !149, line: 3395, baseType: !1267, size: 320)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !149, line: 1469, size: 320, elements: !1268)
!1268 = !{!1269, !1270, !1271}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1267, file: !149, line: 1470, baseType: !764, size: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1267, file: !149, line: 1471, baseType: !726, size: 64, offset: 192)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1267, file: !149, line: 1472, baseType: !726, size: 64, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !728, file: !149, line: 3396, baseType: !1273, size: 320)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !149, line: 1482, size: 320, elements: !1274)
!1274 = !{!1275, !1276, !1277}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1273, file: !149, line: 1483, baseType: !764, size: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1273, file: !149, line: 1484, baseType: !604, size: 32, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1273, file: !149, line: 1485, baseType: !1278, size: 64, offset: 256)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 64, elements: !647)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !728, file: !149, line: 3397, baseType: !1280, size: 384)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !149, line: 1829, size: 384, elements: !1281)
!1281 = !{!1282, !1283, !1284, !1285}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1280, file: !149, line: 1830, baseType: !764, size: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1280, file: !149, line: 1831, baseType: !846, size: 32, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1280, file: !149, line: 1832, baseType: !726, size: 64, offset: 256)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1280, file: !149, line: 1835, baseType: !1278, size: 64, offset: 320)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !728, file: !149, line: 3398, baseType: !1287, size: 704)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !149, line: 1898, size: 704, elements: !1288)
!1288 = !{!1289, !1290, !1291, !1295, !1296, !1299}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1287, file: !149, line: 1899, baseType: !764, size: 192)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1287, file: !149, line: 1902, baseType: !726, size: 64, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1287, file: !149, line: 1905, baseType: !1292, size: 64, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !519, line: 58, baseType: !1293)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !519, line: 57, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1287, file: !149, line: 1908, baseType: !5, size: 32, offset: 320)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1287, file: !149, line: 1911, baseType: !1297, size: 64, offset: 384)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !149, line: 1876, flags: DIFlagFwdDecl)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1287, file: !149, line: 1914, baseType: !1300, size: 256, offset: 448)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !149, line: 1883, size: 256, elements: !1301)
!1301 = !{!1302, !1304, !1305, !1310}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1300, file: !149, line: 1884, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1300, file: !149, line: 1885, baseType: !1303, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1300, file: !149, line: 1891, baseType: !1306, size: 64, offset: 128)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1300, file: !149, line: 1891, size: 64, elements: !1307)
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1306, file: !149, line: 1891, baseType: !1292, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1306, file: !149, line: 1891, baseType: !726, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1300, file: !149, line: 1892, baseType: !1311, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !728, file: !149, line: 3399, baseType: !1313, size: 704)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !149, line: 2008, size: 704, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1318, !1319, !1320, !1332, !1333, !1334, !1335, !1336}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1313, file: !149, line: 2009, baseType: !764, size: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1313, file: !149, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1313, file: !149, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1313, file: !149, line: 2014, baseType: !846, size: 32, offset: 224)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1313, file: !149, line: 2016, baseType: !726, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1313, file: !149, line: 2017, baseType: !1321, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !149, line: 183, baseType: !1323)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !149, line: 183, size: 128, elements: !1324)
!1324 = !{!1325}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1323, file: !149, line: 183, baseType: !1326, size: 128)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !149, line: 182, baseType: !1327)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !149, line: 182, size: 128, elements: !1328)
!1328 = !{!1329, !1330, !1331}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1327, file: !149, line: 182, baseType: !5, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1327, file: !149, line: 182, baseType: !5, size: 32, offset: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1327, file: !149, line: 182, baseType: !1278, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1313, file: !149, line: 2019, baseType: !726, size: 64, offset: 384)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1313, file: !149, line: 2020, baseType: !726, size: 64, offset: 448)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1313, file: !149, line: 2021, baseType: !726, size: 64, offset: 512)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1313, file: !149, line: 2022, baseType: !726, size: 64, offset: 576)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1313, file: !149, line: 2023, baseType: !726, size: 64, offset: 640)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !728, file: !149, line: 3400, baseType: !1338, size: 832)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !149, line: 2430, size: 832, elements: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1338, file: !149, line: 2431, baseType: !764, size: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1338, file: !149, line: 2433, baseType: !726, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1338, file: !149, line: 2434, baseType: !726, size: 64, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1338, file: !149, line: 2435, baseType: !726, size: 64, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1338, file: !149, line: 2436, baseType: !726, size: 64, offset: 384)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1338, file: !149, line: 2437, baseType: !1321, size: 64, offset: 448)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1338, file: !149, line: 2438, baseType: !726, size: 64, offset: 512)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1338, file: !149, line: 2440, baseType: !726, size: 64, offset: 576)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1338, file: !149, line: 2441, baseType: !726, size: 64, offset: 640)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1338, file: !149, line: 2443, baseType: !1350, size: 128, offset: 704)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !149, line: 182, baseType: !1351)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !149, line: 182, size: 128, elements: !1352)
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1351, file: !149, line: 182, baseType: !1326, size: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !728, file: !149, line: 3401, baseType: !1355, size: 320)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !149, line: 3327, size: 320, elements: !1356)
!1356 = !{!1357, !1358, !1365}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1355, file: !149, line: 3329, baseType: !764, size: 192)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1355, file: !149, line: 3330, baseType: !1359, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !149, line: 3320, size: 192, elements: !1361)
!1361 = !{!1362, !1363, !1364}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1360, file: !149, line: 3322, baseType: !1359, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1360, file: !149, line: 3323, baseType: !1359, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1360, file: !149, line: 3324, baseType: !726, size: 64, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1355, file: !149, line: 3331, baseType: !1359, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !728, file: !149, line: 3402, baseType: !1367, size: 256)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !149, line: 1540, size: 256, elements: !1368)
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1367, file: !149, line: 1541, baseType: !764, size: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1367, file: !149, line: 1542, baseType: !1371, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !149, line: 1538, baseType: !1373)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !149, line: 1538, size: 192, elements: !1374)
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1373, file: !149, line: 1538, baseType: !1376, size: 192)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !149, line: 1537, baseType: !1377)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !149, line: 1537, size: 192, elements: !1378)
!1378 = !{!1379, !1380, !1381}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1377, file: !149, line: 1537, baseType: !5, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1377, file: !149, line: 1537, baseType: !5, size: 32, offset: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1377, file: !149, line: 1537, baseType: !1382, size: 128, offset: 64)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1383, size: 128, elements: !647)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !149, line: 1535, baseType: !1384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !149, line: 1532, size: 128, elements: !1385)
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1384, file: !149, line: 1533, baseType: !726, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1384, file: !149, line: 1534, baseType: !726, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !728, file: !149, line: 3403, baseType: !1389, size: 512)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !149, line: 1938, size: 512, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1394, !1400, !1401, !1402}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1389, file: !149, line: 1939, baseType: !764, size: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1389, file: !149, line: 1940, baseType: !846, size: 32, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1389, file: !149, line: 1941, baseType: !148, size: 32, offset: 224)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1389, file: !149, line: 1946, baseType: !1395, size: 32, offset: 256)
!1395 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !149, line: 1942, size: 32, elements: !1396)
!1396 = !{!1397, !1398, !1399}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1395, file: !149, line: 1943, baseType: !167, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1395, file: !149, line: 1944, baseType: !174, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1395, file: !149, line: 1945, baseType: !181, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1389, file: !149, line: 1950, baseType: !1010, size: 64, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1389, file: !149, line: 1951, baseType: !1010, size: 64, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1389, file: !149, line: 1953, baseType: !1278, size: 64, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !728, file: !149, line: 3404, baseType: !1404, size: 1664)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !149, line: 3337, size: 1664, elements: !1405)
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1404, file: !149, line: 3338, baseType: !764, size: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1404, file: !149, line: 3341, baseType: !1408, size: 1472, offset: 192)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1409, line: 410, size: 1472, elements: !1410)
!1409 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1410 = !{!1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1408, file: !1409, line: 412, baseType: !604, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1408, file: !1409, line: 413, baseType: !604, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1408, file: !1409, line: 414, baseType: !604, size: 32, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1408, file: !1409, line: 415, baseType: !604, size: 32, offset: 96)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1408, file: !1409, line: 416, baseType: !604, size: 32, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1408, file: !1409, line: 417, baseType: !604, size: 32, offset: 160)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1408, file: !1409, line: 418, baseType: !603, size: 8, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1408, file: !1409, line: 419, baseType: !603, size: 8, offset: 200)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1408, file: !1409, line: 420, baseType: !1420, size: 8, offset: 208)
!1420 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1408, file: !1409, line: 421, baseType: !1420, size: 8, offset: 216)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1408, file: !1409, line: 422, baseType: !1420, size: 8, offset: 224)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1408, file: !1409, line: 423, baseType: !1420, size: 8, offset: 232)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1408, file: !1409, line: 424, baseType: !1420, size: 8, offset: 240)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1408, file: !1409, line: 425, baseType: !1420, size: 8, offset: 248)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1408, file: !1409, line: 426, baseType: !1420, size: 8, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1408, file: !1409, line: 427, baseType: !1420, size: 8, offset: 264)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1408, file: !1409, line: 428, baseType: !1420, size: 8, offset: 272)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1408, file: !1409, line: 429, baseType: !1420, size: 8, offset: 280)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1408, file: !1409, line: 430, baseType: !1420, size: 8, offset: 288)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1408, file: !1409, line: 431, baseType: !1420, size: 8, offset: 296)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1408, file: !1409, line: 432, baseType: !1420, size: 8, offset: 304)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1408, file: !1409, line: 433, baseType: !1420, size: 8, offset: 312)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1408, file: !1409, line: 434, baseType: !1420, size: 8, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1408, file: !1409, line: 435, baseType: !1420, size: 8, offset: 328)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1408, file: !1409, line: 436, baseType: !1420, size: 8, offset: 336)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1408, file: !1409, line: 437, baseType: !1420, size: 8, offset: 344)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1408, file: !1409, line: 438, baseType: !1420, size: 8, offset: 352)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1408, file: !1409, line: 439, baseType: !1420, size: 8, offset: 360)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1408, file: !1409, line: 440, baseType: !1420, size: 8, offset: 368)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1408, file: !1409, line: 441, baseType: !1420, size: 8, offset: 376)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1408, file: !1409, line: 442, baseType: !1420, size: 8, offset: 384)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1408, file: !1409, line: 443, baseType: !1420, size: 8, offset: 392)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1408, file: !1409, line: 444, baseType: !1420, size: 8, offset: 400)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1408, file: !1409, line: 445, baseType: !1420, size: 8, offset: 408)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1408, file: !1409, line: 446, baseType: !1420, size: 8, offset: 416)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1408, file: !1409, line: 447, baseType: !1420, size: 8, offset: 424)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1408, file: !1409, line: 448, baseType: !1420, size: 8, offset: 432)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1408, file: !1409, line: 449, baseType: !1420, size: 8, offset: 440)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1408, file: !1409, line: 450, baseType: !1420, size: 8, offset: 448)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1408, file: !1409, line: 451, baseType: !1420, size: 8, offset: 456)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1408, file: !1409, line: 452, baseType: !1420, size: 8, offset: 464)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1408, file: !1409, line: 453, baseType: !1420, size: 8, offset: 472)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1408, file: !1409, line: 454, baseType: !1420, size: 8, offset: 480)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1408, file: !1409, line: 455, baseType: !1420, size: 8, offset: 488)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1408, file: !1409, line: 456, baseType: !1420, size: 8, offset: 496)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1408, file: !1409, line: 457, baseType: !1420, size: 8, offset: 504)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1408, file: !1409, line: 458, baseType: !1420, size: 8, offset: 512)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1408, file: !1409, line: 459, baseType: !1420, size: 8, offset: 520)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1408, file: !1409, line: 460, baseType: !1420, size: 8, offset: 528)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1408, file: !1409, line: 461, baseType: !1420, size: 8, offset: 536)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1408, file: !1409, line: 462, baseType: !1420, size: 8, offset: 544)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1408, file: !1409, line: 463, baseType: !1420, size: 8, offset: 552)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1408, file: !1409, line: 464, baseType: !1420, size: 8, offset: 560)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1408, file: !1409, line: 465, baseType: !1420, size: 8, offset: 568)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1408, file: !1409, line: 466, baseType: !1420, size: 8, offset: 576)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1408, file: !1409, line: 467, baseType: !1420, size: 8, offset: 584)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1408, file: !1409, line: 468, baseType: !1420, size: 8, offset: 592)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1408, file: !1409, line: 469, baseType: !1420, size: 8, offset: 600)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1408, file: !1409, line: 470, baseType: !1420, size: 8, offset: 608)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1408, file: !1409, line: 471, baseType: !1420, size: 8, offset: 616)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1408, file: !1409, line: 472, baseType: !1420, size: 8, offset: 624)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1408, file: !1409, line: 473, baseType: !1420, size: 8, offset: 632)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1408, file: !1409, line: 474, baseType: !1420, size: 8, offset: 640)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1408, file: !1409, line: 475, baseType: !1420, size: 8, offset: 648)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1408, file: !1409, line: 476, baseType: !1420, size: 8, offset: 656)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1408, file: !1409, line: 477, baseType: !1420, size: 8, offset: 664)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1408, file: !1409, line: 478, baseType: !1420, size: 8, offset: 672)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1408, file: !1409, line: 479, baseType: !1420, size: 8, offset: 680)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1408, file: !1409, line: 480, baseType: !1420, size: 8, offset: 688)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1408, file: !1409, line: 481, baseType: !1420, size: 8, offset: 696)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1408, file: !1409, line: 482, baseType: !1420, size: 8, offset: 704)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1408, file: !1409, line: 483, baseType: !1420, size: 8, offset: 712)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1408, file: !1409, line: 484, baseType: !1420, size: 8, offset: 720)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1408, file: !1409, line: 485, baseType: !1420, size: 8, offset: 728)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1408, file: !1409, line: 486, baseType: !1420, size: 8, offset: 736)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1408, file: !1409, line: 487, baseType: !1420, size: 8, offset: 744)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1408, file: !1409, line: 488, baseType: !1420, size: 8, offset: 752)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1408, file: !1409, line: 489, baseType: !1420, size: 8, offset: 760)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1408, file: !1409, line: 490, baseType: !1420, size: 8, offset: 768)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1408, file: !1409, line: 491, baseType: !1420, size: 8, offset: 776)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1408, file: !1409, line: 492, baseType: !1420, size: 8, offset: 784)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1408, file: !1409, line: 493, baseType: !1420, size: 8, offset: 792)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1408, file: !1409, line: 494, baseType: !1420, size: 8, offset: 800)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1408, file: !1409, line: 495, baseType: !1420, size: 8, offset: 808)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1408, file: !1409, line: 496, baseType: !1420, size: 8, offset: 816)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1408, file: !1409, line: 497, baseType: !1420, size: 8, offset: 824)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1408, file: !1409, line: 498, baseType: !1420, size: 8, offset: 832)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1408, file: !1409, line: 499, baseType: !1420, size: 8, offset: 840)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1408, file: !1409, line: 500, baseType: !1420, size: 8, offset: 848)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1408, file: !1409, line: 501, baseType: !1420, size: 8, offset: 856)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1408, file: !1409, line: 502, baseType: !1420, size: 8, offset: 864)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1408, file: !1409, line: 503, baseType: !1420, size: 8, offset: 872)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1408, file: !1409, line: 504, baseType: !1420, size: 8, offset: 880)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1408, file: !1409, line: 505, baseType: !1420, size: 8, offset: 888)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1408, file: !1409, line: 506, baseType: !1420, size: 8, offset: 896)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1408, file: !1409, line: 507, baseType: !1420, size: 8, offset: 904)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1408, file: !1409, line: 508, baseType: !1420, size: 8, offset: 912)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1408, file: !1409, line: 509, baseType: !1420, size: 8, offset: 920)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1408, file: !1409, line: 510, baseType: !1420, size: 8, offset: 928)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1408, file: !1409, line: 511, baseType: !1420, size: 8, offset: 936)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1408, file: !1409, line: 512, baseType: !1420, size: 8, offset: 944)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1408, file: !1409, line: 513, baseType: !1420, size: 8, offset: 952)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1408, file: !1409, line: 514, baseType: !1420, size: 8, offset: 960)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1408, file: !1409, line: 515, baseType: !1420, size: 8, offset: 968)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1408, file: !1409, line: 516, baseType: !1420, size: 8, offset: 976)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1408, file: !1409, line: 517, baseType: !1420, size: 8, offset: 984)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1408, file: !1409, line: 518, baseType: !1420, size: 8, offset: 992)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1408, file: !1409, line: 519, baseType: !1420, size: 8, offset: 1000)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1408, file: !1409, line: 520, baseType: !1420, size: 8, offset: 1008)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1408, file: !1409, line: 521, baseType: !1420, size: 8, offset: 1016)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1408, file: !1409, line: 522, baseType: !1420, size: 8, offset: 1024)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1408, file: !1409, line: 523, baseType: !1420, size: 8, offset: 1032)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1408, file: !1409, line: 524, baseType: !1420, size: 8, offset: 1040)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1408, file: !1409, line: 525, baseType: !1420, size: 8, offset: 1048)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1408, file: !1409, line: 526, baseType: !1420, size: 8, offset: 1056)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1408, file: !1409, line: 527, baseType: !1420, size: 8, offset: 1064)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1408, file: !1409, line: 528, baseType: !1420, size: 8, offset: 1072)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1408, file: !1409, line: 529, baseType: !1420, size: 8, offset: 1080)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1408, file: !1409, line: 530, baseType: !1420, size: 8, offset: 1088)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1408, file: !1409, line: 531, baseType: !1420, size: 8, offset: 1096)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1408, file: !1409, line: 532, baseType: !1420, size: 8, offset: 1104)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1408, file: !1409, line: 533, baseType: !1420, size: 8, offset: 1112)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1408, file: !1409, line: 534, baseType: !1420, size: 8, offset: 1120)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1408, file: !1409, line: 535, baseType: !1420, size: 8, offset: 1128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1408, file: !1409, line: 536, baseType: !1420, size: 8, offset: 1136)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1408, file: !1409, line: 537, baseType: !1420, size: 8, offset: 1144)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1408, file: !1409, line: 538, baseType: !1420, size: 8, offset: 1152)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1408, file: !1409, line: 539, baseType: !1420, size: 8, offset: 1160)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1408, file: !1409, line: 540, baseType: !1420, size: 8, offset: 1168)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1408, file: !1409, line: 541, baseType: !1420, size: 8, offset: 1176)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1408, file: !1409, line: 542, baseType: !1420, size: 8, offset: 1184)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1408, file: !1409, line: 543, baseType: !1420, size: 8, offset: 1192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1408, file: !1409, line: 544, baseType: !1420, size: 8, offset: 1200)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1408, file: !1409, line: 545, baseType: !1420, size: 8, offset: 1208)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1408, file: !1409, line: 546, baseType: !1420, size: 8, offset: 1216)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1408, file: !1409, line: 547, baseType: !1420, size: 8, offset: 1224)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1408, file: !1409, line: 548, baseType: !1420, size: 8, offset: 1232)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1408, file: !1409, line: 549, baseType: !1420, size: 8, offset: 1240)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1408, file: !1409, line: 550, baseType: !1420, size: 8, offset: 1248)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1408, file: !1409, line: 551, baseType: !1420, size: 8, offset: 1256)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1408, file: !1409, line: 552, baseType: !1420, size: 8, offset: 1264)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1408, file: !1409, line: 553, baseType: !1420, size: 8, offset: 1272)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1408, file: !1409, line: 554, baseType: !1420, size: 8, offset: 1280)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1408, file: !1409, line: 555, baseType: !1420, size: 8, offset: 1288)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1408, file: !1409, line: 556, baseType: !1420, size: 8, offset: 1296)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1408, file: !1409, line: 557, baseType: !1420, size: 8, offset: 1304)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1408, file: !1409, line: 558, baseType: !1420, size: 8, offset: 1312)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1408, file: !1409, line: 559, baseType: !1420, size: 8, offset: 1320)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1408, file: !1409, line: 560, baseType: !1420, size: 8, offset: 1328)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1408, file: !1409, line: 561, baseType: !1420, size: 8, offset: 1336)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1408, file: !1409, line: 562, baseType: !1420, size: 8, offset: 1344)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1408, file: !1409, line: 563, baseType: !1420, size: 8, offset: 1352)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1408, file: !1409, line: 564, baseType: !1420, size: 8, offset: 1360)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1408, file: !1409, line: 565, baseType: !1420, size: 8, offset: 1368)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1408, file: !1409, line: 566, baseType: !1420, size: 8, offset: 1376)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1408, file: !1409, line: 567, baseType: !1420, size: 8, offset: 1384)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1408, file: !1409, line: 568, baseType: !1420, size: 8, offset: 1392)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1408, file: !1409, line: 569, baseType: !1420, size: 8, offset: 1400)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1408, file: !1409, line: 570, baseType: !1420, size: 8, offset: 1408)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1408, file: !1409, line: 571, baseType: !1420, size: 8, offset: 1416)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1408, file: !1409, line: 572, baseType: !1420, size: 8, offset: 1424)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1408, file: !1409, line: 573, baseType: !1420, size: 8, offset: 1432)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1408, file: !1409, line: 574, baseType: !1420, size: 8, offset: 1440)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !728, file: !149, line: 3405, baseType: !1576, size: 384)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !149, line: 3352, size: 384, elements: !1577)
!1577 = !{!1578, !1579}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1576, file: !149, line: 3353, baseType: !764, size: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1576, file: !149, line: 3356, baseType: !1580, size: 192, offset: 192)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1409, line: 578, size: 192, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1580, file: !1409, line: 580, baseType: !604, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1580, file: !1409, line: 581, baseType: !604, size: 32, offset: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1580, file: !1409, line: 582, baseType: !604, size: 32, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1580, file: !1409, line: 583, baseType: !604, size: 32, offset: 96)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1580, file: !1409, line: 584, baseType: !603, size: 8, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1580, file: !1409, line: 585, baseType: !603, size: 8, offset: 136)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1580, file: !1409, line: 586, baseType: !603, size: 8, offset: 144)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1580, file: !1409, line: 587, baseType: !603, size: 8, offset: 152)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1580, file: !1409, line: 588, baseType: !603, size: 8, offset: 160)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1580, file: !1409, line: 589, baseType: !603, size: 8, offset: 168)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1580, file: !1409, line: 590, baseType: !603, size: 8, offset: 176)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !633, file: !376, line: 178, baseType: !984, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !633, file: !376, line: 179, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !376, line: 150, baseType: !1597)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !376, line: 142, size: 320, elements: !1598)
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1604}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1597, file: !376, line: 144, baseType: !726, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1597, file: !376, line: 145, baseType: !613, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1597, file: !376, line: 146, baseType: !613, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1597, file: !376, line: 147, baseType: !1243, size: 32, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1597, file: !376, line: 148, baseType: !5, size: 32, offset: 224)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1597, file: !376, line: 149, baseType: !603, size: 8, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !633, file: !376, line: 180, baseType: !1606, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !376, line: 162, baseType: !1608)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !376, line: 159, size: 128, elements: !1609)
!1609 = !{!1610, !1611}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1608, file: !376, line: 160, baseType: !726, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1608, file: !376, line: 161, baseType: !612, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !633, file: !376, line: 181, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !376, line: 181, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !628, file: !376, line: 317, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 64, elements: !647)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !628, file: !376, line: 318, baseType: !1618, size: 320)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !376, line: 188, size: 320, elements: !1619)
!1619 = !{!1620, !1622, !1677}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1618, file: !376, line: 190, baseType: !1621, size: 192)
!1621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 192, elements: !797)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1618, file: !376, line: 193, baseType: !1623, size: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !376, line: 206, size: 320, elements: !1625)
!1625 = !{!1626, !1662, !1663, !1664, !1676}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1624, file: !376, line: 208, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !519, line: 62, baseType: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1630, line: 538, size: 256, elements: !1631)
!1630 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1631 = !{!1632, !1636, !1642, !1653}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1629, file: !1630, line: 539, baseType: !1633, size: 32)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1630, line: 482, size: 32, elements: !1634)
!1634 = !{!1635}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1633, file: !1630, line: 484, baseType: !5, size: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1629, file: !1630, line: 540, baseType: !1637, size: 192)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1630, line: 488, size: 192, elements: !1638)
!1638 = !{!1639, !1640, !1641}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1637, file: !1630, line: 489, baseType: !1633, size: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1637, file: !1630, line: 492, baseType: !609, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1637, file: !1630, line: 496, baseType: !726, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1629, file: !1630, line: 541, baseType: !1643, size: 256)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1630, line: 504, size: 256, elements: !1644)
!1644 = !{!1645, !1646, !1651, !1652}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1643, file: !1630, line: 505, baseType: !1633, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1643, file: !1630, line: 509, baseType: !1647, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1630, line: 501, baseType: !1648)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{null, !1101}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1643, file: !1630, line: 510, baseType: !1101, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1643, file: !1630, line: 513, baseType: !1627, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1629, file: !1630, line: 542, baseType: !1654, size: 128)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1630, line: 530, size: 128, elements: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1654, file: !1630, line: 531, baseType: !1633, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1654, file: !1630, line: 534, baseType: !1658, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1630, line: 525, baseType: !1659)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!603, !726, !609, !611, !611}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1624, file: !376, line: 211, baseType: !5, size: 32, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1624, file: !376, line: 214, baseType: !612, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1624, file: !376, line: 224, baseType: !1665, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !376, line: 202, baseType: !1667)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !376, line: 202, size: 128, elements: !1668)
!1668 = !{!1669}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1667, file: !376, line: 202, baseType: !1670, size: 128)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !376, line: 200, baseType: !1671)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !376, line: 200, size: 128, elements: !1672)
!1672 = !{!1673, !1674, !1675}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1671, file: !376, line: 200, baseType: !5, size: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1671, file: !376, line: 200, baseType: !5, size: 32, offset: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1671, file: !376, line: 200, baseType: !646, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1624, file: !376, line: 234, baseType: !1665, size: 64, offset: 256)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1618, file: !376, line: 197, baseType: !612, size: 64, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !628, file: !376, line: 319, baseType: !786, size: 256)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !628, file: !376, line: 320, baseType: !805, size: 192)
!1680 = !{i32 2, !"Dwarf Version", i32 4}
!1681 = !{i32 2, !"Debug Info Version", i32 3}
!1682 = !{i32 1, !"wchar_size", i32 4}
!1683 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1684 = distinct !DISubprogram(name: "vprintf", scope: !1685, file: !1685, line: 39, type: !1686, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1696)
!1685 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!604, !1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !609)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1691)
!1691 = !{!1692, !1693, !1694, !1695}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1690, file: !1, baseType: !5, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1690, file: !1, baseType: !5, size: 32, offset: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1690, file: !1, baseType: !608, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1690, file: !1, baseType: !608, size: 64, offset: 128)
!1696 = !{!1697, !1698}
!1697 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1684, file: !1685, line: 39, type: !1688)
!1698 = !DILocalVariable(name: "__arg", arg: 2, scope: !1684, file: !1685, line: 39, type: !1689)
!1699 = !DILocation(line: 0, scope: !1684)
!1700 = !DILocation(line: 41, column: 20, scope: !1684)
!1701 = !DILocation(line: 41, column: 10, scope: !1684)
!1702 = !DILocation(line: 41, column: 3, scope: !1684)
!1703 = distinct !DISubprogram(name: "getchar", scope: !1685, file: !1685, line: 47, type: !1704, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1706)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!604}
!1706 = !{}
!1707 = !DILocation(line: 49, column: 16, scope: !1703)
!1708 = !DILocation(line: 49, column: 10, scope: !1703)
!1709 = !DILocation(line: 49, column: 3, scope: !1703)
!1710 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1685, file: !1685, line: 56, type: !1711, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1764)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!604, !1713}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1715, line: 7, baseType: !1716)
!1715 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1717, line: 49, size: 1728, elements: !1718)
!1717 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1734, !1736, !1737, !1738, !1741, !1743, !1744, !1745, !1748, !1750, !1753, !1756, !1757, !1758, !1759, !1760}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1716, file: !1717, line: 51, baseType: !604, size: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1716, file: !1717, line: 54, baseType: !606, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1716, file: !1717, line: 55, baseType: !606, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1716, file: !1717, line: 56, baseType: !606, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1716, file: !1717, line: 57, baseType: !606, size: 64, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1716, file: !1717, line: 58, baseType: !606, size: 64, offset: 320)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1716, file: !1717, line: 59, baseType: !606, size: 64, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1716, file: !1717, line: 60, baseType: !606, size: 64, offset: 448)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1716, file: !1717, line: 61, baseType: !606, size: 64, offset: 512)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1716, file: !1717, line: 64, baseType: !606, size: 64, offset: 576)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1716, file: !1717, line: 65, baseType: !606, size: 64, offset: 640)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1716, file: !1717, line: 66, baseType: !606, size: 64, offset: 704)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1716, file: !1717, line: 68, baseType: !1732, size: 64, offset: 768)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1717, line: 36, flags: DIFlagFwdDecl)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1716, file: !1717, line: 70, baseType: !1735, size: 64, offset: 832)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1716, file: !1717, line: 72, baseType: !604, size: 32, offset: 896)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1716, file: !1717, line: 73, baseType: !604, size: 32, offset: 928)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1716, file: !1717, line: 74, baseType: !1739, size: 64, offset: 960)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1740, line: 152, baseType: !612)
!1740 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1716, file: !1717, line: 77, baseType: !1742, size: 16, offset: 1024)
!1742 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1716, file: !1717, line: 78, baseType: !1420, size: 8, offset: 1040)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1716, file: !1717, line: 79, baseType: !821, size: 8, offset: 1048)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1716, file: !1717, line: 81, baseType: !1746, size: 64, offset: 1088)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1717, line: 43, baseType: null)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1716, file: !1717, line: 89, baseType: !1749, size: 64, offset: 1152)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1740, line: 153, baseType: !612)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1716, file: !1717, line: 91, baseType: !1751, size: 64, offset: 1216)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1717, line: 37, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1716, file: !1717, line: 92, baseType: !1754, size: 64, offset: 1280)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1717, line: 38, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1716, file: !1717, line: 93, baseType: !1735, size: 64, offset: 1344)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1716, file: !1717, line: 94, baseType: !608, size: 64, offset: 1408)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1716, file: !1717, line: 95, baseType: !1116, size: 64, offset: 1472)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1716, file: !1717, line: 96, baseType: !604, size: 32, offset: 1536)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1716, file: !1717, line: 98, baseType: !1761, size: 160, offset: 1568)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 160, elements: !1762)
!1762 = !{!1763}
!1763 = !DISubrange(count: 20)
!1764 = !{!1765}
!1765 = !DILocalVariable(name: "__fp", arg: 1, scope: !1710, file: !1685, line: 56, type: !1713)
!1766 = !DILocation(line: 0, scope: !1710)
!1767 = !DILocation(line: 58, column: 10, scope: !1710)
!1768 = !DILocation(line: 58, column: 3, scope: !1710)
!1769 = distinct !DISubprogram(name: "getc_unlocked", scope: !1685, file: !1685, line: 66, type: !1711, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1770)
!1770 = !{!1771}
!1771 = !DILocalVariable(name: "__fp", arg: 1, scope: !1769, file: !1685, line: 66, type: !1713)
!1772 = !DILocation(line: 0, scope: !1769)
!1773 = !DILocation(line: 68, column: 10, scope: !1769)
!1774 = !DILocation(line: 68, column: 3, scope: !1769)
!1775 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1685, file: !1685, line: 73, type: !1704, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1706)
!1776 = !DILocation(line: 75, column: 10, scope: !1775)
!1777 = !DILocation(line: 75, column: 3, scope: !1775)
!1778 = distinct !DISubprogram(name: "putchar", scope: !1685, file: !1685, line: 82, type: !1779, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1781)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!604, !604}
!1781 = !{!1782}
!1782 = !DILocalVariable(name: "__c", arg: 1, scope: !1778, file: !1685, line: 82, type: !604)
!1783 = !DILocation(line: 0, scope: !1778)
!1784 = !DILocation(line: 84, column: 21, scope: !1778)
!1785 = !DILocation(line: 84, column: 10, scope: !1778)
!1786 = !DILocation(line: 84, column: 3, scope: !1778)
!1787 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1685, file: !1685, line: 91, type: !1788, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1790)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!604, !604, !1713}
!1790 = !{!1791, !1792}
!1791 = !DILocalVariable(name: "__c", arg: 1, scope: !1787, file: !1685, line: 91, type: !604)
!1792 = !DILocalVariable(name: "__stream", arg: 2, scope: !1787, file: !1685, line: 91, type: !1713)
!1793 = !DILocation(line: 0, scope: !1787)
!1794 = !DILocation(line: 93, column: 10, scope: !1787)
!1795 = !DILocation(line: 93, column: 3, scope: !1787)
!1796 = distinct !DISubprogram(name: "putc_unlocked", scope: !1685, file: !1685, line: 101, type: !1788, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1797)
!1797 = !{!1798, !1799}
!1798 = !DILocalVariable(name: "__c", arg: 1, scope: !1796, file: !1685, line: 101, type: !604)
!1799 = !DILocalVariable(name: "__stream", arg: 2, scope: !1796, file: !1685, line: 101, type: !1713)
!1800 = !DILocation(line: 0, scope: !1796)
!1801 = !DILocation(line: 103, column: 10, scope: !1796)
!1802 = !DILocation(line: 103, column: 3, scope: !1796)
!1803 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1685, file: !1685, line: 108, type: !1779, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1804)
!1804 = !{!1805}
!1805 = !DILocalVariable(name: "__c", arg: 1, scope: !1803, file: !1685, line: 108, type: !604)
!1806 = !DILocation(line: 0, scope: !1803)
!1807 = !DILocation(line: 110, column: 10, scope: !1803)
!1808 = !DILocation(line: 110, column: 3, scope: !1803)
!1809 = distinct !DISubprogram(name: "getline", scope: !1685, file: !1685, line: 118, type: !1810, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1814)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!1812, !605, !1813, !1713}
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1740, line: 193, baseType: !612)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1814 = !{!1815, !1816, !1817}
!1815 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1809, file: !1685, line: 118, type: !605)
!1816 = !DILocalVariable(name: "__n", arg: 2, scope: !1809, file: !1685, line: 118, type: !1813)
!1817 = !DILocalVariable(name: "__stream", arg: 3, scope: !1809, file: !1685, line: 118, type: !1713)
!1818 = !DILocation(line: 0, scope: !1809)
!1819 = !DILocation(line: 120, column: 10, scope: !1809)
!1820 = !DILocation(line: 120, column: 3, scope: !1809)
!1821 = distinct !DISubprogram(name: "feof_unlocked", scope: !1685, file: !1685, line: 128, type: !1711, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1822)
!1822 = !{!1823}
!1823 = !DILocalVariable(name: "__stream", arg: 1, scope: !1821, file: !1685, line: 128, type: !1713)
!1824 = !DILocation(line: 0, scope: !1821)
!1825 = !DILocation(line: 130, column: 10, scope: !1821)
!1826 = !DILocation(line: 130, column: 3, scope: !1821)
!1827 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1685, file: !1685, line: 135, type: !1711, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1828)
!1828 = !{!1829}
!1829 = !DILocalVariable(name: "__stream", arg: 1, scope: !1827, file: !1685, line: 135, type: !1713)
!1830 = !DILocation(line: 0, scope: !1827)
!1831 = !DILocation(line: 137, column: 10, scope: !1827)
!1832 = !DILocation(line: 137, column: 3, scope: !1827)
!1833 = distinct !DISubprogram(name: "tolower", scope: !1834, file: !1834, line: 207, type: !1779, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1835)
!1834 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1835 = !{!1836}
!1836 = !DILocalVariable(name: "__c", arg: 1, scope: !1833, file: !1834, line: 207, type: !604)
!1837 = !DILocation(line: 0, scope: !1833)
!1838 = !DILocation(line: 209, column: 22, scope: !1833)
!1839 = !DILocation(line: 209, column: 39, scope: !1833)
!1840 = !DILocation(line: 209, column: 38, scope: !1833)
!1841 = !DILocation(line: 209, column: 37, scope: !1833)
!1842 = !DILocation(line: 209, column: 10, scope: !1833)
!1843 = !DILocation(line: 209, column: 3, scope: !1833)
!1844 = distinct !DISubprogram(name: "toupper", scope: !1834, file: !1834, line: 213, type: !1779, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1845)
!1845 = !{!1846}
!1846 = !DILocalVariable(name: "__c", arg: 1, scope: !1844, file: !1834, line: 213, type: !604)
!1847 = !DILocation(line: 0, scope: !1844)
!1848 = !DILocation(line: 215, column: 22, scope: !1844)
!1849 = !DILocation(line: 215, column: 39, scope: !1844)
!1850 = !DILocation(line: 215, column: 38, scope: !1844)
!1851 = !DILocation(line: 215, column: 37, scope: !1844)
!1852 = !DILocation(line: 215, column: 10, scope: !1844)
!1853 = !DILocation(line: 215, column: 3, scope: !1844)
!1854 = distinct !DISubprogram(name: "atoi", scope: !1855, file: !1855, line: 361, type: !1856, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1858)
!1855 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!604, !609}
!1858 = !{!1859}
!1859 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1854, file: !1855, line: 361, type: !609)
!1860 = !DILocation(line: 0, scope: !1854)
!1861 = !DILocation(line: 363, column: 16, scope: !1854)
!1862 = !DILocation(line: 363, column: 10, scope: !1854)
!1863 = !DILocation(line: 363, column: 3, scope: !1854)
!1864 = distinct !DISubprogram(name: "atol", scope: !1855, file: !1855, line: 366, type: !1865, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1867)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!612, !609}
!1867 = !{!1868}
!1868 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1864, file: !1855, line: 366, type: !609)
!1869 = !DILocation(line: 0, scope: !1864)
!1870 = !DILocation(line: 368, column: 10, scope: !1864)
!1871 = !DILocation(line: 368, column: 3, scope: !1864)
!1872 = distinct !DISubprogram(name: "atoll", scope: !1855, file: !1855, line: 373, type: !1873, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1876)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!1875, !609}
!1875 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1876 = !{!1877}
!1877 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1872, file: !1855, line: 373, type: !609)
!1878 = !DILocation(line: 0, scope: !1872)
!1879 = !DILocation(line: 375, column: 10, scope: !1872)
!1880 = !DILocation(line: 375, column: 3, scope: !1872)
!1881 = distinct !DISubprogram(name: "bsearch", scope: !1882, file: !1882, line: 20, type: !1883, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1886)
!1882 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!608, !1101, !1101, !1116, !1116, !1885}
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1855, line: 808, baseType: !1105)
!1886 = !{!1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896}
!1887 = !DILocalVariable(name: "__key", arg: 1, scope: !1881, file: !1882, line: 20, type: !1101)
!1888 = !DILocalVariable(name: "__base", arg: 2, scope: !1881, file: !1882, line: 20, type: !1101)
!1889 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1881, file: !1882, line: 20, type: !1116)
!1890 = !DILocalVariable(name: "__size", arg: 4, scope: !1881, file: !1882, line: 20, type: !1116)
!1891 = !DILocalVariable(name: "__compar", arg: 5, scope: !1881, file: !1882, line: 21, type: !1885)
!1892 = !DILocalVariable(name: "__l", scope: !1881, file: !1882, line: 23, type: !1116)
!1893 = !DILocalVariable(name: "__u", scope: !1881, file: !1882, line: 23, type: !1116)
!1894 = !DILocalVariable(name: "__idx", scope: !1881, file: !1882, line: 23, type: !1116)
!1895 = !DILocalVariable(name: "__p", scope: !1881, file: !1882, line: 24, type: !1101)
!1896 = !DILocalVariable(name: "__comparison", scope: !1881, file: !1882, line: 25, type: !604)
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
!1917 = distinct !DISubprogram(name: "atof", scope: !1918, file: !1918, line: 25, type: !1919, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1922)
!1918 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!1921, !609}
!1921 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1922 = !{!1923}
!1923 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1917, file: !1918, line: 25, type: !609)
!1924 = !DILocation(line: 0, scope: !1917)
!1925 = !DILocation(line: 27, column: 10, scope: !1917)
!1926 = !DILocation(line: 27, column: 3, scope: !1917)
!1927 = distinct !DISubprogram(name: "strtoimax", scope: !1928, file: !1928, line: 324, type: !1929, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1935)
!1928 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!1931, !1688, !1934, !604}
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1932, line: 101, baseType: !1933)
!1932 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1740, line: 72, baseType: !612)
!1934 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !605)
!1935 = !{!1936, !1937, !1938}
!1936 = !DILocalVariable(name: "nptr", arg: 1, scope: !1927, file: !1928, line: 324, type: !1688)
!1937 = !DILocalVariable(name: "endptr", arg: 2, scope: !1927, file: !1928, line: 324, type: !1934)
!1938 = !DILocalVariable(name: "base", arg: 3, scope: !1927, file: !1928, line: 324, type: !604)
!1939 = !DILocation(line: 0, scope: !1927)
!1940 = !DILocation(line: 327, column: 10, scope: !1927)
!1941 = !DILocation(line: 327, column: 3, scope: !1927)
!1942 = distinct !DISubprogram(name: "strtoumax", scope: !1928, file: !1928, line: 336, type: !1943, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1947)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1945, !1688, !1934, !604}
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1932, line: 102, baseType: !1946)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1740, line: 73, baseType: !611)
!1947 = !{!1948, !1949, !1950}
!1948 = !DILocalVariable(name: "nptr", arg: 1, scope: !1942, file: !1928, line: 336, type: !1688)
!1949 = !DILocalVariable(name: "endptr", arg: 2, scope: !1942, file: !1928, line: 336, type: !1934)
!1950 = !DILocalVariable(name: "base", arg: 3, scope: !1942, file: !1928, line: 336, type: !604)
!1951 = !DILocation(line: 0, scope: !1942)
!1952 = !DILocation(line: 339, column: 10, scope: !1942)
!1953 = !DILocation(line: 339, column: 3, scope: !1942)
!1954 = distinct !DISubprogram(name: "wcstoimax", scope: !1928, file: !1928, line: 348, type: !1955, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1964)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!1931, !1957, !1961, !604}
!1957 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1958)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1960)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1928, line: 34, baseType: !604)
!1961 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1962)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1964 = !{!1965, !1966, !1967}
!1965 = !DILocalVariable(name: "nptr", arg: 1, scope: !1954, file: !1928, line: 348, type: !1957)
!1966 = !DILocalVariable(name: "endptr", arg: 2, scope: !1954, file: !1928, line: 348, type: !1961)
!1967 = !DILocalVariable(name: "base", arg: 3, scope: !1954, file: !1928, line: 348, type: !604)
!1968 = !DILocation(line: 0, scope: !1954)
!1969 = !DILocation(line: 351, column: 10, scope: !1954)
!1970 = !DILocation(line: 351, column: 3, scope: !1954)
!1971 = distinct !DISubprogram(name: "wcstoumax", scope: !1928, file: !1928, line: 362, type: !1972, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!1945, !1957, !1961, !604}
!1974 = !{!1975, !1976, !1977}
!1975 = !DILocalVariable(name: "nptr", arg: 1, scope: !1971, file: !1928, line: 362, type: !1957)
!1976 = !DILocalVariable(name: "endptr", arg: 2, scope: !1971, file: !1928, line: 362, type: !1961)
!1977 = !DILocalVariable(name: "base", arg: 3, scope: !1971, file: !1928, line: 362, type: !604)
!1978 = !DILocation(line: 0, scope: !1971)
!1979 = !DILocation(line: 365, column: 10, scope: !1971)
!1980 = !DILocation(line: 365, column: 3, scope: !1971)
!1981 = distinct !DISubprogram(name: "stat", scope: !1982, file: !1982, line: 453, type: !1983, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2020)
!1982 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!604, !609, !1985}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1987, line: 46, size: 1152, elements: !1988)
!1987 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1988 = !{!1989, !1991, !1993, !1995, !1997, !1999, !2001, !2002, !2003, !2004, !2006, !2008, !2016, !2017, !2018}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1986, file: !1987, line: 48, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1740, line: 145, baseType: !611)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1986, file: !1987, line: 53, baseType: !1992, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1740, line: 148, baseType: !611)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1986, file: !1987, line: 61, baseType: !1994, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1740, line: 151, baseType: !611)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1986, file: !1987, line: 62, baseType: !1996, size: 32, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1740, line: 150, baseType: !5)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1986, file: !1987, line: 64, baseType: !1998, size: 32, offset: 224)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1740, line: 146, baseType: !5)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1986, file: !1987, line: 65, baseType: !2000, size: 32, offset: 256)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1740, line: 147, baseType: !5)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1986, file: !1987, line: 67, baseType: !604, size: 32, offset: 288)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1986, file: !1987, line: 69, baseType: !1990, size: 64, offset: 320)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1986, file: !1987, line: 74, baseType: !1739, size: 64, offset: 384)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1986, file: !1987, line: 78, baseType: !2005, size: 64, offset: 448)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1740, line: 174, baseType: !612)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1986, file: !1987, line: 80, baseType: !2007, size: 64, offset: 512)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1740, line: 179, baseType: !612)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1986, file: !1987, line: 91, baseType: !2009, size: 128, offset: 576)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2010, line: 10, size: 128, elements: !2011)
!2010 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2011 = !{!2012, !2014}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2009, file: !2010, line: 12, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1740, line: 160, baseType: !612)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2009, file: !2010, line: 16, baseType: !2015, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1740, line: 196, baseType: !612)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1986, file: !1987, line: 92, baseType: !2009, size: 128, offset: 704)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1986, file: !1987, line: 93, baseType: !2009, size: 128, offset: 832)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1986, file: !1987, line: 106, baseType: !2019, size: 192, offset: 960)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2015, size: 192, elements: !797)
!2020 = !{!2021, !2022}
!2021 = !DILocalVariable(name: "__path", arg: 1, scope: !1981, file: !1982, line: 453, type: !609)
!2022 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1981, file: !1982, line: 453, type: !1985)
!2023 = !DILocation(line: 0, scope: !1981)
!2024 = !DILocation(line: 455, column: 10, scope: !1981)
!2025 = !DILocation(line: 455, column: 3, scope: !1981)
!2026 = distinct !DISubprogram(name: "lstat", scope: !1982, file: !1982, line: 460, type: !1983, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2027)
!2027 = !{!2028, !2029}
!2028 = !DILocalVariable(name: "__path", arg: 1, scope: !2026, file: !1982, line: 460, type: !609)
!2029 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2026, file: !1982, line: 460, type: !1985)
!2030 = !DILocation(line: 0, scope: !2026)
!2031 = !DILocation(line: 462, column: 10, scope: !2026)
!2032 = !DILocation(line: 462, column: 3, scope: !2026)
!2033 = distinct !DISubprogram(name: "fstat", scope: !1982, file: !1982, line: 467, type: !2034, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2036)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!604, !604, !1985}
!2036 = !{!2037, !2038}
!2037 = !DILocalVariable(name: "__fd", arg: 1, scope: !2033, file: !1982, line: 467, type: !604)
!2038 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2033, file: !1982, line: 467, type: !1985)
!2039 = !DILocation(line: 0, scope: !2033)
!2040 = !DILocation(line: 469, column: 10, scope: !2033)
!2041 = !DILocation(line: 469, column: 3, scope: !2033)
!2042 = distinct !DISubprogram(name: "fstatat", scope: !1982, file: !1982, line: 474, type: !2043, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2045)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!604, !604, !609, !1985, !604}
!2045 = !{!2046, !2047, !2048, !2049}
!2046 = !DILocalVariable(name: "__fd", arg: 1, scope: !2042, file: !1982, line: 474, type: !604)
!2047 = !DILocalVariable(name: "__filename", arg: 2, scope: !2042, file: !1982, line: 474, type: !609)
!2048 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2042, file: !1982, line: 474, type: !1985)
!2049 = !DILocalVariable(name: "__flag", arg: 4, scope: !2042, file: !1982, line: 474, type: !604)
!2050 = !DILocation(line: 0, scope: !2042)
!2051 = !DILocation(line: 477, column: 10, scope: !2042)
!2052 = !DILocation(line: 477, column: 3, scope: !2042)
!2053 = distinct !DISubprogram(name: "mknod", scope: !1982, file: !1982, line: 483, type: !2054, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2056)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!604, !609, !1996, !1990}
!2056 = !{!2057, !2058, !2059}
!2057 = !DILocalVariable(name: "__path", arg: 1, scope: !2053, file: !1982, line: 483, type: !609)
!2058 = !DILocalVariable(name: "__mode", arg: 2, scope: !2053, file: !1982, line: 483, type: !1996)
!2059 = !DILocalVariable(name: "__dev", arg: 3, scope: !2053, file: !1982, line: 483, type: !1990)
!2060 = !DILocation(line: 0, scope: !2053)
!2061 = !DILocation(line: 485, column: 10, scope: !2053)
!2062 = !DILocation(line: 485, column: 3, scope: !2053)
!2063 = distinct !DISubprogram(name: "mknodat", scope: !1982, file: !1982, line: 491, type: !2064, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!604, !604, !609, !1996, !1990}
!2066 = !{!2067, !2068, !2069, !2070}
!2067 = !DILocalVariable(name: "__fd", arg: 1, scope: !2063, file: !1982, line: 491, type: !604)
!2068 = !DILocalVariable(name: "__path", arg: 2, scope: !2063, file: !1982, line: 491, type: !609)
!2069 = !DILocalVariable(name: "__mode", arg: 3, scope: !2063, file: !1982, line: 491, type: !1996)
!2070 = !DILocalVariable(name: "__dev", arg: 4, scope: !2063, file: !1982, line: 491, type: !1990)
!2071 = !DILocation(line: 0, scope: !2063)
!2072 = !DILocation(line: 494, column: 10, scope: !2063)
!2073 = !DILocation(line: 494, column: 3, scope: !2063)
!2074 = distinct !DISubprogram(name: "stat64", scope: !1982, file: !1982, line: 502, type: !2075, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2097)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!604, !609, !2077}
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1987, line: 119, size: 1152, elements: !2079)
!2079 = !{!2080, !2081, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2093, !2094, !2095, !2096}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2078, file: !1987, line: 121, baseType: !1990, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2078, file: !1987, line: 123, baseType: !2082, size: 64, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1740, line: 149, baseType: !611)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2078, file: !1987, line: 124, baseType: !1994, size: 64, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2078, file: !1987, line: 125, baseType: !1996, size: 32, offset: 192)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2078, file: !1987, line: 132, baseType: !1998, size: 32, offset: 224)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2078, file: !1987, line: 133, baseType: !2000, size: 32, offset: 256)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2078, file: !1987, line: 135, baseType: !604, size: 32, offset: 288)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2078, file: !1987, line: 136, baseType: !1990, size: 64, offset: 320)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2078, file: !1987, line: 137, baseType: !1739, size: 64, offset: 384)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2078, file: !1987, line: 143, baseType: !2005, size: 64, offset: 448)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2078, file: !1987, line: 144, baseType: !2092, size: 64, offset: 512)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1740, line: 180, baseType: !612)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2078, file: !1987, line: 152, baseType: !2009, size: 128, offset: 576)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2078, file: !1987, line: 153, baseType: !2009, size: 128, offset: 704)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2078, file: !1987, line: 154, baseType: !2009, size: 128, offset: 832)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2078, file: !1987, line: 164, baseType: !2019, size: 192, offset: 960)
!2097 = !{!2098, !2099}
!2098 = !DILocalVariable(name: "__path", arg: 1, scope: !2074, file: !1982, line: 502, type: !609)
!2099 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2074, file: !1982, line: 502, type: !2077)
!2100 = !DILocation(line: 0, scope: !2074)
!2101 = !DILocation(line: 504, column: 10, scope: !2074)
!2102 = !DILocation(line: 504, column: 3, scope: !2074)
!2103 = distinct !DISubprogram(name: "lstat64", scope: !1982, file: !1982, line: 509, type: !2075, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2104)
!2104 = !{!2105, !2106}
!2105 = !DILocalVariable(name: "__path", arg: 1, scope: !2103, file: !1982, line: 509, type: !609)
!2106 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2103, file: !1982, line: 509, type: !2077)
!2107 = !DILocation(line: 0, scope: !2103)
!2108 = !DILocation(line: 511, column: 10, scope: !2103)
!2109 = !DILocation(line: 511, column: 3, scope: !2103)
!2110 = distinct !DISubprogram(name: "fstat64", scope: !1982, file: !1982, line: 516, type: !2111, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2113)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!604, !604, !2077}
!2113 = !{!2114, !2115}
!2114 = !DILocalVariable(name: "__fd", arg: 1, scope: !2110, file: !1982, line: 516, type: !604)
!2115 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2110, file: !1982, line: 516, type: !2077)
!2116 = !DILocation(line: 0, scope: !2110)
!2117 = !DILocation(line: 518, column: 10, scope: !2110)
!2118 = !DILocation(line: 518, column: 3, scope: !2110)
!2119 = distinct !DISubprogram(name: "fstatat64", scope: !1982, file: !1982, line: 523, type: !2120, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2122)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!604, !604, !609, !2077, !604}
!2122 = !{!2123, !2124, !2125, !2126}
!2123 = !DILocalVariable(name: "__fd", arg: 1, scope: !2119, file: !1982, line: 523, type: !604)
!2124 = !DILocalVariable(name: "__filename", arg: 2, scope: !2119, file: !1982, line: 523, type: !609)
!2125 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2119, file: !1982, line: 523, type: !2077)
!2126 = !DILocalVariable(name: "__flag", arg: 4, scope: !2119, file: !1982, line: 523, type: !604)
!2127 = !DILocation(line: 0, scope: !2119)
!2128 = !DILocation(line: 526, column: 10, scope: !2119)
!2129 = !DILocation(line: 526, column: 3, scope: !2119)
!2130 = distinct !DISubprogram(name: "any_fp_register_operand", scope: !1, file: !1, line: 25, type: !2131, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!604, !613, !3}
!2133 = !{!2134, !2135}
!2134 = !DILocalVariable(name: "op", arg: 1, scope: !2130, file: !1, line: 25, type: !613)
!2135 = !DILocalVariable(name: "mode", arg: 2, scope: !2130, file: !1, line: 25, type: !3)
!2136 = !DILocation(line: 0, scope: !2130)
!2137 = !DILocation(line: 27, column: 12, scope: !2130)
!2138 = !DILocation(line: 27, column: 26, scope: !2130)
!2139 = !DILocation(line: 27, column: 34, scope: !2130)
!2140 = !DILocation(line: 29, column: 2, scope: !2130)
!2141 = !DILocation(line: 29, column: 33, scope: !2130)
!2142 = !DILocation(line: 30, column: 7, scope: !2130)
!2143 = !DILocation(line: 30, column: 19, scope: !2130)
!2144 = !DILocation(line: 30, column: 22, scope: !2130)
!2145 = !DILocation(line: 30, column: 36, scope: !2130)
!2146 = !DILocation(line: 27, column: 3, scope: !2130)
!2147 = distinct !DISubprogram(name: "rhs_regno", scope: !376, file: !376, line: 1051, type: !2148, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2153)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!5, !2150}
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !519, line: 51, baseType: !2151)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!2153 = !{!2154}
!2154 = !DILocalVariable(name: "x", arg: 1, scope: !2147, file: !376, line: 1051, type: !2150)
!2155 = !DILocation(line: 0, scope: !2147)
!2156 = !DILocation(line: 1053, column: 10, scope: !2147)
!2157 = !DILocation(line: 1053, column: 3, scope: !2147)
!2158 = distinct !DISubprogram(name: "fp_register_operand", scope: !1, file: !1, line: 34, type: !2131, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2159)
!2159 = !{!2160, !2161}
!2160 = !DILocalVariable(name: "op", arg: 1, scope: !2158, file: !1, line: 34, type: !613)
!2161 = !DILocalVariable(name: "mode", arg: 2, scope: !2158, file: !1, line: 34, type: !3)
!2162 = !DILocation(line: 0, scope: !2158)
!2163 = !DILocation(line: 36, column: 12, scope: !2158)
!2164 = !DILocation(line: 36, column: 26, scope: !2158)
!2165 = !DILocation(line: 36, column: 34, scope: !2158)
!2166 = !DILocation(line: 38, column: 2, scope: !2158)
!2167 = !DILocation(line: 38, column: 29, scope: !2158)
!2168 = !DILocation(line: 39, column: 7, scope: !2158)
!2169 = !DILocation(line: 39, column: 19, scope: !2158)
!2170 = !DILocation(line: 39, column: 22, scope: !2158)
!2171 = !DILocation(line: 39, column: 36, scope: !2158)
!2172 = !DILocation(line: 36, column: 3, scope: !2158)
!2173 = distinct !DISubprogram(name: "register_and_not_any_fp_reg_operand", scope: !1, file: !1, line: 43, type: !2131, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2174)
!2174 = !{!2175, !2176}
!2175 = !DILocalVariable(name: "op", arg: 1, scope: !2173, file: !1, line: 43, type: !613)
!2176 = !DILocalVariable(name: "mode", arg: 2, scope: !2173, file: !1, line: 43, type: !3)
!2177 = !DILocation(line: 0, scope: !2173)
!2178 = !DILocation(line: 45, column: 12, scope: !2173)
!2179 = !DILocation(line: 45, column: 26, scope: !2173)
!2180 = !DILocation(line: 45, column: 34, scope: !2173)
!2181 = !DILocation(line: 47, column: 2, scope: !2173)
!2182 = !DILocation(line: 47, column: 34, scope: !2173)
!2183 = !DILocation(line: 48, column: 7, scope: !2173)
!2184 = !DILocation(line: 48, column: 19, scope: !2173)
!2185 = !DILocation(line: 48, column: 22, scope: !2173)
!2186 = !DILocation(line: 48, column: 36, scope: !2173)
!2187 = !DILocation(line: 45, column: 3, scope: !2173)
!2188 = distinct !DISubprogram(name: "register_and_not_fp_reg_operand", scope: !1, file: !1, line: 52, type: !2131, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2189)
!2189 = !{!2190, !2191}
!2190 = !DILocalVariable(name: "op", arg: 1, scope: !2188, file: !1, line: 52, type: !613)
!2191 = !DILocalVariable(name: "mode", arg: 2, scope: !2188, file: !1, line: 52, type: !3)
!2192 = !DILocation(line: 0, scope: !2188)
!2193 = !DILocation(line: 54, column: 12, scope: !2188)
!2194 = !DILocation(line: 54, column: 26, scope: !2188)
!2195 = !DILocation(line: 54, column: 34, scope: !2188)
!2196 = !DILocation(line: 56, column: 2, scope: !2188)
!2197 = !DILocation(line: 56, column: 30, scope: !2188)
!2198 = !DILocation(line: 57, column: 7, scope: !2188)
!2199 = !DILocation(line: 57, column: 19, scope: !2188)
!2200 = !DILocation(line: 57, column: 22, scope: !2188)
!2201 = !DILocation(line: 57, column: 36, scope: !2188)
!2202 = !DILocation(line: 54, column: 3, scope: !2188)
!2203 = distinct !DISubprogram(name: "mmx_reg_operand", scope: !1, file: !1, line: 61, type: !2131, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2204)
!2204 = !{!2205, !2206}
!2205 = !DILocalVariable(name: "op", arg: 1, scope: !2203, file: !1, line: 61, type: !613)
!2206 = !DILocalVariable(name: "mode", arg: 2, scope: !2203, file: !1, line: 61, type: !3)
!2207 = !DILocation(line: 0, scope: !2203)
!2208 = !DILocation(line: 63, column: 12, scope: !2203)
!2209 = !DILocation(line: 63, column: 26, scope: !2203)
!2210 = !DILocation(line: 63, column: 34, scope: !2203)
!2211 = !DILocation(line: 65, column: 2, scope: !2203)
!2212 = !DILocation(line: 65, column: 30, scope: !2203)
!2213 = !DILocation(line: 66, column: 7, scope: !2203)
!2214 = !DILocation(line: 66, column: 19, scope: !2203)
!2215 = !DILocation(line: 66, column: 22, scope: !2203)
!2216 = !DILocation(line: 66, column: 36, scope: !2203)
!2217 = !DILocation(line: 63, column: 3, scope: !2203)
!2218 = distinct !DISubprogram(name: "q_regs_operand", scope: !1, file: !1, line: 79, type: !2131, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2219)
!2219 = !{!2220, !2221}
!2220 = !DILocalVariable(name: "op", arg: 1, scope: !2218, file: !1, line: 79, type: !613)
!2221 = !DILocalVariable(name: "mode", arg: 2, scope: !2218, file: !1, line: 79, type: !3)
!2222 = !DILocation(line: 0, scope: !2218)
!2223 = !DILocation(line: 81, column: 11, scope: !2218)
!2224 = !DILocation(line: 81, column: 40, scope: !2218)
!2225 = !DILocation(line: 82, column: 2, scope: !2218)
!2226 = !DILocation(line: 81, column: 3, scope: !2218)
!2227 = distinct !DISubprogram(name: "q_regs_operand_1", scope: !1, file: !1, line: 70, type: !2131, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2228)
!2228 = !{!2229, !2230}
!2229 = !DILocalVariable(name: "op", arg: 1, scope: !2227, file: !1, line: 70, type: !613)
!2230 = !DILocalVariable(name: "mode", arg: 2, scope: !2227, file: !1, line: 70, type: !3)
!2231 = !DILocation(line: 0, scope: !2227)
!2232 = !DILocation(line: 73, column: 7, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2227, file: !1, line: 73, column: 7)
!2234 = !DILocation(line: 73, column: 21, scope: !2233)
!2235 = !DILocation(line: 73, column: 7, scope: !2227)
!2236 = !DILocation(line: 74, column: 10, scope: !2233)
!2237 = !DILocation(line: 75, column: 10, scope: !2227)
!2238 = !DILocation(line: 74, column: 5, scope: !2233)
!2239 = !DILocation(line: 75, column: 3, scope: !2227)
!2240 = distinct !DISubprogram(name: "ext_register_operand", scope: !1, file: !1, line: 100, type: !2131, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2241)
!2241 = !{!2242, !2243}
!2242 = !DILocalVariable(name: "op", arg: 1, scope: !2240, file: !1, line: 100, type: !613)
!2243 = !DILocalVariable(name: "mode", arg: 2, scope: !2240, file: !1, line: 100, type: !3)
!2244 = !DILocation(line: 0, scope: !2240)
!2245 = !DILocation(line: 102, column: 11, scope: !2240)
!2246 = !DILocation(line: 102, column: 40, scope: !2240)
!2247 = !DILocation(line: 103, column: 2, scope: !2240)
!2248 = !DILocation(line: 102, column: 3, scope: !2240)
!2249 = distinct !DISubprogram(name: "ext_register_operand_1", scope: !1, file: !1, line: 86, type: !2131, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2250)
!2250 = !{!2251, !2252}
!2251 = !DILocalVariable(name: "op", arg: 1, scope: !2249, file: !1, line: 86, type: !613)
!2252 = !DILocalVariable(name: "mode", arg: 2, scope: !2249, file: !1, line: 86, type: !3)
!2253 = !DILocation(line: 0, scope: !2249)
!2254 = !DILocation(line: 90, column: 10, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2249, file: !1, line: 89, column: 7)
!2256 = !DILocation(line: 90, column: 24, scope: !2255)
!2257 = !DILocation(line: 90, column: 34, scope: !2255)
!2258 = !DILocation(line: 90, column: 51, scope: !2255)
!2259 = !DILocation(line: 89, column: 7, scope: !2249)
!2260 = !DILocation(line: 92, column: 7, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2249, file: !1, line: 92, column: 7)
!2262 = !DILocation(line: 92, column: 21, scope: !2261)
!2263 = !DILocation(line: 92, column: 7, scope: !2249)
!2264 = !DILocation(line: 93, column: 10, scope: !2261)
!2265 = !DILocation(line: 93, column: 5, scope: !2261)
!2266 = !DILocation(line: 96, column: 10, scope: !2249)
!2267 = !DILocation(line: 96, column: 21, scope: !2249)
!2268 = !DILocation(line: 96, column: 45, scope: !2249)
!2269 = !DILocation(line: 96, column: 48, scope: !2249)
!2270 = !DILocation(line: 96, column: 59, scope: !2249)
!2271 = !DILocation(line: 96, column: 3, scope: !2249)
!2272 = !DILocation(line: 97, column: 1, scope: !2249)
!2273 = distinct !DISubprogram(name: "ax_reg_operand", scope: !1, file: !1, line: 107, type: !2131, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2274)
!2274 = !{!2275, !2276}
!2275 = !DILocalVariable(name: "op", arg: 1, scope: !2273, file: !1, line: 107, type: !613)
!2276 = !DILocalVariable(name: "mode", arg: 2, scope: !2273, file: !1, line: 107, type: !3)
!2277 = !DILocation(line: 0, scope: !2273)
!2278 = !DILocation(line: 109, column: 12, scope: !2273)
!2279 = !DILocation(line: 109, column: 26, scope: !2273)
!2280 = !DILocation(line: 109, column: 34, scope: !2273)
!2281 = !DILocation(line: 111, column: 2, scope: !2273)
!2282 = !DILocation(line: 111, column: 13, scope: !2273)
!2283 = !DILocation(line: 111, column: 21, scope: !2273)
!2284 = !DILocation(line: 112, column: 7, scope: !2273)
!2285 = !DILocation(line: 112, column: 19, scope: !2273)
!2286 = !DILocation(line: 112, column: 22, scope: !2273)
!2287 = !DILocation(line: 112, column: 36, scope: !2273)
!2288 = !DILocation(line: 109, column: 3, scope: !2273)
!2289 = distinct !DISubprogram(name: "flags_reg_operand", scope: !1, file: !1, line: 116, type: !2131, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2290)
!2290 = !{!2291, !2292}
!2291 = !DILocalVariable(name: "op", arg: 1, scope: !2289, file: !1, line: 116, type: !613)
!2292 = !DILocalVariable(name: "mode", arg: 2, scope: !2289, file: !1, line: 116, type: !3)
!2293 = !DILocation(line: 0, scope: !2289)
!2294 = !DILocation(line: 118, column: 12, scope: !2289)
!2295 = !DILocation(line: 118, column: 26, scope: !2289)
!2296 = !DILocation(line: 118, column: 34, scope: !2289)
!2297 = !DILocation(line: 120, column: 2, scope: !2289)
!2298 = !DILocation(line: 120, column: 13, scope: !2289)
!2299 = !DILocation(line: 120, column: 29, scope: !2289)
!2300 = !DILocation(line: 121, column: 7, scope: !2289)
!2301 = !DILocation(line: 121, column: 19, scope: !2289)
!2302 = !DILocation(line: 121, column: 22, scope: !2289)
!2303 = !DILocation(line: 121, column: 36, scope: !2289)
!2304 = !DILocation(line: 118, column: 3, scope: !2289)
!2305 = distinct !DISubprogram(name: "ext_QIreg_operand", scope: !1, file: !1, line: 125, type: !2131, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2306)
!2306 = !{!2307, !2308}
!2307 = !DILocalVariable(name: "op", arg: 1, scope: !2305, file: !1, line: 125, type: !613)
!2308 = !DILocalVariable(name: "mode", arg: 2, scope: !2305, file: !1, line: 125, type: !3)
!2309 = !DILocation(line: 0, scope: !2305)
!2310 = !DILocation(line: 127, column: 3, scope: !2305)
!2311 = distinct !DISubprogram(name: "ext_QIreg_nomode_operand", scope: !1, file: !1, line: 136, type: !2131, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2312)
!2312 = !{!2313, !2314}
!2313 = !DILocalVariable(name: "op", arg: 1, scope: !2311, file: !1, line: 136, type: !613)
!2314 = !DILocalVariable(name: "mode", arg: 2, scope: !2311, file: !1, line: 136, type: !3)
!2315 = !DILocation(line: 0, scope: !2311)
!2316 = !DILocation(line: 138, column: 3, scope: !2311)
!2317 = distinct !DISubprogram(name: "reg_not_xmm0_operand", scope: !1, file: !1, line: 146, type: !2131, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2318)
!2318 = !{!2319, !2320}
!2319 = !DILocalVariable(name: "op", arg: 1, scope: !2317, file: !1, line: 146, type: !613)
!2320 = !DILocalVariable(name: "mode", arg: 2, scope: !2317, file: !1, line: 146, type: !3)
!2321 = !DILocation(line: 0, scope: !2317)
!2322 = !DILocation(line: 148, column: 11, scope: !2317)
!2323 = !DILocation(line: 148, column: 40, scope: !2317)
!2324 = !DILocation(line: 150, column: 3, scope: !2317)
!2325 = !DILocation(line: 151, column: 8, scope: !2317)
!2326 = !DILocation(line: 151, column: 11, scope: !2317)
!2327 = !DILocation(line: 151, column: 22, scope: !2317)
!2328 = !DILocation(line: 148, column: 3, scope: !2317)
!2329 = distinct !DISubprogram(name: "nonimm_not_xmm0_operand", scope: !1, file: !1, line: 155, type: !2131, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2330)
!2330 = !{!2331, !2332}
!2331 = !DILocalVariable(name: "op", arg: 1, scope: !2329, file: !1, line: 155, type: !613)
!2332 = !DILocalVariable(name: "mode", arg: 2, scope: !2329, file: !1, line: 155, type: !3)
!2333 = !DILocation(line: 0, scope: !2329)
!2334 = !DILocation(line: 157, column: 11, scope: !2329)
!2335 = !DILocation(line: 157, column: 44, scope: !2329)
!2336 = !DILocation(line: 159, column: 3, scope: !2329)
!2337 = !DILocation(line: 160, column: 8, scope: !2329)
!2338 = !DILocation(line: 160, column: 11, scope: !2329)
!2339 = !DILocation(line: 160, column: 22, scope: !2329)
!2340 = !DILocation(line: 157, column: 3, scope: !2329)
!2341 = distinct !DISubprogram(name: "x86_64_immediate_operand", scope: !1, file: !1, line: 291, type: !2131, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2342)
!2342 = !{!2343, !2344}
!2343 = !DILocalVariable(name: "op", arg: 1, scope: !2341, file: !1, line: 291, type: !613)
!2344 = !DILocalVariable(name: "mode", arg: 2, scope: !2341, file: !1, line: 291, type: !3)
!2345 = !DILocation(line: 0, scope: !2341)
!2346 = !DILocation(line: 293, column: 11, scope: !2341)
!2347 = !DILocation(line: 293, column: 3, scope: !2341)
!2348 = !DILocation(line: 304, column: 2, scope: !2341)
!2349 = !DILocation(line: 303, column: 3, scope: !2341)
!2350 = !DILocation(line: 305, column: 1, scope: !2341)
!2351 = distinct !DISubprogram(name: "x86_64_immediate_operand_1", scope: !1, file: !1, line: 164, type: !2131, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2352)
!2352 = !{!2353, !2354}
!2353 = !DILocalVariable(name: "op", arg: 1, scope: !2351, file: !1, line: 164, type: !613)
!2354 = !DILocalVariable(name: "mode", arg: 2, scope: !2351, file: !1, line: 164, type: !3)
!2355 = !DILocation(line: 0, scope: !2351)
!2356 = !DILocation(line: 168, column: 12, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2351, file: !1, line: 167, column: 7)
!2358 = !DILocation(line: 168, column: 5, scope: !2357)
!2359 = distinct !DISubprogram(name: "x86_64_zext_immediate_operand", scope: !1, file: !1, line: 394, type: !2131, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2360)
!2360 = !{!2361, !2362}
!2361 = !DILocalVariable(name: "op", arg: 1, scope: !2359, file: !1, line: 394, type: !613)
!2362 = !DILocalVariable(name: "mode", arg: 2, scope: !2359, file: !1, line: 394, type: !3)
!2363 = !DILocation(line: 0, scope: !2359)
!2364 = !DILocation(line: 396, column: 11, scope: !2359)
!2365 = !DILocation(line: 396, column: 3, scope: !2359)
!2366 = !DILocation(line: 408, column: 2, scope: !2359)
!2367 = !DILocation(line: 407, column: 3, scope: !2359)
!2368 = !DILocation(line: 409, column: 1, scope: !2359)
!2369 = distinct !DISubprogram(name: "x86_64_zext_immediate_operand_1", scope: !1, file: !1, line: 308, type: !2131, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2370)
!2370 = !{!2371, !2372, !2373, !2377}
!2371 = !DILocalVariable(name: "op", arg: 1, scope: !2369, file: !1, line: 308, type: !613)
!2372 = !DILocalVariable(name: "mode", arg: 2, scope: !2369, file: !1, line: 308, type: !3)
!2373 = !DILocalVariable(name: "op1", scope: !2374, file: !1, line: 343, type: !613)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !1, line: 342, column: 2)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !1, line: 341, column: 11)
!2376 = distinct !DILexicalBlock(scope: !2369, file: !1, line: 312, column: 5)
!2377 = !DILocalVariable(name: "op2", scope: !2374, file: !1, line: 344, type: !613)
!2378 = !DILocation(line: 0, scope: !2369)
!2379 = !DILocation(line: 311, column: 11, scope: !2369)
!2380 = !DILocation(line: 311, column: 3, scope: !2369)
!2381 = !DILocation(line: 323, column: 11, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2376, file: !1, line: 320, column: 11)
!2383 = !DILocation(line: 323, column: 9, scope: !2382)
!2384 = !DILocation(line: 323, column: 2, scope: !2382)
!2385 = !DILocation(line: 328, column: 11, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2376, file: !1, line: 328, column: 11)
!2387 = !DILocation(line: 328, column: 11, scope: !2376)
!2388 = !DILocation(line: 330, column: 15, scope: !2376)
!2389 = !DILocation(line: 330, column: 27, scope: !2376)
!2390 = !DILocation(line: 331, column: 8, scope: !2376)
!2391 = !DILocation(line: 331, column: 24, scope: !2376)
!2392 = !DILocation(line: 332, column: 5, scope: !2376)
!2393 = !DILocation(line: 330, column: 7, scope: !2376)
!2394 = !DILocation(line: 336, column: 14, scope: !2376)
!2395 = !DILocation(line: 336, column: 38, scope: !2376)
!2396 = !DILocation(line: 336, column: 7, scope: !2376)
!2397 = !DILocation(line: 341, column: 11, scope: !2375)
!2398 = !DILocation(line: 341, column: 35, scope: !2375)
!2399 = !DILocation(line: 341, column: 11, scope: !2376)
!2400 = !DILocation(line: 343, column: 14, scope: !2374)
!2401 = !DILocation(line: 0, scope: !2374)
!2402 = !DILocation(line: 344, column: 14, scope: !2374)
!2403 = !DILocation(line: 346, column: 8, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2374, file: !1, line: 346, column: 8)
!2405 = !DILocation(line: 346, column: 20, scope: !2404)
!2406 = !DILocation(line: 346, column: 8, scope: !2374)
!2407 = !DILocation(line: 348, column: 12, scope: !2374)
!2408 = !DILocation(line: 348, column: 4, scope: !2374)
!2409 = !DILocation(line: 352, column: 12, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !1, line: 352, column: 12)
!2411 = distinct !DILexicalBlock(scope: !2374, file: !1, line: 349, column: 6)
!2412 = !DILocation(line: 352, column: 12, scope: !2411)
!2413 = !DILocation(line: 358, column: 25, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2411, file: !1, line: 358, column: 12)
!2415 = !DILocation(line: 359, column: 6, scope: !2414)
!2416 = !DILocation(line: 359, column: 22, scope: !2414)
!2417 = !DILocation(line: 360, column: 10, scope: !2414)
!2418 = !DILocation(line: 360, column: 14, scope: !2414)
!2419 = !DILocation(line: 361, column: 5, scope: !2414)
!2420 = !DILocation(line: 361, column: 8, scope: !2414)
!2421 = !DILocation(line: 362, column: 5, scope: !2414)
!2422 = !DILocation(line: 362, column: 28, scope: !2414)
!2423 = !DILocation(line: 362, column: 8, scope: !2414)
!2424 = !DILocation(line: 362, column: 50, scope: !2414)
!2425 = !DILocation(line: 363, column: 5, scope: !2414)
!2426 = !DILocation(line: 363, column: 28, scope: !2414)
!2427 = !DILocation(line: 363, column: 8, scope: !2414)
!2428 = !DILocation(line: 363, column: 53, scope: !2414)
!2429 = !DILocation(line: 363, column: 50, scope: !2414)
!2430 = !DILocation(line: 358, column: 12, scope: !2411)
!2431 = !DILocation(line: 374, column: 37, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2411, file: !1, line: 374, column: 12)
!2433 = !DILocation(line: 375, column: 8, scope: !2432)
!2434 = !DILocation(line: 376, column: 5, scope: !2432)
!2435 = !DILocation(line: 376, column: 28, scope: !2432)
!2436 = !DILocation(line: 376, column: 8, scope: !2432)
!2437 = !DILocation(line: 376, column: 50, scope: !2432)
!2438 = !DILocation(line: 377, column: 5, scope: !2432)
!2439 = !DILocation(line: 377, column: 28, scope: !2432)
!2440 = !DILocation(line: 377, column: 8, scope: !2432)
!2441 = !DILocation(line: 377, column: 53, scope: !2432)
!2442 = !DILocation(line: 377, column: 50, scope: !2432)
!2443 = !DILocation(line: 374, column: 12, scope: !2411)
!2444 = !DILocation(line: 384, column: 2, scope: !2375)
!2445 = !DILocation(line: 388, column: 7, scope: !2376)
!2446 = !DILocation(line: 389, column: 5, scope: !2376)
!2447 = !DILocation(line: 390, column: 3, scope: !2369)
!2448 = !DILocation(line: 391, column: 1, scope: !2369)
!2449 = distinct !DISubprogram(name: "x86_64_general_operand", scope: !1, file: !1, line: 412, type: !2131, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2450)
!2450 = !{!2451, !2452}
!2451 = !DILocalVariable(name: "op", arg: 1, scope: !2449, file: !1, line: 412, type: !613)
!2452 = !DILocalVariable(name: "mode", arg: 2, scope: !2449, file: !1, line: 412, type: !3)
!2453 = !DILocation(line: 0, scope: !2449)
!2454 = !DILocation(line: 416, column: 99, scope: !2449)
!2455 = !DILocation(line: 414, column: 3, scope: !2449)
!2456 = distinct !DISubprogram(name: "x86_64_szext_general_operand", scope: !1, file: !1, line: 420, type: !2131, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2457)
!2457 = !{!2458, !2459}
!2458 = !DILocalVariable(name: "op", arg: 1, scope: !2456, file: !1, line: 420, type: !613)
!2459 = !DILocalVariable(name: "mode", arg: 2, scope: !2456, file: !1, line: 420, type: !3)
!2460 = !DILocation(line: 0, scope: !2456)
!2461 = !DILocation(line: 424, column: 147, scope: !2456)
!2462 = !DILocation(line: 422, column: 3, scope: !2456)
!2463 = distinct !DISubprogram(name: "x86_64_nonmemory_operand", scope: !1, file: !1, line: 428, type: !2131, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2464)
!2464 = !{!2465, !2466}
!2465 = !DILocalVariable(name: "op", arg: 1, scope: !2463, file: !1, line: 428, type: !613)
!2466 = !DILocalVariable(name: "mode", arg: 2, scope: !2463, file: !1, line: 428, type: !3)
!2467 = !DILocation(line: 0, scope: !2463)
!2468 = !DILocation(line: 432, column: 95, scope: !2463)
!2469 = !DILocation(line: 430, column: 3, scope: !2463)
!2470 = distinct !DISubprogram(name: "x86_64_szext_nonmemory_operand", scope: !1, file: !1, line: 436, type: !2131, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2471)
!2471 = !{!2472, !2473}
!2472 = !DILocalVariable(name: "op", arg: 1, scope: !2470, file: !1, line: 436, type: !613)
!2473 = !DILocalVariable(name: "mode", arg: 2, scope: !2470, file: !1, line: 436, type: !3)
!2474 = !DILocation(line: 0, scope: !2470)
!2475 = !DILocation(line: 440, column: 143, scope: !2470)
!2476 = !DILocation(line: 438, column: 3, scope: !2470)
!2477 = distinct !DISubprogram(name: "pic_32bit_operand", scope: !1, file: !1, line: 464, type: !2131, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2478)
!2478 = !{!2479, !2480}
!2479 = !DILocalVariable(name: "op", arg: 1, scope: !2477, file: !1, line: 464, type: !613)
!2480 = !DILocalVariable(name: "mode", arg: 2, scope: !2477, file: !1, line: 464, type: !3)
!2481 = !DILocation(line: 0, scope: !2477)
!2482 = !DILocation(line: 466, column: 11, scope: !2477)
!2483 = !DILocation(line: 466, column: 3, scope: !2477)
!2484 = !DILocation(line: 476, column: 2, scope: !2477)
!2485 = !DILocation(line: 476, column: 35, scope: !2477)
!2486 = !DILocation(line: 477, column: 7, scope: !2477)
!2487 = !DILocation(line: 477, column: 19, scope: !2477)
!2488 = !DILocation(line: 477, column: 22, scope: !2477)
!2489 = !DILocation(line: 477, column: 36, scope: !2477)
!2490 = !DILocation(line: 475, column: 3, scope: !2477)
!2491 = !DILocation(line: 478, column: 1, scope: !2477)
!2492 = distinct !DISubprogram(name: "pic_32bit_operand_1", scope: !1, file: !1, line: 444, type: !2131, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2493)
!2493 = !{!2494, !2495}
!2494 = !DILocalVariable(name: "op", arg: 1, scope: !2492, file: !1, line: 444, type: !613)
!2495 = !DILocalVariable(name: "mode", arg: 2, scope: !2492, file: !1, line: 444, type: !3)
!2496 = !DILocation(line: 0, scope: !2492)
!2497 = !DILocation(line: 447, column: 8, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2492, file: !1, line: 447, column: 7)
!2499 = !DILocation(line: 447, column: 7, scope: !2492)
!2500 = !DILocation(line: 460, column: 10, scope: !2492)
!2501 = !DILocation(line: 460, column: 3, scope: !2492)
!2502 = !DILocation(line: 461, column: 1, scope: !2492)
!2503 = distinct !DISubprogram(name: "x86_64_movabs_operand", scope: !1, file: !1, line: 481, type: !2131, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2504)
!2504 = !{!2505, !2506}
!2505 = !DILocalVariable(name: "op", arg: 1, scope: !2503, file: !1, line: 481, type: !613)
!2506 = !DILocalVariable(name: "mode", arg: 2, scope: !2503, file: !1, line: 481, type: !3)
!2507 = !DILocation(line: 0, scope: !2503)
!2508 = !DILocation(line: 485, column: 34, scope: !2503)
!2509 = !DILocation(line: 483, column: 3, scope: !2503)
!2510 = distinct !DISubprogram(name: "symbolic_operand", scope: !1, file: !1, line: 537, type: !2131, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2511)
!2511 = !{!2512, !2513}
!2512 = !DILocalVariable(name: "op", arg: 1, scope: !2510, file: !1, line: 537, type: !613)
!2513 = !DILocalVariable(name: "mode", arg: 2, scope: !2510, file: !1, line: 537, type: !3)
!2514 = !DILocation(line: 0, scope: !2510)
!2515 = !DILocation(line: 539, column: 11, scope: !2510)
!2516 = !DILocation(line: 539, column: 3, scope: !2510)
!2517 = !DILocation(line: 549, column: 2, scope: !2510)
!2518 = !DILocation(line: 549, column: 34, scope: !2510)
!2519 = !DILocation(line: 550, column: 7, scope: !2510)
!2520 = !DILocation(line: 550, column: 19, scope: !2510)
!2521 = !DILocation(line: 550, column: 22, scope: !2510)
!2522 = !DILocation(line: 550, column: 36, scope: !2510)
!2523 = !DILocation(line: 548, column: 3, scope: !2510)
!2524 = !DILocation(line: 551, column: 1, scope: !2510)
!2525 = distinct !DISubprogram(name: "symbolic_operand_1", scope: !1, file: !1, line: 491, type: !2131, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2526)
!2526 = !{!2527, !2528}
!2527 = !DILocalVariable(name: "op", arg: 1, scope: !2525, file: !1, line: 491, type: !613)
!2528 = !DILocalVariable(name: "mode", arg: 2, scope: !2525, file: !1, line: 491, type: !3)
!2529 = !DILocation(line: 0, scope: !2525)
!2530 = !DILocation(line: 494, column: 11, scope: !2525)
!2531 = !DILocation(line: 494, column: 3, scope: !2525)
!2532 = !DILocation(line: 501, column: 12, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2525, file: !1, line: 495, column: 5)
!2534 = !DILocation(line: 502, column: 11, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2533, file: !1, line: 502, column: 11)
!2536 = !DILocation(line: 502, column: 25, scope: !2535)
!2537 = !DILocation(line: 503, column: 4, scope: !2535)
!2538 = !DILocation(line: 503, column: 21, scope: !2535)
!2539 = !DILocation(line: 504, column: 4, scope: !2535)
!2540 = !DILocation(line: 504, column: 22, scope: !2535)
!2541 = !DILocation(line: 505, column: 8, scope: !2535)
!2542 = !DILocation(line: 505, column: 12, scope: !2535)
!2543 = !DILocation(line: 505, column: 25, scope: !2535)
!2544 = !DILocation(line: 506, column: 5, scope: !2535)
!2545 = !DILocation(line: 506, column: 21, scope: !2535)
!2546 = !DILocation(line: 507, column: 5, scope: !2535)
!2547 = !DILocation(line: 507, column: 21, scope: !2535)
!2548 = !DILocation(line: 502, column: 11, scope: !2533)
!2549 = !DILocation(line: 509, column: 25, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2533, file: !1, line: 509, column: 11)
!2551 = !DILocation(line: 510, column: 4, scope: !2550)
!2552 = !DILocation(line: 510, column: 8, scope: !2550)
!2553 = !DILocation(line: 509, column: 11, scope: !2533)
!2554 = !DILocation(line: 513, column: 12, scope: !2533)
!2555 = !DILocation(line: 514, column: 11, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2533, file: !1, line: 514, column: 11)
!2557 = !DILocation(line: 514, column: 25, scope: !2556)
!2558 = !DILocation(line: 515, column: 4, scope: !2556)
!2559 = !DILocation(line: 515, column: 21, scope: !2556)
!2560 = !DILocation(line: 514, column: 11, scope: !2533)
!2561 = !DILocation(line: 518, column: 25, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2533, file: !1, line: 518, column: 11)
!2563 = !DILocation(line: 519, column: 4, scope: !2562)
!2564 = !DILocation(line: 519, column: 7, scope: !2562)
!2565 = !DILocation(line: 519, column: 20, scope: !2562)
!2566 = !DILocation(line: 518, column: 11, scope: !2533)
!2567 = !DILocation(line: 522, column: 12, scope: !2533)
!2568 = !DILocation(line: 523, column: 11, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2533, file: !1, line: 523, column: 11)
!2570 = !DILocation(line: 523, column: 25, scope: !2569)
!2571 = !DILocation(line: 524, column: 4, scope: !2569)
!2572 = !DILocation(line: 524, column: 21, scope: !2569)
!2573 = !DILocation(line: 523, column: 11, scope: !2533)
!2574 = !DILocation(line: 529, column: 7, scope: !2533)
!2575 = !DILocation(line: 532, column: 5, scope: !2525)
!2576 = !DILocation(line: 534, column: 1, scope: !2525)
!2577 = distinct !DISubprogram(name: "pic_symbolic_operand", scope: !1, file: !1, line: 584, type: !2131, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2578)
!2578 = !{!2579, !2580}
!2579 = !DILocalVariable(name: "op", arg: 1, scope: !2577, file: !1, line: 584, type: !613)
!2580 = !DILocalVariable(name: "mode", arg: 2, scope: !2577, file: !1, line: 584, type: !3)
!2581 = !DILocation(line: 0, scope: !2577)
!2582 = !DILocation(line: 586, column: 12, scope: !2577)
!2583 = !DILocation(line: 586, column: 26, scope: !2577)
!2584 = !DILocation(line: 586, column: 36, scope: !2577)
!2585 = !DILocation(line: 587, column: 2, scope: !2577)
!2586 = !DILocation(line: 587, column: 39, scope: !2577)
!2587 = !DILocation(line: 588, column: 7, scope: !2577)
!2588 = !DILocation(line: 588, column: 19, scope: !2577)
!2589 = !DILocation(line: 588, column: 22, scope: !2577)
!2590 = !DILocation(line: 588, column: 36, scope: !2577)
!2591 = !DILocation(line: 586, column: 3, scope: !2577)
!2592 = distinct !DISubprogram(name: "pic_symbolic_operand_1", scope: !1, file: !1, line: 554, type: !2131, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2593)
!2593 = !{!2594, !2595}
!2594 = !DILocalVariable(name: "op", arg: 1, scope: !2592, file: !1, line: 554, type: !613)
!2595 = !DILocalVariable(name: "mode", arg: 2, scope: !2592, file: !1, line: 554, type: !3)
!2596 = !DILocation(line: 0, scope: !2592)
!2597 = !DILocation(line: 557, column: 8, scope: !2592)
!2598 = !DILocation(line: 570, column: 11, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !1, line: 570, column: 11)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !1, line: 569, column: 5)
!2601 = distinct !DILexicalBlock(scope: !2592, file: !1, line: 558, column: 7)
!2602 = !DILocation(line: 570, column: 25, scope: !2599)
!2603 = !DILocation(line: 570, column: 11, scope: !2600)
!2604 = !DILocation(line: 572, column: 25, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2600, file: !1, line: 572, column: 11)
!2606 = !DILocation(line: 573, column: 4, scope: !2605)
!2607 = !DILocation(line: 573, column: 8, scope: !2605)
!2608 = !DILocation(line: 572, column: 11, scope: !2600)
!2609 = !DILocation(line: 575, column: 12, scope: !2600)
!2610 = !DILocation(line: 576, column: 11, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2600, file: !1, line: 576, column: 11)
!2612 = !DILocation(line: 576, column: 25, scope: !2611)
!2613 = !DILocation(line: 577, column: 4, scope: !2611)
!2614 = !DILocation(line: 577, column: 7, scope: !2611)
!2615 = !DILocation(line: 577, column: 20, scope: !2611)
!2616 = !DILocation(line: 576, column: 11, scope: !2600)
!2617 = !DILocation(line: 580, column: 3, scope: !2592)
!2618 = !DILocation(line: 581, column: 1, scope: !2592)
!2619 = distinct !DISubprogram(name: "local_symbolic_operand", scope: !1, file: !1, line: 625, type: !2131, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2620)
!2620 = !{!2621, !2622}
!2621 = !DILocalVariable(name: "op", arg: 1, scope: !2619, file: !1, line: 625, type: !613)
!2622 = !DILocalVariable(name: "mode", arg: 2, scope: !2619, file: !1, line: 625, type: !3)
!2623 = !DILocation(line: 0, scope: !2619)
!2624 = !DILocation(line: 627, column: 11, scope: !2619)
!2625 = !DILocation(line: 627, column: 3, scope: !2619)
!2626 = !DILocation(line: 637, column: 2, scope: !2619)
!2627 = !DILocation(line: 637, column: 40, scope: !2619)
!2628 = !DILocation(line: 638, column: 7, scope: !2619)
!2629 = !DILocation(line: 638, column: 19, scope: !2619)
!2630 = !DILocation(line: 638, column: 22, scope: !2619)
!2631 = !DILocation(line: 638, column: 36, scope: !2619)
!2632 = !DILocation(line: 636, column: 3, scope: !2619)
!2633 = !DILocation(line: 639, column: 1, scope: !2619)
!2634 = distinct !DISubprogram(name: "local_symbolic_operand_1", scope: !1, file: !1, line: 592, type: !2131, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2635)
!2635 = !{!2636, !2637}
!2636 = !DILocalVariable(name: "op", arg: 1, scope: !2634, file: !1, line: 592, type: !613)
!2637 = !DILocalVariable(name: "mode", arg: 2, scope: !2634, file: !1, line: 592, type: !3)
!2638 = !DILocation(line: 0, scope: !2634)
!2639 = !DILocation(line: 595, column: 7, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2634, file: !1, line: 595, column: 7)
!2641 = !DILocation(line: 595, column: 21, scope: !2640)
!2642 = !DILocation(line: 596, column: 7, scope: !2640)
!2643 = !DILocation(line: 596, column: 10, scope: !2640)
!2644 = !DILocation(line: 596, column: 34, scope: !2640)
!2645 = !DILocation(line: 597, column: 7, scope: !2640)
!2646 = !DILocation(line: 597, column: 10, scope: !2640)
!2647 = !DILocation(line: 595, column: 7, scope: !2634)
!2648 = !DILocation(line: 598, column: 10, scope: !2640)
!2649 = !DILocation(line: 0, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2634, file: !1, line: 600, column: 7)
!2651 = !DILocation(line: 600, column: 7, scope: !2650)
!2652 = !DILocation(line: 598, column: 5, scope: !2640)
!2653 = !DILocation(line: 600, column: 21, scope: !2650)
!2654 = !DILocation(line: 600, column: 7, scope: !2634)
!2655 = !DILocation(line: 603, column: 21, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2634, file: !1, line: 603, column: 7)
!2657 = !DILocation(line: 603, column: 7, scope: !2634)
!2658 = !DILocation(line: 606, column: 7, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2634, file: !1, line: 606, column: 7)
!2660 = !DILocation(line: 606, column: 33, scope: !2659)
!2661 = !DILocation(line: 606, column: 7, scope: !2634)
!2662 = !DILocation(line: 609, column: 7, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2634, file: !1, line: 609, column: 7)
!2664 = !DILocation(line: 609, column: 7, scope: !2634)
!2665 = !DILocation(line: 617, column: 16, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2634, file: !1, line: 617, column: 7)
!2667 = !DILocation(line: 618, column: 9, scope: !2666)
!2668 = !DILocation(line: 617, column: 7, scope: !2666)
!2669 = !DILocation(line: 618, column: 36, scope: !2666)
!2670 = !DILocation(line: 622, column: 1, scope: !2634)
!2671 = distinct !DISubprogram(name: "gotoff_operand", scope: !1, file: !1, line: 642, type: !2131, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2672)
!2672 = !{!2673, !2674}
!2673 = !DILocalVariable(name: "op", arg: 1, scope: !2671, file: !1, line: 642, type: !613)
!2674 = !DILocalVariable(name: "mode", arg: 2, scope: !2671, file: !1, line: 642, type: !3)
!2675 = !DILocation(line: 0, scope: !2671)
!2676 = !DILocation(line: 646, column: 28, scope: !2671)
!2677 = !DILocation(line: 646, column: 24, scope: !2671)
!2678 = !DILocation(line: 644, column: 3, scope: !2671)
!2679 = distinct !DISubprogram(name: "tls_symbolic_operand", scope: !1, file: !1, line: 650, type: !2131, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2680)
!2680 = !{!2681, !2682}
!2681 = !DILocalVariable(name: "op", arg: 1, scope: !2679, file: !1, line: 650, type: !613)
!2682 = !DILocalVariable(name: "mode", arg: 2, scope: !2679, file: !1, line: 650, type: !3)
!2683 = !DILocation(line: 0, scope: !2679)
!2684 = !DILocation(line: 652, column: 12, scope: !2679)
!2685 = !DILocation(line: 652, column: 26, scope: !2679)
!2686 = !DILocation(line: 652, column: 41, scope: !2679)
!2687 = !DILocation(line: 654, column: 2, scope: !2679)
!2688 = !DILocation(line: 654, column: 28, scope: !2679)
!2689 = !DILocation(line: 654, column: 36, scope: !2679)
!2690 = !DILocation(line: 655, column: 7, scope: !2679)
!2691 = !DILocation(line: 655, column: 19, scope: !2679)
!2692 = !DILocation(line: 655, column: 22, scope: !2679)
!2693 = !DILocation(line: 655, column: 36, scope: !2679)
!2694 = !DILocation(line: 652, column: 3, scope: !2679)
!2695 = distinct !DISubprogram(name: "tls_modbase_operand", scope: !1, file: !1, line: 659, type: !2131, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2696)
!2696 = !{!2697, !2698}
!2697 = !DILocalVariable(name: "op", arg: 1, scope: !2695, file: !1, line: 659, type: !613)
!2698 = !DILocalVariable(name: "mode", arg: 2, scope: !2695, file: !1, line: 659, type: !3)
!2699 = !DILocation(line: 0, scope: !2695)
!2700 = !DILocation(line: 661, column: 12, scope: !2695)
!2701 = !DILocation(line: 661, column: 26, scope: !2695)
!2702 = !DILocation(line: 661, column: 41, scope: !2695)
!2703 = !DILocation(line: 663, column: 8, scope: !2695)
!2704 = !DILocation(line: 663, column: 5, scope: !2695)
!2705 = !DILocation(line: 663, column: 35, scope: !2695)
!2706 = !DILocation(line: 664, column: 7, scope: !2695)
!2707 = !DILocation(line: 664, column: 19, scope: !2695)
!2708 = !DILocation(line: 664, column: 22, scope: !2695)
!2709 = !DILocation(line: 664, column: 36, scope: !2695)
!2710 = !DILocation(line: 661, column: 3, scope: !2695)
!2711 = distinct !DISubprogram(name: "tp_or_register_operand", scope: !1, file: !1, line: 668, type: !2131, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2712)
!2712 = !{!2713, !2714}
!2713 = !DILocalVariable(name: "op", arg: 1, scope: !2711, file: !1, line: 668, type: !613)
!2714 = !DILocalVariable(name: "mode", arg: 2, scope: !2711, file: !1, line: 668, type: !3)
!2715 = !DILocation(line: 0, scope: !2711)
!2716 = !DILocation(line: 670, column: 11, scope: !2711)
!2717 = !DILocation(line: 670, column: 40, scope: !2711)
!2718 = !DILocation(line: 670, column: 46, scope: !2711)
!2719 = !DILocation(line: 670, column: 60, scope: !2711)
!2720 = !DILocation(line: 670, column: 71, scope: !2711)
!2721 = !DILocation(line: 672, column: 2, scope: !2711)
!2722 = !DILocation(line: 672, column: 15, scope: !2711)
!2723 = !DILocation(line: 672, column: 31, scope: !2711)
!2724 = !DILocation(line: 673, column: 7, scope: !2711)
!2725 = !DILocation(line: 673, column: 19, scope: !2711)
!2726 = !DILocation(line: 673, column: 22, scope: !2711)
!2727 = !DILocation(line: 673, column: 36, scope: !2711)
!2728 = !DILocation(line: 670, column: 3, scope: !2711)
!2729 = distinct !DISubprogram(name: "constant_call_address_operand", scope: !1, file: !1, line: 688, type: !2131, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2730)
!2730 = !{!2731, !2732}
!2731 = !DILocalVariable(name: "op", arg: 1, scope: !2729, file: !1, line: 688, type: !613)
!2732 = !DILocalVariable(name: "mode", arg: 2, scope: !2729, file: !1, line: 688, type: !3)
!2733 = !DILocation(line: 0, scope: !2729)
!2734 = !DILocation(line: 690, column: 12, scope: !2729)
!2735 = !DILocation(line: 690, column: 26, scope: !2729)
!2736 = !DILocation(line: 690, column: 41, scope: !2729)
!2737 = !DILocation(line: 691, column: 2, scope: !2729)
!2738 = !DILocation(line: 691, column: 48, scope: !2729)
!2739 = !DILocation(line: 692, column: 7, scope: !2729)
!2740 = !DILocation(line: 692, column: 19, scope: !2729)
!2741 = !DILocation(line: 692, column: 22, scope: !2729)
!2742 = !DILocation(line: 692, column: 36, scope: !2729)
!2743 = !DILocation(line: 690, column: 3, scope: !2729)
!2744 = distinct !DISubprogram(name: "constant_call_address_operand_1", scope: !1, file: !1, line: 677, type: !2131, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2745)
!2745 = !{!2746, !2747}
!2746 = !DILocalVariable(name: "op", arg: 1, scope: !2744, file: !1, line: 677, type: !613)
!2747 = !DILocalVariable(name: "mode", arg: 2, scope: !2744, file: !1, line: 677, type: !3)
!2748 = !DILocation(line: 0, scope: !2744)
!2749 = !DILocation(line: 680, column: 7, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2744, file: !1, line: 680, column: 7)
!2751 = !DILocation(line: 680, column: 19, scope: !2750)
!2752 = !DILocation(line: 680, column: 46, scope: !2750)
!2753 = !DILocation(line: 680, column: 31, scope: !2750)
!2754 = !DILocation(line: 685, column: 1, scope: !2744)
!2755 = distinct !DISubprogram(name: "register_no_elim_operand", scope: !1, file: !1, line: 708, type: !2131, scopeLine: 709, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2756)
!2756 = !{!2757, !2758}
!2757 = !DILocalVariable(name: "op", arg: 1, scope: !2755, file: !1, line: 708, type: !613)
!2758 = !DILocalVariable(name: "mode", arg: 2, scope: !2755, file: !1, line: 708, type: !3)
!2759 = !DILocation(line: 0, scope: !2755)
!2760 = !DILocation(line: 710, column: 11, scope: !2755)
!2761 = !DILocation(line: 710, column: 40, scope: !2755)
!2762 = !DILocation(line: 711, column: 2, scope: !2755)
!2763 = !DILocation(line: 710, column: 3, scope: !2755)
!2764 = distinct !DISubprogram(name: "register_no_elim_operand_1", scope: !1, file: !1, line: 696, type: !2131, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2765)
!2765 = !{!2766, !2767}
!2766 = !DILocalVariable(name: "op", arg: 1, scope: !2764, file: !1, line: 696, type: !613)
!2767 = !DILocalVariable(name: "mode", arg: 2, scope: !2764, file: !1, line: 696, type: !3)
!2768 = !DILocation(line: 0, scope: !2764)
!2769 = !DILocation(line: 699, column: 7, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2764, file: !1, line: 699, column: 7)
!2771 = !DILocation(line: 699, column: 21, scope: !2770)
!2772 = !DILocation(line: 699, column: 7, scope: !2764)
!2773 = !DILocation(line: 700, column: 10, scope: !2770)
!2774 = !DILocation(line: 700, column: 5, scope: !2770)
!2775 = !DILocation(line: 701, column: 18, scope: !2764)
!2776 = !DILocation(line: 701, column: 15, scope: !2764)
!2777 = !DILocation(line: 702, column: 14, scope: !2764)
!2778 = !DILocation(line: 702, column: 11, scope: !2764)
!2779 = !DILocation(line: 702, column: 5, scope: !2764)
!2780 = !DILocation(line: 703, column: 8, scope: !2764)
!2781 = !DILocation(line: 703, column: 5, scope: !2764)
!2782 = !DILocation(line: 701, column: 3, scope: !2764)
!2783 = distinct !DISubprogram(name: "call_register_no_elim_operand", scope: !1, file: !1, line: 728, type: !2131, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2784)
!2784 = !{!2785, !2786}
!2785 = !DILocalVariable(name: "op", arg: 1, scope: !2783, file: !1, line: 728, type: !613)
!2786 = !DILocalVariable(name: "mode", arg: 2, scope: !2783, file: !1, line: 728, type: !3)
!2787 = !DILocation(line: 0, scope: !2783)
!2788 = !DILocation(line: 730, column: 11, scope: !2783)
!2789 = !DILocation(line: 730, column: 40, scope: !2783)
!2790 = !DILocation(line: 731, column: 2, scope: !2783)
!2791 = !DILocation(line: 730, column: 3, scope: !2783)
!2792 = distinct !DISubprogram(name: "call_register_no_elim_operand_1", scope: !1, file: !1, line: 715, type: !2131, scopeLine: 717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2793)
!2793 = !{!2794, !2795}
!2794 = !DILocalVariable(name: "op", arg: 1, scope: !2792, file: !1, line: 715, type: !613)
!2795 = !DILocalVariable(name: "mode", arg: 2, scope: !2792, file: !1, line: 715, type: !3)
!2796 = !DILocation(line: 0, scope: !2792)
!2797 = !DILocation(line: 718, column: 7, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2792, file: !1, line: 718, column: 7)
!2799 = !DILocation(line: 718, column: 21, scope: !2798)
!2800 = !DILocation(line: 718, column: 7, scope: !2792)
!2801 = !DILocation(line: 719, column: 10, scope: !2798)
!2802 = !DILocation(line: 719, column: 5, scope: !2798)
!2803 = !DILocation(line: 721, column: 30, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2792, file: !1, line: 721, column: 7)
!2805 = !DILocation(line: 721, column: 27, scope: !2804)
!2806 = !DILocation(line: 721, column: 7, scope: !2792)
!2807 = !DILocation(line: 724, column: 10, scope: !2792)
!2808 = !DILocation(line: 724, column: 3, scope: !2792)
!2809 = !DILocation(line: 725, column: 1, scope: !2792)
!2810 = distinct !DISubprogram(name: "index_register_operand", scope: !1, file: !1, line: 747, type: !2131, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2811)
!2811 = !{!2812, !2813}
!2812 = !DILocalVariable(name: "op", arg: 1, scope: !2810, file: !1, line: 747, type: !613)
!2813 = !DILocalVariable(name: "mode", arg: 2, scope: !2810, file: !1, line: 747, type: !3)
!2814 = !DILocation(line: 0, scope: !2810)
!2815 = !DILocation(line: 749, column: 11, scope: !2810)
!2816 = !DILocation(line: 749, column: 40, scope: !2810)
!2817 = !DILocation(line: 750, column: 2, scope: !2810)
!2818 = !DILocation(line: 749, column: 3, scope: !2810)
!2819 = distinct !DISubprogram(name: "index_register_operand_1", scope: !1, file: !1, line: 735, type: !2131, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2820)
!2820 = !{!2821, !2822}
!2821 = !DILocalVariable(name: "op", arg: 1, scope: !2819, file: !1, line: 735, type: !613)
!2822 = !DILocalVariable(name: "mode", arg: 2, scope: !2819, file: !1, line: 735, type: !3)
!2823 = !DILocation(line: 0, scope: !2819)
!2824 = !DILocation(line: 738, column: 7, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2819, file: !1, line: 738, column: 7)
!2826 = !DILocation(line: 738, column: 21, scope: !2825)
!2827 = !DILocation(line: 738, column: 7, scope: !2819)
!2828 = !DILocation(line: 739, column: 10, scope: !2825)
!2829 = !DILocation(line: 739, column: 5, scope: !2825)
!2830 = !DILocation(line: 740, column: 7, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2819, file: !1, line: 740, column: 7)
!2832 = !DILocation(line: 740, column: 29, scope: !2831)
!2833 = !DILocation(line: 740, column: 26, scope: !2831)
!2834 = !DILocation(line: 0, scope: !2831)
!2835 = !DILocation(line: 741, column: 12, scope: !2831)
!2836 = !DILocation(line: 741, column: 5, scope: !2831)
!2837 = !DILocation(line: 743, column: 12, scope: !2831)
!2838 = !DILocation(line: 743, column: 5, scope: !2831)
!2839 = !DILocation(line: 744, column: 1, scope: !2819)
!2840 = distinct !DISubprogram(name: "general_no_elim_operand", scope: !1, file: !1, line: 754, type: !2131, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2841)
!2841 = !{!2842, !2843}
!2842 = !DILocalVariable(name: "op", arg: 1, scope: !2840, file: !1, line: 754, type: !613)
!2843 = !DILocalVariable(name: "mode", arg: 2, scope: !2840, file: !1, line: 754, type: !3)
!2844 = !DILocation(line: 0, scope: !2840)
!2845 = !DILocation(line: 756, column: 11, scope: !2840)
!2846 = !DILocation(line: 756, column: 25, scope: !2840)
!2847 = !DILocation(line: 756, column: 32, scope: !2840)
!2848 = !DILocation(line: 756, column: 49, scope: !2840)
!2849 = !DILocation(line: 756, column: 10, scope: !2840)
!2850 = !DILocation(line: 756, column: 63, scope: !2840)
!2851 = !DILocation(line: 756, column: 103, scope: !2840)
!2852 = !DILocation(line: 756, column: 3, scope: !2840)
!2853 = distinct !DISubprogram(name: "nonmemory_no_elim_operand", scope: !1, file: !1, line: 760, type: !2131, scopeLine: 761, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2854)
!2854 = !{!2855, !2856}
!2855 = !DILocalVariable(name: "op", arg: 1, scope: !2853, file: !1, line: 760, type: !613)
!2856 = !DILocalVariable(name: "mode", arg: 2, scope: !2853, file: !1, line: 760, type: !3)
!2857 = !DILocation(line: 0, scope: !2853)
!2858 = !DILocation(line: 762, column: 11, scope: !2853)
!2859 = !DILocation(line: 762, column: 48, scope: !2853)
!2860 = !DILocation(line: 762, column: 52, scope: !2853)
!2861 = !DILocation(line: 762, column: 3, scope: !2853)
!2862 = distinct !DISubprogram(name: "call_insn_operand", scope: !1, file: !1, line: 766, type: !2131, scopeLine: 767, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2863)
!2863 = !{!2864, !2865}
!2864 = !DILocalVariable(name: "op", arg: 1, scope: !2862, file: !1, line: 766, type: !613)
!2865 = !DILocalVariable(name: "mode", arg: 2, scope: !2862, file: !1, line: 766, type: !3)
!2866 = !DILocation(line: 0, scope: !2862)
!2867 = !DILocation(line: 768, column: 11, scope: !2862)
!2868 = !DILocation(line: 768, column: 53, scope: !2862)
!2869 = !DILocation(line: 768, column: 58, scope: !2862)
!2870 = !DILocation(line: 768, column: 100, scope: !2862)
!2871 = !DILocation(line: 768, column: 104, scope: !2862)
!2872 = !DILocation(line: 768, column: 3, scope: !2862)
!2873 = distinct !DISubprogram(name: "sibcall_insn_operand", scope: !1, file: !1, line: 772, type: !2131, scopeLine: 773, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2874)
!2874 = !{!2875, !2876}
!2875 = !DILocalVariable(name: "op", arg: 1, scope: !2873, file: !1, line: 772, type: !613)
!2876 = !DILocalVariable(name: "mode", arg: 2, scope: !2873, file: !1, line: 772, type: !3)
!2877 = !DILocation(line: 0, scope: !2873)
!2878 = !DILocation(line: 774, column: 11, scope: !2873)
!2879 = !DILocation(line: 774, column: 53, scope: !2873)
!2880 = !DILocation(line: 774, column: 57, scope: !2873)
!2881 = !DILocation(line: 774, column: 3, scope: !2873)
!2882 = distinct !DISubprogram(name: "const0_operand", scope: !1, file: !1, line: 787, type: !2131, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2883)
!2883 = !{!2884, !2885}
!2884 = !DILocalVariable(name: "op", arg: 1, scope: !2882, file: !1, line: 787, type: !613)
!2885 = !DILocalVariable(name: "mode", arg: 2, scope: !2882, file: !1, line: 787, type: !3)
!2886 = !DILocation(line: 0, scope: !2882)
!2887 = !DILocation(line: 789, column: 11, scope: !2882)
!2888 = !DILocation(line: 789, column: 3, scope: !2882)
!2889 = !DILocation(line: 799, column: 2, scope: !2882)
!2890 = !DILocation(line: 798, column: 3, scope: !2882)
!2891 = !DILocation(line: 800, column: 1, scope: !2882)
!2892 = distinct !DISubprogram(name: "const0_operand_1", scope: !1, file: !1, line: 778, type: !2131, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2893)
!2893 = !{!2894, !2895}
!2894 = !DILocalVariable(name: "op", arg: 1, scope: !2892, file: !1, line: 778, type: !613)
!2895 = !DILocalVariable(name: "mode", arg: 2, scope: !2892, file: !1, line: 778, type: !3)
!2896 = !DILocation(line: 0, scope: !2892)
!2897 = !DILocation(line: 781, column: 12, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2892, file: !1, line: 781, column: 7)
!2899 = !DILocation(line: 781, column: 7, scope: !2892)
!2900 = !DILocation(line: 782, column: 12, scope: !2898)
!2901 = !DILocation(line: 782, column: 5, scope: !2898)
!2902 = !DILocation(line: 783, column: 16, scope: !2892)
!2903 = !DILocation(line: 783, column: 13, scope: !2892)
!2904 = !DILocation(line: 783, column: 3, scope: !2892)
!2905 = distinct !DISubprogram(name: "const1_operand", scope: !1, file: !1, line: 803, type: !2131, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2906)
!2906 = !{!2907, !2908}
!2907 = !DILocalVariable(name: "op", arg: 1, scope: !2905, file: !1, line: 803, type: !613)
!2908 = !DILocalVariable(name: "mode", arg: 2, scope: !2905, file: !1, line: 803, type: !3)
!2909 = !DILocation(line: 0, scope: !2905)
!2910 = !DILocation(line: 805, column: 11, scope: !2905)
!2911 = !DILocation(line: 805, column: 25, scope: !2905)
!2912 = !DILocation(line: 805, column: 39, scope: !2905)
!2913 = !DILocation(line: 805, column: 3, scope: !2905)
!2914 = distinct !DISubprogram(name: "const8_operand", scope: !1, file: !1, line: 811, type: !2131, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2915)
!2915 = !{!2916, !2917}
!2916 = !DILocalVariable(name: "op", arg: 1, scope: !2914, file: !1, line: 811, type: !613)
!2917 = !DILocalVariable(name: "mode", arg: 2, scope: !2914, file: !1, line: 811, type: !3)
!2918 = !DILocation(line: 0, scope: !2914)
!2919 = !DILocation(line: 813, column: 11, scope: !2914)
!2920 = !DILocation(line: 813, column: 25, scope: !2914)
!2921 = !DILocation(line: 813, column: 39, scope: !2914)
!2922 = !DILocation(line: 815, column: 2, scope: !2914)
!2923 = !DILocation(line: 815, column: 14, scope: !2914)
!2924 = !DILocation(line: 813, column: 3, scope: !2914)
!2925 = distinct !DISubprogram(name: "const128_operand", scope: !1, file: !1, line: 819, type: !2131, scopeLine: 820, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2926)
!2926 = !{!2927, !2928}
!2927 = !DILocalVariable(name: "op", arg: 1, scope: !2925, file: !1, line: 819, type: !613)
!2928 = !DILocalVariable(name: "mode", arg: 2, scope: !2925, file: !1, line: 819, type: !3)
!2929 = !DILocation(line: 0, scope: !2925)
!2930 = !DILocation(line: 821, column: 11, scope: !2925)
!2931 = !DILocation(line: 821, column: 25, scope: !2925)
!2932 = !DILocation(line: 821, column: 39, scope: !2925)
!2933 = !DILocation(line: 823, column: 2, scope: !2925)
!2934 = !DILocation(line: 823, column: 14, scope: !2925)
!2935 = !DILocation(line: 821, column: 3, scope: !2925)
!2936 = distinct !DISubprogram(name: "const248_operand", scope: !1, file: !1, line: 835, type: !2131, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2937)
!2937 = !{!2938, !2939}
!2938 = !DILocalVariable(name: "op", arg: 1, scope: !2936, file: !1, line: 835, type: !613)
!2939 = !DILocalVariable(name: "mode", arg: 2, scope: !2936, file: !1, line: 835, type: !3)
!2940 = !DILocation(line: 0, scope: !2936)
!2941 = !DILocation(line: 837, column: 11, scope: !2936)
!2942 = !DILocation(line: 837, column: 25, scope: !2936)
!2943 = !DILocation(line: 837, column: 39, scope: !2936)
!2944 = !DILocation(line: 838, column: 2, scope: !2936)
!2945 = !DILocation(line: 837, column: 3, scope: !2936)
!2946 = distinct !DISubprogram(name: "const248_operand_1", scope: !1, file: !1, line: 827, type: !2131, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2947)
!2947 = !{!2948, !2949, !2950}
!2948 = !DILocalVariable(name: "op", arg: 1, scope: !2946, file: !1, line: 827, type: !613)
!2949 = !DILocalVariable(name: "mode", arg: 2, scope: !2946, file: !1, line: 827, type: !3)
!2950 = !DILocalVariable(name: "i", scope: !2946, file: !1, line: 830, type: !612)
!2951 = !DILocation(line: 0, scope: !2946)
!2952 = !DILocation(line: 830, column: 21, scope: !2946)
!2953 = !DILocation(line: 831, column: 17, scope: !2946)
!2954 = !DILocation(line: 831, column: 27, scope: !2946)
!2955 = !DILocation(line: 831, column: 3, scope: !2946)
!2956 = distinct !DISubprogram(name: "const_0_to_1_operand", scope: !1, file: !1, line: 842, type: !2131, scopeLine: 843, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2957)
!2957 = !{!2958, !2959}
!2958 = !DILocalVariable(name: "op", arg: 1, scope: !2956, file: !1, line: 842, type: !613)
!2959 = !DILocalVariable(name: "mode", arg: 2, scope: !2956, file: !1, line: 842, type: !3)
!2960 = !DILocation(line: 0, scope: !2956)
!2961 = !DILocation(line: 844, column: 11, scope: !2956)
!2962 = !DILocation(line: 844, column: 25, scope: !2956)
!2963 = !DILocation(line: 844, column: 39, scope: !2956)
!2964 = !DILocation(line: 846, column: 8, scope: !2956)
!2965 = !DILocation(line: 846, column: 5, scope: !2956)
!2966 = !DILocation(line: 846, column: 19, scope: !2956)
!2967 = !DILocation(line: 844, column: 3, scope: !2956)
!2968 = distinct !DISubprogram(name: "const_0_to_3_operand", scope: !1, file: !1, line: 850, type: !2131, scopeLine: 851, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2969)
!2969 = !{!2970, !2971}
!2970 = !DILocalVariable(name: "op", arg: 1, scope: !2968, file: !1, line: 850, type: !613)
!2971 = !DILocalVariable(name: "mode", arg: 2, scope: !2968, file: !1, line: 850, type: !3)
!2972 = !DILocation(line: 0, scope: !2968)
!2973 = !DILocation(line: 852, column: 11, scope: !2968)
!2974 = !DILocation(line: 852, column: 25, scope: !2968)
!2975 = !DILocation(line: 852, column: 39, scope: !2968)
!2976 = !DILocation(line: 854, column: 2, scope: !2968)
!2977 = !DILocation(line: 852, column: 3, scope: !2968)
!2978 = distinct !DISubprogram(name: "const_0_to_7_operand", scope: !1, file: !1, line: 858, type: !2131, scopeLine: 859, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2979)
!2979 = !{!2980, !2981}
!2980 = !DILocalVariable(name: "op", arg: 1, scope: !2978, file: !1, line: 858, type: !613)
!2981 = !DILocalVariable(name: "mode", arg: 2, scope: !2978, file: !1, line: 858, type: !3)
!2982 = !DILocation(line: 0, scope: !2978)
!2983 = !DILocation(line: 860, column: 11, scope: !2978)
!2984 = !DILocation(line: 860, column: 25, scope: !2978)
!2985 = !DILocation(line: 860, column: 39, scope: !2978)
!2986 = !DILocation(line: 862, column: 2, scope: !2978)
!2987 = !DILocation(line: 860, column: 3, scope: !2978)
!2988 = distinct !DISubprogram(name: "const_0_to_15_operand", scope: !1, file: !1, line: 866, type: !2131, scopeLine: 867, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2989)
!2989 = !{!2990, !2991}
!2990 = !DILocalVariable(name: "op", arg: 1, scope: !2988, file: !1, line: 866, type: !613)
!2991 = !DILocalVariable(name: "mode", arg: 2, scope: !2988, file: !1, line: 866, type: !3)
!2992 = !DILocation(line: 0, scope: !2988)
!2993 = !DILocation(line: 868, column: 11, scope: !2988)
!2994 = !DILocation(line: 868, column: 25, scope: !2988)
!2995 = !DILocation(line: 868, column: 39, scope: !2988)
!2996 = !DILocation(line: 870, column: 2, scope: !2988)
!2997 = !DILocation(line: 868, column: 3, scope: !2988)
!2998 = distinct !DISubprogram(name: "const_0_to_31_operand", scope: !1, file: !1, line: 874, type: !2131, scopeLine: 875, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2999)
!2999 = !{!3000, !3001}
!3000 = !DILocalVariable(name: "op", arg: 1, scope: !2998, file: !1, line: 874, type: !613)
!3001 = !DILocalVariable(name: "mode", arg: 2, scope: !2998, file: !1, line: 874, type: !3)
!3002 = !DILocation(line: 0, scope: !2998)
!3003 = !DILocation(line: 876, column: 11, scope: !2998)
!3004 = !DILocation(line: 876, column: 25, scope: !2998)
!3005 = !DILocation(line: 876, column: 39, scope: !2998)
!3006 = !DILocation(line: 878, column: 2, scope: !2998)
!3007 = !DILocation(line: 876, column: 3, scope: !2998)
!3008 = distinct !DISubprogram(name: "const_0_to_63_operand", scope: !1, file: !1, line: 882, type: !2131, scopeLine: 883, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3009)
!3009 = !{!3010, !3011}
!3010 = !DILocalVariable(name: "op", arg: 1, scope: !3008, file: !1, line: 882, type: !613)
!3011 = !DILocalVariable(name: "mode", arg: 2, scope: !3008, file: !1, line: 882, type: !3)
!3012 = !DILocation(line: 0, scope: !3008)
!3013 = !DILocation(line: 884, column: 11, scope: !3008)
!3014 = !DILocation(line: 884, column: 25, scope: !3008)
!3015 = !DILocation(line: 884, column: 39, scope: !3008)
!3016 = !DILocation(line: 886, column: 2, scope: !3008)
!3017 = !DILocation(line: 884, column: 3, scope: !3008)
!3018 = distinct !DISubprogram(name: "const_0_to_255_operand", scope: !1, file: !1, line: 890, type: !2131, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3019)
!3019 = !{!3020, !3021}
!3020 = !DILocalVariable(name: "op", arg: 1, scope: !3018, file: !1, line: 890, type: !613)
!3021 = !DILocalVariable(name: "mode", arg: 2, scope: !3018, file: !1, line: 890, type: !3)
!3022 = !DILocation(line: 0, scope: !3018)
!3023 = !DILocation(line: 892, column: 11, scope: !3018)
!3024 = !DILocation(line: 892, column: 25, scope: !3018)
!3025 = !DILocation(line: 892, column: 39, scope: !3018)
!3026 = !DILocation(line: 894, column: 2, scope: !3018)
!3027 = !DILocation(line: 892, column: 3, scope: !3018)
!3028 = distinct !DISubprogram(name: "const_0_to_255_mul_8_operand", scope: !1, file: !1, line: 906, type: !2131, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3029)
!3029 = !{!3030, !3031}
!3030 = !DILocalVariable(name: "op", arg: 1, scope: !3028, file: !1, line: 906, type: !613)
!3031 = !DILocalVariable(name: "mode", arg: 2, scope: !3028, file: !1, line: 906, type: !3)
!3032 = !DILocation(line: 0, scope: !3028)
!3033 = !DILocation(line: 908, column: 11, scope: !3028)
!3034 = !DILocation(line: 908, column: 25, scope: !3028)
!3035 = !DILocation(line: 908, column: 39, scope: !3028)
!3036 = !DILocation(line: 909, column: 2, scope: !3028)
!3037 = !DILocation(line: 908, column: 3, scope: !3028)
!3038 = distinct !DISubprogram(name: "const_0_to_255_mul_8_operand_1", scope: !1, file: !1, line: 898, type: !2131, scopeLine: 900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3039)
!3039 = !{!3040, !3041, !3042}
!3040 = !DILocalVariable(name: "op", arg: 1, scope: !3038, file: !1, line: 898, type: !613)
!3041 = !DILocalVariable(name: "mode", arg: 2, scope: !3038, file: !1, line: 898, type: !3)
!3042 = !DILocalVariable(name: "val", scope: !3038, file: !1, line: 901, type: !611)
!3043 = !DILocation(line: 0, scope: !3038)
!3044 = !DILocation(line: 901, column: 32, scope: !3038)
!3045 = !DILocation(line: 902, column: 14, scope: !3038)
!3046 = !DILocation(line: 902, column: 23, scope: !3038)
!3047 = !DILocation(line: 902, column: 30, scope: !3038)
!3048 = !DILocation(line: 902, column: 34, scope: !3038)
!3049 = !DILocation(line: 902, column: 3, scope: !3038)
!3050 = distinct !DISubprogram(name: "const_1_to_31_operand", scope: !1, file: !1, line: 913, type: !2131, scopeLine: 914, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3051)
!3051 = !{!3052, !3053}
!3052 = !DILocalVariable(name: "op", arg: 1, scope: !3050, file: !1, line: 913, type: !613)
!3053 = !DILocalVariable(name: "mode", arg: 2, scope: !3050, file: !1, line: 913, type: !3)
!3054 = !DILocation(line: 0, scope: !3050)
!3055 = !DILocation(line: 915, column: 11, scope: !3050)
!3056 = !DILocation(line: 915, column: 25, scope: !3050)
!3057 = !DILocation(line: 915, column: 39, scope: !3050)
!3058 = !DILocation(line: 917, column: 2, scope: !3050)
!3059 = !DILocation(line: 915, column: 3, scope: !3050)
!3060 = distinct !DISubprogram(name: "const_1_to_63_operand", scope: !1, file: !1, line: 921, type: !2131, scopeLine: 922, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3061)
!3061 = !{!3062, !3063}
!3062 = !DILocalVariable(name: "op", arg: 1, scope: !3060, file: !1, line: 921, type: !613)
!3063 = !DILocalVariable(name: "mode", arg: 2, scope: !3060, file: !1, line: 921, type: !3)
!3064 = !DILocation(line: 0, scope: !3060)
!3065 = !DILocation(line: 923, column: 11, scope: !3060)
!3066 = !DILocation(line: 923, column: 25, scope: !3060)
!3067 = !DILocation(line: 923, column: 39, scope: !3060)
!3068 = !DILocation(line: 925, column: 2, scope: !3060)
!3069 = !DILocation(line: 923, column: 3, scope: !3060)
!3070 = distinct !DISubprogram(name: "const_2_to_3_operand", scope: !1, file: !1, line: 929, type: !2131, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3071)
!3071 = !{!3072, !3073}
!3072 = !DILocalVariable(name: "op", arg: 1, scope: !3070, file: !1, line: 929, type: !613)
!3073 = !DILocalVariable(name: "mode", arg: 2, scope: !3070, file: !1, line: 929, type: !3)
!3074 = !DILocation(line: 0, scope: !3070)
!3075 = !DILocation(line: 931, column: 11, scope: !3070)
!3076 = !DILocation(line: 931, column: 25, scope: !3070)
!3077 = !DILocation(line: 931, column: 39, scope: !3070)
!3078 = !DILocation(line: 933, column: 2, scope: !3070)
!3079 = !DILocation(line: 931, column: 3, scope: !3070)
!3080 = distinct !DISubprogram(name: "const_4_to_5_operand", scope: !1, file: !1, line: 937, type: !2131, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3081)
!3081 = !{!3082, !3083}
!3082 = !DILocalVariable(name: "op", arg: 1, scope: !3080, file: !1, line: 937, type: !613)
!3083 = !DILocalVariable(name: "mode", arg: 2, scope: !3080, file: !1, line: 937, type: !3)
!3084 = !DILocation(line: 0, scope: !3080)
!3085 = !DILocation(line: 939, column: 11, scope: !3080)
!3086 = !DILocation(line: 939, column: 25, scope: !3080)
!3087 = !DILocation(line: 939, column: 39, scope: !3080)
!3088 = !DILocation(line: 941, column: 2, scope: !3080)
!3089 = !DILocation(line: 939, column: 3, scope: !3080)
!3090 = distinct !DISubprogram(name: "const_4_to_7_operand", scope: !1, file: !1, line: 945, type: !2131, scopeLine: 946, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3091)
!3091 = !{!3092, !3093}
!3092 = !DILocalVariable(name: "op", arg: 1, scope: !3090, file: !1, line: 945, type: !613)
!3093 = !DILocalVariable(name: "mode", arg: 2, scope: !3090, file: !1, line: 945, type: !3)
!3094 = !DILocation(line: 0, scope: !3090)
!3095 = !DILocation(line: 947, column: 11, scope: !3090)
!3096 = !DILocation(line: 947, column: 25, scope: !3090)
!3097 = !DILocation(line: 947, column: 39, scope: !3090)
!3098 = !DILocation(line: 949, column: 2, scope: !3090)
!3099 = !DILocation(line: 947, column: 3, scope: !3090)
!3100 = distinct !DISubprogram(name: "const_6_to_7_operand", scope: !1, file: !1, line: 953, type: !2131, scopeLine: 954, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3101)
!3101 = !{!3102, !3103}
!3102 = !DILocalVariable(name: "op", arg: 1, scope: !3100, file: !1, line: 953, type: !613)
!3103 = !DILocalVariable(name: "mode", arg: 2, scope: !3100, file: !1, line: 953, type: !3)
!3104 = !DILocation(line: 0, scope: !3100)
!3105 = !DILocation(line: 955, column: 11, scope: !3100)
!3106 = !DILocation(line: 955, column: 25, scope: !3100)
!3107 = !DILocation(line: 955, column: 39, scope: !3100)
!3108 = !DILocation(line: 957, column: 2, scope: !3100)
!3109 = !DILocation(line: 955, column: 3, scope: !3100)
!3110 = distinct !DISubprogram(name: "const_8_to_11_operand", scope: !1, file: !1, line: 961, type: !2131, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3111)
!3111 = !{!3112, !3113}
!3112 = !DILocalVariable(name: "op", arg: 1, scope: !3110, file: !1, line: 961, type: !613)
!3113 = !DILocalVariable(name: "mode", arg: 2, scope: !3110, file: !1, line: 961, type: !3)
!3114 = !DILocation(line: 0, scope: !3110)
!3115 = !DILocation(line: 963, column: 11, scope: !3110)
!3116 = !DILocation(line: 963, column: 25, scope: !3110)
!3117 = !DILocation(line: 963, column: 39, scope: !3110)
!3118 = !DILocation(line: 965, column: 2, scope: !3110)
!3119 = !DILocation(line: 963, column: 3, scope: !3110)
!3120 = distinct !DISubprogram(name: "const_12_to_15_operand", scope: !1, file: !1, line: 969, type: !2131, scopeLine: 970, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3121)
!3121 = !{!3122, !3123}
!3122 = !DILocalVariable(name: "op", arg: 1, scope: !3120, file: !1, line: 969, type: !613)
!3123 = !DILocalVariable(name: "mode", arg: 2, scope: !3120, file: !1, line: 969, type: !3)
!3124 = !DILocation(line: 0, scope: !3120)
!3125 = !DILocation(line: 971, column: 11, scope: !3120)
!3126 = !DILocation(line: 971, column: 25, scope: !3120)
!3127 = !DILocation(line: 971, column: 39, scope: !3120)
!3128 = !DILocation(line: 973, column: 2, scope: !3120)
!3129 = !DILocation(line: 971, column: 3, scope: !3120)
!3130 = distinct !DISubprogram(name: "const_pow2_1_to_2_operand", scope: !1, file: !1, line: 977, type: !2131, scopeLine: 978, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3131)
!3131 = !{!3132, !3133}
!3132 = !DILocalVariable(name: "op", arg: 1, scope: !3130, file: !1, line: 977, type: !613)
!3133 = !DILocalVariable(name: "mode", arg: 2, scope: !3130, file: !1, line: 977, type: !3)
!3134 = !DILocation(line: 0, scope: !3130)
!3135 = !DILocation(line: 979, column: 11, scope: !3130)
!3136 = !DILocation(line: 979, column: 25, scope: !3130)
!3137 = !DILocation(line: 979, column: 39, scope: !3130)
!3138 = !DILocation(line: 981, column: 2, scope: !3130)
!3139 = !DILocation(line: 981, column: 14, scope: !3130)
!3140 = !DILocation(line: 981, column: 19, scope: !3130)
!3141 = !DILocation(line: 981, column: 34, scope: !3130)
!3142 = !DILocation(line: 979, column: 3, scope: !3130)
!3143 = distinct !DISubprogram(name: "const_pow2_1_to_8_operand", scope: !1, file: !1, line: 993, type: !2131, scopeLine: 994, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3144)
!3144 = !{!3145, !3146}
!3145 = !DILocalVariable(name: "op", arg: 1, scope: !3143, file: !1, line: 993, type: !613)
!3146 = !DILocalVariable(name: "mode", arg: 2, scope: !3143, file: !1, line: 993, type: !3)
!3147 = !DILocation(line: 0, scope: !3143)
!3148 = !DILocation(line: 995, column: 11, scope: !3143)
!3149 = !DILocation(line: 995, column: 25, scope: !3143)
!3150 = !DILocation(line: 995, column: 39, scope: !3143)
!3151 = !DILocation(line: 996, column: 2, scope: !3143)
!3152 = !DILocation(line: 995, column: 3, scope: !3143)
!3153 = distinct !DISubprogram(name: "const_pow2_1_to_8_operand_1", scope: !1, file: !1, line: 985, type: !2131, scopeLine: 987, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3154)
!3154 = !{!3155, !3156, !3157}
!3155 = !DILocalVariable(name: "op", arg: 1, scope: !3153, file: !1, line: 985, type: !613)
!3156 = !DILocalVariable(name: "mode", arg: 2, scope: !3153, file: !1, line: 985, type: !3)
!3157 = !DILocalVariable(name: "log", scope: !3153, file: !1, line: 988, type: !5)
!3158 = !DILocation(line: 0, scope: !3153)
!3159 = !DILocation(line: 988, column: 34, scope: !3153)
!3160 = !DILocation(line: 988, column: 22, scope: !3153)
!3161 = !DILocation(line: 989, column: 14, scope: !3153)
!3162 = !DILocation(line: 989, column: 3, scope: !3153)
!3163 = distinct !DISubprogram(name: "const_pow2_1_to_128_operand", scope: !1, file: !1, line: 1008, type: !2131, scopeLine: 1009, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3164)
!3164 = !{!3165, !3166}
!3165 = !DILocalVariable(name: "op", arg: 1, scope: !3163, file: !1, line: 1008, type: !613)
!3166 = !DILocalVariable(name: "mode", arg: 2, scope: !3163, file: !1, line: 1008, type: !3)
!3167 = !DILocation(line: 0, scope: !3163)
!3168 = !DILocation(line: 1010, column: 11, scope: !3163)
!3169 = !DILocation(line: 1010, column: 25, scope: !3163)
!3170 = !DILocation(line: 1010, column: 39, scope: !3163)
!3171 = !DILocation(line: 1011, column: 2, scope: !3163)
!3172 = !DILocation(line: 1010, column: 3, scope: !3163)
!3173 = distinct !DISubprogram(name: "const_pow2_1_to_128_operand_1", scope: !1, file: !1, line: 1000, type: !2131, scopeLine: 1002, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3174)
!3174 = !{!3175, !3176, !3177}
!3175 = !DILocalVariable(name: "op", arg: 1, scope: !3173, file: !1, line: 1000, type: !613)
!3176 = !DILocalVariable(name: "mode", arg: 2, scope: !3173, file: !1, line: 1000, type: !3)
!3177 = !DILocalVariable(name: "log", scope: !3173, file: !1, line: 1003, type: !5)
!3178 = !DILocation(line: 0, scope: !3173)
!3179 = !DILocation(line: 1003, column: 34, scope: !3173)
!3180 = !DILocation(line: 1003, column: 22, scope: !3173)
!3181 = !DILocation(line: 1004, column: 14, scope: !3173)
!3182 = !DILocation(line: 1004, column: 3, scope: !3173)
!3183 = distinct !DISubprogram(name: "const_pow2_1_to_32768_operand", scope: !1, file: !1, line: 1023, type: !2131, scopeLine: 1024, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3184)
!3184 = !{!3185, !3186}
!3185 = !DILocalVariable(name: "op", arg: 1, scope: !3183, file: !1, line: 1023, type: !613)
!3186 = !DILocalVariable(name: "mode", arg: 2, scope: !3183, file: !1, line: 1023, type: !3)
!3187 = !DILocation(line: 0, scope: !3183)
!3188 = !DILocation(line: 1025, column: 11, scope: !3183)
!3189 = !DILocation(line: 1025, column: 25, scope: !3183)
!3190 = !DILocation(line: 1025, column: 39, scope: !3183)
!3191 = !DILocation(line: 1026, column: 2, scope: !3183)
!3192 = !DILocation(line: 1025, column: 3, scope: !3183)
!3193 = distinct !DISubprogram(name: "const_pow2_1_to_32768_operand_1", scope: !1, file: !1, line: 1015, type: !2131, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3194)
!3194 = !{!3195, !3196, !3197}
!3195 = !DILocalVariable(name: "op", arg: 1, scope: !3193, file: !1, line: 1015, type: !613)
!3196 = !DILocalVariable(name: "mode", arg: 2, scope: !3193, file: !1, line: 1015, type: !3)
!3197 = !DILocalVariable(name: "log", scope: !3193, file: !1, line: 1018, type: !5)
!3198 = !DILocation(line: 0, scope: !3193)
!3199 = !DILocation(line: 1018, column: 34, scope: !3193)
!3200 = !DILocation(line: 1018, column: 22, scope: !3193)
!3201 = !DILocation(line: 1019, column: 14, scope: !3193)
!3202 = !DILocation(line: 1019, column: 3, scope: !3193)
!3203 = distinct !DISubprogram(name: "incdec_operand", scope: !1, file: !1, line: 1041, type: !2131, scopeLine: 1042, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3204)
!3204 = !{!3205, !3206}
!3205 = !DILocalVariable(name: "op", arg: 1, scope: !3203, file: !1, line: 1041, type: !613)
!3206 = !DILocalVariable(name: "mode", arg: 2, scope: !3203, file: !1, line: 1041, type: !3)
!3207 = !DILocation(line: 0, scope: !3203)
!3208 = !DILocation(line: 1043, column: 11, scope: !3203)
!3209 = !DILocation(line: 1043, column: 25, scope: !3203)
!3210 = !DILocation(line: 1043, column: 39, scope: !3203)
!3211 = !DILocation(line: 1044, column: 2, scope: !3203)
!3212 = !DILocation(line: 1043, column: 3, scope: !3203)
!3213 = distinct !DISubprogram(name: "incdec_operand_1", scope: !1, file: !1, line: 1030, type: !2131, scopeLine: 1032, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3214)
!3214 = !{!3215, !3216}
!3215 = !DILocalVariable(name: "op", arg: 1, scope: !3213, file: !1, line: 1030, type: !613)
!3216 = !DILocalVariable(name: "mode", arg: 2, scope: !3213, file: !1, line: 1030, type: !3)
!3217 = !DILocation(line: 0, scope: !3213)
!3218 = !DILocation(line: 1035, column: 8, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3213, file: !1, line: 1035, column: 7)
!3220 = !DILocation(line: 1035, column: 26, scope: !3219)
!3221 = !DILocation(line: 1035, column: 30, scope: !3219)
!3222 = !DILocation(line: 1035, column: 7, scope: !3213)
!3223 = !DILocation(line: 1037, column: 16, scope: !3213)
!3224 = !DILocation(line: 1037, column: 13, scope: !3213)
!3225 = !DILocation(line: 1037, column: 27, scope: !3213)
!3226 = !DILocation(line: 1037, column: 3, scope: !3213)
!3227 = !DILocation(line: 1038, column: 1, scope: !3213)
!3228 = distinct !DISubprogram(name: "reg_or_pm1_operand", scope: !1, file: !1, line: 1048, type: !2131, scopeLine: 1049, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3229)
!3229 = !{!3230, !3231}
!3230 = !DILocalVariable(name: "op", arg: 1, scope: !3228, file: !1, line: 1048, type: !613)
!3231 = !DILocalVariable(name: "mode", arg: 2, scope: !3228, file: !1, line: 1048, type: !3)
!3232 = !DILocation(line: 0, scope: !3228)
!3233 = !DILocation(line: 1050, column: 11, scope: !3228)
!3234 = !DILocation(line: 1050, column: 40, scope: !3228)
!3235 = !DILocation(line: 1050, column: 45, scope: !3228)
!3236 = !DILocation(line: 1050, column: 59, scope: !3228)
!3237 = !DILocation(line: 1050, column: 73, scope: !3228)
!3238 = !DILocation(line: 1052, column: 8, scope: !3228)
!3239 = !DILocation(line: 1052, column: 5, scope: !3228)
!3240 = !DILocation(line: 1052, column: 19, scope: !3228)
!3241 = !DILocation(line: 1050, column: 3, scope: !3228)
!3242 = distinct !DISubprogram(name: "shiftdi_operand", scope: !1, file: !1, line: 1056, type: !2131, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3243)
!3243 = !{!3244, !3245}
!3244 = !DILocalVariable(name: "op", arg: 1, scope: !3242, file: !1, line: 1056, type: !613)
!3245 = !DILocalVariable(name: "mode", arg: 2, scope: !3242, file: !1, line: 1056, type: !3)
!3246 = !DILocation(line: 0, scope: !3242)
!3247 = !DILocation(line: 1060, column: 56, scope: !3242)
!3248 = !DILocation(line: 1058, column: 3, scope: !3242)
!3249 = distinct !DISubprogram(name: "ashldi_input_operand", scope: !1, file: !1, line: 1064, type: !2131, scopeLine: 1065, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3250)
!3250 = !{!3251, !3252}
!3251 = !DILocalVariable(name: "op", arg: 1, scope: !3249, file: !1, line: 1064, type: !613)
!3252 = !DILocalVariable(name: "mode", arg: 2, scope: !3249, file: !1, line: 1064, type: !3)
!3253 = !DILocation(line: 0, scope: !3249)
!3254 = !DILocation(line: 1068, column: 56, scope: !3249)
!3255 = !DILocation(line: 1066, column: 3, scope: !3249)
!3256 = distinct !DISubprogram(name: "zero_extended_scalar_load_operand", scope: !1, file: !1, line: 1093, type: !2131, scopeLine: 1094, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3257)
!3257 = !{!3258, !3259}
!3258 = !DILocalVariable(name: "op", arg: 1, scope: !3256, file: !1, line: 1093, type: !613)
!3259 = !DILocalVariable(name: "mode", arg: 2, scope: !3256, file: !1, line: 1093, type: !3)
!3260 = !DILocation(line: 0, scope: !3256)
!3261 = !DILocation(line: 1095, column: 12, scope: !3256)
!3262 = !DILocation(line: 1095, column: 26, scope: !3256)
!3263 = !DILocation(line: 1095, column: 34, scope: !3256)
!3264 = !DILocation(line: 1096, column: 2, scope: !3256)
!3265 = !DILocation(line: 1096, column: 52, scope: !3256)
!3266 = !DILocation(line: 1097, column: 7, scope: !3256)
!3267 = !DILocation(line: 1097, column: 19, scope: !3256)
!3268 = !DILocation(line: 1097, column: 22, scope: !3256)
!3269 = !DILocation(line: 1097, column: 36, scope: !3256)
!3270 = !DILocation(line: 1095, column: 3, scope: !3256)
!3271 = distinct !DISubprogram(name: "zero_extended_scalar_load_operand_1", scope: !1, file: !1, line: 1072, type: !2131, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3272)
!3272 = !{!3273, !3274, !3275, !3276}
!3273 = !DILocalVariable(name: "op", arg: 1, scope: !3271, file: !1, line: 1072, type: !613)
!3274 = !DILocalVariable(name: "mode", arg: 2, scope: !3271, file: !1, line: 1072, type: !3)
!3275 = !DILocalVariable(name: "n_elts", scope: !3271, file: !1, line: 1075, type: !5)
!3276 = !DILocalVariable(name: "elt", scope: !3277, file: !1, line: 1085, type: !613)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !1, line: 1084, column: 5)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !1, line: 1083, column: 3)
!3279 = distinct !DILexicalBlock(scope: !3271, file: !1, line: 1083, column: 3)
!3280 = !DILocation(line: 0, scope: !3271)
!3281 = !DILocation(line: 1076, column: 8, scope: !3271)
!3282 = !DILocation(line: 1078, column: 9, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3271, file: !1, line: 1078, column: 7)
!3284 = !DILocation(line: 1078, column: 12, scope: !3283)
!3285 = !DILocation(line: 1078, column: 15, scope: !3283)
!3286 = !DILocation(line: 1078, column: 29, scope: !3283)
!3287 = !DILocation(line: 1078, column: 7, scope: !3271)
!3288 = !DILocation(line: 1081, column: 12, scope: !3271)
!3289 = !DILocation(line: 1083, column: 8, scope: !3279)
!3290 = !DILocation(line: 0, scope: !3279)
!3291 = !DILocation(line: 1083, column: 25, scope: !3278)
!3292 = !DILocation(line: 1083, column: 3, scope: !3279)
!3293 = !DILocation(line: 1085, column: 17, scope: !3277)
!3294 = !DILocation(line: 0, scope: !3277)
!3295 = !DILocation(line: 1086, column: 18, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3277, file: !1, line: 1086, column: 11)
!3297 = !DILocation(line: 1086, column: 15, scope: !3296)
!3298 = !DILocation(line: 1083, column: 3, scope: !3278)
!3299 = distinct !{!3299, !3292, !3300}
!3300 = !DILocation(line: 1088, column: 5, scope: !3279)
!3301 = !DILocation(line: 1090, column: 1, scope: !3271)
!3302 = distinct !DISubprogram(name: "vector_all_ones_operand", scope: !1, file: !1, line: 1123, type: !2131, scopeLine: 1124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3303)
!3303 = !{!3304, !3305}
!3304 = !DILocalVariable(name: "op", arg: 1, scope: !3302, file: !1, line: 1123, type: !613)
!3305 = !DILocalVariable(name: "mode", arg: 2, scope: !3302, file: !1, line: 1123, type: !3)
!3306 = !DILocation(line: 0, scope: !3302)
!3307 = !DILocation(line: 1125, column: 12, scope: !3302)
!3308 = !DILocation(line: 1125, column: 26, scope: !3302)
!3309 = !DILocation(line: 1125, column: 43, scope: !3302)
!3310 = !DILocation(line: 1126, column: 2, scope: !3302)
!3311 = !DILocation(line: 1126, column: 42, scope: !3302)
!3312 = !DILocation(line: 1127, column: 7, scope: !3302)
!3313 = !DILocation(line: 1127, column: 19, scope: !3302)
!3314 = !DILocation(line: 1127, column: 22, scope: !3302)
!3315 = !DILocation(line: 1127, column: 36, scope: !3302)
!3316 = !DILocation(line: 1125, column: 3, scope: !3302)
!3317 = distinct !DISubprogram(name: "vector_all_ones_operand_1", scope: !1, file: !1, line: 1101, type: !2131, scopeLine: 1103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3318)
!3318 = !{!3319, !3320, !3321, !3322, !3325}
!3319 = !DILocalVariable(name: "op", arg: 1, scope: !3317, file: !1, line: 1101, type: !613)
!3320 = !DILocalVariable(name: "mode", arg: 2, scope: !3317, file: !1, line: 1101, type: !3)
!3321 = !DILocalVariable(name: "nunits", scope: !3317, file: !1, line: 1104, type: !604)
!3322 = !DILocalVariable(name: "i", scope: !3323, file: !1, line: 1109, type: !604)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !1, line: 1108, column: 5)
!3324 = distinct !DILexicalBlock(scope: !3317, file: !1, line: 1106, column: 7)
!3325 = !DILocalVariable(name: "x", scope: !3326, file: !1, line: 1112, type: !613)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !1, line: 1111, column: 9)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !1, line: 1110, column: 7)
!3328 = distinct !DILexicalBlock(scope: !3323, file: !1, line: 1110, column: 7)
!3329 = !DILocation(line: 0, scope: !3317)
!3330 = !DILocation(line: 1104, column: 16, scope: !3317)
!3331 = !DILocation(line: 1106, column: 7, scope: !3324)
!3332 = !DILocation(line: 1106, column: 21, scope: !3324)
!3333 = !DILocation(line: 1107, column: 7, scope: !3324)
!3334 = !DILocation(line: 1107, column: 10, scope: !3324)
!3335 = !DILocation(line: 1107, column: 35, scope: !3324)
!3336 = !DILocation(line: 1106, column: 7, scope: !3317)
!3337 = !DILocation(line: 0, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3326, file: !1, line: 1113, column: 15)
!3339 = !DILocation(line: 1110, column: 21, scope: !3327)
!3340 = !DILocation(line: 1110, column: 7, scope: !3328)
!3341 = !DILocation(line: 0, scope: !3328)
!3342 = !DILocation(line: 0, scope: !3323)
!3343 = !DILocation(line: 1112, column: 19, scope: !3326)
!3344 = !DILocation(line: 0, scope: !3326)
!3345 = !DILocation(line: 1113, column: 17, scope: !3338)
!3346 = !DILocation(line: 1110, column: 31, scope: !3327)
!3347 = !DILocation(line: 1110, column: 7, scope: !3327)
!3348 = distinct !{!3348, !3340, !3349}
!3349 = !DILocation(line: 1115, column: 9, scope: !3328)
!3350 = !DILocation(line: 1120, column: 1, scope: !3317)
!3351 = distinct !DISubprogram(name: "vector_move_operand", scope: !1, file: !1, line: 1131, type: !2131, scopeLine: 1132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3352)
!3352 = !{!3353, !3354}
!3353 = !DILocalVariable(name: "op", arg: 1, scope: !3351, file: !1, line: 1131, type: !613)
!3354 = !DILocalVariable(name: "mode", arg: 2, scope: !3351, file: !1, line: 1131, type: !3)
!3355 = !DILocation(line: 0, scope: !3351)
!3356 = !DILocation(line: 1133, column: 11, scope: !3351)
!3357 = !DILocation(line: 1133, column: 44, scope: !3351)
!3358 = !DILocation(line: 1133, column: 48, scope: !3351)
!3359 = !DILocation(line: 1133, column: 3, scope: !3351)
!3360 = distinct !DISubprogram(name: "nonimmediate_or_sse_const_operand", scope: !1, file: !1, line: 1148, type: !2131, scopeLine: 1149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3361)
!3361 = !{!3362, !3363}
!3362 = !DILocalVariable(name: "op", arg: 1, scope: !3360, file: !1, line: 1148, type: !613)
!3363 = !DILocalVariable(name: "mode", arg: 2, scope: !3360, file: !1, line: 1148, type: !3)
!3364 = !DILocation(line: 0, scope: !3360)
!3365 = !DILocation(line: 1150, column: 11, scope: !3360)
!3366 = !DILocation(line: 1150, column: 39, scope: !3360)
!3367 = !DILocation(line: 1151, column: 2, scope: !3360)
!3368 = !DILocation(line: 1150, column: 3, scope: !3360)
!3369 = distinct !DISubprogram(name: "nonimmediate_or_sse_const_operand_1", scope: !1, file: !1, line: 1137, type: !2131, scopeLine: 1139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3370)
!3370 = !{!3371, !3372}
!3371 = !DILocalVariable(name: "op", arg: 1, scope: !3369, file: !1, line: 1137, type: !613)
!3372 = !DILocalVariable(name: "mode", arg: 2, scope: !3369, file: !1, line: 1137, type: !3)
!3373 = !DILocation(line: 0, scope: !3369)
!3374 = !DILocation(line: 1140, column: 7, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3369, file: !1, line: 1140, column: 7)
!3376 = !DILocation(line: 1140, column: 7, scope: !3369)
!3377 = !DILocation(line: 1142, column: 7, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3369, file: !1, line: 1142, column: 7)
!3379 = !DILocation(line: 1142, column: 36, scope: !3378)
!3380 = !DILocation(line: 1145, column: 1, scope: !3369)
!3381 = distinct !DISubprogram(name: "reg_or_0_operand", scope: !1, file: !1, line: 1155, type: !2131, scopeLine: 1156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3382)
!3382 = !{!3383, !3384}
!3383 = !DILocalVariable(name: "op", arg: 1, scope: !3381, file: !1, line: 1155, type: !613)
!3384 = !DILocalVariable(name: "mode", arg: 2, scope: !3381, file: !1, line: 1155, type: !3)
!3385 = !DILocation(line: 0, scope: !3381)
!3386 = !DILocation(line: 1157, column: 11, scope: !3381)
!3387 = !DILocation(line: 1157, column: 40, scope: !3381)
!3388 = !DILocation(line: 1157, column: 44, scope: !3381)
!3389 = !DILocation(line: 1157, column: 3, scope: !3381)
!3390 = distinct !DISubprogram(name: "no_seg_address_operand", scope: !1, file: !1, line: 1173, type: !2131, scopeLine: 1174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3391)
!3391 = !{!3392, !3393}
!3392 = !DILocalVariable(name: "op", arg: 1, scope: !3390, file: !1, line: 1173, type: !613)
!3393 = !DILocalVariable(name: "mode", arg: 2, scope: !3390, file: !1, line: 1173, type: !3)
!3394 = !DILocation(line: 0, scope: !3390)
!3395 = !DILocation(line: 1175, column: 11, scope: !3390)
!3396 = !DILocation(line: 1175, column: 39, scope: !3390)
!3397 = !DILocation(line: 1176, column: 2, scope: !3390)
!3398 = !DILocation(line: 1175, column: 3, scope: !3390)
!3399 = distinct !DISubprogram(name: "no_seg_address_operand_1", scope: !1, file: !1, line: 1161, type: !2131, scopeLine: 1163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3400)
!3400 = !{!3401, !3402, !3403, !3411}
!3401 = !DILocalVariable(name: "op", arg: 1, scope: !3399, file: !1, line: 1161, type: !613)
!3402 = !DILocalVariable(name: "mode", arg: 2, scope: !3399, file: !1, line: 1161, type: !3)
!3403 = !DILocalVariable(name: "parts", scope: !3399, file: !1, line: 1164, type: !3404)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ix86_address", file: !596, line: 255, size: 320, elements: !3405)
!3405 = !{!3406, !3407, !3408, !3409, !3410}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3404, file: !596, line: 257, baseType: !613, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3404, file: !596, line: 257, baseType: !613, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "disp", scope: !3404, file: !596, line: 257, baseType: !613, size: 64, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !3404, file: !596, line: 258, baseType: !612, size: 64, offset: 192)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "seg", scope: !3404, file: !596, line: 259, baseType: !595, size: 32, offset: 256)
!3411 = !DILocalVariable(name: "ok", scope: !3399, file: !1, line: 1165, type: !604)
!3412 = !DILocation(line: 0, scope: !3399)
!3413 = !DILocation(line: 1164, column: 3, scope: !3399)
!3414 = !DILocation(line: 1167, column: 8, scope: !3399)
!3415 = !DILocation(line: 1168, column: 3, scope: !3399)
!3416 = !DILocation(line: 1169, column: 16, scope: !3399)
!3417 = !DILocation(line: 1169, column: 20, scope: !3399)
!3418 = !DILocation(line: 1170, column: 1, scope: !3399)
!3419 = !DILocation(line: 1169, column: 3, scope: !3399)
!3420 = distinct !DISubprogram(name: "aligned_operand", scope: !1, file: !1, line: 1236, type: !2131, scopeLine: 1237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3421)
!3421 = !{!3422, !3423}
!3422 = !DILocalVariable(name: "op", arg: 1, scope: !3420, file: !1, line: 1236, type: !613)
!3423 = !DILocalVariable(name: "mode", arg: 2, scope: !3420, file: !1, line: 1236, type: !3)
!3424 = !DILocation(line: 0, scope: !3420)
!3425 = !DILocation(line: 1238, column: 11, scope: !3420)
!3426 = !DILocation(line: 1238, column: 39, scope: !3420)
!3427 = !DILocation(line: 1239, column: 2, scope: !3420)
!3428 = !DILocation(line: 1238, column: 3, scope: !3420)
!3429 = distinct !DISubprogram(name: "aligned_operand_1", scope: !1, file: !1, line: 1180, type: !2131, scopeLine: 1182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3430)
!3430 = !{!3431, !3432, !3433, !3434}
!3431 = !DILocalVariable(name: "op", arg: 1, scope: !3429, file: !1, line: 1180, type: !613)
!3432 = !DILocalVariable(name: "mode", arg: 2, scope: !3429, file: !1, line: 1180, type: !3)
!3433 = !DILocalVariable(name: "parts", scope: !3429, file: !1, line: 1183, type: !3404)
!3434 = !DILocalVariable(name: "ok", scope: !3429, file: !1, line: 1184, type: !604)
!3435 = !DILocation(line: 0, scope: !3429)
!3436 = !DILocation(line: 1183, column: 3, scope: !3429)
!3437 = !DILocation(line: 1187, column: 8, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3429, file: !1, line: 1187, column: 7)
!3439 = !DILocation(line: 1187, column: 7, scope: !3429)
!3440 = !DILocation(line: 1192, column: 7, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3429, file: !1, line: 1192, column: 7)
!3442 = !DILocation(line: 1192, column: 36, scope: !3441)
!3443 = !DILocation(line: 1192, column: 40, scope: !3441)
!3444 = !DILocation(line: 1192, column: 7, scope: !3429)
!3445 = !DILocation(line: 1196, column: 7, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3429, file: !1, line: 1196, column: 7)
!3447 = !DILocation(line: 1196, column: 7, scope: !3429)
!3448 = !DILocation(line: 1199, column: 7, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3429, file: !1, line: 1199, column: 7)
!3450 = !DILocation(line: 1199, column: 7, scope: !3429)
!3451 = !DILocation(line: 1202, column: 8, scope: !3429)
!3452 = !DILocation(line: 1205, column: 7, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3429, file: !1, line: 1205, column: 7)
!3454 = !DILocation(line: 1205, column: 21, scope: !3453)
!3455 = !DILocation(line: 1206, column: 7, scope: !3453)
!3456 = !DILocation(line: 1206, column: 24, scope: !3453)
!3457 = !DILocation(line: 1205, column: 7, scope: !3429)
!3458 = !DILocation(line: 1210, column: 8, scope: !3429)
!3459 = !DILocation(line: 1211, column: 3, scope: !3429)
!3460 = !DILocation(line: 1214, column: 13, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3429, file: !1, line: 1214, column: 7)
!3462 = !DILocation(line: 1214, column: 7, scope: !3461)
!3463 = !DILocation(line: 1214, column: 7, scope: !3429)
!3464 = !DILocation(line: 1216, column: 11, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !1, line: 1216, column: 11)
!3466 = distinct !DILexicalBlock(scope: !3461, file: !1, line: 1215, column: 5)
!3467 = !DILocation(line: 1216, column: 61, scope: !3465)
!3468 = !DILocation(line: 1216, column: 53, scope: !3465)
!3469 = !DILocation(line: 1216, column: 67, scope: !3465)
!3470 = !DILocation(line: 1216, column: 11, scope: !3466)
!3471 = !DILocation(line: 1219, column: 13, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3429, file: !1, line: 1219, column: 7)
!3473 = !DILocation(line: 1219, column: 7, scope: !3472)
!3474 = !DILocation(line: 1219, column: 7, scope: !3429)
!3475 = !DILocation(line: 1221, column: 11, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !1, line: 1221, column: 11)
!3477 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 1220, column: 5)
!3478 = !DILocation(line: 1221, column: 52, scope: !3476)
!3479 = !DILocation(line: 1221, column: 11, scope: !3477)
!3480 = !DILocation(line: 1224, column: 13, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3429, file: !1, line: 1224, column: 7)
!3482 = !DILocation(line: 1224, column: 7, scope: !3481)
!3483 = !DILocation(line: 1224, column: 7, scope: !3429)
!3484 = !DILocation(line: 1226, column: 12, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !1, line: 1226, column: 11)
!3486 = distinct !DILexicalBlock(scope: !3481, file: !1, line: 1225, column: 5)
!3487 = !DILocation(line: 1227, column: 4, scope: !3485)
!3488 = !DILocation(line: 1227, column: 8, scope: !3485)
!3489 = !DILocation(line: 1227, column: 28, scope: !3485)
!3490 = !DILocation(line: 1227, column: 33, scope: !3485)
!3491 = !DILocation(line: 1226, column: 11, scope: !3486)
!3492 = !DILocation(line: 1232, column: 3, scope: !3429)
!3493 = !DILocation(line: 1233, column: 1, scope: !3429)
!3494 = distinct !DISubprogram(name: "memory_displacement_operand", scope: !1, file: !1, line: 1255, type: !2131, scopeLine: 1256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3495)
!3495 = !{!3496, !3497}
!3496 = !DILocalVariable(name: "op", arg: 1, scope: !3494, file: !1, line: 1255, type: !613)
!3497 = !DILocalVariable(name: "mode", arg: 2, scope: !3494, file: !1, line: 1255, type: !3)
!3498 = !DILocation(line: 0, scope: !3494)
!3499 = !DILocation(line: 1257, column: 11, scope: !3494)
!3500 = !DILocation(line: 1257, column: 38, scope: !3494)
!3501 = !DILocation(line: 1258, column: 2, scope: !3494)
!3502 = !DILocation(line: 1257, column: 3, scope: !3494)
!3503 = distinct !DISubprogram(name: "memory_displacement_operand_1", scope: !1, file: !1, line: 1243, type: !2131, scopeLine: 1245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3504)
!3504 = !{!3505, !3506, !3507, !3508}
!3505 = !DILocalVariable(name: "op", arg: 1, scope: !3503, file: !1, line: 1243, type: !613)
!3506 = !DILocalVariable(name: "mode", arg: 2, scope: !3503, file: !1, line: 1243, type: !3)
!3507 = !DILocalVariable(name: "parts", scope: !3503, file: !1, line: 1246, type: !3404)
!3508 = !DILocalVariable(name: "ok", scope: !3503, file: !1, line: 1247, type: !604)
!3509 = !DILocation(line: 0, scope: !3503)
!3510 = !DILocation(line: 1246, column: 3, scope: !3503)
!3511 = !DILocation(line: 1249, column: 32, scope: !3503)
!3512 = !DILocation(line: 1249, column: 8, scope: !3503)
!3513 = !DILocation(line: 1250, column: 3, scope: !3503)
!3514 = !DILocation(line: 1251, column: 16, scope: !3503)
!3515 = !DILocation(line: 1251, column: 21, scope: !3503)
!3516 = !DILocation(line: 1252, column: 1, scope: !3503)
!3517 = !DILocation(line: 1251, column: 3, scope: !3503)
!3518 = distinct !DISubprogram(name: "memory_displacement_only_operand", scope: !1, file: !1, line: 1281, type: !2131, scopeLine: 1282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3519)
!3519 = !{!3520, !3521}
!3520 = !DILocalVariable(name: "op", arg: 1, scope: !3518, file: !1, line: 1281, type: !613)
!3521 = !DILocalVariable(name: "mode", arg: 2, scope: !3518, file: !1, line: 1281, type: !3)
!3522 = !DILocation(line: 0, scope: !3518)
!3523 = !DILocation(line: 1283, column: 11, scope: !3518)
!3524 = !DILocation(line: 1283, column: 38, scope: !3518)
!3525 = !DILocation(line: 1284, column: 2, scope: !3518)
!3526 = !DILocation(line: 1283, column: 3, scope: !3518)
!3527 = distinct !DISubprogram(name: "memory_displacement_only_operand_1", scope: !1, file: !1, line: 1262, type: !2131, scopeLine: 1264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3528)
!3528 = !{!3529, !3530, !3531, !3532}
!3529 = !DILocalVariable(name: "op", arg: 1, scope: !3527, file: !1, line: 1262, type: !613)
!3530 = !DILocalVariable(name: "mode", arg: 2, scope: !3527, file: !1, line: 1262, type: !3)
!3531 = !DILocalVariable(name: "parts", scope: !3527, file: !1, line: 1265, type: !3404)
!3532 = !DILocalVariable(name: "ok", scope: !3527, file: !1, line: 1266, type: !604)
!3533 = !DILocation(line: 0, scope: !3527)
!3534 = !DILocation(line: 1265, column: 3, scope: !3527)
!3535 = !DILocation(line: 1271, column: 32, scope: !3527)
!3536 = !DILocation(line: 1271, column: 8, scope: !3527)
!3537 = !DILocation(line: 1272, column: 3, scope: !3527)
!3538 = !DILocation(line: 1274, column: 13, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3527, file: !1, line: 1274, column: 7)
!3540 = !DILocation(line: 1274, column: 7, scope: !3539)
!3541 = !DILocation(line: 1274, column: 18, scope: !3539)
!3542 = !DILocation(line: 1274, column: 27, scope: !3539)
!3543 = !DILocation(line: 1274, column: 21, scope: !3539)
!3544 = !DILocation(line: 1274, column: 7, scope: !3527)
!3545 = !DILocation(line: 1277, column: 16, scope: !3527)
!3546 = !DILocation(line: 1277, column: 21, scope: !3527)
!3547 = !DILocation(line: 1277, column: 3, scope: !3527)
!3548 = !DILocation(line: 1278, column: 1, scope: !3527)
!3549 = distinct !DISubprogram(name: "cmpxchg8b_pic_memory_operand", scope: !1, file: !1, line: 1314, type: !2131, scopeLine: 1315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3550)
!3550 = !{!3551, !3552}
!3551 = !DILocalVariable(name: "op", arg: 1, scope: !3549, file: !1, line: 1314, type: !613)
!3552 = !DILocalVariable(name: "mode", arg: 2, scope: !3549, file: !1, line: 1314, type: !3)
!3553 = !DILocation(line: 0, scope: !3549)
!3554 = !DILocation(line: 1316, column: 11, scope: !3549)
!3555 = !DILocation(line: 1316, column: 38, scope: !3549)
!3556 = !DILocation(line: 1317, column: 2, scope: !3549)
!3557 = !DILocation(line: 1316, column: 3, scope: !3549)
!3558 = distinct !DISubprogram(name: "cmpxchg8b_pic_memory_operand_1", scope: !1, file: !1, line: 1288, type: !2131, scopeLine: 1290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3559)
!3559 = !{!3560, !3561, !3562, !3563}
!3560 = !DILocalVariable(name: "op", arg: 1, scope: !3558, file: !1, line: 1288, type: !613)
!3561 = !DILocalVariable(name: "mode", arg: 2, scope: !3558, file: !1, line: 1288, type: !3)
!3562 = !DILocalVariable(name: "parts", scope: !3558, file: !1, line: 1291, type: !3404)
!3563 = !DILocalVariable(name: "ok", scope: !3558, file: !1, line: 1292, type: !604)
!3564 = !DILocation(line: 0, scope: !3558)
!3565 = !DILocation(line: 1291, column: 3, scope: !3558)
!3566 = !DILocation(line: 1294, column: 32, scope: !3558)
!3567 = !DILocation(line: 1294, column: 8, scope: !3558)
!3568 = !DILocation(line: 1295, column: 3, scope: !3558)
!3569 = !DILocation(line: 1296, column: 13, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3558, file: !1, line: 1296, column: 7)
!3571 = !DILocation(line: 1296, column: 18, scope: !3570)
!3572 = !DILocation(line: 1297, column: 7, scope: !3570)
!3573 = !DILocation(line: 1297, column: 24, scope: !3570)
!3574 = !DILocation(line: 1297, column: 21, scope: !3570)
!3575 = !DILocation(line: 1298, column: 7, scope: !3570)
!3576 = !DILocation(line: 1298, column: 24, scope: !3570)
!3577 = !DILocation(line: 1298, column: 21, scope: !3570)
!3578 = !DILocation(line: 1299, column: 7, scope: !3570)
!3579 = !DILocation(line: 1299, column: 24, scope: !3570)
!3580 = !DILocation(line: 1299, column: 21, scope: !3570)
!3581 = !DILocation(line: 1300, column: 7, scope: !3570)
!3582 = !DILocation(line: 1300, column: 24, scope: !3570)
!3583 = !DILocation(line: 1300, column: 21, scope: !3570)
!3584 = !DILocation(line: 1296, column: 7, scope: !3558)
!3585 = !DILocation(line: 1303, column: 13, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3558, file: !1, line: 1303, column: 7)
!3587 = !DILocation(line: 1303, column: 19, scope: !3586)
!3588 = !DILocation(line: 1304, column: 7, scope: !3586)
!3589 = !DILocation(line: 1304, column: 22, scope: !3586)
!3590 = !DILocation(line: 1305, column: 7, scope: !3586)
!3591 = !DILocation(line: 1305, column: 22, scope: !3586)
!3592 = !DILocation(line: 1306, column: 7, scope: !3586)
!3593 = !DILocation(line: 1306, column: 22, scope: !3586)
!3594 = !DILocation(line: 1307, column: 7, scope: !3586)
!3595 = !DILocation(line: 1307, column: 22, scope: !3586)
!3596 = !DILocation(line: 1303, column: 7, scope: !3558)
!3597 = !DILocation(line: 1311, column: 1, scope: !3558)
!3598 = distinct !DISubprogram(name: "long_memory_operand", scope: !1, file: !1, line: 1321, type: !2131, scopeLine: 1322, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3599)
!3599 = !{!3600, !3601}
!3600 = !DILocalVariable(name: "op", arg: 1, scope: !3598, file: !1, line: 1321, type: !613)
!3601 = !DILocalVariable(name: "mode", arg: 2, scope: !3598, file: !1, line: 1321, type: !3)
!3602 = !DILocation(line: 0, scope: !3598)
!3603 = !DILocation(line: 1323, column: 11, scope: !3598)
!3604 = !DILocation(line: 1323, column: 38, scope: !3598)
!3605 = !DILocation(line: 1325, column: 2, scope: !3598)
!3606 = !DILocation(line: 1325, column: 29, scope: !3598)
!3607 = !DILocation(line: 1323, column: 3, scope: !3598)
!3608 = distinct !DISubprogram(name: "fcmov_comparison_operator", scope: !1, file: !1, line: 1358, type: !2131, scopeLine: 1359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3609)
!3609 = !{!3610, !3611}
!3610 = !DILocalVariable(name: "op", arg: 1, scope: !3608, file: !1, line: 1358, type: !613)
!3611 = !DILocalVariable(name: "mode", arg: 2, scope: !3608, file: !1, line: 1358, type: !3)
!3612 = !DILocation(line: 0, scope: !3608)
!3613 = !DILocation(line: 1360, column: 11, scope: !3608)
!3614 = !DILocation(line: 1360, column: 43, scope: !3608)
!3615 = !DILocation(line: 1361, column: 2, scope: !3608)
!3616 = !DILocation(line: 1360, column: 3, scope: !3608)
!3617 = distinct !DISubprogram(name: "fcmov_comparison_operator_1", scope: !1, file: !1, line: 1329, type: !2131, scopeLine: 1331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3618)
!3618 = !{!3619, !3620, !3621, !3622}
!3619 = !DILocalVariable(name: "op", arg: 1, scope: !3617, file: !1, line: 1329, type: !613)
!3620 = !DILocalVariable(name: "mode", arg: 2, scope: !3617, file: !1, line: 1329, type: !3)
!3621 = !DILocalVariable(name: "inmode", scope: !3617, file: !1, line: 1332, type: !3)
!3622 = !DILocalVariable(name: "code", scope: !3617, file: !1, line: 1333, type: !375)
!3623 = !DILocation(line: 0, scope: !3617)
!3624 = !DILocation(line: 1332, column: 30, scope: !3617)
!3625 = !DILocation(line: 1333, column: 24, scope: !3617)
!3626 = !DILocation(line: 1335, column: 26, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3617, file: !1, line: 1335, column: 7)
!3628 = !DILocation(line: 1337, column: 12, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3630, file: !1, line: 1337, column: 11)
!3630 = distinct !DILexicalBlock(scope: !3627, file: !1, line: 1336, column: 5)
!3631 = !DILocation(line: 1337, column: 11, scope: !3630)
!3632 = !DILocation(line: 1339, column: 14, scope: !3630)
!3633 = !DILocation(line: 1340, column: 5, scope: !3630)
!3634 = !DILocation(line: 1342, column: 3, scope: !3617)
!3635 = !DILocation(line: 1345, column: 28, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !1, line: 1345, column: 11)
!3637 = distinct !DILexicalBlock(scope: !3617, file: !1, line: 1343, column: 5)
!3638 = !DILocation(line: 1348, column: 7, scope: !3637)
!3639 = !DILocation(line: 1353, column: 7, scope: !3637)
!3640 = !DILocation(line: 1355, column: 1, scope: !3617)
!3641 = distinct !DISubprogram(name: "sse_comparison_operator", scope: !1, file: !1, line: 1365, type: !2131, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3642)
!3642 = !{!3643, !3644}
!3643 = !DILocalVariable(name: "op", arg: 1, scope: !3641, file: !1, line: 1365, type: !613)
!3644 = !DILocalVariable(name: "mode", arg: 2, scope: !3641, file: !1, line: 1365, type: !3)
!3645 = !DILocation(line: 0, scope: !3641)
!3646 = !DILocation(line: 1367, column: 11, scope: !3641)
!3647 = !DILocation(line: 1367, column: 3, scope: !3641)
!3648 = !DILocation(line: 1381, column: 3, scope: !3641)
!3649 = !DILocation(line: 1382, column: 1, scope: !3641)
!3650 = distinct !DISubprogram(name: "avx_comparison_float_operator", scope: !1, file: !1, line: 1385, type: !2131, scopeLine: 1386, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3651)
!3651 = !{!3652, !3653}
!3652 = !DILocalVariable(name: "op", arg: 1, scope: !3650, file: !1, line: 1385, type: !613)
!3653 = !DILocalVariable(name: "mode", arg: 2, scope: !3650, file: !1, line: 1385, type: !3)
!3654 = !DILocation(line: 0, scope: !3650)
!3655 = !DILocation(line: 1387, column: 11, scope: !3650)
!3656 = !DILocation(line: 1387, column: 3, scope: !3650)
!3657 = !DILocation(line: 1408, column: 7, scope: !3650)
!3658 = !DILocation(line: 1408, column: 19, scope: !3650)
!3659 = !DILocation(line: 1408, column: 22, scope: !3650)
!3660 = !DILocation(line: 1408, column: 36, scope: !3650)
!3661 = !DILocation(line: 1407, column: 3, scope: !3650)
!3662 = !DILocation(line: 1409, column: 1, scope: !3650)
!3663 = distinct !DISubprogram(name: "ix86_comparison_int_operator", scope: !1, file: !1, line: 1412, type: !2131, scopeLine: 1413, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3664)
!3664 = !{!3665, !3666}
!3665 = !DILocalVariable(name: "op", arg: 1, scope: !3663, file: !1, line: 1412, type: !613)
!3666 = !DILocalVariable(name: "mode", arg: 2, scope: !3663, file: !1, line: 1412, type: !3)
!3667 = !DILocation(line: 0, scope: !3663)
!3668 = !DILocation(line: 1414, column: 11, scope: !3663)
!3669 = !DILocation(line: 1414, column: 3, scope: !3663)
!3670 = !DILocation(line: 1427, column: 7, scope: !3663)
!3671 = !DILocation(line: 1427, column: 19, scope: !3663)
!3672 = !DILocation(line: 1427, column: 22, scope: !3663)
!3673 = !DILocation(line: 1427, column: 36, scope: !3663)
!3674 = !DILocation(line: 1426, column: 3, scope: !3663)
!3675 = !DILocation(line: 1428, column: 1, scope: !3663)
!3676 = distinct !DISubprogram(name: "ix86_comparison_uns_operator", scope: !1, file: !1, line: 1431, type: !2131, scopeLine: 1432, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3677)
!3677 = !{!3678, !3679}
!3678 = !DILocalVariable(name: "op", arg: 1, scope: !3676, file: !1, line: 1431, type: !613)
!3679 = !DILocalVariable(name: "mode", arg: 2, scope: !3676, file: !1, line: 1431, type: !3)
!3680 = !DILocation(line: 0, scope: !3676)
!3681 = !DILocation(line: 1433, column: 11, scope: !3676)
!3682 = !DILocation(line: 1433, column: 3, scope: !3676)
!3683 = !DILocation(line: 1446, column: 7, scope: !3676)
!3684 = !DILocation(line: 1446, column: 19, scope: !3676)
!3685 = !DILocation(line: 1446, column: 22, scope: !3676)
!3686 = !DILocation(line: 1446, column: 36, scope: !3676)
!3687 = !DILocation(line: 1445, column: 3, scope: !3676)
!3688 = !DILocation(line: 1447, column: 1, scope: !3676)
!3689 = distinct !DISubprogram(name: "bt_comparison_operator", scope: !1, file: !1, line: 1450, type: !2131, scopeLine: 1451, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3690)
!3690 = !{!3691, !3692}
!3691 = !DILocalVariable(name: "op", arg: 1, scope: !3689, file: !1, line: 1450, type: !613)
!3692 = !DILocalVariable(name: "mode", arg: 2, scope: !3689, file: !1, line: 1450, type: !3)
!3693 = !DILocation(line: 0, scope: !3689)
!3694 = !DILocation(line: 1452, column: 11, scope: !3689)
!3695 = !DILocation(line: 1452, column: 3, scope: !3689)
!3696 = !DILocation(line: 1461, column: 7, scope: !3689)
!3697 = !DILocation(line: 1461, column: 19, scope: !3689)
!3698 = !DILocation(line: 1461, column: 22, scope: !3689)
!3699 = !DILocation(line: 1461, column: 36, scope: !3689)
!3700 = !DILocation(line: 1460, column: 3, scope: !3689)
!3701 = !DILocation(line: 1462, column: 1, scope: !3689)
!3702 = distinct !DISubprogram(name: "ix86_comparison_operator", scope: !1, file: !1, line: 1501, type: !2131, scopeLine: 1502, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3703)
!3703 = !{!3704, !3705}
!3704 = !DILocalVariable(name: "op", arg: 1, scope: !3702, file: !1, line: 1501, type: !613)
!3705 = !DILocalVariable(name: "mode", arg: 2, scope: !3702, file: !1, line: 1501, type: !3)
!3706 = !DILocation(line: 0, scope: !3702)
!3707 = !DILocation(line: 1503, column: 11, scope: !3702)
!3708 = !DILocation(line: 1503, column: 43, scope: !3702)
!3709 = !DILocation(line: 1504, column: 2, scope: !3702)
!3710 = !DILocation(line: 1503, column: 3, scope: !3702)
!3711 = distinct !DISubprogram(name: "ix86_comparison_operator_1", scope: !1, file: !1, line: 1465, type: !2131, scopeLine: 1467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3712)
!3712 = !{!3713, !3714, !3715, !3716}
!3713 = !DILocalVariable(name: "op", arg: 1, scope: !3711, file: !1, line: 1465, type: !613)
!3714 = !DILocalVariable(name: "mode", arg: 2, scope: !3711, file: !1, line: 1465, type: !3)
!3715 = !DILocalVariable(name: "inmode", scope: !3711, file: !1, line: 1468, type: !3)
!3716 = !DILocalVariable(name: "code", scope: !3711, file: !1, line: 1469, type: !375)
!3717 = !DILocation(line: 0, scope: !3711)
!3718 = !DILocation(line: 1468, column: 30, scope: !3711)
!3719 = !DILocation(line: 1471, column: 26, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3711, file: !1, line: 1471, column: 7)
!3721 = !DILocation(line: 1472, column: 12, scope: !3720)
!3722 = !DILocation(line: 1472, column: 5, scope: !3720)
!3723 = !DILocation(line: 1469, column: 24, scope: !3711)
!3724 = !DILocation(line: 1474, column: 3, scope: !3711)
!3725 = !DILocation(line: 1479, column: 28, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3727, file: !1, line: 1479, column: 11)
!3727 = distinct !DILexicalBlock(scope: !3711, file: !1, line: 1475, column: 5)
!3728 = !DILocation(line: 1484, column: 28, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3727, file: !1, line: 1484, column: 11)
!3730 = !DILocation(line: 1486, column: 7, scope: !3727)
!3731 = !DILocation(line: 1488, column: 18, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3727, file: !1, line: 1488, column: 11)
!3733 = !DILocation(line: 0, scope: !3727)
!3734 = !DILocation(line: 1492, column: 28, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3727, file: !1, line: 1492, column: 11)
!3736 = !DILocation(line: 1494, column: 7, scope: !3727)
!3737 = !DILocation(line: 1496, column: 7, scope: !3727)
!3738 = !DILocation(line: 1498, column: 1, scope: !3711)
!3739 = distinct !DISubprogram(name: "ix86_carry_flag_operator", scope: !1, file: !1, line: 1529, type: !2131, scopeLine: 1530, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3740)
!3740 = !{!3741, !3742}
!3741 = !DILocalVariable(name: "op", arg: 1, scope: !3739, file: !1, line: 1529, type: !613)
!3742 = !DILocalVariable(name: "mode", arg: 2, scope: !3739, file: !1, line: 1529, type: !3)
!3743 = !DILocation(line: 0, scope: !3739)
!3744 = !DILocation(line: 1531, column: 11, scope: !3739)
!3745 = !DILocation(line: 1531, column: 3, scope: !3739)
!3746 = !DILocation(line: 1550, column: 2, scope: !3739)
!3747 = !DILocation(line: 1550, column: 42, scope: !3739)
!3748 = !DILocation(line: 1551, column: 7, scope: !3739)
!3749 = !DILocation(line: 1551, column: 19, scope: !3739)
!3750 = !DILocation(line: 1551, column: 22, scope: !3739)
!3751 = !DILocation(line: 1551, column: 36, scope: !3739)
!3752 = !DILocation(line: 1549, column: 3, scope: !3739)
!3753 = !DILocation(line: 1552, column: 1, scope: !3739)
!3754 = distinct !DISubprogram(name: "ix86_carry_flag_operator_1", scope: !1, file: !1, line: 1508, type: !2131, scopeLine: 1510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3755)
!3755 = !{!3756, !3757, !3758, !3759}
!3756 = !DILocalVariable(name: "op", arg: 1, scope: !3754, file: !1, line: 1508, type: !613)
!3757 = !DILocalVariable(name: "mode", arg: 2, scope: !3754, file: !1, line: 1508, type: !3)
!3758 = !DILocalVariable(name: "inmode", scope: !3754, file: !1, line: 1511, type: !3)
!3759 = !DILocalVariable(name: "code", scope: !3754, file: !1, line: 1512, type: !375)
!3760 = !DILocation(line: 0, scope: !3754)
!3761 = !DILocation(line: 1511, column: 30, scope: !3754)
!3762 = !DILocation(line: 1512, column: 24, scope: !3754)
!3763 = !DILocation(line: 1514, column: 26, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3754, file: !1, line: 1514, column: 7)
!3765 = !DILocation(line: 1516, column: 12, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3767, file: !1, line: 1516, column: 11)
!3767 = distinct !DILexicalBlock(scope: !3764, file: !1, line: 1515, column: 5)
!3768 = !DILocation(line: 1516, column: 11, scope: !3767)
!3769 = !DILocation(line: 1518, column: 14, scope: !3767)
!3770 = !DILocation(line: 1519, column: 5, scope: !3767)
!3771 = !DILocation(line: 1521, column: 16, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3764, file: !1, line: 1520, column: 12)
!3773 = !DILocation(line: 1521, column: 31, scope: !3772)
!3774 = !DILocation(line: 1521, column: 23, scope: !3772)
!3775 = !DILocation(line: 1521, column: 4, scope: !3772)
!3776 = !DILocation(line: 1525, column: 15, scope: !3754)
!3777 = !DILocation(line: 1525, column: 3, scope: !3754)
!3778 = !DILocation(line: 1526, column: 1, scope: !3754)
!3779 = distinct !DISubprogram(name: "ix86_trivial_fp_comparison_operator", scope: !1, file: !1, line: 1555, type: !2131, scopeLine: 1556, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3780)
!3780 = !{!3781, !3782}
!3781 = !DILocalVariable(name: "op", arg: 1, scope: !3779, file: !1, line: 1555, type: !613)
!3782 = !DILocalVariable(name: "mode", arg: 2, scope: !3779, file: !1, line: 1555, type: !3)
!3783 = !DILocation(line: 0, scope: !3779)
!3784 = !DILocation(line: 1557, column: 11, scope: !3779)
!3785 = !DILocation(line: 1557, column: 3, scope: !3779)
!3786 = !DILocation(line: 1572, column: 7, scope: !3779)
!3787 = !DILocation(line: 1572, column: 19, scope: !3779)
!3788 = !DILocation(line: 1572, column: 22, scope: !3779)
!3789 = !DILocation(line: 1572, column: 36, scope: !3779)
!3790 = !DILocation(line: 1571, column: 3, scope: !3779)
!3791 = !DILocation(line: 1573, column: 1, scope: !3779)
!3792 = distinct !DISubprogram(name: "ix86_fp_comparison_operator", scope: !1, file: !1, line: 1576, type: !2131, scopeLine: 1577, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3793)
!3793 = !{!3794, !3795}
!3794 = !DILocalVariable(name: "op", arg: 1, scope: !3792, file: !1, line: 1576, type: !613)
!3795 = !DILocalVariable(name: "mode", arg: 2, scope: !3792, file: !1, line: 1576, type: !3)
!3796 = !DILocation(line: 0, scope: !3792)
!3797 = !DILocation(line: 1580, column: 31, scope: !3792)
!3798 = !DILocation(line: 1580, column: 2, scope: !3792)
!3799 = !DILocation(line: 1581, column: 30, scope: !3792)
!3800 = !DILocation(line: 1578, column: 10, scope: !3792)
!3801 = !DILocation(line: 1581, column: 55, scope: !3792)
!3802 = !DILocation(line: 1581, column: 90, scope: !3792)
!3803 = !DILocation(line: 1578, column: 3, scope: !3792)
!3804 = distinct !DISubprogram(name: "cmp_fp_expander_operand", scope: !1, file: !1, line: 1585, type: !2131, scopeLine: 1586, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3805)
!3805 = !{!3806, !3807}
!3806 = !DILocalVariable(name: "op", arg: 1, scope: !3804, file: !1, line: 1585, type: !613)
!3807 = !DILocalVariable(name: "mode", arg: 2, scope: !3804, file: !1, line: 1585, type: !3)
!3808 = !DILocation(line: 0, scope: !3804)
!3809 = !DILocation(line: 1587, column: 11, scope: !3804)
!3810 = !DILocation(line: 1587, column: 25, scope: !3804)
!3811 = !DILocation(line: 1587, column: 42, scope: !3804)
!3812 = !DILocation(line: 1587, column: 46, scope: !3804)
!3813 = !DILocation(line: 1587, column: 3, scope: !3804)
!3814 = distinct !DISubprogram(name: "binary_fp_operator", scope: !1, file: !1, line: 1591, type: !2131, scopeLine: 1592, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3815)
!3815 = !{!3816, !3817}
!3816 = !DILocalVariable(name: "op", arg: 1, scope: !3814, file: !1, line: 1591, type: !613)
!3817 = !DILocalVariable(name: "mode", arg: 2, scope: !3814, file: !1, line: 1591, type: !3)
!3818 = !DILocation(line: 0, scope: !3814)
!3819 = !DILocation(line: 1593, column: 11, scope: !3814)
!3820 = !DILocation(line: 1593, column: 3, scope: !3814)
!3821 = !DILocation(line: 1604, column: 7, scope: !3814)
!3822 = !DILocation(line: 1604, column: 19, scope: !3814)
!3823 = !DILocation(line: 1604, column: 22, scope: !3814)
!3824 = !DILocation(line: 1604, column: 36, scope: !3814)
!3825 = !DILocation(line: 1603, column: 3, scope: !3814)
!3826 = !DILocation(line: 1605, column: 1, scope: !3814)
!3827 = distinct !DISubprogram(name: "mult_operator", scope: !1, file: !1, line: 1608, type: !2131, scopeLine: 1609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3828)
!3828 = !{!3829, !3830}
!3829 = !DILocalVariable(name: "op", arg: 1, scope: !3827, file: !1, line: 1608, type: !613)
!3830 = !DILocalVariable(name: "mode", arg: 2, scope: !3827, file: !1, line: 1608, type: !3)
!3831 = !DILocation(line: 0, scope: !3827)
!3832 = !DILocation(line: 1610, column: 11, scope: !3827)
!3833 = !DILocation(line: 1610, column: 25, scope: !3827)
!3834 = !DILocation(line: 1610, column: 34, scope: !3827)
!3835 = !DILocation(line: 1611, column: 7, scope: !3827)
!3836 = !DILocation(line: 1611, column: 19, scope: !3827)
!3837 = !DILocation(line: 1611, column: 22, scope: !3827)
!3838 = !DILocation(line: 1611, column: 36, scope: !3827)
!3839 = !DILocation(line: 1610, column: 3, scope: !3827)
!3840 = distinct !DISubprogram(name: "div_operator", scope: !1, file: !1, line: 1615, type: !2131, scopeLine: 1616, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3841)
!3841 = !{!3842, !3843}
!3842 = !DILocalVariable(name: "op", arg: 1, scope: !3840, file: !1, line: 1615, type: !613)
!3843 = !DILocalVariable(name: "mode", arg: 2, scope: !3840, file: !1, line: 1615, type: !3)
!3844 = !DILocation(line: 0, scope: !3840)
!3845 = !DILocation(line: 1617, column: 11, scope: !3840)
!3846 = !DILocation(line: 1617, column: 25, scope: !3840)
!3847 = !DILocation(line: 1617, column: 33, scope: !3840)
!3848 = !DILocation(line: 1618, column: 7, scope: !3840)
!3849 = !DILocation(line: 1618, column: 19, scope: !3840)
!3850 = !DILocation(line: 1618, column: 22, scope: !3840)
!3851 = !DILocation(line: 1618, column: 36, scope: !3840)
!3852 = !DILocation(line: 1617, column: 3, scope: !3840)
!3853 = distinct !DISubprogram(name: "float_operator", scope: !1, file: !1, line: 1622, type: !2131, scopeLine: 1623, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3854)
!3854 = !{!3855, !3856}
!3855 = !DILocalVariable(name: "op", arg: 1, scope: !3853, file: !1, line: 1622, type: !613)
!3856 = !DILocalVariable(name: "mode", arg: 2, scope: !3853, file: !1, line: 1622, type: !3)
!3857 = !DILocation(line: 0, scope: !3853)
!3858 = !DILocation(line: 1624, column: 11, scope: !3853)
!3859 = !DILocation(line: 1624, column: 25, scope: !3853)
!3860 = !DILocation(line: 1624, column: 35, scope: !3853)
!3861 = !DILocation(line: 1625, column: 7, scope: !3853)
!3862 = !DILocation(line: 1625, column: 19, scope: !3853)
!3863 = !DILocation(line: 1625, column: 22, scope: !3853)
!3864 = !DILocation(line: 1625, column: 36, scope: !3853)
!3865 = !DILocation(line: 1624, column: 3, scope: !3853)
!3866 = distinct !DISubprogram(name: "arith_or_logical_operator", scope: !1, file: !1, line: 1629, type: !2131, scopeLine: 1630, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3867)
!3867 = !{!3868, !3869}
!3868 = !DILocalVariable(name: "op", arg: 1, scope: !3866, file: !1, line: 1629, type: !613)
!3869 = !DILocalVariable(name: "mode", arg: 2, scope: !3866, file: !1, line: 1629, type: !3)
!3870 = !DILocation(line: 0, scope: !3866)
!3871 = !DILocation(line: 1631, column: 11, scope: !3866)
!3872 = !DILocation(line: 1631, column: 3, scope: !3866)
!3873 = !DILocation(line: 1658, column: 7, scope: !3866)
!3874 = !DILocation(line: 1658, column: 19, scope: !3866)
!3875 = !DILocation(line: 1658, column: 22, scope: !3866)
!3876 = !DILocation(line: 1658, column: 36, scope: !3866)
!3877 = !DILocation(line: 1657, column: 3, scope: !3866)
!3878 = !DILocation(line: 1659, column: 1, scope: !3866)
!3879 = distinct !DISubprogram(name: "commutative_operator", scope: !1, file: !1, line: 1662, type: !2131, scopeLine: 1663, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3880)
!3880 = !{!3881, !3882}
!3881 = !DILocalVariable(name: "op", arg: 1, scope: !3879, file: !1, line: 1662, type: !613)
!3882 = !DILocalVariable(name: "mode", arg: 2, scope: !3879, file: !1, line: 1662, type: !3)
!3883 = !DILocation(line: 0, scope: !3879)
!3884 = !DILocation(line: 1664, column: 11, scope: !3879)
!3885 = !DILocation(line: 1664, column: 3, scope: !3879)
!3886 = !DILocation(line: 1680, column: 7, scope: !3879)
!3887 = !DILocation(line: 1680, column: 19, scope: !3879)
!3888 = !DILocation(line: 1680, column: 22, scope: !3879)
!3889 = !DILocation(line: 1680, column: 36, scope: !3879)
!3890 = !DILocation(line: 1679, column: 3, scope: !3879)
!3891 = !DILocation(line: 1681, column: 1, scope: !3879)
!3892 = distinct !DISubprogram(name: "promotable_binary_operator", scope: !1, file: !1, line: 1684, type: !2131, scopeLine: 1685, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3893)
!3893 = !{!3894, !3895}
!3894 = !DILocalVariable(name: "op", arg: 1, scope: !3892, file: !1, line: 1684, type: !613)
!3895 = !DILocalVariable(name: "mode", arg: 2, scope: !3892, file: !1, line: 1684, type: !3)
!3896 = !DILocation(line: 0, scope: !3892)
!3897 = !DILocation(line: 1686, column: 12, scope: !3892)
!3898 = !DILocation(line: 1686, column: 26, scope: !3892)
!3899 = !DILocation(line: 1686, column: 34, scope: !3892)
!3900 = !DILocation(line: 1686, column: 51, scope: !3892)
!3901 = !DILocation(line: 1686, column: 58, scope: !3892)
!3902 = !DILocation(line: 1686, column: 75, scope: !3892)
!3903 = !DILocation(line: 1686, column: 82, scope: !3892)
!3904 = !DILocation(line: 1686, column: 99, scope: !3892)
!3905 = !DILocation(line: 1686, column: 106, scope: !3892)
!3906 = !DILocation(line: 1686, column: 123, scope: !3892)
!3907 = !DILocation(line: 1686, column: 134, scope: !3892)
!3908 = !DILocation(line: 1686, column: 153, scope: !3892)
!3909 = !DILocation(line: 1686, column: 162, scope: !3892)
!3910 = !DILocation(line: 1688, column: 2, scope: !3892)
!3911 = !DILocation(line: 1686, column: 165, scope: !3892)
!3912 = !DILocation(line: 1688, column: 38, scope: !3892)
!3913 = !DILocation(line: 1689, column: 7, scope: !3892)
!3914 = !DILocation(line: 1689, column: 19, scope: !3892)
!3915 = !DILocation(line: 1689, column: 22, scope: !3892)
!3916 = !DILocation(line: 1689, column: 36, scope: !3892)
!3917 = !DILocation(line: 1686, column: 3, scope: !3892)
!3918 = distinct !DISubprogram(name: "compare_operator", scope: !1, file: !1, line: 1693, type: !2131, scopeLine: 1694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3919)
!3919 = !{!3920, !3921}
!3920 = !DILocalVariable(name: "op", arg: 1, scope: !3918, file: !1, line: 1693, type: !613)
!3921 = !DILocalVariable(name: "mode", arg: 2, scope: !3918, file: !1, line: 1693, type: !3)
!3922 = !DILocation(line: 0, scope: !3918)
!3923 = !DILocation(line: 1695, column: 11, scope: !3918)
!3924 = !DILocation(line: 1695, column: 25, scope: !3918)
!3925 = !DILocation(line: 1695, column: 37, scope: !3918)
!3926 = !DILocation(line: 1696, column: 7, scope: !3918)
!3927 = !DILocation(line: 1696, column: 19, scope: !3918)
!3928 = !DILocation(line: 1696, column: 22, scope: !3918)
!3929 = !DILocation(line: 1696, column: 36, scope: !3918)
!3930 = !DILocation(line: 1695, column: 3, scope: !3918)
!3931 = distinct !DISubprogram(name: "absneg_operator", scope: !1, file: !1, line: 1700, type: !2131, scopeLine: 1701, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3932)
!3932 = !{!3933, !3934}
!3933 = !DILocalVariable(name: "op", arg: 1, scope: !3931, file: !1, line: 1700, type: !613)
!3934 = !DILocalVariable(name: "mode", arg: 2, scope: !3931, file: !1, line: 1700, type: !3)
!3935 = !DILocation(line: 0, scope: !3931)
!3936 = !DILocation(line: 1702, column: 11, scope: !3931)
!3937 = !DILocation(line: 1702, column: 3, scope: !3931)
!3938 = !DILocation(line: 1711, column: 7, scope: !3931)
!3939 = !DILocation(line: 1711, column: 19, scope: !3931)
!3940 = !DILocation(line: 1711, column: 22, scope: !3931)
!3941 = !DILocation(line: 1711, column: 36, scope: !3931)
!3942 = !DILocation(line: 1710, column: 3, scope: !3931)
!3943 = !DILocation(line: 1712, column: 1, scope: !3931)
!3944 = distinct !DISubprogram(name: "misaligned_operand", scope: !1, file: !1, line: 1715, type: !2131, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3945)
!3945 = !{!3946, !3947}
!3946 = !DILocalVariable(name: "op", arg: 1, scope: !3944, file: !1, line: 1715, type: !613)
!3947 = !DILocalVariable(name: "mode", arg: 2, scope: !3944, file: !1, line: 1715, type: !3)
!3948 = !DILocation(line: 0, scope: !3944)
!3949 = !DILocation(line: 1717, column: 12, scope: !3944)
!3950 = !DILocation(line: 1717, column: 26, scope: !3944)
!3951 = !DILocation(line: 1717, column: 34, scope: !3944)
!3952 = !DILocation(line: 1719, column: 2, scope: !3944)
!3953 = !DILocation(line: 1719, column: 19, scope: !3944)
!3954 = !DILocation(line: 1719, column: 17, scope: !3944)
!3955 = !DILocation(line: 1719, column: 48, scope: !3944)
!3956 = !DILocation(line: 1720, column: 7, scope: !3944)
!3957 = !DILocation(line: 1720, column: 19, scope: !3944)
!3958 = !DILocation(line: 1720, column: 22, scope: !3944)
!3959 = !DILocation(line: 1720, column: 36, scope: !3944)
!3960 = !DILocation(line: 1717, column: 3, scope: !3944)
!3961 = distinct !DISubprogram(name: "emms_operation", scope: !1, file: !1, line: 1754, type: !2131, scopeLine: 1755, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3962)
!3962 = !{!3963, !3964}
!3963 = !DILocalVariable(name: "op", arg: 1, scope: !3961, file: !1, line: 1754, type: !613)
!3964 = !DILocalVariable(name: "mode", arg: 2, scope: !3961, file: !1, line: 1754, type: !3)
!3965 = !DILocation(line: 0, scope: !3961)
!3966 = !DILocation(line: 1756, column: 12, scope: !3961)
!3967 = !DILocation(line: 1756, column: 26, scope: !3961)
!3968 = !DILocation(line: 1756, column: 39, scope: !3961)
!3969 = !DILocation(line: 1757, column: 2, scope: !3961)
!3970 = !DILocation(line: 1757, column: 33, scope: !3961)
!3971 = !DILocation(line: 1758, column: 7, scope: !3961)
!3972 = !DILocation(line: 1758, column: 19, scope: !3961)
!3973 = !DILocation(line: 1758, column: 22, scope: !3961)
!3974 = !DILocation(line: 1758, column: 36, scope: !3961)
!3975 = !DILocation(line: 1756, column: 3, scope: !3961)
!3976 = distinct !DISubprogram(name: "emms_operation_1", scope: !1, file: !1, line: 1724, type: !2131, scopeLine: 1726, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3977)
!3977 = !{!3978, !3979, !3980, !3981}
!3978 = !DILocalVariable(name: "op", arg: 1, scope: !3976, file: !1, line: 1724, type: !613)
!3979 = !DILocalVariable(name: "mode", arg: 2, scope: !3976, file: !1, line: 1724, type: !3)
!3980 = !DILocalVariable(name: "i", scope: !3976, file: !1, line: 1727, type: !5)
!3981 = !DILocalVariable(name: "elt", scope: !3982, file: !1, line: 1734, type: !613)
!3982 = distinct !DILexicalBlock(scope: !3983, file: !1, line: 1733, column: 5)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !1, line: 1732, column: 3)
!3984 = distinct !DILexicalBlock(scope: !3976, file: !1, line: 1732, column: 3)
!3985 = !DILocation(line: 0, scope: !3976)
!3986 = !DILocation(line: 1729, column: 7, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3976, file: !1, line: 1729, column: 7)
!3988 = !DILocation(line: 1729, column: 23, scope: !3987)
!3989 = !DILocation(line: 1729, column: 7, scope: !3976)
!3990 = !DILocation(line: 1732, column: 3, scope: !3984)
!3991 = !DILocation(line: 0, scope: !3984)
!3992 = !DILocation(line: 1732, column: 17, scope: !3983)
!3993 = !DILocation(line: 1734, column: 17, scope: !3982)
!3994 = !DILocation(line: 0, scope: !3982)
!3995 = !DILocation(line: 1736, column: 11, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3982, file: !1, line: 1736, column: 11)
!3997 = !DILocation(line: 1736, column: 26, scope: !3996)
!3998 = !DILocation(line: 1737, column: 4, scope: !3996)
!3999 = !DILocation(line: 1737, column: 7, scope: !3996)
!4000 = !DILocation(line: 1737, column: 33, scope: !3996)
!4001 = !DILocation(line: 1738, column: 4, scope: !3996)
!4002 = !DILocation(line: 1738, column: 7, scope: !3996)
!4003 = !DILocation(line: 1738, column: 33, scope: !3996)
!4004 = !DILocation(line: 1739, column: 4, scope: !3996)
!4005 = !DILocation(line: 1739, column: 7, scope: !3996)
!4006 = !DILocation(line: 1739, column: 49, scope: !3996)
!4007 = !DILocation(line: 1739, column: 30, scope: !3996)
!4008 = !DILocation(line: 1736, column: 11, scope: !3982)
!4009 = !DILocation(line: 1742, column: 13, scope: !3982)
!4010 = !DILocation(line: 1744, column: 11, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3982, file: !1, line: 1744, column: 11)
!4012 = !DILocation(line: 1744, column: 26, scope: !4011)
!4013 = !DILocation(line: 1745, column: 4, scope: !4011)
!4014 = !DILocation(line: 1745, column: 7, scope: !4011)
!4015 = !DILocation(line: 1745, column: 33, scope: !4011)
!4016 = !DILocation(line: 1746, column: 4, scope: !4011)
!4017 = !DILocation(line: 1746, column: 7, scope: !4011)
!4018 = !DILocation(line: 1746, column: 33, scope: !4011)
!4019 = !DILocation(line: 1747, column: 4, scope: !4011)
!4020 = !DILocation(line: 1747, column: 7, scope: !4011)
!4021 = !DILocation(line: 1747, column: 47, scope: !4011)
!4022 = !DILocation(line: 1747, column: 30, scope: !4011)
!4023 = !DILocation(line: 1744, column: 11, scope: !3982)
!4024 = !DILocation(line: 1732, column: 3, scope: !3983)
!4025 = distinct !{!4025, !3990, !4026}
!4026 = !DILocation(line: 1749, column: 5, scope: !3984)
!4027 = !DILocation(line: 1751, column: 1, scope: !3976)
!4028 = distinct !DISubprogram(name: "vzeroall_operation", scope: !1, file: !1, line: 1785, type: !2131, scopeLine: 1786, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4029)
!4029 = !{!4030, !4031}
!4030 = !DILocalVariable(name: "op", arg: 1, scope: !4028, file: !1, line: 1785, type: !613)
!4031 = !DILocalVariable(name: "mode", arg: 2, scope: !4028, file: !1, line: 1785, type: !3)
!4032 = !DILocation(line: 0, scope: !4028)
!4033 = !DILocation(line: 1787, column: 12, scope: !4028)
!4034 = !DILocation(line: 1787, column: 26, scope: !4028)
!4035 = !DILocation(line: 1787, column: 39, scope: !4028)
!4036 = !DILocation(line: 1788, column: 2, scope: !4028)
!4037 = !DILocation(line: 1788, column: 37, scope: !4028)
!4038 = !DILocation(line: 1789, column: 7, scope: !4028)
!4039 = !DILocation(line: 1789, column: 19, scope: !4028)
!4040 = !DILocation(line: 1789, column: 22, scope: !4028)
!4041 = !DILocation(line: 1789, column: 36, scope: !4028)
!4042 = !DILocation(line: 1787, column: 3, scope: !4028)
!4043 = distinct !DISubprogram(name: "vzeroall_operation_1", scope: !1, file: !1, line: 1762, type: !2131, scopeLine: 1764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4044)
!4044 = !{!4045, !4046, !4047, !4048, !4049}
!4045 = !DILocalVariable(name: "op", arg: 1, scope: !4043, file: !1, line: 1762, type: !613)
!4046 = !DILocalVariable(name: "mode", arg: 2, scope: !4043, file: !1, line: 1762, type: !3)
!4047 = !DILocalVariable(name: "i", scope: !4043, file: !1, line: 1765, type: !5)
!4048 = !DILocalVariable(name: "nregs", scope: !4043, file: !1, line: 1765, type: !5)
!4049 = !DILocalVariable(name: "elt", scope: !4050, file: !1, line: 1772, type: !613)
!4050 = distinct !DILexicalBlock(scope: !4051, file: !1, line: 1771, column: 5)
!4051 = distinct !DILexicalBlock(scope: !4052, file: !1, line: 1770, column: 3)
!4052 = distinct !DILexicalBlock(scope: !4043, file: !1, line: 1770, column: 3)
!4053 = !DILocation(line: 0, scope: !4043)
!4054 = !DILocation(line: 1767, column: 18, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4043, file: !1, line: 1767, column: 7)
!4056 = !DILocation(line: 1767, column: 34, scope: !4055)
!4057 = !DILocation(line: 1767, column: 7, scope: !4043)
!4058 = !DILocation(line: 1770, column: 3, scope: !4052)
!4059 = !DILocation(line: 0, scope: !4052)
!4060 = !DILocation(line: 1770, column: 17, scope: !4051)
!4061 = !DILocation(line: 1772, column: 17, scope: !4050)
!4062 = !DILocation(line: 0, scope: !4050)
!4063 = !DILocation(line: 1774, column: 11, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4050, file: !1, line: 1774, column: 11)
!4065 = !DILocation(line: 1774, column: 26, scope: !4064)
!4066 = !DILocation(line: 1775, column: 4, scope: !4064)
!4067 = !DILocation(line: 1775, column: 7, scope: !4064)
!4068 = !DILocation(line: 1775, column: 33, scope: !4064)
!4069 = !DILocation(line: 1776, column: 4, scope: !4064)
!4070 = !DILocation(line: 1776, column: 7, scope: !4064)
!4071 = !DILocation(line: 1776, column: 33, scope: !4064)
!4072 = !DILocation(line: 1777, column: 4, scope: !4064)
!4073 = !DILocation(line: 1777, column: 7, scope: !4064)
!4074 = !DILocation(line: 1777, column: 33, scope: !4064)
!4075 = !DILocation(line: 1777, column: 30, scope: !4064)
!4076 = !DILocation(line: 1778, column: 4, scope: !4064)
!4077 = !DILocation(line: 1778, column: 7, scope: !4064)
!4078 = !DILocation(line: 1778, column: 24, scope: !4064)
!4079 = !DILocation(line: 1778, column: 21, scope: !4064)
!4080 = !DILocation(line: 1774, column: 11, scope: !4050)
!4081 = !DILocation(line: 1770, column: 3, scope: !4051)
!4082 = distinct !{!4082, !4058, !4083}
!4083 = !DILocation(line: 1780, column: 5, scope: !4052)
!4084 = !DILocation(line: 1782, column: 1, scope: !4043)
!4085 = distinct !DISubprogram(name: "vzeroupper_operation", scope: !1, file: !1, line: 1815, type: !2131, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4086)
!4086 = !{!4087, !4088}
!4087 = !DILocalVariable(name: "op", arg: 1, scope: !4085, file: !1, line: 1815, type: !613)
!4088 = !DILocalVariable(name: "mode", arg: 2, scope: !4085, file: !1, line: 1815, type: !3)
!4089 = !DILocation(line: 0, scope: !4085)
!4090 = !DILocation(line: 1817, column: 12, scope: !4085)
!4091 = !DILocation(line: 1817, column: 26, scope: !4085)
!4092 = !DILocation(line: 1817, column: 39, scope: !4085)
!4093 = !DILocation(line: 1818, column: 2, scope: !4085)
!4094 = !DILocation(line: 1818, column: 39, scope: !4085)
!4095 = !DILocation(line: 1819, column: 7, scope: !4085)
!4096 = !DILocation(line: 1819, column: 19, scope: !4085)
!4097 = !DILocation(line: 1819, column: 22, scope: !4085)
!4098 = !DILocation(line: 1819, column: 36, scope: !4085)
!4099 = !DILocation(line: 1817, column: 3, scope: !4085)
!4100 = distinct !DISubprogram(name: "vzeroupper_operation_1", scope: !1, file: !1, line: 1793, type: !2131, scopeLine: 1795, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4101)
!4101 = !{!4102, !4103, !4104, !4105, !4106}
!4102 = !DILocalVariable(name: "op", arg: 1, scope: !4100, file: !1, line: 1793, type: !613)
!4103 = !DILocalVariable(name: "mode", arg: 2, scope: !4100, file: !1, line: 1793, type: !3)
!4104 = !DILocalVariable(name: "i", scope: !4100, file: !1, line: 1796, type: !5)
!4105 = !DILocalVariable(name: "nregs", scope: !4100, file: !1, line: 1796, type: !5)
!4106 = !DILocalVariable(name: "elt", scope: !4107, file: !1, line: 1803, type: !613)
!4107 = distinct !DILexicalBlock(scope: !4108, file: !1, line: 1802, column: 5)
!4108 = distinct !DILexicalBlock(scope: !4109, file: !1, line: 1801, column: 3)
!4109 = distinct !DILexicalBlock(scope: !4100, file: !1, line: 1801, column: 3)
!4110 = !DILocation(line: 0, scope: !4100)
!4111 = !DILocation(line: 1798, column: 18, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4100, file: !1, line: 1798, column: 7)
!4113 = !DILocation(line: 1798, column: 34, scope: !4112)
!4114 = !DILocation(line: 1798, column: 7, scope: !4100)
!4115 = !DILocation(line: 1801, column: 3, scope: !4109)
!4116 = !DILocation(line: 0, scope: !4109)
!4117 = !DILocation(line: 1801, column: 17, scope: !4108)
!4118 = !DILocation(line: 1803, column: 17, scope: !4107)
!4119 = !DILocation(line: 0, scope: !4107)
!4120 = !DILocation(line: 1805, column: 11, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4107, file: !1, line: 1805, column: 11)
!4122 = !DILocation(line: 1805, column: 26, scope: !4121)
!4123 = !DILocation(line: 1806, column: 4, scope: !4121)
!4124 = !DILocation(line: 1806, column: 7, scope: !4121)
!4125 = !DILocation(line: 1806, column: 33, scope: !4121)
!4126 = !DILocation(line: 1807, column: 4, scope: !4121)
!4127 = !DILocation(line: 1807, column: 7, scope: !4121)
!4128 = !DILocation(line: 1807, column: 33, scope: !4121)
!4129 = !DILocation(line: 1808, column: 4, scope: !4121)
!4130 = !DILocation(line: 1808, column: 7, scope: !4121)
!4131 = !DILocation(line: 1808, column: 33, scope: !4121)
!4132 = !DILocation(line: 1808, column: 30, scope: !4121)
!4133 = !DILocation(line: 1805, column: 11, scope: !4107)
!4134 = !DILocation(line: 1801, column: 3, scope: !4108)
!4135 = distinct !{!4135, !4115, !4136}
!4136 = !DILocation(line: 1810, column: 5, scope: !4109)
!4137 = !DILocation(line: 1812, column: 1, scope: !4100)
!4138 = distinct !DISubprogram(name: "avx_vpermilp_v8sf_operand", scope: !1, file: !1, line: 1823, type: !2131, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4139)
!4139 = !{!4140, !4141}
!4140 = !DILocalVariable(name: "op", arg: 1, scope: !4138, file: !1, line: 1823, type: !613)
!4141 = !DILocalVariable(name: "mode", arg: 2, scope: !4138, file: !1, line: 1823, type: !3)
!4142 = !DILocation(line: 0, scope: !4138)
!4143 = !DILocation(line: 1825, column: 12, scope: !4138)
!4144 = !DILocation(line: 1825, column: 26, scope: !4138)
!4145 = !DILocation(line: 1825, column: 39, scope: !4138)
!4146 = !DILocation(line: 1827, column: 2, scope: !4138)
!4147 = !DILocation(line: 1827, column: 42, scope: !4138)
!4148 = !DILocation(line: 1828, column: 7, scope: !4138)
!4149 = !DILocation(line: 1828, column: 19, scope: !4138)
!4150 = !DILocation(line: 1828, column: 22, scope: !4138)
!4151 = !DILocation(line: 1828, column: 36, scope: !4138)
!4152 = !DILocation(line: 1825, column: 3, scope: !4138)
!4153 = distinct !DISubprogram(name: "avx_vpermilp_v4df_operand", scope: !1, file: !1, line: 1832, type: !2131, scopeLine: 1833, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4154)
!4154 = !{!4155, !4156}
!4155 = !DILocalVariable(name: "op", arg: 1, scope: !4153, file: !1, line: 1832, type: !613)
!4156 = !DILocalVariable(name: "mode", arg: 2, scope: !4153, file: !1, line: 1832, type: !3)
!4157 = !DILocation(line: 0, scope: !4153)
!4158 = !DILocation(line: 1834, column: 12, scope: !4153)
!4159 = !DILocation(line: 1834, column: 26, scope: !4153)
!4160 = !DILocation(line: 1834, column: 39, scope: !4153)
!4161 = !DILocation(line: 1836, column: 2, scope: !4153)
!4162 = !DILocation(line: 1836, column: 42, scope: !4153)
!4163 = !DILocation(line: 1837, column: 7, scope: !4153)
!4164 = !DILocation(line: 1837, column: 19, scope: !4153)
!4165 = !DILocation(line: 1837, column: 22, scope: !4153)
!4166 = !DILocation(line: 1837, column: 36, scope: !4153)
!4167 = !DILocation(line: 1834, column: 3, scope: !4153)
!4168 = distinct !DISubprogram(name: "avx_vpermilp_v4sf_operand", scope: !1, file: !1, line: 1841, type: !2131, scopeLine: 1842, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4169)
!4169 = !{!4170, !4171}
!4170 = !DILocalVariable(name: "op", arg: 1, scope: !4168, file: !1, line: 1841, type: !613)
!4171 = !DILocalVariable(name: "mode", arg: 2, scope: !4168, file: !1, line: 1841, type: !3)
!4172 = !DILocation(line: 0, scope: !4168)
!4173 = !DILocation(line: 1843, column: 12, scope: !4168)
!4174 = !DILocation(line: 1843, column: 26, scope: !4168)
!4175 = !DILocation(line: 1843, column: 39, scope: !4168)
!4176 = !DILocation(line: 1845, column: 2, scope: !4168)
!4177 = !DILocation(line: 1845, column: 42, scope: !4168)
!4178 = !DILocation(line: 1846, column: 7, scope: !4168)
!4179 = !DILocation(line: 1846, column: 19, scope: !4168)
!4180 = !DILocation(line: 1846, column: 22, scope: !4168)
!4181 = !DILocation(line: 1846, column: 36, scope: !4168)
!4182 = !DILocation(line: 1843, column: 3, scope: !4168)
!4183 = distinct !DISubprogram(name: "avx_vpermilp_v2df_operand", scope: !1, file: !1, line: 1850, type: !2131, scopeLine: 1851, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4184)
!4184 = !{!4185, !4186}
!4185 = !DILocalVariable(name: "op", arg: 1, scope: !4183, file: !1, line: 1850, type: !613)
!4186 = !DILocalVariable(name: "mode", arg: 2, scope: !4183, file: !1, line: 1850, type: !3)
!4187 = !DILocation(line: 0, scope: !4183)
!4188 = !DILocation(line: 1852, column: 12, scope: !4183)
!4189 = !DILocation(line: 1852, column: 26, scope: !4183)
!4190 = !DILocation(line: 1852, column: 39, scope: !4183)
!4191 = !DILocation(line: 1854, column: 2, scope: !4183)
!4192 = !DILocation(line: 1854, column: 42, scope: !4183)
!4193 = !DILocation(line: 1855, column: 7, scope: !4183)
!4194 = !DILocation(line: 1855, column: 19, scope: !4183)
!4195 = !DILocation(line: 1855, column: 22, scope: !4183)
!4196 = !DILocation(line: 1855, column: 36, scope: !4183)
!4197 = !DILocation(line: 1852, column: 3, scope: !4183)
!4198 = distinct !DISubprogram(name: "avx_vperm2f128_v8sf_operand", scope: !1, file: !1, line: 1859, type: !2131, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4199)
!4199 = !{!4200, !4201}
!4200 = !DILocalVariable(name: "op", arg: 1, scope: !4198, file: !1, line: 1859, type: !613)
!4201 = !DILocalVariable(name: "mode", arg: 2, scope: !4198, file: !1, line: 1859, type: !3)
!4202 = !DILocation(line: 0, scope: !4198)
!4203 = !DILocation(line: 1861, column: 12, scope: !4198)
!4204 = !DILocation(line: 1861, column: 26, scope: !4198)
!4205 = !DILocation(line: 1861, column: 39, scope: !4198)
!4206 = !DILocation(line: 1863, column: 2, scope: !4198)
!4207 = !DILocation(line: 1863, column: 44, scope: !4198)
!4208 = !DILocation(line: 1864, column: 7, scope: !4198)
!4209 = !DILocation(line: 1864, column: 19, scope: !4198)
!4210 = !DILocation(line: 1864, column: 22, scope: !4198)
!4211 = !DILocation(line: 1864, column: 36, scope: !4198)
!4212 = !DILocation(line: 1861, column: 3, scope: !4198)
!4213 = distinct !DISubprogram(name: "avx_vperm2f128_v8si_operand", scope: !1, file: !1, line: 1868, type: !2131, scopeLine: 1869, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4214)
!4214 = !{!4215, !4216}
!4215 = !DILocalVariable(name: "op", arg: 1, scope: !4213, file: !1, line: 1868, type: !613)
!4216 = !DILocalVariable(name: "mode", arg: 2, scope: !4213, file: !1, line: 1868, type: !3)
!4217 = !DILocation(line: 0, scope: !4213)
!4218 = !DILocation(line: 1870, column: 12, scope: !4213)
!4219 = !DILocation(line: 1870, column: 26, scope: !4213)
!4220 = !DILocation(line: 1870, column: 39, scope: !4213)
!4221 = !DILocation(line: 1872, column: 2, scope: !4213)
!4222 = !DILocation(line: 1872, column: 44, scope: !4213)
!4223 = !DILocation(line: 1873, column: 7, scope: !4213)
!4224 = !DILocation(line: 1873, column: 19, scope: !4213)
!4225 = !DILocation(line: 1873, column: 22, scope: !4213)
!4226 = !DILocation(line: 1873, column: 36, scope: !4213)
!4227 = !DILocation(line: 1870, column: 3, scope: !4213)
!4228 = distinct !DISubprogram(name: "avx_vperm2f128_v4df_operand", scope: !1, file: !1, line: 1877, type: !2131, scopeLine: 1878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4229)
!4229 = !{!4230, !4231}
!4230 = !DILocalVariable(name: "op", arg: 1, scope: !4228, file: !1, line: 1877, type: !613)
!4231 = !DILocalVariable(name: "mode", arg: 2, scope: !4228, file: !1, line: 1877, type: !3)
!4232 = !DILocation(line: 0, scope: !4228)
!4233 = !DILocation(line: 1879, column: 12, scope: !4228)
!4234 = !DILocation(line: 1879, column: 26, scope: !4228)
!4235 = !DILocation(line: 1879, column: 39, scope: !4228)
!4236 = !DILocation(line: 1881, column: 2, scope: !4228)
!4237 = !DILocation(line: 1881, column: 44, scope: !4228)
!4238 = !DILocation(line: 1882, column: 7, scope: !4228)
!4239 = !DILocation(line: 1882, column: 19, scope: !4228)
!4240 = !DILocation(line: 1882, column: 22, scope: !4228)
!4241 = !DILocation(line: 1882, column: 36, scope: !4228)
!4242 = !DILocation(line: 1879, column: 3, scope: !4228)
!4243 = distinct !DISubprogram(name: "avx_vbroadcast_operand", scope: !1, file: !1, line: 1901, type: !2131, scopeLine: 1902, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4244)
!4244 = !{!4245, !4246}
!4245 = !DILocalVariable(name: "op", arg: 1, scope: !4243, file: !1, line: 1901, type: !613)
!4246 = !DILocalVariable(name: "mode", arg: 2, scope: !4243, file: !1, line: 1901, type: !3)
!4247 = !DILocation(line: 0, scope: !4243)
!4248 = !DILocation(line: 1903, column: 13, scope: !4243)
!4249 = !DILocation(line: 1903, column: 27, scope: !4243)
!4250 = !DILocation(line: 1903, column: 40, scope: !4243)
!4251 = !DILocation(line: 1903, column: 44, scope: !4243)
!4252 = !DILocation(line: 1903, column: 74, scope: !4243)
!4253 = !DILocation(line: 1903, column: 89, scope: !4243)
!4254 = !DILocation(line: 1904, column: 2, scope: !4243)
!4255 = !DILocation(line: 1904, column: 41, scope: !4243)
!4256 = !DILocation(line: 1905, column: 7, scope: !4243)
!4257 = !DILocation(line: 1905, column: 19, scope: !4243)
!4258 = !DILocation(line: 1905, column: 22, scope: !4243)
!4259 = !DILocation(line: 1905, column: 36, scope: !4243)
!4260 = !DILocation(line: 1903, column: 3, scope: !4243)
!4261 = distinct !DISubprogram(name: "avx_vbroadcast_operand_1", scope: !1, file: !1, line: 1886, type: !2131, scopeLine: 1888, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4262)
!4262 = !{!4263, !4264, !4265, !4266, !4267}
!4263 = !DILocalVariable(name: "op", arg: 1, scope: !4261, file: !1, line: 1886, type: !613)
!4264 = !DILocalVariable(name: "mode", arg: 2, scope: !4261, file: !1, line: 1886, type: !3)
!4265 = !DILocalVariable(name: "elt", scope: !4261, file: !1, line: 1889, type: !613)
!4266 = !DILocalVariable(name: "i", scope: !4261, file: !1, line: 1890, type: !604)
!4267 = !DILocalVariable(name: "nelt", scope: !4261, file: !1, line: 1890, type: !604)
!4268 = !DILocation(line: 0, scope: !4261)
!4269 = !DILocation(line: 1889, column: 13, scope: !4261)
!4270 = !DILocation(line: 1890, column: 17, scope: !4261)
!4271 = !DILocation(line: 1894, column: 8, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4261, file: !1, line: 1894, column: 3)
!4273 = !DILocation(line: 0, scope: !4272)
!4274 = !DILocation(line: 1894, column: 17, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4272, file: !1, line: 1894, column: 3)
!4276 = !DILocation(line: 1894, column: 3, scope: !4272)
!4277 = !DILocation(line: 1895, column: 9, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4275, file: !1, line: 1895, column: 9)
!4279 = !DILocation(line: 1895, column: 28, scope: !4278)
!4280 = !DILocation(line: 1895, column: 9, scope: !4275)
!4281 = !DILocation(line: 1894, column: 25, scope: !4275)
!4282 = !DILocation(line: 1894, column: 3, scope: !4275)
!4283 = distinct !{!4283, !4276, !4284}
!4284 = !DILocation(line: 1896, column: 14, scope: !4272)
!4285 = !DILocation(line: 1898, column: 1, scope: !4261)
!4286 = distinct !DISubprogram(name: "lookup_constraint", scope: !1, file: !1, line: 1909, type: !4287, scopeLine: 1910, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4289)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!528, !609}
!4289 = !{!4290}
!4290 = !DILocalVariable(name: "str", arg: 1, scope: !4286, file: !1, line: 1909, type: !609)
!4291 = !DILocation(line: 0, scope: !4286)
!4292 = !DILocation(line: 1911, column: 11, scope: !4286)
!4293 = !DILocation(line: 1911, column: 3, scope: !4286)
!4294 = !DILocation(line: 1916, column: 7, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4286, file: !1, line: 1912, column: 5)
!4296 = !DILocation(line: 1918, column: 7, scope: !4295)
!4297 = !DILocation(line: 1920, column: 7, scope: !4295)
!4298 = !DILocation(line: 1922, column: 7, scope: !4295)
!4299 = !DILocation(line: 1924, column: 7, scope: !4295)
!4300 = !DILocation(line: 1926, column: 7, scope: !4295)
!4301 = !DILocation(line: 1928, column: 7, scope: !4295)
!4302 = !DILocation(line: 1930, column: 7, scope: !4295)
!4303 = !DILocation(line: 1932, column: 7, scope: !4295)
!4304 = !DILocation(line: 1934, column: 7, scope: !4295)
!4305 = !DILocation(line: 1936, column: 7, scope: !4295)
!4306 = !DILocation(line: 1938, column: 7, scope: !4295)
!4307 = !DILocation(line: 1940, column: 7, scope: !4295)
!4308 = !DILocation(line: 1942, column: 7, scope: !4295)
!4309 = !DILocation(line: 1944, column: 12, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4295, file: !1, line: 1944, column: 11)
!4311 = !DILocation(line: 1944, column: 11, scope: !4295)
!4312 = !DILocation(line: 1946, column: 12, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4295, file: !1, line: 1946, column: 11)
!4314 = !DILocation(line: 1946, column: 11, scope: !4295)
!4315 = !DILocation(line: 1948, column: 12, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4295, file: !1, line: 1948, column: 11)
!4317 = !DILocation(line: 1948, column: 11, scope: !4295)
!4318 = !DILocation(line: 1950, column: 12, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4295, file: !1, line: 1950, column: 11)
!4320 = !DILocation(line: 1950, column: 11, scope: !4295)
!4321 = !DILocation(line: 1954, column: 7, scope: !4295)
!4322 = !DILocation(line: 1956, column: 7, scope: !4295)
!4323 = !DILocation(line: 1958, column: 7, scope: !4295)
!4324 = !DILocation(line: 1960, column: 7, scope: !4295)
!4325 = !DILocation(line: 1962, column: 7, scope: !4295)
!4326 = !DILocation(line: 1964, column: 7, scope: !4295)
!4327 = !DILocation(line: 1966, column: 7, scope: !4295)
!4328 = !DILocation(line: 1968, column: 7, scope: !4295)
!4329 = !DILocation(line: 1970, column: 7, scope: !4295)
!4330 = !DILocation(line: 1972, column: 7, scope: !4295)
!4331 = !DILocation(line: 1974, column: 7, scope: !4295)
!4332 = !DILocation(line: 1976, column: 7, scope: !4295)
!4333 = !DILocation(line: 1978, column: 7, scope: !4295)
!4334 = !DILocation(line: 1981, column: 3, scope: !4286)
!4335 = !DILocation(line: 1982, column: 1, scope: !4286)
!4336 = distinct !DISubprogram(name: "regclass_for_constraint", scope: !1, file: !1, line: 1985, type: !4337, scopeLine: 1986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4339)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!565, !528}
!4339 = !{!4340}
!4340 = !DILocalVariable(name: "c", arg: 1, scope: !4336, file: !1, line: 1985, type: !528)
!4341 = !DILocation(line: 0, scope: !4336)
!4342 = !DILocation(line: 1987, column: 3, scope: !4336)
!4343 = !DILocation(line: 1990, column: 24, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4336, file: !1, line: 1988, column: 5)
!4345 = !DILocation(line: 1991, column: 24, scope: !4344)
!4346 = !DILocation(line: 1992, column: 24, scope: !4344)
!4347 = !DILocation(line: 1993, column: 24, scope: !4344)
!4348 = !DILocation(line: 1994, column: 24, scope: !4344)
!4349 = !DILocation(line: 1995, column: 24, scope: !4344)
!4350 = !DILocation(line: 1996, column: 24, scope: !4344)
!4351 = !DILocation(line: 1997, column: 24, scope: !4344)
!4352 = !DILocation(line: 1998, column: 24, scope: !4344)
!4353 = !DILocation(line: 1999, column: 24, scope: !4344)
!4354 = !DILocation(line: 2000, column: 24, scope: !4344)
!4355 = !DILocation(line: 2001, column: 31, scope: !4344)
!4356 = !DILocation(line: 2001, column: 44, scope: !4344)
!4357 = !DILocation(line: 2001, column: 24, scope: !4344)
!4358 = !DILocation(line: 2002, column: 31, scope: !4344)
!4359 = !DILocation(line: 2002, column: 44, scope: !4344)
!4360 = !DILocation(line: 2002, column: 47, scope: !4344)
!4361 = !DILocation(line: 2002, column: 24, scope: !4344)
!4362 = !DILocation(line: 2003, column: 31, scope: !4344)
!4363 = !DILocation(line: 2003, column: 44, scope: !4344)
!4364 = !DILocation(line: 2003, column: 47, scope: !4344)
!4365 = !DILocation(line: 2003, column: 24, scope: !4344)
!4366 = !DILocation(line: 2004, column: 31, scope: !4344)
!4367 = !DILocation(line: 2004, column: 24, scope: !4344)
!4368 = !DILocation(line: 2005, column: 31, scope: !4344)
!4369 = !DILocation(line: 2005, column: 24, scope: !4344)
!4370 = !DILocation(line: 2006, column: 32, scope: !4344)
!4371 = !DILocation(line: 2006, column: 25, scope: !4344)
!4372 = !DILocation(line: 2007, column: 32, scope: !4344)
!4373 = !DILocation(line: 2007, column: 25, scope: !4344)
!4374 = !DILocation(line: 2008, column: 32, scope: !4344)
!4375 = !DILocation(line: 2008, column: 44, scope: !4344)
!4376 = !DILocation(line: 2008, column: 25, scope: !4344)
!4377 = !DILocation(line: 2009, column: 32, scope: !4344)
!4378 = !DILocation(line: 2009, column: 43, scope: !4344)
!4379 = !DILocation(line: 2009, column: 25, scope: !4344)
!4380 = !DILocation(line: 2012, column: 3, scope: !4336)
!4381 = !DILocation(line: 2013, column: 1, scope: !4336)
!4382 = distinct !DISubprogram(name: "constraint_satisfied_p", scope: !1, file: !1, line: 2016, type: !4383, scopeLine: 2017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4385)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!603, !613, !528}
!4385 = !{!4386, !4387}
!4386 = !DILocalVariable(name: "op", arg: 1, scope: !4382, file: !1, line: 2016, type: !613)
!4387 = !DILocalVariable(name: "c", arg: 2, scope: !4382, file: !1, line: 2016, type: !528)
!4388 = !DILocation(line: 0, scope: !4382)
!4389 = !DILocation(line: 2018, column: 3, scope: !4382)
!4390 = !DILocation(line: 2020, column: 31, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4382, file: !1, line: 2019, column: 5)
!4392 = !DILocation(line: 2020, column: 24, scope: !4391)
!4393 = !DILocation(line: 2021, column: 31, scope: !4391)
!4394 = !DILocation(line: 2021, column: 24, scope: !4391)
!4395 = !DILocation(line: 2022, column: 31, scope: !4391)
!4396 = !DILocation(line: 2022, column: 24, scope: !4391)
!4397 = !DILocation(line: 2023, column: 31, scope: !4391)
!4398 = !DILocation(line: 2023, column: 24, scope: !4391)
!4399 = !DILocation(line: 2024, column: 31, scope: !4391)
!4400 = !DILocation(line: 2024, column: 24, scope: !4391)
!4401 = !DILocation(line: 2025, column: 31, scope: !4391)
!4402 = !DILocation(line: 2025, column: 24, scope: !4391)
!4403 = !DILocation(line: 2026, column: 31, scope: !4391)
!4404 = !DILocation(line: 2026, column: 24, scope: !4391)
!4405 = !DILocation(line: 2027, column: 31, scope: !4391)
!4406 = !DILocation(line: 2027, column: 24, scope: !4391)
!4407 = !DILocation(line: 2028, column: 31, scope: !4391)
!4408 = !DILocation(line: 2028, column: 24, scope: !4391)
!4409 = !DILocation(line: 2029, column: 31, scope: !4391)
!4410 = !DILocation(line: 2029, column: 24, scope: !4391)
!4411 = !DILocation(line: 2030, column: 31, scope: !4391)
!4412 = !DILocation(line: 2030, column: 24, scope: !4391)
!4413 = !DILocation(line: 2034, column: 1, scope: !4382)
!4414 = distinct !DISubprogram(name: "satisfies_constraint_I", scope: !4415, file: !4415, line: 8, type: !4416, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4418)
!4415 = !DIFile(filename: "./tm-constrs.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4416 = !DISubroutineType(types: !4417)
!4417 = !{!603, !613}
!4418 = !{!4419, !4420}
!4419 = !DILocalVariable(name: "op", arg: 1, scope: !4414, file: !4415, line: 8, type: !613)
!4420 = !DILocalVariable(name: "ival", scope: !4414, file: !4415, line: 10, type: !612)
!4421 = !DILocation(line: 0, scope: !4414)
!4422 = !DILocation(line: 11, column: 7, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4414, file: !4415, line: 11, column: 7)
!4424 = !DILocation(line: 11, column: 7, scope: !4414)
!4425 = !DILocation(line: 12, column: 12, scope: !4423)
!4426 = !DILocation(line: 12, column: 5, scope: !4423)
!4427 = !DILocation(line: 13, column: 39, scope: !4414)
!4428 = !DILocation(line: 13, column: 10, scope: !4414)
!4429 = !DILocation(line: 13, column: 3, scope: !4414)
!4430 = distinct !DISubprogram(name: "satisfies_constraint_J", scope: !4415, file: !4415, line: 18, type: !4416, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4431)
!4431 = !{!4432, !4433}
!4432 = !DILocalVariable(name: "op", arg: 1, scope: !4430, file: !4415, line: 18, type: !613)
!4433 = !DILocalVariable(name: "ival", scope: !4430, file: !4415, line: 20, type: !612)
!4434 = !DILocation(line: 0, scope: !4430)
!4435 = !DILocation(line: 21, column: 7, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4430, file: !4415, line: 21, column: 7)
!4437 = !DILocation(line: 21, column: 7, scope: !4430)
!4438 = !DILocation(line: 22, column: 12, scope: !4436)
!4439 = !DILocation(line: 22, column: 5, scope: !4436)
!4440 = !DILocation(line: 23, column: 39, scope: !4430)
!4441 = !DILocation(line: 23, column: 10, scope: !4430)
!4442 = !DILocation(line: 23, column: 3, scope: !4430)
!4443 = distinct !DISubprogram(name: "satisfies_constraint_K", scope: !4415, file: !4415, line: 28, type: !4416, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4444)
!4444 = !{!4445, !4446}
!4445 = !DILocalVariable(name: "op", arg: 1, scope: !4443, file: !4415, line: 28, type: !613)
!4446 = !DILocalVariable(name: "ival", scope: !4443, file: !4415, line: 30, type: !612)
!4447 = !DILocation(line: 0, scope: !4443)
!4448 = !DILocation(line: 31, column: 7, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4443, file: !4415, line: 31, column: 7)
!4450 = !DILocation(line: 31, column: 7, scope: !4443)
!4451 = !DILocation(line: 32, column: 12, scope: !4449)
!4452 = !DILocation(line: 32, column: 5, scope: !4449)
!4453 = !DILocation(line: 33, column: 39, scope: !4443)
!4454 = !DILocation(line: 33, column: 10, scope: !4443)
!4455 = !DILocation(line: 33, column: 3, scope: !4443)
!4456 = distinct !DISubprogram(name: "satisfies_constraint_L", scope: !4415, file: !4415, line: 38, type: !4416, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4457)
!4457 = !{!4458, !4459}
!4458 = !DILocalVariable(name: "op", arg: 1, scope: !4456, file: !4415, line: 38, type: !613)
!4459 = !DILocalVariable(name: "ival", scope: !4456, file: !4415, line: 40, type: !612)
!4460 = !DILocation(line: 0, scope: !4456)
!4461 = !DILocation(line: 41, column: 7, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4456, file: !4415, line: 41, column: 7)
!4463 = !DILocation(line: 41, column: 7, scope: !4456)
!4464 = !DILocation(line: 42, column: 12, scope: !4462)
!4465 = !DILocation(line: 42, column: 5, scope: !4462)
!4466 = !DILocation(line: 43, column: 39, scope: !4456)
!4467 = !DILocation(line: 45, column: 7, scope: !4456)
!4468 = !DILocation(line: 45, column: 23, scope: !4456)
!4469 = !DILocation(line: 45, column: 15, scope: !4456)
!4470 = !DILocation(line: 43, column: 3, scope: !4456)
!4471 = distinct !DISubprogram(name: "satisfies_constraint_M", scope: !4415, file: !4415, line: 48, type: !4416, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4472)
!4472 = !{!4473, !4474}
!4473 = !DILocalVariable(name: "op", arg: 1, scope: !4471, file: !4415, line: 48, type: !613)
!4474 = !DILocalVariable(name: "ival", scope: !4471, file: !4415, line: 50, type: !612)
!4475 = !DILocation(line: 0, scope: !4471)
!4476 = !DILocation(line: 51, column: 7, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4471, file: !4415, line: 51, column: 7)
!4478 = !DILocation(line: 51, column: 7, scope: !4471)
!4479 = !DILocation(line: 52, column: 12, scope: !4477)
!4480 = !DILocation(line: 52, column: 5, scope: !4477)
!4481 = !DILocation(line: 53, column: 39, scope: !4471)
!4482 = !DILocation(line: 53, column: 10, scope: !4471)
!4483 = !DILocation(line: 53, column: 3, scope: !4471)
!4484 = distinct !DISubprogram(name: "satisfies_constraint_N", scope: !4415, file: !4415, line: 58, type: !4416, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4485)
!4485 = !{!4486, !4487}
!4486 = !DILocalVariable(name: "op", arg: 1, scope: !4484, file: !4415, line: 58, type: !613)
!4487 = !DILocalVariable(name: "ival", scope: !4484, file: !4415, line: 60, type: !612)
!4488 = !DILocation(line: 0, scope: !4484)
!4489 = !DILocation(line: 61, column: 7, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4484, file: !4415, line: 61, column: 7)
!4491 = !DILocation(line: 61, column: 7, scope: !4484)
!4492 = !DILocation(line: 62, column: 12, scope: !4490)
!4493 = !DILocation(line: 62, column: 5, scope: !4490)
!4494 = !DILocation(line: 63, column: 39, scope: !4484)
!4495 = !DILocation(line: 63, column: 10, scope: !4484)
!4496 = !DILocation(line: 63, column: 3, scope: !4484)
!4497 = distinct !DISubprogram(name: "satisfies_constraint_O", scope: !4415, file: !4415, line: 68, type: !4416, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4498)
!4498 = !{!4499, !4500}
!4499 = !DILocalVariable(name: "op", arg: 1, scope: !4497, file: !4415, line: 68, type: !613)
!4500 = !DILocalVariable(name: "ival", scope: !4497, file: !4415, line: 70, type: !612)
!4501 = !DILocation(line: 0, scope: !4497)
!4502 = !DILocation(line: 71, column: 7, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4497, file: !4415, line: 71, column: 7)
!4504 = !DILocation(line: 71, column: 7, scope: !4497)
!4505 = !DILocation(line: 72, column: 12, scope: !4503)
!4506 = !DILocation(line: 72, column: 5, scope: !4503)
!4507 = !DILocation(line: 73, column: 39, scope: !4497)
!4508 = !DILocation(line: 73, column: 10, scope: !4497)
!4509 = !DILocation(line: 73, column: 3, scope: !4497)
!4510 = distinct !DISubprogram(name: "satisfies_constraint_G", scope: !4415, file: !4415, line: 78, type: !4416, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4511)
!4511 = !{!4512}
!4512 = !DILocalVariable(name: "op", arg: 1, scope: !4510, file: !4415, line: 78, type: !613)
!4513 = !DILocation(line: 0, scope: !4510)
!4514 = !DILocation(line: 80, column: 11, scope: !4510)
!4515 = !DILocation(line: 80, column: 25, scope: !4510)
!4516 = !DILocation(line: 80, column: 42, scope: !4510)
!4517 = !DILocation(line: 82, column: 2, scope: !4510)
!4518 = !DILocation(line: 80, column: 3, scope: !4510)
!4519 = distinct !DISubprogram(name: "satisfies_constraint_C", scope: !4415, file: !4415, line: 85, type: !4416, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4520)
!4520 = !{!4521}
!4521 = !DILocalVariable(name: "op", arg: 1, scope: !4519, file: !4415, line: 85, type: !613)
!4522 = !DILocation(line: 0, scope: !4519)
!4523 = !DILocation(line: 89, column: 2, scope: !4519)
!4524 = !DILocation(line: 89, column: 1, scope: !4519)
!4525 = !DILocation(line: 87, column: 3, scope: !4519)
!4526 = distinct !DISubprogram(name: "satisfies_constraint_e", scope: !4415, file: !4415, line: 92, type: !4416, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4527)
!4527 = !{!4528, !4529}
!4528 = !DILocalVariable(name: "op", arg: 1, scope: !4526, file: !4415, line: 92, type: !613)
!4529 = !DILocalVariable(name: "mode", scope: !4526, file: !4415, line: 94, type: !3)
!4530 = !DILocation(line: 0, scope: !4526)
!4531 = !DILocation(line: 94, column: 28, scope: !4526)
!4532 = !DILocation(line: 95, column: 10, scope: !4526)
!4533 = !DILocation(line: 95, column: 3, scope: !4526)
!4534 = distinct !DISubprogram(name: "satisfies_constraint_Z", scope: !4415, file: !4415, line: 98, type: !4416, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4535)
!4535 = !{!4536, !4537}
!4536 = !DILocalVariable(name: "op", arg: 1, scope: !4534, file: !4415, line: 98, type: !613)
!4537 = !DILocalVariable(name: "mode", scope: !4534, file: !4415, line: 100, type: !3)
!4538 = !DILocation(line: 0, scope: !4534)
!4539 = !DILocation(line: 100, column: 28, scope: !4534)
!4540 = !DILocation(line: 101, column: 10, scope: !4534)
!4541 = !DILocation(line: 101, column: 3, scope: !4534)
!4542 = distinct !DISubprogram(name: "insn_const_int_ok_for_constraint", scope: !1, file: !1, line: 2037, type: !4543, scopeLine: 2038, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4545)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!603, !612, !528}
!4545 = !{!4546, !4547}
!4546 = !DILocalVariable(name: "ival", arg: 1, scope: !4542, file: !1, line: 2037, type: !612)
!4547 = !DILocalVariable(name: "c", arg: 2, scope: !4542, file: !1, line: 2037, type: !528)
!4548 = !DILocation(line: 0, scope: !4542)
!4549 = !DILocation(line: 2039, column: 3, scope: !4542)
!4550 = !DILocation(line: 2044, column: 2, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4542, file: !1, line: 2040, column: 5)
!4552 = !DILocation(line: 2042, column: 7, scope: !4551)
!4553 = !DILocation(line: 2049, column: 2, scope: !4551)
!4554 = !DILocation(line: 2047, column: 7, scope: !4551)
!4555 = !DILocation(line: 2054, column: 2, scope: !4551)
!4556 = !DILocation(line: 2052, column: 7, scope: !4551)
!4557 = !DILocation(line: 2059, column: 7, scope: !4551)
!4558 = !DILocation(line: 2059, column: 23, scope: !4551)
!4559 = !DILocation(line: 2059, column: 15, scope: !4551)
!4560 = !DILocation(line: 2057, column: 7, scope: !4551)
!4561 = !DILocation(line: 2064, column: 2, scope: !4551)
!4562 = !DILocation(line: 2062, column: 7, scope: !4551)
!4563 = !DILocation(line: 2069, column: 2, scope: !4551)
!4564 = !DILocation(line: 2067, column: 7, scope: !4551)
!4565 = !DILocation(line: 2074, column: 2, scope: !4551)
!4566 = !DILocation(line: 2072, column: 7, scope: !4551)
!4567 = !DILocation(line: 2079, column: 1, scope: !4542)
