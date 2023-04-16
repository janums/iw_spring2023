; ModuleID = 'loop-unswitch.bc'
source_filename = "loop-unswitch.c"
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
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.loop_iterator = type { %struct.VEC_int_heap*, i32 }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.rtx_iv = type { %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*, %struct.rtx_def*, i32, i32, i8 }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.VEC_edge_heap = type { %struct.VEC_edge_base }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@.str = private unnamed_addr constant [16 x i8] c"loop-unswitch.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c";; Not unswitching anymore, hit max level\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c";; Not unswitching, not innermost loop\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c";; Not unswitching, can't duplicate loop\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c";; Not unswitching, loop too big\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c";; Not unswitching, not hot area\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c";; Not unswitching, loop iterations < 1\0A\00", align 1
@const_int_rtx = external dso_local local_unnamed_addr global [129 x %struct.rtx_def*], align 16
@const_true_rtx = external dso_local local_unnamed_addr global %struct.rtx_def*, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c";; Unswitching loop\0A\00", align 1
@rtx_class = external dso_local local_unnamed_addr constant [139 x i32], align 16
@.str.9 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1708 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1721, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1722, metadata !DIExpression()), !dbg !1723
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1724
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1725
  ret i32 %call, !dbg !1726
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1727 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1731
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1732
  ret i32 %call, !dbg !1733
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1734 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1789, metadata !DIExpression()), !dbg !1790
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1791
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1791
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1791
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1791
  %cmp = icmp uge i8* %0, %1, !dbg !1791
  %conv1 = zext i1 %cmp to i64, !dbg !1791
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1791
  %tobool = icmp eq i64 %expval, 0, !dbg !1791
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1791

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1791
  br label %cond.end, !dbg !1791

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1791
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1791
  %2 = load i8, i8* %0, align 1, !dbg !1791
  %conv3 = zext i8 %2 to i32, !dbg !1791
  br label %cond.end, !dbg !1791

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1791
  ret i32 %cond, !dbg !1792
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1793 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1795, metadata !DIExpression()), !dbg !1796
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1797
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1797
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1797
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1797
  %cmp = icmp uge i8* %0, %1, !dbg !1797
  %conv1 = zext i1 %cmp to i64, !dbg !1797
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1797
  %tobool = icmp eq i64 %expval, 0, !dbg !1797
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1797

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1797
  br label %cond.end, !dbg !1797

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1797
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1797
  %2 = load i8, i8* %0, align 1, !dbg !1797
  %conv3 = zext i8 %2 to i32, !dbg !1797
  br label %cond.end, !dbg !1797

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1797
  ret i32 %cond, !dbg !1798
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1799 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1800
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1800
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1800
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1800
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1800
  %cmp = icmp uge i8* %1, %2, !dbg !1800
  %conv1 = zext i1 %cmp to i64, !dbg !1800
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1800
  %tobool = icmp eq i64 %expval, 0, !dbg !1800
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1800

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1800
  br label %cond.end, !dbg !1800

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1800
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1800
  %3 = load i8, i8* %1, align 1, !dbg !1800
  %conv3 = zext i8 %3 to i32, !dbg !1800
  br label %cond.end, !dbg !1800

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1800
  ret i32 %cond, !dbg !1801
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1802 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1806, metadata !DIExpression()), !dbg !1807
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1808
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1809
  ret i32 %call, !dbg !1810
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1811 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1815, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1816, metadata !DIExpression()), !dbg !1817
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1818
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1818
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1818
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1818
  %cmp = icmp uge i8* %0, %1, !dbg !1818
  %conv1 = zext i1 %cmp to i64, !dbg !1818
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1818
  %tobool = icmp eq i64 %expval, 0, !dbg !1818
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1818

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1818
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1818
  br label %cond.end, !dbg !1818

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1818
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1818
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1818
  store i8 %conv2, i8* %0, align 1, !dbg !1818
  %conv6 = and i32 %__c, 255, !dbg !1818
  br label %cond.end, !dbg !1818

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1818
  ret i32 %cond, !dbg !1819
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1820 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1822, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1823, metadata !DIExpression()), !dbg !1824
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1825
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1825
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1825
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1825
  %cmp = icmp uge i8* %0, %1, !dbg !1825
  %conv1 = zext i1 %cmp to i64, !dbg !1825
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1825
  %tobool = icmp eq i64 %expval, 0, !dbg !1825
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1825

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1825
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1825
  br label %cond.end, !dbg !1825

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1825
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1825
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1825
  store i8 %conv2, i8* %0, align 1, !dbg !1825
  %conv6 = and i32 %__c, 255, !dbg !1825
  br label %cond.end, !dbg !1825

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1825
  ret i32 %cond, !dbg !1826
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1827 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1829, metadata !DIExpression()), !dbg !1830
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1831
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1831
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1831
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1831
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1831
  %cmp = icmp uge i8* %1, %2, !dbg !1831
  %conv1 = zext i1 %cmp to i64, !dbg !1831
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1831
  %tobool = icmp eq i64 %expval, 0, !dbg !1831
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1831

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1831
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1831
  br label %cond.end, !dbg !1831

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1831
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1831
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1831
  store i8 %conv4, i8* %1, align 1, !dbg !1831
  %conv6 = and i32 %__c, 255, !dbg !1831
  br label %cond.end, !dbg !1831

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1831
  ret i32 %cond, !dbg !1832
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1833 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1839, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1840, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1841, metadata !DIExpression()), !dbg !1842
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1843
  ret i64 %call, !dbg !1844
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1845 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1847, metadata !DIExpression()), !dbg !1848
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1849
  %0 = load i32, i32* %_flags, align 8, !dbg !1849
  %and = lshr i32 %0, 4, !dbg !1849
  %and.lobit = and i32 %and, 1, !dbg !1849
  ret i32 %and.lobit, !dbg !1850
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1851 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1853, metadata !DIExpression()), !dbg !1854
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1855
  %0 = load i32, i32* %_flags, align 8, !dbg !1855
  %and = lshr i32 %0, 5, !dbg !1855
  %and.lobit = and i32 %and, 1, !dbg !1855
  ret i32 %and.lobit, !dbg !1856
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1857 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1860, metadata !DIExpression()), !dbg !1861
  %__c.off = add i32 %__c, 128, !dbg !1862
  %0 = icmp ult i32 %__c.off, 384, !dbg !1862
  br i1 %0, label %cond.true, label %cond.end, !dbg !1862

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1863
  %1 = load i32*, i32** %call, align 8, !dbg !1864
  %idxprom = sext i32 %__c to i64, !dbg !1865
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1865
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1865
  br label %cond.end, !dbg !1866

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1866
  ret i32 %cond, !dbg !1867
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1868 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1870, metadata !DIExpression()), !dbg !1871
  %__c.off = add i32 %__c, 128, !dbg !1872
  %0 = icmp ult i32 %__c.off, 384, !dbg !1872
  br i1 %0, label %cond.true, label %cond.end, !dbg !1872

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1873
  %1 = load i32*, i32** %call, align 8, !dbg !1874
  %idxprom = sext i32 %__c to i64, !dbg !1875
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1875
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1875
  br label %cond.end, !dbg !1876

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1876
  ret i32 %cond, !dbg !1877
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1878 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1883, metadata !DIExpression()), !dbg !1884
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1885
  %conv = trunc i64 %call to i32, !dbg !1886
  ret i32 %conv, !dbg !1887
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1888 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1892, metadata !DIExpression()), !dbg !1893
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1894
  ret i64 %call, !dbg !1895
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1896 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1901, metadata !DIExpression()), !dbg !1902
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1903
  ret i64 %call, !dbg !1904
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1905 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1911, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1912, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1913, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1914, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1915, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 0, metadata !1916, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1917, metadata !DIExpression()), !dbg !1921
  br label %while.cond, !dbg !1922

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1923
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1921
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1917, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1916, metadata !DIExpression()), !dbg !1921
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1924
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1922

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1925
  %div = lshr i64 %add, 1, !dbg !1927
  call void @llvm.dbg.value(metadata i64 %div, metadata !1918, metadata !DIExpression()), !dbg !1921
  %mul = mul i64 %div, %__size, !dbg !1928
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1929
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1919, metadata !DIExpression()), !dbg !1921
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1930
  call void @llvm.dbg.value(metadata i32 %call, metadata !1920, metadata !DIExpression()), !dbg !1921
  %cmp1 = icmp slt i32 %call, 0, !dbg !1931
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1933

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1934
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1936

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1916, metadata !DIExpression()), !dbg !1921
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1921
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1921
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1917, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1916, metadata !DIExpression()), !dbg !1921
  br label %while.cond, !dbg !1922, !llvm.loop !1938

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1921
  ret i8* %retval.0, !dbg !1940
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1941 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1947, metadata !DIExpression()), !dbg !1948
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1949
  ret double %call, !dbg !1950
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1951 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1960, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1961, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i32 %base, metadata !1962, metadata !DIExpression()), !dbg !1963
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1964
  ret i64 %call, !dbg !1965
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1966 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1972, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1973, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i32 %base, metadata !1974, metadata !DIExpression()), !dbg !1975
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1976
  ret i64 %call, !dbg !1977
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1978 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1989, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1990, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i32 %base, metadata !1991, metadata !DIExpression()), !dbg !1992
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1993
  ret i64 %call, !dbg !1994
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1995 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1999, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2000, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i32 %base, metadata !2001, metadata !DIExpression()), !dbg !2002
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2003
  ret i64 %call, !dbg !2004
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2005 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2045, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2046, metadata !DIExpression()), !dbg !2047
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2048
  ret i32 %call, !dbg !2049
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2050 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2052, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2053, metadata !DIExpression()), !dbg !2054
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2055
  ret i32 %call, !dbg !2056
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2057 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2061, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2062, metadata !DIExpression()), !dbg !2063
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2064
  ret i32 %call, !dbg !2065
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2066 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2070, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2071, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2072, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2073, metadata !DIExpression()), !dbg !2074
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2075
  ret i32 %call, !dbg !2076
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2077 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2081, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2082, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2083, metadata !DIExpression()), !dbg !2084
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2083, metadata !DIExpression(DW_OP_deref)), !dbg !2084
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2085
  ret i32 %call, !dbg !2086
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2087 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2091, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2092, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2093, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2094, metadata !DIExpression()), !dbg !2095
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2094, metadata !DIExpression(DW_OP_deref)), !dbg !2095
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2096
  ret i32 %call, !dbg !2097
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2098 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2122, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2123, metadata !DIExpression()), !dbg !2124
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2125
  ret i32 %call, !dbg !2126
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2127 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2129, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2130, metadata !DIExpression()), !dbg !2131
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2132
  ret i32 %call, !dbg !2133
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2134 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2138, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2139, metadata !DIExpression()), !dbg !2140
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2141
  ret i32 %call, !dbg !2142
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2143 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2147, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2148, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2149, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2150, metadata !DIExpression()), !dbg !2151
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2152
  ret i32 %call, !dbg !2153
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @compare_and_jump_seq(%struct.rtx_def* %op0, %struct.rtx_def* %op1, i32 %comp, %struct.rtx_def* %label, i32 %prob, %struct.rtx_def* %cinsn) local_unnamed_addr #5 !dbg !2154 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op0, metadata !2158, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op1, metadata !2159, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i32 %comp, metadata !2160, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata %struct.rtx_def* %label, metadata !2161, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i32 %prob, metadata !2162, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cinsn, metadata !2163, metadata !DIExpression()), !dbg !2168
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op0, i64 0, i32 0, !dbg !2169
  %bf.load = load i32, i32* %0, align 8, !dbg !2169
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2169
  %bf.clear = and i32 %bf.lshr, 255, !dbg !2169
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !2167, metadata !DIExpression()), !dbg !2168
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !2170
  br i1 %cmp, label %if.then, label %if.end, !dbg !2172

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op1, i64 0, i32 0, !dbg !2173
  %bf.load1 = load i32, i32* %1, align 8, !dbg !2173
  %bf.lshr2 = lshr i32 %bf.load1, 16, !dbg !2173
  %bf.clear3 = and i32 %bf.lshr2, 255, !dbg !2173
  call void @llvm.dbg.value(metadata i32 %bf.clear3, metadata !2167, metadata !DIExpression()), !dbg !2168
  br label %if.end, !dbg !2174

if.end:                                           ; preds = %if.then, %entry
  %mode.0 = phi i32 [ %bf.clear3, %if.then ], [ %bf.clear, %entry ], !dbg !2168
  call void @llvm.dbg.value(metadata i32 %mode.0, metadata !2167, metadata !DIExpression()), !dbg !2168
  tail call void @start_sequence() #6, !dbg !2175
  %idxprom = zext i32 %mode.0 to i64, !dbg !2176
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !2176
  %2 = load i8, i8* %arrayidx, align 1, !dbg !2176
  %cmp4 = icmp eq i8 %2, 1, !dbg !2178
  %tobool = icmp ne %struct.rtx_def* %cinsn, null, !dbg !2179
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !2180

if.then6:                                         ; preds = %if.end
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2181

cond.true:                                        ; preds = %if.then6
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2181
  br label %cond.end, !dbg !2181

cond.end:                                         ; preds = %if.then6, %cond.true
  %call = tail call %struct.rtx_def* @pc_set(%struct.rtx_def* %cinsn) #6, !dbg !2183
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2183
  %rt_rtx = bitcast %union.rtunion_def* %3 to %struct.rtx_def**, !dbg !2183
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2183
  %arrayidx11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2183
  %rt_rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**, !dbg !2183
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx12, align 8, !dbg !2183
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !2166, metadata !DIExpression()), !dbg !2168
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 0, !dbg !2184
  %bf.load13 = load i32, i32* %6, align 8, !dbg !2184
  %bf.clear14 = and i32 %bf.load13, 65535, !dbg !2184
  %cmp15 = icmp eq i32 %bf.clear14, %comp, !dbg !2184
  br i1 %cmp15, label %cond.end19, label %cond.true17, !dbg !2184

cond.true17:                                      ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2184
  br label %cond.end19, !dbg !2184

cond.end19:                                       ; preds = %cond.end, %cond.true17
  %arrayidx23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2185
  %rt_rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**, !dbg !2185
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx24, align 8, !dbg !2185
  %call25 = tail call i32 @rtx_equal_p(%struct.rtx_def* %op0, %struct.rtx_def* %7) #6, !dbg !2185
  %tobool26 = icmp eq i32 %call25, 0, !dbg !2185
  br i1 %tobool26, label %cond.true27, label %cond.end29, !dbg !2185

cond.true27:                                      ; preds = %cond.end19
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2185
  br label %cond.end29, !dbg !2185

cond.end29:                                       ; preds = %cond.end19, %cond.true27
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2186
  %rt_rtx34 = bitcast %union.rtunion_def* %8 to %struct.rtx_def**, !dbg !2186
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx34, align 8, !dbg !2186
  %call35 = tail call i32 @rtx_equal_p(%struct.rtx_def* %op1, %struct.rtx_def* %9) #6, !dbg !2186
  %tobool36 = icmp eq i32 %call35, 0, !dbg !2186
  br i1 %tobool36, label %cond.true37, label %cond.end39, !dbg !2186

cond.true37:                                      ; preds = %cond.end29
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2186
  br label %cond.end39, !dbg !2186

cond.end39:                                       ; preds = %cond.end29, %cond.true37
  %u41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cinsn, i64 0, i32 1, !dbg !2187
  %10 = getelementptr inbounds %union.u, %union.u* %u41, i64 1, i32 0, i32 0, i64 0, !dbg !2187
  %rt_rtx44 = bitcast %union.rtunion_def* %10 to %struct.rtx_def**, !dbg !2187
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx44, align 8, !dbg !2187
  %call45 = tail call %struct.rtx_def* @copy_insn(%struct.rtx_def* %11) #6, !dbg !2188
  %call46 = tail call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call45) #6, !dbg !2189
  %call47 = tail call %struct.rtx_def* @get_last_insn() #6, !dbg !2190
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call47, metadata !2165, metadata !DIExpression()), !dbg !2168
  %arrayidx50 = getelementptr inbounds %union.u, %union.u* %u41, i64 1, i32 0, i32 1, !dbg !2191
  %12 = bitcast %struct.object_block** %arrayidx50 to i64*, !dbg !2191
  %13 = load i64, i64* %12, align 8, !dbg !2191
  %u52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call47, i64 0, i32 1, !dbg !2192
  %arrayidx54 = getelementptr inbounds %union.u, %union.u* %u52, i64 1, i32 0, i32 1, !dbg !2192
  %14 = bitcast %struct.object_block** %arrayidx54 to i64*, !dbg !2193
  store i64 %13, i64* %14, align 8, !dbg !2193
  %15 = inttoptr i64 %13 to %struct.rtx_def*, !dbg !2194
  %arrayidx62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i64 0, i32 1, i32 0, i32 2, !dbg !2194
  %rt_int = bitcast i64* %arrayidx62 to i32*, !dbg !2194
  %16 = load i32, i32* %rt_int, align 8, !dbg !2195
  %inc = add nsw i32 %16, 1, !dbg !2195
  store i32 %inc, i32* %rt_int, align 8, !dbg !2195
  %call63 = tail call i32 @redirect_jump(%struct.rtx_def* %call47, %struct.rtx_def* %label, i32 0) #6, !dbg !2196
  br label %if.end81, !dbg !2197

if.else:                                          ; preds = %if.end
  br i1 %tobool, label %cond.true65, label %cond.end67, !dbg !2198

cond.true65:                                      ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2198
  br label %cond.end67, !dbg !2198

cond.end67:                                       ; preds = %if.else, %cond.true65
  %call69 = tail call %struct.rtx_def* @force_operand(%struct.rtx_def* %op0, %struct.rtx_def* null) #6, !dbg !2200
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call69, metadata !2158, metadata !DIExpression()), !dbg !2168
  %call70 = tail call %struct.rtx_def* @force_operand(%struct.rtx_def* %op1, %struct.rtx_def* null) #6, !dbg !2201
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call70, metadata !2159, metadata !DIExpression()), !dbg !2168
  tail call void @do_compare_rtx_and_jump(%struct.rtx_def* %call69, %struct.rtx_def* %call70, i32 %comp, i32 0, i32 %mode.0, %struct.rtx_def* null, %struct.rtx_def* null, %struct.rtx_def* %label, i32 -1) #6, !dbg !2202
  %call71 = tail call %struct.rtx_def* @get_last_insn() #6, !dbg !2203
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call71, metadata !2165, metadata !DIExpression()), !dbg !2168
  %u72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call71, i64 0, i32 1, !dbg !2204
  %arrayidx74 = getelementptr inbounds %union.u, %union.u* %u72, i64 1, i32 0, i32 1, !dbg !2204
  %rt_rtx75 = bitcast %struct.object_block** %arrayidx74 to %struct.rtx_def**, !dbg !2204
  store %struct.rtx_def* %label, %struct.rtx_def** %rt_rtx75, align 8, !dbg !2205
  %arrayidx78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %label, i64 0, i32 1, i32 0, i32 2, !dbg !2206
  %rt_int79 = bitcast i64* %arrayidx78 to i32*, !dbg !2206
  %17 = load i32, i32* %rt_int79, align 8, !dbg !2207
  %inc80 = add nsw i32 %17, 1, !dbg !2207
  store i32 %inc80, i32* %rt_int79, align 8, !dbg !2207
  br label %if.end81

if.end81:                                         ; preds = %cond.end67, %cond.end39
  %jump.0 = phi %struct.rtx_def* [ %call47, %cond.end39 ], [ %call71, %cond.end67 ], !dbg !2179
  call void @llvm.dbg.value(metadata %struct.rtx_def* %jump.0, metadata !2165, metadata !DIExpression()), !dbg !2168
  %conv82 = sext i32 %prob to i64, !dbg !2208
  %call83 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv82) #6, !dbg !2208
  tail call void @add_reg_note(%struct.rtx_def* %jump.0, i32 13, %struct.rtx_def* %call83) #6, !dbg !2209
  %call84 = tail call %struct.rtx_def* @get_insns() #6, !dbg !2210
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call84, metadata !2164, metadata !DIExpression()), !dbg !2168
  tail call void @end_sequence() #6, !dbg !2211
  ret %struct.rtx_def* %call84, !dbg !2212
}

declare dso_local void @start_sequence() local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @pc_set(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @emit_jump_insn(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @copy_insn(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @get_last_insn() local_unnamed_addr #2

declare dso_local i32 @redirect_jump(%struct.rtx_def*, %struct.rtx_def*, i32) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @force_operand(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @do_compare_rtx_and_jump(%struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32) local_unnamed_addr #2

declare dso_local void @add_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @get_insns() local_unnamed_addr #2

declare dso_local void @end_sequence() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @unswitch_loops() local_unnamed_addr #5 !dbg !2213 {
entry:
  %li = alloca %struct.loop_iterator, align 8
  %loop = alloca %struct.loop*, align 8
  %0 = bitcast %struct.loop_iterator* %li to i8*, !dbg !2224
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2224
  %1 = bitcast %struct.loop** %loop to i8*, !dbg !2225
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2225
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2217, metadata !DIExpression(DW_OP_deref)), !dbg !2226
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2223, metadata !DIExpression(DW_OP_deref)), !dbg !2226
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 4) #8, !dbg !2227
  br label %for.cond, !dbg !2227

for.cond:                                         ; preds = %for.body, %entry
  %2 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2229
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2223, metadata !DIExpression()), !dbg !2226
  %tobool = icmp eq %struct.loop* %2, null, !dbg !2227
  br i1 %tobool, label %for.end, label %for.body, !dbg !2227

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2223, metadata !DIExpression()), !dbg !2226
  call fastcc void @unswitch_single_loop(%struct.loop* nonnull %2, %struct.rtx_def* null, i32 0) #8, !dbg !2231
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2217, metadata !DIExpression(DW_OP_deref)), !dbg !2226
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2223, metadata !DIExpression(DW_OP_deref)), !dbg !2226
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !2229
  br label %for.cond, !dbg !2229, !llvm.loop !2233

for.end:                                          ; preds = %for.cond
  call void @iv_analysis_done() #6, !dbg !2235
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2236
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2236
  ret void, !dbg !2236
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_init(%struct.loop_iterator* %li, %struct.loop** %loop, i32 %flags) unnamed_addr #0 !dbg !2237 {
entry:
  %aloop = alloca %struct.loop*, align 8
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2243, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2244, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i32 4, metadata !2245, metadata !DIExpression()), !dbg !2249
  %0 = bitcast %struct.loop** %aloop to i8*, !dbg !2250
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2250
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2251
  store i32 0, i32* %idx, align 8, !dbg !2252
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2253
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 4, !dbg !2253
  %2 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2253
  %tobool = icmp eq %struct.loops* %2, null, !dbg !2253
  br i1 %tobool, label %if.then, label %if.end, !dbg !2255

if.then:                                          ; preds = %entry
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2256
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2258
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2259
  br label %cleanup, !dbg !2260

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !2261
  %call1 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %call) #8, !dbg !2261
  %to_visit2 = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2262
  store %struct.VEC_int_heap* %call1, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2263
  call void @llvm.dbg.value(metadata i32 1, metadata !2248, metadata !DIExpression()), !dbg !2249
  br label %for.cond, !dbg !2264

for.cond:                                         ; preds = %if.end, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %if.end ], !dbg !2268
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2247, metadata !DIExpression()), !dbg !2249
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2269
  %x_current_loops8 = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 4, !dbg !2269
  %4 = load %struct.loops*, %struct.loops** %x_current_loops8, align 8, !dbg !2269
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %4, i64 0, i32 1, !dbg !2269
  %5 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2269
  %tobool9 = icmp eq %struct.VEC_loop_p_gc* %5, null, !dbg !2269
  br i1 %tobool9, label %cond.end, label %cond.true, !dbg !2269

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %5, i64 0, i32 0, !dbg !2269
  br label %cond.end, !dbg !2269

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond13 = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !2269
  call void @llvm.dbg.value(metadata %struct.loop** %aloop, metadata !2246, metadata !DIExpression(DW_OP_deref)), !dbg !2249
  %call14 = call fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %cond13, i32 %i.0, %struct.loop** nonnull %aloop) #8, !dbg !2269
  %tobool15 = icmp eq i32 %call14, 0, !dbg !2264
  br i1 %tobool15, label %if.end114.loopexit2, label %for.body, !dbg !2264

for.body:                                         ; preds = %cond.end
  %6 = load %struct.loop*, %struct.loop** %aloop, align 8, !dbg !2271
  call void @llvm.dbg.value(metadata %struct.loop* %6, metadata !2246, metadata !DIExpression()), !dbg !2249
  %cmp = icmp eq %struct.loop* %6, null, !dbg !2273
  br i1 %cmp, label %for.inc, label %land.lhs.true, !dbg !2274

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.loop* %6, metadata !2246, metadata !DIExpression()), !dbg !2249
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %6, i64 0, i32 8, !dbg !2275
  %7 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !2275
  %cmp16 = icmp eq %struct.loop* %7, null, !dbg !2276
  br i1 %cmp16, label %land.lhs.true17, label %for.inc, !dbg !2277

land.lhs.true17:                                  ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.loop* %6, metadata !2246, metadata !DIExpression()), !dbg !2249
  %num = getelementptr inbounds %struct.loop, %struct.loop* %6, i64 0, i32 0, !dbg !2278
  %8 = load i32, i32* %num, align 8, !dbg !2278
  %cmp18 = icmp slt i32 %8, 1, !dbg !2279
  br i1 %cmp18, label %for.inc, label %if.then19, !dbg !2280

if.then19:                                        ; preds = %land.lhs.true17
  %9 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2281
  %tobool21 = icmp eq %struct.VEC_int_heap* %9, null, !dbg !2281
  br i1 %tobool21, label %cond.end26, label %cond.true22, !dbg !2281

cond.true22:                                      ; preds = %if.then19
  %base24 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %9, i64 0, i32 0, !dbg !2281
  br label %cond.end26, !dbg !2281

cond.end26:                                       ; preds = %if.then19, %cond.true22
  %cond27 = phi %struct.VEC_int_base* [ %base24, %cond.true22 ], [ null, %if.then19 ], !dbg !2281
  call void @llvm.dbg.value(metadata %struct.loop* %6, metadata !2246, metadata !DIExpression()), !dbg !2249
  %call29 = call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond27, i32 %8) #8, !dbg !2281
  br label %for.inc, !dbg !2281

for.inc:                                          ; preds = %land.lhs.true17, %for.body, %land.lhs.true, %cond.end26
  %inc = add i32 %i.0, 1, !dbg !2282
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2247, metadata !DIExpression()), !dbg !2249
  br label %for.cond, !dbg !2283, !llvm.loop !2284

if.end114.loopexit2:                              ; preds = %cond.end
  call fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) #8, !dbg !2286
  br label %cleanup, !dbg !2287

cleanup:                                          ; preds = %if.end114.loopexit2, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2287
  ret void, !dbg !2287
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unswitch_single_loop(%struct.loop* %loop, %struct.rtx_def* %cond_checked, i32 %num) unnamed_addr #5 !dbg !2288 {
entry:
  %cond = alloca %struct.rtx_def*, align 8
  %cinsn = alloca %struct.rtx_def*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2292, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond_checked, metadata !2293, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i32 %num, metadata !2294, metadata !DIExpression()), !dbg !2307
  %0 = bitcast %struct.rtx_def** %cond to i8*, !dbg !2308
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2308
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !2300, metadata !DIExpression()), !dbg !2307
  %1 = bitcast %struct.rtx_def** %cinsn to i8*, !dbg !2308
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2308
  %2 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2309
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %2, i64 36, i32 1, !dbg !2309
  %3 = load i32, i32* %value, align 8, !dbg !2309
  %cmp = icmp slt i32 %3, %num, !dbg !2311
  br i1 %cmp, label %if.then, label %if.end2, !dbg !2312

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2313
  %tobool = icmp eq %struct._IO_FILE* %4, null, !dbg !2313
  br i1 %tobool, label %cleanup, label %if.then1, !dbg !2316

if.then1:                                         ; preds = %if.then
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2317
  br label %cleanup, !dbg !2317

if.end2:                                          ; preds = %entry
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 8, !dbg !2318
  %5 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !2318
  %tobool3 = icmp eq %struct.loop* %5, null, !dbg !2320
  br i1 %tobool3, label %if.end9, label %if.then4, !dbg !2321

if.then4:                                         ; preds = %if.end2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2322
  %tobool5 = icmp eq %struct._IO_FILE* %6, null, !dbg !2322
  br i1 %tobool5, label %cleanup, label %if.then6, !dbg !2325

if.then6:                                         ; preds = %if.then4
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2326
  br label %cleanup, !dbg !2326

if.end9:                                          ; preds = %if.end2
  %call10 = tail call zeroext i8 @can_duplicate_loop_p(%struct.loop* %loop) #6, !dbg !2327
  %tobool11 = icmp eq i8 %call10, 0, !dbg !2327
  br i1 %tobool11, label %if.then12, label %if.end17, !dbg !2329

if.then12:                                        ; preds = %if.end9
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2330
  %tobool13 = icmp eq %struct._IO_FILE* %7, null, !dbg !2330
  br i1 %tobool13, label %cleanup, label %if.then14, !dbg !2333

if.then14:                                        ; preds = %if.then12
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2334
  br label %cleanup, !dbg !2334

if.end17:                                         ; preds = %if.end9
  %call18 = tail call i32 @num_loop_insns(%struct.loop* %loop) #6, !dbg !2335
  %8 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2337
  %value20 = getelementptr inbounds %struct.param_info, %struct.param_info* %8, i64 35, i32 1, !dbg !2337
  %9 = load i32, i32* %value20, align 8, !dbg !2337
  %cmp21 = icmp sgt i32 %call18, %9, !dbg !2338
  br i1 %cmp21, label %if.then22, label %if.end27, !dbg !2339

if.then22:                                        ; preds = %if.end17
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2340
  %tobool23 = icmp eq %struct._IO_FILE* %10, null, !dbg !2340
  br i1 %tobool23, label %cleanup, label %if.then24, !dbg !2343

if.then24:                                        ; preds = %if.then22
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2344
  br label %cleanup, !dbg !2344

if.end27:                                         ; preds = %if.end17
  %call28 = tail call zeroext i8 @optimize_loop_for_size_p(%struct.loop* %loop) #6, !dbg !2345
  %tobool29 = icmp eq i8 %call28, 0, !dbg !2345
  br i1 %tobool29, label %if.end35, label %if.then30, !dbg !2347

if.then30:                                        ; preds = %if.end27
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2348
  %tobool31 = icmp eq %struct._IO_FILE* %11, null, !dbg !2348
  br i1 %tobool31, label %cleanup, label %if.then32, !dbg !2351

if.then32:                                        ; preds = %if.then30
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2352
  br label %cleanup, !dbg !2352

if.end35:                                         ; preds = %if.end27
  %call36 = tail call i32 @expected_loop_iterations(%struct.loop* %loop) #6, !dbg !2353
  %cmp37 = icmp eq i32 %call36, 0, !dbg !2355
  br i1 %cmp37, label %if.then38, label %do.body.preheader, !dbg !2356

do.body.preheader:                                ; preds = %if.end35
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !2357
  br label %do.body, !dbg !2361

if.then38:                                        ; preds = %if.end35
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2362
  %tobool39 = icmp eq %struct._IO_FILE* %12, null, !dbg !2362
  br i1 %tobool39, label %cleanup, label %if.then40, !dbg !2365

if.then40:                                        ; preds = %if.then38
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2366
  br label %cleanup, !dbg !2366

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %rcond.0 = phi %struct.rtx_def* [ %rcond.2, %do.cond ], [ null, %do.body.preheader ], !dbg !2307
  call void @llvm.dbg.value(metadata %struct.rtx_def* %rcond.0, metadata !2300, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i32 0, metadata !2305, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !2304, metadata !DIExpression()), !dbg !2307
  store %struct.rtx_def* null, %struct.rtx_def** %cinsn, align 8, !dbg !2367
  %call44 = call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #6, !dbg !2368
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call44, metadata !2295, metadata !DIExpression()), !dbg !2307
  call void @iv_analysis_loop_init(%struct.loop* %loop) #6, !dbg !2369
  call void @llvm.dbg.value(metadata i32 0, metadata !2298, metadata !DIExpression()), !dbg !2307
  br label %for.cond, !dbg !2370

for.cond:                                         ; preds = %for.inc, %do.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %do.body ], !dbg !2371
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2298, metadata !DIExpression()), !dbg !2307
  %13 = load i32, i32* %num_nodes, align 4, !dbg !2372
  %14 = zext i32 %13 to i64, !dbg !2373
  %cmp45 = icmp ult i64 %indvars.iv, %14, !dbg !2373
  br i1 %cmp45, label %for.body, label %for.end.loopexit, !dbg !2374

for.body:                                         ; preds = %for.cond
  %arrayidx46 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call44, i64 %indvars.iv, !dbg !2375
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx46, align 8, !dbg !2375
  call void @llvm.dbg.value(metadata %struct.rtx_def** %cinsn, metadata !2304, metadata !DIExpression(DW_OP_deref)), !dbg !2307
  %call47 = call fastcc %struct.rtx_def* @may_unswitch_on(%struct.basic_block_def* %15, %struct.loop* %loop, %struct.rtx_def** nonnull %cinsn) #8, !dbg !2377
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call47, metadata !2299, metadata !DIExpression()), !dbg !2307
  store %struct.rtx_def* %call47, %struct.rtx_def** %cond, align 8, !dbg !2378
  %tobool48 = icmp eq %struct.rtx_def* %call47, null, !dbg !2378
  br i1 %tobool48, label %for.inc, label %for.body.for.end_crit_edge, !dbg !2379

for.body.for.end_crit_edge:                       ; preds = %for.body
  %indvars.iv.lcssa10 = phi i64 [ %indvars.iv, %for.body ], !dbg !2371
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa10, metadata !2298, metadata !DIExpression()), !dbg !2307
  %.pre = load i32, i32* %num_nodes, align 4, !dbg !2380
  br label %for.end, !dbg !2379

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2382
  br label %for.cond, !dbg !2383, !llvm.loop !2384

for.end.loopexit:                                 ; preds = %for.cond
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.cond ], !dbg !2371
  %.lcssa = phi i32 [ %13, %for.cond ], !dbg !2372
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !2298, metadata !DIExpression()), !dbg !2307
  br label %for.end, !dbg !2386

for.end:                                          ; preds = %for.end.loopexit, %for.body.for.end_crit_edge
  %indvars.iv11 = phi i64 [ %indvars.iv.lcssa10, %for.body.for.end_crit_edge ], [ %indvars.iv.lcssa, %for.end.loopexit ]
  %16 = phi i32 [ %.pre, %for.body.for.end_crit_edge ], [ %.lcssa, %for.end.loopexit ], !dbg !2380
  %i.06 = trunc i64 %indvars.iv11 to i32, !dbg !2307
  call void @llvm.dbg.value(metadata i32 %i.06, metadata !2298, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i32 %i.06, metadata !2298, metadata !DIExpression()), !dbg !2307
  %cmp52 = icmp eq i32 %16, %i.06, !dbg !2386
  br i1 %cmp52, label %if.then53, label %if.end54, !dbg !2387

if.then53:                                        ; preds = %for.end
  %call44.lcssa = phi %struct.basic_block_def** [ %call44, %for.end ], !dbg !2368
  %17 = bitcast %struct.basic_block_def** %call44.lcssa to i8*, !dbg !2388
  call void @free(i8* %17) #6, !dbg !2390
  br label %cleanup, !dbg !2391

if.end54:                                         ; preds = %for.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8, !dbg !2392
  call void @llvm.dbg.value(metadata %struct.rtx_def* %18, metadata !2299, metadata !DIExpression()), !dbg !2307
  %19 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !2394
  %cmp55 = icmp eq %struct.rtx_def* %18, %19, !dbg !2395
  br i1 %cmp55, label %if.end73, label %land.lhs.true, !dbg !2396

land.lhs.true:                                    ; preds = %if.end54
  call void @llvm.dbg.value(metadata %struct.rtx_def* %18, metadata !2299, metadata !DIExpression()), !dbg !2307
  %20 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8, !dbg !2397
  %cmp56 = icmp eq %struct.rtx_def* %18, %20, !dbg !2398
  br i1 %cmp56, label %if.end73, label %if.then57, !dbg !2399

if.then57:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.rtx_def* %18, metadata !2299, metadata !DIExpression()), !dbg !2307
  %call58 = call %struct.rtx_def* @reversed_condition(%struct.rtx_def* %18) #8, !dbg !2400
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call58, metadata !2300, metadata !DIExpression()), !dbg !2307
  %tobool59 = icmp eq %struct.rtx_def* %call58, null, !dbg !2402
  br i1 %tobool59, label %if.end62, label %if.then60, !dbg !2404

if.then60:                                        ; preds = %if.then57
  %call61 = call %struct.rtx_def* @canon_condition(%struct.rtx_def* nonnull %call58) #6, !dbg !2405
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call61, metadata !2300, metadata !DIExpression()), !dbg !2307
  br label %if.end62, !dbg !2406

if.end62:                                         ; preds = %if.then57, %if.then60
  %rcond.1 = phi %struct.rtx_def* [ %call61, %if.then60 ], [ null, %if.then57 ], !dbg !2407
  call void @llvm.dbg.value(metadata %struct.rtx_def* %rcond.1, metadata !2300, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond_checked, metadata !2303, metadata !DIExpression()), !dbg !2307
  br label %for.cond63, !dbg !2408

for.cond63:                                       ; preds = %for.body65, %if.end62
  %acond.0 = phi %struct.rtx_def* [ %cond_checked, %if.end62 ], [ %23, %for.body65 ], !dbg !2410
  call void @llvm.dbg.value(metadata %struct.rtx_def* %acond.0, metadata !2303, metadata !DIExpression()), !dbg !2307
  %tobool64 = icmp eq %struct.rtx_def* %acond.0, null, !dbg !2411
  br i1 %tobool64, label %if.end73.loopexit, label %for.body65, !dbg !2411

for.body65:                                       ; preds = %for.cond63
  %arrayidx66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %acond.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2412
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**, !dbg !2412
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2412
  call void @llvm.dbg.value(metadata %struct.rtx_def** %cond, metadata !2299, metadata !DIExpression(DW_OP_deref)), !dbg !2307
  call void @simplify_using_condition(%struct.rtx_def* %21, %struct.rtx_def** nonnull %cond, %struct.bitmap_head_def* null) #6, !dbg !2414
  %22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %acond.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2415
  %rt_rtx71 = bitcast %union.rtunion_def* %22 to %struct.rtx_def**, !dbg !2415
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx71, align 8, !dbg !2415
  call void @llvm.dbg.value(metadata %struct.rtx_def* %23, metadata !2303, metadata !DIExpression()), !dbg !2307
  br label %for.cond63, !dbg !2416, !llvm.loop !2417

if.end73.loopexit:                                ; preds = %for.cond63
  %.pre3 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8, !dbg !2419
  br label %if.end73, !dbg !2419

if.end73:                                         ; preds = %if.end73.loopexit, %land.lhs.true, %if.end54
  %24 = phi %struct.rtx_def* [ %18, %land.lhs.true ], [ %18, %if.end54 ], [ %.pre3, %if.end73.loopexit ], !dbg !2419
  %rcond.2 = phi %struct.rtx_def* [ %rcond.0, %land.lhs.true ], [ %rcond.0, %if.end54 ], [ %rcond.1, %if.end73.loopexit ], !dbg !2307
  call void @llvm.dbg.value(metadata %struct.rtx_def* %rcond.2, metadata !2300, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata %struct.rtx_def* %24, metadata !2299, metadata !DIExpression()), !dbg !2307
  %25 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8, !dbg !2421
  %cmp74 = icmp eq %struct.rtx_def* %24, %25, !dbg !2422
  br i1 %cmp74, label %if.then75, label %if.else, !dbg !2423

if.then75:                                        ; preds = %if.end73
  %idxprom76 = and i64 %indvars.iv11, 4294967295, !dbg !2424
  %arrayidx77 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call44, i64 %idxprom76, !dbg !2424
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx77, align 8, !dbg !2424
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i64 0, i32 1, !dbg !2424
  %27 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2424
  %tobool78 = icmp eq %struct.VEC_edge_gc* %27, null, !dbg !2424
  br i1 %tobool78, label %cond.end, label %cond.true, !dbg !2424

cond.true:                                        ; preds = %if.then75
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %27, i64 0, i32 0, !dbg !2424
  br label %cond.end, !dbg !2424

cond.end:                                         ; preds = %if.then75, %cond.true
  %cond82 = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %if.then75 ], !dbg !2424
  %call83 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond82, i32 0) #8, !dbg !2424
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call83, i64 0, i32 7, !dbg !2424
  %28 = load i32, i32* %flags, align 8, !dbg !2424
  %and = and i32 %28, 1, !dbg !2424
  %tobool84 = icmp eq i32 %and, 0, !dbg !2424
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx77, align 8, !dbg !2424
  %succs88 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i64 0, i32 1, !dbg !2424
  %30 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs88, align 8, !dbg !2424
  %tobool89 = icmp ne %struct.VEC_edge_gc* %30, null, !dbg !2424
  br i1 %tobool84, label %cond.false99, label %cond.true85, !dbg !2424

cond.true85:                                      ; preds = %cond.end
  br i1 %tobool89, label %cond.true90, label %cond.end96, !dbg !2424

cond.true90:                                      ; preds = %cond.true85
  %base94 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %30, i64 0, i32 0, !dbg !2424
  br label %cond.end96, !dbg !2424

cond.end96:                                       ; preds = %cond.true85, %cond.true90
  %cond97 = phi %struct.VEC_edge_base* [ %base94, %cond.true90 ], [ null, %cond.true85 ], !dbg !2424
  %call98 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond97, i32 0) #8, !dbg !2424
  br label %cond.end113, !dbg !2424

cond.false99:                                     ; preds = %cond.end
  br i1 %tobool89, label %cond.true104, label %cond.end110, !dbg !2424

cond.true104:                                     ; preds = %cond.false99
  %base108 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %30, i64 0, i32 0, !dbg !2424
  br label %cond.end110, !dbg !2424

cond.end110:                                      ; preds = %cond.false99, %cond.true104
  %cond111 = phi %struct.VEC_edge_base* [ %base108, %cond.true104 ], [ null, %cond.false99 ], !dbg !2424
  %call112 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond111, i32 1) #8, !dbg !2424
  br label %cond.end113, !dbg !2424

cond.end113:                                      ; preds = %cond.end110, %cond.end96
  %cond114 = phi %struct.edge_def* [ %call98, %cond.end96 ], [ %call112, %cond.end110 ], !dbg !2424
  call void @llvm.dbg.value(metadata %struct.edge_def* %cond114, metadata !2306, metadata !DIExpression()), !dbg !2307
  %call115 = call zeroext i8 @remove_path(%struct.edge_def* %cond114) #6, !dbg !2426
  %31 = bitcast %struct.basic_block_def** %call44 to i8*, !dbg !2427
  call void @free(i8* %31) #6, !dbg !2428
  call void @llvm.dbg.value(metadata i32 1, metadata !2305, metadata !DIExpression()), !dbg !2307
  br label %do.cond, !dbg !2429

if.else:                                          ; preds = %if.end73
  call void @llvm.dbg.value(metadata %struct.rtx_def* %24, metadata !2299, metadata !DIExpression()), !dbg !2307
  %32 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !2430
  %cmp116 = icmp eq %struct.rtx_def* %24, %32, !dbg !2432
  br i1 %cmp116, label %if.then117, label %do.cond, !dbg !2433

if.then117:                                       ; preds = %if.else
  %idxprom118 = and i64 %indvars.iv11, 4294967295, !dbg !2434
  %arrayidx119 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call44, i64 %idxprom118, !dbg !2434
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx119, align 8, !dbg !2434
  %succs120 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i64 0, i32 1, !dbg !2434
  %34 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs120, align 8, !dbg !2434
  %tobool121 = icmp eq %struct.VEC_edge_gc* %34, null, !dbg !2434
  br i1 %tobool121, label %cond.end128, label %cond.true122, !dbg !2434

cond.true122:                                     ; preds = %if.then117
  %base126 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %34, i64 0, i32 0, !dbg !2434
  br label %cond.end128, !dbg !2434

cond.end128:                                      ; preds = %if.then117, %cond.true122
  %cond129 = phi %struct.VEC_edge_base* [ %base126, %cond.true122 ], [ null, %if.then117 ], !dbg !2434
  %call130 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond129, i32 0) #8, !dbg !2434
  %flags131 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call130, i64 0, i32 7, !dbg !2434
  %35 = load i32, i32* %flags131, align 8, !dbg !2434
  %and132 = and i32 %35, 1, !dbg !2434
  %tobool133 = icmp eq i32 %and132, 0, !dbg !2434
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx119, align 8, !dbg !2434
  %succs137 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %36, i64 0, i32 1, !dbg !2434
  %37 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs137, align 8, !dbg !2434
  %tobool138 = icmp ne %struct.VEC_edge_gc* %37, null, !dbg !2434
  br i1 %tobool133, label %cond.false148, label %cond.true134, !dbg !2434

cond.true134:                                     ; preds = %cond.end128
  br i1 %tobool138, label %cond.true139, label %cond.end145, !dbg !2434

cond.true139:                                     ; preds = %cond.true134
  %base143 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %37, i64 0, i32 0, !dbg !2434
  br label %cond.end145, !dbg !2434

cond.end145:                                      ; preds = %cond.true134, %cond.true139
  %cond146 = phi %struct.VEC_edge_base* [ %base143, %cond.true139 ], [ null, %cond.true134 ], !dbg !2434
  %call147 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond146, i32 1) #8, !dbg !2434
  br label %cond.end162, !dbg !2434

cond.false148:                                    ; preds = %cond.end128
  br i1 %tobool138, label %cond.true153, label %cond.end159, !dbg !2434

cond.true153:                                     ; preds = %cond.false148
  %base157 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %37, i64 0, i32 0, !dbg !2434
  br label %cond.end159, !dbg !2434

cond.end159:                                      ; preds = %cond.false148, %cond.true153
  %cond160 = phi %struct.VEC_edge_base* [ %base157, %cond.true153 ], [ null, %cond.false148 ], !dbg !2434
  %call161 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond160, i32 0) #8, !dbg !2434
  br label %cond.end162, !dbg !2434

cond.end162:                                      ; preds = %cond.end159, %cond.end145
  %cond163 = phi %struct.edge_def* [ %call147, %cond.end145 ], [ %call161, %cond.end159 ], !dbg !2434
  call void @llvm.dbg.value(metadata %struct.edge_def* %cond163, metadata !2306, metadata !DIExpression()), !dbg !2307
  %call164 = call zeroext i8 @remove_path(%struct.edge_def* %cond163) #6, !dbg !2436
  %38 = bitcast %struct.basic_block_def** %call44 to i8*, !dbg !2437
  call void @free(i8* %38) #6, !dbg !2438
  call void @llvm.dbg.value(metadata i32 1, metadata !2305, metadata !DIExpression()), !dbg !2307
  br label %do.cond, !dbg !2439

do.cond:                                          ; preds = %cond.end113, %cond.end162, %if.else
  %repeat.1 = phi i1 [ true, %cond.end113 ], [ true, %cond.end162 ], [ false, %if.else ]
  br i1 %repeat.1, label %do.body, label %do.end, !dbg !2440, !llvm.loop !2441

do.end:                                           ; preds = %do.cond
  %rcond.2.lcssa = phi %struct.rtx_def* [ %rcond.2, %do.cond ], !dbg !2307
  %call44.lcssa13 = phi %struct.basic_block_def** [ %call44, %do.cond ], !dbg !2368
  %indvars.iv11.lcssa12 = phi i64 [ %indvars.iv11, %do.cond ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %rcond.2.lcssa, metadata !2300, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata %struct.rtx_def* %rcond.2.lcssa, metadata !2300, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata %struct.rtx_def* %rcond.2.lcssa, metadata !2300, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i32 %i.06, metadata !2298, metadata !DIExpression()), !dbg !2307
  %39 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8, !dbg !2443
  call void @llvm.dbg.value(metadata %struct.rtx_def* %39, metadata !2299, metadata !DIExpression()), !dbg !2307
  %call168 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 0, %struct.rtx_def* %39, %struct.rtx_def* %cond_checked) #6, !dbg !2444
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call168, metadata !2301, metadata !DIExpression()), !dbg !2307
  %tobool169 = icmp eq %struct.rtx_def* %rcond.2.lcssa, null, !dbg !2445
  br i1 %tobool169, label %if.end173, label %if.then170, !dbg !2447

if.then170:                                       ; preds = %do.end
  %call171 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 0, %struct.rtx_def* nonnull %rcond.2.lcssa, %struct.rtx_def* %cond_checked) #6, !dbg !2448
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call171, metadata !2302, metadata !DIExpression()), !dbg !2307
  br label %if.end173, !dbg !2449

if.end173:                                        ; preds = %do.end, %if.then170
  %rconds.0 = phi %struct.rtx_def* [ %call171, %if.then170 ], [ %cond_checked, %do.end ], !dbg !2450
  call void @llvm.dbg.value(metadata %struct.rtx_def* %rconds.0, metadata !2302, metadata !DIExpression()), !dbg !2307
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2451
  %tobool174 = icmp eq %struct._IO_FILE* %40, null, !dbg !2451
  br i1 %tobool174, label %if.end177, label %if.then175, !dbg !2453

if.then175:                                       ; preds = %if.end173
  %call176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2454
  br label %if.end177, !dbg !2454

if.end177:                                        ; preds = %if.end173, %if.then175
  %idxprom178 = and i64 %indvars.iv11.lcssa12, 4294967295, !dbg !2455
  %arrayidx179 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call44.lcssa13, i64 %idxprom178, !dbg !2455
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx179, align 8, !dbg !2455
  %42 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8, !dbg !2456
  call void @llvm.dbg.value(metadata %struct.rtx_def* %42, metadata !2299, metadata !DIExpression()), !dbg !2307
  %43 = load %struct.rtx_def*, %struct.rtx_def** %cinsn, align 8, !dbg !2457
  call void @llvm.dbg.value(metadata %struct.rtx_def* %43, metadata !2304, metadata !DIExpression()), !dbg !2307
  %call180 = call fastcc %struct.loop* @unswitch_loop(%struct.loop* %loop, %struct.basic_block_def* %41, %struct.rtx_def* %42, %struct.rtx_def* %43) #8, !dbg !2458
  call void @llvm.dbg.value(metadata %struct.loop* %call180, metadata !2297, metadata !DIExpression()), !dbg !2307
  %tobool181 = icmp eq %struct.loop* %call180, null, !dbg !2459
  br i1 %tobool181, label %cond.true182, label %cond.end184, !dbg !2459

cond.true182:                                     ; preds = %if.end177
  call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 369, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2459
  br label %cond.end184, !dbg !2459

cond.end184:                                      ; preds = %if.end177, %cond.true182
  %add = add nsw i32 %num, 1, !dbg !2460
  call fastcc void @unswitch_single_loop(%struct.loop* %call180, %struct.rtx_def* %rconds.0, i32 %add) #8, !dbg !2461
  call fastcc void @unswitch_single_loop(%struct.loop* %loop, %struct.rtx_def* %call168, i32 %add) #8, !dbg !2462
  call void @free_EXPR_LIST_node(%struct.rtx_def* %call168) #6, !dbg !2463
  br i1 %tobool169, label %if.end189, label %if.then188, !dbg !2464

if.then188:                                       ; preds = %cond.end184
  call void @free_EXPR_LIST_node(%struct.rtx_def* %rconds.0) #6, !dbg !2465
  br label %if.end189, !dbg !2465

if.end189:                                        ; preds = %cond.end184, %if.then188
  %44 = bitcast %struct.basic_block_def** %call44.lcssa13 to i8*, !dbg !2467
  call void @free(i8* %44) #6, !dbg !2468
  br label %cleanup, !dbg !2469

cleanup:                                          ; preds = %if.then, %if.then4, %if.then22, %if.then30, %if.then38, %if.then12, %if.then40, %if.then32, %if.then24, %if.then14, %if.then6, %if.then1, %if.end189, %if.then53
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2469
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2469
  ret void, !dbg !2469
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) unnamed_addr #0 !dbg !2470 {
entry:
  %anum = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2474, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2475, metadata !DIExpression()), !dbg !2477
  %0 = bitcast i32* %anum to i8*, !dbg !2478
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2478
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2477
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2477
  br label %while.cond, !dbg !2479

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2480
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !2480
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2480

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !2480
  br label %cond.end, !dbg !2480

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !2480
  %2 = load i32, i32* %idx, align 8, !dbg !2480
  call void @llvm.dbg.value(metadata i32* %anum, metadata !2476, metadata !DIExpression(DW_OP_deref)), !dbg !2477
  %call = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond, i32 %2, i32* nonnull %anum) #8, !dbg !2480
  %tobool2 = icmp eq i32 %call, 0, !dbg !2479
  br i1 %tobool2, label %while.end, label %while.body, !dbg !2479

while.body:                                       ; preds = %cond.end
  %3 = load i32, i32* %idx, align 8, !dbg !2481
  %inc = add i32 %3, 1, !dbg !2481
  store i32 %inc, i32* %idx, align 8, !dbg !2481
  %4 = load i32, i32* %anum, align 4, !dbg !2483
  call void @llvm.dbg.value(metadata i32 %4, metadata !2476, metadata !DIExpression()), !dbg !2477
  %call4 = call fastcc %struct.loop* @get_loop(i32 %4) #8, !dbg !2484
  store %struct.loop* %call4, %struct.loop** %loop, align 8, !dbg !2485
  %tobool5 = icmp eq %struct.loop* %call4, null, !dbg !2486
  br i1 %tobool5, label %while.cond, label %cleanup.loopexit, !dbg !2488, !llvm.loop !2489

while.end:                                        ; preds = %cond.end
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %to_visit) #8, !dbg !2491
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2492
  br label %cleanup, !dbg !2493

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !2493

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2493
  ret void, !dbg !2493
}

declare dso_local void @iv_analysis_done() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @reversed_condition(%struct.rtx_def* %cond) local_unnamed_addr #5 !dbg !2494 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond, metadata !2498, metadata !DIExpression()), !dbg !2500
  %call = tail call i32 @reversed_comparison_code(%struct.rtx_def* %cond, %struct.rtx_def* null) #6, !dbg !2501
  call void @llvm.dbg.value(metadata i32 %call, metadata !2499, metadata !DIExpression()), !dbg !2500
  %cmp = icmp eq i32 %call, 0, !dbg !2502
  br i1 %cmp, label %cleanup, label %if.else, !dbg !2504

if.else:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i64 0, i32 0, !dbg !2505
  %bf.load = load i32, i32* %0, align 8, !dbg !2505
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2505
  %bf.clear = and i32 %bf.lshr, 255, !dbg !2505
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2505
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2505
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2505
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2505
  %rt_rtx4 = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !2505
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx4, align 8, !dbg !2505
  %call5 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 %call, i32 %bf.clear, %struct.rtx_def* %1, %struct.rtx_def* %3) #6, !dbg !2505
  br label %cleanup, !dbg !2506

cleanup:                                          ; preds = %entry, %if.else
  %retval.0 = phi %struct.rtx_def* [ %call5, %if.else ], [ null, %entry ], !dbg !2507
  ret %struct.rtx_def* %retval.0, !dbg !2508
}

declare dso_local i32 @reversed_comparison_code(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32, i32, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2509 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !2513, metadata !DIExpression()), !dbg !2514
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 4) #6, !dbg !2515
  %0 = bitcast i8* %call to %struct.VEC_int_heap*, !dbg !2515
  ret %struct.VEC_int_heap* %0, !dbg !2515
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !dbg !2516 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2519
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2519
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2519
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2519
  br i1 %tobool, label %return, label %if.end, !dbg !2521

if.end:                                           ; preds = %entry
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !2522
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2522
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !2522
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !2522

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !2522
  br label %cond.end, !dbg !2522

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !2522
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !2522
  br label %return, !dbg !2523

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ], !dbg !2524
  ret i32 %retval.0, !dbg !2525
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %vec_, i32 %ix_, %struct.loop** %ptr) unnamed_addr #0 !dbg !2526 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2532, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2533, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata %struct.loop** %ptr, metadata !2534, metadata !DIExpression()), !dbg !2535
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !2536
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2536

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !2536
  %0 = load i32, i32* %num, align 8, !dbg !2536
  %cmp = icmp ugt i32 %0, %ix_, !dbg !2536
  br i1 %cmp, label %if.then, label %if.else, !dbg !2538

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !2539
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2539
  %1 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !2539
  br label %return, !dbg !2539

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !2541

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.loop* [ null, %if.else ], [ %1, %if.then ], !dbg !2543
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !2543
  store %struct.loop* %storemerge, %struct.loop** %ptr, align 8, !dbg !2543
  ret i32 %retval.0, !dbg !2538
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !2544 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !2550, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !2551, metadata !DIExpression()), !dbg !2553
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !2554
  %0 = load i32, i32* %num1, align 4, !dbg !2554
  %inc = add i32 %0, 1, !dbg !2554
  store i32 %inc, i32* %num1, align 4, !dbg !2554
  %idxprom = zext i32 %0 to i64, !dbg !2554
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2554
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !2552, metadata !DIExpression()), !dbg !2553
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !2554
  ret i32* %arrayidx, !dbg !2554
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !2555 {
entry:
  unreachable, !dbg !2563
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !2564 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2568, metadata !DIExpression()), !dbg !2569
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !2570
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2570

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !2570
  %0 = load i32, i32* %num, align 8, !dbg !2570
  br label %cond.end, !dbg !2570

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2570
  ret i32 %cond, !dbg !2570
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2571 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2575, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2576, metadata !DIExpression()), !dbg !2577
  br label %land.end, !dbg !2578

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2578
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2578
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !2578
  ret %struct.loop* %0, !dbg !2578
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %vec_, i32 %ix_, i32* %ptr) unnamed_addr #0 !dbg !2579 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !2585, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2586, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32* %ptr, metadata !2587, metadata !DIExpression()), !dbg !2588
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !2589
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2589

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !2589
  %0 = load i32, i32* %num, align 4, !dbg !2589
  %cmp = icmp ugt i32 %0, %ix_, !dbg !2589
  br i1 %cmp, label %if.then, label %if.else, !dbg !2591

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !2592
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2592
  %1 = load i32, i32* %arrayidx, align 4, !dbg !2592
  br label %return, !dbg !2592

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !2594

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %1, %if.then ], !dbg !2596
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !2596
  store i32 %storemerge, i32* %ptr, align 4, !dbg !2596
  ret i32 %retval.0, !dbg !2591
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @get_loop(i32 %num) unnamed_addr #0 !dbg !2597 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !2601, metadata !DIExpression()), !dbg !2602
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2603
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2603
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2603
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !2603
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2603
  %tobool = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !2603
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2603

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !2603
  br label %cond.end, !dbg !2603

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2603
  %call = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %num) #8, !dbg !2603
  ret %struct.loop* %call, !dbg !2604
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !2605 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !2610, metadata !DIExpression()), !dbg !2611
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !2612
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !2612
  br i1 %tobool, label %if.end, label %if.then, !dbg !2614

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !2614
  tail call void @free(i8* nonnull %1) #6, !dbg !2612
  br label %if.end, !dbg !2612

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !2614
  ret void, !dbg !2614
}

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local zeroext i8 @can_duplicate_loop_p(%struct.loop*) local_unnamed_addr #2

declare dso_local i32 @num_loop_insns(%struct.loop*) local_unnamed_addr #2

declare dso_local zeroext i8 @optimize_loop_for_size_p(%struct.loop*) local_unnamed_addr #2

declare dso_local i32 @expected_loop_iterations(%struct.loop*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def** @get_loop_body(%struct.loop*) local_unnamed_addr #2

declare dso_local void @iv_analysis_loop_init(%struct.loop*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @may_unswitch_on(%struct.basic_block_def* %bb, %struct.loop* %loop, %struct.rtx_def** %cinsn) unnamed_addr #5 !dbg !2615 {
entry:
  %at = alloca %struct.rtx_def*, align 8
  %op = alloca [2 x %struct.rtx_def*], align 16
  %iv = alloca %struct.rtx_iv, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2620, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2621, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata %struct.rtx_def** %cinsn, metadata !2622, metadata !DIExpression()), !dbg !2641
  %0 = bitcast %struct.rtx_def** %at to i8*, !dbg !2642
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2642
  %1 = bitcast [2 x %struct.rtx_def*]* %op to i8*, !dbg !2642
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2642
  call void @llvm.dbg.declare(metadata [2 x %struct.rtx_def*]* %op, metadata !2625, metadata !DIExpression()), !dbg !2643
  %2 = bitcast %struct.rtx_iv* %iv to i8*, !dbg !2644
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %2) #7, !dbg !2644
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !2645
  %3 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2645
  %tobool = icmp eq %struct.VEC_edge_gc* %3, null, !dbg !2645
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2645

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %3, i64 0, i32 0, !dbg !2645
  br label %cond.end, !dbg !2645

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2645
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2645
  %cmp = icmp eq i32 %call, 2, !dbg !2647
  br i1 %cmp, label %if.end, label %cleanup, !dbg !2648

if.end:                                           ; preds = %cond.end
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !2649
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2649
  %4 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2649
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %4, i64 0, i32 1, !dbg !2649
  %5 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2649
  %call2 = tail call i32 @any_condjump_p(%struct.rtx_def* %5) #6, !dbg !2651
  %tobool3 = icmp eq i32 %call2, 0, !dbg !2651
  br i1 %tobool3, label %cleanup, label %if.end5, !dbg !2652

if.end5:                                          ; preds = %if.end
  %6 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2653
  %tobool7 = icmp eq %struct.VEC_edge_gc* %6, null, !dbg !2653
  br i1 %tobool7, label %cond.end12, label %cond.true8, !dbg !2653

cond.true8:                                       ; preds = %if.end5
  %base10 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %6, i64 0, i32 0, !dbg !2653
  br label %cond.end12, !dbg !2653

cond.end12:                                       ; preds = %if.end5, %cond.true8
  %cond13 = phi %struct.VEC_edge_base* [ %base10, %cond.true8 ], [ null, %if.end5 ], !dbg !2653
  %call14 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond13, i32 0) #8, !dbg !2653
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call14, i64 0, i32 1, !dbg !2655
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2655
  %call15 = tail call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %7) #6, !dbg !2656
  %tobool16 = icmp eq i8 %call15, 0, !dbg !2656
  br i1 %tobool16, label %cleanup, label %lor.lhs.false, !dbg !2657

lor.lhs.false:                                    ; preds = %cond.end12
  %8 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2658
  %tobool18 = icmp eq %struct.VEC_edge_gc* %8, null, !dbg !2658
  br i1 %tobool18, label %cond.end23, label %cond.true19, !dbg !2658

cond.true19:                                      ; preds = %lor.lhs.false
  %base21 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %8, i64 0, i32 0, !dbg !2658
  br label %cond.end23, !dbg !2658

cond.end23:                                       ; preds = %lor.lhs.false, %cond.true19
  %cond24 = phi %struct.VEC_edge_base* [ %base21, %cond.true19 ], [ null, %lor.lhs.false ], !dbg !2658
  %call25 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond24, i32 1) #8, !dbg !2658
  %dest26 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call25, i64 0, i32 1, !dbg !2659
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %dest26, align 8, !dbg !2659
  %call27 = tail call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %9) #6, !dbg !2660
  %tobool28 = icmp eq i8 %call27, 0, !dbg !2660
  br i1 %tobool28, label %cleanup, label %if.end30, !dbg !2661

if.end30:                                         ; preds = %cond.end23
  %call31 = tail call zeroext i8 @just_once_each_iteration_p(%struct.loop* %loop, %struct.basic_block_def* %bb) #6, !dbg !2662
  %tobool32 = icmp eq i8 %call31, 0, !dbg !2662
  br i1 %tobool32, label %cleanup, label %if.end34, !dbg !2664

if.end34:                                         ; preds = %if.end30
  %10 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2665
  %end_37 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %10, i64 0, i32 1, !dbg !2665
  %11 = load %struct.rtx_def*, %struct.rtx_def** %end_37, align 8, !dbg !2665
  call void @llvm.dbg.value(metadata %struct.rtx_def** %at, metadata !2624, metadata !DIExpression(DW_OP_deref)), !dbg !2641
  %call38 = call %struct.rtx_def* @get_condition(%struct.rtx_def* %11, %struct.rtx_def** nonnull %at, i32 1, i32 0) #6, !dbg !2666
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call38, metadata !2623, metadata !DIExpression()), !dbg !2641
  %tobool39 = icmp eq %struct.rtx_def* %call38, null, !dbg !2667
  br i1 %tobool39, label %cleanup, label %for.cond.preheader, !dbg !2669

for.cond.preheader:                               ; preds = %if.end34
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call38, i64 0, i32 1, !dbg !2670
  %fld = bitcast %union.u* %u to [1 x %union.rtunion_def]*, !dbg !2670
  %step = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %iv, i64 0, i32 1, !dbg !2674
  %first_special = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %iv, i64 0, i32 7, !dbg !2674
  br label %for.cond, !dbg !2676

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !2677
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2639, metadata !DIExpression()), !dbg !2641
  %exitcond = icmp eq i64 %indvars.iv, 2, !dbg !2678
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2676

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i64 0, i64 %indvars.iv, !dbg !2679
  %12 = bitcast %union.rtunion_def* %arrayidx to i64*, !dbg !2679
  %13 = load i64, i64* %12, align 8, !dbg !2679
  %arrayidx44 = getelementptr inbounds [2 x %struct.rtx_def*], [2 x %struct.rtx_def*]* %op, i64 0, i64 %indvars.iv, !dbg !2680
  %14 = bitcast %struct.rtx_def** %arrayidx44 to i64*, !dbg !2681
  store i64 %13, i64* %14, align 8, !dbg !2681
  %15 = inttoptr i64 %13 to i32*, !dbg !2682
  %bf.load = load i32, i32* %15, align 8, !dbg !2682
  %bf.clear = and i32 %bf.load, 65535, !dbg !2682
  %idxprom47 = zext i32 %bf.clear to i64, !dbg !2682
  %arrayidx48 = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom47, !dbg !2682
  %16 = load i32, i32* %arrayidx48, align 4, !dbg !2682
  %cmp49 = icmp eq i32 %16, 9, !dbg !2682
  br i1 %cmp49, label %for.inc, label %if.end51, !dbg !2684

if.end51:                                         ; preds = %for.body
  %17 = inttoptr i64 %13 to %struct.rtx_def*, !dbg !2684
  %18 = load %struct.rtx_def*, %struct.rtx_def** %at, align 8, !dbg !2685
  call void @llvm.dbg.value(metadata %struct.rtx_def* %18, metadata !2624, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata %struct.rtx_iv* %iv, metadata !2628, metadata !DIExpression(DW_OP_deref)), !dbg !2641
  %call54 = call zeroext i8 @iv_analyze(%struct.rtx_def* %18, %struct.rtx_def* %17, %struct.rtx_iv* nonnull %iv) #6, !dbg !2687
  %tobool55 = icmp eq i8 %call54, 0, !dbg !2687
  br i1 %tobool55, label %cleanup.loopexit, label %if.end57, !dbg !2688

if.end57:                                         ; preds = %if.end51
  %19 = load %struct.rtx_def*, %struct.rtx_def** %step, align 8, !dbg !2689
  %20 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !2690
  %cmp58 = icmp eq %struct.rtx_def* %19, %20, !dbg !2691
  br i1 %cmp58, label %lor.lhs.false59, label %cleanup.loopexit, !dbg !2692

lor.lhs.false59:                                  ; preds = %if.end57
  %bf.load60 = load i8, i8* %first_special, align 8, !dbg !2693
  %bf.clear61 = and i8 %bf.load60, 1, !dbg !2693
  %tobool62 = icmp eq i8 %bf.clear61, 0, !dbg !2694
  br i1 %tobool62, label %if.end64, label %cleanup.loopexit, !dbg !2695

if.end64:                                         ; preds = %lor.lhs.false59
  call void @llvm.dbg.value(metadata %struct.rtx_iv* %iv, metadata !2628, metadata !DIExpression(DW_OP_deref)), !dbg !2641
  %call65 = call %struct.rtx_def* @get_iv_value(%struct.rtx_iv* nonnull %iv, %struct.rtx_def* %19) #6, !dbg !2696
  store %struct.rtx_def* %call65, %struct.rtx_def** %arrayidx44, align 8, !dbg !2697
  br label %for.inc, !dbg !2698

for.inc:                                          ; preds = %for.body, %if.end64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2699
  call void @llvm.dbg.value(metadata i32 undef, metadata !2639, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2641
  br label %for.cond, !dbg !2700, !llvm.loop !2701

for.end:                                          ; preds = %for.cond
  %21 = bitcast [2 x %struct.rtx_def*]* %op to i32**, !dbg !2703
  %22 = load i32*, i32** %21, align 16, !dbg !2703
  %bf.load69 = load i32, i32* %22, align 8, !dbg !2703
  %bf.lshr = lshr i32 %bf.load69, 16, !dbg !2703
  %bf.clear70 = and i32 %bf.lshr, 255, !dbg !2703
  call void @llvm.dbg.value(metadata i32 %bf.clear70, metadata !2640, metadata !DIExpression()), !dbg !2641
  %cmp71 = icmp eq i32 %bf.clear70, 0, !dbg !2704
  %23 = bitcast i32* %22 to %struct.rtx_def*, !dbg !2706
  br i1 %cmp71, label %if.then72, label %if.end77, !dbg !2706

if.then72:                                        ; preds = %for.end
  %arrayidx73 = getelementptr inbounds [2 x %struct.rtx_def*], [2 x %struct.rtx_def*]* %op, i64 0, i64 1, !dbg !2707
  %24 = bitcast %struct.rtx_def** %arrayidx73 to i32**, !dbg !2707
  %25 = load i32*, i32** %24, align 8, !dbg !2707
  %bf.load74 = load i32, i32* %25, align 8, !dbg !2707
  %bf.lshr75 = lshr i32 %bf.load74, 16, !dbg !2707
  %bf.clear76 = and i32 %bf.lshr75, 255, !dbg !2707
  call void @llvm.dbg.value(metadata i32 %bf.clear76, metadata !2640, metadata !DIExpression()), !dbg !2641
  br label %if.end77, !dbg !2708

if.end77:                                         ; preds = %if.then72, %for.end
  %mode.0 = phi i32 [ %bf.clear76, %if.then72 ], [ %bf.clear70, %for.end ], !dbg !2641
  call void @llvm.dbg.value(metadata i32 %mode.0, metadata !2640, metadata !DIExpression()), !dbg !2641
  %idxprom78 = zext i32 %mode.0 to i64, !dbg !2709
  %arrayidx79 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom78, !dbg !2709
  %26 = load i8, i8* %arrayidx79, align 1, !dbg !2709
  %cmp80 = icmp eq i8 %26, 1, !dbg !2711
  br i1 %cmp80, label %if.then82, label %if.end110, !dbg !2712

if.then82:                                        ; preds = %if.end77
  %27 = load %struct.rtx_def*, %struct.rtx_def** %at, align 8, !dbg !2713
  call void @llvm.dbg.value(metadata %struct.rtx_def* %27, metadata !2624, metadata !DIExpression()), !dbg !2641
  %28 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2716
  %end_85 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %28, i64 0, i32 1, !dbg !2716
  %29 = load %struct.rtx_def*, %struct.rtx_def** %end_85, align 8, !dbg !2716
  %cmp86 = icmp eq %struct.rtx_def* %27, %29, !dbg !2717
  br i1 %cmp86, label %if.end89, label %cleanup, !dbg !2718

if.end89:                                         ; preds = %if.then82
  %arrayidx93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call38, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2719
  %rt_rtx94 = bitcast %union.rtunion_def* %arrayidx93 to %struct.rtx_def**, !dbg !2719
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx94, align 8, !dbg !2719
  %call95 = call i32 @rtx_equal_p(%struct.rtx_def* %23, %struct.rtx_def* %30) #6, !dbg !2721
  %tobool96 = icmp eq i32 %call95, 0, !dbg !2721
  br i1 %tobool96, label %cleanup, label %lor.lhs.false97, !dbg !2722

lor.lhs.false97:                                  ; preds = %if.end89
  %arrayidx98 = getelementptr inbounds [2 x %struct.rtx_def*], [2 x %struct.rtx_def*]* %op, i64 0, i64 1, !dbg !2723
  %31 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx98, align 8, !dbg !2723
  %32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call38, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2724
  %rt_rtx102 = bitcast %union.rtunion_def* %32 to %struct.rtx_def**, !dbg !2724
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx102, align 8, !dbg !2724
  %call103 = call i32 @rtx_equal_p(%struct.rtx_def* %31, %struct.rtx_def* %33) #6, !dbg !2725
  %tobool104 = icmp eq i32 %call103, 0, !dbg !2725
  br i1 %tobool104, label %cleanup, label %if.end106, !dbg !2726

if.end106:                                        ; preds = %lor.lhs.false97
  %34 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2727
  %end_109 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %34, i64 0, i32 1, !dbg !2727
  %35 = bitcast %struct.rtx_def** %end_109 to i64*, !dbg !2727
  %36 = load i64, i64* %35, align 8, !dbg !2727
  %37 = bitcast %struct.rtx_def** %cinsn to i64*, !dbg !2728
  store i64 %36, i64* %37, align 8, !dbg !2728
  br label %cleanup, !dbg !2729

if.end110:                                        ; preds = %if.end77
  %38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call38, i64 0, i32 0, !dbg !2730
  %bf.load111 = load i32, i32* %38, align 8, !dbg !2730
  %bf.clear112 = and i32 %bf.load111, 65535, !dbg !2730
  %arrayidx114 = getelementptr inbounds [2 x %struct.rtx_def*], [2 x %struct.rtx_def*]* %op, i64 0, i64 1, !dbg !2731
  %39 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx114, align 8, !dbg !2731
  %call115 = call %struct.rtx_def* @simplify_gen_relational(i32 %bf.clear112, i32 16, i32 %mode.0, %struct.rtx_def* %23, %struct.rtx_def* %39) #6, !dbg !2732
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call115, metadata !2627, metadata !DIExpression()), !dbg !2641
  %40 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !2733
  %cmp116 = icmp eq %struct.rtx_def* %call115, %40, !dbg !2735
  %41 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8, !dbg !2736
  %cmp119 = icmp eq %struct.rtx_def* %call115, %41, !dbg !2737
  %or.cond = or i1 %cmp116, %cmp119, !dbg !2738
  br i1 %or.cond, label %cleanup, label %if.end122, !dbg !2738

if.end122:                                        ; preds = %if.end110
  %bf.load123 = load i32, i32* %38, align 8, !dbg !2739
  %bf.clear124 = and i32 %bf.load123, 65535, !dbg !2739
  %call127 = call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 %bf.clear124, i32 16, %struct.rtx_def* %23, %struct.rtx_def* %39) #6, !dbg !2739
  %call128 = call %struct.rtx_def* @canon_condition(%struct.rtx_def* %call127) #6, !dbg !2740
  br label %cleanup, !dbg !2741

cleanup.loopexit:                                 ; preds = %if.end51, %if.end57, %lor.lhs.false59
  br label %cleanup, !dbg !2742

cleanup:                                          ; preds = %cleanup.loopexit, %lor.lhs.false97, %if.end89, %if.then82, %if.end34, %if.end30, %cond.end23, %cond.end12, %if.end, %cond.end, %if.end110, %if.end122, %if.end106
  %retval.0 = phi %struct.rtx_def* [ %call38, %if.end106 ], [ %call128, %if.end122 ], [ null, %cond.end ], [ null, %if.end ], [ null, %cond.end23 ], [ null, %cond.end12 ], [ null, %if.end30 ], [ null, %if.end34 ], [ null, %if.then82 ], [ null, %lor.lhs.false97 ], [ null, %if.end89 ], [ %call115, %if.end110 ], [ null, %cleanup.loopexit ], !dbg !2641
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %2) #7, !dbg !2742
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2742
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2742
  ret %struct.rtx_def* %retval.0, !dbg !2742
}

declare dso_local %struct.rtx_def* @canon_condition(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @simplify_using_condition(%struct.rtx_def*, %struct.rtx_def**, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2743 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2749, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2750, metadata !DIExpression()), !dbg !2751
  br label %land.end, !dbg !2752

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2752
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2752
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2752
  ret %struct.edge_def* %0, !dbg !2752
}

declare dso_local zeroext i8 @remove_path(%struct.edge_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @alloc_EXPR_LIST(i32, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.loop* @unswitch_loop(%struct.loop* %loop, %struct.basic_block_def* %unswitch_on, %struct.rtx_def* %cond, %struct.rtx_def* %cinsn) unnamed_addr #5 !dbg !2753 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2757, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %unswitch_on, metadata !2758, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond, metadata !2759, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cinsn, metadata !2760, metadata !DIExpression()), !dbg !2772
  %call = tail call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %unswitch_on) #6, !dbg !2773
  %tobool = icmp eq i8 %call, 0, !dbg !2773
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2773

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 399, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2773
  br label %cond.end, !dbg !2773

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %unswitch_on, i64 0, i32 1, !dbg !2774
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2774
  %tobool3 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2774
  br i1 %tobool3, label %cond.end7, label %cond.true4, !dbg !2774

cond.true4:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2774
  br label %cond.end7, !dbg !2774

cond.end7:                                        ; preds = %cond.end, %cond.true4
  %cond8 = phi %struct.VEC_edge_base* [ %base, %cond.true4 ], [ null, %cond.end ], !dbg !2774
  %call9 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond8) #8, !dbg !2774
  %cmp = icmp eq i32 %call9, 2, !dbg !2774
  br i1 %cmp, label %cond.end12, label %cond.true10, !dbg !2774

cond.true10:                                      ; preds = %cond.end7
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 400, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2774
  br label %cond.end12, !dbg !2774

cond.end12:                                       ; preds = %cond.end7, %cond.true10
  %call14 = tail call zeroext i8 @just_once_each_iteration_p(%struct.loop* %loop, %struct.basic_block_def* %unswitch_on) #6, !dbg !2775
  %tobool15 = icmp eq i8 %call14, 0, !dbg !2775
  br i1 %tobool15, label %cond.true16, label %cond.end18, !dbg !2775

cond.true16:                                      ; preds = %cond.end12
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 401, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2775
  br label %cond.end18, !dbg !2775

cond.end18:                                       ; preds = %cond.end12, %cond.true16
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 8, !dbg !2776
  %1 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !2776
  %tobool20 = icmp eq %struct.loop* %1, null, !dbg !2776
  br i1 %tobool20, label %cond.end23, label %cond.true21, !dbg !2776

cond.true21:                                      ; preds = %cond.end18
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 402, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2776
  br label %cond.end23, !dbg !2776

cond.end23:                                       ; preds = %cond.end18, %cond.true21
  %2 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2777
  %tobool26 = icmp eq %struct.VEC_edge_gc* %2, null, !dbg !2777
  br i1 %tobool26, label %cond.end31, label %cond.true27, !dbg !2777

cond.true27:                                      ; preds = %cond.end23
  %base29 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %2, i64 0, i32 0, !dbg !2777
  br label %cond.end31, !dbg !2777

cond.end31:                                       ; preds = %cond.end23, %cond.true27
  %cond32 = phi %struct.VEC_edge_base* [ %base29, %cond.true27 ], [ null, %cond.end23 ], !dbg !2777
  %call33 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond32, i32 0) #8, !dbg !2777
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call33, i64 0, i32 1, !dbg !2777
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2777
  %call34 = tail call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %3) #6, !dbg !2777
  %tobool35 = icmp eq i8 %call34, 0, !dbg !2777
  br i1 %tobool35, label %cond.true36, label %cond.end38, !dbg !2777

cond.true36:                                      ; preds = %cond.end31
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 403, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2777
  br label %cond.end38, !dbg !2777

cond.end38:                                       ; preds = %cond.end31, %cond.true36
  %4 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2778
  %tobool41 = icmp eq %struct.VEC_edge_gc* %4, null, !dbg !2778
  br i1 %tobool41, label %cond.end46, label %cond.true42, !dbg !2778

cond.true42:                                      ; preds = %cond.end38
  %base44 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %4, i64 0, i32 0, !dbg !2778
  br label %cond.end46, !dbg !2778

cond.end46:                                       ; preds = %cond.end38, %cond.true42
  %cond47 = phi %struct.VEC_edge_base* [ %base44, %cond.true42 ], [ null, %cond.end38 ], !dbg !2778
  %call48 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond47, i32 1) #8, !dbg !2778
  %dest49 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call48, i64 0, i32 1, !dbg !2778
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %dest49, align 8, !dbg !2778
  %call50 = tail call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %5) #6, !dbg !2778
  %tobool51 = icmp eq i8 %call50, 0, !dbg !2778
  br i1 %tobool51, label %cond.true52, label %cond.end54, !dbg !2778

cond.true52:                                      ; preds = %cond.end46
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 404, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2778
  br label %cond.end54, !dbg !2778

cond.end54:                                       ; preds = %cond.end46, %cond.true52
  %call56 = tail call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2779
  call void @llvm.dbg.value(metadata %struct.edge_def* %call56, metadata !2761, metadata !DIExpression()), !dbg !2772
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call56, i64 0, i32 7, !dbg !2780
  %6 = load i32, i32* %flags, align 8, !dbg !2780
  %and = and i32 %6, 128, !dbg !2781
  call void @llvm.dbg.value(metadata i32 %and, metadata !2769, metadata !DIExpression()), !dbg !2772
  %and58 = and i32 %6, -129, !dbg !2782
  store i32 %and58, i32* %flags, align 8, !dbg !2782
  %call59 = tail call zeroext i8 @duplicate_loop_to_header_edge(%struct.loop* %loop, %struct.edge_def* %call56, i32 1, %struct.simple_bitmap_def* null, %struct.edge_def* null, %struct.VEC_edge_heap** null, i32 0) #6, !dbg !2783
  %tobool60 = icmp eq i8 %call59, 0, !dbg !2783
  br i1 %tobool60, label %cleanup, label %if.end, !dbg !2785

if.end:                                           ; preds = %cond.end54
  %7 = load i32, i32* %flags, align 8, !dbg !2786
  %or = or i32 %7, %and, !dbg !2786
  store i32 %or, i32* %flags, align 8, !dbg !2786
  %call62 = tail call %struct.basic_block_def* @get_bb_copy(%struct.basic_block_def* %unswitch_on) #6, !dbg !2787
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call62, metadata !2767, metadata !DIExpression()), !dbg !2772
  %succs63 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call62, i64 0, i32 1, !dbg !2788
  %8 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs63, align 8, !dbg !2788
  %tobool64 = icmp eq %struct.VEC_edge_gc* %8, null, !dbg !2788
  br i1 %tobool64, label %cond.end69, label %cond.true65, !dbg !2788

cond.true65:                                      ; preds = %if.end
  %base67 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %8, i64 0, i32 0, !dbg !2788
  br label %cond.end69, !dbg !2788

cond.end69:                                       ; preds = %if.end, %cond.true65
  %cond70 = phi %struct.VEC_edge_base* [ %base67, %cond.true65 ], [ null, %if.end ], !dbg !2788
  %call71 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond70, i32 0) #8, !dbg !2788
  %flags72 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call71, i64 0, i32 7, !dbg !2788
  %9 = load i32, i32* %flags72, align 8, !dbg !2788
  %and73 = and i32 %9, 1, !dbg !2788
  %tobool74 = icmp eq i32 %and73, 0, !dbg !2788
  %10 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs63, align 8, !dbg !2788
  %tobool77 = icmp ne %struct.VEC_edge_gc* %10, null, !dbg !2788
  br i1 %tobool74, label %cond.false85, label %cond.true75, !dbg !2788

cond.true75:                                      ; preds = %cond.end69
  br i1 %tobool77, label %cond.true78, label %cond.end82, !dbg !2788

cond.true78:                                      ; preds = %cond.true75
  %base80 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %10, i64 0, i32 0, !dbg !2788
  br label %cond.end82, !dbg !2788

cond.end82:                                       ; preds = %cond.true75, %cond.true78
  %cond83 = phi %struct.VEC_edge_base* [ %base80, %cond.true78 ], [ null, %cond.true75 ], !dbg !2788
  %call84 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond83, i32 1) #8, !dbg !2788
  br label %cond.end95, !dbg !2788

cond.false85:                                     ; preds = %cond.end69
  br i1 %tobool77, label %cond.true88, label %cond.end92, !dbg !2788

cond.true88:                                      ; preds = %cond.false85
  %base90 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %10, i64 0, i32 0, !dbg !2788
  br label %cond.end92, !dbg !2788

cond.end92:                                       ; preds = %cond.false85, %cond.true88
  %cond93 = phi %struct.VEC_edge_base* [ %base90, %cond.true88 ], [ null, %cond.false85 ], !dbg !2788
  %call94 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond93, i32 0) #8, !dbg !2788
  br label %cond.end95, !dbg !2788

cond.end95:                                       ; preds = %cond.end92, %cond.end82
  %cond96 = phi %struct.edge_def* [ %call84, %cond.end82 ], [ %call94, %cond.end92 ], !dbg !2788
  call void @llvm.dbg.value(metadata %struct.edge_def* %cond96, metadata !2763, metadata !DIExpression()), !dbg !2772
  %11 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2789
  %tobool98 = icmp eq %struct.VEC_edge_gc* %11, null, !dbg !2789
  br i1 %tobool98, label %cond.end103, label %cond.true99, !dbg !2789

cond.true99:                                      ; preds = %cond.end95
  %base101 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %11, i64 0, i32 0, !dbg !2789
  br label %cond.end103, !dbg !2789

cond.end103:                                      ; preds = %cond.end95, %cond.true99
  %cond104 = phi %struct.VEC_edge_base* [ %base101, %cond.true99 ], [ null, %cond.end95 ], !dbg !2789
  %call105 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond104, i32 0) #8, !dbg !2789
  %flags106 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call105, i64 0, i32 7, !dbg !2789
  %12 = load i32, i32* %flags106, align 8, !dbg !2789
  %and107 = and i32 %12, 1, !dbg !2789
  %tobool108 = icmp eq i32 %and107, 0, !dbg !2789
  %13 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2789
  %tobool111 = icmp ne %struct.VEC_edge_gc* %13, null, !dbg !2789
  br i1 %tobool108, label %cond.false119, label %cond.true109, !dbg !2789

cond.true109:                                     ; preds = %cond.end103
  br i1 %tobool111, label %cond.true112, label %cond.end116, !dbg !2789

cond.true112:                                     ; preds = %cond.true109
  %base114 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %13, i64 0, i32 0, !dbg !2789
  br label %cond.end116, !dbg !2789

cond.end116:                                      ; preds = %cond.true109, %cond.true112
  %cond117 = phi %struct.VEC_edge_base* [ %base114, %cond.true112 ], [ null, %cond.true109 ], !dbg !2789
  %call118 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond117, i32 0) #8, !dbg !2789
  br label %cond.end129, !dbg !2789

cond.false119:                                    ; preds = %cond.end103
  br i1 %tobool111, label %cond.true122, label %cond.end126, !dbg !2789

cond.true122:                                     ; preds = %cond.false119
  %base124 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %13, i64 0, i32 0, !dbg !2789
  br label %cond.end126, !dbg !2789

cond.end126:                                      ; preds = %cond.false119, %cond.true122
  %cond127 = phi %struct.VEC_edge_base* [ %base124, %cond.true122 ], [ null, %cond.false119 ], !dbg !2789
  %call128 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond127, i32 1) #8, !dbg !2789
  br label %cond.end129, !dbg !2789

cond.end129:                                      ; preds = %cond.end126, %cond.end116
  %cond130 = phi %struct.edge_def* [ %call118, %cond.end116 ], [ %call128, %cond.end126 ], !dbg !2789
  call void @llvm.dbg.value(metadata %struct.edge_def* %cond130, metadata !2764, metadata !DIExpression()), !dbg !2772
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !2790
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !2790
  %call131 = tail call %struct.basic_block_def* @get_bb_copy(%struct.basic_block_def* %14) #6, !dbg !2791
  %call132 = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call131) #8, !dbg !2792
  call void @llvm.dbg.value(metadata %struct.edge_def* %call132, metadata !2762, metadata !DIExpression()), !dbg !2772
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond96, i64 0, i32 8, !dbg !2793
  %15 = load i32, i32* %probability, align 4, !dbg !2793
  call void @llvm.dbg.value(metadata i32 %15, metadata !2770, metadata !DIExpression()), !dbg !2772
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2794
  %cfg = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 1, !dbg !2794
  %17 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2794
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 1, !dbg !2794
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2794
  %prev_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i64 0, i32 5, !dbg !2795
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %prev_bb, align 8, !dbg !2795
  %call133 = tail call %struct.basic_block_def* @create_empty_bb(%struct.basic_block_def* %19) #6, !dbg !2796
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call133, metadata !2766, metadata !DIExpression()), !dbg !2772
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2797
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2797
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2797
  %21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2798
  %rt_rtx137 = bitcast %union.rtunion_def* %21 to %struct.rtx_def**, !dbg !2798
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx137, align 8, !dbg !2798
  %23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i64 0, i32 0, !dbg !2799
  %bf.load = load i32, i32* %23, align 8, !dbg !2799
  %bf.clear = and i32 %bf.load, 65535, !dbg !2799
  %dest138 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond96, i64 0, i32 1, !dbg !2800
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %dest138, align 8, !dbg !2800
  %call139 = tail call %struct.rtx_def* @block_label(%struct.basic_block_def* %24) #6, !dbg !2801
  %call140 = tail call %struct.rtx_def* @compare_and_jump_seq(%struct.rtx_def* %20, %struct.rtx_def* %22, i32 %bf.clear, %struct.rtx_def* %call139, i32 %15, %struct.rtx_def* %cinsn) #8, !dbg !2802
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call140, metadata !2771, metadata !DIExpression()), !dbg !2772
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call133, i64 0, i32 7, !dbg !2803
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2803
  %25 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2803
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %25, i64 0, i32 1, !dbg !2803
  %26 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2803
  %call141 = tail call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %call140, %struct.rtx_def* %26) #6, !dbg !2804
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %dest138, align 8, !dbg !2805
  %call143 = tail call %struct.edge_def* @make_edge(%struct.basic_block_def* %call133, %struct.basic_block_def* %27, i32 0) #6, !dbg !2806
  call void @llvm.dbg.value(metadata %struct.edge_def* %call143, metadata !2765, metadata !DIExpression()), !dbg !2772
  %probability144 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call143, i64 0, i32 8, !dbg !2807
  store i32 %15, i32* %probability144, align 4, !dbg !2808
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call132, i64 0, i32 9, !dbg !2809
  %28 = load i64, i64* %count, align 8, !dbg !2809
  %conv = sext i32 %15 to i64, !dbg !2810
  %mul = mul nsw i64 %28, %conv, !dbg !2811
  %div = sdiv i64 %mul, 10000, !dbg !2812
  %count145 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call143, i64 0, i32 9, !dbg !2813
  store i64 %div, i64* %count145, align 8, !dbg !2814
  %29 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2815
  %tobool147 = icmp eq %struct.VEC_edge_gc* %29, null, !dbg !2815
  br i1 %tobool147, label %cond.end152, label %cond.true148, !dbg !2815

cond.true148:                                     ; preds = %cond.end129
  %base150 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %29, i64 0, i32 0, !dbg !2815
  br label %cond.end152, !dbg !2815

cond.end152:                                      ; preds = %cond.end129, %cond.true148
  %cond153 = phi %struct.VEC_edge_base* [ %base150, %cond.true148 ], [ null, %cond.end129 ], !dbg !2815
  %call154 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond153, i32 0) #8, !dbg !2815
  %flags155 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call154, i64 0, i32 7, !dbg !2815
  %30 = load i32, i32* %flags155, align 8, !dbg !2815
  %and156 = and i32 %30, 1, !dbg !2815
  %tobool157 = icmp eq i32 %and156, 0, !dbg !2815
  %31 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2815
  %tobool160 = icmp ne %struct.VEC_edge_gc* %31, null, !dbg !2815
  br i1 %tobool157, label %cond.false168, label %cond.true158, !dbg !2815

cond.true158:                                     ; preds = %cond.end152
  br i1 %tobool160, label %cond.true161, label %cond.end165, !dbg !2815

cond.true161:                                     ; preds = %cond.true158
  %base163 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %31, i64 0, i32 0, !dbg !2815
  br label %cond.end165, !dbg !2815

cond.end165:                                      ; preds = %cond.true158, %cond.true161
  %cond166 = phi %struct.VEC_edge_base* [ %base163, %cond.true161 ], [ null, %cond.true158 ], !dbg !2815
  %call167 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond166, i32 0) #8, !dbg !2815
  br label %cond.end178, !dbg !2815

cond.false168:                                    ; preds = %cond.end152
  br i1 %tobool160, label %cond.true171, label %cond.end175, !dbg !2815

cond.true171:                                     ; preds = %cond.false168
  %base173 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %31, i64 0, i32 0, !dbg !2815
  br label %cond.end175, !dbg !2815

cond.end175:                                      ; preds = %cond.false168, %cond.true171
  %cond176 = phi %struct.VEC_edge_base* [ %base173, %cond.true171 ], [ null, %cond.false168 ], !dbg !2815
  %call177 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond176, i32 1) #8, !dbg !2815
  br label %cond.end178, !dbg !2815

cond.end178:                                      ; preds = %cond.end175, %cond.end165
  %cond179 = phi %struct.edge_def* [ %call167, %cond.end165 ], [ %call177, %cond.end175 ], !dbg !2815
  %dest180 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond179, i64 0, i32 1, !dbg !2816
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %dest180, align 8, !dbg !2816
  %call181 = tail call %struct.edge_def* @make_edge(%struct.basic_block_def* %call133, %struct.basic_block_def* %32, i32 1) #6, !dbg !2817
  call void @llvm.dbg.value(metadata %struct.edge_def* %call181, metadata !2765, metadata !DIExpression()), !dbg !2772
  %probability182 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond130, i64 0, i32 8, !dbg !2818
  %33 = load i32, i32* %probability182, align 4, !dbg !2818
  %probability183 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call181, i64 0, i32 8, !dbg !2819
  store i32 %33, i32* %probability183, align 4, !dbg !2820
  %34 = load i64, i64* %count, align 8, !dbg !2821
  %35 = load i32, i32* %probability182, align 4, !dbg !2822
  %conv186 = sext i32 %35 to i64, !dbg !2823
  %mul187 = mul nsw i64 %34, %conv186, !dbg !2824
  %div188 = sdiv i64 %mul187, 10000, !dbg !2825
  %count189 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call181, i64 0, i32 9, !dbg !2826
  store i64 %div188, i64* %count189, align 8, !dbg !2827
  %tobool190 = icmp eq i32 %and, 0, !dbg !2828
  %flags192 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call133, i64 0, i32 13, !dbg !2830
  %36 = load i32, i32* %flags192, align 8, !dbg !2830
  br i1 %tobool190, label %if.else, label %if.then191, !dbg !2831

if.then191:                                       ; preds = %cond.end178
  %or193 = or i32 %36, 4, !dbg !2832
  store i32 %or193, i32* %flags192, align 8, !dbg !2832
  %succs194 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call133, i64 0, i32 1, !dbg !2834
  %37 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs194, align 8, !dbg !2834
  %tobool195 = icmp eq %struct.VEC_edge_gc* %37, null, !dbg !2834
  br i1 %tobool195, label %cond.end200, label %cond.true196, !dbg !2834

cond.true196:                                     ; preds = %if.then191
  %base198 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %37, i64 0, i32 0, !dbg !2834
  br label %cond.end200, !dbg !2834

cond.end200:                                      ; preds = %if.then191, %cond.true196
  %cond201 = phi %struct.VEC_edge_base* [ %base198, %cond.true196 ], [ null, %if.then191 ], !dbg !2834
  %call202 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond201, i32 0) #8, !dbg !2834
  %flags203 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call202, i64 0, i32 7, !dbg !2835
  %38 = load i32, i32* %flags203, align 8, !dbg !2836
  %or204 = or i32 %38, 128, !dbg !2836
  store i32 %or204, i32* %flags203, align 8, !dbg !2836
  %39 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs194, align 8, !dbg !2837
  %tobool206 = icmp eq %struct.VEC_edge_gc* %39, null, !dbg !2837
  br i1 %tobool206, label %cond.end211, label %cond.true207, !dbg !2837

cond.true207:                                     ; preds = %cond.end200
  %base209 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %39, i64 0, i32 0, !dbg !2837
  br label %cond.end211, !dbg !2837

cond.end211:                                      ; preds = %cond.end200, %cond.true207
  %cond212 = phi %struct.VEC_edge_base* [ %base209, %cond.true207 ], [ null, %cond.end200 ], !dbg !2837
  %call213 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond212, i32 1) #8, !dbg !2837
  %flags214 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call213, i64 0, i32 7, !dbg !2838
  %40 = load i32, i32* %flags214, align 8, !dbg !2839
  %or215 = or i32 %40, 128, !dbg !2839
  store i32 %or215, i32* %flags214, align 8, !dbg !2839
  br label %if.end240, !dbg !2840

if.else:                                          ; preds = %cond.end178
  %and217 = and i32 %36, -5, !dbg !2841
  store i32 %and217, i32* %flags192, align 8, !dbg !2841
  %succs218 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call133, i64 0, i32 1, !dbg !2843
  %41 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs218, align 8, !dbg !2843
  %tobool219 = icmp eq %struct.VEC_edge_gc* %41, null, !dbg !2843
  br i1 %tobool219, label %cond.end224, label %cond.true220, !dbg !2843

cond.true220:                                     ; preds = %if.else
  %base222 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %41, i64 0, i32 0, !dbg !2843
  br label %cond.end224, !dbg !2843

cond.end224:                                      ; preds = %if.else, %cond.true220
  %cond225 = phi %struct.VEC_edge_base* [ %base222, %cond.true220 ], [ null, %if.else ], !dbg !2843
  %call226 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond225, i32 0) #8, !dbg !2843
  %flags227 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call226, i64 0, i32 7, !dbg !2844
  %42 = load i32, i32* %flags227, align 8, !dbg !2845
  %and228 = and i32 %42, -129, !dbg !2845
  store i32 %and228, i32* %flags227, align 8, !dbg !2845
  %43 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs218, align 8, !dbg !2846
  %tobool230 = icmp eq %struct.VEC_edge_gc* %43, null, !dbg !2846
  br i1 %tobool230, label %cond.end235, label %cond.true231, !dbg !2846

cond.true231:                                     ; preds = %cond.end224
  %base233 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %43, i64 0, i32 0, !dbg !2846
  br label %cond.end235, !dbg !2846

cond.end235:                                      ; preds = %cond.end224, %cond.true231
  %cond236 = phi %struct.VEC_edge_base* [ %base233, %cond.true231 ], [ null, %cond.end224 ], !dbg !2846
  %call237 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond236, i32 1) #8, !dbg !2846
  %flags238 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call237, i64 0, i32 7, !dbg !2847
  %44 = load i32, i32* %flags238, align 8, !dbg !2848
  %and239 = and i32 %44, -129, !dbg !2848
  store i32 %and239, i32* %flags238, align 8, !dbg !2848
  br label %if.end240

if.end240:                                        ; preds = %cond.end235, %cond.end211
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !2849
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !2849
  %call241 = tail call %struct.basic_block_def* @get_bb_copy(%struct.basic_block_def* %45) #6, !dbg !2850
  %call242 = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %call241) #8, !dbg !2851
  %succs243 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call133, i64 0, i32 1, !dbg !2852
  %46 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs243, align 8, !dbg !2852
  %tobool244 = icmp eq %struct.VEC_edge_gc* %46, null, !dbg !2852
  br i1 %tobool244, label %cond.end249, label %cond.true245, !dbg !2852

cond.true245:                                     ; preds = %if.end240
  %base247 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %46, i64 0, i32 0, !dbg !2852
  br label %cond.end249, !dbg !2852

cond.end249:                                      ; preds = %if.end240, %cond.true245
  %cond250 = phi %struct.VEC_edge_base* [ %base247, %cond.true245 ], [ null, %if.end240 ], !dbg !2852
  %call251 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond250, i32 0) #8, !dbg !2852
  %flags252 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call251, i64 0, i32 7, !dbg !2852
  %47 = load i32, i32* %flags252, align 8, !dbg !2852
  %and253 = and i32 %47, 1, !dbg !2852
  %tobool254 = icmp eq i32 %and253, 0, !dbg !2852
  %48 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs243, align 8, !dbg !2852
  %tobool257 = icmp ne %struct.VEC_edge_gc* %48, null, !dbg !2852
  br i1 %tobool254, label %cond.false265, label %cond.true255, !dbg !2852

cond.true255:                                     ; preds = %cond.end249
  br i1 %tobool257, label %cond.true258, label %cond.end262, !dbg !2852

cond.true258:                                     ; preds = %cond.true255
  %base260 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %48, i64 0, i32 0, !dbg !2852
  br label %cond.end262, !dbg !2852

cond.end262:                                      ; preds = %cond.true255, %cond.true258
  %cond263 = phi %struct.VEC_edge_base* [ %base260, %cond.true258 ], [ null, %cond.true255 ], !dbg !2852
  %call264 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond263, i32 1) #8, !dbg !2852
  br label %cond.end275, !dbg !2852

cond.false265:                                    ; preds = %cond.end249
  br i1 %tobool257, label %cond.true268, label %cond.end272, !dbg !2852

cond.true268:                                     ; preds = %cond.false265
  %base270 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %48, i64 0, i32 0, !dbg !2852
  br label %cond.end272, !dbg !2852

cond.end272:                                      ; preds = %cond.false265, %cond.true268
  %cond273 = phi %struct.VEC_edge_base* [ %base270, %cond.true268 ], [ null, %cond.false265 ], !dbg !2852
  %call274 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond273, i32 0) #8, !dbg !2852
  br label %cond.end275, !dbg !2852

cond.end275:                                      ; preds = %cond.end272, %cond.end262
  %cond276 = phi %struct.edge_def* [ %call264, %cond.end262 ], [ %call274, %cond.end272 ], !dbg !2852
  %49 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs243, align 8, !dbg !2853
  %tobool278 = icmp eq %struct.VEC_edge_gc* %49, null, !dbg !2853
  br i1 %tobool278, label %cond.end283, label %cond.true279, !dbg !2853

cond.true279:                                     ; preds = %cond.end275
  %base281 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %49, i64 0, i32 0, !dbg !2853
  br label %cond.end283, !dbg !2853

cond.end283:                                      ; preds = %cond.end275, %cond.true279
  %cond284 = phi %struct.VEC_edge_base* [ %base281, %cond.true279 ], [ null, %cond.end275 ], !dbg !2853
  %call285 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond284, i32 0) #8, !dbg !2853
  %flags286 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call285, i64 0, i32 7, !dbg !2853
  %50 = load i32, i32* %flags286, align 8, !dbg !2853
  %and287 = and i32 %50, 1, !dbg !2853
  %tobool288 = icmp eq i32 %and287, 0, !dbg !2853
  %51 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs243, align 8, !dbg !2853
  %tobool291 = icmp ne %struct.VEC_edge_gc* %51, null, !dbg !2853
  br i1 %tobool288, label %cond.false299, label %cond.true289, !dbg !2853

cond.true289:                                     ; preds = %cond.end283
  br i1 %tobool291, label %cond.true292, label %cond.end296, !dbg !2853

cond.true292:                                     ; preds = %cond.true289
  %base294 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %51, i64 0, i32 0, !dbg !2853
  br label %cond.end296, !dbg !2853

cond.end296:                                      ; preds = %cond.true289, %cond.true292
  %cond297 = phi %struct.VEC_edge_base* [ %base294, %cond.true292 ], [ null, %cond.true289 ], !dbg !2853
  %call298 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond297, i32 0) #8, !dbg !2853
  br label %cond.end309, !dbg !2853

cond.false299:                                    ; preds = %cond.end283
  br i1 %tobool291, label %cond.true302, label %cond.end306, !dbg !2853

cond.true302:                                     ; preds = %cond.false299
  %base304 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %51, i64 0, i32 0, !dbg !2853
  br label %cond.end306, !dbg !2853

cond.end306:                                      ; preds = %cond.false299, %cond.true302
  %cond307 = phi %struct.VEC_edge_base* [ %base304, %cond.true302 ], [ null, %cond.false299 ], !dbg !2853
  %call308 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond307, i32 1) #8, !dbg !2853
  br label %cond.end309, !dbg !2853

cond.end309:                                      ; preds = %cond.end306, %cond.end296
  %cond310 = phi %struct.edge_def* [ %call298, %cond.end296 ], [ %call308, %cond.end306 ], !dbg !2853
  %sub = sub nsw i32 10000, %15, !dbg !2854
  %call311 = tail call %struct.loop* @loopify(%struct.edge_def* %call132, %struct.edge_def* %call242, %struct.basic_block_def* %call133, %struct.edge_def* %cond276, %struct.edge_def* %cond310, i8 zeroext 1, i32 %15, i32 %sub) #6, !dbg !2855
  call void @llvm.dbg.value(metadata %struct.loop* %call311, metadata !2768, metadata !DIExpression()), !dbg !2772
  %call312 = tail call zeroext i8 @remove_path(%struct.edge_def* %cond96) #6, !dbg !2856
  %call313 = tail call zeroext i8 @remove_path(%struct.edge_def* %cond130) #6, !dbg !2857
  %call314 = tail call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2858
  %call315 = tail call %struct.basic_block_def* @split_edge(%struct.edge_def* %call314) #6, !dbg !2859
  %call316 = tail call %struct.edge_def* @loop_preheader_edge(%struct.loop* %call311) #6, !dbg !2860
  %call317 = tail call %struct.basic_block_def* @split_edge(%struct.edge_def* %call316) #6, !dbg !2861
  br label %cleanup, !dbg !2862

cleanup:                                          ; preds = %cond.end54, %cond.end309
  %retval.0 = phi %struct.loop* [ %call311, %cond.end309 ], [ null, %cond.end54 ], !dbg !2772
  ret %struct.loop* %retval.0, !dbg !2863
}

declare dso_local void @free_EXPR_LIST_node(%struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !2864 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2868, metadata !DIExpression()), !dbg !2869
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !2870
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2870

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !2870
  %0 = load i32, i32* %num, align 8, !dbg !2870
  br label %cond.end, !dbg !2870

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2870
  ret i32 %cond, !dbg !2870
}

declare dso_local i32 @any_condjump_p(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @flow_bb_inside_loop_p(%struct.loop*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @just_once_each_iteration_p(%struct.loop*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @get_condition(%struct.rtx_def*, %struct.rtx_def**, i32, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @iv_analyze(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_iv*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @get_iv_value(%struct.rtx_iv*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @simplify_gen_relational(i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @loop_preheader_edge(%struct.loop*) local_unnamed_addr #2

declare dso_local zeroext i8 @duplicate_loop_to_header_edge(%struct.loop*, %struct.edge_def*, i32, %struct.simple_bitmap_def*, %struct.edge_def*, %struct.VEC_edge_heap**, i32) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @get_bb_copy(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2871 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2878, metadata !DIExpression()), !dbg !2879
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #8, !dbg !2880
  %tobool = icmp eq i8 %call, 0, !dbg !2880
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2880

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2880
  br label %cond.end, !dbg !2880

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !2881
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2881
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2881
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !2881

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2881
  br label %cond.end5, !dbg !2881

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !2881
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #8, !dbg !2881
  ret %struct.edge_def* %call7, !dbg !2882
}

declare dso_local %struct.basic_block_def* @create_empty_bb(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @block_label(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #2

declare dso_local %struct.loop* @loopify(%struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.edge_def*, %struct.edge_def*, i8 zeroext, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2883 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2885, metadata !DIExpression()), !dbg !2886
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #8, !dbg !2887
  %tobool = icmp eq i8 %call, 0, !dbg !2887
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2887

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2887
  br label %cond.end, !dbg !2887

cond.end:                                         ; preds = %entry, %cond.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2888
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2888
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2888
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !2888

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2888
  br label %cond.end5, !dbg !2888

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !2888
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #8, !dbg !2888
  ret %struct.edge_def* %call7, !dbg !2889
}

declare dso_local %struct.basic_block_def* @split_edge(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2890 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2894, metadata !DIExpression()), !dbg !2895
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !2896
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2896
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2896
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2896

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2896
  br label %cond.end, !dbg !2896

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2896
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2896
  %cmp = icmp eq i32 %call, 1, !dbg !2897
  %conv2 = zext i1 %cmp to i8, !dbg !2896
  ret i8 %conv2, !dbg !2898
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2899 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2901, metadata !DIExpression()), !dbg !2902
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2903
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2903
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2903
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2903

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2903
  br label %cond.end, !dbg !2903

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2903
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2903
  %cmp = icmp eq i32 %call, 1, !dbg !2904
  %conv2 = zext i1 %cmp to i8, !dbg !2903
  ret i8 %conv2, !dbg !2905
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1704, !1705, !1706}
!llvm.ident = !{!1707}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !553, nameTableKind: None)
!1 = !DIFile(filename: "loop-unswitch.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !132, !141, !145, !151, !156, !161, !180, !187, !194, !388, !531}
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
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !133, line: 31, baseType: !5, size: 32, elements: !134)
!133 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!134 = !{!135, !136, !137, !138, !139, !140}
!135 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!138 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!139 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!140 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !133, line: 91, baseType: !5, size: 32, elements: !142)
!142 = !{!143, !144}
!143 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!144 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !146, line: 363, baseType: !5, size: 32, elements: !147)
!146 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!147 = !{!148, !149, !150}
!148 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!149 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!150 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !146, line: 355, baseType: !5, size: 32, elements: !152)
!152 = !{!153, !154, !155}
!153 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!154 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!155 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !157, line: 474, baseType: !5, size: 32, elements: !158)
!157 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!158 = !{!159, !160}
!159 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!160 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !162, line: 280, baseType: !5, size: 32, elements: !163)
!162 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179}
!164 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!176 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!177 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!178 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !162, line: 1817, baseType: !5, size: 32, elements: !181)
!181 = !{!182, !183, !184, !185, !186}
!182 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!183 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!184 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!185 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!186 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !162, line: 1805, baseType: !5, size: 32, elements: !188)
!188 = !{!189, !190, !191, !192, !193}
!189 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!190 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!191 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!192 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!193 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !162, line: 39, baseType: !5, size: 32, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387}
!196 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!197 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!198 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!199 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!200 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!201 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!202 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!203 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!204 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!205 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!206 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!207 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!208 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!209 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!210 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!211 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!212 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!213 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!214 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!215 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!216 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!217 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!218 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!219 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!220 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!221 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!222 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!223 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!224 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!225 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!226 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!227 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!228 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!229 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!230 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!231 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!232 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!233 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!234 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!235 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!236 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!237 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!238 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!239 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!240 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!241 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!242 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!243 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!244 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!245 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!246 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!247 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!248 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!249 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!250 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!251 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!252 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!253 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!254 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!255 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!256 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!257 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!258 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!259 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!260 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!261 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!262 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!263 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!264 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!265 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!266 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!267 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!268 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!269 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!270 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!271 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!272 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!273 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!274 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!275 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!276 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!277 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!278 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!279 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!280 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!281 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!282 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!283 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!284 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!285 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!286 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!287 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!288 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!289 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!290 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!291 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!292 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!293 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!294 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!295 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!296 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!297 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!298 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!299 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!300 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!301 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!302 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!303 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!304 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!305 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!306 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!307 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!308 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!309 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!310 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!311 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!312 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!313 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!314 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!315 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!316 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!317 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!318 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!319 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!320 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!321 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!322 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!323 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!324 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!325 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!326 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!327 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!328 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!329 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!330 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!331 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!332 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!333 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!334 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!335 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!336 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!337 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!338 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!339 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!340 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!341 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!342 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!343 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!344 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!345 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!346 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!347 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!348 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!360 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!361 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!362 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!363 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!364 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!365 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!366 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!367 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!370 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!371 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!372 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!373 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!374 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!375 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!376 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!377 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!378 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!379 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!380 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!381 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!382 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!383 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!384 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!385 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!386 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!387 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!388 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !389, line: 45, baseType: !5, size: 32, elements: !390)
!389 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530}
!391 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!392 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!393 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!394 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!395 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!396 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!397 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!398 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!399 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!400 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!401 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!402 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!403 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!404 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!405 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!406 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!407 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!408 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!409 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!410 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!411 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!412 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!413 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!414 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!415 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!416 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!417 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!418 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!419 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!420 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!421 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!422 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!423 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!424 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!425 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!426 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!427 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!428 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!429 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!430 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!431 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!432 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!433 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!434 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!435 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!436 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!437 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!438 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!439 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!440 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!441 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!442 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!443 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!444 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!445 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!446 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!447 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!448 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!449 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!450 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!451 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!452 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!453 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!454 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!455 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!456 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!457 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!458 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!459 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!460 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!461 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!462 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!463 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!464 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!465 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!466 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!467 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!468 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!469 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!470 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!471 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!472 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!473 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!474 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!475 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!476 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!477 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!478 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!479 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!480 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!481 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!482 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!483 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!484 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!485 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!486 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!487 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!488 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!489 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!490 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!491 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!492 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!493 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!494 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!495 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!496 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!497 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!498 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!499 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!500 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!501 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!502 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!503 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!504 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!505 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!506 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!507 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!508 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!509 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!510 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!511 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!512 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!513 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!514 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!515 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!516 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!517 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!518 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!519 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!520 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!521 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!522 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!523 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!524 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!525 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!526 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!527 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!528 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!529 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!530 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!531 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !532, line: 36, baseType: !5, size: 32, elements: !533)
!532 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!533 = !{!534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552}
!534 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!535 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!536 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!537 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!538 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!539 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!540 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!541 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!542 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!543 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!544 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!545 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!546 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!547 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!548 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!549 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!550 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!551 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!552 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!553 = !{!554, !555, !556, !557, !560, !561, !3, !531, !388, !563, !1691, !1005}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!556 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !564, line: 50, baseType: !565)
!564 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !389, line: 240, size: 384, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !566, file: !389, line: 242, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !566, file: !389, line: 245, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !566, file: !389, line: 252, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !566, file: !389, line: 257, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !566, file: !389, line: 265, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !566, file: !389, line: 277, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !566, file: !389, line: 291, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !566, file: !389, line: 298, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !566, file: !389, line: 305, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !566, file: !389, line: 310, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !566, file: !389, line: 321, baseType: !579, size: 320, offset: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !389, line: 315, size: 320, elements: !580)
!580 = !{!581, !1626, !1628, !1689, !1690}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !579, file: !389, line: 316, baseType: !582, size: 64)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 64, elements: !598)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !389, line: 183, baseType: !584)
!584 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !389, line: 166, size: 64, elements: !585)
!585 = !{!586, !587, !588, !589, !590, !600, !601, !613, !616, !678, !1604, !1605, !1616, !1623}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !584, file: !389, line: 168, baseType: !556, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !584, file: !389, line: 169, baseType: !5, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !584, file: !389, line: 170, baseType: !561, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !584, file: !389, line: 171, baseType: !563, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !584, file: !389, line: 172, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !564, line: 53, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !389, line: 359, size: 128, elements: !594)
!594 = !{!595, !596}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !593, file: !389, line: 360, baseType: !556, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !593, file: !389, line: 361, baseType: !597, size: 64, offset: 64)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 64, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 1)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !584, file: !389, line: 173, baseType: !3, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !584, file: !389, line: 174, baseType: !602, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !389, line: 133, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !389, line: 115, size: 32, elements: !604)
!604 = !{!605, !606, !607, !608, !609, !610, !611, !612}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !603, file: !389, line: 118, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !603, file: !389, line: 120, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !603, file: !389, line: 121, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !603, file: !389, line: 123, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !603, file: !389, line: 125, baseType: !5, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !603, file: !389, line: 127, baseType: !5, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !603, file: !389, line: 130, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !603, file: !389, line: 132, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !584, file: !389, line: 175, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !389, line: 175, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !584, file: !389, line: 176, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !619, line: 75, size: 256, elements: !620)
!619 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!620 = !{!621, !636, !637, !638}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !618, file: !619, line: 76, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !619, line: 68, baseType: !624)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !619, line: 63, size: 320, elements: !625)
!625 = !{!626, !628, !629, !630}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !624, file: !619, line: 64, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !624, file: !619, line: 65, baseType: !627, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !624, file: !619, line: 66, baseType: !5, size: 32, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !624, file: !619, line: 67, baseType: !631, size: 128, offset: 192)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 128, elements: !634)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !619, line: 29, baseType: !633)
!633 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!634 = !{!635}
!635 = !DISubrange(count: 2)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !618, file: !619, line: 77, baseType: !622, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !618, file: !619, line: 78, baseType: !5, size: 32, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !618, file: !619, line: 79, baseType: !639, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !619, line: 49, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !619, line: 45, size: 832, elements: !642)
!642 = !{!643, !644, !645}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !641, file: !619, line: 46, baseType: !627, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !641, file: !619, line: 47, baseType: !617, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !641, file: !619, line: 48, baseType: !646, size: 704, offset: 128)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !647, line: 164, size: 704, elements: !648)
!647 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!648 = !{!649, !651, !661, !662, !663, !664, !665, !666, !670, !674, !675, !676, !677}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !646, file: !647, line: 166, baseType: !650, size: 64)
!650 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !646, file: !647, line: 167, baseType: !652, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !647, line: 157, size: 192, elements: !654)
!654 = !{!655, !656, !657}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !653, file: !647, line: 159, baseType: !558, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !653, file: !647, line: 160, baseType: !652, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !653, file: !647, line: 161, baseType: !658, size: 32, offset: 128)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 32, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 4)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !646, file: !647, line: 168, baseType: !558, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !646, file: !647, line: 169, baseType: !558, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !646, file: !647, line: 170, baseType: !558, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !646, file: !647, line: 171, baseType: !650, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !646, file: !647, line: 172, baseType: !556, size: 32, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !646, file: !647, line: 176, baseType: !667, size: 64, offset: 448)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!652, !560, !650}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !646, file: !647, line: 177, baseType: !671, size: 64, offset: 512)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !560, !652}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !646, file: !647, line: 178, baseType: !560, size: 64, offset: 576)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !646, file: !647, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !646, file: !647, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !646, file: !647, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !584, file: !389, line: 177, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !564, line: 56, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !162, line: 3371, size: 1792, elements: !682)
!682 = !{!683, !716, !722, !733, !752, !763, !768, !775, !781, !794, !806, !844, !849, !877, !885, !886, !891, !900, !906, !911, !915, !919, !1231, !1280, !1286, !1293, !1300, !1323, !1348, !1365, !1377, !1399, !1414, !1586}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !681, file: !162, line: 3372, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !162, line: 360, size: 64, elements: !685)
!685 = !{!686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !684, file: !162, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !684, file: !162, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !684, file: !162, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !684, file: !162, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !684, file: !162, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !684, file: !162, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !684, file: !162, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !684, file: !162, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !684, file: !162, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !684, file: !162, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !684, file: !162, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !684, file: !162, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !684, file: !162, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !684, file: !162, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !684, file: !162, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !684, file: !162, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !684, file: !162, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !684, file: !162, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !684, file: !162, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !684, file: !162, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !684, file: !162, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !684, file: !162, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !684, file: !162, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !684, file: !162, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !684, file: !162, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !684, file: !162, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !684, file: !162, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !684, file: !162, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !684, file: !162, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !684, file: !162, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !681, file: !162, line: 3373, baseType: !717, size: 192)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !162, line: 402, size: 192, elements: !718)
!718 = !{!719, !720, !721}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !717, file: !162, line: 403, baseType: !684, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !717, file: !162, line: 404, baseType: !679, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !717, file: !162, line: 405, baseType: !679, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !681, file: !162, line: 3374, baseType: !723, size: 320)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !162, line: 1384, size: 320, elements: !724)
!724 = !{!725, !726}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !723, file: !162, line: 1385, baseType: !717, size: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !723, file: !162, line: 1386, baseType: !727, size: 128, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !728, line: 58, baseType: !729)
!728 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !728, line: 54, size: 128, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !729, file: !728, line: 56, baseType: !633, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !729, file: !728, line: 57, baseType: !650, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !681, file: !162, line: 3375, baseType: !734, size: 256)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !162, line: 1397, size: 256, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !734, file: !162, line: 1398, baseType: !717, size: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !734, file: !162, line: 1399, baseType: !738, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !740, line: 52, size: 256, elements: !741)
!740 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!741 = !{!742, !743, !744, !745, !746, !747, !748}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !739, file: !740, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !739, file: !740, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !739, file: !740, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !739, file: !740, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !739, file: !740, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !739, file: !740, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !739, file: !740, line: 62, baseType: !749, size: 192, offset: 64)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 192, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 3)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !681, file: !162, line: 3376, baseType: !753, size: 256)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !162, line: 1408, size: 256, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !753, file: !162, line: 1409, baseType: !717, size: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !753, file: !162, line: 1410, baseType: !757, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !759, line: 27, size: 192, elements: !760)
!759 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !758, file: !759, line: 29, baseType: !727, size: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !758, file: !759, line: 30, baseType: !3, size: 32, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !681, file: !162, line: 3377, baseType: !764, size: 256)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !162, line: 1437, size: 256, elements: !765)
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !764, file: !162, line: 1438, baseType: !717, size: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !764, file: !162, line: 1439, baseType: !679, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !681, file: !162, line: 3378, baseType: !769, size: 256)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !162, line: 1418, size: 256, elements: !770)
!770 = !{!771, !772, !773}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !769, file: !162, line: 1419, baseType: !717, size: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !769, file: !162, line: 1420, baseType: !556, size: 32, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !769, file: !162, line: 1421, baseType: !774, size: 8, offset: 224)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 8, elements: !598)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !681, file: !162, line: 3379, baseType: !776, size: 320)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !162, line: 1428, size: 320, elements: !777)
!777 = !{!778, !779, !780}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !776, file: !162, line: 1429, baseType: !717, size: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !776, file: !162, line: 1430, baseType: !679, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !776, file: !162, line: 1431, baseType: !679, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !681, file: !162, line: 3380, baseType: !782, size: 320)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !162, line: 1460, size: 320, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !782, file: !162, line: 1461, baseType: !717, size: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !782, file: !162, line: 1462, baseType: !786, size: 128, offset: 192)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !787, line: 31, size: 128, elements: !788)
!787 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!788 = !{!789, !792, !793}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !786, file: !787, line: 32, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !786, file: !787, line: 33, baseType: !5, size: 32, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !786, file: !787, line: 34, baseType: !5, size: 32, offset: 96)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !681, file: !162, line: 3381, baseType: !795, size: 384)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !162, line: 2507, size: 384, elements: !796)
!796 = !{!797, !798, !803, !804, !805}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !795, file: !162, line: 2508, baseType: !717, size: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !795, file: !162, line: 2509, baseType: !799, size: 32, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !800, line: 58, baseType: !801)
!800 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !802, line: 44, baseType: !5)
!802 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!803 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !795, file: !162, line: 2510, baseType: !5, size: 32, offset: 224)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !795, file: !162, line: 2511, baseType: !679, size: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !795, file: !162, line: 2512, baseType: !679, size: 64, offset: 320)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !681, file: !162, line: 3382, baseType: !807, size: 896)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !162, line: 2652, size: 896, elements: !808)
!808 = !{!809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !807, file: !162, line: 2653, baseType: !795, size: 384)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !807, file: !162, line: 2654, baseType: !679, size: 64, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !807, file: !162, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !807, file: !162, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !807, file: !162, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !807, file: !162, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !807, file: !162, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !807, file: !162, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !807, file: !162, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !807, file: !162, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !807, file: !162, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !807, file: !162, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !807, file: !162, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !807, file: !162, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !807, file: !162, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !807, file: !162, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !807, file: !162, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !807, file: !162, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !807, file: !162, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !807, file: !162, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !807, file: !162, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !807, file: !162, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !807, file: !162, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !807, file: !162, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !807, file: !162, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !807, file: !162, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !807, file: !162, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !807, file: !162, line: 2703, baseType: !5, size: 32, offset: 512)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !807, file: !162, line: 2705, baseType: !679, size: 64, offset: 576)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !807, file: !162, line: 2706, baseType: !679, size: 64, offset: 640)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !807, file: !162, line: 2707, baseType: !679, size: 64, offset: 704)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !807, file: !162, line: 2708, baseType: !679, size: 64, offset: 768)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !807, file: !162, line: 2711, baseType: !842, size: 64, offset: 832)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !162, line: 2711, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !681, file: !162, line: 3383, baseType: !845, size: 960)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !162, line: 2756, size: 960, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !845, file: !162, line: 2757, baseType: !807, size: 896)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !845, file: !162, line: 2758, baseType: !563, size: 64, offset: 896)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !681, file: !162, line: 3384, baseType: !850, size: 1472)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !162, line: 3114, size: 1472, elements: !851)
!851 = !{!852, !873, !874, !875, !876}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !850, file: !162, line: 3115, baseType: !853, size: 1216)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !162, line: 2984, size: 1216, elements: !854)
!854 = !{!855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !853, file: !162, line: 2985, baseType: !845, size: 960)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !853, file: !162, line: 2986, baseType: !679, size: 64, offset: 960)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !853, file: !162, line: 2987, baseType: !679, size: 64, offset: 1024)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !853, file: !162, line: 2988, baseType: !679, size: 64, offset: 1088)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !853, file: !162, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !853, file: !162, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !853, file: !162, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !853, file: !162, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !853, file: !162, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !853, file: !162, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !853, file: !162, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !853, file: !162, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !853, file: !162, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !853, file: !162, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !853, file: !162, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !853, file: !162, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !853, file: !162, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !853, file: !162, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !850, file: !162, line: 3117, baseType: !679, size: 64, offset: 1216)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !850, file: !162, line: 3119, baseType: !679, size: 64, offset: 1280)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !850, file: !162, line: 3121, baseType: !679, size: 64, offset: 1344)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !850, file: !162, line: 3123, baseType: !679, size: 64, offset: 1408)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !681, file: !162, line: 3385, baseType: !878, size: 1088)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !162, line: 2874, size: 1088, elements: !879)
!879 = !{!880, !881, !882}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !878, file: !162, line: 2875, baseType: !845, size: 960)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !878, file: !162, line: 2876, baseType: !563, size: 64, offset: 960)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !878, file: !162, line: 2877, baseType: !883, size: 64, offset: 1024)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !162, line: 2856, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !681, file: !162, line: 3386, baseType: !853, size: 1216)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !681, file: !162, line: 3387, baseType: !887, size: 1280)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !162, line: 3093, size: 1280, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !887, file: !162, line: 3094, baseType: !853, size: 1216)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !887, file: !162, line: 3095, baseType: !883, size: 64, offset: 1216)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !681, file: !162, line: 3388, baseType: !892, size: 1216)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !162, line: 2824, size: 1216, elements: !893)
!893 = !{!894, !895, !896, !897, !898, !899}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !892, file: !162, line: 2825, baseType: !807, size: 896)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !892, file: !162, line: 2827, baseType: !679, size: 64, offset: 896)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !892, file: !162, line: 2828, baseType: !679, size: 64, offset: 960)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !892, file: !162, line: 2829, baseType: !679, size: 64, offset: 1024)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !892, file: !162, line: 2830, baseType: !679, size: 64, offset: 1088)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !892, file: !162, line: 2831, baseType: !679, size: 64, offset: 1152)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !681, file: !162, line: 3389, baseType: !901, size: 1024)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !162, line: 2850, size: 1024, elements: !902)
!902 = !{!903, !904, !905}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !901, file: !162, line: 2851, baseType: !845, size: 960)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !901, file: !162, line: 2852, baseType: !556, size: 32, offset: 960)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !901, file: !162, line: 2853, baseType: !556, size: 32, offset: 992)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !681, file: !162, line: 3390, baseType: !907, size: 1024)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !162, line: 2857, size: 1024, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !907, file: !162, line: 2858, baseType: !845, size: 960)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !907, file: !162, line: 2859, baseType: !883, size: 64, offset: 960)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !681, file: !162, line: 3391, baseType: !912, size: 960)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !162, line: 2862, size: 960, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !912, file: !162, line: 2863, baseType: !845, size: 960)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !681, file: !162, line: 3392, baseType: !916, size: 1472)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !162, line: 3304, size: 1472, elements: !917)
!917 = !{!918}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !916, file: !162, line: 3305, baseType: !850, size: 1472)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !681, file: !162, line: 3393, baseType: !920, size: 1792)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !162, line: 3248, size: 1792, elements: !921)
!921 = !{!922, !923, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !920, file: !162, line: 3249, baseType: !850, size: 1472)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !920, file: !162, line: 3251, baseType: !924, size: 64, offset: 1472)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !926, line: 463, size: 1152, elements: !927)
!926 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!927 = !{!928, !931, !1091, !1092, !1095, !1154, !1155, !1156, !1157, !1158, !1159, !1183, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !925, file: !926, line: 464, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !926, line: 464, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !925, file: !926, line: 467, baseType: !932, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !146, line: 374, size: 640, elements: !934)
!934 = !{!935, !1066, !1067, !1080, !1081, !1082, !1083, !1084, !1085, !1087, !1089, !1090}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !933, file: !146, line: 377, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !564, line: 111, baseType: !937)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !146, line: 217, size: 832, elements: !939)
!939 = !{!940, !975, !976, !977, !1036, !1040, !1041, !1042, !1060, !1061, !1062, !1063, !1064, !1065}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !938, file: !146, line: 219, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !146, line: 151, baseType: !943)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !146, line: 151, size: 128, elements: !944)
!944 = !{!945}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !943, file: !146, line: 151, baseType: !946, size: 128)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !146, line: 150, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !146, line: 150, size: 128, elements: !948)
!948 = !{!949, !950, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !947, file: !146, line: 150, baseType: !5, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !947, file: !146, line: 150, baseType: !5, size: 32, offset: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !947, file: !146, line: 150, baseType: !952, size: 64, offset: 64)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !953, size: 64, elements: !598)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !564, line: 108, baseType: !954)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !146, line: 122, size: 512, elements: !956)
!956 = !{!957, !958, !959, !967, !968, !969, !970, !971, !972, !973}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !955, file: !146, line: 124, baseType: !937, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !955, file: !146, line: 125, baseType: !937, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !955, file: !146, line: 131, baseType: !960, size: 64, offset: 128)
!960 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !146, line: 128, size: 64, elements: !961)
!961 = !{!962, !966}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !960, file: !146, line: 129, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !564, line: 66, baseType: !964)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !564, line: 65, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !960, file: !146, line: 130, baseType: !563, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !955, file: !146, line: 134, baseType: !560, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !955, file: !146, line: 137, baseType: !679, size: 64, offset: 256)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !955, file: !146, line: 138, baseType: !799, size: 32, offset: 320)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !955, file: !146, line: 142, baseType: !5, size: 32, offset: 352)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !955, file: !146, line: 144, baseType: !556, size: 32, offset: 384)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !955, file: !146, line: 145, baseType: !556, size: 32, offset: 416)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !955, file: !146, line: 146, baseType: !974, size: 64, offset: 448)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !146, line: 119, baseType: !650)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !938, file: !146, line: 220, baseType: !941, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !938, file: !146, line: 223, baseType: !560, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !938, file: !146, line: 226, baseType: !978, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !133, line: 100, size: 1216, elements: !980)
!980 = !{!981, !982, !983, !984, !985, !990, !991, !992, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1026, !1034, !1035}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !979, file: !133, line: 102, baseType: !556, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !979, file: !133, line: 105, baseType: !5, size: 32, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !979, file: !133, line: 108, baseType: !937, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !979, file: !133, line: 111, baseType: !937, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !979, file: !133, line: 114, baseType: !986, size: 64, offset: 192)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !133, line: 41, size: 64, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !986, file: !133, line: 42, baseType: !132, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !986, file: !133, line: 43, baseType: !5, size: 32, offset: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !979, file: !133, line: 117, baseType: !5, size: 32, offset: 256)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !979, file: !133, line: 120, baseType: !5, size: 32, offset: 288)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !979, file: !133, line: 123, baseType: !993, size: 64, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !133, line: 87, baseType: !995)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !133, line: 87, size: 128, elements: !996)
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !995, file: !133, line: 87, baseType: !998, size: 128)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !133, line: 85, baseType: !999)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !133, line: 85, size: 128, elements: !1000)
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !999, file: !133, line: 85, baseType: !5, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !999, file: !133, line: 85, baseType: !5, size: 32, offset: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !999, file: !133, line: 85, baseType: !1004, size: 64, offset: 64)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1005, size: 64, elements: !598)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !133, line: 84, baseType: !978)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !979, file: !133, line: 126, baseType: !978, size: 64, offset: 384)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !979, file: !133, line: 129, baseType: !978, size: 64, offset: 448)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !979, file: !133, line: 132, baseType: !560, size: 64, offset: 512)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !979, file: !133, line: 139, baseType: !679, size: 64, offset: 576)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !979, file: !133, line: 143, baseType: !727, size: 128, offset: 640)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !979, file: !133, line: 146, baseType: !727, size: 128, offset: 768)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !979, file: !133, line: 148, baseType: !555, size: 8, offset: 896)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !979, file: !133, line: 149, baseType: !555, size: 8, offset: 904)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !979, file: !133, line: 153, baseType: !141, size: 32, offset: 928)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !979, file: !133, line: 156, baseType: !1016, size: 64, offset: 960)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !133, line: 48, size: 320, elements: !1018)
!1018 = !{!1019, !1023, !1024, !1025}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1017, file: !133, line: 50, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !564, line: 58, baseType: !1021)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !564, line: 57, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1017, file: !133, line: 59, baseType: !727, size: 128, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1017, file: !133, line: 64, baseType: !555, size: 8, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1017, file: !133, line: 67, baseType: !1016, size: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !979, file: !133, line: 159, baseType: !1027, size: 64, offset: 1024)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !133, line: 72, size: 256, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1033}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1028, file: !133, line: 74, baseType: !954, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1028, file: !133, line: 77, baseType: !1027, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1028, file: !133, line: 78, baseType: !1027, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1028, file: !133, line: 81, baseType: !1027, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !979, file: !133, line: 162, baseType: !555, size: 8, offset: 1088)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !979, file: !133, line: 166, baseType: !679, size: 64, offset: 1152)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !938, file: !146, line: 229, baseType: !1037, size: 128, offset: 256)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1038, size: 128, elements: !634)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !146, line: 229, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !938, file: !146, line: 232, baseType: !937, size: 64, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !938, file: !146, line: 233, baseType: !937, size: 64, offset: 448)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !938, file: !146, line: 238, baseType: !1043, size: 64, offset: 512)
!1043 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !146, line: 235, size: 64, elements: !1044)
!1044 = !{!1045, !1051}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1043, file: !146, line: 236, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !146, line: 273, size: 128, elements: !1048)
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1047, file: !146, line: 275, baseType: !963, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1047, file: !146, line: 278, baseType: !963, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1043, file: !146, line: 237, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !146, line: 259, size: 320, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1058, !1059}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1053, file: !146, line: 261, baseType: !563, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1053, file: !146, line: 262, baseType: !563, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1053, file: !146, line: 266, baseType: !563, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1053, file: !146, line: 267, baseType: !563, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1053, file: !146, line: 270, baseType: !556, size: 32, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !938, file: !146, line: 241, baseType: !974, size: 64, offset: 576)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !938, file: !146, line: 244, baseType: !556, size: 32, offset: 640)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !938, file: !146, line: 247, baseType: !556, size: 32, offset: 672)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !938, file: !146, line: 250, baseType: !556, size: 32, offset: 704)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !938, file: !146, line: 253, baseType: !556, size: 32, offset: 736)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !938, file: !146, line: 256, baseType: !556, size: 32, offset: 768)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !933, file: !146, line: 378, baseType: !936, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !933, file: !146, line: 381, baseType: !1068, size: 64, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !146, line: 282, baseType: !1070)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !146, line: 282, size: 128, elements: !1071)
!1071 = !{!1072}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1070, file: !146, line: 282, baseType: !1073, size: 128)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !146, line: 281, baseType: !1074)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !146, line: 281, size: 128, elements: !1075)
!1075 = !{!1076, !1077, !1078}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1074, file: !146, line: 281, baseType: !5, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1074, file: !146, line: 281, baseType: !5, size: 32, offset: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1074, file: !146, line: 281, baseType: !1079, size: 64, offset: 64)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !936, size: 64, elements: !598)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !933, file: !146, line: 384, baseType: !556, size: 32, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !933, file: !146, line: 387, baseType: !556, size: 32, offset: 224)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !933, file: !146, line: 390, baseType: !556, size: 32, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !933, file: !146, line: 394, baseType: !1068, size: 64, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !933, file: !146, line: 396, baseType: !145, size: 32, offset: 384)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !933, file: !146, line: 399, baseType: !1086, size: 64, offset: 416)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 64, elements: !634)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !933, file: !146, line: 402, baseType: !1088, size: 64, offset: 480)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !634)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !933, file: !146, line: 406, baseType: !556, size: 32, offset: 544)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !933, file: !146, line: 409, baseType: !556, size: 32, offset: 576)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !925, file: !926, line: 470, baseType: !964, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !925, file: !926, line: 473, baseType: !1093, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !926, line: 166, flags: DIFlagFwdDecl)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !925, file: !926, line: 476, baseType: !1096, size: 64, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !133, line: 187, size: 256, elements: !1098)
!1098 = !{!1099, !1100, !1101, !1153}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1097, file: !133, line: 189, baseType: !556, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1097, file: !133, line: 192, baseType: !993, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1097, file: !133, line: 197, baseType: !1102, size: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1103, line: 144, baseType: !1104)
!1103 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1103, line: 100, size: 896, elements: !1106)
!1106 = !{!1107, !1115, !1120, !1125, !1127, !1130, !1131, !1132, !1133, !1134, !1139, !1141, !1142, !1147, !1152}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1105, file: !1103, line: 102, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1103, line: 52, baseType: !1109)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1103, line: 47, baseType: !5)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1105, file: !1103, line: 105, baseType: !1116, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1103, line: 59, baseType: !1117)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!556, !1113, !1113}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1105, file: !1103, line: 108, baseType: !1121, size: 64, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1103, line: 63, baseType: !1122)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !560}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1105, file: !1103, line: 111, baseType: !1126, size: 64, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1105, file: !1103, line: 114, baseType: !1128, size: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1129, line: 46, baseType: !633)
!1129 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1105, file: !1103, line: 117, baseType: !1128, size: 64, offset: 320)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1105, file: !1103, line: 120, baseType: !1128, size: 64, offset: 384)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1105, file: !1103, line: 124, baseType: !5, size: 32, offset: 448)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1105, file: !1103, line: 128, baseType: !5, size: 32, offset: 480)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1105, file: !1103, line: 131, baseType: !1135, size: 64, offset: 512)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1103, line: 75, baseType: !1136)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!560, !1128, !1128}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1105, file: !1103, line: 132, baseType: !1140, size: 64, offset: 576)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1103, line: 78, baseType: !1122)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1105, file: !1103, line: 135, baseType: !560, size: 64, offset: 640)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1105, file: !1103, line: 136, baseType: !1143, size: 64, offset: 704)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1103, line: 82, baseType: !1144)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!560, !560, !1128, !1128}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1105, file: !1103, line: 137, baseType: !1148, size: 64, offset: 768)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1103, line: 83, baseType: !1149)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !560, !560}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1105, file: !1103, line: 141, baseType: !5, size: 32, offset: 832)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1097, file: !133, line: 200, baseType: !978, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !925, file: !926, line: 479, baseType: !1102, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !925, file: !926, line: 484, baseType: !679, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !925, file: !926, line: 488, baseType: !679, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !925, file: !926, line: 493, baseType: !679, size: 64, offset: 512)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !925, file: !926, line: 496, baseType: !679, size: 64, offset: 576)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !925, file: !926, line: 501, baseType: !1160, size: 64, offset: 640)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !157, line: 2355, size: 576, elements: !1162)
!1162 = !{!1163, !1166, !1167, !1168, !1169, !1171, !1172, !1177, !1178, !1179, !1180, !1181, !1182}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1161, file: !157, line: 2356, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !157, line: 2356, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1161, file: !157, line: 2357, baseType: !561, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1161, file: !157, line: 2358, baseType: !556, size: 32, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1161, file: !157, line: 2359, baseType: !556, size: 32, offset: 160)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1161, file: !157, line: 2360, baseType: !1170, size: 128, offset: 192)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 128, elements: !659)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1161, file: !157, line: 2364, baseType: !556, size: 32, offset: 320)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1161, file: !157, line: 2367, baseType: !1173, size: 128, offset: 384)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !157, line: 2349, size: 128, elements: !1174)
!1174 = !{!1175, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1173, file: !157, line: 2351, baseType: !563, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1173, file: !157, line: 2352, baseType: !650, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1161, file: !157, line: 2371, baseType: !156, size: 32, offset: 512)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1161, file: !157, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1161, file: !157, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1161, file: !157, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1161, file: !157, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1161, file: !157, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !925, file: !926, line: 504, baseType: !1184, size: 64, offset: 704)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !926, line: 504, flags: DIFlagFwdDecl)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !925, file: !926, line: 507, baseType: !1102, size: 64, offset: 768)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !925, file: !926, line: 510, baseType: !556, size: 32, offset: 832)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !925, file: !926, line: 513, baseType: !556, size: 32, offset: 864)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !925, file: !926, line: 516, baseType: !799, size: 32, offset: 896)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !925, file: !926, line: 519, baseType: !799, size: 32, offset: 928)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !925, file: !926, line: 522, baseType: !5, size: 32, offset: 960)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !925, file: !926, line: 523, baseType: !5, size: 32, offset: 992)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !925, file: !926, line: 528, baseType: !561, size: 64, offset: 1024)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !925, file: !926, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !925, file: !926, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !925, file: !926, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !925, file: !926, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !925, file: !926, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !925, file: !926, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !925, file: !926, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !925, file: !926, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !925, file: !926, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !925, file: !926, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !925, file: !926, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !925, file: !926, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !925, file: !926, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !925, file: !926, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !925, file: !926, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !925, file: !926, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !920, file: !162, line: 3254, baseType: !679, size: 64, offset: 1536)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !920, file: !162, line: 3257, baseType: !679, size: 64, offset: 1600)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !920, file: !162, line: 3258, baseType: !679, size: 64, offset: 1664)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !920, file: !162, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !920, file: !162, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !920, file: !162, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !920, file: !162, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !920, file: !162, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !920, file: !162, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !920, file: !162, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !920, file: !162, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !920, file: !162, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !920, file: !162, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !920, file: !162, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !920, file: !162, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !920, file: !162, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !920, file: !162, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !920, file: !162, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !920, file: !162, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !920, file: !162, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !920, file: !162, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !681, file: !162, line: 3394, baseType: !1232, size: 1344)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !162, line: 2279, size: 1344, elements: !1233)
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1259, !1260, !1261, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1232, file: !162, line: 2280, baseType: !717, size: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1232, file: !162, line: 2281, baseType: !679, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1232, file: !162, line: 2282, baseType: !679, size: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1232, file: !162, line: 2283, baseType: !679, size: 64, offset: 320)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1232, file: !162, line: 2284, baseType: !679, size: 64, offset: 384)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1232, file: !162, line: 2285, baseType: !5, size: 32, offset: 448)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1232, file: !162, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1232, file: !162, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1232, file: !162, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1232, file: !162, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1232, file: !162, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1232, file: !162, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1232, file: !162, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1232, file: !162, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1232, file: !162, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1232, file: !162, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1232, file: !162, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1232, file: !162, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1232, file: !162, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1232, file: !162, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1232, file: !162, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1232, file: !162, line: 2305, baseType: !5, size: 32, offset: 512)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1232, file: !162, line: 2306, baseType: !1257, size: 32, offset: 544)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1258, line: 31, baseType: !556)
!1258 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1232, file: !162, line: 2307, baseType: !679, size: 64, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1232, file: !162, line: 2308, baseType: !679, size: 64, offset: 640)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1232, file: !162, line: 2314, baseType: !1262, size: 64, offset: 704)
!1262 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !162, line: 2309, size: 64, elements: !1263)
!1263 = !{!1264, !1265, !1266}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1262, file: !162, line: 2310, baseType: !556, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1262, file: !162, line: 2311, baseType: !561, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1262, file: !162, line: 2312, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !162, line: 2277, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1232, file: !162, line: 2315, baseType: !679, size: 64, offset: 768)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1232, file: !162, line: 2316, baseType: !679, size: 64, offset: 832)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1232, file: !162, line: 2317, baseType: !679, size: 64, offset: 896)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1232, file: !162, line: 2318, baseType: !679, size: 64, offset: 960)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1232, file: !162, line: 2319, baseType: !679, size: 64, offset: 1024)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1232, file: !162, line: 2320, baseType: !679, size: 64, offset: 1088)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1232, file: !162, line: 2321, baseType: !679, size: 64, offset: 1152)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1232, file: !162, line: 2322, baseType: !679, size: 64, offset: 1216)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1232, file: !162, line: 2324, baseType: !1278, size: 64, offset: 1280)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !162, line: 2324, flags: DIFlagFwdDecl)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !681, file: !162, line: 3395, baseType: !1281, size: 320)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !162, line: 1469, size: 320, elements: !1282)
!1282 = !{!1283, !1284, !1285}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1281, file: !162, line: 1470, baseType: !717, size: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1281, file: !162, line: 1471, baseType: !679, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1281, file: !162, line: 1472, baseType: !679, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !681, file: !162, line: 3396, baseType: !1287, size: 320)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !162, line: 1482, size: 320, elements: !1288)
!1288 = !{!1289, !1290, !1291}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1287, file: !162, line: 1483, baseType: !717, size: 192)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1287, file: !162, line: 1484, baseType: !556, size: 32, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1287, file: !162, line: 1485, baseType: !1292, size: 64, offset: 256)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 64, elements: !598)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !681, file: !162, line: 3397, baseType: !1294, size: 384)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !162, line: 1829, size: 384, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1294, file: !162, line: 1830, baseType: !717, size: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1294, file: !162, line: 1831, baseType: !799, size: 32, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1294, file: !162, line: 1832, baseType: !679, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1294, file: !162, line: 1835, baseType: !1292, size: 64, offset: 320)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !681, file: !162, line: 3398, baseType: !1301, size: 704)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !162, line: 1898, size: 704, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1310}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1301, file: !162, line: 1899, baseType: !717, size: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1301, file: !162, line: 1902, baseType: !679, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1301, file: !162, line: 1905, baseType: !1020, size: 64, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1301, file: !162, line: 1908, baseType: !5, size: 32, offset: 320)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1301, file: !162, line: 1911, baseType: !1308, size: 64, offset: 384)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !162, line: 1876, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1301, file: !162, line: 1914, baseType: !1311, size: 256, offset: 448)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !162, line: 1883, size: 256, elements: !1312)
!1312 = !{!1313, !1315, !1316, !1321}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1311, file: !162, line: 1884, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1311, file: !162, line: 1885, baseType: !1314, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1311, file: !162, line: 1891, baseType: !1317, size: 64, offset: 128)
!1317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1311, file: !162, line: 1891, size: 64, elements: !1318)
!1318 = !{!1319, !1320}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1317, file: !162, line: 1891, baseType: !1020, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1317, file: !162, line: 1891, baseType: !679, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1311, file: !162, line: 1892, baseType: !1322, size: 64, offset: 192)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !681, file: !162, line: 3399, baseType: !1324, size: 704)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !162, line: 2008, size: 704, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1331, !1343, !1344, !1345, !1346, !1347}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1324, file: !162, line: 2009, baseType: !717, size: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1324, file: !162, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1324, file: !162, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1324, file: !162, line: 2014, baseType: !799, size: 32, offset: 224)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1324, file: !162, line: 2016, baseType: !679, size: 64, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1324, file: !162, line: 2017, baseType: !1332, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !162, line: 183, baseType: !1334)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !162, line: 183, size: 128, elements: !1335)
!1335 = !{!1336}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1334, file: !162, line: 183, baseType: !1337, size: 128)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !162, line: 182, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !162, line: 182, size: 128, elements: !1339)
!1339 = !{!1340, !1341, !1342}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1338, file: !162, line: 182, baseType: !5, size: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1338, file: !162, line: 182, baseType: !5, size: 32, offset: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1338, file: !162, line: 182, baseType: !1292, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1324, file: !162, line: 2019, baseType: !679, size: 64, offset: 384)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1324, file: !162, line: 2020, baseType: !679, size: 64, offset: 448)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1324, file: !162, line: 2021, baseType: !679, size: 64, offset: 512)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1324, file: !162, line: 2022, baseType: !679, size: 64, offset: 576)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1324, file: !162, line: 2023, baseType: !679, size: 64, offset: 640)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !681, file: !162, line: 3400, baseType: !1349, size: 832)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !162, line: 2430, size: 832, elements: !1350)
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1349, file: !162, line: 2431, baseType: !717, size: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1349, file: !162, line: 2433, baseType: !679, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1349, file: !162, line: 2434, baseType: !679, size: 64, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1349, file: !162, line: 2435, baseType: !679, size: 64, offset: 320)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1349, file: !162, line: 2436, baseType: !679, size: 64, offset: 384)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1349, file: !162, line: 2437, baseType: !1332, size: 64, offset: 448)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1349, file: !162, line: 2438, baseType: !679, size: 64, offset: 512)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1349, file: !162, line: 2440, baseType: !679, size: 64, offset: 576)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1349, file: !162, line: 2441, baseType: !679, size: 64, offset: 640)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1349, file: !162, line: 2443, baseType: !1361, size: 128, offset: 704)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !162, line: 182, baseType: !1362)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !162, line: 182, size: 128, elements: !1363)
!1363 = !{!1364}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1362, file: !162, line: 182, baseType: !1337, size: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !681, file: !162, line: 3401, baseType: !1366, size: 320)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !162, line: 3327, size: 320, elements: !1367)
!1367 = !{!1368, !1369, !1376}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1366, file: !162, line: 3329, baseType: !717, size: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1366, file: !162, line: 3330, baseType: !1370, size: 64, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !162, line: 3320, size: 192, elements: !1372)
!1372 = !{!1373, !1374, !1375}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1371, file: !162, line: 3322, baseType: !1370, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1371, file: !162, line: 3323, baseType: !1370, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1371, file: !162, line: 3324, baseType: !679, size: 64, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1366, file: !162, line: 3331, baseType: !1370, size: 64, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !681, file: !162, line: 3402, baseType: !1378, size: 256)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !162, line: 1540, size: 256, elements: !1379)
!1379 = !{!1380, !1381}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1378, file: !162, line: 1541, baseType: !717, size: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1378, file: !162, line: 1542, baseType: !1382, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !162, line: 1538, baseType: !1384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !162, line: 1538, size: 192, elements: !1385)
!1385 = !{!1386}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1384, file: !162, line: 1538, baseType: !1387, size: 192)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !162, line: 1537, baseType: !1388)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !162, line: 1537, size: 192, elements: !1389)
!1389 = !{!1390, !1391, !1392}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1388, file: !162, line: 1537, baseType: !5, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1388, file: !162, line: 1537, baseType: !5, size: 32, offset: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1388, file: !162, line: 1537, baseType: !1393, size: 128, offset: 64)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 128, elements: !598)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !162, line: 1535, baseType: !1395)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !162, line: 1532, size: 128, elements: !1396)
!1396 = !{!1397, !1398}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1395, file: !162, line: 1533, baseType: !679, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1395, file: !162, line: 1534, baseType: !679, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !681, file: !162, line: 3403, baseType: !1400, size: 512)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !162, line: 1938, size: 512, elements: !1401)
!1401 = !{!1402, !1403, !1404, !1405, !1411, !1412, !1413}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1400, file: !162, line: 1939, baseType: !717, size: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1400, file: !162, line: 1940, baseType: !799, size: 32, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1400, file: !162, line: 1941, baseType: !161, size: 32, offset: 224)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1400, file: !162, line: 1946, baseType: !1406, size: 32, offset: 256)
!1406 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !162, line: 1942, size: 32, elements: !1407)
!1407 = !{!1408, !1409, !1410}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1406, file: !162, line: 1943, baseType: !180, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1406, file: !162, line: 1944, baseType: !187, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1406, file: !162, line: 1945, baseType: !194, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1400, file: !162, line: 1950, baseType: !963, size: 64, offset: 320)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1400, file: !162, line: 1951, baseType: !963, size: 64, offset: 384)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1400, file: !162, line: 1953, baseType: !1292, size: 64, offset: 448)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !681, file: !162, line: 3404, baseType: !1415, size: 1664)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !162, line: 3337, size: 1664, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1415, file: !162, line: 3338, baseType: !717, size: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1415, file: !162, line: 3341, baseType: !1419, size: 1472, offset: 192)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1420, line: 410, size: 1472, elements: !1421)
!1420 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1419, file: !1420, line: 412, baseType: !556, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1419, file: !1420, line: 413, baseType: !556, size: 32, offset: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1419, file: !1420, line: 414, baseType: !556, size: 32, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1419, file: !1420, line: 415, baseType: !556, size: 32, offset: 96)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1419, file: !1420, line: 416, baseType: !556, size: 32, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1419, file: !1420, line: 417, baseType: !556, size: 32, offset: 160)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1419, file: !1420, line: 418, baseType: !555, size: 8, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1419, file: !1420, line: 419, baseType: !555, size: 8, offset: 200)
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
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !681, file: !162, line: 3405, baseType: !1587, size: 384)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !162, line: 3352, size: 384, elements: !1588)
!1588 = !{!1589, !1590}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1587, file: !162, line: 3353, baseType: !717, size: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1587, file: !162, line: 3356, baseType: !1591, size: 192, offset: 192)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1420, line: 578, size: 192, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1591, file: !1420, line: 580, baseType: !556, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1591, file: !1420, line: 581, baseType: !556, size: 32, offset: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1591, file: !1420, line: 582, baseType: !556, size: 32, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1591, file: !1420, line: 583, baseType: !556, size: 32, offset: 96)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1591, file: !1420, line: 584, baseType: !555, size: 8, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1591, file: !1420, line: 585, baseType: !555, size: 8, offset: 136)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1591, file: !1420, line: 586, baseType: !555, size: 8, offset: 144)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1591, file: !1420, line: 587, baseType: !555, size: 8, offset: 152)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1591, file: !1420, line: 588, baseType: !555, size: 8, offset: 160)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1591, file: !1420, line: 589, baseType: !555, size: 8, offset: 168)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1591, file: !1420, line: 590, baseType: !555, size: 8, offset: 176)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !584, file: !389, line: 178, baseType: !937, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !584, file: !389, line: 179, baseType: !1606, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !389, line: 150, baseType: !1608)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !389, line: 142, size: 320, elements: !1609)
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1615}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1608, file: !389, line: 144, baseType: !679, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1608, file: !389, line: 145, baseType: !563, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1608, file: !389, line: 146, baseType: !563, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1608, file: !389, line: 147, baseType: !1257, size: 32, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1608, file: !389, line: 148, baseType: !5, size: 32, offset: 224)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1608, file: !389, line: 149, baseType: !555, size: 8, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !584, file: !389, line: 180, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !389, line: 162, baseType: !1619)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !389, line: 159, size: 128, elements: !1620)
!1620 = !{!1621, !1622}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1619, file: !389, line: 160, baseType: !679, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1619, file: !389, line: 161, baseType: !650, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !584, file: !389, line: 181, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !389, line: 181, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !579, file: !389, line: 317, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 64, elements: !598)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !579, file: !389, line: 318, baseType: !1629, size: 320)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !389, line: 188, size: 320, elements: !1630)
!1630 = !{!1631, !1633, !1688}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1629, file: !389, line: 190, baseType: !1632, size: 192)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 192, elements: !750)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1629, file: !389, line: 193, baseType: !1634, size: 64, offset: 192)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !389, line: 206, size: 320, elements: !1636)
!1636 = !{!1637, !1673, !1674, !1675, !1687}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1635, file: !389, line: 208, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !564, line: 62, baseType: !1640)
!1640 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1641, line: 538, size: 256, elements: !1642)
!1641 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1642 = !{!1643, !1647, !1653, !1664}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1640, file: !1641, line: 539, baseType: !1644, size: 32)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1641, line: 482, size: 32, elements: !1645)
!1645 = !{!1646}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1644, file: !1641, line: 484, baseType: !5, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1640, file: !1641, line: 540, baseType: !1648, size: 192)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1641, line: 488, size: 192, elements: !1649)
!1649 = !{!1650, !1651, !1652}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1648, file: !1641, line: 489, baseType: !1644, size: 32)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1648, file: !1641, line: 492, baseType: !561, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1648, file: !1641, line: 496, baseType: !679, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1640, file: !1641, line: 541, baseType: !1654, size: 256)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1641, line: 504, size: 256, elements: !1655)
!1655 = !{!1656, !1657, !1662, !1663}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1654, file: !1641, line: 505, baseType: !1644, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1654, file: !1641, line: 509, baseType: !1658, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1641, line: 501, baseType: !1659)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{null, !1113}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1654, file: !1641, line: 510, baseType: !1113, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1654, file: !1641, line: 513, baseType: !1638, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1640, file: !1641, line: 542, baseType: !1665, size: 128)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1641, line: 530, size: 128, elements: !1666)
!1666 = !{!1667, !1668}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1665, file: !1641, line: 531, baseType: !1644, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1665, file: !1641, line: 534, baseType: !1669, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1641, line: 525, baseType: !1670)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!555, !679, !561, !633, !633}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1635, file: !389, line: 211, baseType: !5, size: 32, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1635, file: !389, line: 214, baseType: !650, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1635, file: !389, line: 224, baseType: !1676, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !389, line: 202, baseType: !1678)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !389, line: 202, size: 128, elements: !1679)
!1679 = !{!1680}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1678, file: !389, line: 202, baseType: !1681, size: 128)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !389, line: 200, baseType: !1682)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !389, line: 200, size: 128, elements: !1683)
!1683 = !{!1684, !1685, !1686}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1682, file: !389, line: 200, baseType: !5, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1682, file: !389, line: 200, baseType: !5, size: 32, offset: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1682, file: !389, line: 200, baseType: !597, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1635, file: !389, line: 234, baseType: !1676, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1629, file: !389, line: 197, baseType: !650, size: 64, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !579, file: !389, line: 319, baseType: !739, size: 256)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !579, file: !389, line: 320, baseType: !758, size: 192)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !1693, line: 32, baseType: !1694)
!1693 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !1693, line: 32, size: 96, elements: !1695)
!1695 = !{!1696}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1694, file: !1693, line: 32, baseType: !1697, size: 96)
!1697 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !1693, line: 31, baseType: !1698)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !1693, line: 31, size: 96, elements: !1699)
!1699 = !{!1700, !1701, !1702}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1698, file: !1693, line: 31, baseType: !5, size: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1698, file: !1693, line: 31, baseType: !5, size: 32, offset: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1698, file: !1693, line: 31, baseType: !1703, size: 32, offset: 64)
!1703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 32, elements: !598)
!1704 = !{i32 2, !"Dwarf Version", i32 4}
!1705 = !{i32 2, !"Debug Info Version", i32 3}
!1706 = !{i32 1, !"wchar_size", i32 4}
!1707 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1708 = distinct !DISubprogram(name: "vprintf", scope: !1709, file: !1709, line: 39, type: !1710, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1720)
!1709 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!556, !1712, !1713}
!1712 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !561)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1715)
!1715 = !{!1716, !1717, !1718, !1719}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1714, file: !1, baseType: !5, size: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1714, file: !1, baseType: !5, size: 32, offset: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1714, file: !1, baseType: !560, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1714, file: !1, baseType: !560, size: 64, offset: 128)
!1720 = !{!1721, !1722}
!1721 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1708, file: !1709, line: 39, type: !1712)
!1722 = !DILocalVariable(name: "__arg", arg: 2, scope: !1708, file: !1709, line: 39, type: !1713)
!1723 = !DILocation(line: 0, scope: !1708)
!1724 = !DILocation(line: 41, column: 20, scope: !1708)
!1725 = !DILocation(line: 41, column: 10, scope: !1708)
!1726 = !DILocation(line: 41, column: 3, scope: !1708)
!1727 = distinct !DISubprogram(name: "getchar", scope: !1709, file: !1709, line: 47, type: !1728, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1730)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!556}
!1730 = !{}
!1731 = !DILocation(line: 49, column: 16, scope: !1727)
!1732 = !DILocation(line: 49, column: 10, scope: !1727)
!1733 = !DILocation(line: 49, column: 3, scope: !1727)
!1734 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1709, file: !1709, line: 56, type: !1735, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1788)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!556, !1737}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1739, line: 7, baseType: !1740)
!1739 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1741, line: 49, size: 1728, elements: !1742)
!1741 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1742 = !{!1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1758, !1760, !1761, !1762, !1765, !1767, !1768, !1769, !1772, !1774, !1777, !1780, !1781, !1782, !1783, !1784}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1740, file: !1741, line: 51, baseType: !556, size: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1740, file: !1741, line: 54, baseType: !558, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1740, file: !1741, line: 55, baseType: !558, size: 64, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1740, file: !1741, line: 56, baseType: !558, size: 64, offset: 192)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1740, file: !1741, line: 57, baseType: !558, size: 64, offset: 256)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1740, file: !1741, line: 58, baseType: !558, size: 64, offset: 320)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1740, file: !1741, line: 59, baseType: !558, size: 64, offset: 384)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1740, file: !1741, line: 60, baseType: !558, size: 64, offset: 448)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1740, file: !1741, line: 61, baseType: !558, size: 64, offset: 512)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1740, file: !1741, line: 64, baseType: !558, size: 64, offset: 576)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1740, file: !1741, line: 65, baseType: !558, size: 64, offset: 640)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1740, file: !1741, line: 66, baseType: !558, size: 64, offset: 704)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1740, file: !1741, line: 68, baseType: !1756, size: 64, offset: 768)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1741, line: 36, flags: DIFlagFwdDecl)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1740, file: !1741, line: 70, baseType: !1759, size: 64, offset: 832)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1740, file: !1741, line: 72, baseType: !556, size: 32, offset: 896)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1740, file: !1741, line: 73, baseType: !556, size: 32, offset: 928)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1740, file: !1741, line: 74, baseType: !1763, size: 64, offset: 960)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1764, line: 152, baseType: !650)
!1764 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1740, file: !1741, line: 77, baseType: !1766, size: 16, offset: 1024)
!1766 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1740, file: !1741, line: 78, baseType: !1431, size: 8, offset: 1040)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1740, file: !1741, line: 79, baseType: !774, size: 8, offset: 1048)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1740, file: !1741, line: 81, baseType: !1770, size: 64, offset: 1088)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1741, line: 43, baseType: null)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1740, file: !1741, line: 89, baseType: !1773, size: 64, offset: 1152)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1764, line: 153, baseType: !650)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1740, file: !1741, line: 91, baseType: !1775, size: 64, offset: 1216)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1741, line: 37, flags: DIFlagFwdDecl)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1740, file: !1741, line: 92, baseType: !1778, size: 64, offset: 1280)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1741, line: 38, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1740, file: !1741, line: 93, baseType: !1759, size: 64, offset: 1344)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1740, file: !1741, line: 94, baseType: !560, size: 64, offset: 1408)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1740, file: !1741, line: 95, baseType: !1128, size: 64, offset: 1472)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1740, file: !1741, line: 96, baseType: !556, size: 32, offset: 1536)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1740, file: !1741, line: 98, baseType: !1785, size: 160, offset: 1568)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 160, elements: !1786)
!1786 = !{!1787}
!1787 = !DISubrange(count: 20)
!1788 = !{!1789}
!1789 = !DILocalVariable(name: "__fp", arg: 1, scope: !1734, file: !1709, line: 56, type: !1737)
!1790 = !DILocation(line: 0, scope: !1734)
!1791 = !DILocation(line: 58, column: 10, scope: !1734)
!1792 = !DILocation(line: 58, column: 3, scope: !1734)
!1793 = distinct !DISubprogram(name: "getc_unlocked", scope: !1709, file: !1709, line: 66, type: !1735, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1794)
!1794 = !{!1795}
!1795 = !DILocalVariable(name: "__fp", arg: 1, scope: !1793, file: !1709, line: 66, type: !1737)
!1796 = !DILocation(line: 0, scope: !1793)
!1797 = !DILocation(line: 68, column: 10, scope: !1793)
!1798 = !DILocation(line: 68, column: 3, scope: !1793)
!1799 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1709, file: !1709, line: 73, type: !1728, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1730)
!1800 = !DILocation(line: 75, column: 10, scope: !1799)
!1801 = !DILocation(line: 75, column: 3, scope: !1799)
!1802 = distinct !DISubprogram(name: "putchar", scope: !1709, file: !1709, line: 82, type: !1803, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1805)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!556, !556}
!1805 = !{!1806}
!1806 = !DILocalVariable(name: "__c", arg: 1, scope: !1802, file: !1709, line: 82, type: !556)
!1807 = !DILocation(line: 0, scope: !1802)
!1808 = !DILocation(line: 84, column: 21, scope: !1802)
!1809 = !DILocation(line: 84, column: 10, scope: !1802)
!1810 = !DILocation(line: 84, column: 3, scope: !1802)
!1811 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1709, file: !1709, line: 91, type: !1812, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1814)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!556, !556, !1737}
!1814 = !{!1815, !1816}
!1815 = !DILocalVariable(name: "__c", arg: 1, scope: !1811, file: !1709, line: 91, type: !556)
!1816 = !DILocalVariable(name: "__stream", arg: 2, scope: !1811, file: !1709, line: 91, type: !1737)
!1817 = !DILocation(line: 0, scope: !1811)
!1818 = !DILocation(line: 93, column: 10, scope: !1811)
!1819 = !DILocation(line: 93, column: 3, scope: !1811)
!1820 = distinct !DISubprogram(name: "putc_unlocked", scope: !1709, file: !1709, line: 101, type: !1812, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1821)
!1821 = !{!1822, !1823}
!1822 = !DILocalVariable(name: "__c", arg: 1, scope: !1820, file: !1709, line: 101, type: !556)
!1823 = !DILocalVariable(name: "__stream", arg: 2, scope: !1820, file: !1709, line: 101, type: !1737)
!1824 = !DILocation(line: 0, scope: !1820)
!1825 = !DILocation(line: 103, column: 10, scope: !1820)
!1826 = !DILocation(line: 103, column: 3, scope: !1820)
!1827 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1709, file: !1709, line: 108, type: !1803, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1828)
!1828 = !{!1829}
!1829 = !DILocalVariable(name: "__c", arg: 1, scope: !1827, file: !1709, line: 108, type: !556)
!1830 = !DILocation(line: 0, scope: !1827)
!1831 = !DILocation(line: 110, column: 10, scope: !1827)
!1832 = !DILocation(line: 110, column: 3, scope: !1827)
!1833 = distinct !DISubprogram(name: "getline", scope: !1709, file: !1709, line: 118, type: !1834, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1838)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!1836, !557, !1837, !1737}
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1764, line: 193, baseType: !650)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1838 = !{!1839, !1840, !1841}
!1839 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1833, file: !1709, line: 118, type: !557)
!1840 = !DILocalVariable(name: "__n", arg: 2, scope: !1833, file: !1709, line: 118, type: !1837)
!1841 = !DILocalVariable(name: "__stream", arg: 3, scope: !1833, file: !1709, line: 118, type: !1737)
!1842 = !DILocation(line: 0, scope: !1833)
!1843 = !DILocation(line: 120, column: 10, scope: !1833)
!1844 = !DILocation(line: 120, column: 3, scope: !1833)
!1845 = distinct !DISubprogram(name: "feof_unlocked", scope: !1709, file: !1709, line: 128, type: !1735, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1846)
!1846 = !{!1847}
!1847 = !DILocalVariable(name: "__stream", arg: 1, scope: !1845, file: !1709, line: 128, type: !1737)
!1848 = !DILocation(line: 0, scope: !1845)
!1849 = !DILocation(line: 130, column: 10, scope: !1845)
!1850 = !DILocation(line: 130, column: 3, scope: !1845)
!1851 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1709, file: !1709, line: 135, type: !1735, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1852)
!1852 = !{!1853}
!1853 = !DILocalVariable(name: "__stream", arg: 1, scope: !1851, file: !1709, line: 135, type: !1737)
!1854 = !DILocation(line: 0, scope: !1851)
!1855 = !DILocation(line: 137, column: 10, scope: !1851)
!1856 = !DILocation(line: 137, column: 3, scope: !1851)
!1857 = distinct !DISubprogram(name: "tolower", scope: !1858, file: !1858, line: 207, type: !1803, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1859)
!1858 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1859 = !{!1860}
!1860 = !DILocalVariable(name: "__c", arg: 1, scope: !1857, file: !1858, line: 207, type: !556)
!1861 = !DILocation(line: 0, scope: !1857)
!1862 = !DILocation(line: 209, column: 22, scope: !1857)
!1863 = !DILocation(line: 209, column: 39, scope: !1857)
!1864 = !DILocation(line: 209, column: 38, scope: !1857)
!1865 = !DILocation(line: 209, column: 37, scope: !1857)
!1866 = !DILocation(line: 209, column: 10, scope: !1857)
!1867 = !DILocation(line: 209, column: 3, scope: !1857)
!1868 = distinct !DISubprogram(name: "toupper", scope: !1858, file: !1858, line: 213, type: !1803, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1869)
!1869 = !{!1870}
!1870 = !DILocalVariable(name: "__c", arg: 1, scope: !1868, file: !1858, line: 213, type: !556)
!1871 = !DILocation(line: 0, scope: !1868)
!1872 = !DILocation(line: 215, column: 22, scope: !1868)
!1873 = !DILocation(line: 215, column: 39, scope: !1868)
!1874 = !DILocation(line: 215, column: 38, scope: !1868)
!1875 = !DILocation(line: 215, column: 37, scope: !1868)
!1876 = !DILocation(line: 215, column: 10, scope: !1868)
!1877 = !DILocation(line: 215, column: 3, scope: !1868)
!1878 = distinct !DISubprogram(name: "atoi", scope: !1879, file: !1879, line: 361, type: !1880, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1882)
!1879 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!556, !561}
!1882 = !{!1883}
!1883 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1878, file: !1879, line: 361, type: !561)
!1884 = !DILocation(line: 0, scope: !1878)
!1885 = !DILocation(line: 363, column: 16, scope: !1878)
!1886 = !DILocation(line: 363, column: 10, scope: !1878)
!1887 = !DILocation(line: 363, column: 3, scope: !1878)
!1888 = distinct !DISubprogram(name: "atol", scope: !1879, file: !1879, line: 366, type: !1889, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1891)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!650, !561}
!1891 = !{!1892}
!1892 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1888, file: !1879, line: 366, type: !561)
!1893 = !DILocation(line: 0, scope: !1888)
!1894 = !DILocation(line: 368, column: 10, scope: !1888)
!1895 = !DILocation(line: 368, column: 3, scope: !1888)
!1896 = distinct !DISubprogram(name: "atoll", scope: !1879, file: !1879, line: 373, type: !1897, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1900)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!1899, !561}
!1899 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1900 = !{!1901}
!1901 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1896, file: !1879, line: 373, type: !561)
!1902 = !DILocation(line: 0, scope: !1896)
!1903 = !DILocation(line: 375, column: 10, scope: !1896)
!1904 = !DILocation(line: 375, column: 3, scope: !1896)
!1905 = distinct !DISubprogram(name: "bsearch", scope: !1906, file: !1906, line: 20, type: !1907, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1910)
!1906 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!560, !1113, !1113, !1128, !1128, !1909}
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1879, line: 808, baseType: !1117)
!1910 = !{!1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920}
!1911 = !DILocalVariable(name: "__key", arg: 1, scope: !1905, file: !1906, line: 20, type: !1113)
!1912 = !DILocalVariable(name: "__base", arg: 2, scope: !1905, file: !1906, line: 20, type: !1113)
!1913 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1905, file: !1906, line: 20, type: !1128)
!1914 = !DILocalVariable(name: "__size", arg: 4, scope: !1905, file: !1906, line: 20, type: !1128)
!1915 = !DILocalVariable(name: "__compar", arg: 5, scope: !1905, file: !1906, line: 21, type: !1909)
!1916 = !DILocalVariable(name: "__l", scope: !1905, file: !1906, line: 23, type: !1128)
!1917 = !DILocalVariable(name: "__u", scope: !1905, file: !1906, line: 23, type: !1128)
!1918 = !DILocalVariable(name: "__idx", scope: !1905, file: !1906, line: 23, type: !1128)
!1919 = !DILocalVariable(name: "__p", scope: !1905, file: !1906, line: 24, type: !1113)
!1920 = !DILocalVariable(name: "__comparison", scope: !1905, file: !1906, line: 25, type: !556)
!1921 = !DILocation(line: 0, scope: !1905)
!1922 = !DILocation(line: 29, column: 3, scope: !1905)
!1923 = !DILocation(line: 27, column: 7, scope: !1905)
!1924 = !DILocation(line: 29, column: 14, scope: !1905)
!1925 = !DILocation(line: 31, column: 20, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1905, file: !1906, line: 30, column: 5)
!1927 = !DILocation(line: 31, column: 27, scope: !1926)
!1928 = !DILocation(line: 32, column: 56, scope: !1926)
!1929 = !DILocation(line: 32, column: 47, scope: !1926)
!1930 = !DILocation(line: 33, column: 22, scope: !1926)
!1931 = !DILocation(line: 34, column: 24, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1926, file: !1906, line: 34, column: 11)
!1933 = !DILocation(line: 34, column: 11, scope: !1926)
!1934 = !DILocation(line: 36, column: 29, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1932, file: !1906, line: 36, column: 16)
!1936 = !DILocation(line: 36, column: 16, scope: !1932)
!1937 = !DILocation(line: 37, column: 14, scope: !1935)
!1938 = distinct !{!1938, !1922, !1939}
!1939 = !DILocation(line: 40, column: 5, scope: !1905)
!1940 = !DILocation(line: 43, column: 1, scope: !1905)
!1941 = distinct !DISubprogram(name: "atof", scope: !1942, file: !1942, line: 25, type: !1943, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1946)
!1942 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1945, !561}
!1945 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1946 = !{!1947}
!1947 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1941, file: !1942, line: 25, type: !561)
!1948 = !DILocation(line: 0, scope: !1941)
!1949 = !DILocation(line: 27, column: 10, scope: !1941)
!1950 = !DILocation(line: 27, column: 3, scope: !1941)
!1951 = distinct !DISubprogram(name: "strtoimax", scope: !1952, file: !1952, line: 324, type: !1953, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1959)
!1952 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!1955, !1712, !1958, !556}
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1956, line: 101, baseType: !1957)
!1956 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1764, line: 72, baseType: !650)
!1958 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !557)
!1959 = !{!1960, !1961, !1962}
!1960 = !DILocalVariable(name: "nptr", arg: 1, scope: !1951, file: !1952, line: 324, type: !1712)
!1961 = !DILocalVariable(name: "endptr", arg: 2, scope: !1951, file: !1952, line: 324, type: !1958)
!1962 = !DILocalVariable(name: "base", arg: 3, scope: !1951, file: !1952, line: 324, type: !556)
!1963 = !DILocation(line: 0, scope: !1951)
!1964 = !DILocation(line: 327, column: 10, scope: !1951)
!1965 = !DILocation(line: 327, column: 3, scope: !1951)
!1966 = distinct !DISubprogram(name: "strtoumax", scope: !1952, file: !1952, line: 336, type: !1967, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1971)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!1969, !1712, !1958, !556}
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1956, line: 102, baseType: !1970)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1764, line: 73, baseType: !633)
!1971 = !{!1972, !1973, !1974}
!1972 = !DILocalVariable(name: "nptr", arg: 1, scope: !1966, file: !1952, line: 336, type: !1712)
!1973 = !DILocalVariable(name: "endptr", arg: 2, scope: !1966, file: !1952, line: 336, type: !1958)
!1974 = !DILocalVariable(name: "base", arg: 3, scope: !1966, file: !1952, line: 336, type: !556)
!1975 = !DILocation(line: 0, scope: !1966)
!1976 = !DILocation(line: 339, column: 10, scope: !1966)
!1977 = !DILocation(line: 339, column: 3, scope: !1966)
!1978 = distinct !DISubprogram(name: "wcstoimax", scope: !1952, file: !1952, line: 348, type: !1979, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1988)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!1955, !1981, !1985, !556}
!1981 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1982)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1984)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1952, line: 34, baseType: !556)
!1985 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1986)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1988 = !{!1989, !1990, !1991}
!1989 = !DILocalVariable(name: "nptr", arg: 1, scope: !1978, file: !1952, line: 348, type: !1981)
!1990 = !DILocalVariable(name: "endptr", arg: 2, scope: !1978, file: !1952, line: 348, type: !1985)
!1991 = !DILocalVariable(name: "base", arg: 3, scope: !1978, file: !1952, line: 348, type: !556)
!1992 = !DILocation(line: 0, scope: !1978)
!1993 = !DILocation(line: 351, column: 10, scope: !1978)
!1994 = !DILocation(line: 351, column: 3, scope: !1978)
!1995 = distinct !DISubprogram(name: "wcstoumax", scope: !1952, file: !1952, line: 362, type: !1996, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1998)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!1969, !1981, !1985, !556}
!1998 = !{!1999, !2000, !2001}
!1999 = !DILocalVariable(name: "nptr", arg: 1, scope: !1995, file: !1952, line: 362, type: !1981)
!2000 = !DILocalVariable(name: "endptr", arg: 2, scope: !1995, file: !1952, line: 362, type: !1985)
!2001 = !DILocalVariable(name: "base", arg: 3, scope: !1995, file: !1952, line: 362, type: !556)
!2002 = !DILocation(line: 0, scope: !1995)
!2003 = !DILocation(line: 365, column: 10, scope: !1995)
!2004 = !DILocation(line: 365, column: 3, scope: !1995)
!2005 = distinct !DISubprogram(name: "stat", scope: !2006, file: !2006, line: 453, type: !2007, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2044)
!2006 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!556, !561, !2009}
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2011, line: 46, size: 1152, elements: !2012)
!2011 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2012 = !{!2013, !2015, !2017, !2019, !2021, !2023, !2025, !2026, !2027, !2028, !2030, !2032, !2040, !2041, !2042}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2010, file: !2011, line: 48, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1764, line: 145, baseType: !633)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2010, file: !2011, line: 53, baseType: !2016, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1764, line: 148, baseType: !633)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2010, file: !2011, line: 61, baseType: !2018, size: 64, offset: 128)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1764, line: 151, baseType: !633)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2010, file: !2011, line: 62, baseType: !2020, size: 32, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1764, line: 150, baseType: !5)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2010, file: !2011, line: 64, baseType: !2022, size: 32, offset: 224)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1764, line: 146, baseType: !5)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2010, file: !2011, line: 65, baseType: !2024, size: 32, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1764, line: 147, baseType: !5)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2010, file: !2011, line: 67, baseType: !556, size: 32, offset: 288)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2010, file: !2011, line: 69, baseType: !2014, size: 64, offset: 320)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2010, file: !2011, line: 74, baseType: !1763, size: 64, offset: 384)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2010, file: !2011, line: 78, baseType: !2029, size: 64, offset: 448)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1764, line: 174, baseType: !650)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2010, file: !2011, line: 80, baseType: !2031, size: 64, offset: 512)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1764, line: 179, baseType: !650)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2010, file: !2011, line: 91, baseType: !2033, size: 128, offset: 576)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2034, line: 10, size: 128, elements: !2035)
!2034 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2035 = !{!2036, !2038}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2033, file: !2034, line: 12, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1764, line: 160, baseType: !650)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2033, file: !2034, line: 16, baseType: !2039, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1764, line: 196, baseType: !650)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2010, file: !2011, line: 92, baseType: !2033, size: 128, offset: 704)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2010, file: !2011, line: 93, baseType: !2033, size: 128, offset: 832)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2010, file: !2011, line: 106, baseType: !2043, size: 192, offset: 960)
!2043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2039, size: 192, elements: !750)
!2044 = !{!2045, !2046}
!2045 = !DILocalVariable(name: "__path", arg: 1, scope: !2005, file: !2006, line: 453, type: !561)
!2046 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2005, file: !2006, line: 453, type: !2009)
!2047 = !DILocation(line: 0, scope: !2005)
!2048 = !DILocation(line: 455, column: 10, scope: !2005)
!2049 = !DILocation(line: 455, column: 3, scope: !2005)
!2050 = distinct !DISubprogram(name: "lstat", scope: !2006, file: !2006, line: 460, type: !2007, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2051)
!2051 = !{!2052, !2053}
!2052 = !DILocalVariable(name: "__path", arg: 1, scope: !2050, file: !2006, line: 460, type: !561)
!2053 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2050, file: !2006, line: 460, type: !2009)
!2054 = !DILocation(line: 0, scope: !2050)
!2055 = !DILocation(line: 462, column: 10, scope: !2050)
!2056 = !DILocation(line: 462, column: 3, scope: !2050)
!2057 = distinct !DISubprogram(name: "fstat", scope: !2006, file: !2006, line: 467, type: !2058, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2060)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!556, !556, !2009}
!2060 = !{!2061, !2062}
!2061 = !DILocalVariable(name: "__fd", arg: 1, scope: !2057, file: !2006, line: 467, type: !556)
!2062 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2057, file: !2006, line: 467, type: !2009)
!2063 = !DILocation(line: 0, scope: !2057)
!2064 = !DILocation(line: 469, column: 10, scope: !2057)
!2065 = !DILocation(line: 469, column: 3, scope: !2057)
!2066 = distinct !DISubprogram(name: "fstatat", scope: !2006, file: !2006, line: 474, type: !2067, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2069)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!556, !556, !561, !2009, !556}
!2069 = !{!2070, !2071, !2072, !2073}
!2070 = !DILocalVariable(name: "__fd", arg: 1, scope: !2066, file: !2006, line: 474, type: !556)
!2071 = !DILocalVariable(name: "__filename", arg: 2, scope: !2066, file: !2006, line: 474, type: !561)
!2072 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2066, file: !2006, line: 474, type: !2009)
!2073 = !DILocalVariable(name: "__flag", arg: 4, scope: !2066, file: !2006, line: 474, type: !556)
!2074 = !DILocation(line: 0, scope: !2066)
!2075 = !DILocation(line: 477, column: 10, scope: !2066)
!2076 = !DILocation(line: 477, column: 3, scope: !2066)
!2077 = distinct !DISubprogram(name: "mknod", scope: !2006, file: !2006, line: 483, type: !2078, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2080)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!556, !561, !2020, !2014}
!2080 = !{!2081, !2082, !2083}
!2081 = !DILocalVariable(name: "__path", arg: 1, scope: !2077, file: !2006, line: 483, type: !561)
!2082 = !DILocalVariable(name: "__mode", arg: 2, scope: !2077, file: !2006, line: 483, type: !2020)
!2083 = !DILocalVariable(name: "__dev", arg: 3, scope: !2077, file: !2006, line: 483, type: !2014)
!2084 = !DILocation(line: 0, scope: !2077)
!2085 = !DILocation(line: 485, column: 10, scope: !2077)
!2086 = !DILocation(line: 485, column: 3, scope: !2077)
!2087 = distinct !DISubprogram(name: "mknodat", scope: !2006, file: !2006, line: 491, type: !2088, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2090)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!556, !556, !561, !2020, !2014}
!2090 = !{!2091, !2092, !2093, !2094}
!2091 = !DILocalVariable(name: "__fd", arg: 1, scope: !2087, file: !2006, line: 491, type: !556)
!2092 = !DILocalVariable(name: "__path", arg: 2, scope: !2087, file: !2006, line: 491, type: !561)
!2093 = !DILocalVariable(name: "__mode", arg: 3, scope: !2087, file: !2006, line: 491, type: !2020)
!2094 = !DILocalVariable(name: "__dev", arg: 4, scope: !2087, file: !2006, line: 491, type: !2014)
!2095 = !DILocation(line: 0, scope: !2087)
!2096 = !DILocation(line: 494, column: 10, scope: !2087)
!2097 = !DILocation(line: 494, column: 3, scope: !2087)
!2098 = distinct !DISubprogram(name: "stat64", scope: !2006, file: !2006, line: 502, type: !2099, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2121)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!556, !561, !2101}
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2011, line: 119, size: 1152, elements: !2103)
!2103 = !{!2104, !2105, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2117, !2118, !2119, !2120}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2102, file: !2011, line: 121, baseType: !2014, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2102, file: !2011, line: 123, baseType: !2106, size: 64, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1764, line: 149, baseType: !633)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2102, file: !2011, line: 124, baseType: !2018, size: 64, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2102, file: !2011, line: 125, baseType: !2020, size: 32, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2102, file: !2011, line: 132, baseType: !2022, size: 32, offset: 224)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2102, file: !2011, line: 133, baseType: !2024, size: 32, offset: 256)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2102, file: !2011, line: 135, baseType: !556, size: 32, offset: 288)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2102, file: !2011, line: 136, baseType: !2014, size: 64, offset: 320)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2102, file: !2011, line: 137, baseType: !1763, size: 64, offset: 384)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2102, file: !2011, line: 143, baseType: !2029, size: 64, offset: 448)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2102, file: !2011, line: 144, baseType: !2116, size: 64, offset: 512)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1764, line: 180, baseType: !650)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2102, file: !2011, line: 152, baseType: !2033, size: 128, offset: 576)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2102, file: !2011, line: 153, baseType: !2033, size: 128, offset: 704)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2102, file: !2011, line: 154, baseType: !2033, size: 128, offset: 832)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2102, file: !2011, line: 164, baseType: !2043, size: 192, offset: 960)
!2121 = !{!2122, !2123}
!2122 = !DILocalVariable(name: "__path", arg: 1, scope: !2098, file: !2006, line: 502, type: !561)
!2123 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2098, file: !2006, line: 502, type: !2101)
!2124 = !DILocation(line: 0, scope: !2098)
!2125 = !DILocation(line: 504, column: 10, scope: !2098)
!2126 = !DILocation(line: 504, column: 3, scope: !2098)
!2127 = distinct !DISubprogram(name: "lstat64", scope: !2006, file: !2006, line: 509, type: !2099, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2128)
!2128 = !{!2129, !2130}
!2129 = !DILocalVariable(name: "__path", arg: 1, scope: !2127, file: !2006, line: 509, type: !561)
!2130 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2127, file: !2006, line: 509, type: !2101)
!2131 = !DILocation(line: 0, scope: !2127)
!2132 = !DILocation(line: 511, column: 10, scope: !2127)
!2133 = !DILocation(line: 511, column: 3, scope: !2127)
!2134 = distinct !DISubprogram(name: "fstat64", scope: !2006, file: !2006, line: 516, type: !2135, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2137)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!556, !556, !2101}
!2137 = !{!2138, !2139}
!2138 = !DILocalVariable(name: "__fd", arg: 1, scope: !2134, file: !2006, line: 516, type: !556)
!2139 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2134, file: !2006, line: 516, type: !2101)
!2140 = !DILocation(line: 0, scope: !2134)
!2141 = !DILocation(line: 518, column: 10, scope: !2134)
!2142 = !DILocation(line: 518, column: 3, scope: !2134)
!2143 = distinct !DISubprogram(name: "fstatat64", scope: !2006, file: !2006, line: 523, type: !2144, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!556, !556, !561, !2101, !556}
!2146 = !{!2147, !2148, !2149, !2150}
!2147 = !DILocalVariable(name: "__fd", arg: 1, scope: !2143, file: !2006, line: 523, type: !556)
!2148 = !DILocalVariable(name: "__filename", arg: 2, scope: !2143, file: !2006, line: 523, type: !561)
!2149 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2143, file: !2006, line: 523, type: !2101)
!2150 = !DILocalVariable(name: "__flag", arg: 4, scope: !2143, file: !2006, line: 523, type: !556)
!2151 = !DILocation(line: 0, scope: !2143)
!2152 = !DILocation(line: 526, column: 10, scope: !2143)
!2153 = !DILocation(line: 526, column: 3, scope: !2143)
!2154 = distinct !DISubprogram(name: "compare_and_jump_seq", scope: !1, file: !1, line: 91, type: !2155, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2157)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!563, !563, !563, !388, !563, !556, !563}
!2157 = !{!2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167}
!2158 = !DILocalVariable(name: "op0", arg: 1, scope: !2154, file: !1, line: 91, type: !563)
!2159 = !DILocalVariable(name: "op1", arg: 2, scope: !2154, file: !1, line: 91, type: !563)
!2160 = !DILocalVariable(name: "comp", arg: 3, scope: !2154, file: !1, line: 91, type: !388)
!2161 = !DILocalVariable(name: "label", arg: 4, scope: !2154, file: !1, line: 91, type: !563)
!2162 = !DILocalVariable(name: "prob", arg: 5, scope: !2154, file: !1, line: 91, type: !556)
!2163 = !DILocalVariable(name: "cinsn", arg: 6, scope: !2154, file: !1, line: 92, type: !563)
!2164 = !DILocalVariable(name: "seq", scope: !2154, file: !1, line: 94, type: !563)
!2165 = !DILocalVariable(name: "jump", scope: !2154, file: !1, line: 94, type: !563)
!2166 = !DILocalVariable(name: "cond", scope: !2154, file: !1, line: 94, type: !563)
!2167 = !DILocalVariable(name: "mode", scope: !2154, file: !1, line: 95, type: !3)
!2168 = !DILocation(line: 0, scope: !2154)
!2169 = !DILocation(line: 97, column: 10, scope: !2154)
!2170 = !DILocation(line: 98, column: 12, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2154, file: !1, line: 98, column: 7)
!2172 = !DILocation(line: 98, column: 7, scope: !2154)
!2173 = !DILocation(line: 99, column: 12, scope: !2171)
!2174 = !DILocation(line: 99, column: 5, scope: !2171)
!2175 = !DILocation(line: 101, column: 3, scope: !2154)
!2176 = !DILocation(line: 102, column: 7, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2154, file: !1, line: 102, column: 7)
!2178 = !DILocation(line: 102, column: 29, scope: !2177)
!2179 = !DILocation(line: 0, scope: !2177)
!2180 = !DILocation(line: 102, column: 7, scope: !2154)
!2181 = !DILocation(line: 106, column: 7, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2177, file: !1, line: 103, column: 5)
!2183 = !DILocation(line: 107, column: 14, scope: !2182)
!2184 = !DILocation(line: 108, column: 7, scope: !2182)
!2185 = !DILocation(line: 109, column: 7, scope: !2182)
!2186 = !DILocation(line: 110, column: 7, scope: !2182)
!2187 = !DILocation(line: 111, column: 34, scope: !2182)
!2188 = !DILocation(line: 111, column: 23, scope: !2182)
!2189 = !DILocation(line: 111, column: 7, scope: !2182)
!2190 = !DILocation(line: 112, column: 14, scope: !2182)
!2191 = !DILocation(line: 113, column: 27, scope: !2182)
!2192 = !DILocation(line: 113, column: 7, scope: !2182)
!2193 = !DILocation(line: 113, column: 25, scope: !2182)
!2194 = !DILocation(line: 114, column: 7, scope: !2182)
!2195 = !DILocation(line: 114, column: 38, scope: !2182)
!2196 = !DILocation(line: 115, column: 7, scope: !2182)
!2197 = !DILocation(line: 116, column: 5, scope: !2182)
!2198 = !DILocation(line: 119, column: 7, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2177, file: !1, line: 118, column: 5)
!2200 = !DILocation(line: 121, column: 13, scope: !2199)
!2201 = !DILocation(line: 122, column: 13, scope: !2199)
!2202 = !DILocation(line: 123, column: 7, scope: !2199)
!2203 = !DILocation(line: 125, column: 14, scope: !2199)
!2204 = !DILocation(line: 126, column: 7, scope: !2199)
!2205 = !DILocation(line: 126, column: 25, scope: !2199)
!2206 = !DILocation(line: 127, column: 7, scope: !2199)
!2207 = !DILocation(line: 127, column: 26, scope: !2199)
!2208 = !DILocation(line: 129, column: 36, scope: !2154)
!2209 = !DILocation(line: 129, column: 3, scope: !2154)
!2210 = !DILocation(line: 131, column: 9, scope: !2154)
!2211 = !DILocation(line: 132, column: 3, scope: !2154)
!2212 = !DILocation(line: 134, column: 3, scope: !2154)
!2213 = distinct !DISubprogram(name: "unswitch_loops", scope: !1, file: !1, line: 139, type: !2214, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2216)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{null}
!2216 = !{!2217, !2223}
!2217 = !DILocalVariable(name: "li", scope: !2213, file: !1, line: 141, type: !2218)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_iterator", file: !133, line: 515, baseType: !2219)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !133, line: 508, size: 128, elements: !2220)
!2220 = !{!2221, !2222}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "to_visit", scope: !2219, file: !133, line: 511, baseType: !1691, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2219, file: !133, line: 514, baseType: !5, size: 32, offset: 64)
!2223 = !DILocalVariable(name: "loop", scope: !2213, file: !1, line: 142, type: !978)
!2224 = !DILocation(line: 141, column: 3, scope: !2213)
!2225 = !DILocation(line: 142, column: 3, scope: !2213)
!2226 = !DILocation(line: 0, scope: !2213)
!2227 = !DILocation(line: 146, column: 3, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2213, file: !1, line: 146, column: 3)
!2229 = !DILocation(line: 146, column: 3, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2228, file: !1, line: 146, column: 3)
!2231 = !DILocation(line: 148, column: 7, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2230, file: !1, line: 147, column: 5)
!2233 = distinct !{!2233, !2227, !2234}
!2234 = !DILocation(line: 153, column: 5, scope: !2228)
!2235 = !DILocation(line: 155, column: 3, scope: !2213)
!2236 = !DILocation(line: 156, column: 1, scope: !2213)
!2237 = distinct !DISubprogram(name: "fel_init", scope: !133, file: !133, line: 535, type: !2238, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2242)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{null, !2240, !2241, !5}
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!2242 = !{!2243, !2244, !2245, !2246, !2247, !2248}
!2243 = !DILocalVariable(name: "li", arg: 1, scope: !2237, file: !133, line: 535, type: !2240)
!2244 = !DILocalVariable(name: "loop", arg: 2, scope: !2237, file: !133, line: 535, type: !2241)
!2245 = !DILocalVariable(name: "flags", arg: 3, scope: !2237, file: !133, line: 535, type: !5)
!2246 = !DILocalVariable(name: "aloop", scope: !2237, file: !133, line: 537, type: !978)
!2247 = !DILocalVariable(name: "i", scope: !2237, file: !133, line: 538, type: !5)
!2248 = !DILocalVariable(name: "mn", scope: !2237, file: !133, line: 539, type: !556)
!2249 = !DILocation(line: 0, scope: !2237)
!2250 = !DILocation(line: 537, column: 3, scope: !2237)
!2251 = !DILocation(line: 541, column: 7, scope: !2237)
!2252 = !DILocation(line: 541, column: 11, scope: !2237)
!2253 = !DILocation(line: 542, column: 8, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2237, file: !133, line: 542, column: 7)
!2255 = !DILocation(line: 542, column: 7, scope: !2237)
!2256 = !DILocation(line: 544, column: 11, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2254, file: !133, line: 543, column: 5)
!2258 = !DILocation(line: 544, column: 20, scope: !2257)
!2259 = !DILocation(line: 545, column: 13, scope: !2257)
!2260 = !DILocation(line: 546, column: 7, scope: !2257)
!2261 = !DILocation(line: 549, column: 18, scope: !2237)
!2262 = !DILocation(line: 549, column: 7, scope: !2237)
!2263 = !DILocation(line: 549, column: 16, scope: !2237)
!2264 = !DILocation(line: 554, column: 7, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !133, line: 554, column: 7)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !133, line: 553, column: 5)
!2267 = distinct !DILexicalBlock(scope: !2237, file: !133, line: 552, column: 7)
!2268 = !DILocation(line: 0, scope: !2265)
!2269 = !DILocation(line: 554, column: 19, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2265, file: !133, line: 554, column: 7)
!2271 = !DILocation(line: 555, column: 6, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2270, file: !133, line: 555, column: 6)
!2273 = !DILocation(line: 555, column: 12, scope: !2272)
!2274 = !DILocation(line: 556, column: 6, scope: !2272)
!2275 = !DILocation(line: 556, column: 16, scope: !2272)
!2276 = !DILocation(line: 556, column: 22, scope: !2272)
!2277 = !DILocation(line: 557, column: 6, scope: !2272)
!2278 = !DILocation(line: 557, column: 16, scope: !2272)
!2279 = !DILocation(line: 557, column: 20, scope: !2272)
!2280 = !DILocation(line: 555, column: 6, scope: !2270)
!2281 = !DILocation(line: 558, column: 4, scope: !2272)
!2282 = !DILocation(line: 554, column: 75, scope: !2270)
!2283 = !DILocation(line: 554, column: 7, scope: !2270)
!2284 = distinct !{!2284, !2264, !2285}
!2285 = !DILocation(line: 558, column: 4, scope: !2265)
!2286 = !DILocation(line: 608, column: 3, scope: !2237)
!2287 = !DILocation(line: 609, column: 1, scope: !2237)
!2288 = distinct !DISubprogram(name: "unswitch_single_loop", scope: !1, file: !1, line: 252, type: !2289, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2291)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{null, !978, !563, !556}
!2291 = !{!2292, !2293, !2294, !2295, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306}
!2292 = !DILocalVariable(name: "loop", arg: 1, scope: !2288, file: !1, line: 252, type: !978)
!2293 = !DILocalVariable(name: "cond_checked", arg: 2, scope: !2288, file: !1, line: 252, type: !563)
!2294 = !DILocalVariable(name: "num", arg: 3, scope: !2288, file: !1, line: 252, type: !556)
!2295 = !DILocalVariable(name: "bbs", scope: !2288, file: !1, line: 254, type: !2296)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!2297 = !DILocalVariable(name: "nloop", scope: !2288, file: !1, line: 255, type: !978)
!2298 = !DILocalVariable(name: "i", scope: !2288, file: !1, line: 256, type: !5)
!2299 = !DILocalVariable(name: "cond", scope: !2288, file: !1, line: 257, type: !563)
!2300 = !DILocalVariable(name: "rcond", scope: !2288, file: !1, line: 257, type: !563)
!2301 = !DILocalVariable(name: "conds", scope: !2288, file: !1, line: 257, type: !563)
!2302 = !DILocalVariable(name: "rconds", scope: !2288, file: !1, line: 257, type: !563)
!2303 = !DILocalVariable(name: "acond", scope: !2288, file: !1, line: 257, type: !563)
!2304 = !DILocalVariable(name: "cinsn", scope: !2288, file: !1, line: 257, type: !563)
!2305 = !DILocalVariable(name: "repeat", scope: !2288, file: !1, line: 258, type: !556)
!2306 = !DILocalVariable(name: "e", scope: !2288, file: !1, line: 259, type: !953)
!2307 = !DILocation(line: 0, scope: !2288)
!2308 = !DILocation(line: 257, column: 3, scope: !2288)
!2309 = !DILocation(line: 262, column: 13, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2288, file: !1, line: 262, column: 7)
!2311 = !DILocation(line: 262, column: 11, scope: !2310)
!2312 = !DILocation(line: 262, column: 7, scope: !2288)
!2313 = !DILocation(line: 264, column: 11, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !1, line: 264, column: 11)
!2315 = distinct !DILexicalBlock(scope: !2310, file: !1, line: 263, column: 5)
!2316 = !DILocation(line: 264, column: 11, scope: !2315)
!2317 = !DILocation(line: 265, column: 2, scope: !2314)
!2318 = !DILocation(line: 270, column: 13, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2288, file: !1, line: 270, column: 7)
!2320 = !DILocation(line: 270, column: 7, scope: !2319)
!2321 = !DILocation(line: 270, column: 7, scope: !2288)
!2322 = !DILocation(line: 272, column: 11, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !1, line: 272, column: 11)
!2324 = distinct !DILexicalBlock(scope: !2319, file: !1, line: 271, column: 5)
!2325 = !DILocation(line: 272, column: 11, scope: !2324)
!2326 = !DILocation(line: 273, column: 2, scope: !2323)
!2327 = !DILocation(line: 278, column: 8, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2288, file: !1, line: 278, column: 7)
!2329 = !DILocation(line: 278, column: 7, scope: !2288)
!2330 = !DILocation(line: 280, column: 11, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !1, line: 280, column: 11)
!2332 = distinct !DILexicalBlock(scope: !2328, file: !1, line: 279, column: 5)
!2333 = !DILocation(line: 280, column: 11, scope: !2332)
!2334 = !DILocation(line: 281, column: 2, scope: !2331)
!2335 = !DILocation(line: 286, column: 7, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2288, file: !1, line: 286, column: 7)
!2337 = !DILocation(line: 286, column: 31, scope: !2336)
!2338 = !DILocation(line: 286, column: 29, scope: !2336)
!2339 = !DILocation(line: 286, column: 7, scope: !2288)
!2340 = !DILocation(line: 288, column: 11, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !1, line: 288, column: 11)
!2342 = distinct !DILexicalBlock(scope: !2336, file: !1, line: 287, column: 5)
!2343 = !DILocation(line: 288, column: 11, scope: !2342)
!2344 = !DILocation(line: 289, column: 2, scope: !2341)
!2345 = !DILocation(line: 294, column: 7, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2288, file: !1, line: 294, column: 7)
!2347 = !DILocation(line: 294, column: 7, scope: !2288)
!2348 = !DILocation(line: 296, column: 11, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !1, line: 296, column: 11)
!2350 = distinct !DILexicalBlock(scope: !2346, file: !1, line: 295, column: 5)
!2351 = !DILocation(line: 296, column: 11, scope: !2350)
!2352 = !DILocation(line: 297, column: 2, scope: !2349)
!2353 = !DILocation(line: 302, column: 7, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2288, file: !1, line: 302, column: 7)
!2355 = !DILocation(line: 302, column: 39, scope: !2354)
!2356 = !DILocation(line: 302, column: 7, scope: !2288)
!2357 = !DILocation(line: 0, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !1, line: 317, column: 7)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !1, line: 317, column: 7)
!2360 = distinct !DILexicalBlock(scope: !2288, file: !1, line: 310, column: 5)
!2361 = !DILocation(line: 309, column: 3, scope: !2288)
!2362 = !DILocation(line: 304, column: 11, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !1, line: 304, column: 11)
!2364 = distinct !DILexicalBlock(scope: !2354, file: !1, line: 303, column: 5)
!2365 = !DILocation(line: 304, column: 11, scope: !2364)
!2366 = !DILocation(line: 305, column: 2, scope: !2363)
!2367 = !DILocation(line: 312, column: 13, scope: !2360)
!2368 = !DILocation(line: 315, column: 13, scope: !2360)
!2369 = !DILocation(line: 316, column: 7, scope: !2360)
!2370 = !DILocation(line: 317, column: 12, scope: !2359)
!2371 = !DILocation(line: 0, scope: !2359)
!2372 = !DILocation(line: 317, column: 29, scope: !2358)
!2373 = !DILocation(line: 317, column: 21, scope: !2358)
!2374 = !DILocation(line: 317, column: 7, scope: !2359)
!2375 = !DILocation(line: 318, column: 31, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2358, file: !1, line: 318, column: 6)
!2377 = !DILocation(line: 318, column: 14, scope: !2376)
!2378 = !DILocation(line: 318, column: 12, scope: !2376)
!2379 = !DILocation(line: 318, column: 6, scope: !2358)
!2380 = !DILocation(line: 321, column: 22, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2360, file: !1, line: 321, column: 11)
!2382 = !DILocation(line: 317, column: 41, scope: !2358)
!2383 = !DILocation(line: 317, column: 7, scope: !2358)
!2384 = distinct !{!2384, !2374, !2385}
!2385 = !DILocation(line: 319, column: 4, scope: !2359)
!2386 = !DILocation(line: 321, column: 13, scope: !2381)
!2387 = !DILocation(line: 321, column: 11, scope: !2360)
!2388 = !DILocation(line: 323, column: 10, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2381, file: !1, line: 322, column: 2)
!2390 = !DILocation(line: 323, column: 4, scope: !2389)
!2391 = !DILocation(line: 324, column: 4, scope: !2389)
!2392 = !DILocation(line: 327, column: 11, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2360, file: !1, line: 327, column: 11)
!2394 = !DILocation(line: 327, column: 19, scope: !2393)
!2395 = !DILocation(line: 327, column: 16, scope: !2393)
!2396 = !DILocation(line: 328, column: 4, scope: !2393)
!2397 = !DILocation(line: 328, column: 15, scope: !2393)
!2398 = !DILocation(line: 328, column: 12, scope: !2393)
!2399 = !DILocation(line: 327, column: 11, scope: !2360)
!2400 = !DILocation(line: 330, column: 12, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2393, file: !1, line: 329, column: 2)
!2402 = !DILocation(line: 331, column: 8, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2401, file: !1, line: 331, column: 8)
!2404 = !DILocation(line: 331, column: 8, scope: !2401)
!2405 = !DILocation(line: 332, column: 14, scope: !2403)
!2406 = !DILocation(line: 332, column: 6, scope: !2403)
!2407 = !DILocation(line: 0, scope: !2401)
!2408 = !DILocation(line: 335, column: 9, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2401, file: !1, line: 335, column: 4)
!2410 = !DILocation(line: 0, scope: !2409)
!2411 = !DILocation(line: 335, column: 4, scope: !2409)
!2412 = !DILocation(line: 336, column: 32, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2409, file: !1, line: 335, column: 4)
!2414 = !DILocation(line: 336, column: 6, scope: !2413)
!2415 = !DILocation(line: 335, column: 46, scope: !2413)
!2416 = !DILocation(line: 335, column: 4, scope: !2413)
!2417 = distinct !{!2417, !2411, !2418}
!2418 = !DILocation(line: 336, column: 60, scope: !2409)
!2419 = !DILocation(line: 339, column: 11, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2360, file: !1, line: 339, column: 11)
!2421 = !DILocation(line: 339, column: 19, scope: !2420)
!2422 = !DILocation(line: 339, column: 16, scope: !2420)
!2423 = !DILocation(line: 339, column: 11, scope: !2360)
!2424 = !DILocation(line: 342, column: 8, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2420, file: !1, line: 340, column: 2)
!2426 = !DILocation(line: 343, column: 4, scope: !2425)
!2427 = !DILocation(line: 344, column: 10, scope: !2425)
!2428 = !DILocation(line: 344, column: 4, scope: !2425)
!2429 = !DILocation(line: 346, column: 2, scope: !2425)
!2430 = !DILocation(line: 347, column: 24, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2420, file: !1, line: 347, column: 16)
!2432 = !DILocation(line: 347, column: 21, scope: !2431)
!2433 = !DILocation(line: 347, column: 16, scope: !2420)
!2434 = !DILocation(line: 350, column: 8, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2431, file: !1, line: 348, column: 2)
!2436 = !DILocation(line: 351, column: 4, scope: !2435)
!2437 = !DILocation(line: 352, column: 10, scope: !2435)
!2438 = !DILocation(line: 352, column: 4, scope: !2435)
!2439 = !DILocation(line: 354, column: 2, scope: !2435)
!2440 = !DILocation(line: 355, column: 5, scope: !2360)
!2441 = distinct !{!2441, !2361, !2442}
!2442 = !DILocation(line: 355, column: 20, scope: !2288)
!2443 = !DILocation(line: 358, column: 31, scope: !2288)
!2444 = !DILocation(line: 358, column: 11, scope: !2288)
!2445 = !DILocation(line: 359, column: 7, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2288, file: !1, line: 359, column: 7)
!2447 = !DILocation(line: 359, column: 7, scope: !2288)
!2448 = !DILocation(line: 360, column: 14, scope: !2446)
!2449 = !DILocation(line: 360, column: 5, scope: !2446)
!2450 = !DILocation(line: 0, scope: !2446)
!2451 = !DILocation(line: 364, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2288, file: !1, line: 364, column: 7)
!2453 = !DILocation(line: 364, column: 7, scope: !2288)
!2454 = !DILocation(line: 365, column: 5, scope: !2452)
!2455 = !DILocation(line: 368, column: 32, scope: !2288)
!2456 = !DILocation(line: 368, column: 40, scope: !2288)
!2457 = !DILocation(line: 368, column: 46, scope: !2288)
!2458 = !DILocation(line: 368, column: 11, scope: !2288)
!2459 = !DILocation(line: 369, column: 3, scope: !2288)
!2460 = !DILocation(line: 372, column: 44, scope: !2288)
!2461 = !DILocation(line: 372, column: 3, scope: !2288)
!2462 = !DILocation(line: 373, column: 3, scope: !2288)
!2463 = !DILocation(line: 375, column: 3, scope: !2288)
!2464 = !DILocation(line: 376, column: 7, scope: !2288)
!2465 = !DILocation(line: 377, column: 5, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2288, file: !1, line: 376, column: 7)
!2467 = !DILocation(line: 379, column: 9, scope: !2288)
!2468 = !DILocation(line: 379, column: 3, scope: !2288)
!2469 = !DILocation(line: 380, column: 1, scope: !2288)
!2470 = distinct !DISubprogram(name: "fel_next", scope: !133, file: !133, line: 518, type: !2471, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2473)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{null, !2240, !2241}
!2473 = !{!2474, !2475, !2476}
!2474 = !DILocalVariable(name: "li", arg: 1, scope: !2470, file: !133, line: 518, type: !2240)
!2475 = !DILocalVariable(name: "loop", arg: 2, scope: !2470, file: !133, line: 518, type: !2241)
!2476 = !DILocalVariable(name: "anum", scope: !2470, file: !133, line: 520, type: !556)
!2477 = !DILocation(line: 0, scope: !2470)
!2478 = !DILocation(line: 520, column: 3, scope: !2470)
!2479 = !DILocation(line: 522, column: 3, scope: !2470)
!2480 = !DILocation(line: 522, column: 10, scope: !2470)
!2481 = !DILocation(line: 524, column: 14, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2470, file: !133, line: 523, column: 5)
!2483 = !DILocation(line: 525, column: 25, scope: !2482)
!2484 = !DILocation(line: 525, column: 15, scope: !2482)
!2485 = !DILocation(line: 525, column: 13, scope: !2482)
!2486 = !DILocation(line: 526, column: 11, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2482, file: !133, line: 526, column: 11)
!2488 = !DILocation(line: 526, column: 11, scope: !2482)
!2489 = distinct !{!2489, !2479, !2490}
!2490 = !DILocation(line: 528, column: 5, scope: !2470)
!2491 = !DILocation(line: 530, column: 3, scope: !2470)
!2492 = !DILocation(line: 531, column: 9, scope: !2470)
!2493 = !DILocation(line: 532, column: 1, scope: !2470)
!2494 = distinct !DISubprogram(name: "reversed_condition", scope: !1, file: !1, line: 235, type: !2495, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2497)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!563, !563}
!2497 = !{!2498, !2499}
!2498 = !DILocalVariable(name: "cond", arg: 1, scope: !2494, file: !1, line: 235, type: !563)
!2499 = !DILocalVariable(name: "reversed", scope: !2494, file: !1, line: 237, type: !388)
!2500 = !DILocation(line: 0, scope: !2494)
!2501 = !DILocation(line: 238, column: 14, scope: !2494)
!2502 = !DILocation(line: 239, column: 16, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2494, file: !1, line: 239, column: 7)
!2504 = !DILocation(line: 239, column: 7, scope: !2494)
!2505 = !DILocation(line: 242, column: 12, scope: !2503)
!2506 = !DILocation(line: 242, column: 5, scope: !2503)
!2507 = !DILocation(line: 0, scope: !2503)
!2508 = !DILocation(line: 245, column: 1, scope: !2494)
!2509 = distinct !DISubprogram(name: "VEC_int_heap_alloc", scope: !1693, file: !1693, line: 32, type: !2510, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2512)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!1691, !556}
!2512 = !{!2513}
!2513 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2509, file: !1693, line: 32, type: !556)
!2514 = !DILocation(line: 0, scope: !2509)
!2515 = !DILocation(line: 32, column: 1, scope: !2509)
!2516 = distinct !DISubprogram(name: "number_of_loops", scope: !133, file: !133, line: 459, type: !2517, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1730)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!5}
!2519 = !DILocation(line: 461, column: 8, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2516, file: !133, line: 461, column: 7)
!2521 = !DILocation(line: 461, column: 7, scope: !2516)
!2522 = !DILocation(line: 464, column: 10, scope: !2516)
!2523 = !DILocation(line: 464, column: 3, scope: !2516)
!2524 = !DILocation(line: 0, scope: !2516)
!2525 = !DILocation(line: 465, column: 1, scope: !2516)
!2526 = distinct !DISubprogram(name: "VEC_loop_p_base_iterate", scope: !133, file: !133, line: 85, type: !2527, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2531)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!556, !2529, !5, !2241}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !998)
!2531 = !{!2532, !2533, !2534}
!2532 = !DILocalVariable(name: "vec_", arg: 1, scope: !2526, file: !133, line: 85, type: !2529)
!2533 = !DILocalVariable(name: "ix_", arg: 2, scope: !2526, file: !133, line: 85, type: !5)
!2534 = !DILocalVariable(name: "ptr", arg: 3, scope: !2526, file: !133, line: 85, type: !2241)
!2535 = !DILocation(line: 0, scope: !2526)
!2536 = !DILocation(line: 85, column: 1, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2526, file: !133, line: 85, column: 1)
!2538 = !DILocation(line: 85, column: 1, scope: !2526)
!2539 = !DILocation(line: 85, column: 1, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2537, file: !133, line: 85, column: 1)
!2541 = !DILocation(line: 85, column: 1, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2537, file: !133, line: 85, column: 1)
!2543 = !DILocation(line: 0, scope: !2537)
!2544 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !1693, file: !1693, line: 31, type: !2545, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2549)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!2547, !2548, !556}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!2549 = !{!2550, !2551, !2552}
!2550 = !DILocalVariable(name: "vec_", arg: 1, scope: !2544, file: !1693, line: 31, type: !2548)
!2551 = !DILocalVariable(name: "obj_", arg: 2, scope: !2544, file: !1693, line: 31, type: !556)
!2552 = !DILocalVariable(name: "slot_", scope: !2544, file: !1693, line: 31, type: !2547)
!2553 = !DILocation(line: 0, scope: !2544)
!2554 = !DILocation(line: 31, column: 1, scope: !2544)
!2555 = distinct !DISubprogram(name: "loop_outer", scope: !133, file: !133, line: 434, type: !2556, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2560)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!978, !2558}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !979)
!2560 = !{!2561, !2562}
!2561 = !DILocalVariable(name: "loop", arg: 1, scope: !2555, file: !133, line: 434, type: !2558)
!2562 = !DILocalVariable(name: "n", scope: !2555, file: !133, line: 436, type: !5)
!2563 = !DILocation(line: 0, scope: !2555)
!2564 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !133, file: !133, line: 85, type: !2565, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2567)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!5, !2529}
!2567 = !{!2568}
!2568 = !DILocalVariable(name: "vec_", arg: 1, scope: !2564, file: !133, line: 85, type: !2529)
!2569 = !DILocation(line: 0, scope: !2564)
!2570 = !DILocation(line: 85, column: 1, scope: !2564)
!2571 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !133, file: !133, line: 85, type: !2572, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!1005, !2529, !5}
!2574 = !{!2575, !2576}
!2575 = !DILocalVariable(name: "vec_", arg: 1, scope: !2571, file: !133, line: 85, type: !2529)
!2576 = !DILocalVariable(name: "ix_", arg: 2, scope: !2571, file: !133, line: 85, type: !5)
!2577 = !DILocation(line: 0, scope: !2571)
!2578 = !DILocation(line: 85, column: 1, scope: !2571)
!2579 = distinct !DISubprogram(name: "VEC_int_base_iterate", scope: !1693, file: !1693, line: 31, type: !2580, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2584)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!556, !2582, !5, !2547}
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1697)
!2584 = !{!2585, !2586, !2587}
!2585 = !DILocalVariable(name: "vec_", arg: 1, scope: !2579, file: !1693, line: 31, type: !2582)
!2586 = !DILocalVariable(name: "ix_", arg: 2, scope: !2579, file: !1693, line: 31, type: !5)
!2587 = !DILocalVariable(name: "ptr", arg: 3, scope: !2579, file: !1693, line: 31, type: !2547)
!2588 = !DILocation(line: 0, scope: !2579)
!2589 = !DILocation(line: 31, column: 1, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2579, file: !1693, line: 31, column: 1)
!2591 = !DILocation(line: 31, column: 1, scope: !2579)
!2592 = !DILocation(line: 31, column: 1, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2590, file: !1693, line: 31, column: 1)
!2594 = !DILocation(line: 31, column: 1, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2590, file: !1693, line: 31, column: 1)
!2596 = !DILocation(line: 0, scope: !2590)
!2597 = distinct !DISubprogram(name: "get_loop", scope: !133, file: !133, line: 417, type: !2598, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2600)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!978, !5}
!2600 = !{!2601}
!2601 = !DILocalVariable(name: "num", arg: 1, scope: !2597, file: !133, line: 417, type: !5)
!2602 = !DILocation(line: 0, scope: !2597)
!2603 = !DILocation(line: 419, column: 10, scope: !2597)
!2604 = !DILocation(line: 419, column: 3, scope: !2597)
!2605 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !1693, file: !1693, line: 32, type: !2606, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2609)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{null, !2608}
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!2609 = !{!2610}
!2610 = !DILocalVariable(name: "vec_", arg: 1, scope: !2605, file: !1693, line: 32, type: !2608)
!2611 = !DILocation(line: 0, scope: !2605)
!2612 = !DILocation(line: 32, column: 1, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2605, file: !1693, line: 32, column: 1)
!2614 = !DILocation(line: 32, column: 1, scope: !2605)
!2615 = distinct !DISubprogram(name: "may_unswitch_on", scope: !1, file: !1, line: 163, type: !2616, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2619)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!563, !936, !978, !2618}
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!2619 = !{!2620, !2621, !2622, !2623, !2624, !2625, !2627, !2628, !2639, !2640}
!2620 = !DILocalVariable(name: "bb", arg: 1, scope: !2615, file: !1, line: 163, type: !936)
!2621 = !DILocalVariable(name: "loop", arg: 2, scope: !2615, file: !1, line: 163, type: !978)
!2622 = !DILocalVariable(name: "cinsn", arg: 3, scope: !2615, file: !1, line: 163, type: !2618)
!2623 = !DILocalVariable(name: "test", scope: !2615, file: !1, line: 165, type: !563)
!2624 = !DILocalVariable(name: "at", scope: !2615, file: !1, line: 165, type: !563)
!2625 = !DILocalVariable(name: "op", scope: !2615, file: !1, line: 165, type: !2626)
!2626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 128, elements: !634)
!2627 = !DILocalVariable(name: "stest", scope: !2615, file: !1, line: 165, type: !563)
!2628 = !DILocalVariable(name: "iv", scope: !2615, file: !1, line: 166, type: !2629)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_iv", file: !133, line: 328, size: 448, elements: !2630)
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2629, file: !133, line: 332, baseType: !563, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !2629, file: !133, line: 332, baseType: !563, size: 64, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "extend", scope: !2629, file: !133, line: 335, baseType: !388, size: 32, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "delta", scope: !2629, file: !133, line: 338, baseType: !563, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !2629, file: !133, line: 338, baseType: !563, size: 64, offset: 256)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "extend_mode", scope: !2629, file: !133, line: 341, baseType: !3, size: 32, offset: 320)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2629, file: !133, line: 344, baseType: !3, size: 32, offset: 352)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "first_special", scope: !2629, file: !133, line: 347, baseType: !5, size: 1, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!2639 = !DILocalVariable(name: "i", scope: !2615, file: !1, line: 167, type: !5)
!2640 = !DILocalVariable(name: "mode", scope: !2615, file: !1, line: 168, type: !3)
!2641 = !DILocation(line: 0, scope: !2615)
!2642 = !DILocation(line: 165, column: 3, scope: !2615)
!2643 = !DILocation(line: 165, column: 17, scope: !2615)
!2644 = !DILocation(line: 166, column: 3, scope: !2615)
!2645 = !DILocation(line: 171, column: 7, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2615, file: !1, line: 171, column: 7)
!2647 = !DILocation(line: 171, column: 30, scope: !2646)
!2648 = !DILocation(line: 171, column: 7, scope: !2615)
!2649 = !DILocation(line: 173, column: 24, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2615, file: !1, line: 173, column: 7)
!2651 = !DILocation(line: 173, column: 8, scope: !2650)
!2652 = !DILocation(line: 173, column: 7, scope: !2615)
!2653 = !DILocation(line: 177, column: 37, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2615, file: !1, line: 177, column: 7)
!2655 = !DILocation(line: 177, column: 56, scope: !2654)
!2656 = !DILocation(line: 177, column: 8, scope: !2654)
!2657 = !DILocation(line: 178, column: 7, scope: !2654)
!2658 = !DILocation(line: 178, column: 40, scope: !2654)
!2659 = !DILocation(line: 178, column: 59, scope: !2654)
!2660 = !DILocation(line: 178, column: 11, scope: !2654)
!2661 = !DILocation(line: 177, column: 7, scope: !2615)
!2662 = !DILocation(line: 183, column: 8, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2615, file: !1, line: 183, column: 7)
!2664 = !DILocation(line: 183, column: 7, scope: !2615)
!2665 = !DILocation(line: 187, column: 25, scope: !2615)
!2666 = !DILocation(line: 187, column: 10, scope: !2615)
!2667 = !DILocation(line: 188, column: 8, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2615, file: !1, line: 188, column: 7)
!2669 = !DILocation(line: 188, column: 7, scope: !2615)
!2670 = !DILocation(line: 0, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !1, line: 192, column: 5)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !1, line: 191, column: 3)
!2673 = distinct !DILexicalBlock(scope: !2615, file: !1, line: 191, column: 3)
!2674 = !DILocation(line: 0, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 200, column: 11)
!2676 = !DILocation(line: 191, column: 3, scope: !2673)
!2677 = !DILocation(line: 0, scope: !2673)
!2678 = !DILocation(line: 191, column: 17, scope: !2672)
!2679 = !DILocation(line: 193, column: 15, scope: !2671)
!2680 = !DILocation(line: 193, column: 7, scope: !2671)
!2681 = !DILocation(line: 193, column: 13, scope: !2671)
!2682 = !DILocation(line: 195, column: 11, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 195, column: 11)
!2684 = !DILocation(line: 195, column: 11, scope: !2671)
!2685 = !DILocation(line: 198, column: 24, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 198, column: 11)
!2687 = !DILocation(line: 198, column: 12, scope: !2686)
!2688 = !DILocation(line: 198, column: 11, scope: !2671)
!2689 = !DILocation(line: 200, column: 14, scope: !2675)
!2690 = !DILocation(line: 200, column: 22, scope: !2675)
!2691 = !DILocation(line: 200, column: 19, scope: !2675)
!2692 = !DILocation(line: 201, column: 4, scope: !2675)
!2693 = !DILocation(line: 201, column: 10, scope: !2675)
!2694 = !DILocation(line: 201, column: 7, scope: !2675)
!2695 = !DILocation(line: 200, column: 11, scope: !2671)
!2696 = !DILocation(line: 204, column: 15, scope: !2671)
!2697 = !DILocation(line: 204, column: 13, scope: !2671)
!2698 = !DILocation(line: 205, column: 5, scope: !2671)
!2699 = !DILocation(line: 191, column: 23, scope: !2672)
!2700 = !DILocation(line: 191, column: 3, scope: !2672)
!2701 = distinct !{!2701, !2676, !2702}
!2702 = !DILocation(line: 205, column: 5, scope: !2673)
!2703 = !DILocation(line: 207, column: 10, scope: !2615)
!2704 = !DILocation(line: 208, column: 12, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2615, file: !1, line: 208, column: 7)
!2706 = !DILocation(line: 208, column: 7, scope: !2615)
!2707 = !DILocation(line: 209, column: 12, scope: !2705)
!2708 = !DILocation(line: 209, column: 5, scope: !2705)
!2709 = !DILocation(line: 210, column: 7, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2615, file: !1, line: 210, column: 7)
!2711 = !DILocation(line: 210, column: 29, scope: !2710)
!2712 = !DILocation(line: 210, column: 7, scope: !2615)
!2713 = !DILocation(line: 212, column: 11, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !1, line: 212, column: 11)
!2715 = distinct !DILexicalBlock(scope: !2710, file: !1, line: 211, column: 5)
!2716 = !DILocation(line: 212, column: 17, scope: !2714)
!2717 = !DILocation(line: 212, column: 14, scope: !2714)
!2718 = !DILocation(line: 212, column: 11, scope: !2715)
!2719 = !DILocation(line: 215, column: 32, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2715, file: !1, line: 215, column: 11)
!2721 = !DILocation(line: 215, column: 12, scope: !2720)
!2722 = !DILocation(line: 216, column: 4, scope: !2720)
!2723 = !DILocation(line: 216, column: 21, scope: !2720)
!2724 = !DILocation(line: 216, column: 28, scope: !2720)
!2725 = !DILocation(line: 216, column: 8, scope: !2720)
!2726 = !DILocation(line: 215, column: 11, scope: !2715)
!2727 = !DILocation(line: 219, column: 16, scope: !2715)
!2728 = !DILocation(line: 219, column: 14, scope: !2715)
!2729 = !DILocation(line: 220, column: 7, scope: !2715)
!2730 = !DILocation(line: 223, column: 36, scope: !2615)
!2731 = !DILocation(line: 224, column: 21, scope: !2615)
!2732 = !DILocation(line: 223, column: 11, scope: !2615)
!2733 = !DILocation(line: 225, column: 16, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2615, file: !1, line: 225, column: 7)
!2735 = !DILocation(line: 225, column: 13, scope: !2734)
!2736 = !DILocation(line: 226, column: 19, scope: !2734)
!2737 = !DILocation(line: 226, column: 16, scope: !2734)
!2738 = !DILocation(line: 226, column: 7, scope: !2734)
!2739 = !DILocation(line: 229, column: 27, scope: !2615)
!2740 = !DILocation(line: 229, column: 10, scope: !2615)
!2741 = !DILocation(line: 229, column: 3, scope: !2615)
!2742 = !DILocation(line: 231, column: 1, scope: !2615)
!2743 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !146, file: !146, line: 150, type: !2744, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2748)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!953, !2746, !5}
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !946)
!2748 = !{!2749, !2750}
!2749 = !DILocalVariable(name: "vec_", arg: 1, scope: !2743, file: !146, line: 150, type: !2746)
!2750 = !DILocalVariable(name: "ix_", arg: 2, scope: !2743, file: !146, line: 150, type: !5)
!2751 = !DILocation(line: 0, scope: !2743)
!2752 = !DILocation(line: 150, column: 1, scope: !2743)
!2753 = distinct !DISubprogram(name: "unswitch_loop", scope: !1, file: !1, line: 390, type: !2754, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2756)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!978, !978, !936, !563, !563}
!2756 = !{!2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771}
!2757 = !DILocalVariable(name: "loop", arg: 1, scope: !2753, file: !1, line: 390, type: !978)
!2758 = !DILocalVariable(name: "unswitch_on", arg: 2, scope: !2753, file: !1, line: 390, type: !936)
!2759 = !DILocalVariable(name: "cond", arg: 3, scope: !2753, file: !1, line: 390, type: !563)
!2760 = !DILocalVariable(name: "cinsn", arg: 4, scope: !2753, file: !1, line: 390, type: !563)
!2761 = !DILocalVariable(name: "entry", scope: !2753, file: !1, line: 392, type: !953)
!2762 = !DILocalVariable(name: "latch_edge", scope: !2753, file: !1, line: 392, type: !953)
!2763 = !DILocalVariable(name: "true_edge", scope: !2753, file: !1, line: 392, type: !953)
!2764 = !DILocalVariable(name: "false_edge", scope: !2753, file: !1, line: 392, type: !953)
!2765 = !DILocalVariable(name: "e", scope: !2753, file: !1, line: 392, type: !953)
!2766 = !DILocalVariable(name: "switch_bb", scope: !2753, file: !1, line: 393, type: !936)
!2767 = !DILocalVariable(name: "unswitch_on_alt", scope: !2753, file: !1, line: 393, type: !936)
!2768 = !DILocalVariable(name: "nloop", scope: !2753, file: !1, line: 394, type: !978)
!2769 = !DILocalVariable(name: "irred_flag", scope: !2753, file: !1, line: 395, type: !556)
!2770 = !DILocalVariable(name: "prob", scope: !2753, file: !1, line: 395, type: !556)
!2771 = !DILocalVariable(name: "seq", scope: !2753, file: !1, line: 396, type: !563)
!2772 = !DILocation(line: 0, scope: !2753)
!2773 = !DILocation(line: 399, column: 3, scope: !2753)
!2774 = !DILocation(line: 400, column: 3, scope: !2753)
!2775 = !DILocation(line: 401, column: 3, scope: !2753)
!2776 = !DILocation(line: 402, column: 3, scope: !2753)
!2777 = !DILocation(line: 403, column: 3, scope: !2753)
!2778 = !DILocation(line: 404, column: 3, scope: !2753)
!2779 = !DILocation(line: 406, column: 11, scope: !2753)
!2780 = !DILocation(line: 409, column: 23, scope: !2753)
!2781 = !DILocation(line: 409, column: 29, scope: !2753)
!2782 = !DILocation(line: 410, column: 16, scope: !2753)
!2783 = !DILocation(line: 411, column: 8, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2753, file: !1, line: 411, column: 7)
!2785 = !DILocation(line: 411, column: 7, scope: !2753)
!2786 = !DILocation(line: 414, column: 16, scope: !2753)
!2787 = !DILocation(line: 417, column: 21, scope: !2753)
!2788 = !DILocation(line: 418, column: 15, scope: !2753)
!2789 = !DILocation(line: 419, column: 16, scope: !2753)
!2790 = !DILocation(line: 420, column: 53, scope: !2753)
!2791 = !DILocation(line: 420, column: 34, scope: !2753)
!2792 = !DILocation(line: 420, column: 16, scope: !2753)
!2793 = !DILocation(line: 423, column: 21, scope: !2753)
!2794 = !DILocation(line: 424, column: 32, scope: !2753)
!2795 = !DILocation(line: 424, column: 48, scope: !2753)
!2796 = !DILocation(line: 424, column: 15, scope: !2753)
!2797 = !DILocation(line: 425, column: 31, scope: !2753)
!2798 = !DILocation(line: 425, column: 47, scope: !2753)
!2799 = !DILocation(line: 425, column: 63, scope: !2753)
!2800 = !DILocation(line: 426, column: 34, scope: !2753)
!2801 = !DILocation(line: 426, column: 10, scope: !2753)
!2802 = !DILocation(line: 425, column: 9, scope: !2753)
!2803 = !DILocation(line: 428, column: 25, scope: !2753)
!2804 = !DILocation(line: 428, column: 3, scope: !2753)
!2805 = !DILocation(line: 429, column: 40, scope: !2753)
!2806 = !DILocation(line: 429, column: 7, scope: !2753)
!2807 = !DILocation(line: 430, column: 6, scope: !2753)
!2808 = !DILocation(line: 430, column: 18, scope: !2753)
!2809 = !DILocation(line: 431, column: 26, scope: !2753)
!2810 = !DILocation(line: 431, column: 34, scope: !2753)
!2811 = !DILocation(line: 431, column: 32, scope: !2753)
!2812 = !DILocation(line: 431, column: 39, scope: !2753)
!2813 = !DILocation(line: 431, column: 6, scope: !2753)
!2814 = !DILocation(line: 431, column: 12, scope: !2753)
!2815 = !DILocation(line: 432, column: 29, scope: !2753)
!2816 = !DILocation(line: 432, column: 58, scope: !2753)
!2817 = !DILocation(line: 432, column: 7, scope: !2753)
!2818 = !DILocation(line: 433, column: 32, scope: !2753)
!2819 = !DILocation(line: 433, column: 6, scope: !2753)
!2820 = !DILocation(line: 433, column: 18, scope: !2753)
!2821 = !DILocation(line: 434, column: 26, scope: !2753)
!2822 = !DILocation(line: 434, column: 47, scope: !2753)
!2823 = !DILocation(line: 434, column: 34, scope: !2753)
!2824 = !DILocation(line: 434, column: 32, scope: !2753)
!2825 = !DILocation(line: 434, column: 60, scope: !2753)
!2826 = !DILocation(line: 434, column: 6, scope: !2753)
!2827 = !DILocation(line: 434, column: 12, scope: !2753)
!2828 = !DILocation(line: 436, column: 7, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2753, file: !1, line: 436, column: 7)
!2830 = !DILocation(line: 0, scope: !2829)
!2831 = !DILocation(line: 436, column: 7, scope: !2753)
!2832 = !DILocation(line: 438, column: 24, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2829, file: !1, line: 437, column: 5)
!2834 = !DILocation(line: 439, column: 7, scope: !2833)
!2835 = !DILocation(line: 439, column: 33, scope: !2833)
!2836 = !DILocation(line: 439, column: 39, scope: !2833)
!2837 = !DILocation(line: 440, column: 7, scope: !2833)
!2838 = !DILocation(line: 440, column: 33, scope: !2833)
!2839 = !DILocation(line: 440, column: 39, scope: !2833)
!2840 = !DILocation(line: 441, column: 5, scope: !2833)
!2841 = !DILocation(line: 444, column: 24, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2829, file: !1, line: 443, column: 5)
!2843 = !DILocation(line: 445, column: 7, scope: !2842)
!2844 = !DILocation(line: 445, column: 33, scope: !2842)
!2845 = !DILocation(line: 445, column: 39, scope: !2842)
!2846 = !DILocation(line: 446, column: 7, scope: !2842)
!2847 = !DILocation(line: 446, column: 33, scope: !2842)
!2848 = !DILocation(line: 446, column: 39, scope: !2842)
!2849 = !DILocation(line: 451, column: 43, scope: !2753)
!2850 = !DILocation(line: 451, column: 24, scope: !2753)
!2851 = !DILocation(line: 451, column: 6, scope: !2753)
!2852 = !DILocation(line: 452, column: 6, scope: !2753)
!2853 = !DILocation(line: 452, column: 31, scope: !2753)
!2854 = !DILocation(line: 453, column: 29, scope: !2753)
!2855 = !DILocation(line: 450, column: 11, scope: !2753)
!2856 = !DILocation(line: 456, column: 3, scope: !2753)
!2857 = !DILocation(line: 457, column: 3, scope: !2753)
!2858 = !DILocation(line: 460, column: 15, scope: !2753)
!2859 = !DILocation(line: 460, column: 3, scope: !2753)
!2860 = !DILocation(line: 461, column: 15, scope: !2753)
!2861 = !DILocation(line: 461, column: 3, scope: !2753)
!2862 = !DILocation(line: 463, column: 3, scope: !2753)
!2863 = !DILocation(line: 464, column: 1, scope: !2753)
!2864 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !146, file: !146, line: 150, type: !2865, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!5, !2746}
!2867 = !{!2868}
!2868 = !DILocalVariable(name: "vec_", arg: 1, scope: !2864, file: !146, line: 150, type: !2746)
!2869 = !DILocation(line: 0, scope: !2864)
!2870 = !DILocation(line: 150, column: 1, scope: !2864)
!2871 = distinct !DISubprogram(name: "single_succ_edge", scope: !146, file: !146, line: 643, type: !2872, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2877)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!953, !2874}
!2874 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !564, line: 112, baseType: !2875)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !938)
!2877 = !{!2878}
!2878 = !DILocalVariable(name: "bb", arg: 1, scope: !2871, file: !146, line: 643, type: !2874)
!2879 = !DILocation(line: 0, scope: !2871)
!2880 = !DILocation(line: 645, column: 3, scope: !2871)
!2881 = !DILocation(line: 646, column: 10, scope: !2871)
!2882 = !DILocation(line: 646, column: 3, scope: !2871)
!2883 = distinct !DISubprogram(name: "single_pred_edge", scope: !146, file: !146, line: 653, type: !2872, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2884)
!2884 = !{!2885}
!2885 = !DILocalVariable(name: "bb", arg: 1, scope: !2883, file: !146, line: 653, type: !2874)
!2886 = !DILocation(line: 0, scope: !2883)
!2887 = !DILocation(line: 655, column: 3, scope: !2883)
!2888 = !DILocation(line: 656, column: 10, scope: !2883)
!2889 = !DILocation(line: 656, column: 3, scope: !2883)
!2890 = distinct !DISubprogram(name: "single_succ_p", scope: !146, file: !146, line: 626, type: !2891, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2893)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!555, !2874}
!2893 = !{!2894}
!2894 = !DILocalVariable(name: "bb", arg: 1, scope: !2890, file: !146, line: 626, type: !2874)
!2895 = !DILocation(line: 0, scope: !2890)
!2896 = !DILocation(line: 628, column: 10, scope: !2890)
!2897 = !DILocation(line: 628, column: 33, scope: !2890)
!2898 = !DILocation(line: 628, column: 3, scope: !2890)
!2899 = distinct !DISubprogram(name: "single_pred_p", scope: !146, file: !146, line: 634, type: !2891, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2900)
!2900 = !{!2901}
!2901 = !DILocalVariable(name: "bb", arg: 1, scope: !2899, file: !146, line: 634, type: !2874)
!2902 = !DILocation(line: 0, scope: !2899)
!2903 = !DILocation(line: 636, column: 10, scope: !2899)
!2904 = !DILocation(line: 636, column: 33, scope: !2899)
!2905 = !DILocation(line: 636, column: 3, scope: !2899)
