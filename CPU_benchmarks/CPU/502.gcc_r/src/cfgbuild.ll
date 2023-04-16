; ModuleID = 'cfgbuild.bc'
source_filename = "cfgbuild.c"
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [11 x i8] c"cfgbuild.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@const_int_rtx = external dso_local local_unnamed_addr global [129 x %struct.rtx_def*], align 16
@flag_non_call_exceptions = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@global_rtl = external dso_local local_unnamed_addr global [11 x %struct.rtx_def*], align 16
@.str.2 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@x_rtl = external dso_local local_unnamed_addr global %struct.rtl_data, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1718 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1731, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1732, metadata !DIExpression()), !dbg !1733
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1734
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1735
  ret i32 %call, !dbg !1736
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1737 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1741
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1742
  ret i32 %call, !dbg !1743
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1744 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1799, metadata !DIExpression()), !dbg !1800
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1801
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1801
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1801
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1801
  %cmp = icmp uge i8* %0, %1, !dbg !1801
  %conv1 = zext i1 %cmp to i64, !dbg !1801
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1801
  %tobool = icmp eq i64 %expval, 0, !dbg !1801
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1801

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1801
  br label %cond.end, !dbg !1801

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1801
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1801
  %2 = load i8, i8* %0, align 1, !dbg !1801
  %conv3 = zext i8 %2 to i32, !dbg !1801
  br label %cond.end, !dbg !1801

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1801
  ret i32 %cond, !dbg !1802
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1803 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1805, metadata !DIExpression()), !dbg !1806
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1807
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1807
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1807
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1807
  %cmp = icmp uge i8* %0, %1, !dbg !1807
  %conv1 = zext i1 %cmp to i64, !dbg !1807
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1807
  %tobool = icmp eq i64 %expval, 0, !dbg !1807
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1807

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1807
  br label %cond.end, !dbg !1807

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1807
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1807
  %2 = load i8, i8* %0, align 1, !dbg !1807
  %conv3 = zext i8 %2 to i32, !dbg !1807
  br label %cond.end, !dbg !1807

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1807
  ret i32 %cond, !dbg !1808
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1809 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1810
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1810
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1810
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1810
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1810
  %cmp = icmp uge i8* %1, %2, !dbg !1810
  %conv1 = zext i1 %cmp to i64, !dbg !1810
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1810
  %tobool = icmp eq i64 %expval, 0, !dbg !1810
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1810

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1810
  br label %cond.end, !dbg !1810

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1810
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1810
  %3 = load i8, i8* %1, align 1, !dbg !1810
  %conv3 = zext i8 %3 to i32, !dbg !1810
  br label %cond.end, !dbg !1810

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1810
  ret i32 %cond, !dbg !1811
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1812 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1816, metadata !DIExpression()), !dbg !1817
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1818
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1819
  ret i32 %call, !dbg !1820
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1821 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1825, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1826, metadata !DIExpression()), !dbg !1827
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1828
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1828
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1828
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1828
  %cmp = icmp uge i8* %0, %1, !dbg !1828
  %conv1 = zext i1 %cmp to i64, !dbg !1828
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1828
  %tobool = icmp eq i64 %expval, 0, !dbg !1828
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1828

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1828
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1828
  br label %cond.end, !dbg !1828

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1828
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1828
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1828
  store i8 %conv2, i8* %0, align 1, !dbg !1828
  %conv6 = and i32 %__c, 255, !dbg !1828
  br label %cond.end, !dbg !1828

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1828
  ret i32 %cond, !dbg !1829
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1830 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1832, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1833, metadata !DIExpression()), !dbg !1834
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1835
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1835
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1835
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1835
  %cmp = icmp uge i8* %0, %1, !dbg !1835
  %conv1 = zext i1 %cmp to i64, !dbg !1835
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1835
  %tobool = icmp eq i64 %expval, 0, !dbg !1835
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1835

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1835
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1835
  br label %cond.end, !dbg !1835

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1835
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1835
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1835
  store i8 %conv2, i8* %0, align 1, !dbg !1835
  %conv6 = and i32 %__c, 255, !dbg !1835
  br label %cond.end, !dbg !1835

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1835
  ret i32 %cond, !dbg !1836
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1837 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1839, metadata !DIExpression()), !dbg !1840
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1841
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1841
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1841
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1841
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1841
  %cmp = icmp uge i8* %1, %2, !dbg !1841
  %conv1 = zext i1 %cmp to i64, !dbg !1841
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1841
  %tobool = icmp eq i64 %expval, 0, !dbg !1841
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1841

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1841
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1841
  br label %cond.end, !dbg !1841

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1841
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1841
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1841
  store i8 %conv4, i8* %1, align 1, !dbg !1841
  %conv6 = and i32 %__c, 255, !dbg !1841
  br label %cond.end, !dbg !1841

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1841
  ret i32 %cond, !dbg !1842
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1843 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1849, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1850, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1851, metadata !DIExpression()), !dbg !1852
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1853
  ret i64 %call, !dbg !1854
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1855 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1857, metadata !DIExpression()), !dbg !1858
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1859
  %0 = load i32, i32* %_flags, align 8, !dbg !1859
  %and = lshr i32 %0, 4, !dbg !1859
  %and.lobit = and i32 %and, 1, !dbg !1859
  ret i32 %and.lobit, !dbg !1860
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1861 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1863, metadata !DIExpression()), !dbg !1864
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1865
  %0 = load i32, i32* %_flags, align 8, !dbg !1865
  %and = lshr i32 %0, 5, !dbg !1865
  %and.lobit = and i32 %and, 1, !dbg !1865
  ret i32 %and.lobit, !dbg !1866
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1867 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1870, metadata !DIExpression()), !dbg !1871
  %__c.off = add i32 %__c, 128, !dbg !1872
  %0 = icmp ult i32 %__c.off, 384, !dbg !1872
  br i1 %0, label %cond.true, label %cond.end, !dbg !1872

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1873
  %1 = load i32*, i32** %call, align 8, !dbg !1874
  %idxprom = sext i32 %__c to i64, !dbg !1875
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1875
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1875
  br label %cond.end, !dbg !1876

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1876
  ret i32 %cond, !dbg !1877
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1878 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1880, metadata !DIExpression()), !dbg !1881
  %__c.off = add i32 %__c, 128, !dbg !1882
  %0 = icmp ult i32 %__c.off, 384, !dbg !1882
  br i1 %0, label %cond.true, label %cond.end, !dbg !1882

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1883
  %1 = load i32*, i32** %call, align 8, !dbg !1884
  %idxprom = sext i32 %__c to i64, !dbg !1885
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1885
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1885
  br label %cond.end, !dbg !1886

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1886
  ret i32 %cond, !dbg !1887
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1888 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1893, metadata !DIExpression()), !dbg !1894
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1895
  %conv = trunc i64 %call to i32, !dbg !1896
  ret i32 %conv, !dbg !1897
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1898 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1902, metadata !DIExpression()), !dbg !1903
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1904
  ret i64 %call, !dbg !1905
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1906 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1911, metadata !DIExpression()), !dbg !1912
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1913
  ret i64 %call, !dbg !1914
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1915 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1921, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1922, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1923, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1924, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1925, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 0, metadata !1926, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1927, metadata !DIExpression()), !dbg !1931
  br label %while.cond, !dbg !1932

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1933
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1931
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1927, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1926, metadata !DIExpression()), !dbg !1931
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1934
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1932

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1935
  %div = lshr i64 %add, 1, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %div, metadata !1928, metadata !DIExpression()), !dbg !1931
  %mul = mul i64 %div, %__size, !dbg !1938
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1939
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1929, metadata !DIExpression()), !dbg !1931
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1940
  call void @llvm.dbg.value(metadata i32 %call, metadata !1930, metadata !DIExpression()), !dbg !1931
  %cmp1 = icmp slt i32 %call, 0, !dbg !1941
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1943

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1944
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1946

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1926, metadata !DIExpression()), !dbg !1931
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1931
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1931
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1927, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1926, metadata !DIExpression()), !dbg !1931
  br label %while.cond, !dbg !1932, !llvm.loop !1948

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1931
  ret i8* %retval.0, !dbg !1950
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1951 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1957, metadata !DIExpression()), !dbg !1958
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1959
  ret double %call, !dbg !1960
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1961 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1970, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1971, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 %base, metadata !1972, metadata !DIExpression()), !dbg !1973
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1974
  ret i64 %call, !dbg !1975
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1976 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1982, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1983, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i32 %base, metadata !1984, metadata !DIExpression()), !dbg !1985
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1986
  ret i64 %call, !dbg !1987
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1988 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1999, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2000, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i32 %base, metadata !2001, metadata !DIExpression()), !dbg !2002
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2003
  ret i64 %call, !dbg !2004
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2005 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2009, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2010, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i32 %base, metadata !2011, metadata !DIExpression()), !dbg !2012
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2013
  ret i64 %call, !dbg !2014
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2015 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2055, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2056, metadata !DIExpression()), !dbg !2057
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2058
  ret i32 %call, !dbg !2059
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2060 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2062, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2063, metadata !DIExpression()), !dbg !2064
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2065
  ret i32 %call, !dbg !2066
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2067 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2071, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2072, metadata !DIExpression()), !dbg !2073
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2074
  ret i32 %call, !dbg !2075
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2076 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2080, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2081, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2082, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2083, metadata !DIExpression()), !dbg !2084
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2085
  ret i32 %call, !dbg !2086
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2087 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2091, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2092, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2093, metadata !DIExpression()), !dbg !2094
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2093, metadata !DIExpression(DW_OP_deref)), !dbg !2094
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2095
  ret i32 %call, !dbg !2096
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2097 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2101, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2102, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2103, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2104, metadata !DIExpression()), !dbg !2105
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2104, metadata !DIExpression(DW_OP_deref)), !dbg !2105
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2106
  ret i32 %call, !dbg !2107
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2108 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2132, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2133, metadata !DIExpression()), !dbg !2134
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2135
  ret i32 %call, !dbg !2136
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2137 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2139, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2140, metadata !DIExpression()), !dbg !2141
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2142
  ret i32 %call, !dbg !2143
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2144 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2148, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2149, metadata !DIExpression()), !dbg !2150
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2151
  ret i32 %call, !dbg !2152
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2153 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2157, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2158, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2159, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2160, metadata !DIExpression()), !dbg !2161
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2162
  ret i32 %call, !dbg !2163
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @inside_basic_block_p(%struct.rtx_def* %insn) local_unnamed_addr #4 !dbg !2164 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2171, metadata !DIExpression()), !dbg !2172
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !2173
  %bf.load = load i32, i32* %0, align 8, !dbg !2173
  %trunc = trunc i32 %bf.load to i16, !dbg !2174
  switch i16 %trunc, label %sw.default [
    i16 12, label %sw.bb
    i16 9, label %sw.bb30
    i16 10, label %return
    i16 8, label %return
    i16 7, label %return
    i16 11, label %sw.bb51
    i16 13, label %sw.bb51
  ], !dbg !2174

sw.bb:                                            ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2175
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !2175
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2175
  %cmp = icmp eq %struct.rtx_def* %2, null, !dbg !2177
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !2178

lor.lhs.false:                                    ; preds = %sw.bb
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 0, !dbg !2178
  %bf.load5 = load i32, i32* %3, align 8, !dbg !2179
  %bf.clear6 = and i32 %bf.load5, 65535, !dbg !2179
  %cmp7 = icmp eq i32 %bf.clear6, 9, !dbg !2179
  br i1 %cmp7, label %lor.rhs, label %lor.end, !dbg !2180

lor.rhs:                                          ; preds = %lor.lhs.false
  %u12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, !dbg !2181
  %4 = getelementptr inbounds %union.u, %union.u* %u12, i64 1, i32 0, i32 0, i64 0, !dbg !2181
  %5 = bitcast %union.rtunion_def* %4 to i32**, !dbg !2181
  %6 = load i32*, i32** %5, align 8, !dbg !2181
  %bf.load16 = load i32, i32* %6, align 8, !dbg !2181
  %bf.clear17 = and i32 %bf.load16, 65535, !dbg !2181
  %cmp18 = icmp eq i32 %bf.clear17, 20, !dbg !2182
  br i1 %cmp18, label %lor.end, label %land.rhs, !dbg !2183

land.rhs:                                         ; preds = %lor.rhs
  %cmp29 = icmp ne i32 %bf.clear17, 21, !dbg !2184
  %phitmp1 = zext i1 %cmp29 to i8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs, %lor.lhs.false, %sw.bb
  %7 = phi i8 [ 1, %lor.lhs.false ], [ 1, %sw.bb ], [ 0, %lor.rhs ], [ %phitmp1, %land.rhs ]
  br label %return, !dbg !2185

sw.bb30:                                          ; preds = %entry
  %u31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !2186
  %8 = getelementptr inbounds %union.u, %union.u* %u31, i64 1, i32 0, i32 0, i64 0, !dbg !2186
  %9 = bitcast %union.rtunion_def* %8 to i32**, !dbg !2186
  %10 = load i32*, i32** %9, align 8, !dbg !2186
  %bf.load35 = load i32, i32* %10, align 8, !dbg !2186
  %bf.clear36 = and i32 %bf.load35, 65535, !dbg !2186
  %cmp37 = icmp eq i32 %bf.clear36, 20, !dbg !2187
  br i1 %cmp37, label %land.end48, label %land.rhs39, !dbg !2188

land.rhs39:                                       ; preds = %sw.bb30
  %cmp46 = icmp ne i32 %bf.clear36, 21, !dbg !2189
  %phitmp = zext i1 %cmp46 to i8
  br label %land.end48

land.end48:                                       ; preds = %sw.bb30, %land.rhs39
  %11 = phi i8 [ 0, %sw.bb30 ], [ %phitmp, %land.rhs39 ]
  br label %return, !dbg !2190

sw.bb51:                                          ; preds = %entry, %entry
  br label %return, !dbg !2191

sw.default:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2192
  br label %return, !dbg !2193

return:                                           ; preds = %entry, %entry, %entry, %sw.default, %sw.bb51, %land.end48, %lor.end
  %retval.0 = phi i8 [ 0, %sw.default ], [ 0, %sw.bb51 ], [ %11, %land.end48 ], [ %7, %lor.end ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], !dbg !2172
  ret i8 %retval.0, !dbg !2194
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @control_flow_insn_p(%struct.rtx_def* %insn) local_unnamed_addr #4 !dbg !2195 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2197, metadata !DIExpression()), !dbg !2198
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !2199
  %bf.load = load i32, i32* %0, align 8, !dbg !2199
  %trunc = trunc i32 %bf.load to i16, !dbg !2200
  switch i16 %trunc, label %sw.default [
    i16 13, label %return
    i16 12, label %return
    i16 7, label %return
    i16 9, label %sw.bb1
    i16 10, label %sw.bb11
    i16 8, label %sw.bb27
    i16 11, label %return
  ], !dbg !2200

sw.bb1:                                           ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !2201
  %1 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !2201
  %2 = bitcast %union.rtunion_def* %1 to i32**, !dbg !2201
  %3 = load i32*, i32** %2, align 8, !dbg !2201
  %bf.load2 = load i32, i32* %3, align 8, !dbg !2201
  %bf.clear3 = and i32 %bf.load2, 65535, !dbg !2201
  %cmp = icmp eq i32 %bf.clear3, 20, !dbg !2203
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !2204

land.rhs:                                         ; preds = %sw.bb1
  %cmp10 = icmp ne i32 %bf.clear3, 21, !dbg !2205
  %phitmp = zext i1 %cmp10 to i8
  br label %land.end

land.end:                                         ; preds = %sw.bb1, %land.rhs
  %4 = phi i8 [ 0, %sw.bb1 ], [ %phitmp, %land.rhs ]
  br label %return, !dbg !2206

sw.bb11:                                          ; preds = %entry
  %bf.clear13 = and i32 %bf.load, 16777216, !dbg !2207
  %tobool = icmp eq i32 %bf.clear13, 0, !dbg !2207
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true, !dbg !2209

lor.lhs.false:                                    ; preds = %sw.bb11
  %call = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %insn, i32 27, %struct.rtx_def* null) #6, !dbg !2210
  %tobool14 = icmp eq %struct.rtx_def* %call, null, !dbg !2210
  br i1 %tobool14, label %if.end, label %land.lhs.true, !dbg !2211

land.lhs.true:                                    ; preds = %lor.lhs.false, %sw.bb11
  %u15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !2212
  %5 = getelementptr inbounds %union.u, %union.u* %u15, i64 1, i32 0, i32 0, i64 0, !dbg !2212
  %6 = bitcast %union.rtunion_def* %5 to i32**, !dbg !2212
  %7 = load i32*, i32** %6, align 8, !dbg !2212
  %bf.load19 = load i32, i32* %7, align 8, !dbg !2212
  %bf.clear20 = and i32 %bf.load19, 65535, !dbg !2212
  %cmp21 = icmp eq i32 %bf.clear20, 14, !dbg !2213
  br i1 %cmp21, label %if.end, label %return, !dbg !2214

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %call23 = tail call zeroext i8 @can_nonlocal_goto(%struct.rtx_def* %insn) #6, !dbg !2215
  %tobool24 = icmp eq i8 %call23, 0, !dbg !2215
  br i1 %tobool24, label %sw.epilog, label %return, !dbg !2217

sw.bb27:                                          ; preds = %entry
  %u28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !2218
  %8 = getelementptr inbounds %union.u, %union.u* %u28, i64 1, i32 0, i32 0, i64 0, !dbg !2218
  %9 = bitcast %union.rtunion_def* %8 to i32**, !dbg !2218
  %10 = load i32*, i32** %9, align 8, !dbg !2218
  %bf.load32 = load i32, i32* %10, align 8, !dbg !2218
  %bf.clear33 = and i32 %bf.load32, 65535, !dbg !2218
  %cmp34 = icmp eq i32 %bf.clear33, 29, !dbg !2220
  br i1 %cmp34, label %land.lhs.true36, label %if.end48, !dbg !2221

land.lhs.true36:                                  ; preds = %sw.bb27
  %arrayidx43 = getelementptr inbounds i32, i32* %10, i64 2, !dbg !2222
  %rt_rtx44 = bitcast i32* %arrayidx43 to %struct.rtx_def**, !dbg !2222
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx44, align 8, !dbg !2222
  %12 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 65), align 8, !dbg !2223
  %cmp45 = icmp eq %struct.rtx_def* %11, %12, !dbg !2224
  br i1 %cmp45, label %return, label %if.end48, !dbg !2225

if.end48:                                         ; preds = %land.lhs.true36, %sw.bb27
  %13 = load i32, i32* @flag_non_call_exceptions, align 4, !dbg !2226
  %tobool49 = icmp eq i32 %13, 0, !dbg !2226
  br i1 %tobool49, label %return, label %sw.epilog, !dbg !2228

sw.default:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2229
  br label %sw.epilog, !dbg !2230

sw.epilog:                                        ; preds = %if.end, %if.end48, %sw.default
  %call53 = tail call zeroext i8 @can_throw_internal(%struct.rtx_def* %insn) #6, !dbg !2231
  br label %return, !dbg !2232

return:                                           ; preds = %land.lhs.true, %if.end, %if.end48, %entry, %land.lhs.true36, %entry, %entry, %entry, %sw.epilog, %land.end
  %retval.0 = phi i8 [ %call53, %sw.epilog ], [ %4, %land.end ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 1, %land.lhs.true ], [ 1, %if.end ], [ 1, %land.lhs.true36 ], [ 0, %if.end48 ], [ 0, %entry ], !dbg !2198
  ret i8 %retval.0, !dbg !2233
}

declare dso_local %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @can_nonlocal_goto(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @can_throw_internal(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @rtl_make_eh_edge(%struct.simple_bitmap_def* %edge_cache, %struct.basic_block_def* %src, %struct.rtx_def* %insn) local_unnamed_addr #4 !dbg !2234 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %edge_cache, metadata !2248, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %src, metadata !2249, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2250, metadata !DIExpression()), !dbg !2255
  %call = tail call %struct.eh_landing_pad_d* @get_eh_landing_pad_from_rtx(%struct.rtx_def* %insn) #6, !dbg !2256
  call void @llvm.dbg.value(metadata %struct.eh_landing_pad_d* %call, metadata !2251, metadata !DIExpression()), !dbg !2255
  %tobool = icmp eq %struct.eh_landing_pad_d* %call, null, !dbg !2257
  br i1 %tobool, label %if.end7, label %if.then, !dbg !2258

if.then:                                          ; preds = %entry
  %landing_pad = getelementptr inbounds %struct.eh_landing_pad_d, %struct.eh_landing_pad_d* %call, i64 0, i32 3, !dbg !2259
  %0 = load %struct.rtx_def*, %struct.rtx_def** %landing_pad, align 8, !dbg !2259
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !2252, metadata !DIExpression()), !dbg !2260
  %cmp = icmp eq %struct.rtx_def* %0, null, !dbg !2261
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2263

if.then1:                                         ; preds = %if.then
  %post_landing_pad = getelementptr inbounds %struct.eh_landing_pad_d, %struct.eh_landing_pad_d* %call, i64 0, i32 2, !dbg !2264
  %1 = load %union.tree_node*, %union.tree_node** %post_landing_pad, align 8, !dbg !2264
  %tobool2 = icmp eq %union.tree_node* %1, null, !dbg !2264
  br i1 %tobool2, label %cond.true, label %cond.end, !dbg !2264

cond.true:                                        ; preds = %if.then1
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2264
  %.pre = load %union.tree_node*, %union.tree_node** %post_landing_pad, align 8, !dbg !2266
  br label %cond.end, !dbg !2264

cond.end:                                         ; preds = %if.then1, %cond.true
  %2 = phi %union.tree_node* [ %1, %if.then1 ], [ %.pre, %cond.true ], !dbg !2266
  %call4 = tail call %struct.rtx_def* @label_rtx(%union.tree_node* %2) #6, !dbg !2267
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call4, metadata !2252, metadata !DIExpression()), !dbg !2260
  br label %if.end, !dbg !2268

if.end:                                           ; preds = %cond.end, %if.then
  %label.0 = phi %struct.rtx_def* [ %call4, %cond.end ], [ %0, %if.then ], !dbg !2260
  call void @llvm.dbg.value(metadata %struct.rtx_def* %label.0, metadata !2252, metadata !DIExpression()), !dbg !2260
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !2269
  %bf.load = load i32, i32* %3, align 8, !dbg !2269
  %bf.clear = and i32 %bf.load, 65535, !dbg !2269
  %cmp5 = icmp eq i32 %bf.clear, 10, !dbg !2269
  %or = select i1 %cmp5, i32 14, i32 10, !dbg !2270
  tail call fastcc void @make_label_edge(%struct.simple_bitmap_def* %edge_cache, %struct.basic_block_def* %src, %struct.rtx_def* %label.0, i32 %or) #7, !dbg !2271
  br label %if.end7, !dbg !2272

if.end7:                                          ; preds = %entry, %if.end
  ret void, !dbg !2273
}

declare dso_local %struct.eh_landing_pad_d* @get_eh_landing_pad_from_rtx(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @label_rtx(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @make_label_edge(%struct.simple_bitmap_def* %edge_cache, %struct.basic_block_def* %src, %struct.rtx_def* %label, i32 %flags) unnamed_addr #4 !dbg !2274 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %edge_cache, metadata !2278, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %src, metadata !2279, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata %struct.rtx_def* %label, metadata !2280, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2281, metadata !DIExpression()), !dbg !2282
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %label, i64 0, i32 0, !dbg !2283
  %bf.load = load i32, i32* %0, align 8, !dbg !2283
  %bf.clear = and i32 %bf.load, 65535, !dbg !2283
  %cmp = icmp eq i32 %bf.clear, 12, !dbg !2283
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2283

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2283
  br label %cond.end, !dbg !2283

cond.end:                                         ; preds = %entry, %cond.true
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %label, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2284
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !2284
  %1 = load i32, i32* %rt_int, align 8, !dbg !2284
  %cmp1 = icmp eq i32 %1, 0, !dbg !2286
  br i1 %cmp1, label %return, label %if.end, !dbg !2287

if.end:                                           ; preds = %cond.end
  %arrayidx4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %label, i64 0, i32 1, i32 0, i32 1, !dbg !2288
  %rt_bb = bitcast %struct.object_block** %arrayidx4 to %struct.basic_block_def**, !dbg !2288
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !2288
  %call = tail call %struct.edge_def* @cached_make_edge(%struct.simple_bitmap_def* %edge_cache, %struct.basic_block_def* %src, %struct.basic_block_def* %2, i32 %flags) #6, !dbg !2289
  br label %return, !dbg !2290

return:                                           ; preds = %cond.end, %if.end
  ret void, !dbg !2290
}

; Function Attrs: nounwind uwtable
define dso_local void @find_many_sub_basic_blocks(%struct.simple_bitmap_def* %blocks) local_unnamed_addr #4 !dbg !2291 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %blocks, metadata !2295, metadata !DIExpression()), !dbg !2311
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2312
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2312
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2312
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2312
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2312
  br label %for.cond, !dbg !2312

for.cond:                                         ; preds = %for.body, %entry
  %3 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre, %for.body ], !dbg !2314
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.body ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2316
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2316
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2296, metadata !DIExpression()), !dbg !2311
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !2314
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2314
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %4, !dbg !2314
  br i1 %cmp, label %for.end, label %for.body, !dbg !2312

for.body:                                         ; preds = %for.cond
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2317
  %5 = load i32, i32* %index, align 8, !dbg !2317
  %div = lshr i32 %5, 6, !dbg !2317
  %idxprom = zext i32 %div to i64, !dbg !2317
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %blocks, i64 0, i32 3, i64 %idxprom, !dbg !2317
  %6 = load i64, i64* %arrayidx, align 8, !dbg !2317
  %rem = and i32 %5, 63, !dbg !2317
  %sh_prom = zext i32 %rem to i64, !dbg !2317
  %7 = shl i64 1, %sh_prom, !dbg !2317
  %8 = and i64 %6, %7, !dbg !2317
  %tobool = icmp eq i64 %8, 0, !dbg !2317
  %conv = select i1 %tobool, i64 1, i64 2, !dbg !2317
  %9 = inttoptr i64 %conv to i8*, !dbg !2317
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !2317
  store i8* %9, i8** %aux, align 8, !dbg !2317
  %.pre = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2314
  br label %for.cond, !dbg !2314, !llvm.loop !2318

for.end:                                          ; preds = %for.cond
  %.lcssa17 = phi %struct.control_flow_graph* [ %3, %for.cond ], !dbg !2314
  %bb.0.lcssa = phi %struct.basic_block_def* [ %bb.0, %for.cond ], !dbg !2316
  %x_entry_block_ptr7 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa17, i64 0, i32 0, !dbg !2320
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr7, align 8, !dbg !2320
  br label %for.cond9, !dbg !2320

for.cond9:                                        ; preds = %for.inc20, %for.end
  %.pre512 = phi %struct.control_flow_graph* [ %.lcssa17, %for.end ], [ %.pre5, %for.inc20 ]
  %11 = phi %struct.basic_block_def* [ %bb.0.lcssa, %for.end ], [ %.pre6, %for.inc20 ], !dbg !2322
  %12 = phi %struct.control_flow_graph* [ %.lcssa17, %for.end ], [ %.pre5, %for.inc20 ], !dbg !2322
  %.pn1 = phi %struct.basic_block_def* [ %10, %for.end ], [ %bb.1, %for.inc20 ]
  %bb.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn1, i64 0, i32 6, !dbg !2324
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !2324
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !2296, metadata !DIExpression()), !dbg !2311
  %cmp13 = icmp eq %struct.basic_block_def* %bb.1, %11, !dbg !2322
  br i1 %cmp13, label %for.end22, label %for.body15, !dbg !2320

for.body15:                                       ; preds = %for.cond9
  %aux16 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 2, !dbg !2325
  %13 = bitcast i8** %aux16 to i64*, !dbg !2325
  %14 = load i64, i64* %13, align 8, !dbg !2325
  %conv17 = trunc i64 %14 to i32, !dbg !2325
  %cmp18 = icmp eq i32 %conv17, 2, !dbg !2327
  br i1 %cmp18, label %if.then, label %for.inc20, !dbg !2328

if.then:                                          ; preds = %for.body15
  tail call fastcc void @find_bb_boundaries(%struct.basic_block_def* %bb.1) #7, !dbg !2329
  %.pre4.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2322
  %cfg11.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre4.pre, i64 0, i32 1, !dbg !2330
  %.pre5.pre = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg11.phi.trans.insert.phi.trans.insert, align 8, !dbg !2322
  br label %for.inc20, !dbg !2329

for.inc20:                                        ; preds = %for.body15, %if.then
  %.pre5 = phi %struct.control_flow_graph* [ %.pre512, %for.body15 ], [ %.pre5.pre, %if.then ], !dbg !2322
  %x_exit_block_ptr12.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre5, i64 0, i32 1, !dbg !2330
  %.pre6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr12.phi.trans.insert, align 8, !dbg !2322
  br label %for.cond9, !dbg !2322, !llvm.loop !2331

for.end22:                                        ; preds = %for.cond9
  %.lcssa16 = phi %struct.basic_block_def* [ %11, %for.cond9 ], !dbg !2322
  %.lcssa = phi %struct.control_flow_graph* [ %12, %for.cond9 ], !dbg !2322
  %x_entry_block_ptr25 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa, i64 0, i32 0, !dbg !2333
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr25, align 8, !dbg !2333
  br label %for.cond27, !dbg !2333

for.cond27:                                       ; preds = %for.inc40, %for.end22
  %.pn2 = phi %struct.basic_block_def* [ %15, %for.end22 ], [ %bb.2, %for.inc40 ]
  %bb.2.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn2, i64 0, i32 6, !dbg !2335
  %bb.2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.2.in, align 8, !dbg !2335
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.2, metadata !2296, metadata !DIExpression()), !dbg !2311
  %cmp31 = icmp eq %struct.basic_block_def* %bb.2, %.lcssa16, !dbg !2336
  br i1 %cmp31, label %for.end42, label %for.body33, !dbg !2333

for.body33:                                       ; preds = %for.cond27
  %aux34 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 2, !dbg !2338
  %16 = bitcast i8** %aux34 to i64*, !dbg !2338
  %17 = load i64, i64* %16, align 8, !dbg !2338
  %conv35 = trunc i64 %17 to i32, !dbg !2338
  %cmp36 = icmp eq i32 %conv35, 1, !dbg !2340
  br i1 %cmp36, label %for.inc40, label %for.end42, !dbg !2341

for.inc40:                                        ; preds = %for.body33
  br label %for.cond27, !dbg !2336, !llvm.loop !2342

for.end42:                                        ; preds = %for.body33, %for.cond27
  %bb.2.lcssa = phi %struct.basic_block_def* [ %bb.2, %for.body33 ], [ %bb.2, %for.cond27 ], !dbg !2335
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.2.lcssa, metadata !2298, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.2.lcssa, metadata !2297, metadata !DIExpression()), !dbg !2311
  br label %for.cond43, !dbg !2344

for.cond43:                                       ; preds = %for.body49, %for.end42
  %max.0 = phi %struct.basic_block_def* [ %bb.2.lcssa, %for.end42 ], [ %spec.select, %for.body49 ], !dbg !2311
  %bb.3 = phi %struct.basic_block_def* [ %bb.2.lcssa, %for.end42 ], [ %20, %for.body49 ], !dbg !2311
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.3, metadata !2296, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %max.0, metadata !2298, metadata !DIExpression()), !dbg !2311
  %cmp47 = icmp eq %struct.basic_block_def* %bb.3, %.lcssa16, !dbg !2345
  br i1 %cmp47, label %for.end58, label %for.body49, !dbg !2348

for.body49:                                       ; preds = %for.cond43
  %aux50 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.3, i64 0, i32 2, !dbg !2349
  %18 = bitcast i8** %aux50 to i64*, !dbg !2349
  %19 = load i64, i64* %18, align 8, !dbg !2349
  %conv51 = trunc i64 %19 to i32, !dbg !2349
  %cmp52 = icmp eq i32 %conv51, 1, !dbg !2351
  %spec.select = select i1 %cmp52, %struct.basic_block_def* %max.0, %struct.basic_block_def* %bb.3, !dbg !2352
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %spec.select, metadata !2298, metadata !DIExpression()), !dbg !2311
  %next_bb57 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.3, i64 0, i32 6, !dbg !2353
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb57, align 8, !dbg !2353
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %20, metadata !2296, metadata !DIExpression()), !dbg !2311
  br label %for.cond43, !dbg !2354, !llvm.loop !2355

for.end58:                                        ; preds = %for.cond43
  %max.0.lcssa = phi %struct.basic_block_def* [ %max.0, %for.cond43 ], !dbg !2311
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %max.0.lcssa, metadata !2298, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %max.0.lcssa, metadata !2298, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %max.0.lcssa, metadata !2298, metadata !DIExpression()), !dbg !2311
  tail call fastcc void @make_edges(%struct.basic_block_def* %bb.2.lcssa, %struct.basic_block_def* %max.0.lcssa, i32 1) #7, !dbg !2357
  %21 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2358
  %cfg60 = getelementptr inbounds %struct.function, %struct.function* %21, i64 0, i32 1, !dbg !2358
  %22 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg60, align 8, !dbg !2358
  %x_profile_status = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %22, i64 0, i32 7, !dbg !2358
  %23 = load i32, i32* %x_profile_status, align 8, !dbg !2358
  %cmp61 = icmp eq i32 %23, 0, !dbg !2359
  br i1 %cmp61, label %if.end98, label %for.cond64.preheader, !dbg !2360

for.cond64.preheader:                             ; preds = %for.end58
  %next_bb65 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %max.0.lcssa, i64 0, i32 6, !dbg !2361
  %24 = bitcast %struct.edge_def** %e to i8*, !dbg !2362
  %25 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2362
  %26 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2363
  %27 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2363
  %28 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2363
  %29 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2367
  %30 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2367
  br label %for.cond64, !dbg !2369

for.cond64:                                       ; preds = %for.cond64.preheader, %cleanup
  %bb.4 = phi %struct.basic_block_def* [ %45, %cleanup ], [ %bb.2.lcssa, %for.cond64.preheader ], !dbg !2370
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.4, metadata !2296, metadata !DIExpression()), !dbg !2311
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb65, align 8, !dbg !2371
  %cmp66 = icmp eq %struct.basic_block_def* %bb.4, %31, !dbg !2371
  br i1 %cmp66, label %if.end98.loopexit, label %for.body68, !dbg !2369

for.body68:                                       ; preds = %for.cond64
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #8, !dbg !2372
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #8, !dbg !2373
  %aux69 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.4, i64 0, i32 2, !dbg !2374
  %32 = bitcast i8** %aux69 to i64*, !dbg !2374
  %33 = load i64, i64* %32, align 8, !dbg !2374
  %conv70 = trunc i64 %33 to i32, !dbg !2374
  %cmp71 = icmp eq i32 %conv70, 1, !dbg !2376
  br i1 %cmp71, label %cleanup, label %if.end74, !dbg !2377

if.end74:                                         ; preds = %for.body68
  %cmp77 = icmp eq i32 %conv70, 0, !dbg !2378
  br i1 %cmp77, label %if.then79, label %if.end93, !dbg !2379

if.then79:                                        ; preds = %if.end74
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.4, i64 0, i32 8, !dbg !2380
  store i64 0, i64* %count, align 8, !dbg !2381
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.4, i64 0, i32 11, !dbg !2382
  store i32 0, i32* %frequency, align 8, !dbg !2383
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #8, !dbg !2384
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.4, i64 0, i32 0, !dbg !2384
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !2384
  %34 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !2384
  store i32 %34, i32* %27, align 8, !dbg !2384
  %35 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !2384
  store %struct.VEC_edge_gc** %35, %struct.VEC_edge_gc*** %28, align 8, !dbg !2384
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %25, i8* nonnull align 8 %26, i64 16, i1 false), !dbg !2384
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #8, !dbg !2384
  br label %for.cond80, !dbg !2384

for.cond80:                                       ; preds = %for.body83, %if.then79
  %36 = load i32, i32* %29, align 8, !dbg !2385
  %37 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %30, align 8, !dbg !2385
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2299, metadata !DIExpression(DW_OP_deref)), !dbg !2362
  %call81 = call fastcc zeroext i8 @ei_cond(i32 %36, %struct.VEC_edge_gc** %37, %struct.edge_def** nonnull %e) #7, !dbg !2385
  %tobool82 = icmp eq i8 %call81, 0, !dbg !2384
  br i1 %tobool82, label %if.end93.loopexit, label %for.body83, !dbg !2384

for.body83:                                       ; preds = %for.cond80
  %38 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2386
  call void @llvm.dbg.value(metadata %struct.edge_def* %38, metadata !2299, metadata !DIExpression()), !dbg !2362
  %count84 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i64 0, i32 9, !dbg !2388
  %39 = load i64, i64* %count84, align 8, !dbg !2388
  %40 = load i64, i64* %count, align 8, !dbg !2389
  %add = add nsw i64 %40, %39, !dbg !2389
  store i64 %add, i64* %count, align 8, !dbg !2389
  call void @llvm.dbg.value(metadata %struct.edge_def* %38, metadata !2299, metadata !DIExpression()), !dbg !2362
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i64 0, i32 0, !dbg !2390
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2390
  %frequency86 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i64 0, i32 11, !dbg !2390
  %42 = load i32, i32* %frequency86, align 8, !dbg !2390
  call void @llvm.dbg.value(metadata %struct.edge_def* %38, metadata !2299, metadata !DIExpression()), !dbg !2362
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i64 0, i32 8, !dbg !2390
  %43 = load i32, i32* %probability, align 4, !dbg !2390
  %mul = mul nsw i32 %42, %43, !dbg !2390
  %add87 = add nsw i32 %mul, 5000, !dbg !2390
  %div88 = sdiv i32 %add87, 10000, !dbg !2390
  %44 = load i32, i32* %frequency, align 8, !dbg !2391
  %add90 = add nsw i32 %44, %div88, !dbg !2391
  store i32 %add90, i32* %frequency, align 8, !dbg !2391
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2304, metadata !DIExpression(DW_OP_deref)), !dbg !2362
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2385
  br label %for.cond80, !dbg !2385, !llvm.loop !2392

if.end93.loopexit:                                ; preds = %for.cond80
  br label %if.end93, !dbg !2394

if.end93:                                         ; preds = %if.end93.loopexit, %if.end74
  call fastcc void @compute_outgoing_frequencies(%struct.basic_block_def* %bb.4) #7, !dbg !2394
  br label %cleanup, !dbg !2395

cleanup:                                          ; preds = %for.body68, %if.end93
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #8, !dbg !2395
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #8, !dbg !2395
  %next_bb96 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.4, i64 0, i32 6, !dbg !2371
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb96, align 8, !dbg !2371
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %45, metadata !2296, metadata !DIExpression()), !dbg !2311
  br label %for.cond64, !dbg !2371, !llvm.loop !2396

if.end98.loopexit:                                ; preds = %for.cond64
  %.pre9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2398
  %cfg100.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre9, i64 0, i32 1, !dbg !2400
  %.pre10 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg100.phi.trans.insert, align 8, !dbg !2398
  br label %if.end98, !dbg !2398

if.end98:                                         ; preds = %if.end98.loopexit, %for.end58
  %46 = phi %struct.control_flow_graph* [ %.pre10, %if.end98.loopexit ], [ %22, %for.end58 ], !dbg !2398
  %47 = phi %struct.function* [ %.pre9, %if.end98.loopexit ], [ %21, %for.end58 ], !dbg !2398
  %cfg100 = getelementptr inbounds %struct.function, %struct.function* %47, i64 0, i32 1, !dbg !2398
  %x_entry_block_ptr101 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %46, i64 0, i32 0, !dbg !2398
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr101, align 8, !dbg !2398
  br label %for.cond103, !dbg !2398

for.cond103:                                      ; preds = %for.body109, %if.end98
  %49 = phi %struct.control_flow_graph* [ %46, %if.end98 ], [ %.pre11, %for.body109 ], !dbg !2401
  %.pn3 = phi %struct.basic_block_def* [ %48, %if.end98 ], [ %bb.5, %for.body109 ]
  %bb.5.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn3, i64 0, i32 6, !dbg !2400
  %bb.5 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.5.in, align 8, !dbg !2400
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.5, metadata !2296, metadata !DIExpression()), !dbg !2311
  %x_exit_block_ptr106 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %49, i64 0, i32 1, !dbg !2401
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr106, align 8, !dbg !2401
  %cmp107 = icmp eq %struct.basic_block_def* %bb.5, %50, !dbg !2401
  br i1 %cmp107, label %for.end113, label %for.body109, !dbg !2398

for.body109:                                      ; preds = %for.cond103
  %aux110 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.5, i64 0, i32 2, !dbg !2403
  store i8* null, i8** %aux110, align 8, !dbg !2403
  %.pre11 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg100, align 8, !dbg !2401
  br label %for.cond103, !dbg !2401, !llvm.loop !2404

for.end113:                                       ; preds = %for.cond103
  ret void, !dbg !2406
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_bb_boundaries(%struct.basic_block_def* %bb) unnamed_addr #4 !dbg !2407 {
entry:
  %table = alloca %struct.rtx_def*, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2411, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2412, metadata !DIExpression()), !dbg !2421
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !2422
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2422
  %0 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2422
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 0, !dbg !2422
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !2422
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !2413, metadata !DIExpression()), !dbg !2421
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 1, !dbg !2423
  %2 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2423
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !2414, metadata !DIExpression()), !dbg !2421
  %3 = bitcast %struct.rtx_def** %table to i8*, !dbg !2424
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2424
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !2417, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !2418, metadata !DIExpression()), !dbg !2421
  %cmp = icmp eq %struct.rtx_def* %1, %2, !dbg !2425
  br i1 %cmp, label %cleanup119, label %if.end, !dbg !2427

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !2428
  %bf.load = load i32, i32* %4, align 8, !dbg !2428
  %bf.clear = and i32 %bf.load, 65535, !dbg !2428
  %cmp6 = icmp eq i32 %bf.clear, 12, !dbg !2428
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !2430

if.then7:                                         ; preds = %if.end
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2431
  %rt_rtx = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !2431
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2431
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !2413, metadata !DIExpression()), !dbg !2421
  br label %if.end8, !dbg !2432

if.end8:                                          ; preds = %if.then7, %if.end
  %insn.0 = phi %struct.rtx_def* [ %6, %if.then7 ], [ %1, %if.end ], !dbg !2421
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2413, metadata !DIExpression()), !dbg !2421
  br label %while.cond, !dbg !2433

while.cond:                                       ; preds = %cleanup, %if.end8
  %flow_transfer_insn.0 = phi %struct.rtx_def* [ null, %if.end8 ], [ %spec.select, %cleanup ], !dbg !2421
  %insn.1 = phi %struct.rtx_def* [ %insn.0, %if.end8 ], [ %insn.2, %cleanup ], !dbg !2434
  %bb.addr.0 = phi %struct.basic_block_def* [ %bb, %if.end8 ], [ %bb.addr.1, %cleanup ]
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.0, metadata !2411, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1, metadata !2413, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata %struct.rtx_def* %flow_transfer_insn.0, metadata !2417, metadata !DIExpression()), !dbg !2421
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 0, !dbg !2435
  %bf.load9 = load i32, i32* %7, align 8, !dbg !2435
  %bf.clear10 = and i32 %bf.load9, 65535, !dbg !2435
  call void @llvm.dbg.value(metadata i32 %bf.clear10, metadata !2419, metadata !DIExpression()), !dbg !2436
  %tobool = icmp ne %struct.rtx_def* %flow_transfer_insn.0, null, !dbg !2437
  %cmp11 = icmp eq i32 %bf.clear10, 12, !dbg !2439
  %or.cond = or i1 %tobool, %cmp11, !dbg !2440
  br i1 %or.cond, label %land.lhs.true, label %if.else, !dbg !2440

land.lhs.true:                                    ; preds = %while.cond
  %call = tail call zeroext i8 @inside_basic_block_p(%struct.rtx_def* %insn.1) #7, !dbg !2441
  %tobool12 = icmp eq i8 %call, 0, !dbg !2441
  br i1 %tobool12, label %if.else, label %if.then13, !dbg !2442

if.then13:                                        ; preds = %land.lhs.true
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 1, i32 0, i32 0, i64 1, i32 0, !dbg !2443
  %9 = load i8*, i8** %8, align 8, !dbg !2443
  %call18 = tail call %struct.edge_def* @split_block(%struct.basic_block_def* %bb.addr.0, i8* %9) #6, !dbg !2445
  call void @llvm.dbg.value(metadata %struct.edge_def* %call18, metadata !2418, metadata !DIExpression()), !dbg !2421
  %tobool19 = icmp eq %struct.rtx_def* %flow_transfer_insn.0, null, !dbg !2446
  br i1 %tobool19, label %if.then13.if.end46_crit_edge, label %if.then20, !dbg !2448

if.then13.if.end46_crit_edge:                     ; preds = %if.then13
  %dest47.phi.trans.insert = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call18, i64 0, i32 1, !dbg !2449
  %.pre = load %struct.basic_block_def*, %struct.basic_block_def** %dest47.phi.trans.insert, align 8, !dbg !2450
  br label %if.end46, !dbg !2448

if.then20:                                        ; preds = %if.then13
  %il21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.addr.0, i64 0, i32 7, !dbg !2451
  %rtl22 = bitcast %union.basic_block_il_dependent* %il21 to %struct.rtl_bb_info**, !dbg !2451
  %10 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl22, align 8, !dbg !2451
  %end_23 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %10, i64 0, i32 1, !dbg !2451
  store %struct.rtx_def* %flow_transfer_insn.0, %struct.rtx_def** %end_23, align 8, !dbg !2453
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call18, i64 0, i32 1, !dbg !2454
  br label %for.cond, !dbg !2457

for.cond:                                         ; preds = %for.inc, %if.then20
  %flow_transfer_insn.0.pn = phi %struct.rtx_def* [ %flow_transfer_insn.0, %if.then20 ], [ %x.0, %for.inc ]
  %x.0.in.in = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %flow_transfer_insn.0.pn, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2458
  %x.0.in = bitcast %union.rtunion_def* %x.0.in.in to %struct.rtx_def**, !dbg !2458
  %x.0 = load %struct.rtx_def*, %struct.rtx_def** %x.0.in, align 8, !dbg !2458
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.0, metadata !2415, metadata !DIExpression()), !dbg !2421
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2459
  %il28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i64 0, i32 7, !dbg !2459
  %rtl29 = bitcast %union.basic_block_il_dependent* %il28 to %struct.rtl_bb_info**, !dbg !2459
  %12 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl29, align 8, !dbg !2459
  %head_30 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %12, i64 0, i32 0, !dbg !2459
  %13 = load %struct.rtx_def*, %struct.rtx_def** %head_30, align 8, !dbg !2459
  %cmp31 = icmp eq %struct.rtx_def* %x.0, %13, !dbg !2460
  br i1 %cmp31, label %if.end46.loopexit, label %for.body, !dbg !2461

for.body:                                         ; preds = %for.cond
  %14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.0, i64 0, i32 0, !dbg !2462
  %bf.load33 = load i32, i32* %14, align 8, !dbg !2462
  %bf.clear34 = and i32 %bf.load33, 65535, !dbg !2462
  %cmp35 = icmp eq i32 %bf.clear34, 11, !dbg !2462
  br i1 %cmp35, label %for.inc, label %if.then37, !dbg !2464

if.then37:                                        ; preds = %for.body
  %arrayidx40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.0, i64 0, i32 1, i32 0, i32 1, !dbg !2465
  %rt_bb = bitcast %struct.object_block** %arrayidx40 to %struct.basic_block_def**, !dbg !2465
  store %struct.basic_block_def* null, %struct.basic_block_def** %rt_bb, align 8, !dbg !2465
  br label %for.inc, !dbg !2465

for.inc:                                          ; preds = %for.body, %if.then37
  br label %for.cond, !dbg !2466, !llvm.loop !2467

if.end46.loopexit:                                ; preds = %for.cond
  %.lcssa = phi %struct.basic_block_def* [ %11, %for.cond ], !dbg !2459
  br label %if.end46, !dbg !2450

if.end46:                                         ; preds = %if.then13.if.end46_crit_edge, %if.end46.loopexit
  %15 = phi %struct.basic_block_def* [ %.pre, %if.then13.if.end46_crit_edge ], [ %.lcssa, %if.end46.loopexit ], !dbg !2450
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %15, metadata !2411, metadata !DIExpression()), !dbg !2421
  tail call void @remove_edge(%struct.edge_def* %call18) #6, !dbg !2469
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !2417, metadata !DIExpression()), !dbg !2421
  br i1 %cmp11, label %land.lhs.true50, label %if.end69, !dbg !2470

land.lhs.true50:                                  ; preds = %if.end46
  %bf.load51 = load i32, i32* %7, align 8, !dbg !2472
  %16 = lshr i32 %bf.load51, 23, !dbg !2472
  %shl = and i32 %16, 2, !dbg !2472
  %bf.lshr54 = lshr i32 %bf.load51, 25, !dbg !2472
  %bf.clear55 = and i32 %bf.lshr54, 1, !dbg !2472
  %or = or i32 %shl, %bf.clear55, !dbg !2472
  %cmp56 = icmp eq i32 %or, 0, !dbg !2472
  br i1 %cmp56, label %if.end69, label %if.then58, !dbg !2473

if.then58:                                        ; preds = %land.lhs.true50
  %17 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2474
  %cfg = getelementptr inbounds %struct.function, %struct.function* %17, i64 0, i32 1, !dbg !2474
  %18 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2474
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %18, i64 0, i32 0, !dbg !2474
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2474
  %call59 = tail call %struct.edge_def* @make_edge(%struct.basic_block_def* %19, %struct.basic_block_def* %15, i32 0) #6, !dbg !2475
  br label %if.end69, !dbg !2475

if.else:                                          ; preds = %land.lhs.true, %while.cond
  %cmp61 = icmp ne i32 %bf.clear10, 11, !dbg !2476
  %or.cond1 = or i1 %cmp61, %tobool, !dbg !2478
  br i1 %or.cond1, label %if.end69, label %if.then65, !dbg !2478

if.then65:                                        ; preds = %if.else
  %call66 = tail call %struct.rtx_def* @prev_nonnote_insn_bb(%struct.rtx_def* %insn.1) #6, !dbg !2479
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call66, metadata !2417, metadata !DIExpression()), !dbg !2421
  br label %if.end69, !dbg !2482

if.end69:                                         ; preds = %land.lhs.true50, %if.else, %if.then65, %if.end46, %if.then58
  %flow_transfer_insn.3 = phi %struct.rtx_def* [ null, %if.then58 ], [ null, %land.lhs.true50 ], [ null, %if.end46 ], [ %flow_transfer_insn.0, %if.else ], [ %call66, %if.then65 ], !dbg !2421
  %bb.addr.1 = phi %struct.basic_block_def* [ %15, %if.then58 ], [ %15, %land.lhs.true50 ], [ %15, %if.end46 ], [ %bb.addr.0, %if.else ], [ %bb.addr.0, %if.then65 ]
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.1, metadata !2411, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata %struct.rtx_def* %flow_transfer_insn.3, metadata !2417, metadata !DIExpression()), !dbg !2421
  %call70 = tail call zeroext i8 @control_flow_insn_p(%struct.rtx_def* %insn.1) #7, !dbg !2483
  %tobool71 = icmp eq i8 %call70, 0, !dbg !2483
  %spec.select = select i1 %tobool71, %struct.rtx_def* %flow_transfer_insn.3, %struct.rtx_def* %insn.1, !dbg !2485
  call void @llvm.dbg.value(metadata %struct.rtx_def* %spec.select, metadata !2417, metadata !DIExpression()), !dbg !2421
  %cmp74 = icmp eq %struct.rtx_def* %insn.1, %2, !dbg !2486
  br i1 %cmp74, label %cleanup, label %if.end77, !dbg !2488

if.end77:                                         ; preds = %if.end69
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2489
  %rt_rtx81 = bitcast %union.rtunion_def* %20 to %struct.rtx_def**, !dbg !2489
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx81, align 8, !dbg !2489
  call void @llvm.dbg.value(metadata %struct.rtx_def* %21, metadata !2413, metadata !DIExpression()), !dbg !2421
  br label %cleanup, !dbg !2490

cleanup:                                          ; preds = %if.end69, %if.end77
  %insn.2 = phi %struct.rtx_def* [ %21, %if.end77 ], [ %2, %if.end69 ], !dbg !2421
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end77 ], [ false, %if.end69 ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.2, metadata !2413, metadata !DIExpression()), !dbg !2421
  br i1 %cleanup.dest.slot.0, label %while.cond, label %while.end, !llvm.loop !2491

while.end:                                        ; preds = %cleanup
  %bb.addr.1.lcssa = phi %struct.basic_block_def* [ %bb.addr.1, %cleanup ]
  %spec.select.lcssa = phi %struct.rtx_def* [ %spec.select, %cleanup ], !dbg !2485
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.1.lcssa, metadata !2411, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.1.lcssa, metadata !2411, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.1.lcssa, metadata !2411, metadata !DIExpression()), !dbg !2421
  %tobool82 = icmp eq %struct.rtx_def* %spec.select.lcssa, null, !dbg !2492
  br i1 %tobool82, label %if.end106, label %if.then83, !dbg !2494

if.then83:                                        ; preds = %while.end
  %il84 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.addr.1.lcssa, i64 0, i32 7, !dbg !2495
  %rtl85 = bitcast %union.basic_block_il_dependent* %il84 to %struct.rtl_bb_info**, !dbg !2495
  %22 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl85, align 8, !dbg !2495
  %end_86 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %22, i64 0, i32 1, !dbg !2495
  store %struct.rtx_def* %spec.select.lcssa, %struct.rtx_def** %end_86, align 8, !dbg !2497
  call void @llvm.dbg.value(metadata %struct.rtx_def* %spec.select.lcssa, metadata !2415, metadata !DIExpression()), !dbg !2421
  br label %while.cond87, !dbg !2498

while.cond87:                                     ; preds = %if.end104, %if.then83
  %x.1 = phi %struct.rtx_def* [ %spec.select.lcssa, %if.then83 ], [ %24, %if.end104 ], !dbg !2499
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.1, metadata !2415, metadata !DIExpression()), !dbg !2421
  %cmp88 = icmp eq %struct.rtx_def* %x.1, %2, !dbg !2500
  br i1 %cmp88, label %if.end106.loopexit, label %while.body90, !dbg !2498

while.body90:                                     ; preds = %while.cond87
  %23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.1, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2501
  %rt_rtx94 = bitcast %union.rtunion_def* %23 to %struct.rtx_def**, !dbg !2501
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx94, align 8, !dbg !2501
  call void @llvm.dbg.value(metadata %struct.rtx_def* %24, metadata !2415, metadata !DIExpression()), !dbg !2421
  %25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i64 0, i32 0, !dbg !2503
  %bf.load95 = load i32, i32* %25, align 8, !dbg !2503
  %bf.clear96 = and i32 %bf.load95, 65535, !dbg !2503
  %cmp97 = icmp eq i32 %bf.clear96, 11, !dbg !2503
  br i1 %cmp97, label %if.end104, label %if.then99, !dbg !2505

if.then99:                                        ; preds = %while.body90
  %arrayidx102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i64 0, i32 1, i32 0, i32 1, !dbg !2506
  %rt_bb103 = bitcast %struct.object_block** %arrayidx102 to %struct.basic_block_def**, !dbg !2506
  store %struct.basic_block_def* null, %struct.basic_block_def** %rt_bb103, align 8, !dbg !2506
  br label %if.end104, !dbg !2506

if.end104:                                        ; preds = %if.then99, %while.body90
  br label %while.cond87, !dbg !2498, !llvm.loop !2507

if.end106.loopexit:                               ; preds = %while.cond87
  br label %if.end106, !dbg !2509

if.end106:                                        ; preds = %if.end106.loopexit, %while.end
  %call107 = tail call zeroext i8 @purge_dead_edges(%struct.basic_block_def* %bb.addr.1.lcssa) #6, !dbg !2509
  %cmp108 = icmp eq %struct.basic_block_def* %bb.addr.1.lcssa, %bb, !dbg !2510
  br i1 %cmp108, label %cleanup119, label %land.lhs.true110, !dbg !2512

land.lhs.true110:                                 ; preds = %if.end106
  %il111 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.addr.1.lcssa, i64 0, i32 7, !dbg !2513
  %rtl112 = bitcast %union.basic_block_il_dependent* %il111 to %struct.rtl_bb_info**, !dbg !2513
  %26 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl112, align 8, !dbg !2513
  %end_113 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %26, i64 0, i32 1, !dbg !2513
  %27 = load %struct.rtx_def*, %struct.rtx_def** %end_113, align 8, !dbg !2513
  call void @llvm.dbg.value(metadata %struct.rtx_def** %table, metadata !2416, metadata !DIExpression(DW_OP_deref)), !dbg !2421
  %call114 = call zeroext i8 @tablejump_p(%struct.rtx_def* %27, %struct.rtx_def** null, %struct.rtx_def** nonnull %table) #6, !dbg !2514
  %tobool116 = icmp eq i8 %call114, 0, !dbg !2514
  br i1 %tobool116, label %cleanup119, label %if.then117, !dbg !2515

if.then117:                                       ; preds = %land.lhs.true110
  %28 = load %struct.rtx_def*, %struct.rtx_def** %table, align 8, !dbg !2516
  call void @llvm.dbg.value(metadata %struct.rtx_def* %28, metadata !2416, metadata !DIExpression()), !dbg !2421
  call fastcc void @purge_dead_tablejump_edges(%struct.basic_block_def* %bb.addr.1.lcssa, %struct.rtx_def* %28) #7, !dbg !2517
  br label %cleanup119, !dbg !2517

cleanup119:                                       ; preds = %land.lhs.true110, %if.end106, %if.then117, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2518
  ret void, !dbg !2518
}

; Function Attrs: nounwind uwtable
define internal fastcc void @make_edges(%struct.basic_block_def* %min, %struct.basic_block_def* %max, i32 %update_p) unnamed_addr #4 !dbg !2519 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp64 = alloca %struct.rtx_def*, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %min, metadata !2523, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %max, metadata !2524, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i32 1, metadata !2525, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* null, metadata !2527, metadata !DIExpression()), !dbg !2550
  %0 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 0, i32 5), align 8, !dbg !2551
  %tobool = icmp eq %struct.rtx_def* %0, null, !dbg !2551
  br i1 %tobool, label %lor.lhs.false, label %entry.if.then_crit_edge, !dbg !2553

entry.if.then_crit_edge:                          ; preds = %entry
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2554
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2555
  %.pre5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2554
  br label %if.then, !dbg !2553

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2556
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2557
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2557
  %max_jumptable_ents = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 10, !dbg !2558
  %3 = load i32, i32* %max_jumptable_ents, align 4, !dbg !2558
  %cmp = icmp sgt i32 %3, 100, !dbg !2559
  br i1 %cmp, label %if.then, label %if.end, !dbg !2560

if.then:                                          ; preds = %entry.if.then_crit_edge, %lor.lhs.false
  %4 = phi %struct.control_flow_graph* [ %.pre5, %entry.if.then_crit_edge ], [ %2, %lor.lhs.false ], !dbg !2554
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 5, !dbg !2554
  %5 = load i32, i32* %x_last_basic_block, align 8, !dbg !2554
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %5) #6, !dbg !2561
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !2527, metadata !DIExpression()), !dbg !2550
  %.pre6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2562
  %cfg4.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre6, i64 0, i32 1, !dbg !2564
  %.pre7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg4.phi.trans.insert, align 8, !dbg !2562
  br label %if.end, !dbg !2565

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %6 = phi %struct.control_flow_graph* [ %.pre7, %if.then ], [ %2, %lor.lhs.false ], !dbg !2562
  %edge_cache.0 = phi %struct.simple_bitmap_def* [ %call, %if.then ], [ null, %lor.lhs.false ], !dbg !2550
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %edge_cache.0, metadata !2527, metadata !DIExpression()), !dbg !2550
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 0, !dbg !2562
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2562
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 6, !dbg !2566
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb, align 8, !dbg !2566
  %cmp5 = icmp eq %struct.basic_block_def* %8, %min, !dbg !2567
  br i1 %cmp5, label %if.then6, label %if.end11, !dbg !2568

if.then6:                                         ; preds = %if.end
  %call10 = tail call %struct.edge_def* @make_edge(%struct.basic_block_def* %7, %struct.basic_block_def* %min, i32 1) #6, !dbg !2569
  br label %if.end11, !dbg !2569

if.end11:                                         ; preds = %if.then6, %if.end
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %min, metadata !2526, metadata !DIExpression()), !dbg !2550
  %next_bb12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %max, i64 0, i32 6, !dbg !2570
  %9 = bitcast %struct.edge_def** %e to i8*, !dbg !2571
  %10 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2571
  %tobool18 = icmp eq %struct.simple_bitmap_def* %edge_cache.0, null, !dbg !2572
  %11 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2574
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2574
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2574
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2579
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2579
  %16 = bitcast %struct.rtx_def** %tmp64 to i8*, !dbg !2581
  br label %for.cond, !dbg !2582

for.cond:                                         ; preds = %cleanup, %if.end11
  %bb.0 = phi %struct.basic_block_def* [ %min, %if.end11 ], [ %109, %cleanup ], !dbg !2583
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2526, metadata !DIExpression()), !dbg !2550
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb12, align 8, !dbg !2584
  %cmp13 = icmp eq %struct.basic_block_def* %bb.0, %17, !dbg !2584
  br i1 %cmp13, label %for.end368, label %for.body, !dbg !2582

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #8, !dbg !2585
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #8, !dbg !2586
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !2587
  %18 = bitcast i8** %aux to i64*, !dbg !2587
  %19 = load i64, i64* %18, align 8, !dbg !2587
  %conv = trunc i64 %19 to i32, !dbg !2587
  %cmp14 = icmp eq i32 %conv, 1, !dbg !2589
  br i1 %cmp14, label %cleanup, label %if.end17, !dbg !2590

if.end17:                                         ; preds = %for.body
  br i1 %tobool18, label %if.end35, label %if.then19, !dbg !2591

if.then19:                                        ; preds = %if.end17
  call void @sbitmap_zero(%struct.simple_bitmap_def* nonnull %edge_cache.0) #6, !dbg !2592
  br i1 false, label %if.then19.if.end35_crit_edge, label %if.then21, !dbg !2593

if.then19.if.end35_crit_edge:                     ; preds = %if.then19
  br label %if.end35, !dbg !2593

if.then21:                                        ; preds = %if.then19
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #8, !dbg !2594
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !2594
  %call22 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2594
  %20 = extractvalue { i32, %struct.VEC_edge_gc** } %call22, 0, !dbg !2594
  store i32 %20, i32* %12, align 8, !dbg !2594
  %21 = extractvalue { i32, %struct.VEC_edge_gc** } %call22, 1, !dbg !2594
  store %struct.VEC_edge_gc** %21, %struct.VEC_edge_gc*** %13, align 8, !dbg !2594
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %10, i8* nonnull align 8 %11, i64 16, i1 false), !dbg !2594
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #8, !dbg !2594
  br label %for.cond23, !dbg !2594

for.cond23:                                       ; preds = %for.inc, %if.then21
  %22 = load i32, i32* %14, align 8, !dbg !2595
  %23 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %15, align 8, !dbg !2595
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2534, metadata !DIExpression(DW_OP_deref)), !dbg !2571
  %call24 = call fastcc zeroext i8 @ei_cond(i32 %22, %struct.VEC_edge_gc** %23, %struct.edge_def** nonnull %e) #7, !dbg !2595
  %tobool25 = icmp eq i8 %call24, 0, !dbg !2594
  br i1 %tobool25, label %if.end35.loopexit, label %for.body26, !dbg !2594

for.body26:                                       ; preds = %for.cond23
  %24 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2596
  call void @llvm.dbg.value(metadata %struct.edge_def* %24, metadata !2534, metadata !DIExpression()), !dbg !2571
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i64 0, i32 1, !dbg !2598
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2598
  %26 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2599
  %cfg28 = getelementptr inbounds %struct.function, %struct.function* %26, i64 0, i32 1, !dbg !2599
  %27 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg28, align 8, !dbg !2599
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %27, i64 0, i32 1, !dbg !2599
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2599
  %cmp29 = icmp eq %struct.basic_block_def* %25, %28, !dbg !2600
  br i1 %cmp29, label %for.inc, label %if.then31, !dbg !2601

if.then31:                                        ; preds = %for.body26
  call void @llvm.dbg.value(metadata %struct.edge_def* %24, metadata !2534, metadata !DIExpression()), !dbg !2571
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i64 0, i32 9, !dbg !2602
  %29 = load i32, i32* %index, align 8, !dbg !2602
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* nonnull %edge_cache.0, i32 %29) #7, !dbg !2603
  br label %for.inc, !dbg !2603

for.inc:                                          ; preds = %for.body26, %if.then31
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2535, metadata !DIExpression(DW_OP_deref)), !dbg !2571
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2595
  br label %for.cond23, !dbg !2595, !llvm.loop !2604

if.end35.loopexit:                                ; preds = %for.cond23
  br label %if.end35, !dbg !2606

if.end35:                                         ; preds = %if.then19.if.end35_crit_edge, %if.end35.loopexit, %if.end17
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2606
  %30 = bitcast %union.basic_block_il_dependent* %il to i32***, !dbg !2606
  %31 = load i32**, i32*** %30, align 8, !dbg !2606
  %32 = load i32*, i32** %31, align 8, !dbg !2606
  %bf.load = load i32, i32* %32, align 8, !dbg !2606
  %bf.clear = and i32 %bf.load, 65535, !dbg !2606
  %cmp36 = icmp eq i32 %bf.clear, 12, !dbg !2606
  %33 = bitcast i32** %31 to %struct.rtl_bb_info*, !dbg !2608
  br i1 %cmp36, label %land.lhs.true, label %if.end56, !dbg !2608

land.lhs.true:                                    ; preds = %if.end35
  %34 = lshr i32 %bf.load, 23, !dbg !2609
  %shl = and i32 %34, 2, !dbg !2609
  %bf.lshr47 = lshr i32 %bf.load, 25, !dbg !2609
  %bf.clear48 = and i32 %bf.lshr47, 1, !dbg !2609
  %or = or i32 %shl, %bf.clear48, !dbg !2609
  %cmp49 = icmp eq i32 %or, 0, !dbg !2609
  br i1 %cmp49, label %if.end56, label %if.then51, !dbg !2610

if.then51:                                        ; preds = %land.lhs.true
  %35 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2611
  %cfg53 = getelementptr inbounds %struct.function, %struct.function* %35, i64 0, i32 1, !dbg !2611
  %36 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg53, align 8, !dbg !2611
  %x_entry_block_ptr54 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %36, i64 0, i32 0, !dbg !2611
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr54, align 8, !dbg !2611
  %call55 = call %struct.edge_def* @cached_make_edge(%struct.simple_bitmap_def* null, %struct.basic_block_def* %37, %struct.basic_block_def* %bb.0, i32 0) #6, !dbg !2612
  %rtl58.phi.trans.insert = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2571
  %.pre8 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl58.phi.trans.insert, align 8, !dbg !2613
  br label %if.end56, !dbg !2612

if.end56:                                         ; preds = %land.lhs.true, %if.then51, %if.end35
  %38 = phi %struct.rtl_bb_info* [ %33, %land.lhs.true ], [ %.pre8, %if.then51 ], [ %33, %if.end35 ], !dbg !2613
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %38, i64 0, i32 1, !dbg !2613
  %39 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2613
  call void @llvm.dbg.value(metadata %struct.rtx_def* %39, metadata !2528, metadata !DIExpression()), !dbg !2571
  %40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i64 0, i32 0, !dbg !2614
  %bf.load59 = load i32, i32* %40, align 8, !dbg !2614
  %bf.clear60 = and i32 %bf.load59, 65535, !dbg !2614
  call void @llvm.dbg.value(metadata i32 %bf.clear60, metadata !2533, metadata !DIExpression()), !dbg !2571
  %trunc = trunc i32 %bf.load59 to i16, !dbg !2615
  switch i16 %trunc, label %lor.lhs.false280 [
    i16 9, label %if.then63
    i16 10, label %land.lhs.true267
  ], !dbg !2615

if.then63:                                        ; preds = %if.end56
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #8, !dbg !2616
  %call65 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %39, i32 28, %struct.rtx_def* null) #6, !dbg !2617
  %tobool66 = icmp eq %struct.rtx_def* %call65, null, !dbg !2617
  br i1 %tobool66, label %if.else, label %if.end263, !dbg !2618

if.else:                                          ; preds = %if.then63
  call void @llvm.dbg.value(metadata %struct.rtx_def** %tmp64, metadata !2536, metadata !DIExpression(DW_OP_deref)), !dbg !2581
  %call68 = call zeroext i8 @tablejump_p(%struct.rtx_def* %39, %struct.rtx_def** null, %struct.rtx_def** nonnull %tmp64) #6, !dbg !2619
  %tobool69 = icmp eq i8 %call68, 0, !dbg !2619
  br i1 %tobool69, label %if.else189, label %if.then70, !dbg !2620

if.then70:                                        ; preds = %if.else
  %41 = load %struct.rtx_def*, %struct.rtx_def** %tmp64, align 8, !dbg !2621
  call void @llvm.dbg.value(metadata %struct.rtx_def* %41, metadata !2536, metadata !DIExpression()), !dbg !2581
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i64 0, i32 1, !dbg !2621
  %42 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !2621
  %43 = bitcast %union.rtunion_def* %42 to i32**, !dbg !2621
  %44 = load i32*, i32** %43, align 8, !dbg !2621
  %bf.load71 = load i32, i32* %44, align 8, !dbg !2621
  %bf.clear72 = and i32 %bf.load71, 65535, !dbg !2621
  %cmp73 = icmp eq i32 %bf.clear72, 20, !dbg !2623
  call void @llvm.dbg.value(metadata %struct.rtx_def* %41, metadata !2536, metadata !DIExpression()), !dbg !2581
  br i1 %cmp73, label %if.then75, label %if.else83, !dbg !2624

if.then75:                                        ; preds = %if.then70
  %arrayidx82 = getelementptr inbounds i32, i32* %44, i64 2, !dbg !2625
  br label %if.end92, !dbg !2626

if.else83:                                        ; preds = %if.then70
  %45 = getelementptr inbounds i32, i32* %44, i64 4, !dbg !2627
  br label %if.end92

if.end92:                                         ; preds = %if.else83, %if.then75
  %vec.0.in.in.in = phi i32* [ %arrayidx82, %if.then75 ], [ %45, %if.else83 ]
  %vec.0.in = bitcast i32* %vec.0.in.in.in to %struct.rtvec_def**, !dbg !2628
  %vec.0 = load %struct.rtvec_def*, %struct.rtvec_def** %vec.0.in, align 8, !dbg !2628
  call void @llvm.dbg.value(metadata %struct.rtvec_def* %vec.0, metadata !2539, metadata !DIExpression()), !dbg !2629
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %vec.0, i64 0, i32 0, !dbg !2630
  %46 = load i32, i32* %num_elem, align 8, !dbg !2630
  call void @llvm.dbg.value(metadata i32 %46, metadata !2543, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2629
  %47 = sext i32 %46 to i64, !dbg !2632
  br label %for.cond93, !dbg !2632

for.cond93:                                       ; preds = %for.body96, %if.end92
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body96 ], [ %47, %if.end92 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2633
  call void @llvm.dbg.value(metadata i32 undef, metadata !2543, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2629
  %cmp94 = icmp sgt i64 %indvars.iv, 0, !dbg !2634
  br i1 %cmp94, label %for.body96, label %for.end103, !dbg !2636

for.body96:                                       ; preds = %for.cond93
  %arrayidx97 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %vec.0, i64 0, i32 1, i64 %indvars.iv.next, !dbg !2637
  %48 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx97, align 8, !dbg !2637
  %arrayidx100 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2637
  %rt_rtx101 = bitcast %union.rtunion_def* %arrayidx100 to %struct.rtx_def**, !dbg !2637
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx101, align 8, !dbg !2637
  call fastcc void @make_label_edge(%struct.simple_bitmap_def* %edge_cache.0, %struct.basic_block_def* %bb.0, %struct.rtx_def* %49, i32 0) #7, !dbg !2638
  call void @llvm.dbg.value(metadata i32 undef, metadata !2543, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2629
  br label %for.cond93, !dbg !2639, !llvm.loop !2640

for.end103:                                       ; preds = %for.cond93
  %bf.load104 = load i32, i32* %40, align 8, !dbg !2642
  %bf.clear105 = and i32 %bf.load104, 65535, !dbg !2642
  %cmp106 = icmp eq i32 %bf.clear105, 8, !dbg !2642
  br i1 %cmp106, label %cond.true, label %lor.lhs.false108, !dbg !2642

lor.lhs.false108:                                 ; preds = %for.end103
  %cmp111 = icmp eq i32 %bf.clear105, 7, !dbg !2642
  br i1 %cmp111, label %cond.true, label %lor.lhs.false113, !dbg !2642

lor.lhs.false113:                                 ; preds = %lor.lhs.false108
  %cmp116 = icmp eq i32 %bf.clear105, 9, !dbg !2642
  br i1 %cmp116, label %cond.true, label %lor.lhs.false118, !dbg !2642

lor.lhs.false118:                                 ; preds = %lor.lhs.false113
  %cmp121 = icmp eq i32 %bf.clear105, 10, !dbg !2642
  br i1 %cmp121, label %cond.true, label %cond.end142, !dbg !2642

cond.true:                                        ; preds = %lor.lhs.false118, %lor.lhs.false113, %lor.lhs.false108, %for.end103
  %u123 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i64 0, i32 1, !dbg !2642
  %50 = getelementptr inbounds %union.u, %union.u* %u123, i64 1, i32 0, i32 0, i64 0, !dbg !2642
  %51 = bitcast %union.rtunion_def* %50 to i32**, !dbg !2642
  %52 = load i32*, i32** %51, align 8, !dbg !2642
  %bf.load127 = load i32, i32* %52, align 8, !dbg !2642
  %bf.clear128 = and i32 %bf.load127, 65535, !dbg !2642
  %cmp129 = icmp eq i32 %bf.clear128, 23, !dbg !2642
  %53 = bitcast i32* %52 to %struct.rtx_def*, !dbg !2642
  br i1 %cmp129, label %cond.end142, label %cond.false, !dbg !2642

cond.false:                                       ; preds = %cond.true
  %call140 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %39, %struct.rtx_def* %53) #6, !dbg !2642
  br label %cond.end142, !dbg !2642

cond.end142:                                      ; preds = %lor.lhs.false118, %cond.false, %cond.true
  %54 = phi %struct.rtx_def* [ %call140, %cond.false ], [ %53, %cond.true ], [ null, %lor.lhs.false118 ], !dbg !2642
  call void @llvm.dbg.value(metadata %struct.rtx_def* %54, metadata !2536, metadata !DIExpression()), !dbg !2581
  store %struct.rtx_def* %54, %struct.rtx_def** %tmp64, align 8, !dbg !2644
  %cmp144 = icmp eq %struct.rtx_def* %54, null, !dbg !2645
  br i1 %cmp144, label %if.end263, label %land.lhs.true146, !dbg !2646

land.lhs.true146:                                 ; preds = %cond.end142
  call void @llvm.dbg.value(metadata %struct.rtx_def* %54, metadata !2536, metadata !DIExpression()), !dbg !2581
  %arrayidx149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2647
  %rt_rtx150 = bitcast %union.rtunion_def* %arrayidx149 to %struct.rtx_def**, !dbg !2647
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx150, align 8, !dbg !2647
  %56 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 0), align 16, !dbg !2648
  %cmp151 = icmp eq %struct.rtx_def* %55, %56, !dbg !2649
  br i1 %cmp151, label %land.lhs.true153, label %if.end263, !dbg !2650

land.lhs.true153:                                 ; preds = %land.lhs.true146
  call void @llvm.dbg.value(metadata %struct.rtx_def* %54, metadata !2536, metadata !DIExpression()), !dbg !2581
  %57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2651
  %58 = bitcast %union.rtunion_def* %57 to i32**, !dbg !2651
  %59 = load i32*, i32** %58, align 8, !dbg !2651
  %bf.load158 = load i32, i32* %59, align 8, !dbg !2651
  %bf.clear159 = and i32 %bf.load158, 65535, !dbg !2651
  %cmp160 = icmp eq i32 %bf.clear159, 47, !dbg !2652
  br i1 %cmp160, label %land.lhs.true162, label %if.end263, !dbg !2653

land.lhs.true162:                                 ; preds = %land.lhs.true153
  call void @llvm.dbg.value(metadata %struct.rtx_def* %54, metadata !2536, metadata !DIExpression()), !dbg !2581
  %60 = getelementptr inbounds i32, i32* %59, i64 6, !dbg !2654
  %61 = bitcast i32* %60 to i32**, !dbg !2654
  %62 = load i32*, i32** %61, align 8, !dbg !2654
  %bf.load171 = load i32, i32* %62, align 8, !dbg !2654
  %bf.clear172 = and i32 %bf.load171, 65535, !dbg !2654
  %cmp173 = icmp eq i32 %bf.clear172, 44, !dbg !2655
  br i1 %cmp173, label %if.then175, label %if.end263, !dbg !2656

if.then175:                                       ; preds = %land.lhs.true162
  call void @llvm.dbg.value(metadata %struct.rtx_def* %54, metadata !2536, metadata !DIExpression()), !dbg !2581
  %arrayidx186 = getelementptr inbounds i32, i32* %62, i64 2, !dbg !2657
  %rt_rtx187 = bitcast i32* %arrayidx186 to %struct.rtx_def**, !dbg !2657
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx187, align 8, !dbg !2657
  call fastcc void @make_label_edge(%struct.simple_bitmap_def* %edge_cache.0, %struct.basic_block_def* %bb.0, %struct.rtx_def* %63, i32 0) #7, !dbg !2658
  br label %if.end263, !dbg !2658

if.else189:                                       ; preds = %if.else
  %call190 = call i32 @computed_jump_p(%struct.rtx_def* %39) #6, !dbg !2659
  %tobool191 = icmp eq i32 %call190, 0, !dbg !2659
  br i1 %tobool191, label %if.else206, label %if.then192, !dbg !2660

if.then192:                                       ; preds = %if.else189
  br label %for.cond193, !dbg !2661

for.cond193:                                      ; preds = %for.body195, %if.then192
  %x.0.in = phi %struct.rtx_def** [ getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 0, i32 5), %if.then192 ], [ %rt_rtx204, %for.body195 ]
  %x.0 = load %struct.rtx_def*, %struct.rtx_def** %x.0.in, align 8, !dbg !2664
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.0, metadata !2532, metadata !DIExpression()), !dbg !2571
  %tobool194 = icmp eq %struct.rtx_def* %x.0, null, !dbg !2665
  br i1 %tobool194, label %if.end263.loopexit3, label %for.body195, !dbg !2665

for.body195:                                      ; preds = %for.cond193
  %arrayidx198 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2666
  %rt_rtx199 = bitcast %union.rtunion_def* %arrayidx198 to %struct.rtx_def**, !dbg !2666
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx199, align 8, !dbg !2666
  call fastcc void @make_label_edge(%struct.simple_bitmap_def* %edge_cache.0, %struct.basic_block_def* %bb.0, %struct.rtx_def* %64, i32 2) #7, !dbg !2668
  %65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2669
  %rt_rtx204 = bitcast %union.rtunion_def* %65 to %struct.rtx_def**, !dbg !2669
  br label %for.cond193, !dbg !2670, !llvm.loop !2671

if.else206:                                       ; preds = %if.else189
  %call207 = call i32 @returnjump_p(%struct.rtx_def* %39) #6, !dbg !2673
  %tobool208 = icmp eq i32 %call207, 0, !dbg !2673
  br i1 %tobool208, label %if.else214, label %if.then209, !dbg !2674

if.then209:                                       ; preds = %if.else206
  %66 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2675
  %cfg211 = getelementptr inbounds %struct.function, %struct.function* %66, i64 0, i32 1, !dbg !2675
  %67 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg211, align 8, !dbg !2675
  %x_exit_block_ptr212 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %67, i64 0, i32 1, !dbg !2675
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr212, align 8, !dbg !2675
  %call213 = call %struct.edge_def* @cached_make_edge(%struct.simple_bitmap_def* %edge_cache.0, %struct.basic_block_def* %bb.0, %struct.basic_block_def* %68, i32 0) #6, !dbg !2676
  br label %if.end263, !dbg !2676

if.else214:                                       ; preds = %if.else206
  %u215 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i64 0, i32 1, !dbg !2677
  %69 = getelementptr inbounds %union.u, %union.u* %u215, i64 1, i32 0, i32 0, i64 0, !dbg !2677
  %rt_rtx218 = bitcast %union.rtunion_def* %69 to %struct.rtx_def**, !dbg !2677
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx218, align 8, !dbg !2677
  %call219 = call %struct.rtx_def* @extract_asm_operands(%struct.rtx_def* %70) #6, !dbg !2678
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call219, metadata !2536, metadata !DIExpression()), !dbg !2581
  store %struct.rtx_def* %call219, %struct.rtx_def** %tmp64, align 8, !dbg !2679
  %cmp220 = icmp eq %struct.rtx_def* %call219, null, !dbg !2680
  br i1 %cmp220, label %if.else245, label %if.then222, !dbg !2681

if.then222:                                       ; preds = %if.else214
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call219, metadata !2536, metadata !DIExpression()), !dbg !2581
  %u223 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call219, i64 0, i32 1, !dbg !2682
  %71 = getelementptr inbounds %union.u, %union.u* %u223, i64 1, i32 0, i32 0, i64 0, !dbg !2682
  %rt_rtvec226 = bitcast %union.rtunion_def* %71 to %struct.rtvec_def**, !dbg !2682
  %72 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec226, align 8, !dbg !2682
  %num_elem227 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %72, i64 0, i32 0, !dbg !2682
  %73 = load i32, i32* %num_elem227, align 8, !dbg !2682
  call void @llvm.dbg.value(metadata i32 %73, metadata !2549, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i32 0, metadata !2544, metadata !DIExpression()), !dbg !2683
  %74 = sext i32 %73 to i64, !dbg !2684
  br label %for.cond228, !dbg !2684

for.cond228:                                      ; preds = %for.body231, %if.then222
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.body231 ], [ 0, %if.then222 ], !dbg !2686
  call void @llvm.dbg.value(metadata i64 %indvars.iv12, metadata !2544, metadata !DIExpression()), !dbg !2683
  %cmp229 = icmp slt i64 %indvars.iv12, %74, !dbg !2687
  br i1 %cmp229, label %for.body231, label %if.end263.loopexit, !dbg !2689

for.body231:                                      ; preds = %for.cond228
  %75 = load %struct.rtx_def*, %struct.rtx_def** %tmp64, align 8, !dbg !2690
  call void @llvm.dbg.value(metadata %struct.rtx_def* %75, metadata !2536, metadata !DIExpression()), !dbg !2581
  %u232 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i64 0, i32 1, !dbg !2690
  %76 = getelementptr inbounds %union.u, %union.u* %u232, i64 1, i32 0, i32 0, i64 0, !dbg !2690
  %rt_rtvec235 = bitcast %union.rtunion_def* %76 to %struct.rtvec_def**, !dbg !2690
  %77 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec235, align 8, !dbg !2690
  %arrayidx238 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %77, i64 0, i32 1, i64 %indvars.iv12, !dbg !2690
  %78 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx238, align 8, !dbg !2690
  %arrayidx241 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2690
  %rt_rtx242 = bitcast %union.rtunion_def* %arrayidx241 to %struct.rtx_def**, !dbg !2690
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx242, align 8, !dbg !2690
  call fastcc void @make_label_edge(%struct.simple_bitmap_def* %edge_cache.0, %struct.basic_block_def* %bb.0, %struct.rtx_def* %79, i32 0) #7, !dbg !2691
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !2692
  call void @llvm.dbg.value(metadata i32 undef, metadata !2544, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2683
  br label %for.cond228, !dbg !2693, !llvm.loop !2694

if.else245:                                       ; preds = %if.else214
  %arrayidx248 = getelementptr inbounds %union.u, %union.u* %u215, i64 1, i32 0, i32 1, !dbg !2696
  %rt_rtx249 = bitcast %struct.object_block** %arrayidx248 to %struct.rtx_def**, !dbg !2696
  %80 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx249, align 8, !dbg !2696
  %tobool250 = icmp eq %struct.rtx_def* %80, null, !dbg !2696
  br i1 %tobool250, label %cond.true251, label %cond.end253, !dbg !2696

cond.true251:                                     ; preds = %if.else245
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 321, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2696
  %.pre9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx249, align 8, !dbg !2698
  br label %cond.end253, !dbg !2696

cond.end253:                                      ; preds = %if.else245, %cond.true251
  %81 = phi %struct.rtx_def* [ %80, %if.else245 ], [ %.pre9, %cond.true251 ], !dbg !2698
  call fastcc void @make_label_edge(%struct.simple_bitmap_def* %edge_cache.0, %struct.basic_block_def* %bb.0, %struct.rtx_def* %81, i32 0) #7, !dbg !2699
  br label %if.end263

if.end263.loopexit:                               ; preds = %for.cond228
  br label %if.end263, !dbg !2700

if.end263.loopexit3:                              ; preds = %for.cond193
  br label %if.end263, !dbg !2700

if.end263:                                        ; preds = %if.end263.loopexit3, %if.end263.loopexit, %cond.end142, %if.then63, %if.then175, %land.lhs.true162, %land.lhs.true153, %land.lhs.true146, %if.then209, %cond.end253
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #8, !dbg !2700
  %cond = icmp eq i32 %bf.clear60, 10, !dbg !2701
  br i1 %cond, label %if.end263.land.lhs.true267_crit_edge, label %lor.lhs.false280, !dbg !2701

if.end263.land.lhs.true267_crit_edge:             ; preds = %if.end263
  %bf.load268.pre = load i32, i32* %40, align 8, !dbg !2703
  br label %land.lhs.true267, !dbg !2701

land.lhs.true267:                                 ; preds = %if.end263.land.lhs.true267_crit_edge, %if.end56
  %bf.load268 = phi i32 [ %bf.load268.pre, %if.end263.land.lhs.true267_crit_edge ], [ %bf.load59, %if.end56 ], !dbg !2703
  %bf.clear270 = and i32 %bf.load268, 16777216, !dbg !2703
  %tobool271 = icmp eq i32 %bf.clear270, 0, !dbg !2703
  br i1 %tobool271, label %if.else277, label %if.then272, !dbg !2704

if.then272:                                       ; preds = %land.lhs.true267
  %82 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2705
  %cfg274 = getelementptr inbounds %struct.function, %struct.function* %82, i64 0, i32 1, !dbg !2705
  %83 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg274, align 8, !dbg !2705
  %x_exit_block_ptr275 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %83, i64 0, i32 1, !dbg !2705
  %84 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr275, align 8, !dbg !2705
  %call276 = call %struct.edge_def* @cached_make_edge(%struct.simple_bitmap_def* %edge_cache.0, %struct.basic_block_def* %bb.0, %struct.basic_block_def* %84, i32 258) #6, !dbg !2706
  br label %if.end307, !dbg !2706

if.else277:                                       ; preds = %land.lhs.true267
  %cmp278 = icmp eq i32 %bf.clear60, 10, !dbg !2707
  br i1 %cmp278, label %if.then282, label %lor.lhs.false280, !dbg !2709

lor.lhs.false280:                                 ; preds = %if.end263, %if.end56, %if.else277
  %85 = load i32, i32* @flag_non_call_exceptions, align 4, !dbg !2710
  %tobool281 = icmp eq i32 %85, 0, !dbg !2710
  br i1 %tobool281, label %if.end307, label %if.then282, !dbg !2711

if.then282:                                       ; preds = %lor.lhs.false280, %if.else277
  call void @rtl_make_eh_edge(%struct.simple_bitmap_def* %edge_cache.0, %struct.basic_block_def* %bb.0, %struct.rtx_def* %39) #7, !dbg !2712
  %cmp283 = icmp eq i32 %bf.clear60, 10, !dbg !2714
  %86 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 10), align 8, !dbg !2716
  %tobool286 = icmp ne %struct.rtx_def* %86, null, !dbg !2716
  %or.cond = and i1 %cmp283, %tobool286, !dbg !2717
  br i1 %or.cond, label %if.then287, label %if.end307, !dbg !2717

if.then287:                                       ; preds = %if.then282
  %call288 = call zeroext i8 @can_nonlocal_goto(%struct.rtx_def* %39) #6, !dbg !2718
  %tobool289 = icmp eq i8 %call288, 0, !dbg !2718
  br i1 %tobool289, label %if.end307, label %if.then290, !dbg !2721

if.then290:                                       ; preds = %if.then287
  br label %for.cond291, !dbg !2722

for.cond291:                                      ; preds = %for.body293, %if.then290
  %x.1.in = phi %struct.rtx_def** [ getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 10), %if.then290 ], [ %rt_rtx302, %for.body293 ]
  %x.1 = load %struct.rtx_def*, %struct.rtx_def** %x.1.in, align 8, !dbg !2724
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.1, metadata !2532, metadata !DIExpression()), !dbg !2571
  %tobool292 = icmp eq %struct.rtx_def* %x.1, null, !dbg !2725
  br i1 %tobool292, label %if.end307.loopexit, label %for.body293, !dbg !2725

for.body293:                                      ; preds = %for.cond291
  %arrayidx296 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2726
  %rt_rtx297 = bitcast %union.rtunion_def* %arrayidx296 to %struct.rtx_def**, !dbg !2726
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx297, align 8, !dbg !2726
  call fastcc void @make_label_edge(%struct.simple_bitmap_def* %edge_cache.0, %struct.basic_block_def* %bb.0, %struct.rtx_def* %87, i32 6) #7, !dbg !2728
  %88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2729
  %rt_rtx302 = bitcast %union.rtunion_def* %88 to %struct.rtx_def**, !dbg !2729
  br label %for.cond291, !dbg !2730, !llvm.loop !2731

if.end307.loopexit:                               ; preds = %for.cond291
  br label %if.end307, !dbg !2733

if.end307:                                        ; preds = %if.end307.loopexit, %if.then287, %lor.lhs.false280, %if.then282, %if.then272
  %89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2733
  %rt_rtx311 = bitcast %union.rtunion_def* %89 to %struct.rtx_def**, !dbg !2733
  %90 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx311, align 8, !dbg !2733
  call void @llvm.dbg.value(metadata %struct.rtx_def* %90, metadata !2528, metadata !DIExpression()), !dbg !2571
  %91 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2734
  %cfg313 = getelementptr inbounds %struct.function, %struct.function* %91, i64 0, i32 1, !dbg !2734
  %92 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg313, align 8, !dbg !2734
  %x_exit_block_ptr314 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %92, i64 0, i32 1, !dbg !2734
  %93 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr314, align 8, !dbg !2734
  %call315 = call %struct.edge_def* @find_edge(%struct.basic_block_def* %bb.0, %struct.basic_block_def* %93) #6, !dbg !2735
  call void @llvm.dbg.value(metadata %struct.edge_def* %call315, metadata !2534, metadata !DIExpression()), !dbg !2571
  store %struct.edge_def* %call315, %struct.edge_def** %e, align 8, !dbg !2736
  call void @llvm.dbg.value(metadata %struct.edge_def* %call315, metadata !2534, metadata !DIExpression()), !dbg !2571
  %tobool316 = icmp eq %struct.edge_def* %call315, null, !dbg !2737
  br i1 %tobool316, label %if.end320, label %land.lhs.true317, !dbg !2739

land.lhs.true317:                                 ; preds = %if.end307
  call void @llvm.dbg.value(metadata %struct.edge_def* %call315, metadata !2534, metadata !DIExpression()), !dbg !2571
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call315, i64 0, i32 7, !dbg !2740
  %94 = load i32, i32* %flags, align 8, !dbg !2740
  %and = and i32 %94, 1, !dbg !2741
  %tobool318 = icmp eq i32 %and, 0, !dbg !2741
  %spec.select = select i1 %tobool318, %struct.rtx_def* %90, %struct.rtx_def* null, !dbg !2742
  br label %if.end320, !dbg !2742

if.end320:                                        ; preds = %if.end307, %land.lhs.true317
  %insn.0 = phi %struct.rtx_def* [ %90, %if.end307 ], [ %spec.select, %land.lhs.true317 ], !dbg !2571
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2528, metadata !DIExpression()), !dbg !2571
  br label %while.cond, !dbg !2743

while.cond:                                       ; preds = %while.body, %if.end320
  %insn.1 = phi %struct.rtx_def* [ %insn.0, %if.end320 ], [ %99, %while.body ], !dbg !2571
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1, metadata !2528, metadata !DIExpression()), !dbg !2571
  %cond2 = icmp eq %struct.rtx_def* %insn.1, null, !dbg !2744
  br i1 %cond2, label %if.then337.loopexit, label %land.lhs.true322, !dbg !2744

land.lhs.true322:                                 ; preds = %while.cond
  %95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 0, !dbg !2745
  %bf.load323 = load i32, i32* %95, align 8, !dbg !2745
  %bf.clear324 = and i32 %bf.load323, 65535, !dbg !2745
  %cmp325 = icmp eq i32 %bf.clear324, 13, !dbg !2745
  br i1 %cmp325, label %land.rhs, label %while.end, !dbg !2746

land.rhs:                                         ; preds = %land.lhs.true322
  %u327 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 1, !dbg !2747
  %96 = getelementptr inbounds %union.u, %union.u* %u327, i64 1, i32 0, i32 0, i64 0, !dbg !2747
  %rt_int = bitcast %union.rtunion_def* %96 to i32*, !dbg !2747
  %97 = load i32, i32* %rt_int, align 8, !dbg !2747
  %cmp330 = icmp eq i32 %97, 10, !dbg !2748
  br i1 %cmp330, label %while.end, label %while.body, !dbg !2743

while.body:                                       ; preds = %land.rhs
  %98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2749
  %rt_rtx335 = bitcast %union.rtunion_def* %98 to %struct.rtx_def**, !dbg !2749
  %99 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx335, align 8, !dbg !2749
  call void @llvm.dbg.value(metadata %struct.rtx_def* %99, metadata !2528, metadata !DIExpression()), !dbg !2571
  br label %while.cond, !dbg !2743, !llvm.loop !2750

while.end:                                        ; preds = %land.rhs, %land.lhs.true322
  %insn.1.lcssa14 = phi %struct.rtx_def* [ %insn.1, %land.rhs ], [ %insn.1, %land.lhs.true322 ], !dbg !2571
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1.lcssa14, metadata !2528, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1.lcssa14, metadata !2528, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1.lcssa14, metadata !2528, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1.lcssa14, metadata !2528, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1.lcssa14, metadata !2528, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1.lcssa14, metadata !2528, metadata !DIExpression()), !dbg !2571
  %next_bb343 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !2751
  %100 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb343, align 8, !dbg !2751
  %101 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2754
  %cfg345 = getelementptr inbounds %struct.function, %struct.function* %101, i64 0, i32 1, !dbg !2754
  %102 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg345, align 8, !dbg !2754
  %x_exit_block_ptr346 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %102, i64 0, i32 1, !dbg !2754
  %103 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr346, align 8, !dbg !2754
  %cmp347 = icmp eq %struct.basic_block_def* %100, %103, !dbg !2755
  br i1 %cmp347, label %cleanup, label %if.then349, !dbg !2756

if.then337.loopexit:                              ; preds = %while.cond
  %104 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2757
  %cfg339 = getelementptr inbounds %struct.function, %struct.function* %104, i64 0, i32 1, !dbg !2757
  %105 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg339, align 8, !dbg !2757
  %x_exit_block_ptr340 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %105, i64 0, i32 1, !dbg !2757
  %106 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr340, align 8, !dbg !2757
  %call341 = call %struct.edge_def* @cached_make_edge(%struct.simple_bitmap_def* %edge_cache.0, %struct.basic_block_def* %bb.0, %struct.basic_block_def* %106, i32 1) #6, !dbg !2758
  br label %cleanup, !dbg !2758

if.then349:                                       ; preds = %while.end
  %il351 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %100, i64 0, i32 7, !dbg !2759
  %rtl352 = bitcast %union.basic_block_il_dependent* %il351 to %struct.rtl_bb_info**, !dbg !2759
  %107 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl352, align 8, !dbg !2759
  %head_353 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %107, i64 0, i32 0, !dbg !2759
  %108 = load %struct.rtx_def*, %struct.rtx_def** %head_353, align 8, !dbg !2759
  %cmp354 = icmp eq %struct.rtx_def* %insn.1.lcssa14, %108, !dbg !2762
  br i1 %cmp354, label %if.then356, label %cleanup, !dbg !2763

if.then356:                                       ; preds = %if.then349
  %call358 = call %struct.edge_def* @cached_make_edge(%struct.simple_bitmap_def* %edge_cache.0, %struct.basic_block_def* %bb.0, %struct.basic_block_def* %100, i32 1) #6, !dbg !2764
  br label %cleanup, !dbg !2764

cleanup:                                          ; preds = %while.end, %if.then337.loopexit, %if.then349, %if.then356, %for.body
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #8, !dbg !2765
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #8, !dbg !2765
  %next_bb367 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !2584
  %109 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb367, align 8, !dbg !2584
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %109, metadata !2526, metadata !DIExpression()), !dbg !2550
  br label %for.cond, !dbg !2584, !llvm.loop !2766

for.end368:                                       ; preds = %for.cond
  br i1 %tobool18, label %if.end371, label %if.then370, !dbg !2768

if.then370:                                       ; preds = %for.end368
  %110 = bitcast %struct.simple_bitmap_def* %edge_cache.0 to i8*, !dbg !2769
  call void @free(i8* nonnull %110) #6, !dbg !2769
  br label %if.end371, !dbg !2769

if.end371:                                        ; preds = %for.end368, %if.then370
  ret void, !dbg !2771
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2772 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2776, metadata !DIExpression()), !dbg !2778
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2779
  store i32 0, i32* %index, align 8, !dbg !2780
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2781
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2782
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2783
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2783
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2783
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2784 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2790, metadata !DIExpression()), !dbg !2791
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2792
  %tobool = icmp eq i8 %call, 0, !dbg !2792
  br i1 %tobool, label %if.then, label %if.else, !dbg !2794

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2795
  br label %return, !dbg !2797

if.else:                                          ; preds = %entry
  br label %return, !dbg !2798

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2800
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2800
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2800
  ret i8 %retval.0, !dbg !2801
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !2802 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !2807, metadata !DIExpression()), !dbg !2808
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !2809
  %0 = load i32, i32* %index, align 8, !dbg !2809
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !2809
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2809
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !2809
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2809
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2809

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !2809
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2809
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !2809
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2809
  br label %cond.end, !dbg !2809

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2809
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2809
  %cmp = icmp ult i32 %0, %call2, !dbg !2809
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !2809

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2809
  br label %cond.end5, !dbg !2809

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !2810
  %inc = add i32 %5, 1, !dbg !2810
  store i32 %inc, i32* %index, align 8, !dbg !2810
  ret void, !dbg !2811
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_outgoing_frequencies(%struct.basic_block_def* %b) unnamed_addr #4 !dbg !2812 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %b, metadata !2814, metadata !DIExpression()), !dbg !2822
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2823
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2823
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2824
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2824
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b, i64 0, i32 1, !dbg !2825
  %2 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2825
  %tobool = icmp eq %struct.VEC_edge_gc* %2, null, !dbg !2825
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2825

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %2, i64 0, i32 0, !dbg !2825
  br label %cond.end, !dbg !2825

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2825
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2825
  %cmp = icmp eq i32 %call, 2, !dbg !2826
  br i1 %cmp, label %if.then, label %if.end82, !dbg !2827

if.then:                                          ; preds = %cond.end
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b, i64 0, i32 7, !dbg !2828
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2828
  %3 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2828
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %3, i64 0, i32 1, !dbg !2828
  %4 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2828
  %call2 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %4, i32 13, %struct.rtx_def* null) #6, !dbg !2829
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call2, metadata !2818, metadata !DIExpression()), !dbg !2830
  %tobool3 = icmp eq %struct.rtx_def* %call2, null, !dbg !2831
  br i1 %tobool3, label %cleanup, label %if.then4, !dbg !2833

if.then4:                                         ; preds = %if.then
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call2, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2834
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2834
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2834
  %u5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, !dbg !2834
  %arrayidx6 = bitcast %union.u* %u5 to i64*, !dbg !2834
  %6 = load i64, i64* %arrayidx6, align 8, !dbg !2834
  %conv = trunc i64 %6 to i32, !dbg !2834
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2821, metadata !DIExpression()), !dbg !2830
  %7 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2836
  %tobool8 = icmp eq %struct.VEC_edge_gc* %7, null, !dbg !2836
  br i1 %tobool8, label %cond.end13, label %cond.true9, !dbg !2836

cond.true9:                                       ; preds = %if.then4
  %base11 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %7, i64 0, i32 0, !dbg !2836
  br label %cond.end13, !dbg !2836

cond.end13:                                       ; preds = %if.then4, %cond.true9
  %cond14 = phi %struct.VEC_edge_base* [ %base11, %cond.true9 ], [ null, %if.then4 ], !dbg !2836
  %call15 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond14, i32 0) #7, !dbg !2836
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call15, i64 0, i32 7, !dbg !2836
  %8 = load i32, i32* %flags, align 8, !dbg !2836
  %and = and i32 %8, 1, !dbg !2836
  %tobool16 = icmp eq i32 %and, 0, !dbg !2836
  %9 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2836
  %tobool19 = icmp ne %struct.VEC_edge_gc* %9, null, !dbg !2836
  br i1 %tobool16, label %cond.false27, label %cond.true17, !dbg !2836

cond.true17:                                      ; preds = %cond.end13
  br i1 %tobool19, label %cond.true20, label %cond.end24, !dbg !2836

cond.true20:                                      ; preds = %cond.true17
  %base22 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %9, i64 0, i32 0, !dbg !2836
  br label %cond.end24, !dbg !2836

cond.end24:                                       ; preds = %cond.true17, %cond.true20
  %cond25 = phi %struct.VEC_edge_base* [ %base22, %cond.true20 ], [ null, %cond.true17 ], !dbg !2836
  %call26 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond25, i32 1) #7, !dbg !2836
  br label %cond.end37, !dbg !2836

cond.false27:                                     ; preds = %cond.end13
  br i1 %tobool19, label %cond.true30, label %cond.end34, !dbg !2836

cond.true30:                                      ; preds = %cond.false27
  %base32 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %9, i64 0, i32 0, !dbg !2836
  br label %cond.end34, !dbg !2836

cond.end34:                                       ; preds = %cond.false27, %cond.true30
  %cond35 = phi %struct.VEC_edge_base* [ %base32, %cond.true30 ], [ null, %cond.false27 ], !dbg !2836
  %call36 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond35, i32 0) #7, !dbg !2836
  br label %cond.end37, !dbg !2836

cond.end37:                                       ; preds = %cond.end34, %cond.end24
  %10 = phi %struct.edge_def* [ %call26, %cond.end24 ], [ %call36, %cond.end34 ], !dbg !2836
  call void @llvm.dbg.value(metadata %struct.edge_def* %10, metadata !2815, metadata !DIExpression()), !dbg !2822
  store %struct.edge_def* %10, %struct.edge_def** %e, align 8, !dbg !2837
  call void @llvm.dbg.value(metadata %struct.edge_def* %10, metadata !2815, metadata !DIExpression()), !dbg !2822
  %probability39 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i64 0, i32 8, !dbg !2838
  store i32 %conv, i32* %probability39, align 4, !dbg !2839
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b, i64 0, i32 8, !dbg !2840
  %11 = load i64, i64* %count, align 8, !dbg !2840
  %sext = shl i64 %6, 32, !dbg !2841
  %conv40 = ashr exact i64 %sext, 32, !dbg !2841
  %mul = mul nsw i64 %11, %conv40, !dbg !2842
  %add = add nsw i64 %mul, 5000, !dbg !2843
  %div = sdiv i64 %add, 10000, !dbg !2844
  call void @llvm.dbg.value(metadata %struct.edge_def* %10, metadata !2815, metadata !DIExpression()), !dbg !2822
  %count41 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i64 0, i32 9, !dbg !2845
  store i64 %div, i64* %count41, align 8, !dbg !2846
  %12 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2847
  %tobool43 = icmp eq %struct.VEC_edge_gc* %12, null, !dbg !2847
  br i1 %tobool43, label %cond.end48, label %cond.true44, !dbg !2847

cond.true44:                                      ; preds = %cond.end37
  %base46 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %12, i64 0, i32 0, !dbg !2847
  br label %cond.end48, !dbg !2847

cond.end48:                                       ; preds = %cond.end37, %cond.true44
  %cond49 = phi %struct.VEC_edge_base* [ %base46, %cond.true44 ], [ null, %cond.end37 ], !dbg !2847
  %call50 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond49, i32 0) #7, !dbg !2847
  %flags51 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call50, i64 0, i32 7, !dbg !2847
  %13 = load i32, i32* %flags51, align 8, !dbg !2847
  %and52 = and i32 %13, 1, !dbg !2847
  %tobool53 = icmp eq i32 %and52, 0, !dbg !2847
  %14 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2847
  %tobool56 = icmp ne %struct.VEC_edge_gc* %14, null, !dbg !2847
  br i1 %tobool53, label %cond.false64, label %cond.true54, !dbg !2847

cond.true54:                                      ; preds = %cond.end48
  br i1 %tobool56, label %cond.true57, label %cond.end61, !dbg !2847

cond.true57:                                      ; preds = %cond.true54
  %base59 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %14, i64 0, i32 0, !dbg !2847
  br label %cond.end61, !dbg !2847

cond.end61:                                       ; preds = %cond.true54, %cond.true57
  %cond62 = phi %struct.VEC_edge_base* [ %base59, %cond.true57 ], [ null, %cond.true54 ], !dbg !2847
  %call63 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond62, i32 0) #7, !dbg !2847
  br label %cond.end74, !dbg !2847

cond.false64:                                     ; preds = %cond.end48
  br i1 %tobool56, label %cond.true67, label %cond.end71, !dbg !2847

cond.true67:                                      ; preds = %cond.false64
  %base69 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %14, i64 0, i32 0, !dbg !2847
  br label %cond.end71, !dbg !2847

cond.end71:                                       ; preds = %cond.false64, %cond.true67
  %cond72 = phi %struct.VEC_edge_base* [ %base69, %cond.true67 ], [ null, %cond.false64 ], !dbg !2847
  %call73 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond72, i32 1) #7, !dbg !2847
  br label %cond.end74, !dbg !2847

cond.end74:                                       ; preds = %cond.end71, %cond.end61
  %cond75 = phi %struct.edge_def* [ %call63, %cond.end61 ], [ %call73, %cond.end71 ], !dbg !2847
  call void @llvm.dbg.value(metadata %struct.edge_def* %cond75, metadata !2816, metadata !DIExpression()), !dbg !2822
  %sub = sub nsw i32 10000, %conv, !dbg !2848
  %probability76 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond75, i64 0, i32 8, !dbg !2849
  store i32 %sub, i32* %probability76, align 4, !dbg !2850
  %15 = load i64, i64* %count, align 8, !dbg !2851
  call void @llvm.dbg.value(metadata %struct.edge_def* %10, metadata !2815, metadata !DIExpression()), !dbg !2822
  %16 = load i64, i64* %count41, align 8, !dbg !2852
  %sub79 = sub nsw i64 %15, %16, !dbg !2853
  %count80 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond75, i64 0, i32 9, !dbg !2854
  store i64 %sub79, i64* %count80, align 8, !dbg !2855
  br label %cleanup, !dbg !2856

cleanup:                                          ; preds = %if.then, %cond.end74
  %cleanup.dest.slot.0 = phi i1 [ false, %cond.end74 ], [ true, %if.then ]
  br i1 %cleanup.dest.slot.0, label %if.end82, label %cleanup106

if.end82:                                         ; preds = %cleanup, %cond.end
  %call83 = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %b) #7, !dbg !2857
  %tobool84 = icmp eq i8 %call83, 0, !dbg !2857
  br i1 %tobool84, label %if.end90, label %if.then85, !dbg !2859

if.then85:                                        ; preds = %if.end82
  %call86 = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %b) #7, !dbg !2860
  call void @llvm.dbg.value(metadata %struct.edge_def* %call86, metadata !2815, metadata !DIExpression()), !dbg !2822
  store %struct.edge_def* %call86, %struct.edge_def** %e, align 8, !dbg !2862
  call void @llvm.dbg.value(metadata %struct.edge_def* %call86, metadata !2815, metadata !DIExpression()), !dbg !2822
  %probability87 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call86, i64 0, i32 8, !dbg !2863
  store i32 10000, i32* %probability87, align 4, !dbg !2864
  %count88 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b, i64 0, i32 8, !dbg !2865
  %17 = load i64, i64* %count88, align 8, !dbg !2865
  call void @llvm.dbg.value(metadata %struct.edge_def* %call86, metadata !2815, metadata !DIExpression()), !dbg !2822
  %count89 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call86, i64 0, i32 9, !dbg !2866
  store i64 %17, i64* %count89, align 8, !dbg !2867
  br label %cleanup106, !dbg !2868

if.end90:                                         ; preds = %if.end82
  tail call void @guess_outgoing_edge_probabilities(%struct.basic_block_def* %b) #6, !dbg !2869
  %count91 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b, i64 0, i32 8, !dbg !2870
  %18 = load i64, i64* %count91, align 8, !dbg !2870
  %tobool92 = icmp eq i64 %18, 0, !dbg !2872
  br i1 %tobool92, label %cleanup106, label %if.then93, !dbg !2873

if.then93:                                        ; preds = %if.end90
  %19 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2874
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19) #8, !dbg !2874
  %call95 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2874
  %20 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2874
  %21 = extractvalue { i32, %struct.VEC_edge_gc** } %call95, 0, !dbg !2874
  store i32 %21, i32* %20, align 8, !dbg !2874
  %22 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2874
  %23 = extractvalue { i32, %struct.VEC_edge_gc** } %call95, 1, !dbg !2874
  store %struct.VEC_edge_gc** %23, %struct.VEC_edge_gc*** %22, align 8, !dbg !2874
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %19, i64 16, i1 false), !dbg !2874
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19) #8, !dbg !2874
  %24 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2876
  %25 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2876
  br label %for.cond, !dbg !2874

for.cond:                                         ; preds = %for.body, %if.then93
  %26 = load i32, i32* %24, align 8, !dbg !2878
  %27 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %25, align 8, !dbg !2878
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2815, metadata !DIExpression(DW_OP_deref)), !dbg !2822
  %call96 = call fastcc zeroext i8 @ei_cond(i32 %26, %struct.VEC_edge_gc** %27, %struct.edge_def** nonnull %e) #7, !dbg !2878
  %tobool97 = icmp eq i8 %call96, 0, !dbg !2874
  br i1 %tobool97, label %cleanup106.loopexit, label %for.body, !dbg !2874

for.body:                                         ; preds = %for.cond
  %28 = load i64, i64* %count91, align 8, !dbg !2879
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2880
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !2815, metadata !DIExpression()), !dbg !2822
  %probability99 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 8, !dbg !2881
  %30 = load i32, i32* %probability99, align 4, !dbg !2881
  %conv100 = sext i32 %30 to i64, !dbg !2880
  %mul101 = mul nsw i64 %28, %conv100, !dbg !2882
  %add102 = add nsw i64 %mul101, 5000, !dbg !2883
  %div103 = sdiv i64 %add102, 10000, !dbg !2884
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !2815, metadata !DIExpression()), !dbg !2822
  %count104 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 9, !dbg !2885
  store i64 %div103, i64* %count104, align 8, !dbg !2886
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2817, metadata !DIExpression(DW_OP_deref)), !dbg !2822
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2878
  br label %for.cond, !dbg !2878, !llvm.loop !2887

cleanup106.loopexit:                              ; preds = %for.cond
  br label %cleanup106, !dbg !2889

cleanup106:                                       ; preds = %cleanup106.loopexit, %if.end90, %cleanup, %if.then85
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2889
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2889
  ret void, !dbg !2889
}

declare dso_local %struct.edge_def* @cached_make_edge(%struct.simple_bitmap_def*, %struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #1

declare dso_local %struct.edge_def* @split_block(%struct.basic_block_def*, i8*) local_unnamed_addr #1

declare dso_local void @remove_edge(%struct.edge_def*) local_unnamed_addr #1

declare dso_local %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @prev_nonnote_insn_bb(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @purge_dead_edges(%struct.basic_block_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @tablejump_p(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def**) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @purge_dead_tablejump_edges(%struct.basic_block_def* %bb, %struct.rtx_def* %table) unnamed_addr #4 !dbg !2890 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %tmp95 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2894, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata %struct.rtx_def* %table, metadata !2895, metadata !DIExpression()), !dbg !2902
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !2903
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2903
  %0 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2903
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 1, !dbg !2903
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2903
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !2896, metadata !DIExpression()), !dbg !2902
  %2 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2904
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !2904
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %table, i64 0, i32 1, !dbg !2905
  %3 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !2905
  %4 = bitcast %union.rtunion_def* %3 to i32**, !dbg !2905
  %5 = load i32*, i32** %4, align 8, !dbg !2905
  %bf.load = load i32, i32* %5, align 8, !dbg !2905
  %bf.clear = and i32 %bf.load, 65535, !dbg !2905
  %cmp = icmp eq i32 %bf.clear, 20, !dbg !2907
  br i1 %cmp, label %if.then, label %if.else, !dbg !2908

if.then:                                          ; preds = %entry
  %arrayidx7 = getelementptr inbounds i32, i32* %5, i64 2, !dbg !2909
  br label %if.end, !dbg !2910

if.else:                                          ; preds = %entry
  %6 = getelementptr inbounds i32, i32* %5, i64 4, !dbg !2911
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %vec.0.in.in.in = phi i32* [ %arrayidx7, %if.then ], [ %6, %if.else ]
  %vec.0.in = bitcast i32* %vec.0.in.in.in to %struct.rtvec_def**, !dbg !2912
  %vec.0 = load %struct.rtvec_def*, %struct.rtvec_def** %vec.0.in, align 8, !dbg !2912
  call void @llvm.dbg.value(metadata %struct.rtvec_def* %vec.0, metadata !2898, metadata !DIExpression()), !dbg !2902
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %vec.0, i64 0, i32 0, !dbg !2913
  %7 = load i32, i32* %num_elem, align 8, !dbg !2913
  call void @llvm.dbg.value(metadata i32 %7, metadata !2899, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2902
  %8 = sext i32 %7 to i64, !dbg !2915
  br label %for.cond, !dbg !2915

for.cond:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %8, %if.end ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2916
  call void @llvm.dbg.value(metadata i32 undef, metadata !2899, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2902
  %cmp16 = icmp sgt i64 %indvars.iv, 0, !dbg !2917
  br i1 %cmp16, label %for.body, label %for.end, !dbg !2919

for.body:                                         ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %vec.0, i64 0, i32 1, i64 %indvars.iv.next, !dbg !2920
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx17, align 8, !dbg !2920
  %arrayidx20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2920
  %rt_rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**, !dbg !2920
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx21, align 8, !dbg !2920
  tail call fastcc void @mark_tablejump_edge(%struct.rtx_def* %10) #7, !dbg !2921
  call void @llvm.dbg.value(metadata i32 undef, metadata !2899, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2902
  br label %for.cond, !dbg !2922, !llvm.loop !2923

for.end:                                          ; preds = %for.cond
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !2925
  %bf.load22 = load i32, i32* %11, align 8, !dbg !2925
  %bf.clear23 = and i32 %bf.load22, 65535, !dbg !2925
  %cmp24 = icmp eq i32 %bf.clear23, 8, !dbg !2925
  br i1 %cmp24, label %cond.true, label %lor.lhs.false, !dbg !2925

lor.lhs.false:                                    ; preds = %for.end
  %cmp27 = icmp eq i32 %bf.clear23, 7, !dbg !2925
  br i1 %cmp27, label %cond.true, label %lor.lhs.false28, !dbg !2925

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %cmp31 = icmp eq i32 %bf.clear23, 9, !dbg !2925
  br i1 %cmp31, label %cond.true, label %lor.lhs.false32, !dbg !2925

lor.lhs.false32:                                  ; preds = %lor.lhs.false28
  %cmp35 = icmp eq i32 %bf.clear23, 10, !dbg !2925
  br i1 %cmp35, label %cond.true, label %cond.end53, !dbg !2925

cond.true:                                        ; preds = %lor.lhs.false32, %lor.lhs.false28, %lor.lhs.false, %for.end
  %u36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, !dbg !2925
  %12 = getelementptr inbounds %union.u, %union.u* %u36, i64 1, i32 0, i32 0, i64 0, !dbg !2925
  %13 = bitcast %union.rtunion_def* %12 to i32**, !dbg !2925
  %14 = load i32*, i32** %13, align 8, !dbg !2925
  %bf.load40 = load i32, i32* %14, align 8, !dbg !2925
  %bf.clear41 = and i32 %bf.load40, 65535, !dbg !2925
  %cmp42 = icmp eq i32 %bf.clear41, 23, !dbg !2925
  %15 = bitcast i32* %14 to %struct.rtx_def*, !dbg !2925
  br i1 %cmp42, label %cond.end53, label %cond.false, !dbg !2925

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %1, %struct.rtx_def* %15) #6, !dbg !2925
  br label %cond.end53, !dbg !2925

cond.end53:                                       ; preds = %lor.lhs.false32, %cond.false, %cond.true
  %cond54 = phi %struct.rtx_def* [ %call, %cond.false ], [ %15, %cond.true ], [ null, %lor.lhs.false32 ], !dbg !2925
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond54, metadata !2897, metadata !DIExpression()), !dbg !2902
  %cmp55 = icmp eq %struct.rtx_def* %cond54, null, !dbg !2927
  br i1 %cmp55, label %if.end94, label %land.lhs.true, !dbg !2928

land.lhs.true:                                    ; preds = %cond.end53
  %arrayidx58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond54, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2929
  %rt_rtx59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**, !dbg !2929
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx59, align 8, !dbg !2929
  %17 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 0), align 16, !dbg !2930
  %cmp60 = icmp eq %struct.rtx_def* %16, %17, !dbg !2931
  br i1 %cmp60, label %land.lhs.true61, label %if.end94, !dbg !2932

land.lhs.true61:                                  ; preds = %land.lhs.true
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond54, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2933
  %19 = bitcast %union.rtunion_def* %18 to i32**, !dbg !2933
  %20 = load i32*, i32** %19, align 8, !dbg !2933
  %bf.load66 = load i32, i32* %20, align 8, !dbg !2933
  %bf.clear67 = and i32 %bf.load66, 65535, !dbg !2933
  %cmp68 = icmp eq i32 %bf.clear67, 47, !dbg !2934
  br i1 %cmp68, label %land.lhs.true69, label %if.end94, !dbg !2935

land.lhs.true69:                                  ; preds = %land.lhs.true61
  %21 = getelementptr inbounds i32, i32* %20, i64 6, !dbg !2936
  %22 = bitcast i32* %21 to i32**, !dbg !2936
  %23 = load i32*, i32** %22, align 8, !dbg !2936
  %bf.load78 = load i32, i32* %23, align 8, !dbg !2936
  %bf.clear79 = and i32 %bf.load78, 65535, !dbg !2936
  %cmp80 = icmp eq i32 %bf.clear79, 44, !dbg !2937
  br i1 %cmp80, label %if.then81, label %if.end94, !dbg !2938

if.then81:                                        ; preds = %land.lhs.true69
  %arrayidx92 = getelementptr inbounds i32, i32* %23, i64 2, !dbg !2939
  %rt_rtx93 = bitcast i32* %arrayidx92 to %struct.rtx_def**, !dbg !2939
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx93, align 8, !dbg !2939
  tail call fastcc void @mark_tablejump_edge(%struct.rtx_def* %24) #7, !dbg !2940
  br label %if.end94, !dbg !2940

if.end94:                                         ; preds = %cond.end53, %if.then81, %land.lhs.true69, %land.lhs.true61, %land.lhs.true
  %25 = bitcast %struct.edge_iterator* %tmp95 to i8*, !dbg !2941
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #8, !dbg !2941
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !2941
  %call96 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2941
  %26 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp95, i64 0, i32 0, !dbg !2941
  %27 = extractvalue { i32, %struct.VEC_edge_gc** } %call96, 0, !dbg !2941
  store i32 %27, i32* %26, align 8, !dbg !2941
  %28 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp95, i64 0, i32 1, !dbg !2941
  %29 = extractvalue { i32, %struct.VEC_edge_gc** } %call96, 1, !dbg !2941
  store %struct.VEC_edge_gc** %29, %struct.VEC_edge_gc*** %28, align 8, !dbg !2941
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %25, i64 16, i1 false), !dbg !2941
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #8, !dbg !2941
  %30 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2943
  %31 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2943
  br label %for.cond97, !dbg !2945

for.cond97:                                       ; preds = %for.cond97.backedge, %if.end94
  %32 = load i32, i32* %30, align 8, !dbg !2946
  %33 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %31, align 8, !dbg !2946
  %call98 = call fastcc %struct.edge_def* @ei_safe_edge(i32 %32, %struct.VEC_edge_gc** %33) #7, !dbg !2946
  call void @llvm.dbg.value(metadata %struct.edge_def* %call98, metadata !2901, metadata !DIExpression()), !dbg !2902
  %tobool = icmp eq %struct.edge_def* %call98, null, !dbg !2947
  br i1 %tobool, label %for.end113, label %for.body99, !dbg !2947

for.body99:                                       ; preds = %for.cond97
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call98, i64 0, i32 1, !dbg !2948
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2948
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i64 0, i32 2, !dbg !2948
  %35 = bitcast i8** %aux to i64*, !dbg !2948
  %36 = load i64, i64* %35, align 8, !dbg !2948
  %and = and i64 %36, 32, !dbg !2951
  %tobool100 = icmp eq i64 %and, 0, !dbg !2951
  br i1 %tobool100, label %if.else107, label %if.then101, !dbg !2952

if.then101:                                       ; preds = %for.body99
  %and104 = and i64 %36, -33, !dbg !2953
  %37 = inttoptr i64 %and104 to i8*, !dbg !2953
  store i8* %37, i8** %aux, align 8, !dbg !2953
  br label %if.end112, !dbg !2953

if.else107:                                       ; preds = %for.body99
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call98, i64 0, i32 7, !dbg !2954
  %38 = load i32, i32* %flags, align 8, !dbg !2954
  %and108 = and i32 %38, 10, !dbg !2956
  %tobool109 = icmp eq i32 %and108, 0, !dbg !2956
  br i1 %tobool109, label %if.then110, label %if.end112, !dbg !2957

if.then110:                                       ; preds = %if.else107
  call void @remove_edge(%struct.edge_def* nonnull %call98) #6, !dbg !2958
  br label %for.cond97.backedge, !dbg !2960

for.cond97.backedge:                              ; preds = %if.then110, %if.end112
  br label %for.cond97, !dbg !2946, !llvm.loop !2961

if.end112:                                        ; preds = %if.else107, %if.then101
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2900, metadata !DIExpression(DW_OP_deref)), !dbg !2902
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2963
  br label %for.cond97.backedge, !dbg !2964

for.end113:                                       ; preds = %for.cond97
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !2965
  ret void, !dbg !2965
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_tablejump_edge(%struct.rtx_def* %label) unnamed_addr #4 !dbg !2966 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %label, metadata !2970, metadata !DIExpression()), !dbg !2972
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %label, i64 0, i32 0, !dbg !2973
  %bf.load = load i32, i32* %0, align 8, !dbg !2973
  %bf.clear = and i32 %bf.load, 65535, !dbg !2973
  %cmp = icmp eq i32 %bf.clear, 12, !dbg !2973
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2973

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 387, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2973
  br label %cond.end, !dbg !2973

cond.end:                                         ; preds = %entry, %cond.true
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %label, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2974
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !2974
  %1 = load i32, i32* %rt_int, align 8, !dbg !2974
  %cmp1 = icmp eq i32 %1, 0, !dbg !2976
  br i1 %cmp1, label %cleanup.cont, label %if.end, !dbg !2977

if.end:                                           ; preds = %cond.end
  %arrayidx4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %label, i64 0, i32 1, i32 0, i32 1, !dbg !2978
  %rt_bb = bitcast %struct.object_block** %arrayidx4 to %struct.basic_block_def**, !dbg !2978
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !2978
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %2, metadata !2971, metadata !DIExpression()), !dbg !2972
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 2, !dbg !2979
  %3 = bitcast i8** %aux to i64*, !dbg !2979
  %4 = load i64, i64* %3, align 8, !dbg !2979
  %or = or i64 %4, 32, !dbg !2979
  %5 = inttoptr i64 %or to i8*, !dbg !2979
  store i8* %5, i8** %aux, align 8, !dbg !2979
  br label %cleanup.cont, !dbg !2980

cleanup.cont:                                     ; preds = %if.end, %cond.end
  ret void, !dbg !2980
}

declare dso_local %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_safe_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2981 {
entry:
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !2986
  %tobool = icmp eq i8 %call, 0, !dbg !2986
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2987

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !2988
  br label %cond.end, !dbg !2987

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.edge_def* [ %call1, %cond.true ], [ null, %entry ], !dbg !2987
  ret %struct.edge_def* %cond, !dbg !2989
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2990 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !2995
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2995
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2995

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !2995
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2995
  br label %cond.end, !dbg !2995

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2995
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2995
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !2996
  %conv3 = zext i1 %cmp to i8, !dbg !2997
  ret i8 %conv3, !dbg !2998
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2999 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3002
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3002
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3002

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3002
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3002
  br label %cond.end, !dbg !3002

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3002
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !3002
  ret %struct.edge_def* %call2, !dbg !3003
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3004 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3010, metadata !DIExpression()), !dbg !3011
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3012
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3012

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3012
  %0 = load i32, i32* %num, align 8, !dbg !3012
  br label %cond.end, !dbg !3012

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3012
  ret i32 %cond, !dbg !3012
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3013 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3018
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3018

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3018
  br label %cond.end, !dbg !3018

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3019
  ret %struct.VEC_edge_gc* %0, !dbg !3020
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3021 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3025, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3026, metadata !DIExpression()), !dbg !3027
  br label %land.end, !dbg !3028

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3028
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3028
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3028
  ret %struct.edge_def* %0, !dbg !3028
}

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #1

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !3029 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !3033, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !3034, metadata !DIExpression()), !dbg !3038
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !3039
  %0 = load i8*, i8** %popcount, align 8, !dbg !3039
  %tobool = icmp eq i8* %0, null, !dbg !3040
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !3041

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !3042
  %.pre2 = zext i32 %.pre to i64, !dbg !3043
  %.pre3 = shl i64 1, %.pre2, !dbg !3043
  %.pre4 = lshr i32 %bitno, 6, !dbg !3044
  %.pre5 = zext i32 %.pre4 to i64, !dbg !3045
  br label %if.end7, !dbg !3041

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !3046
  %idxprom = zext i32 %div to i64, !dbg !3046
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !3046
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3046
  %rem = and i32 %bitno, 63, !dbg !3046
  %sh_prom = zext i32 %rem to i64, !dbg !3046
  %2 = shl i64 1, %sh_prom, !dbg !3047
  %3 = and i64 %1, %2, !dbg !3047
  %tobool1 = icmp eq i64 %3, 0, !dbg !3047
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !3049

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !3050
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !3051
  %inc = add i8 %4, 1, !dbg !3051
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !3051
  br label %if.end7, !dbg !3050

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !3045
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !3043
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !3045
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !3052
  %or = or i64 %5, %shl.pre-phi, !dbg !3052
  store i64 %or, i64* %arrayidx13, align 8, !dbg !3052
  ret void, !dbg !3053
}

declare dso_local i32 @computed_jump_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @returnjump_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @extract_asm_operands(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.edge_def* @find_edge(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3054 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3061, metadata !DIExpression()), !dbg !3062
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3063
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3063
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3063
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3063

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3063
  br label %cond.end, !dbg !3063

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3063
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3063
  %cmp = icmp eq i32 %call, 1, !dbg !3064
  %conv2 = zext i1 %cmp to i8, !dbg !3063
  ret i8 %conv2, !dbg !3065
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3066 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3070, metadata !DIExpression()), !dbg !3071
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #7, !dbg !3072
  %tobool = icmp eq i8 %call, 0, !dbg !3072
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3072

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3072
  br label %cond.end, !dbg !3072

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3073
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3073
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3073
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3073

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3073
  br label %cond.end5, !dbg !3073

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !3073
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !3073
  ret %struct.edge_def* %call7, !dbg !3074
}

declare dso_local void @guess_outgoing_edge_probabilities(%struct.basic_block_def*) local_unnamed_addr #1

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
!llvm.module.flags = !{!1714, !1715, !1716}
!llvm.ident = !{!1717}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !536, nameTableKind: None)
!1 = !DIFile(filename: "cfgbuild.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !132, !139, !145, !150, !155, !174, !181, !188, !382, !525, !530}
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
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !133, line: 30, baseType: !5, size: 32, elements: !134)
!133 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!134 = !{!135, !136, !137, !138}
!135 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!138 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !140, line: 363, baseType: !5, size: 32, elements: !141)
!140 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!141 = !{!142, !143, !144}
!142 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!143 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!144 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !140, line: 355, baseType: !5, size: 32, elements: !146)
!146 = !{!147, !148, !149}
!147 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!148 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!149 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !151, line: 474, baseType: !5, size: 32, elements: !152)
!151 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!152 = !{!153, !154}
!153 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!154 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !156, line: 280, baseType: !5, size: 32, elements: !157)
!156 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173}
!158 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!159 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!160 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !156, line: 1817, baseType: !5, size: 32, elements: !175)
!175 = !{!176, !177, !178, !179, !180}
!176 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!177 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!178 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !156, line: 1805, baseType: !5, size: 32, elements: !182)
!182 = !{!183, !184, !185, !186, !187}
!183 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!184 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!185 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!186 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!187 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !156, line: 39, baseType: !5, size: 32, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381}
!190 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!191 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!192 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!193 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!194 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!195 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!196 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!197 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!198 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!199 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!200 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!201 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!202 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!203 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!204 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!205 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!206 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!207 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!208 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!209 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!210 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!211 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!212 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!213 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!214 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!215 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!216 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!217 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!218 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!219 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!220 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!221 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!222 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!223 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!224 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!225 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!226 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!227 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!228 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!229 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!230 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!231 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!232 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!233 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!234 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!235 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!236 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!237 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!238 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!239 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!240 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!241 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!242 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!243 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!244 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!245 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!246 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!247 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!248 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!249 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!250 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!251 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!252 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!253 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!254 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!255 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!256 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!257 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!258 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!259 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!260 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!261 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!262 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!263 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!264 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!265 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!266 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!267 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!268 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!269 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!270 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!271 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!272 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!273 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!274 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!275 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!276 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!277 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!278 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!279 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!280 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!281 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!282 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!283 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!284 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!285 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!286 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!287 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!288 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!289 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!290 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!291 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!292 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!293 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!294 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!295 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!296 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!297 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!298 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!299 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!300 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!301 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!302 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!303 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!304 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!305 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!306 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!307 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!308 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!309 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!310 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!311 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!312 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!313 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!314 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!315 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!316 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!317 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!318 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!319 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!320 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!321 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!322 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!323 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!324 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!325 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!326 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!327 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!328 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!329 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!330 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!331 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!332 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!333 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!334 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!335 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!336 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!337 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!338 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!339 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!340 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!341 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!342 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!343 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!354 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!355 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!356 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!357 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!358 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!359 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!360 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!361 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!362 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!363 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!364 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!365 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!366 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!367 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!370 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!371 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!372 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!373 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!374 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!375 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!376 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!377 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!378 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!379 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!380 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!381 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!382 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !383, line: 45, baseType: !5, size: 32, elements: !384)
!383 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524}
!385 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!386 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!387 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!388 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!389 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!390 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!391 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!392 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!393 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!394 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!395 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!396 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!397 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!398 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!399 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!400 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!401 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!402 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!403 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!404 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!405 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!406 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!407 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!408 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!409 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!410 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!411 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!412 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!413 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!414 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!415 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!416 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!417 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!418 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!419 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!420 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!421 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!422 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!423 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!424 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!425 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!426 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!427 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!428 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!429 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!430 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!431 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!432 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!433 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!434 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!435 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!436 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!437 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!438 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!439 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!440 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!441 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!442 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!443 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!444 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!445 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!446 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!447 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!448 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!449 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!450 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!451 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!452 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!453 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!454 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!455 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!456 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!457 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!458 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!459 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!460 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!461 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!462 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!463 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!464 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!465 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!466 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!467 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!468 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!469 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!470 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!471 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!472 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!473 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!474 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!475 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!476 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!477 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!478 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!479 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!480 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!481 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!482 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!483 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!484 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!485 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!486 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!487 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!488 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!489 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!490 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!491 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!492 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!493 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!494 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!495 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!496 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!497 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!498 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!499 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!500 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!501 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!502 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!503 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!504 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!505 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!506 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!507 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!508 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!509 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!510 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!511 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!512 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!513 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!514 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!515 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!516 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!517 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!518 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!519 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!520 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!521 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!522 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!523 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!524 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!525 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "state", file: !1, line: 181, baseType: !5, size: 32, elements: !526)
!526 = !{!527, !528, !529}
!527 = !DIEnumerator(name: "BLOCK_NEW", value: 0, isUnsigned: true)
!528 = !DIEnumerator(name: "BLOCK_ORIGINAL", value: 1, isUnsigned: true)
!529 = !DIEnumerator(name: "BLOCK_TO_SPLIT", value: 2, isUnsigned: true)
!530 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "label_kind", file: !383, line: 982, baseType: !5, size: 32, elements: !531)
!531 = !{!532, !533, !534, !535}
!532 = !DIEnumerator(name: "LABEL_NORMAL", value: 0, isUnsigned: true)
!533 = !DIEnumerator(name: "LABEL_STATIC_ENTRY", value: 1, isUnsigned: true)
!534 = !DIEnumerator(name: "LABEL_GLOBAL_ENTRY", value: 2, isUnsigned: true)
!535 = !DIEnumerator(name: "LABEL_WEAK_ENTRY", value: 3, isUnsigned: true)
!536 = !{!537, !538, !539, !540, !543, !544, !382, !546, !5, !525, !549, !530, !548}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!539 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !547, line: 46, baseType: !548)
!547 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!548 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !550, line: 50, baseType: !551)
!550 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !383, line: 240, size: 384, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !552, file: !383, line: 242, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !552, file: !383, line: 245, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !552, file: !383, line: 252, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !552, file: !383, line: 257, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !552, file: !383, line: 265, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !552, file: !383, line: 277, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !552, file: !383, line: 291, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !552, file: !383, line: 298, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !552, file: !383, line: 305, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !552, file: !383, line: 310, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !552, file: !383, line: 321, baseType: !565, size: 320, offset: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !383, line: 315, size: 320, elements: !566)
!566 = !{!567, !1649, !1651, !1712, !1713}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !565, file: !383, line: 316, baseType: !568, size: 64)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 64, elements: !584)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !383, line: 183, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !383, line: 166, size: 64, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !586, !587, !599, !602, !663, !1627, !1628, !1639, !1646}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !570, file: !383, line: 168, baseType: !539, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !570, file: !383, line: 169, baseType: !5, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !570, file: !383, line: 170, baseType: !544, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !570, file: !383, line: 171, baseType: !549, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !570, file: !383, line: 172, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !550, line: 53, baseType: !578)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !383, line: 359, size: 128, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !579, file: !383, line: 360, baseType: !539, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !579, file: !383, line: 361, baseType: !583, size: 64, offset: 64)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 64, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 1)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !570, file: !383, line: 173, baseType: !3, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !570, file: !383, line: 174, baseType: !588, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !383, line: 133, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !383, line: 115, size: 32, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !589, file: !383, line: 118, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !589, file: !383, line: 120, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !589, file: !383, line: 121, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !589, file: !383, line: 123, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !589, file: !383, line: 125, baseType: !5, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !589, file: !383, line: 127, baseType: !5, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !589, file: !383, line: 130, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !589, file: !383, line: 132, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !570, file: !383, line: 175, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !383, line: 175, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !570, file: !383, line: 176, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !605, line: 75, size: 256, elements: !606)
!605 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!606 = !{!607, !621, !622, !623}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !604, file: !605, line: 76, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !605, line: 68, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !605, line: 63, size: 320, elements: !611)
!611 = !{!612, !614, !615, !616}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !610, file: !605, line: 64, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !610, file: !605, line: 65, baseType: !613, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !610, file: !605, line: 66, baseType: !5, size: 32, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !610, file: !605, line: 67, baseType: !617, size: 128, offset: 192)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 128, elements: !619)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !605, line: 29, baseType: !548)
!619 = !{!620}
!620 = !DISubrange(count: 2)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !604, file: !605, line: 77, baseType: !608, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !604, file: !605, line: 78, baseType: !5, size: 32, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !604, file: !605, line: 79, baseType: !624, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !605, line: 49, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !605, line: 45, size: 832, elements: !627)
!627 = !{!628, !629, !630}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !626, file: !605, line: 46, baseType: !613, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !626, file: !605, line: 47, baseType: !603, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !626, file: !605, line: 48, baseType: !631, size: 704, offset: 128)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !632, line: 164, size: 704, elements: !633)
!632 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!633 = !{!634, !636, !646, !647, !648, !649, !650, !651, !655, !659, !660, !661, !662}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !631, file: !632, line: 166, baseType: !635, size: 64)
!635 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !631, file: !632, line: 167, baseType: !637, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !632, line: 157, size: 192, elements: !639)
!639 = !{!640, !641, !642}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !638, file: !632, line: 159, baseType: !541, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !638, file: !632, line: 160, baseType: !637, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !638, file: !632, line: 161, baseType: !643, size: 32, offset: 128)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 32, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 4)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !631, file: !632, line: 168, baseType: !541, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !631, file: !632, line: 169, baseType: !541, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !631, file: !632, line: 170, baseType: !541, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !631, file: !632, line: 171, baseType: !635, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !631, file: !632, line: 172, baseType: !539, size: 32, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !631, file: !632, line: 176, baseType: !652, size: 64, offset: 448)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!637, !543, !635}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !631, file: !632, line: 177, baseType: !656, size: 64, offset: 512)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !543, !637}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !631, file: !632, line: 178, baseType: !543, size: 64, offset: 576)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !631, file: !632, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !631, file: !632, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !631, file: !632, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !570, file: !383, line: 177, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !550, line: 56, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !156, line: 3371, size: 1792, elements: !667)
!667 = !{!668, !701, !707, !718, !737, !748, !753, !760, !766, !779, !791, !829, !834, !862, !870, !871, !876, !885, !891, !896, !900, !904, !1263, !1312, !1318, !1324, !1331, !1357, !1371, !1388, !1400, !1422, !1437, !1609}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !666, file: !156, line: 3372, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !156, line: 360, size: 64, elements: !670)
!670 = !{!671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !669, file: !156, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !669, file: !156, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !669, file: !156, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !669, file: !156, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !669, file: !156, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !669, file: !156, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !669, file: !156, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !669, file: !156, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !669, file: !156, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !669, file: !156, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !669, file: !156, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !669, file: !156, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !669, file: !156, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !669, file: !156, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !669, file: !156, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !669, file: !156, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !669, file: !156, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !669, file: !156, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !669, file: !156, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !669, file: !156, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !669, file: !156, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !669, file: !156, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !669, file: !156, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !669, file: !156, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !669, file: !156, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !669, file: !156, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !669, file: !156, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !669, file: !156, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !669, file: !156, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !669, file: !156, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !666, file: !156, line: 3373, baseType: !702, size: 192)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !156, line: 402, size: 192, elements: !703)
!703 = !{!704, !705, !706}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !702, file: !156, line: 403, baseType: !669, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !702, file: !156, line: 404, baseType: !664, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !702, file: !156, line: 405, baseType: !664, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !666, file: !156, line: 3374, baseType: !708, size: 320)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !156, line: 1384, size: 320, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !708, file: !156, line: 1385, baseType: !702, size: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !708, file: !156, line: 1386, baseType: !712, size: 128, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !713, line: 58, baseType: !714)
!713 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !713, line: 54, size: 128, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !714, file: !713, line: 56, baseType: !548, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !714, file: !713, line: 57, baseType: !635, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !666, file: !156, line: 3375, baseType: !719, size: 256)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !156, line: 1397, size: 256, elements: !720)
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !719, file: !156, line: 1398, baseType: !702, size: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !719, file: !156, line: 1399, baseType: !723, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !725, line: 52, size: 256, elements: !726)
!725 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!726 = !{!727, !728, !729, !730, !731, !732, !733}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !724, file: !725, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !724, file: !725, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !724, file: !725, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !724, file: !725, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !724, file: !725, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !724, file: !725, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !724, file: !725, line: 62, baseType: !734, size: 192, offset: 64)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 192, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 3)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !666, file: !156, line: 3376, baseType: !738, size: 256)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !156, line: 1408, size: 256, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !738, file: !156, line: 1409, baseType: !702, size: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !738, file: !156, line: 1410, baseType: !742, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !744, line: 27, size: 192, elements: !745)
!744 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !743, file: !744, line: 29, baseType: !712, size: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !743, file: !744, line: 30, baseType: !3, size: 32, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !666, file: !156, line: 3377, baseType: !749, size: 256)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !156, line: 1437, size: 256, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !749, file: !156, line: 1438, baseType: !702, size: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !749, file: !156, line: 1439, baseType: !664, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !666, file: !156, line: 3378, baseType: !754, size: 256)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !156, line: 1418, size: 256, elements: !755)
!755 = !{!756, !757, !758}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !754, file: !156, line: 1419, baseType: !702, size: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !754, file: !156, line: 1420, baseType: !539, size: 32, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !754, file: !156, line: 1421, baseType: !759, size: 8, offset: 224)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 8, elements: !584)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !666, file: !156, line: 3379, baseType: !761, size: 320)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !156, line: 1428, size: 320, elements: !762)
!762 = !{!763, !764, !765}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !761, file: !156, line: 1429, baseType: !702, size: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !761, file: !156, line: 1430, baseType: !664, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !761, file: !156, line: 1431, baseType: !664, size: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !666, file: !156, line: 3380, baseType: !767, size: 320)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !156, line: 1460, size: 320, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !767, file: !156, line: 1461, baseType: !702, size: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !767, file: !156, line: 1462, baseType: !771, size: 128, offset: 192)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !772, line: 31, size: 128, elements: !773)
!772 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!773 = !{!774, !777, !778}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !771, file: !772, line: 32, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !538)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !771, file: !772, line: 33, baseType: !5, size: 32, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !771, file: !772, line: 34, baseType: !5, size: 32, offset: 96)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !666, file: !156, line: 3381, baseType: !780, size: 384)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !156, line: 2507, size: 384, elements: !781)
!781 = !{!782, !783, !788, !789, !790}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !780, file: !156, line: 2508, baseType: !702, size: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !780, file: !156, line: 2509, baseType: !784, size: 32, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !785, line: 58, baseType: !786)
!785 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !787, line: 44, baseType: !5)
!787 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!788 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !780, file: !156, line: 2510, baseType: !5, size: 32, offset: 224)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !780, file: !156, line: 2511, baseType: !664, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !780, file: !156, line: 2512, baseType: !664, size: 64, offset: 320)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !666, file: !156, line: 3382, baseType: !792, size: 896)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !156, line: 2652, size: 896, elements: !793)
!793 = !{!794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !792, file: !156, line: 2653, baseType: !780, size: 384)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !792, file: !156, line: 2654, baseType: !664, size: 64, offset: 384)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !792, file: !156, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !792, file: !156, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !792, file: !156, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !792, file: !156, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !792, file: !156, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !792, file: !156, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !792, file: !156, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !792, file: !156, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !792, file: !156, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !792, file: !156, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !792, file: !156, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !792, file: !156, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !792, file: !156, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !792, file: !156, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !792, file: !156, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !792, file: !156, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !792, file: !156, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !792, file: !156, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !792, file: !156, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !792, file: !156, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !792, file: !156, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !792, file: !156, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !792, file: !156, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !792, file: !156, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !792, file: !156, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !792, file: !156, line: 2703, baseType: !5, size: 32, offset: 512)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !792, file: !156, line: 2705, baseType: !664, size: 64, offset: 576)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !792, file: !156, line: 2706, baseType: !664, size: 64, offset: 640)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !792, file: !156, line: 2707, baseType: !664, size: 64, offset: 704)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !792, file: !156, line: 2708, baseType: !664, size: 64, offset: 768)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !792, file: !156, line: 2711, baseType: !827, size: 64, offset: 832)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !156, line: 2711, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !666, file: !156, line: 3383, baseType: !830, size: 960)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !156, line: 2756, size: 960, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !830, file: !156, line: 2757, baseType: !792, size: 896)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !830, file: !156, line: 2758, baseType: !549, size: 64, offset: 896)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !666, file: !156, line: 3384, baseType: !835, size: 1472)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !156, line: 3114, size: 1472, elements: !836)
!836 = !{!837, !858, !859, !860, !861}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !835, file: !156, line: 3115, baseType: !838, size: 1216)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !156, line: 2984, size: 1216, elements: !839)
!839 = !{!840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !838, file: !156, line: 2985, baseType: !830, size: 960)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !838, file: !156, line: 2986, baseType: !664, size: 64, offset: 960)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !838, file: !156, line: 2987, baseType: !664, size: 64, offset: 1024)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !838, file: !156, line: 2988, baseType: !664, size: 64, offset: 1088)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !838, file: !156, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !838, file: !156, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !838, file: !156, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !838, file: !156, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !838, file: !156, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !838, file: !156, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !838, file: !156, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !838, file: !156, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !838, file: !156, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !838, file: !156, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !838, file: !156, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !838, file: !156, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !838, file: !156, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !838, file: !156, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !835, file: !156, line: 3117, baseType: !664, size: 64, offset: 1216)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !835, file: !156, line: 3119, baseType: !664, size: 64, offset: 1280)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !835, file: !156, line: 3121, baseType: !664, size: 64, offset: 1344)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !835, file: !156, line: 3123, baseType: !664, size: 64, offset: 1408)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !666, file: !156, line: 3385, baseType: !863, size: 1088)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !156, line: 2874, size: 1088, elements: !864)
!864 = !{!865, !866, !867}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !863, file: !156, line: 2875, baseType: !830, size: 960)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !863, file: !156, line: 2876, baseType: !549, size: 64, offset: 960)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !863, file: !156, line: 2877, baseType: !868, size: 64, offset: 1024)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !156, line: 2856, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !666, file: !156, line: 3386, baseType: !838, size: 1216)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !666, file: !156, line: 3387, baseType: !872, size: 1280)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !156, line: 3093, size: 1280, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !872, file: !156, line: 3094, baseType: !838, size: 1216)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !872, file: !156, line: 3095, baseType: !868, size: 64, offset: 1216)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !666, file: !156, line: 3388, baseType: !877, size: 1216)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !156, line: 2824, size: 1216, elements: !878)
!878 = !{!879, !880, !881, !882, !883, !884}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !877, file: !156, line: 2825, baseType: !792, size: 896)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !877, file: !156, line: 2827, baseType: !664, size: 64, offset: 896)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !877, file: !156, line: 2828, baseType: !664, size: 64, offset: 960)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !877, file: !156, line: 2829, baseType: !664, size: 64, offset: 1024)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !877, file: !156, line: 2830, baseType: !664, size: 64, offset: 1088)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !877, file: !156, line: 2831, baseType: !664, size: 64, offset: 1152)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !666, file: !156, line: 3389, baseType: !886, size: 1024)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !156, line: 2850, size: 1024, elements: !887)
!887 = !{!888, !889, !890}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !886, file: !156, line: 2851, baseType: !830, size: 960)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !886, file: !156, line: 2852, baseType: !539, size: 32, offset: 960)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !886, file: !156, line: 2853, baseType: !539, size: 32, offset: 992)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !666, file: !156, line: 3390, baseType: !892, size: 1024)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !156, line: 2857, size: 1024, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !892, file: !156, line: 2858, baseType: !830, size: 960)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !892, file: !156, line: 2859, baseType: !868, size: 64, offset: 960)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !666, file: !156, line: 3391, baseType: !897, size: 960)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !156, line: 2862, size: 960, elements: !898)
!898 = !{!899}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !897, file: !156, line: 2863, baseType: !830, size: 960)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !666, file: !156, line: 3392, baseType: !901, size: 1472)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !156, line: 3304, size: 1472, elements: !902)
!902 = !{!903}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !901, file: !156, line: 3305, baseType: !835, size: 1472)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !666, file: !156, line: 3393, baseType: !905, size: 1792)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !156, line: 3248, size: 1792, elements: !906)
!906 = !{!907, !908, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !905, file: !156, line: 3249, baseType: !835, size: 1472)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !905, file: !156, line: 3251, baseType: !909, size: 64, offset: 1472)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !911, line: 463, size: 1152, elements: !912)
!911 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!912 = !{!913, !1075, !1179, !1180, !1183, !1186, !1187, !1188, !1189, !1190, !1191, !1215, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !910, file: !911, line: 464, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !133, line: 194, size: 384, elements: !916)
!916 = !{!917, !966, !979, !993, !1043, !1056}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !915, file: !133, line: 197, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !133, line: 182, baseType: !919)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !133, line: 116, size: 704, elements: !921)
!921 = !{!922, !923, !924, !925, !926, !927, !954, !963, !964, !965}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !920, file: !133, line: 119, baseType: !919, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !920, file: !133, line: 122, baseType: !919, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !920, file: !133, line: 123, baseType: !919, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !920, file: !133, line: 126, baseType: !539, size: 32, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !920, file: !133, line: 129, baseType: !132, size: 32, offset: 224)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !920, file: !133, line: 165, baseType: !928, size: 192, offset: 256)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !133, line: 132, size: 192, elements: !929)
!929 = !{!930, !943, !949}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !928, file: !133, line: 137, baseType: !931, size: 128)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !133, line: 133, size: 128, elements: !932)
!932 = !{!933, !942}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !931, file: !133, line: 135, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !133, line: 93, size: 320, elements: !936)
!936 = !{!937, !938, !939, !940, !941}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !935, file: !133, line: 96, baseType: !934, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !935, file: !133, line: 97, baseType: !934, size: 64, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !935, file: !133, line: 101, baseType: !664, size: 64, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !935, file: !133, line: 106, baseType: !664, size: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !935, file: !133, line: 111, baseType: !664, size: 64, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !931, file: !133, line: 136, baseType: !934, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !928, file: !133, line: 151, baseType: !944, size: 192)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !133, line: 139, size: 192, elements: !945)
!945 = !{!946, !947, !948}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !944, file: !133, line: 141, baseType: !664, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !944, file: !133, line: 145, baseType: !664, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !944, file: !133, line: 150, baseType: !539, size: 32, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !928, file: !133, line: 164, baseType: !950, size: 128)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !133, line: 153, size: 128, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !950, file: !133, line: 161, baseType: !664, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !950, file: !133, line: 163, baseType: !784, size: 32, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !920, file: !133, line: 168, baseType: !955, size: 64, offset: 448)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !133, line: 67, size: 320, elements: !957)
!957 = !{!958, !959, !960, !961, !962}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !956, file: !133, line: 70, baseType: !955, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !956, file: !133, line: 73, baseType: !919, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !956, file: !133, line: 78, baseType: !664, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !956, file: !133, line: 85, baseType: !549, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !956, file: !133, line: 88, baseType: !539, size: 32, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !920, file: !133, line: 173, baseType: !549, size: 64, offset: 512)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !920, file: !133, line: 173, baseType: !549, size: 64, offset: 576)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !920, file: !133, line: 177, baseType: !538, size: 8, offset: 640)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !915, file: !133, line: 200, baseType: !967, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !133, line: 185, baseType: !969)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !133, line: 185, size: 128, elements: !970)
!970 = !{!971}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !969, file: !133, line: 185, baseType: !972, size: 128)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !133, line: 184, baseType: !973)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !133, line: 184, size: 128, elements: !974)
!974 = !{!975, !976, !977}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !973, file: !133, line: 184, baseType: !5, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !973, file: !133, line: 184, baseType: !5, size: 32, offset: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !973, file: !133, line: 184, baseType: !978, size: 64, offset: 64)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 64, elements: !584)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !915, file: !133, line: 203, baseType: !980, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !133, line: 189, baseType: !982)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !133, line: 189, size: 128, elements: !983)
!983 = !{!984}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !982, file: !133, line: 189, baseType: !985, size: 128)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !133, line: 188, baseType: !986)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !133, line: 188, size: 128, elements: !987)
!987 = !{!988, !989, !990}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !986, file: !133, line: 188, baseType: !5, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !986, file: !133, line: 188, baseType: !5, size: 32, offset: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !986, file: !133, line: 188, baseType: !991, size: 64, offset: 64)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !992, size: 64, elements: !584)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !133, line: 180, baseType: !955)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !915, file: !133, line: 207, baseType: !994, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !995, line: 144, baseType: !996)
!995 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !995, line: 100, size: 896, elements: !998)
!998 = !{!999, !1007, !1012, !1017, !1019, !1020, !1021, !1022, !1023, !1024, !1029, !1031, !1032, !1037, !1042}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !997, file: !995, line: 102, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !995, line: 52, baseType: !1001)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !995, line: 47, baseType: !5)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !997, file: !995, line: 105, baseType: !1008, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !995, line: 59, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!539, !1005, !1005}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !997, file: !995, line: 108, baseType: !1013, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !995, line: 63, baseType: !1014)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !543}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !997, file: !995, line: 111, baseType: !1018, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !997, file: !995, line: 114, baseType: !546, size: 64, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !997, file: !995, line: 117, baseType: !546, size: 64, offset: 320)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !997, file: !995, line: 120, baseType: !546, size: 64, offset: 384)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !997, file: !995, line: 124, baseType: !5, size: 32, offset: 448)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !997, file: !995, line: 128, baseType: !5, size: 32, offset: 480)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !997, file: !995, line: 131, baseType: !1025, size: 64, offset: 512)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !995, line: 75, baseType: !1026)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!543, !546, !546}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !997, file: !995, line: 132, baseType: !1030, size: 64, offset: 576)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !995, line: 78, baseType: !1014)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !997, file: !995, line: 135, baseType: !543, size: 64, offset: 640)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !997, file: !995, line: 136, baseType: !1033, size: 64, offset: 704)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !995, line: 82, baseType: !1034)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!543, !543, !546, !546}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !997, file: !995, line: 137, baseType: !1038, size: 64, offset: 768)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !995, line: 83, baseType: !1039)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !543, !543}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !997, file: !995, line: 141, baseType: !5, size: 32, offset: 832)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !915, file: !133, line: 211, baseType: !1044, size: 64, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !156, line: 183, baseType: !1046)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !156, line: 183, size: 128, elements: !1047)
!1047 = !{!1048}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1046, file: !156, line: 183, baseType: !1049, size: 128)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !156, line: 182, baseType: !1050)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !156, line: 182, size: 128, elements: !1051)
!1051 = !{!1052, !1053, !1054}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1050, file: !156, line: 182, baseType: !5, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1050, file: !156, line: 182, baseType: !5, size: 32, offset: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1050, file: !156, line: 182, baseType: !1055, size: 64, offset: 64)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 64, elements: !584)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !915, file: !133, line: 220, baseType: !1057, size: 64, offset: 320)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !133, line: 217, size: 64, elements: !1058)
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1057, file: !133, line: 218, baseType: !1044, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1057, file: !133, line: 219, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1063, line: 29, baseType: !1064)
!1063 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1063, line: 29, size: 96, elements: !1065)
!1065 = !{!1066}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1064, file: !1063, line: 29, baseType: !1067, size: 96)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1063, line: 27, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1063, line: 27, size: 96, elements: !1069)
!1069 = !{!1070, !1071, !1072}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1068, file: !1063, line: 27, baseType: !5, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1068, file: !1063, line: 27, baseType: !5, size: 32, offset: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1068, file: !1063, line: 27, baseType: !1073, size: 8, offset: 64)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1074, size: 8, elements: !584)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1063, line: 26, baseType: !538)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !910, file: !911, line: 467, baseType: !1076, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !140, line: 374, size: 640, elements: !1078)
!1078 = !{!1079, !1154, !1155, !1168, !1169, !1170, !1171, !1172, !1173, !1175, !1177, !1178}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1077, file: !140, line: 377, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !550, line: 111, baseType: !1081)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !140, line: 217, size: 832, elements: !1083)
!1083 = !{!1084, !1119, !1120, !1121, !1124, !1128, !1129, !1130, !1148, !1149, !1150, !1151, !1152, !1153}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1082, file: !140, line: 219, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !140, line: 151, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !140, line: 151, size: 128, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1087, file: !140, line: 151, baseType: !1090, size: 128)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !140, line: 150, baseType: !1091)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !140, line: 150, size: 128, elements: !1092)
!1092 = !{!1093, !1094, !1095}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1091, file: !140, line: 150, baseType: !5, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1091, file: !140, line: 150, baseType: !5, size: 32, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1091, file: !140, line: 150, baseType: !1096, size: 64, offset: 64)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1097, size: 64, elements: !584)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !550, line: 108, baseType: !1098)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !140, line: 122, size: 512, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1111, !1112, !1113, !1114, !1115, !1116, !1117}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1099, file: !140, line: 124, baseType: !1081, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1099, file: !140, line: 125, baseType: !1081, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1099, file: !140, line: 131, baseType: !1104, size: 64, offset: 128)
!1104 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !140, line: 128, size: 64, elements: !1105)
!1105 = !{!1106, !1110}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1104, file: !140, line: 129, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !550, line: 66, baseType: !1108)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !550, line: 65, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1104, file: !140, line: 130, baseType: !549, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1099, file: !140, line: 134, baseType: !543, size: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1099, file: !140, line: 137, baseType: !664, size: 64, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1099, file: !140, line: 138, baseType: !784, size: 32, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1099, file: !140, line: 142, baseType: !5, size: 32, offset: 352)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1099, file: !140, line: 144, baseType: !539, size: 32, offset: 384)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1099, file: !140, line: 145, baseType: !539, size: 32, offset: 416)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1099, file: !140, line: 146, baseType: !1118, size: 64, offset: 448)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !140, line: 119, baseType: !635)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1082, file: !140, line: 220, baseType: !1085, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1082, file: !140, line: 223, baseType: !543, size: 64, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1082, file: !140, line: 226, baseType: !1122, size: 64, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !140, line: 185, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1082, file: !140, line: 229, baseType: !1125, size: 128, offset: 256)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1126, size: 128, elements: !619)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !140, line: 229, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1082, file: !140, line: 232, baseType: !1081, size: 64, offset: 384)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1082, file: !140, line: 233, baseType: !1081, size: 64, offset: 448)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1082, file: !140, line: 238, baseType: !1131, size: 64, offset: 512)
!1131 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !140, line: 235, size: 64, elements: !1132)
!1132 = !{!1133, !1139}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1131, file: !140, line: 236, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !140, line: 273, size: 128, elements: !1136)
!1136 = !{!1137, !1138}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1135, file: !140, line: 275, baseType: !1107, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1135, file: !140, line: 278, baseType: !1107, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1131, file: !140, line: 237, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !140, line: 259, size: 320, elements: !1142)
!1142 = !{!1143, !1144, !1145, !1146, !1147}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1141, file: !140, line: 261, baseType: !549, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1141, file: !140, line: 262, baseType: !549, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1141, file: !140, line: 266, baseType: !549, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1141, file: !140, line: 267, baseType: !549, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1141, file: !140, line: 270, baseType: !539, size: 32, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1082, file: !140, line: 241, baseType: !1118, size: 64, offset: 576)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1082, file: !140, line: 244, baseType: !539, size: 32, offset: 640)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1082, file: !140, line: 247, baseType: !539, size: 32, offset: 672)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1082, file: !140, line: 250, baseType: !539, size: 32, offset: 704)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1082, file: !140, line: 253, baseType: !539, size: 32, offset: 736)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1082, file: !140, line: 256, baseType: !539, size: 32, offset: 768)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1077, file: !140, line: 378, baseType: !1080, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1077, file: !140, line: 381, baseType: !1156, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !140, line: 282, baseType: !1158)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !140, line: 282, size: 128, elements: !1159)
!1159 = !{!1160}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1158, file: !140, line: 282, baseType: !1161, size: 128)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !140, line: 281, baseType: !1162)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !140, line: 281, size: 128, elements: !1163)
!1163 = !{!1164, !1165, !1166}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1162, file: !140, line: 281, baseType: !5, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1162, file: !140, line: 281, baseType: !5, size: 32, offset: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1162, file: !140, line: 281, baseType: !1167, size: 64, offset: 64)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1080, size: 64, elements: !584)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1077, file: !140, line: 384, baseType: !539, size: 32, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1077, file: !140, line: 387, baseType: !539, size: 32, offset: 224)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1077, file: !140, line: 390, baseType: !539, size: 32, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1077, file: !140, line: 394, baseType: !1156, size: 64, offset: 320)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1077, file: !140, line: 396, baseType: !139, size: 32, offset: 384)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1077, file: !140, line: 399, baseType: !1174, size: 64, offset: 416)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 64, elements: !619)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1077, file: !140, line: 402, baseType: !1176, size: 64, offset: 480)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !619)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1077, file: !140, line: 406, baseType: !539, size: 32, offset: 544)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1077, file: !140, line: 409, baseType: !539, size: 32, offset: 576)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !910, file: !911, line: 470, baseType: !1108, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !910, file: !911, line: 473, baseType: !1181, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !911, line: 166, flags: DIFlagFwdDecl)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !910, file: !911, line: 476, baseType: !1184, size: 64, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !911, line: 476, flags: DIFlagFwdDecl)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !910, file: !911, line: 479, baseType: !994, size: 64, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !910, file: !911, line: 484, baseType: !664, size: 64, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !910, file: !911, line: 488, baseType: !664, size: 64, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !910, file: !911, line: 493, baseType: !664, size: 64, offset: 512)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !910, file: !911, line: 496, baseType: !664, size: 64, offset: 576)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !910, file: !911, line: 501, baseType: !1192, size: 64, offset: 640)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !151, line: 2355, size: 576, elements: !1194)
!1194 = !{!1195, !1198, !1199, !1200, !1201, !1203, !1204, !1209, !1210, !1211, !1212, !1213, !1214}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1193, file: !151, line: 2356, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !151, line: 2356, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1193, file: !151, line: 2357, baseType: !544, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1193, file: !151, line: 2358, baseType: !539, size: 32, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1193, file: !151, line: 2359, baseType: !539, size: 32, offset: 160)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1193, file: !151, line: 2360, baseType: !1202, size: 128, offset: 192)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 128, elements: !644)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1193, file: !151, line: 2364, baseType: !539, size: 32, offset: 320)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1193, file: !151, line: 2367, baseType: !1205, size: 128, offset: 384)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !151, line: 2349, size: 128, elements: !1206)
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1205, file: !151, line: 2351, baseType: !549, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1205, file: !151, line: 2352, baseType: !635, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1193, file: !151, line: 2371, baseType: !150, size: 32, offset: 512)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1193, file: !151, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1193, file: !151, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1193, file: !151, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1193, file: !151, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1193, file: !151, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !910, file: !911, line: 504, baseType: !1216, size: 64, offset: 704)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !911, line: 504, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !910, file: !911, line: 507, baseType: !994, size: 64, offset: 768)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !910, file: !911, line: 510, baseType: !539, size: 32, offset: 832)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !910, file: !911, line: 513, baseType: !539, size: 32, offset: 864)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !910, file: !911, line: 516, baseType: !784, size: 32, offset: 896)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !910, file: !911, line: 519, baseType: !784, size: 32, offset: 928)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !910, file: !911, line: 522, baseType: !5, size: 32, offset: 960)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !910, file: !911, line: 523, baseType: !5, size: 32, offset: 992)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !910, file: !911, line: 528, baseType: !544, size: 64, offset: 1024)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !910, file: !911, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !910, file: !911, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !910, file: !911, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !910, file: !911, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !910, file: !911, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !910, file: !911, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !910, file: !911, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !910, file: !911, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !910, file: !911, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !910, file: !911, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !910, file: !911, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !910, file: !911, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !910, file: !911, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !910, file: !911, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !910, file: !911, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !910, file: !911, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !905, file: !156, line: 3254, baseType: !664, size: 64, offset: 1536)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !905, file: !156, line: 3257, baseType: !664, size: 64, offset: 1600)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !905, file: !156, line: 3258, baseType: !664, size: 64, offset: 1664)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !905, file: !156, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !905, file: !156, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !905, file: !156, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !905, file: !156, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !905, file: !156, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !905, file: !156, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !905, file: !156, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !905, file: !156, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !905, file: !156, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !905, file: !156, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !905, file: !156, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !905, file: !156, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !905, file: !156, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !905, file: !156, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !905, file: !156, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !905, file: !156, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !905, file: !156, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !905, file: !156, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !666, file: !156, line: 3394, baseType: !1264, size: 1344)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !156, line: 2279, size: 1344, elements: !1265)
!1265 = !{!1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1291, !1292, !1293, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1264, file: !156, line: 2280, baseType: !702, size: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1264, file: !156, line: 2281, baseType: !664, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1264, file: !156, line: 2282, baseType: !664, size: 64, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1264, file: !156, line: 2283, baseType: !664, size: 64, offset: 320)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1264, file: !156, line: 2284, baseType: !664, size: 64, offset: 384)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1264, file: !156, line: 2285, baseType: !5, size: 32, offset: 448)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1264, file: !156, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1264, file: !156, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1264, file: !156, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1264, file: !156, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1264, file: !156, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1264, file: !156, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1264, file: !156, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1264, file: !156, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1264, file: !156, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1264, file: !156, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1264, file: !156, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1264, file: !156, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1264, file: !156, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1264, file: !156, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1264, file: !156, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1264, file: !156, line: 2305, baseType: !5, size: 32, offset: 512)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1264, file: !156, line: 2306, baseType: !1289, size: 32, offset: 544)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1290, line: 31, baseType: !539)
!1290 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1264, file: !156, line: 2307, baseType: !664, size: 64, offset: 576)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1264, file: !156, line: 2308, baseType: !664, size: 64, offset: 640)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1264, file: !156, line: 2314, baseType: !1294, size: 64, offset: 704)
!1294 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !156, line: 2309, size: 64, elements: !1295)
!1295 = !{!1296, !1297, !1298}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1294, file: !156, line: 2310, baseType: !539, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1294, file: !156, line: 2311, baseType: !544, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1294, file: !156, line: 2312, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !156, line: 2277, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1264, file: !156, line: 2315, baseType: !664, size: 64, offset: 768)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1264, file: !156, line: 2316, baseType: !664, size: 64, offset: 832)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1264, file: !156, line: 2317, baseType: !664, size: 64, offset: 896)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1264, file: !156, line: 2318, baseType: !664, size: 64, offset: 960)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1264, file: !156, line: 2319, baseType: !664, size: 64, offset: 1024)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1264, file: !156, line: 2320, baseType: !664, size: 64, offset: 1088)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1264, file: !156, line: 2321, baseType: !664, size: 64, offset: 1152)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1264, file: !156, line: 2322, baseType: !664, size: 64, offset: 1216)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1264, file: !156, line: 2324, baseType: !1310, size: 64, offset: 1280)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !156, line: 2324, flags: DIFlagFwdDecl)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !666, file: !156, line: 3395, baseType: !1313, size: 320)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !156, line: 1469, size: 320, elements: !1314)
!1314 = !{!1315, !1316, !1317}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1313, file: !156, line: 1470, baseType: !702, size: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1313, file: !156, line: 1471, baseType: !664, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1313, file: !156, line: 1472, baseType: !664, size: 64, offset: 256)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !666, file: !156, line: 3396, baseType: !1319, size: 320)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !156, line: 1482, size: 320, elements: !1320)
!1320 = !{!1321, !1322, !1323}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1319, file: !156, line: 1483, baseType: !702, size: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1319, file: !156, line: 1484, baseType: !539, size: 32, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1319, file: !156, line: 1485, baseType: !1055, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !666, file: !156, line: 3397, baseType: !1325, size: 384)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !156, line: 1829, size: 384, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1325, file: !156, line: 1830, baseType: !702, size: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1325, file: !156, line: 1831, baseType: !784, size: 32, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1325, file: !156, line: 1832, baseType: !664, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1325, file: !156, line: 1835, baseType: !1055, size: 64, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !666, file: !156, line: 3398, baseType: !1332, size: 704)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !156, line: 1898, size: 704, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1340, !1341, !1344}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1332, file: !156, line: 1899, baseType: !702, size: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1332, file: !156, line: 1902, baseType: !664, size: 64, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1332, file: !156, line: 1905, baseType: !1337, size: 64, offset: 256)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !550, line: 58, baseType: !1338)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !550, line: 57, flags: DIFlagFwdDecl)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1332, file: !156, line: 1908, baseType: !5, size: 32, offset: 320)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1332, file: !156, line: 1911, baseType: !1342, size: 64, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !156, line: 1876, flags: DIFlagFwdDecl)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1332, file: !156, line: 1914, baseType: !1345, size: 256, offset: 448)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !156, line: 1883, size: 256, elements: !1346)
!1346 = !{!1347, !1349, !1350, !1355}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1345, file: !156, line: 1884, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1345, file: !156, line: 1885, baseType: !1348, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1345, file: !156, line: 1891, baseType: !1351, size: 64, offset: 128)
!1351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1345, file: !156, line: 1891, size: 64, elements: !1352)
!1352 = !{!1353, !1354}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1351, file: !156, line: 1891, baseType: !1337, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1351, file: !156, line: 1891, baseType: !664, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1345, file: !156, line: 1892, baseType: !1356, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !666, file: !156, line: 3399, baseType: !1358, size: 704)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !156, line: 2008, size: 704, elements: !1359)
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1358, file: !156, line: 2009, baseType: !702, size: 192)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1358, file: !156, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1358, file: !156, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1358, file: !156, line: 2014, baseType: !784, size: 32, offset: 224)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1358, file: !156, line: 2016, baseType: !664, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1358, file: !156, line: 2017, baseType: !1044, size: 64, offset: 320)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1358, file: !156, line: 2019, baseType: !664, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1358, file: !156, line: 2020, baseType: !664, size: 64, offset: 448)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1358, file: !156, line: 2021, baseType: !664, size: 64, offset: 512)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1358, file: !156, line: 2022, baseType: !664, size: 64, offset: 576)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1358, file: !156, line: 2023, baseType: !664, size: 64, offset: 640)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !666, file: !156, line: 3400, baseType: !1372, size: 832)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !156, line: 2430, size: 832, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1372, file: !156, line: 2431, baseType: !702, size: 192)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1372, file: !156, line: 2433, baseType: !664, size: 64, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1372, file: !156, line: 2434, baseType: !664, size: 64, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1372, file: !156, line: 2435, baseType: !664, size: 64, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1372, file: !156, line: 2436, baseType: !664, size: 64, offset: 384)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1372, file: !156, line: 2437, baseType: !1044, size: 64, offset: 448)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1372, file: !156, line: 2438, baseType: !664, size: 64, offset: 512)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1372, file: !156, line: 2440, baseType: !664, size: 64, offset: 576)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1372, file: !156, line: 2441, baseType: !664, size: 64, offset: 640)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1372, file: !156, line: 2443, baseType: !1384, size: 128, offset: 704)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !156, line: 182, baseType: !1385)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !156, line: 182, size: 128, elements: !1386)
!1386 = !{!1387}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1385, file: !156, line: 182, baseType: !1049, size: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !666, file: !156, line: 3401, baseType: !1389, size: 320)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !156, line: 3327, size: 320, elements: !1390)
!1390 = !{!1391, !1392, !1399}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1389, file: !156, line: 3329, baseType: !702, size: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1389, file: !156, line: 3330, baseType: !1393, size: 64, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !156, line: 3320, size: 192, elements: !1395)
!1395 = !{!1396, !1397, !1398}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1394, file: !156, line: 3322, baseType: !1393, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1394, file: !156, line: 3323, baseType: !1393, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1394, file: !156, line: 3324, baseType: !664, size: 64, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1389, file: !156, line: 3331, baseType: !1393, size: 64, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !666, file: !156, line: 3402, baseType: !1401, size: 256)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !156, line: 1540, size: 256, elements: !1402)
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1401, file: !156, line: 1541, baseType: !702, size: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1401, file: !156, line: 1542, baseType: !1405, size: 64, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !156, line: 1538, baseType: !1407)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !156, line: 1538, size: 192, elements: !1408)
!1408 = !{!1409}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1407, file: !156, line: 1538, baseType: !1410, size: 192)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !156, line: 1537, baseType: !1411)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !156, line: 1537, size: 192, elements: !1412)
!1412 = !{!1413, !1414, !1415}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1411, file: !156, line: 1537, baseType: !5, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1411, file: !156, line: 1537, baseType: !5, size: 32, offset: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1411, file: !156, line: 1537, baseType: !1416, size: 128, offset: 64)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1417, size: 128, elements: !584)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !156, line: 1535, baseType: !1418)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !156, line: 1532, size: 128, elements: !1419)
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1418, file: !156, line: 1533, baseType: !664, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1418, file: !156, line: 1534, baseType: !664, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !666, file: !156, line: 3403, baseType: !1423, size: 512)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !156, line: 1938, size: 512, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1428, !1434, !1435, !1436}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1423, file: !156, line: 1939, baseType: !702, size: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1423, file: !156, line: 1940, baseType: !784, size: 32, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1423, file: !156, line: 1941, baseType: !155, size: 32, offset: 224)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1423, file: !156, line: 1946, baseType: !1429, size: 32, offset: 256)
!1429 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !156, line: 1942, size: 32, elements: !1430)
!1430 = !{!1431, !1432, !1433}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1429, file: !156, line: 1943, baseType: !174, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1429, file: !156, line: 1944, baseType: !181, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1429, file: !156, line: 1945, baseType: !188, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1423, file: !156, line: 1950, baseType: !1107, size: 64, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1423, file: !156, line: 1951, baseType: !1107, size: 64, offset: 384)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1423, file: !156, line: 1953, baseType: !1055, size: 64, offset: 448)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !666, file: !156, line: 3404, baseType: !1438, size: 1664)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !156, line: 3337, size: 1664, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1438, file: !156, line: 3338, baseType: !702, size: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1438, file: !156, line: 3341, baseType: !1442, size: 1472, offset: 192)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1443, line: 410, size: 1472, elements: !1444)
!1443 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1444 = !{!1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1442, file: !1443, line: 412, baseType: !539, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1442, file: !1443, line: 413, baseType: !539, size: 32, offset: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1442, file: !1443, line: 414, baseType: !539, size: 32, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1442, file: !1443, line: 415, baseType: !539, size: 32, offset: 96)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1442, file: !1443, line: 416, baseType: !539, size: 32, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1442, file: !1443, line: 417, baseType: !539, size: 32, offset: 160)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1442, file: !1443, line: 418, baseType: !538, size: 8, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1442, file: !1443, line: 419, baseType: !538, size: 8, offset: 200)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1442, file: !1443, line: 420, baseType: !1454, size: 8, offset: 208)
!1454 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1442, file: !1443, line: 421, baseType: !1454, size: 8, offset: 216)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1442, file: !1443, line: 422, baseType: !1454, size: 8, offset: 224)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1442, file: !1443, line: 423, baseType: !1454, size: 8, offset: 232)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1442, file: !1443, line: 424, baseType: !1454, size: 8, offset: 240)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1442, file: !1443, line: 425, baseType: !1454, size: 8, offset: 248)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1442, file: !1443, line: 426, baseType: !1454, size: 8, offset: 256)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1442, file: !1443, line: 427, baseType: !1454, size: 8, offset: 264)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1442, file: !1443, line: 428, baseType: !1454, size: 8, offset: 272)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1442, file: !1443, line: 429, baseType: !1454, size: 8, offset: 280)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1442, file: !1443, line: 430, baseType: !1454, size: 8, offset: 288)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1442, file: !1443, line: 431, baseType: !1454, size: 8, offset: 296)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1442, file: !1443, line: 432, baseType: !1454, size: 8, offset: 304)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1442, file: !1443, line: 433, baseType: !1454, size: 8, offset: 312)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1442, file: !1443, line: 434, baseType: !1454, size: 8, offset: 320)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1442, file: !1443, line: 435, baseType: !1454, size: 8, offset: 328)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1442, file: !1443, line: 436, baseType: !1454, size: 8, offset: 336)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1442, file: !1443, line: 437, baseType: !1454, size: 8, offset: 344)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1442, file: !1443, line: 438, baseType: !1454, size: 8, offset: 352)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1442, file: !1443, line: 439, baseType: !1454, size: 8, offset: 360)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1442, file: !1443, line: 440, baseType: !1454, size: 8, offset: 368)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1442, file: !1443, line: 441, baseType: !1454, size: 8, offset: 376)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1442, file: !1443, line: 442, baseType: !1454, size: 8, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1442, file: !1443, line: 443, baseType: !1454, size: 8, offset: 392)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1442, file: !1443, line: 444, baseType: !1454, size: 8, offset: 400)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1442, file: !1443, line: 445, baseType: !1454, size: 8, offset: 408)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1442, file: !1443, line: 446, baseType: !1454, size: 8, offset: 416)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1442, file: !1443, line: 447, baseType: !1454, size: 8, offset: 424)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1442, file: !1443, line: 448, baseType: !1454, size: 8, offset: 432)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1442, file: !1443, line: 449, baseType: !1454, size: 8, offset: 440)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1442, file: !1443, line: 450, baseType: !1454, size: 8, offset: 448)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1442, file: !1443, line: 451, baseType: !1454, size: 8, offset: 456)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1442, file: !1443, line: 452, baseType: !1454, size: 8, offset: 464)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1442, file: !1443, line: 453, baseType: !1454, size: 8, offset: 472)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1442, file: !1443, line: 454, baseType: !1454, size: 8, offset: 480)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1442, file: !1443, line: 455, baseType: !1454, size: 8, offset: 488)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1442, file: !1443, line: 456, baseType: !1454, size: 8, offset: 496)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1442, file: !1443, line: 457, baseType: !1454, size: 8, offset: 504)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1442, file: !1443, line: 458, baseType: !1454, size: 8, offset: 512)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1442, file: !1443, line: 459, baseType: !1454, size: 8, offset: 520)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1442, file: !1443, line: 460, baseType: !1454, size: 8, offset: 528)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1442, file: !1443, line: 461, baseType: !1454, size: 8, offset: 536)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1442, file: !1443, line: 462, baseType: !1454, size: 8, offset: 544)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1442, file: !1443, line: 463, baseType: !1454, size: 8, offset: 552)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1442, file: !1443, line: 464, baseType: !1454, size: 8, offset: 560)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1442, file: !1443, line: 465, baseType: !1454, size: 8, offset: 568)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1442, file: !1443, line: 466, baseType: !1454, size: 8, offset: 576)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1442, file: !1443, line: 467, baseType: !1454, size: 8, offset: 584)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1442, file: !1443, line: 468, baseType: !1454, size: 8, offset: 592)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1442, file: !1443, line: 469, baseType: !1454, size: 8, offset: 600)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1442, file: !1443, line: 470, baseType: !1454, size: 8, offset: 608)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1442, file: !1443, line: 471, baseType: !1454, size: 8, offset: 616)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1442, file: !1443, line: 472, baseType: !1454, size: 8, offset: 624)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1442, file: !1443, line: 473, baseType: !1454, size: 8, offset: 632)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1442, file: !1443, line: 474, baseType: !1454, size: 8, offset: 640)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1442, file: !1443, line: 475, baseType: !1454, size: 8, offset: 648)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1442, file: !1443, line: 476, baseType: !1454, size: 8, offset: 656)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1442, file: !1443, line: 477, baseType: !1454, size: 8, offset: 664)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1442, file: !1443, line: 478, baseType: !1454, size: 8, offset: 672)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1442, file: !1443, line: 479, baseType: !1454, size: 8, offset: 680)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1442, file: !1443, line: 480, baseType: !1454, size: 8, offset: 688)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1442, file: !1443, line: 481, baseType: !1454, size: 8, offset: 696)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1442, file: !1443, line: 482, baseType: !1454, size: 8, offset: 704)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1442, file: !1443, line: 483, baseType: !1454, size: 8, offset: 712)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1442, file: !1443, line: 484, baseType: !1454, size: 8, offset: 720)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1442, file: !1443, line: 485, baseType: !1454, size: 8, offset: 728)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1442, file: !1443, line: 486, baseType: !1454, size: 8, offset: 736)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1442, file: !1443, line: 487, baseType: !1454, size: 8, offset: 744)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1442, file: !1443, line: 488, baseType: !1454, size: 8, offset: 752)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1442, file: !1443, line: 489, baseType: !1454, size: 8, offset: 760)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1442, file: !1443, line: 490, baseType: !1454, size: 8, offset: 768)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1442, file: !1443, line: 491, baseType: !1454, size: 8, offset: 776)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1442, file: !1443, line: 492, baseType: !1454, size: 8, offset: 784)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1442, file: !1443, line: 493, baseType: !1454, size: 8, offset: 792)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1442, file: !1443, line: 494, baseType: !1454, size: 8, offset: 800)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1442, file: !1443, line: 495, baseType: !1454, size: 8, offset: 808)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1442, file: !1443, line: 496, baseType: !1454, size: 8, offset: 816)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1442, file: !1443, line: 497, baseType: !1454, size: 8, offset: 824)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1442, file: !1443, line: 498, baseType: !1454, size: 8, offset: 832)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1442, file: !1443, line: 499, baseType: !1454, size: 8, offset: 840)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1442, file: !1443, line: 500, baseType: !1454, size: 8, offset: 848)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1442, file: !1443, line: 501, baseType: !1454, size: 8, offset: 856)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1442, file: !1443, line: 502, baseType: !1454, size: 8, offset: 864)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1442, file: !1443, line: 503, baseType: !1454, size: 8, offset: 872)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1442, file: !1443, line: 504, baseType: !1454, size: 8, offset: 880)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1442, file: !1443, line: 505, baseType: !1454, size: 8, offset: 888)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1442, file: !1443, line: 506, baseType: !1454, size: 8, offset: 896)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1442, file: !1443, line: 507, baseType: !1454, size: 8, offset: 904)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1442, file: !1443, line: 508, baseType: !1454, size: 8, offset: 912)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1442, file: !1443, line: 509, baseType: !1454, size: 8, offset: 920)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1442, file: !1443, line: 510, baseType: !1454, size: 8, offset: 928)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1442, file: !1443, line: 511, baseType: !1454, size: 8, offset: 936)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1442, file: !1443, line: 512, baseType: !1454, size: 8, offset: 944)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1442, file: !1443, line: 513, baseType: !1454, size: 8, offset: 952)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1442, file: !1443, line: 514, baseType: !1454, size: 8, offset: 960)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1442, file: !1443, line: 515, baseType: !1454, size: 8, offset: 968)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1442, file: !1443, line: 516, baseType: !1454, size: 8, offset: 976)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1442, file: !1443, line: 517, baseType: !1454, size: 8, offset: 984)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1442, file: !1443, line: 518, baseType: !1454, size: 8, offset: 992)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1442, file: !1443, line: 519, baseType: !1454, size: 8, offset: 1000)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1442, file: !1443, line: 520, baseType: !1454, size: 8, offset: 1008)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1442, file: !1443, line: 521, baseType: !1454, size: 8, offset: 1016)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1442, file: !1443, line: 522, baseType: !1454, size: 8, offset: 1024)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1442, file: !1443, line: 523, baseType: !1454, size: 8, offset: 1032)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1442, file: !1443, line: 524, baseType: !1454, size: 8, offset: 1040)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1442, file: !1443, line: 525, baseType: !1454, size: 8, offset: 1048)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1442, file: !1443, line: 526, baseType: !1454, size: 8, offset: 1056)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1442, file: !1443, line: 527, baseType: !1454, size: 8, offset: 1064)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1442, file: !1443, line: 528, baseType: !1454, size: 8, offset: 1072)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1442, file: !1443, line: 529, baseType: !1454, size: 8, offset: 1080)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1442, file: !1443, line: 530, baseType: !1454, size: 8, offset: 1088)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1442, file: !1443, line: 531, baseType: !1454, size: 8, offset: 1096)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1442, file: !1443, line: 532, baseType: !1454, size: 8, offset: 1104)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1442, file: !1443, line: 533, baseType: !1454, size: 8, offset: 1112)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1442, file: !1443, line: 534, baseType: !1454, size: 8, offset: 1120)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1442, file: !1443, line: 535, baseType: !1454, size: 8, offset: 1128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1442, file: !1443, line: 536, baseType: !1454, size: 8, offset: 1136)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1442, file: !1443, line: 537, baseType: !1454, size: 8, offset: 1144)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1442, file: !1443, line: 538, baseType: !1454, size: 8, offset: 1152)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1442, file: !1443, line: 539, baseType: !1454, size: 8, offset: 1160)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1442, file: !1443, line: 540, baseType: !1454, size: 8, offset: 1168)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1442, file: !1443, line: 541, baseType: !1454, size: 8, offset: 1176)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1442, file: !1443, line: 542, baseType: !1454, size: 8, offset: 1184)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1442, file: !1443, line: 543, baseType: !1454, size: 8, offset: 1192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1442, file: !1443, line: 544, baseType: !1454, size: 8, offset: 1200)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1442, file: !1443, line: 545, baseType: !1454, size: 8, offset: 1208)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1442, file: !1443, line: 546, baseType: !1454, size: 8, offset: 1216)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1442, file: !1443, line: 547, baseType: !1454, size: 8, offset: 1224)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1442, file: !1443, line: 548, baseType: !1454, size: 8, offset: 1232)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1442, file: !1443, line: 549, baseType: !1454, size: 8, offset: 1240)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1442, file: !1443, line: 550, baseType: !1454, size: 8, offset: 1248)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1442, file: !1443, line: 551, baseType: !1454, size: 8, offset: 1256)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1442, file: !1443, line: 552, baseType: !1454, size: 8, offset: 1264)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1442, file: !1443, line: 553, baseType: !1454, size: 8, offset: 1272)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1442, file: !1443, line: 554, baseType: !1454, size: 8, offset: 1280)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1442, file: !1443, line: 555, baseType: !1454, size: 8, offset: 1288)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1442, file: !1443, line: 556, baseType: !1454, size: 8, offset: 1296)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1442, file: !1443, line: 557, baseType: !1454, size: 8, offset: 1304)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1442, file: !1443, line: 558, baseType: !1454, size: 8, offset: 1312)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1442, file: !1443, line: 559, baseType: !1454, size: 8, offset: 1320)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1442, file: !1443, line: 560, baseType: !1454, size: 8, offset: 1328)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1442, file: !1443, line: 561, baseType: !1454, size: 8, offset: 1336)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1442, file: !1443, line: 562, baseType: !1454, size: 8, offset: 1344)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1442, file: !1443, line: 563, baseType: !1454, size: 8, offset: 1352)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1442, file: !1443, line: 564, baseType: !1454, size: 8, offset: 1360)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1442, file: !1443, line: 565, baseType: !1454, size: 8, offset: 1368)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1442, file: !1443, line: 566, baseType: !1454, size: 8, offset: 1376)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1442, file: !1443, line: 567, baseType: !1454, size: 8, offset: 1384)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1442, file: !1443, line: 568, baseType: !1454, size: 8, offset: 1392)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1442, file: !1443, line: 569, baseType: !1454, size: 8, offset: 1400)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1442, file: !1443, line: 570, baseType: !1454, size: 8, offset: 1408)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1442, file: !1443, line: 571, baseType: !1454, size: 8, offset: 1416)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1442, file: !1443, line: 572, baseType: !1454, size: 8, offset: 1424)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1442, file: !1443, line: 573, baseType: !1454, size: 8, offset: 1432)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1442, file: !1443, line: 574, baseType: !1454, size: 8, offset: 1440)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !666, file: !156, line: 3405, baseType: !1610, size: 384)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !156, line: 3352, size: 384, elements: !1611)
!1611 = !{!1612, !1613}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1610, file: !156, line: 3353, baseType: !702, size: 192)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1610, file: !156, line: 3356, baseType: !1614, size: 192, offset: 192)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1443, line: 578, size: 192, elements: !1615)
!1615 = !{!1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1614, file: !1443, line: 580, baseType: !539, size: 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1614, file: !1443, line: 581, baseType: !539, size: 32, offset: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1614, file: !1443, line: 582, baseType: !539, size: 32, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1614, file: !1443, line: 583, baseType: !539, size: 32, offset: 96)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1614, file: !1443, line: 584, baseType: !538, size: 8, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1614, file: !1443, line: 585, baseType: !538, size: 8, offset: 136)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1614, file: !1443, line: 586, baseType: !538, size: 8, offset: 144)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1614, file: !1443, line: 587, baseType: !538, size: 8, offset: 152)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1614, file: !1443, line: 588, baseType: !538, size: 8, offset: 160)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1614, file: !1443, line: 589, baseType: !538, size: 8, offset: 168)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1614, file: !1443, line: 590, baseType: !538, size: 8, offset: 176)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !570, file: !383, line: 178, baseType: !1081, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !570, file: !383, line: 179, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !383, line: 150, baseType: !1631)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !383, line: 142, size: 320, elements: !1632)
!1632 = !{!1633, !1634, !1635, !1636, !1637, !1638}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1631, file: !383, line: 144, baseType: !664, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1631, file: !383, line: 145, baseType: !549, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1631, file: !383, line: 146, baseType: !549, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1631, file: !383, line: 147, baseType: !1289, size: 32, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1631, file: !383, line: 148, baseType: !5, size: 32, offset: 224)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1631, file: !383, line: 149, baseType: !538, size: 8, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !570, file: !383, line: 180, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !383, line: 162, baseType: !1642)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !383, line: 159, size: 128, elements: !1643)
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1642, file: !383, line: 160, baseType: !664, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1642, file: !383, line: 161, baseType: !635, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !570, file: !383, line: 181, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !383, line: 181, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !565, file: !383, line: 317, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 64, elements: !584)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !565, file: !383, line: 318, baseType: !1652, size: 320)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !383, line: 188, size: 320, elements: !1653)
!1653 = !{!1654, !1656, !1711}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1652, file: !383, line: 190, baseType: !1655, size: 192)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 192, elements: !735)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1652, file: !383, line: 193, baseType: !1657, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !383, line: 206, size: 320, elements: !1659)
!1659 = !{!1660, !1696, !1697, !1698, !1710}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1658, file: !383, line: 208, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !550, line: 62, baseType: !1663)
!1663 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1664, line: 538, size: 256, elements: !1665)
!1664 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1665 = !{!1666, !1670, !1676, !1687}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1663, file: !1664, line: 539, baseType: !1667, size: 32)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1664, line: 482, size: 32, elements: !1668)
!1668 = !{!1669}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1667, file: !1664, line: 484, baseType: !5, size: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1663, file: !1664, line: 540, baseType: !1671, size: 192)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1664, line: 488, size: 192, elements: !1672)
!1672 = !{!1673, !1674, !1675}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1671, file: !1664, line: 489, baseType: !1667, size: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1671, file: !1664, line: 492, baseType: !544, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1671, file: !1664, line: 496, baseType: !664, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1663, file: !1664, line: 541, baseType: !1677, size: 256)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1664, line: 504, size: 256, elements: !1678)
!1678 = !{!1679, !1680, !1685, !1686}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1677, file: !1664, line: 505, baseType: !1667, size: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1677, file: !1664, line: 509, baseType: !1681, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1664, line: 501, baseType: !1682)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !1005}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1677, file: !1664, line: 510, baseType: !1005, size: 64, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1677, file: !1664, line: 513, baseType: !1661, size: 64, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1663, file: !1664, line: 542, baseType: !1688, size: 128)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1664, line: 530, size: 128, elements: !1689)
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1688, file: !1664, line: 531, baseType: !1667, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1688, file: !1664, line: 534, baseType: !1692, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1664, line: 525, baseType: !1693)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!538, !664, !544, !548, !548}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1658, file: !383, line: 211, baseType: !5, size: 32, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1658, file: !383, line: 214, baseType: !635, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1658, file: !383, line: 224, baseType: !1699, size: 64, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !383, line: 202, baseType: !1701)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !383, line: 202, size: 128, elements: !1702)
!1702 = !{!1703}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1701, file: !383, line: 202, baseType: !1704, size: 128)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !383, line: 200, baseType: !1705)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !383, line: 200, size: 128, elements: !1706)
!1706 = !{!1707, !1708, !1709}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1705, file: !383, line: 200, baseType: !5, size: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1705, file: !383, line: 200, baseType: !5, size: 32, offset: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1705, file: !383, line: 200, baseType: !583, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1658, file: !383, line: 234, baseType: !1699, size: 64, offset: 256)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1652, file: !383, line: 197, baseType: !635, size: 64, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !565, file: !383, line: 319, baseType: !724, size: 256)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !565, file: !383, line: 320, baseType: !743, size: 192)
!1714 = !{i32 2, !"Dwarf Version", i32 4}
!1715 = !{i32 2, !"Debug Info Version", i32 3}
!1716 = !{i32 1, !"wchar_size", i32 4}
!1717 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1718 = distinct !DISubprogram(name: "vprintf", scope: !1719, file: !1719, line: 39, type: !1720, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1730)
!1719 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!539, !1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !544)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1729}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1724, file: !1, baseType: !5, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1724, file: !1, baseType: !5, size: 32, offset: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1724, file: !1, baseType: !543, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1724, file: !1, baseType: !543, size: 64, offset: 128)
!1730 = !{!1731, !1732}
!1731 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1718, file: !1719, line: 39, type: !1722)
!1732 = !DILocalVariable(name: "__arg", arg: 2, scope: !1718, file: !1719, line: 39, type: !1723)
!1733 = !DILocation(line: 0, scope: !1718)
!1734 = !DILocation(line: 41, column: 20, scope: !1718)
!1735 = !DILocation(line: 41, column: 10, scope: !1718)
!1736 = !DILocation(line: 41, column: 3, scope: !1718)
!1737 = distinct !DISubprogram(name: "getchar", scope: !1719, file: !1719, line: 47, type: !1738, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1740)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!539}
!1740 = !{}
!1741 = !DILocation(line: 49, column: 16, scope: !1737)
!1742 = !DILocation(line: 49, column: 10, scope: !1737)
!1743 = !DILocation(line: 49, column: 3, scope: !1737)
!1744 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1719, file: !1719, line: 56, type: !1745, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1798)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!539, !1747}
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1749, line: 7, baseType: !1750)
!1749 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1751, line: 49, size: 1728, elements: !1752)
!1751 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1752 = !{!1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1768, !1770, !1771, !1772, !1775, !1777, !1778, !1779, !1782, !1784, !1787, !1790, !1791, !1792, !1793, !1794}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1750, file: !1751, line: 51, baseType: !539, size: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1750, file: !1751, line: 54, baseType: !541, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1750, file: !1751, line: 55, baseType: !541, size: 64, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1750, file: !1751, line: 56, baseType: !541, size: 64, offset: 192)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1750, file: !1751, line: 57, baseType: !541, size: 64, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1750, file: !1751, line: 58, baseType: !541, size: 64, offset: 320)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1750, file: !1751, line: 59, baseType: !541, size: 64, offset: 384)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1750, file: !1751, line: 60, baseType: !541, size: 64, offset: 448)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1750, file: !1751, line: 61, baseType: !541, size: 64, offset: 512)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1750, file: !1751, line: 64, baseType: !541, size: 64, offset: 576)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1750, file: !1751, line: 65, baseType: !541, size: 64, offset: 640)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1750, file: !1751, line: 66, baseType: !541, size: 64, offset: 704)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1750, file: !1751, line: 68, baseType: !1766, size: 64, offset: 768)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1751, line: 36, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1750, file: !1751, line: 70, baseType: !1769, size: 64, offset: 832)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1750, file: !1751, line: 72, baseType: !539, size: 32, offset: 896)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1750, file: !1751, line: 73, baseType: !539, size: 32, offset: 928)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1750, file: !1751, line: 74, baseType: !1773, size: 64, offset: 960)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1774, line: 152, baseType: !635)
!1774 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1750, file: !1751, line: 77, baseType: !1776, size: 16, offset: 1024)
!1776 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1750, file: !1751, line: 78, baseType: !1454, size: 8, offset: 1040)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1750, file: !1751, line: 79, baseType: !759, size: 8, offset: 1048)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1750, file: !1751, line: 81, baseType: !1780, size: 64, offset: 1088)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1751, line: 43, baseType: null)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1750, file: !1751, line: 89, baseType: !1783, size: 64, offset: 1152)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1774, line: 153, baseType: !635)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1750, file: !1751, line: 91, baseType: !1785, size: 64, offset: 1216)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1751, line: 37, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1750, file: !1751, line: 92, baseType: !1788, size: 64, offset: 1280)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1751, line: 38, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1750, file: !1751, line: 93, baseType: !1769, size: 64, offset: 1344)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1750, file: !1751, line: 94, baseType: !543, size: 64, offset: 1408)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1750, file: !1751, line: 95, baseType: !546, size: 64, offset: 1472)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1750, file: !1751, line: 96, baseType: !539, size: 32, offset: 1536)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1750, file: !1751, line: 98, baseType: !1795, size: 160, offset: 1568)
!1795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 160, elements: !1796)
!1796 = !{!1797}
!1797 = !DISubrange(count: 20)
!1798 = !{!1799}
!1799 = !DILocalVariable(name: "__fp", arg: 1, scope: !1744, file: !1719, line: 56, type: !1747)
!1800 = !DILocation(line: 0, scope: !1744)
!1801 = !DILocation(line: 58, column: 10, scope: !1744)
!1802 = !DILocation(line: 58, column: 3, scope: !1744)
!1803 = distinct !DISubprogram(name: "getc_unlocked", scope: !1719, file: !1719, line: 66, type: !1745, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1804)
!1804 = !{!1805}
!1805 = !DILocalVariable(name: "__fp", arg: 1, scope: !1803, file: !1719, line: 66, type: !1747)
!1806 = !DILocation(line: 0, scope: !1803)
!1807 = !DILocation(line: 68, column: 10, scope: !1803)
!1808 = !DILocation(line: 68, column: 3, scope: !1803)
!1809 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1719, file: !1719, line: 73, type: !1738, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1740)
!1810 = !DILocation(line: 75, column: 10, scope: !1809)
!1811 = !DILocation(line: 75, column: 3, scope: !1809)
!1812 = distinct !DISubprogram(name: "putchar", scope: !1719, file: !1719, line: 82, type: !1813, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1815)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!539, !539}
!1815 = !{!1816}
!1816 = !DILocalVariable(name: "__c", arg: 1, scope: !1812, file: !1719, line: 82, type: !539)
!1817 = !DILocation(line: 0, scope: !1812)
!1818 = !DILocation(line: 84, column: 21, scope: !1812)
!1819 = !DILocation(line: 84, column: 10, scope: !1812)
!1820 = !DILocation(line: 84, column: 3, scope: !1812)
!1821 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1719, file: !1719, line: 91, type: !1822, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1824)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!539, !539, !1747}
!1824 = !{!1825, !1826}
!1825 = !DILocalVariable(name: "__c", arg: 1, scope: !1821, file: !1719, line: 91, type: !539)
!1826 = !DILocalVariable(name: "__stream", arg: 2, scope: !1821, file: !1719, line: 91, type: !1747)
!1827 = !DILocation(line: 0, scope: !1821)
!1828 = !DILocation(line: 93, column: 10, scope: !1821)
!1829 = !DILocation(line: 93, column: 3, scope: !1821)
!1830 = distinct !DISubprogram(name: "putc_unlocked", scope: !1719, file: !1719, line: 101, type: !1822, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1831)
!1831 = !{!1832, !1833}
!1832 = !DILocalVariable(name: "__c", arg: 1, scope: !1830, file: !1719, line: 101, type: !539)
!1833 = !DILocalVariable(name: "__stream", arg: 2, scope: !1830, file: !1719, line: 101, type: !1747)
!1834 = !DILocation(line: 0, scope: !1830)
!1835 = !DILocation(line: 103, column: 10, scope: !1830)
!1836 = !DILocation(line: 103, column: 3, scope: !1830)
!1837 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1719, file: !1719, line: 108, type: !1813, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1838)
!1838 = !{!1839}
!1839 = !DILocalVariable(name: "__c", arg: 1, scope: !1837, file: !1719, line: 108, type: !539)
!1840 = !DILocation(line: 0, scope: !1837)
!1841 = !DILocation(line: 110, column: 10, scope: !1837)
!1842 = !DILocation(line: 110, column: 3, scope: !1837)
!1843 = distinct !DISubprogram(name: "getline", scope: !1719, file: !1719, line: 118, type: !1844, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1848)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!1846, !540, !1847, !1747}
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1774, line: 193, baseType: !635)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!1848 = !{!1849, !1850, !1851}
!1849 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1843, file: !1719, line: 118, type: !540)
!1850 = !DILocalVariable(name: "__n", arg: 2, scope: !1843, file: !1719, line: 118, type: !1847)
!1851 = !DILocalVariable(name: "__stream", arg: 3, scope: !1843, file: !1719, line: 118, type: !1747)
!1852 = !DILocation(line: 0, scope: !1843)
!1853 = !DILocation(line: 120, column: 10, scope: !1843)
!1854 = !DILocation(line: 120, column: 3, scope: !1843)
!1855 = distinct !DISubprogram(name: "feof_unlocked", scope: !1719, file: !1719, line: 128, type: !1745, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1856)
!1856 = !{!1857}
!1857 = !DILocalVariable(name: "__stream", arg: 1, scope: !1855, file: !1719, line: 128, type: !1747)
!1858 = !DILocation(line: 0, scope: !1855)
!1859 = !DILocation(line: 130, column: 10, scope: !1855)
!1860 = !DILocation(line: 130, column: 3, scope: !1855)
!1861 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1719, file: !1719, line: 135, type: !1745, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1862)
!1862 = !{!1863}
!1863 = !DILocalVariable(name: "__stream", arg: 1, scope: !1861, file: !1719, line: 135, type: !1747)
!1864 = !DILocation(line: 0, scope: !1861)
!1865 = !DILocation(line: 137, column: 10, scope: !1861)
!1866 = !DILocation(line: 137, column: 3, scope: !1861)
!1867 = distinct !DISubprogram(name: "tolower", scope: !1868, file: !1868, line: 207, type: !1813, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1869)
!1868 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1869 = !{!1870}
!1870 = !DILocalVariable(name: "__c", arg: 1, scope: !1867, file: !1868, line: 207, type: !539)
!1871 = !DILocation(line: 0, scope: !1867)
!1872 = !DILocation(line: 209, column: 22, scope: !1867)
!1873 = !DILocation(line: 209, column: 39, scope: !1867)
!1874 = !DILocation(line: 209, column: 38, scope: !1867)
!1875 = !DILocation(line: 209, column: 37, scope: !1867)
!1876 = !DILocation(line: 209, column: 10, scope: !1867)
!1877 = !DILocation(line: 209, column: 3, scope: !1867)
!1878 = distinct !DISubprogram(name: "toupper", scope: !1868, file: !1868, line: 213, type: !1813, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1879)
!1879 = !{!1880}
!1880 = !DILocalVariable(name: "__c", arg: 1, scope: !1878, file: !1868, line: 213, type: !539)
!1881 = !DILocation(line: 0, scope: !1878)
!1882 = !DILocation(line: 215, column: 22, scope: !1878)
!1883 = !DILocation(line: 215, column: 39, scope: !1878)
!1884 = !DILocation(line: 215, column: 38, scope: !1878)
!1885 = !DILocation(line: 215, column: 37, scope: !1878)
!1886 = !DILocation(line: 215, column: 10, scope: !1878)
!1887 = !DILocation(line: 215, column: 3, scope: !1878)
!1888 = distinct !DISubprogram(name: "atoi", scope: !1889, file: !1889, line: 361, type: !1890, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1892)
!1889 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!539, !544}
!1892 = !{!1893}
!1893 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1888, file: !1889, line: 361, type: !544)
!1894 = !DILocation(line: 0, scope: !1888)
!1895 = !DILocation(line: 363, column: 16, scope: !1888)
!1896 = !DILocation(line: 363, column: 10, scope: !1888)
!1897 = !DILocation(line: 363, column: 3, scope: !1888)
!1898 = distinct !DISubprogram(name: "atol", scope: !1889, file: !1889, line: 366, type: !1899, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1901)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!635, !544}
!1901 = !{!1902}
!1902 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1898, file: !1889, line: 366, type: !544)
!1903 = !DILocation(line: 0, scope: !1898)
!1904 = !DILocation(line: 368, column: 10, scope: !1898)
!1905 = !DILocation(line: 368, column: 3, scope: !1898)
!1906 = distinct !DISubprogram(name: "atoll", scope: !1889, file: !1889, line: 373, type: !1907, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1910)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!1909, !544}
!1909 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1910 = !{!1911}
!1911 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1906, file: !1889, line: 373, type: !544)
!1912 = !DILocation(line: 0, scope: !1906)
!1913 = !DILocation(line: 375, column: 10, scope: !1906)
!1914 = !DILocation(line: 375, column: 3, scope: !1906)
!1915 = distinct !DISubprogram(name: "bsearch", scope: !1916, file: !1916, line: 20, type: !1917, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1920)
!1916 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!543, !1005, !1005, !546, !546, !1919}
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1889, line: 808, baseType: !1009)
!1920 = !{!1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930}
!1921 = !DILocalVariable(name: "__key", arg: 1, scope: !1915, file: !1916, line: 20, type: !1005)
!1922 = !DILocalVariable(name: "__base", arg: 2, scope: !1915, file: !1916, line: 20, type: !1005)
!1923 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1915, file: !1916, line: 20, type: !546)
!1924 = !DILocalVariable(name: "__size", arg: 4, scope: !1915, file: !1916, line: 20, type: !546)
!1925 = !DILocalVariable(name: "__compar", arg: 5, scope: !1915, file: !1916, line: 21, type: !1919)
!1926 = !DILocalVariable(name: "__l", scope: !1915, file: !1916, line: 23, type: !546)
!1927 = !DILocalVariable(name: "__u", scope: !1915, file: !1916, line: 23, type: !546)
!1928 = !DILocalVariable(name: "__idx", scope: !1915, file: !1916, line: 23, type: !546)
!1929 = !DILocalVariable(name: "__p", scope: !1915, file: !1916, line: 24, type: !1005)
!1930 = !DILocalVariable(name: "__comparison", scope: !1915, file: !1916, line: 25, type: !539)
!1931 = !DILocation(line: 0, scope: !1915)
!1932 = !DILocation(line: 29, column: 3, scope: !1915)
!1933 = !DILocation(line: 27, column: 7, scope: !1915)
!1934 = !DILocation(line: 29, column: 14, scope: !1915)
!1935 = !DILocation(line: 31, column: 20, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1915, file: !1916, line: 30, column: 5)
!1937 = !DILocation(line: 31, column: 27, scope: !1936)
!1938 = !DILocation(line: 32, column: 56, scope: !1936)
!1939 = !DILocation(line: 32, column: 47, scope: !1936)
!1940 = !DILocation(line: 33, column: 22, scope: !1936)
!1941 = !DILocation(line: 34, column: 24, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1936, file: !1916, line: 34, column: 11)
!1943 = !DILocation(line: 34, column: 11, scope: !1936)
!1944 = !DILocation(line: 36, column: 29, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1942, file: !1916, line: 36, column: 16)
!1946 = !DILocation(line: 36, column: 16, scope: !1942)
!1947 = !DILocation(line: 37, column: 14, scope: !1945)
!1948 = distinct !{!1948, !1932, !1949}
!1949 = !DILocation(line: 40, column: 5, scope: !1915)
!1950 = !DILocation(line: 43, column: 1, scope: !1915)
!1951 = distinct !DISubprogram(name: "atof", scope: !1952, file: !1952, line: 25, type: !1953, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1956)
!1952 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!1955, !544}
!1955 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1956 = !{!1957}
!1957 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1951, file: !1952, line: 25, type: !544)
!1958 = !DILocation(line: 0, scope: !1951)
!1959 = !DILocation(line: 27, column: 10, scope: !1951)
!1960 = !DILocation(line: 27, column: 3, scope: !1951)
!1961 = distinct !DISubprogram(name: "strtoimax", scope: !1962, file: !1962, line: 324, type: !1963, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1969)
!1962 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!1965, !1722, !1968, !539}
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1966, line: 101, baseType: !1967)
!1966 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1774, line: 72, baseType: !635)
!1968 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !540)
!1969 = !{!1970, !1971, !1972}
!1970 = !DILocalVariable(name: "nptr", arg: 1, scope: !1961, file: !1962, line: 324, type: !1722)
!1971 = !DILocalVariable(name: "endptr", arg: 2, scope: !1961, file: !1962, line: 324, type: !1968)
!1972 = !DILocalVariable(name: "base", arg: 3, scope: !1961, file: !1962, line: 324, type: !539)
!1973 = !DILocation(line: 0, scope: !1961)
!1974 = !DILocation(line: 327, column: 10, scope: !1961)
!1975 = !DILocation(line: 327, column: 3, scope: !1961)
!1976 = distinct !DISubprogram(name: "strtoumax", scope: !1962, file: !1962, line: 336, type: !1977, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1981)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!1979, !1722, !1968, !539}
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1966, line: 102, baseType: !1980)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1774, line: 73, baseType: !548)
!1981 = !{!1982, !1983, !1984}
!1982 = !DILocalVariable(name: "nptr", arg: 1, scope: !1976, file: !1962, line: 336, type: !1722)
!1983 = !DILocalVariable(name: "endptr", arg: 2, scope: !1976, file: !1962, line: 336, type: !1968)
!1984 = !DILocalVariable(name: "base", arg: 3, scope: !1976, file: !1962, line: 336, type: !539)
!1985 = !DILocation(line: 0, scope: !1976)
!1986 = !DILocation(line: 339, column: 10, scope: !1976)
!1987 = !DILocation(line: 339, column: 3, scope: !1976)
!1988 = distinct !DISubprogram(name: "wcstoimax", scope: !1962, file: !1962, line: 348, type: !1989, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1998)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!1965, !1991, !1995, !539}
!1991 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1992)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1994)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1962, line: 34, baseType: !539)
!1995 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1996)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1998 = !{!1999, !2000, !2001}
!1999 = !DILocalVariable(name: "nptr", arg: 1, scope: !1988, file: !1962, line: 348, type: !1991)
!2000 = !DILocalVariable(name: "endptr", arg: 2, scope: !1988, file: !1962, line: 348, type: !1995)
!2001 = !DILocalVariable(name: "base", arg: 3, scope: !1988, file: !1962, line: 348, type: !539)
!2002 = !DILocation(line: 0, scope: !1988)
!2003 = !DILocation(line: 351, column: 10, scope: !1988)
!2004 = !DILocation(line: 351, column: 3, scope: !1988)
!2005 = distinct !DISubprogram(name: "wcstoumax", scope: !1962, file: !1962, line: 362, type: !2006, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2008)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!1979, !1991, !1995, !539}
!2008 = !{!2009, !2010, !2011}
!2009 = !DILocalVariable(name: "nptr", arg: 1, scope: !2005, file: !1962, line: 362, type: !1991)
!2010 = !DILocalVariable(name: "endptr", arg: 2, scope: !2005, file: !1962, line: 362, type: !1995)
!2011 = !DILocalVariable(name: "base", arg: 3, scope: !2005, file: !1962, line: 362, type: !539)
!2012 = !DILocation(line: 0, scope: !2005)
!2013 = !DILocation(line: 365, column: 10, scope: !2005)
!2014 = !DILocation(line: 365, column: 3, scope: !2005)
!2015 = distinct !DISubprogram(name: "stat", scope: !2016, file: !2016, line: 453, type: !2017, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2054)
!2016 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!539, !544, !2019}
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2021, line: 46, size: 1152, elements: !2022)
!2021 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2022 = !{!2023, !2025, !2027, !2029, !2031, !2033, !2035, !2036, !2037, !2038, !2040, !2042, !2050, !2051, !2052}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2020, file: !2021, line: 48, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1774, line: 145, baseType: !548)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2020, file: !2021, line: 53, baseType: !2026, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1774, line: 148, baseType: !548)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2020, file: !2021, line: 61, baseType: !2028, size: 64, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1774, line: 151, baseType: !548)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2020, file: !2021, line: 62, baseType: !2030, size: 32, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1774, line: 150, baseType: !5)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2020, file: !2021, line: 64, baseType: !2032, size: 32, offset: 224)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1774, line: 146, baseType: !5)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2020, file: !2021, line: 65, baseType: !2034, size: 32, offset: 256)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1774, line: 147, baseType: !5)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2020, file: !2021, line: 67, baseType: !539, size: 32, offset: 288)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2020, file: !2021, line: 69, baseType: !2024, size: 64, offset: 320)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2020, file: !2021, line: 74, baseType: !1773, size: 64, offset: 384)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2020, file: !2021, line: 78, baseType: !2039, size: 64, offset: 448)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1774, line: 174, baseType: !635)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2020, file: !2021, line: 80, baseType: !2041, size: 64, offset: 512)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1774, line: 179, baseType: !635)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2020, file: !2021, line: 91, baseType: !2043, size: 128, offset: 576)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2044, line: 10, size: 128, elements: !2045)
!2044 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2045 = !{!2046, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2043, file: !2044, line: 12, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1774, line: 160, baseType: !635)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2043, file: !2044, line: 16, baseType: !2049, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1774, line: 196, baseType: !635)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2020, file: !2021, line: 92, baseType: !2043, size: 128, offset: 704)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2020, file: !2021, line: 93, baseType: !2043, size: 128, offset: 832)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2020, file: !2021, line: 106, baseType: !2053, size: 192, offset: 960)
!2053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2049, size: 192, elements: !735)
!2054 = !{!2055, !2056}
!2055 = !DILocalVariable(name: "__path", arg: 1, scope: !2015, file: !2016, line: 453, type: !544)
!2056 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2015, file: !2016, line: 453, type: !2019)
!2057 = !DILocation(line: 0, scope: !2015)
!2058 = !DILocation(line: 455, column: 10, scope: !2015)
!2059 = !DILocation(line: 455, column: 3, scope: !2015)
!2060 = distinct !DISubprogram(name: "lstat", scope: !2016, file: !2016, line: 460, type: !2017, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2061)
!2061 = !{!2062, !2063}
!2062 = !DILocalVariable(name: "__path", arg: 1, scope: !2060, file: !2016, line: 460, type: !544)
!2063 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2060, file: !2016, line: 460, type: !2019)
!2064 = !DILocation(line: 0, scope: !2060)
!2065 = !DILocation(line: 462, column: 10, scope: !2060)
!2066 = !DILocation(line: 462, column: 3, scope: !2060)
!2067 = distinct !DISubprogram(name: "fstat", scope: !2016, file: !2016, line: 467, type: !2068, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2070)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!539, !539, !2019}
!2070 = !{!2071, !2072}
!2071 = !DILocalVariable(name: "__fd", arg: 1, scope: !2067, file: !2016, line: 467, type: !539)
!2072 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2067, file: !2016, line: 467, type: !2019)
!2073 = !DILocation(line: 0, scope: !2067)
!2074 = !DILocation(line: 469, column: 10, scope: !2067)
!2075 = !DILocation(line: 469, column: 3, scope: !2067)
!2076 = distinct !DISubprogram(name: "fstatat", scope: !2016, file: !2016, line: 474, type: !2077, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2079)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!539, !539, !544, !2019, !539}
!2079 = !{!2080, !2081, !2082, !2083}
!2080 = !DILocalVariable(name: "__fd", arg: 1, scope: !2076, file: !2016, line: 474, type: !539)
!2081 = !DILocalVariable(name: "__filename", arg: 2, scope: !2076, file: !2016, line: 474, type: !544)
!2082 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2076, file: !2016, line: 474, type: !2019)
!2083 = !DILocalVariable(name: "__flag", arg: 4, scope: !2076, file: !2016, line: 474, type: !539)
!2084 = !DILocation(line: 0, scope: !2076)
!2085 = !DILocation(line: 477, column: 10, scope: !2076)
!2086 = !DILocation(line: 477, column: 3, scope: !2076)
!2087 = distinct !DISubprogram(name: "mknod", scope: !2016, file: !2016, line: 483, type: !2088, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2090)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!539, !544, !2030, !2024}
!2090 = !{!2091, !2092, !2093}
!2091 = !DILocalVariable(name: "__path", arg: 1, scope: !2087, file: !2016, line: 483, type: !544)
!2092 = !DILocalVariable(name: "__mode", arg: 2, scope: !2087, file: !2016, line: 483, type: !2030)
!2093 = !DILocalVariable(name: "__dev", arg: 3, scope: !2087, file: !2016, line: 483, type: !2024)
!2094 = !DILocation(line: 0, scope: !2087)
!2095 = !DILocation(line: 485, column: 10, scope: !2087)
!2096 = !DILocation(line: 485, column: 3, scope: !2087)
!2097 = distinct !DISubprogram(name: "mknodat", scope: !2016, file: !2016, line: 491, type: !2098, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!539, !539, !544, !2030, !2024}
!2100 = !{!2101, !2102, !2103, !2104}
!2101 = !DILocalVariable(name: "__fd", arg: 1, scope: !2097, file: !2016, line: 491, type: !539)
!2102 = !DILocalVariable(name: "__path", arg: 2, scope: !2097, file: !2016, line: 491, type: !544)
!2103 = !DILocalVariable(name: "__mode", arg: 3, scope: !2097, file: !2016, line: 491, type: !2030)
!2104 = !DILocalVariable(name: "__dev", arg: 4, scope: !2097, file: !2016, line: 491, type: !2024)
!2105 = !DILocation(line: 0, scope: !2097)
!2106 = !DILocation(line: 494, column: 10, scope: !2097)
!2107 = !DILocation(line: 494, column: 3, scope: !2097)
!2108 = distinct !DISubprogram(name: "stat64", scope: !2016, file: !2016, line: 502, type: !2109, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2131)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!539, !544, !2111}
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2021, line: 119, size: 1152, elements: !2113)
!2113 = !{!2114, !2115, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2127, !2128, !2129, !2130}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2112, file: !2021, line: 121, baseType: !2024, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2112, file: !2021, line: 123, baseType: !2116, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1774, line: 149, baseType: !548)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2112, file: !2021, line: 124, baseType: !2028, size: 64, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2112, file: !2021, line: 125, baseType: !2030, size: 32, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2112, file: !2021, line: 132, baseType: !2032, size: 32, offset: 224)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2112, file: !2021, line: 133, baseType: !2034, size: 32, offset: 256)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2112, file: !2021, line: 135, baseType: !539, size: 32, offset: 288)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2112, file: !2021, line: 136, baseType: !2024, size: 64, offset: 320)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2112, file: !2021, line: 137, baseType: !1773, size: 64, offset: 384)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2112, file: !2021, line: 143, baseType: !2039, size: 64, offset: 448)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2112, file: !2021, line: 144, baseType: !2126, size: 64, offset: 512)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1774, line: 180, baseType: !635)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2112, file: !2021, line: 152, baseType: !2043, size: 128, offset: 576)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2112, file: !2021, line: 153, baseType: !2043, size: 128, offset: 704)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2112, file: !2021, line: 154, baseType: !2043, size: 128, offset: 832)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2112, file: !2021, line: 164, baseType: !2053, size: 192, offset: 960)
!2131 = !{!2132, !2133}
!2132 = !DILocalVariable(name: "__path", arg: 1, scope: !2108, file: !2016, line: 502, type: !544)
!2133 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2108, file: !2016, line: 502, type: !2111)
!2134 = !DILocation(line: 0, scope: !2108)
!2135 = !DILocation(line: 504, column: 10, scope: !2108)
!2136 = !DILocation(line: 504, column: 3, scope: !2108)
!2137 = distinct !DISubprogram(name: "lstat64", scope: !2016, file: !2016, line: 509, type: !2109, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2138)
!2138 = !{!2139, !2140}
!2139 = !DILocalVariable(name: "__path", arg: 1, scope: !2137, file: !2016, line: 509, type: !544)
!2140 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2137, file: !2016, line: 509, type: !2111)
!2141 = !DILocation(line: 0, scope: !2137)
!2142 = !DILocation(line: 511, column: 10, scope: !2137)
!2143 = !DILocation(line: 511, column: 3, scope: !2137)
!2144 = distinct !DISubprogram(name: "fstat64", scope: !2016, file: !2016, line: 516, type: !2145, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!539, !539, !2111}
!2147 = !{!2148, !2149}
!2148 = !DILocalVariable(name: "__fd", arg: 1, scope: !2144, file: !2016, line: 516, type: !539)
!2149 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2144, file: !2016, line: 516, type: !2111)
!2150 = !DILocation(line: 0, scope: !2144)
!2151 = !DILocation(line: 518, column: 10, scope: !2144)
!2152 = !DILocation(line: 518, column: 3, scope: !2144)
!2153 = distinct !DISubprogram(name: "fstatat64", scope: !2016, file: !2016, line: 523, type: !2154, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2156)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!539, !539, !544, !2111, !539}
!2156 = !{!2157, !2158, !2159, !2160}
!2157 = !DILocalVariable(name: "__fd", arg: 1, scope: !2153, file: !2016, line: 523, type: !539)
!2158 = !DILocalVariable(name: "__filename", arg: 2, scope: !2153, file: !2016, line: 523, type: !544)
!2159 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2153, file: !2016, line: 523, type: !2111)
!2160 = !DILocalVariable(name: "__flag", arg: 4, scope: !2153, file: !2016, line: 523, type: !539)
!2161 = !DILocation(line: 0, scope: !2153)
!2162 = !DILocation(line: 526, column: 10, scope: !2153)
!2163 = !DILocation(line: 526, column: 3, scope: !2153)
!2164 = distinct !DISubprogram(name: "inside_basic_block_p", scope: !1, file: !1, line: 49, type: !2165, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2170)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!538, !2167}
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !550, line: 51, baseType: !2168)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!2170 = !{!2171}
!2171 = !DILocalVariable(name: "insn", arg: 1, scope: !2164, file: !1, line: 49, type: !2167)
!2172 = !DILocation(line: 0, scope: !2164)
!2173 = !DILocation(line: 51, column: 11, scope: !2164)
!2174 = !DILocation(line: 51, column: 3, scope: !2164)
!2175 = !DILocation(line: 55, column: 15, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2164, file: !1, line: 52, column: 5)
!2177 = !DILocation(line: 55, column: 32, scope: !2176)
!2178 = !DILocation(line: 56, column: 8, scope: !2176)
!2179 = !DILocation(line: 56, column: 12, scope: !2176)
!2180 = !DILocation(line: 57, column: 8, scope: !2176)
!2181 = !DILocation(line: 57, column: 12, scope: !2176)
!2182 = !DILocation(line: 57, column: 50, scope: !2176)
!2183 = !DILocation(line: 58, column: 5, scope: !2176)
!2184 = !DILocation(line: 58, column: 46, scope: !2176)
!2185 = !DILocation(line: 55, column: 7, scope: !2176)
!2186 = !DILocation(line: 61, column: 15, scope: !2176)
!2187 = !DILocation(line: 61, column: 41, scope: !2176)
!2188 = !DILocation(line: 62, column: 8, scope: !2176)
!2189 = !DILocation(line: 62, column: 37, scope: !2176)
!2190 = !DILocation(line: 61, column: 7, scope: !2176)
!2191 = !DILocation(line: 71, column: 7, scope: !2176)
!2192 = !DILocation(line: 74, column: 7, scope: !2176)
!2193 = !DILocation(line: 77, column: 5, scope: !2164)
!2194 = !DILocation(line: 79, column: 1, scope: !2164)
!2195 = distinct !DISubprogram(name: "control_flow_insn_p", scope: !1, file: !1, line: 85, type: !2165, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2196)
!2196 = !{!2197}
!2197 = !DILocalVariable(name: "insn", arg: 1, scope: !2195, file: !1, line: 85, type: !2167)
!2198 = !DILocation(line: 0, scope: !2195)
!2199 = !DILocation(line: 87, column: 11, scope: !2195)
!2200 = !DILocation(line: 87, column: 3, scope: !2195)
!2201 = !DILocation(line: 96, column: 15, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2195, file: !1, line: 88, column: 5)
!2203 = !DILocation(line: 96, column: 41, scope: !2202)
!2204 = !DILocation(line: 97, column: 8, scope: !2202)
!2205 = !DILocation(line: 97, column: 37, scope: !2202)
!2206 = !DILocation(line: 96, column: 7, scope: !2202)
!2207 = !DILocation(line: 102, column: 12, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2202, file: !1, line: 102, column: 11)
!2209 = !DILocation(line: 103, column: 5, scope: !2208)
!2210 = !DILocation(line: 103, column: 8, scope: !2208)
!2211 = !DILocation(line: 104, column: 4, scope: !2208)
!2212 = !DILocation(line: 104, column: 7, scope: !2208)
!2213 = !DILocation(line: 104, column: 33, scope: !2208)
!2214 = !DILocation(line: 102, column: 11, scope: !2202)
!2215 = !DILocation(line: 108, column: 11, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2202, file: !1, line: 108, column: 11)
!2217 = !DILocation(line: 108, column: 11, scope: !2202)
!2218 = !DILocation(line: 114, column: 11, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2202, file: !1, line: 114, column: 11)
!2220 = !DILocation(line: 114, column: 37, scope: !2219)
!2221 = !DILocation(line: 115, column: 4, scope: !2219)
!2222 = !DILocation(line: 115, column: 7, scope: !2219)
!2223 = !DILocation(line: 115, column: 35, scope: !2219)
!2224 = !DILocation(line: 115, column: 32, scope: !2219)
!2225 = !DILocation(line: 114, column: 11, scope: !2202)
!2226 = !DILocation(line: 117, column: 12, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2202, file: !1, line: 117, column: 11)
!2228 = !DILocation(line: 117, column: 11, scope: !2202)
!2229 = !DILocation(line: 128, column: 7, scope: !2202)
!2230 = !DILocation(line: 129, column: 5, scope: !2202)
!2231 = !DILocation(line: 131, column: 10, scope: !2195)
!2232 = !DILocation(line: 131, column: 3, scope: !2195)
!2233 = !DILocation(line: 132, column: 1, scope: !2195)
!2234 = distinct !DISubprogram(name: "rtl_make_eh_edge", scope: !1, file: !1, line: 159, type: !2235, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2247)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{null, !2237, !1080, !549}
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !2238, line: 45, baseType: !2239)
!2238 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !2238, line: 39, size: 192, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2245}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !2240, file: !2238, line: 41, baseType: !537, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !2240, file: !2238, line: 42, baseType: !5, size: 32, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2240, file: !2238, line: 43, baseType: !5, size: 32, offset: 96)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !2240, file: !2238, line: 44, baseType: !2246, size: 64, offset: 128)
!2246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 64, elements: !584)
!2247 = !{!2248, !2249, !2250, !2251, !2252}
!2248 = !DILocalVariable(name: "edge_cache", arg: 1, scope: !2234, file: !1, line: 159, type: !2237)
!2249 = !DILocalVariable(name: "src", arg: 2, scope: !2234, file: !1, line: 159, type: !1080)
!2250 = !DILocalVariable(name: "insn", arg: 3, scope: !2234, file: !1, line: 159, type: !549)
!2251 = !DILocalVariable(name: "lp", scope: !2234, file: !1, line: 161, type: !992)
!2252 = !DILocalVariable(name: "label", scope: !2253, file: !1, line: 165, type: !549)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !1, line: 164, column: 5)
!2254 = distinct !DILexicalBlock(scope: !2234, file: !1, line: 163, column: 7)
!2255 = !DILocation(line: 0, scope: !2234)
!2256 = !DILocation(line: 161, column: 23, scope: !2234)
!2257 = !DILocation(line: 163, column: 7, scope: !2254)
!2258 = !DILocation(line: 163, column: 7, scope: !2234)
!2259 = !DILocation(line: 165, column: 23, scope: !2253)
!2260 = !DILocation(line: 0, scope: !2253)
!2261 = !DILocation(line: 168, column: 17, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2253, file: !1, line: 168, column: 11)
!2263 = !DILocation(line: 168, column: 11, scope: !2253)
!2264 = !DILocation(line: 170, column: 4, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2262, file: !1, line: 169, column: 2)
!2266 = !DILocation(line: 171, column: 27, scope: !2265)
!2267 = !DILocation(line: 171, column: 12, scope: !2265)
!2268 = !DILocation(line: 172, column: 2, scope: !2265)
!2269 = !DILocation(line: 176, column: 13, scope: !2253)
!2270 = !DILocation(line: 176, column: 10, scope: !2253)
!2271 = !DILocation(line: 174, column: 7, scope: !2253)
!2272 = !DILocation(line: 177, column: 5, scope: !2253)
!2273 = !DILocation(line: 178, column: 1, scope: !2234)
!2274 = distinct !DISubprogram(name: "make_label_edge", scope: !1, file: !1, line: 141, type: !2275, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{null, !2237, !1080, !549, !539}
!2277 = !{!2278, !2279, !2280, !2281}
!2278 = !DILocalVariable(name: "edge_cache", arg: 1, scope: !2274, file: !1, line: 141, type: !2237)
!2279 = !DILocalVariable(name: "src", arg: 2, scope: !2274, file: !1, line: 141, type: !1080)
!2280 = !DILocalVariable(name: "label", arg: 3, scope: !2274, file: !1, line: 141, type: !549)
!2281 = !DILocalVariable(name: "flags", arg: 4, scope: !2274, file: !1, line: 141, type: !539)
!2282 = !DILocation(line: 0, scope: !2274)
!2283 = !DILocation(line: 143, column: 3, scope: !2274)
!2284 = !DILocation(line: 150, column: 7, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2274, file: !1, line: 150, column: 7)
!2286 = !DILocation(line: 150, column: 24, scope: !2285)
!2287 = !DILocation(line: 150, column: 7, scope: !2274)
!2288 = !DILocation(line: 153, column: 38, scope: !2274)
!2289 = !DILocation(line: 153, column: 3, scope: !2274)
!2290 = !DILocation(line: 154, column: 1, scope: !2274)
!2291 = distinct !DISubprogram(name: "find_many_sub_basic_blocks", scope: !1, file: !1, line: 574, type: !2292, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2294)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{null, !2237}
!2294 = !{!2295, !2296, !2297, !2298, !2299, !2304}
!2295 = !DILocalVariable(name: "blocks", arg: 1, scope: !2291, file: !1, line: 574, type: !2237)
!2296 = !DILocalVariable(name: "bb", scope: !2291, file: !1, line: 576, type: !1080)
!2297 = !DILocalVariable(name: "min", scope: !2291, file: !1, line: 576, type: !1080)
!2298 = !DILocalVariable(name: "max", scope: !2291, file: !1, line: 576, type: !1080)
!2299 = !DILocalVariable(name: "e", scope: !2300, file: !1, line: 604, type: !1097)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !1, line: 603, column: 7)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !1, line: 602, column: 5)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 602, column: 5)
!2303 = distinct !DILexicalBlock(scope: !2291, file: !1, line: 601, column: 7)
!2304 = !DILocalVariable(name: "ei", scope: !2300, file: !1, line: 605, type: !2305)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !140, line: 682, baseType: !2306)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 679, size: 128, elements: !2307)
!2307 = !{!2308, !2309}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2306, file: !140, line: 680, baseType: !5, size: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2306, file: !140, line: 681, baseType: !2310, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!2311 = !DILocation(line: 0, scope: !2291)
!2312 = !DILocation(line: 578, column: 3, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2291, file: !1, line: 578, column: 3)
!2314 = !DILocation(line: 578, column: 3, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2313, file: !1, line: 578, column: 3)
!2316 = !DILocation(line: 0, scope: !2313)
!2317 = !DILocation(line: 579, column: 5, scope: !2315)
!2318 = distinct !{!2318, !2312, !2319}
!2319 = !DILocation(line: 579, column: 5, scope: !2313)
!2320 = !DILocation(line: 582, column: 3, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2291, file: !1, line: 582, column: 3)
!2322 = !DILocation(line: 582, column: 3, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2321, file: !1, line: 582, column: 3)
!2324 = !DILocation(line: 0, scope: !2321)
!2325 = !DILocation(line: 583, column: 9, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2323, file: !1, line: 583, column: 9)
!2327 = !DILocation(line: 583, column: 20, scope: !2326)
!2328 = !DILocation(line: 583, column: 9, scope: !2323)
!2329 = !DILocation(line: 584, column: 7, scope: !2326)
!2330 = !DILocation(line: 0, scope: !2323)
!2331 = distinct !{!2331, !2320, !2332}
!2332 = !DILocation(line: 584, column: 29, scope: !2321)
!2333 = !DILocation(line: 586, column: 3, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2291, file: !1, line: 586, column: 3)
!2335 = !DILocation(line: 0, scope: !2334)
!2336 = !DILocation(line: 586, column: 3, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2334, file: !1, line: 586, column: 3)
!2338 = !DILocation(line: 587, column: 9, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2337, file: !1, line: 587, column: 9)
!2340 = !DILocation(line: 587, column: 20, scope: !2339)
!2341 = !DILocation(line: 587, column: 9, scope: !2337)
!2342 = distinct !{!2342, !2333, !2343}
!2343 = !DILocation(line: 588, column: 7, scope: !2334)
!2344 = !DILocation(line: 591, column: 3, scope: !2291)
!2345 = !DILocation(line: 591, column: 13, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !1, line: 591, column: 3)
!2347 = distinct !DILexicalBlock(scope: !2291, file: !1, line: 591, column: 3)
!2348 = !DILocation(line: 591, column: 3, scope: !2347)
!2349 = !DILocation(line: 592, column: 9, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2346, file: !1, line: 592, column: 9)
!2351 = !DILocation(line: 592, column: 20, scope: !2350)
!2352 = !DILocation(line: 592, column: 9, scope: !2346)
!2353 = !DILocation(line: 591, column: 41, scope: !2346)
!2354 = !DILocation(line: 591, column: 3, scope: !2346)
!2355 = distinct !{!2355, !2348, !2356}
!2356 = !DILocation(line: 593, column: 13, scope: !2347)
!2357 = !DILocation(line: 597, column: 3, scope: !2291)
!2358 = !DILocation(line: 601, column: 7, scope: !2303)
!2359 = !DILocation(line: 601, column: 22, scope: !2303)
!2360 = !DILocation(line: 601, column: 7, scope: !2291)
!2361 = !DILocation(line: 0, scope: !2301)
!2362 = !DILocation(line: 0, scope: !2300)
!2363 = !DILocation(line: 0, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !1, line: 613, column: 6)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !1, line: 610, column: 4)
!2366 = distinct !DILexicalBlock(scope: !2300, file: !1, line: 609, column: 6)
!2367 = !DILocation(line: 0, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2364, file: !1, line: 613, column: 6)
!2369 = !DILocation(line: 602, column: 5, scope: !2302)
!2370 = !DILocation(line: 0, scope: !2302)
!2371 = !DILocation(line: 602, column: 5, scope: !2301)
!2372 = !DILocation(line: 604, column: 2, scope: !2300)
!2373 = !DILocation(line: 605, column: 2, scope: !2300)
!2374 = !DILocation(line: 607, column: 6, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2300, file: !1, line: 607, column: 6)
!2376 = !DILocation(line: 607, column: 17, scope: !2375)
!2377 = !DILocation(line: 607, column: 6, scope: !2300)
!2378 = !DILocation(line: 609, column: 17, scope: !2366)
!2379 = !DILocation(line: 609, column: 6, scope: !2300)
!2380 = !DILocation(line: 611, column: 10, scope: !2365)
!2381 = !DILocation(line: 611, column: 16, scope: !2365)
!2382 = !DILocation(line: 612, column: 10, scope: !2365)
!2383 = !DILocation(line: 612, column: 20, scope: !2365)
!2384 = !DILocation(line: 613, column: 6, scope: !2364)
!2385 = !DILocation(line: 613, column: 6, scope: !2368)
!2386 = !DILocation(line: 615, column: 16, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2368, file: !1, line: 614, column: 8)
!2388 = !DILocation(line: 615, column: 19, scope: !2387)
!2389 = !DILocation(line: 615, column: 13, scope: !2387)
!2390 = !DILocation(line: 616, column: 20, scope: !2387)
!2391 = !DILocation(line: 616, column: 17, scope: !2387)
!2392 = distinct !{!2392, !2384, !2393}
!2393 = !DILocation(line: 617, column: 8, scope: !2364)
!2394 = !DILocation(line: 620, column: 2, scope: !2300)
!2395 = !DILocation(line: 621, column: 7, scope: !2301)
!2396 = distinct !{!2396, !2369, !2397}
!2397 = !DILocation(line: 621, column: 7, scope: !2302)
!2398 = !DILocation(line: 623, column: 3, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2291, file: !1, line: 623, column: 3)
!2400 = !DILocation(line: 0, scope: !2399)
!2401 = !DILocation(line: 623, column: 3, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2399, file: !1, line: 623, column: 3)
!2403 = !DILocation(line: 624, column: 5, scope: !2402)
!2404 = distinct !{!2404, !2398, !2405}
!2405 = !DILocation(line: 624, column: 5, scope: !2399)
!2406 = !DILocation(line: 625, column: 1, scope: !2291)
!2407 = distinct !DISubprogram(name: "find_bb_boundaries", scope: !1, file: !1, line: 439, type: !2408, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !1080}
!2410 = !{!2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419}
!2411 = !DILocalVariable(name: "bb", arg: 1, scope: !2407, file: !1, line: 439, type: !1080)
!2412 = !DILocalVariable(name: "orig_bb", scope: !2407, file: !1, line: 441, type: !1080)
!2413 = !DILocalVariable(name: "insn", scope: !2407, file: !1, line: 442, type: !549)
!2414 = !DILocalVariable(name: "end", scope: !2407, file: !1, line: 443, type: !549)
!2415 = !DILocalVariable(name: "x", scope: !2407, file: !1, line: 443, type: !549)
!2416 = !DILocalVariable(name: "table", scope: !2407, file: !1, line: 444, type: !549)
!2417 = !DILocalVariable(name: "flow_transfer_insn", scope: !2407, file: !1, line: 445, type: !549)
!2418 = !DILocalVariable(name: "fallthru", scope: !2407, file: !1, line: 446, type: !1097)
!2419 = !DILocalVariable(name: "code", scope: !2420, file: !1, line: 457, type: !382)
!2420 = distinct !DILexicalBlock(scope: !2407, file: !1, line: 456, column: 5)
!2421 = !DILocation(line: 0, scope: !2407)
!2422 = !DILocation(line: 442, column: 14, scope: !2407)
!2423 = !DILocation(line: 443, column: 13, scope: !2407)
!2424 = !DILocation(line: 444, column: 3, scope: !2407)
!2425 = !DILocation(line: 448, column: 12, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2407, file: !1, line: 448, column: 7)
!2427 = !DILocation(line: 448, column: 7, scope: !2407)
!2428 = !DILocation(line: 451, column: 7, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2407, file: !1, line: 451, column: 7)
!2430 = !DILocation(line: 451, column: 7, scope: !2407)
!2431 = !DILocation(line: 452, column: 12, scope: !2429)
!2432 = !DILocation(line: 452, column: 5, scope: !2429)
!2433 = !DILocation(line: 455, column: 3, scope: !2407)
!2434 = !DILocation(line: 452, column: 10, scope: !2429)
!2435 = !DILocation(line: 457, column: 28, scope: !2420)
!2436 = !DILocation(line: 0, scope: !2420)
!2437 = !DILocation(line: 461, column: 12, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2420, file: !1, line: 461, column: 11)
!2439 = !DILocation(line: 461, column: 39, scope: !2438)
!2440 = !DILocation(line: 461, column: 31, scope: !2438)
!2441 = !DILocation(line: 462, column: 7, scope: !2438)
!2442 = !DILocation(line: 461, column: 11, scope: !2420)
!2443 = !DILocation(line: 464, column: 32, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2438, file: !1, line: 463, column: 2)
!2445 = !DILocation(line: 464, column: 15, scope: !2444)
!2446 = !DILocation(line: 465, column: 8, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2444, file: !1, line: 465, column: 8)
!2448 = !DILocation(line: 465, column: 8, scope: !2444)
!2449 = !DILocation(line: 0, scope: !2444)
!2450 = !DILocation(line: 477, column: 19, scope: !2444)
!2451 = !DILocation(line: 467, column: 8, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2447, file: !1, line: 466, column: 6)
!2453 = !DILocation(line: 467, column: 20, scope: !2452)
!2454 = !DILocation(line: 0, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !1, line: 470, column: 8)
!2456 = distinct !DILexicalBlock(scope: !2452, file: !1, line: 470, column: 8)
!2457 = !DILocation(line: 470, column: 13, scope: !2456)
!2458 = !DILocation(line: 0, scope: !2456)
!2459 = !DILocation(line: 471, column: 11, scope: !2455)
!2460 = !DILocation(line: 471, column: 8, scope: !2455)
!2461 = !DILocation(line: 470, column: 8, scope: !2456)
!2462 = !DILocation(line: 473, column: 8, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2455, file: !1, line: 473, column: 7)
!2464 = !DILocation(line: 473, column: 7, scope: !2455)
!2465 = !DILocation(line: 474, column: 5, scope: !2463)
!2466 = !DILocation(line: 470, column: 8, scope: !2455)
!2467 = distinct !{!2467, !2461, !2468}
!2468 = !DILocation(line: 474, column: 5, scope: !2456)
!2469 = !DILocation(line: 478, column: 4, scope: !2444)
!2470 = !DILocation(line: 480, column: 27, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2444, file: !1, line: 480, column: 8)
!2472 = !DILocation(line: 480, column: 30, scope: !2471)
!2473 = !DILocation(line: 480, column: 8, scope: !2444)
!2474 = !DILocation(line: 481, column: 17, scope: !2471)
!2475 = !DILocation(line: 481, column: 6, scope: !2471)
!2476 = !DILocation(line: 483, column: 21, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2438, file: !1, line: 483, column: 16)
!2478 = !DILocation(line: 483, column: 16, scope: !2438)
!2479 = !DILocation(line: 489, column: 27, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !1, line: 488, column: 8)
!2481 = distinct !DILexicalBlock(scope: !2477, file: !1, line: 484, column: 2)
!2482 = !DILocation(line: 489, column: 6, scope: !2480)
!2483 = !DILocation(line: 492, column: 11, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2420, file: !1, line: 492, column: 11)
!2485 = !DILocation(line: 492, column: 11, scope: !2420)
!2486 = !DILocation(line: 494, column: 16, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2420, file: !1, line: 494, column: 11)
!2488 = !DILocation(line: 494, column: 11, scope: !2420)
!2489 = !DILocation(line: 496, column: 14, scope: !2420)
!2490 = !DILocation(line: 497, column: 5, scope: !2407)
!2491 = distinct !{!2491, !2433, !2490}
!2492 = !DILocation(line: 502, column: 7, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2407, file: !1, line: 502, column: 7)
!2494 = !DILocation(line: 502, column: 7, scope: !2407)
!2495 = !DILocation(line: 504, column: 7, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2493, file: !1, line: 503, column: 5)
!2497 = !DILocation(line: 504, column: 19, scope: !2496)
!2498 = !DILocation(line: 508, column: 7, scope: !2496)
!2499 = !DILocation(line: 0, scope: !2496)
!2500 = !DILocation(line: 508, column: 16, scope: !2496)
!2501 = !DILocation(line: 510, column: 8, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2496, file: !1, line: 509, column: 2)
!2503 = !DILocation(line: 511, column: 9, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 511, column: 8)
!2505 = !DILocation(line: 511, column: 8, scope: !2502)
!2506 = !DILocation(line: 512, column: 6, scope: !2504)
!2507 = distinct !{!2507, !2498, !2508}
!2508 = !DILocation(line: 513, column: 2, scope: !2496)
!2509 = !DILocation(line: 519, column: 3, scope: !2407)
!2510 = !DILocation(line: 523, column: 10, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2407, file: !1, line: 523, column: 7)
!2512 = !DILocation(line: 523, column: 21, scope: !2511)
!2513 = !DILocation(line: 523, column: 37, scope: !2511)
!2514 = !DILocation(line: 523, column: 24, scope: !2511)
!2515 = !DILocation(line: 523, column: 7, scope: !2407)
!2516 = !DILocation(line: 524, column: 37, scope: !2511)
!2517 = !DILocation(line: 524, column: 5, scope: !2511)
!2518 = !DILocation(line: 525, column: 1, scope: !2407)
!2519 = distinct !DISubprogram(name: "make_edges", scope: !1, file: !1, line: 213, type: !2520, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2522)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{null, !1080, !1080, !539}
!2522 = !{!2523, !2524, !2525, !2526, !2527, !2528, !2532, !2533, !2534, !2535, !2536, !2539, !2543, !2544, !2549}
!2523 = !DILocalVariable(name: "min", arg: 1, scope: !2519, file: !1, line: 213, type: !1080)
!2524 = !DILocalVariable(name: "max", arg: 2, scope: !2519, file: !1, line: 213, type: !1080)
!2525 = !DILocalVariable(name: "update_p", arg: 3, scope: !2519, file: !1, line: 213, type: !539)
!2526 = !DILocalVariable(name: "bb", scope: !2519, file: !1, line: 215, type: !1080)
!2527 = !DILocalVariable(name: "edge_cache", scope: !2519, file: !1, line: 216, type: !2237)
!2528 = !DILocalVariable(name: "insn", scope: !2529, file: !1, line: 231, type: !549)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !1, line: 230, column: 5)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !1, line: 229, column: 3)
!2531 = distinct !DILexicalBlock(scope: !2519, file: !1, line: 229, column: 3)
!2532 = !DILocalVariable(name: "x", scope: !2529, file: !1, line: 231, type: !549)
!2533 = !DILocalVariable(name: "code", scope: !2529, file: !1, line: 232, type: !382)
!2534 = !DILocalVariable(name: "e", scope: !2529, file: !1, line: 233, type: !1097)
!2535 = !DILocalVariable(name: "ei", scope: !2529, file: !1, line: 234, type: !2305)
!2536 = !DILocalVariable(name: "tmp", scope: !2537, file: !1, line: 264, type: !549)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !1, line: 263, column: 2)
!2538 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 262, column: 11)
!2539 = !DILocalVariable(name: "vec", scope: !2540, file: !1, line: 274, type: !577)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !1, line: 273, column: 6)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !1, line: 272, column: 13)
!2542 = distinct !DILexicalBlock(scope: !2537, file: !1, line: 268, column: 8)
!2543 = !DILocalVariable(name: "j", scope: !2540, file: !1, line: 275, type: !539)
!2544 = !DILocalVariable(name: "i", scope: !2545, file: !1, line: 312, type: !539)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !1, line: 311, column: 6)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !1, line: 310, column: 13)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !1, line: 306, column: 13)
!2548 = distinct !DILexicalBlock(scope: !2541, file: !1, line: 299, column: 13)
!2549 = !DILocalVariable(name: "n", scope: !2545, file: !1, line: 312, type: !539)
!2550 = !DILocation(line: 0, scope: !2519)
!2551 = !DILocation(line: 221, column: 7, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2519, file: !1, line: 221, column: 7)
!2553 = !DILocation(line: 221, column: 21, scope: !2552)
!2554 = !DILocation(line: 222, column: 33, scope: !2552)
!2555 = !DILocation(line: 0, scope: !2552)
!2556 = !DILocation(line: 221, column: 24, scope: !2552)
!2557 = !DILocation(line: 221, column: 30, scope: !2552)
!2558 = !DILocation(line: 221, column: 35, scope: !2552)
!2559 = !DILocation(line: 221, column: 54, scope: !2552)
!2560 = !DILocation(line: 221, column: 7, scope: !2519)
!2561 = !DILocation(line: 222, column: 18, scope: !2552)
!2562 = !DILocation(line: 226, column: 14, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2519, file: !1, line: 226, column: 7)
!2564 = !DILocation(line: 0, scope: !2563)
!2565 = !DILocation(line: 222, column: 5, scope: !2552)
!2566 = !DILocation(line: 226, column: 31, scope: !2563)
!2567 = !DILocation(line: 226, column: 11, scope: !2563)
!2568 = !DILocation(line: 226, column: 7, scope: !2519)
!2569 = !DILocation(line: 227, column: 5, scope: !2563)
!2570 = !DILocation(line: 0, scope: !2530)
!2571 = !DILocation(line: 0, scope: !2529)
!2572 = !DILocation(line: 0, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 240, column: 11)
!2574 = !DILocation(line: 0, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !1, line: 245, column: 8)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !1, line: 244, column: 6)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !1, line: 243, column: 8)
!2578 = distinct !DILexicalBlock(scope: !2573, file: !1, line: 241, column: 2)
!2579 = !DILocation(line: 0, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2575, file: !1, line: 245, column: 8)
!2581 = !DILocation(line: 0, scope: !2537)
!2582 = !DILocation(line: 229, column: 3, scope: !2531)
!2583 = !DILocation(line: 0, scope: !2531)
!2584 = !DILocation(line: 229, column: 3, scope: !2530)
!2585 = !DILocation(line: 233, column: 7, scope: !2529)
!2586 = !DILocation(line: 234, column: 7, scope: !2529)
!2587 = !DILocation(line: 236, column: 11, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 236, column: 11)
!2589 = !DILocation(line: 236, column: 22, scope: !2588)
!2590 = !DILocation(line: 236, column: 11, scope: !2529)
!2591 = !DILocation(line: 240, column: 11, scope: !2529)
!2592 = !DILocation(line: 242, column: 4, scope: !2578)
!2593 = !DILocation(line: 243, column: 8, scope: !2578)
!2594 = !DILocation(line: 245, column: 8, scope: !2575)
!2595 = !DILocation(line: 245, column: 8, scope: !2580)
!2596 = !DILocation(line: 246, column: 7, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2580, file: !1, line: 246, column: 7)
!2598 = !DILocation(line: 246, column: 10, scope: !2597)
!2599 = !DILocation(line: 246, column: 18, scope: !2597)
!2600 = !DILocation(line: 246, column: 15, scope: !2597)
!2601 = !DILocation(line: 246, column: 7, scope: !2580)
!2602 = !DILocation(line: 247, column: 35, scope: !2597)
!2603 = !DILocation(line: 247, column: 5, scope: !2597)
!2604 = distinct !{!2604, !2594, !2605}
!2605 = !DILocation(line: 247, column: 40, scope: !2575)
!2606 = !DILocation(line: 251, column: 11, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 251, column: 11)
!2608 = !DILocation(line: 252, column: 4, scope: !2607)
!2609 = !DILocation(line: 252, column: 7, scope: !2607)
!2610 = !DILocation(line: 251, column: 11, scope: !2529)
!2611 = !DILocation(line: 253, column: 26, scope: !2607)
!2612 = !DILocation(line: 253, column: 2, scope: !2607)
!2613 = !DILocation(line: 258, column: 14, scope: !2529)
!2614 = !DILocation(line: 259, column: 14, scope: !2529)
!2615 = !DILocation(line: 262, column: 11, scope: !2529)
!2616 = !DILocation(line: 264, column: 4, scope: !2537)
!2617 = !DILocation(line: 268, column: 8, scope: !2542)
!2618 = !DILocation(line: 268, column: 8, scope: !2537)
!2619 = !DILocation(line: 272, column: 13, scope: !2541)
!2620 = !DILocation(line: 272, column: 13, scope: !2542)
!2621 = !DILocation(line: 277, column: 12, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2540, file: !1, line: 277, column: 12)
!2623 = !DILocation(line: 277, column: 37, scope: !2622)
!2624 = !DILocation(line: 277, column: 12, scope: !2540)
!2625 = !DILocation(line: 278, column: 9, scope: !2622)
!2626 = !DILocation(line: 278, column: 3, scope: !2622)
!2627 = !DILocation(line: 280, column: 9, scope: !2622)
!2628 = !DILocation(line: 0, scope: !2622)
!2629 = !DILocation(line: 0, scope: !2540)
!2630 = !DILocation(line: 282, column: 17, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2540, file: !1, line: 282, column: 8)
!2632 = !DILocation(line: 282, column: 13, scope: !2631)
!2633 = !DILocation(line: 0, scope: !2631)
!2634 = !DILocation(line: 282, column: 43, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2631, file: !1, line: 282, column: 8)
!2636 = !DILocation(line: 282, column: 8, scope: !2631)
!2637 = !DILocation(line: 284, column: 6, scope: !2635)
!2638 = !DILocation(line: 283, column: 3, scope: !2635)
!2639 = !DILocation(line: 282, column: 8, scope: !2635)
!2640 = distinct !{!2640, !2636, !2641}
!2641 = !DILocation(line: 284, column: 37, scope: !2631)
!2642 = !DILocation(line: 289, column: 19, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2540, file: !1, line: 289, column: 12)
!2644 = !DILocation(line: 289, column: 17, scope: !2643)
!2645 = !DILocation(line: 289, column: 38, scope: !2643)
!2646 = !DILocation(line: 290, column: 5, scope: !2643)
!2647 = !DILocation(line: 290, column: 8, scope: !2643)
!2648 = !DILocation(line: 290, column: 26, scope: !2643)
!2649 = !DILocation(line: 290, column: 23, scope: !2643)
!2650 = !DILocation(line: 291, column: 5, scope: !2643)
!2651 = !DILocation(line: 291, column: 8, scope: !2643)
!2652 = !DILocation(line: 291, column: 33, scope: !2643)
!2653 = !DILocation(line: 292, column: 5, scope: !2643)
!2654 = !DILocation(line: 292, column: 8, scope: !2643)
!2655 = !DILocation(line: 292, column: 43, scope: !2643)
!2656 = !DILocation(line: 289, column: 12, scope: !2540)
!2657 = !DILocation(line: 294, column: 6, scope: !2643)
!2658 = !DILocation(line: 293, column: 3, scope: !2643)
!2659 = !DILocation(line: 299, column: 13, scope: !2548)
!2660 = !DILocation(line: 299, column: 13, scope: !2541)
!2661 = !DILocation(line: 301, column: 13, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !1, line: 301, column: 8)
!2663 = distinct !DILexicalBlock(scope: !2548, file: !1, line: 300, column: 6)
!2664 = !DILocation(line: 0, scope: !2662)
!2665 = !DILocation(line: 301, column: 8, scope: !2662)
!2666 = !DILocation(line: 302, column: 36, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2662, file: !1, line: 301, column: 8)
!2668 = !DILocation(line: 302, column: 3, scope: !2667)
!2669 = !DILocation(line: 301, column: 39, scope: !2667)
!2670 = !DILocation(line: 301, column: 8, scope: !2667)
!2671 = distinct !{!2671, !2665, !2672}
!2672 = !DILocation(line: 302, column: 62, scope: !2662)
!2673 = !DILocation(line: 306, column: 13, scope: !2547)
!2674 = !DILocation(line: 306, column: 13, scope: !2548)
!2675 = !DILocation(line: 307, column: 40, scope: !2547)
!2676 = !DILocation(line: 307, column: 6, scope: !2547)
!2677 = !DILocation(line: 310, column: 42, scope: !2546)
!2678 = !DILocation(line: 310, column: 20, scope: !2546)
!2679 = !DILocation(line: 310, column: 18, scope: !2546)
!2680 = !DILocation(line: 310, column: 59, scope: !2546)
!2681 = !DILocation(line: 310, column: 13, scope: !2547)
!2682 = !DILocation(line: 312, column: 19, scope: !2545)
!2683 = !DILocation(line: 0, scope: !2545)
!2684 = !DILocation(line: 313, column: 13, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2545, file: !1, line: 313, column: 8)
!2686 = !DILocation(line: 0, scope: !2685)
!2687 = !DILocation(line: 313, column: 22, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2685, file: !1, line: 313, column: 8)
!2689 = !DILocation(line: 313, column: 8, scope: !2685)
!2690 = !DILocation(line: 315, column: 6, scope: !2688)
!2691 = !DILocation(line: 314, column: 3, scope: !2688)
!2692 = !DILocation(line: 313, column: 27, scope: !2688)
!2693 = !DILocation(line: 313, column: 8, scope: !2688)
!2694 = distinct !{!2694, !2689, !2695}
!2695 = !DILocation(line: 315, column: 46, scope: !2685)
!2696 = !DILocation(line: 321, column: 8, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2546, file: !1, line: 320, column: 6)
!2698 = !DILocation(line: 322, column: 41, scope: !2697)
!2699 = !DILocation(line: 322, column: 8, scope: !2697)
!2700 = !DILocation(line: 324, column: 2, scope: !2538)
!2701 = !DILocation(line: 330, column: 29, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 330, column: 11)
!2703 = !DILocation(line: 330, column: 32, scope: !2702)
!2704 = !DILocation(line: 330, column: 11, scope: !2529)
!2705 = !DILocation(line: 331, column: 36, scope: !2702)
!2706 = !DILocation(line: 331, column: 2, scope: !2702)
!2707 = !DILocation(line: 338, column: 21, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2702, file: !1, line: 338, column: 16)
!2709 = !DILocation(line: 338, column: 34, scope: !2708)
!2710 = !DILocation(line: 338, column: 37, scope: !2708)
!2711 = !DILocation(line: 338, column: 16, scope: !2702)
!2712 = !DILocation(line: 341, column: 4, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2708, file: !1, line: 339, column: 2)
!2714 = !DILocation(line: 343, column: 13, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2713, file: !1, line: 343, column: 8)
!2716 = !DILocation(line: 343, column: 29, scope: !2715)
!2717 = !DILocation(line: 343, column: 26, scope: !2715)
!2718 = !DILocation(line: 351, column: 12, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !1, line: 351, column: 12)
!2720 = distinct !DILexicalBlock(scope: !2715, file: !1, line: 344, column: 6)
!2721 = !DILocation(line: 351, column: 12, scope: !2720)
!2722 = !DILocation(line: 352, column: 8, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2719, file: !1, line: 352, column: 3)
!2724 = !DILocation(line: 0, scope: !2723)
!2725 = !DILocation(line: 352, column: 3, scope: !2723)
!2726 = !DILocation(line: 353, column: 38, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2723, file: !1, line: 352, column: 3)
!2728 = !DILocation(line: 353, column: 5, scope: !2727)
!2729 = !DILocation(line: 352, column: 49, scope: !2727)
!2730 = !DILocation(line: 352, column: 3, scope: !2727)
!2731 = distinct !{!2731, !2725, !2732}
!2732 = !DILocation(line: 354, column: 42, scope: !2723)
!2733 = !DILocation(line: 359, column: 14, scope: !2529)
!2734 = !DILocation(line: 360, column: 26, scope: !2529)
!2735 = !DILocation(line: 360, column: 11, scope: !2529)
!2736 = !DILocation(line: 360, column: 9, scope: !2529)
!2737 = !DILocation(line: 361, column: 11, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 361, column: 11)
!2739 = !DILocation(line: 361, column: 13, scope: !2738)
!2740 = !DILocation(line: 361, column: 19, scope: !2738)
!2741 = !DILocation(line: 361, column: 25, scope: !2738)
!2742 = !DILocation(line: 361, column: 11, scope: !2529)
!2743 = !DILocation(line: 364, column: 7, scope: !2529)
!2744 = !DILocation(line: 365, column: 7, scope: !2529)
!2745 = !DILocation(line: 365, column: 10, scope: !2529)
!2746 = !DILocation(line: 366, column: 7, scope: !2529)
!2747 = !DILocation(line: 366, column: 10, scope: !2529)
!2748 = !DILocation(line: 366, column: 27, scope: !2529)
!2749 = !DILocation(line: 367, column: 9, scope: !2529)
!2750 = distinct !{!2750, !2743, !2749}
!2751 = !DILocation(line: 371, column: 20, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !1, line: 371, column: 16)
!2753 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 369, column: 11)
!2754 = !DILocation(line: 371, column: 31, scope: !2752)
!2755 = !DILocation(line: 371, column: 28, scope: !2752)
!2756 = !DILocation(line: 371, column: 16, scope: !2753)
!2757 = !DILocation(line: 370, column: 36, scope: !2753)
!2758 = !DILocation(line: 370, column: 2, scope: !2753)
!2759 = !DILocation(line: 373, column: 16, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !1, line: 373, column: 8)
!2761 = distinct !DILexicalBlock(scope: !2752, file: !1, line: 372, column: 2)
!2762 = !DILocation(line: 373, column: 13, scope: !2760)
!2763 = !DILocation(line: 373, column: 8, scope: !2761)
!2764 = !DILocation(line: 374, column: 6, scope: !2760)
!2765 = !DILocation(line: 376, column: 5, scope: !2530)
!2766 = distinct !{!2766, !2582, !2767}
!2767 = !DILocation(line: 376, column: 5, scope: !2531)
!2768 = !DILocation(line: 378, column: 7, scope: !2519)
!2769 = !DILocation(line: 379, column: 5, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2519, file: !1, line: 378, column: 7)
!2771 = !DILocation(line: 380, column: 1, scope: !2519)
!2772 = distinct !DISubprogram(name: "ei_start_1", scope: !140, file: !140, line: 696, type: !2773, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2775)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!2305, !2310}
!2775 = !{!2776, !2777}
!2776 = !DILocalVariable(name: "ev", arg: 1, scope: !2772, file: !140, line: 696, type: !2310)
!2777 = !DILocalVariable(name: "i", scope: !2772, file: !140, line: 698, type: !2305)
!2778 = !DILocation(line: 0, scope: !2772)
!2779 = !DILocation(line: 700, column: 5, scope: !2772)
!2780 = !DILocation(line: 700, column: 11, scope: !2772)
!2781 = !DILocation(line: 701, column: 5, scope: !2772)
!2782 = !DILocation(line: 701, column: 15, scope: !2772)
!2783 = !DILocation(line: 703, column: 3, scope: !2772)
!2784 = distinct !DISubprogram(name: "ei_cond", scope: !140, file: !140, line: 771, type: !2785, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2788)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!538, !2305, !2787}
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!2788 = !{!2789, !2790}
!2789 = !DILocalVariable(name: "ei", arg: 1, scope: !2784, file: !140, line: 771, type: !2305)
!2790 = !DILocalVariable(name: "p", arg: 2, scope: !2784, file: !140, line: 771, type: !2787)
!2791 = !DILocation(line: 0, scope: !2784)
!2792 = !DILocation(line: 773, column: 8, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2784, file: !140, line: 773, column: 7)
!2794 = !DILocation(line: 773, column: 7, scope: !2784)
!2795 = !DILocation(line: 775, column: 12, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2793, file: !140, line: 774, column: 5)
!2797 = !DILocation(line: 776, column: 7, scope: !2796)
!2798 = !DILocation(line: 781, column: 7, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2793, file: !140, line: 779, column: 5)
!2800 = !DILocation(line: 0, scope: !2793)
!2801 = !DILocation(line: 783, column: 1, scope: !2784)
!2802 = distinct !DISubprogram(name: "ei_next", scope: !140, file: !140, line: 736, type: !2803, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2806)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{null, !2805}
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2806 = !{!2807}
!2807 = !DILocalVariable(name: "i", arg: 1, scope: !2802, file: !140, line: 736, type: !2805)
!2808 = !DILocation(line: 0, scope: !2802)
!2809 = !DILocation(line: 738, column: 3, scope: !2802)
!2810 = !DILocation(line: 739, column: 11, scope: !2802)
!2811 = !DILocation(line: 740, column: 1, scope: !2802)
!2812 = distinct !DISubprogram(name: "compute_outgoing_frequencies", scope: !1, file: !1, line: 531, type: !2408, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2813)
!2813 = !{!2814, !2815, !2816, !2817, !2818, !2821}
!2814 = !DILocalVariable(name: "b", arg: 1, scope: !2812, file: !1, line: 531, type: !1080)
!2815 = !DILocalVariable(name: "e", scope: !2812, file: !1, line: 533, type: !1097)
!2816 = !DILocalVariable(name: "f", scope: !2812, file: !1, line: 533, type: !1097)
!2817 = !DILocalVariable(name: "ei", scope: !2812, file: !1, line: 534, type: !2305)
!2818 = !DILocalVariable(name: "note", scope: !2819, file: !1, line: 538, type: !549)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !1, line: 537, column: 5)
!2820 = distinct !DILexicalBlock(scope: !2812, file: !1, line: 536, column: 7)
!2821 = !DILocalVariable(name: "probability", scope: !2819, file: !1, line: 539, type: !539)
!2822 = !DILocation(line: 0, scope: !2812)
!2823 = !DILocation(line: 533, column: 3, scope: !2812)
!2824 = !DILocation(line: 534, column: 3, scope: !2812)
!2825 = !DILocation(line: 536, column: 7, scope: !2820)
!2826 = !DILocation(line: 536, column: 29, scope: !2820)
!2827 = !DILocation(line: 536, column: 7, scope: !2812)
!2828 = !DILocation(line: 538, column: 33, scope: !2819)
!2829 = !DILocation(line: 538, column: 18, scope: !2819)
!2830 = !DILocation(line: 0, scope: !2819)
!2831 = !DILocation(line: 541, column: 11, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2819, file: !1, line: 541, column: 11)
!2833 = !DILocation(line: 541, column: 11, scope: !2819)
!2834 = !DILocation(line: 543, column: 18, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2832, file: !1, line: 542, column: 2)
!2836 = !DILocation(line: 544, column: 8, scope: !2835)
!2837 = !DILocation(line: 544, column: 6, scope: !2835)
!2838 = !DILocation(line: 545, column: 7, scope: !2835)
!2839 = !DILocation(line: 545, column: 19, scope: !2835)
!2840 = !DILocation(line: 546, column: 20, scope: !2835)
!2841 = !DILocation(line: 546, column: 28, scope: !2835)
!2842 = !DILocation(line: 546, column: 26, scope: !2835)
!2843 = !DILocation(line: 546, column: 40, scope: !2835)
!2844 = !DILocation(line: 547, column: 9, scope: !2835)
!2845 = !DILocation(line: 546, column: 7, scope: !2835)
!2846 = !DILocation(line: 546, column: 13, scope: !2835)
!2847 = !DILocation(line: 548, column: 8, scope: !2835)
!2848 = !DILocation(line: 549, column: 38, scope: !2835)
!2849 = !DILocation(line: 549, column: 7, scope: !2835)
!2850 = !DILocation(line: 549, column: 19, scope: !2835)
!2851 = !DILocation(line: 550, column: 18, scope: !2835)
!2852 = !DILocation(line: 550, column: 29, scope: !2835)
!2853 = !DILocation(line: 550, column: 24, scope: !2835)
!2854 = !DILocation(line: 550, column: 7, scope: !2835)
!2855 = !DILocation(line: 550, column: 13, scope: !2835)
!2856 = !DILocation(line: 551, column: 4, scope: !2835)
!2857 = !DILocation(line: 555, column: 7, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2812, file: !1, line: 555, column: 7)
!2859 = !DILocation(line: 555, column: 7, scope: !2812)
!2860 = !DILocation(line: 557, column: 11, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2858, file: !1, line: 556, column: 5)
!2862 = !DILocation(line: 557, column: 9, scope: !2861)
!2863 = !DILocation(line: 558, column: 10, scope: !2861)
!2864 = !DILocation(line: 558, column: 22, scope: !2861)
!2865 = !DILocation(line: 559, column: 21, scope: !2861)
!2866 = !DILocation(line: 559, column: 10, scope: !2861)
!2867 = !DILocation(line: 559, column: 16, scope: !2861)
!2868 = !DILocation(line: 560, column: 7, scope: !2861)
!2869 = !DILocation(line: 562, column: 3, scope: !2812)
!2870 = !DILocation(line: 563, column: 10, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2812, file: !1, line: 563, column: 7)
!2872 = !DILocation(line: 563, column: 7, scope: !2871)
!2873 = !DILocation(line: 563, column: 7, scope: !2812)
!2874 = !DILocation(line: 564, column: 5, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2871, file: !1, line: 564, column: 5)
!2876 = !DILocation(line: 0, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2875, file: !1, line: 564, column: 5)
!2878 = !DILocation(line: 564, column: 5, scope: !2877)
!2879 = !DILocation(line: 565, column: 23, scope: !2877)
!2880 = !DILocation(line: 565, column: 31, scope: !2877)
!2881 = !DILocation(line: 565, column: 34, scope: !2877)
!2882 = !DILocation(line: 565, column: 29, scope: !2877)
!2883 = !DILocation(line: 565, column: 46, scope: !2877)
!2884 = !DILocation(line: 566, column: 5, scope: !2877)
!2885 = !DILocation(line: 565, column: 10, scope: !2877)
!2886 = !DILocation(line: 565, column: 16, scope: !2877)
!2887 = distinct !{!2887, !2874, !2888}
!2888 = !DILocation(line: 566, column: 23, scope: !2875)
!2889 = !DILocation(line: 567, column: 1, scope: !2812)
!2890 = distinct !DISubprogram(name: "purge_dead_tablejump_edges", scope: !1, file: !1, line: 396, type: !2891, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2893)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{null, !1080, !549}
!2893 = !{!2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901}
!2894 = !DILocalVariable(name: "bb", arg: 1, scope: !2890, file: !1, line: 396, type: !1080)
!2895 = !DILocalVariable(name: "table", arg: 2, scope: !2890, file: !1, line: 396, type: !549)
!2896 = !DILocalVariable(name: "insn", scope: !2890, file: !1, line: 398, type: !549)
!2897 = !DILocalVariable(name: "tmp", scope: !2890, file: !1, line: 398, type: !549)
!2898 = !DILocalVariable(name: "vec", scope: !2890, file: !1, line: 399, type: !577)
!2899 = !DILocalVariable(name: "j", scope: !2890, file: !1, line: 400, type: !539)
!2900 = !DILocalVariable(name: "ei", scope: !2890, file: !1, line: 401, type: !2305)
!2901 = !DILocalVariable(name: "e", scope: !2890, file: !1, line: 402, type: !1097)
!2902 = !DILocation(line: 0, scope: !2890)
!2903 = !DILocation(line: 398, column: 14, scope: !2890)
!2904 = !DILocation(line: 401, column: 3, scope: !2890)
!2905 = !DILocation(line: 404, column: 7, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2890, file: !1, line: 404, column: 7)
!2907 = !DILocation(line: 404, column: 34, scope: !2906)
!2908 = !DILocation(line: 404, column: 7, scope: !2890)
!2909 = !DILocation(line: 405, column: 11, scope: !2906)
!2910 = !DILocation(line: 405, column: 5, scope: !2906)
!2911 = !DILocation(line: 407, column: 11, scope: !2906)
!2912 = !DILocation(line: 0, scope: !2906)
!2913 = !DILocation(line: 409, column: 12, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2890, file: !1, line: 409, column: 3)
!2915 = !DILocation(line: 409, column: 8, scope: !2914)
!2916 = !DILocation(line: 0, scope: !2914)
!2917 = !DILocation(line: 409, column: 38, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2914, file: !1, line: 409, column: 3)
!2919 = !DILocation(line: 409, column: 3, scope: !2914)
!2920 = !DILocation(line: 410, column: 26, scope: !2918)
!2921 = !DILocation(line: 410, column: 5, scope: !2918)
!2922 = !DILocation(line: 409, column: 3, scope: !2918)
!2923 = distinct !{!2923, !2919, !2924}
!2924 = !DILocation(line: 410, column: 54, scope: !2914)
!2925 = !DILocation(line: 415, column: 14, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2890, file: !1, line: 415, column: 7)
!2927 = !DILocation(line: 415, column: 33, scope: !2926)
!2928 = !DILocation(line: 416, column: 8, scope: !2926)
!2929 = !DILocation(line: 416, column: 11, scope: !2926)
!2930 = !DILocation(line: 416, column: 29, scope: !2926)
!2931 = !DILocation(line: 416, column: 26, scope: !2926)
!2932 = !DILocation(line: 417, column: 8, scope: !2926)
!2933 = !DILocation(line: 417, column: 11, scope: !2926)
!2934 = !DILocation(line: 417, column: 36, scope: !2926)
!2935 = !DILocation(line: 418, column: 8, scope: !2926)
!2936 = !DILocation(line: 418, column: 11, scope: !2926)
!2937 = !DILocation(line: 418, column: 46, scope: !2926)
!2938 = !DILocation(line: 415, column: 7, scope: !2890)
!2939 = !DILocation(line: 419, column: 26, scope: !2926)
!2940 = !DILocation(line: 419, column: 5, scope: !2926)
!2941 = !DILocation(line: 421, column: 13, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2890, file: !1, line: 421, column: 3)
!2943 = !DILocation(line: 0, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2942, file: !1, line: 421, column: 3)
!2945 = !DILocation(line: 421, column: 8, scope: !2942)
!2946 = !DILocation(line: 421, column: 40, scope: !2944)
!2947 = !DILocation(line: 421, column: 3, scope: !2942)
!2948 = !DILocation(line: 423, column: 11, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !1, line: 423, column: 11)
!2950 = distinct !DILexicalBlock(scope: !2944, file: !1, line: 422, column: 5)
!2951 = !DILocation(line: 423, column: 32, scope: !2949)
!2952 = !DILocation(line: 423, column: 11, scope: !2950)
!2953 = !DILocation(line: 424, column: 2, scope: !2949)
!2954 = !DILocation(line: 426, column: 21, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2949, file: !1, line: 426, column: 16)
!2956 = !DILocation(line: 426, column: 27, scope: !2955)
!2957 = !DILocation(line: 426, column: 16, scope: !2949)
!2958 = !DILocation(line: 428, column: 4, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2955, file: !1, line: 427, column: 2)
!2960 = !DILocation(line: 429, column: 4, scope: !2959)
!2961 = distinct !{!2961, !2947, !2962}
!2962 = !DILocation(line: 432, column: 5, scope: !2942)
!2963 = !DILocation(line: 431, column: 7, scope: !2950)
!2964 = !DILocation(line: 421, column: 3, scope: !2944)
!2965 = !DILocation(line: 433, column: 1, scope: !2890)
!2966 = distinct !DISubprogram(name: "mark_tablejump_edge", scope: !1, file: !1, line: 383, type: !2967, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{null, !549}
!2969 = !{!2970, !2971}
!2970 = !DILocalVariable(name: "label", arg: 1, scope: !2966, file: !1, line: 383, type: !549)
!2971 = !DILocalVariable(name: "bb", scope: !2966, file: !1, line: 385, type: !1080)
!2972 = !DILocation(line: 0, scope: !2966)
!2973 = !DILocation(line: 387, column: 3, scope: !2966)
!2974 = !DILocation(line: 389, column: 7, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2966, file: !1, line: 389, column: 7)
!2976 = !DILocation(line: 389, column: 24, scope: !2975)
!2977 = !DILocation(line: 389, column: 7, scope: !2966)
!2978 = !DILocation(line: 391, column: 8, scope: !2966)
!2979 = !DILocation(line: 392, column: 3, scope: !2966)
!2980 = !DILocation(line: 393, column: 1, scope: !2966)
!2981 = distinct !DISubprogram(name: "ei_safe_edge", scope: !140, file: !140, line: 761, type: !2982, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!1097, !2305}
!2984 = !{!2985}
!2985 = !DILocalVariable(name: "i", arg: 1, scope: !2981, file: !140, line: 761, type: !2305)
!2986 = !DILocation(line: 763, column: 11, scope: !2981)
!2987 = !DILocation(line: 763, column: 10, scope: !2981)
!2988 = !DILocation(line: 763, column: 26, scope: !2981)
!2989 = !DILocation(line: 763, column: 3, scope: !2981)
!2990 = distinct !DISubprogram(name: "ei_end_p", scope: !140, file: !140, line: 721, type: !2991, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2993)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!538, !2305}
!2993 = !{!2994}
!2994 = !DILocalVariable(name: "i", arg: 1, scope: !2990, file: !140, line: 721, type: !2305)
!2995 = !DILocation(line: 723, column: 22, scope: !2990)
!2996 = !DILocation(line: 723, column: 19, scope: !2990)
!2997 = !DILocation(line: 723, column: 10, scope: !2990)
!2998 = !DILocation(line: 723, column: 3, scope: !2990)
!2999 = distinct !DISubprogram(name: "ei_edge", scope: !140, file: !140, line: 752, type: !2982, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3000)
!3000 = !{!3001}
!3001 = !DILocalVariable(name: "i", arg: 1, scope: !2999, file: !140, line: 752, type: !2305)
!3002 = !DILocation(line: 754, column: 10, scope: !2999)
!3003 = !DILocation(line: 754, column: 3, scope: !2999)
!3004 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !140, file: !140, line: 150, type: !3005, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3009)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!5, !3007}
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1090)
!3009 = !{!3010}
!3010 = !DILocalVariable(name: "vec_", arg: 1, scope: !3004, file: !140, line: 150, type: !3007)
!3011 = !DILocation(line: 0, scope: !3004)
!3012 = !DILocation(line: 150, column: 1, scope: !3004)
!3013 = distinct !DISubprogram(name: "ei_container", scope: !140, file: !140, line: 685, type: !3014, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!1085, !2305}
!3016 = !{!3017}
!3017 = !DILocalVariable(name: "i", arg: 1, scope: !3013, file: !140, line: 685, type: !2305)
!3018 = !DILocation(line: 687, column: 3, scope: !3013)
!3019 = !DILocation(line: 688, column: 10, scope: !3013)
!3020 = !DILocation(line: 688, column: 3, scope: !3013)
!3021 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !140, file: !140, line: 150, type: !3022, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3024)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!1097, !3007, !5}
!3024 = !{!3025, !3026}
!3025 = !DILocalVariable(name: "vec_", arg: 1, scope: !3021, file: !140, line: 150, type: !3007)
!3026 = !DILocalVariable(name: "ix_", arg: 2, scope: !3021, file: !140, line: 150, type: !5)
!3027 = !DILocation(line: 0, scope: !3021)
!3028 = !DILocation(line: 150, column: 1, scope: !3021)
!3029 = distinct !DISubprogram(name: "SET_BIT", scope: !2238, file: !2238, line: 63, type: !3030, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3032)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{null, !2237, !5}
!3032 = !{!3033, !3034, !3035}
!3033 = !DILocalVariable(name: "map", arg: 1, scope: !3029, file: !2238, line: 63, type: !2237)
!3034 = !DILocalVariable(name: "bitno", arg: 2, scope: !3029, file: !2238, line: 63, type: !5)
!3035 = !DILocalVariable(name: "oldbit", scope: !3036, file: !2238, line: 67, type: !538)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !2238, line: 66, column: 5)
!3037 = distinct !DILexicalBlock(scope: !3029, file: !2238, line: 65, column: 7)
!3038 = !DILocation(line: 0, scope: !3029)
!3039 = !DILocation(line: 65, column: 12, scope: !3037)
!3040 = !DILocation(line: 65, column: 7, scope: !3037)
!3041 = !DILocation(line: 65, column: 7, scope: !3029)
!3042 = !DILocation(line: 73, column: 40, scope: !3029)
!3043 = !DILocation(line: 73, column: 29, scope: !3029)
!3044 = !DILocation(line: 72, column: 19, scope: !3029)
!3045 = !DILocation(line: 72, column: 3, scope: !3029)
!3046 = !DILocation(line: 68, column: 16, scope: !3036)
!3047 = !DILocation(line: 69, column: 12, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3036, file: !2238, line: 69, column: 11)
!3049 = !DILocation(line: 69, column: 11, scope: !3036)
!3050 = !DILocation(line: 70, column: 2, scope: !3048)
!3051 = !DILocation(line: 70, column: 41, scope: !3048)
!3052 = !DILocation(line: 73, column: 5, scope: !3029)
!3053 = !DILocation(line: 74, column: 1, scope: !3029)
!3054 = distinct !DISubprogram(name: "single_succ_p", scope: !140, file: !140, line: 626, type: !3055, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3060)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!538, !3057}
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !550, line: 112, baseType: !3058)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1082)
!3060 = !{!3061}
!3061 = !DILocalVariable(name: "bb", arg: 1, scope: !3054, file: !140, line: 626, type: !3057)
!3062 = !DILocation(line: 0, scope: !3054)
!3063 = !DILocation(line: 628, column: 10, scope: !3054)
!3064 = !DILocation(line: 628, column: 33, scope: !3054)
!3065 = !DILocation(line: 628, column: 3, scope: !3054)
!3066 = distinct !DISubprogram(name: "single_succ_edge", scope: !140, file: !140, line: 643, type: !3067, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!1097, !3057}
!3069 = !{!3070}
!3070 = !DILocalVariable(name: "bb", arg: 1, scope: !3066, file: !140, line: 643, type: !3057)
!3071 = !DILocation(line: 0, scope: !3066)
!3072 = !DILocation(line: 645, column: 3, scope: !3066)
!3073 = !DILocation(line: 646, column: 10, scope: !3066)
!3074 = !DILocation(line: 646, column: 3, scope: !3066)
