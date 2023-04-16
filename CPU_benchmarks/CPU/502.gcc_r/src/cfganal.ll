; ModuleID = 'cfganal.bc'
source_filename = "cfganal.c"
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
%union.section = type opaque
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.edge_list = type { i32, i32, %struct.edge_def** }
%struct.sbitmap_iterator = type { i64*, i32, i32, i32, i64 }
%struct.depth_first_search_dsS = type { %struct.basic_block_def**, i32, %struct.simple_bitmap_def* }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str = private unnamed_addr constant [59 x i8] c"Compressed edge list, %d BBs + entry & exit, and %d edges\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" %-4d - edge(\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"entry,\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"exit)\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"*p* No index for edge from %d to %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"*p* Pred for index %d should be %d not %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"*p* Succ for index %d should be %d not %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"*** Edge (%d, %d) appears to not have an index\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"*** Edge (%d, %d) has index %d, but there is no edge\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%s { \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%d->%d \00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"cfganal.c\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dfs_enumerate_from.visited = internal unnamed_addr global %struct.simple_bitmap_def* null, align 8, !dbg !0
@dfs_enumerate_from.v_size = internal unnamed_addr global i32 0, align 4, !dbg !1607
@timevar_enable = external dso_local local_unnamed_addr global i8, align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1638 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1651, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1652, metadata !DIExpression()), !dbg !1653
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1654
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1655
  ret i32 %call, !dbg !1656
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1657 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1661
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1662
  ret i32 %call, !dbg !1663
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1664 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1719, metadata !DIExpression()), !dbg !1720
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1721
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1721
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1721
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1721
  %cmp = icmp uge i8* %0, %1, !dbg !1721
  %conv1 = zext i1 %cmp to i64, !dbg !1721
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1721
  %tobool = icmp eq i64 %expval, 0, !dbg !1721
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1721

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1721
  br label %cond.end, !dbg !1721

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1721
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1721
  %2 = load i8, i8* %0, align 1, !dbg !1721
  %conv3 = zext i8 %2 to i32, !dbg !1721
  br label %cond.end, !dbg !1721

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1721
  ret i32 %cond, !dbg !1722
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1723 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1725, metadata !DIExpression()), !dbg !1726
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1727
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1727
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1727
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1727
  %cmp = icmp uge i8* %0, %1, !dbg !1727
  %conv1 = zext i1 %cmp to i64, !dbg !1727
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1727
  %tobool = icmp eq i64 %expval, 0, !dbg !1727
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1727

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1727
  br label %cond.end, !dbg !1727

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1727
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1727
  %2 = load i8, i8* %0, align 1, !dbg !1727
  %conv3 = zext i8 %2 to i32, !dbg !1727
  br label %cond.end, !dbg !1727

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1727
  ret i32 %cond, !dbg !1728
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1729 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1730
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1730
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1730
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1730
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1730
  %cmp = icmp uge i8* %1, %2, !dbg !1730
  %conv1 = zext i1 %cmp to i64, !dbg !1730
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1730
  %tobool = icmp eq i64 %expval, 0, !dbg !1730
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1730

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1730
  br label %cond.end, !dbg !1730

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1730
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1730
  %3 = load i8, i8* %1, align 1, !dbg !1730
  %conv3 = zext i8 %3 to i32, !dbg !1730
  br label %cond.end, !dbg !1730

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1730
  ret i32 %cond, !dbg !1731
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1732 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1736, metadata !DIExpression()), !dbg !1737
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1738
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1739
  ret i32 %call, !dbg !1740
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1741 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1745, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1746, metadata !DIExpression()), !dbg !1747
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1748
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1748
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1748
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1748
  %cmp = icmp uge i8* %0, %1, !dbg !1748
  %conv1 = zext i1 %cmp to i64, !dbg !1748
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1748
  %tobool = icmp eq i64 %expval, 0, !dbg !1748
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1748

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1748
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1748
  br label %cond.end, !dbg !1748

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1748
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1748
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1748
  store i8 %conv2, i8* %0, align 1, !dbg !1748
  %conv6 = and i32 %__c, 255, !dbg !1748
  br label %cond.end, !dbg !1748

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1748
  ret i32 %cond, !dbg !1749
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1750 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1752, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1753, metadata !DIExpression()), !dbg !1754
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1755
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1755
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1755
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1755
  %cmp = icmp uge i8* %0, %1, !dbg !1755
  %conv1 = zext i1 %cmp to i64, !dbg !1755
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1755
  %tobool = icmp eq i64 %expval, 0, !dbg !1755
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1755

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1755
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1755
  br label %cond.end, !dbg !1755

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1755
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1755
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1755
  store i8 %conv2, i8* %0, align 1, !dbg !1755
  %conv6 = and i32 %__c, 255, !dbg !1755
  br label %cond.end, !dbg !1755

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1755
  ret i32 %cond, !dbg !1756
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1757 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1759, metadata !DIExpression()), !dbg !1760
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1761
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1761
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1761
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1761
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1761
  %cmp = icmp uge i8* %1, %2, !dbg !1761
  %conv1 = zext i1 %cmp to i64, !dbg !1761
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1761
  %tobool = icmp eq i64 %expval, 0, !dbg !1761
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1761

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1761
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1761
  br label %cond.end, !dbg !1761

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1761
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1761
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1761
  store i8 %conv4, i8* %1, align 1, !dbg !1761
  %conv6 = and i32 %__c, 255, !dbg !1761
  br label %cond.end, !dbg !1761

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1761
  ret i32 %cond, !dbg !1762
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1763 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1769, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1770, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1771, metadata !DIExpression()), !dbg !1772
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1773
  ret i64 %call, !dbg !1774
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1775 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1777, metadata !DIExpression()), !dbg !1778
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1779
  %0 = load i32, i32* %_flags, align 8, !dbg !1779
  %and = lshr i32 %0, 4, !dbg !1779
  %and.lobit = and i32 %and, 1, !dbg !1779
  ret i32 %and.lobit, !dbg !1780
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1781 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1783, metadata !DIExpression()), !dbg !1784
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1785
  %0 = load i32, i32* %_flags, align 8, !dbg !1785
  %and = lshr i32 %0, 5, !dbg !1785
  %and.lobit = and i32 %and, 1, !dbg !1785
  ret i32 %and.lobit, !dbg !1786
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1787 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1790, metadata !DIExpression()), !dbg !1791
  %__c.off = add i32 %__c, 128, !dbg !1792
  %0 = icmp ult i32 %__c.off, 384, !dbg !1792
  br i1 %0, label %cond.true, label %cond.end, !dbg !1792

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1793
  %1 = load i32*, i32** %call, align 8, !dbg !1794
  %idxprom = sext i32 %__c to i64, !dbg !1795
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1795
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1795
  br label %cond.end, !dbg !1796

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1796
  ret i32 %cond, !dbg !1797
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1798 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1800, metadata !DIExpression()), !dbg !1801
  %__c.off = add i32 %__c, 128, !dbg !1802
  %0 = icmp ult i32 %__c.off, 384, !dbg !1802
  br i1 %0, label %cond.true, label %cond.end, !dbg !1802

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1803
  %1 = load i32*, i32** %call, align 8, !dbg !1804
  %idxprom = sext i32 %__c to i64, !dbg !1805
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1805
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1805
  br label %cond.end, !dbg !1806

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1806
  ret i32 %cond, !dbg !1807
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1808 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1813, metadata !DIExpression()), !dbg !1814
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1815
  %conv = trunc i64 %call to i32, !dbg !1816
  ret i32 %conv, !dbg !1817
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1818 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1822, metadata !DIExpression()), !dbg !1823
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1824
  ret i64 %call, !dbg !1825
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1826 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1831, metadata !DIExpression()), !dbg !1832
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1833
  ret i64 %call, !dbg !1834
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1835 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1841, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1842, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1843, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1844, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1845, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i64 0, metadata !1846, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1847, metadata !DIExpression()), !dbg !1851
  br label %while.cond, !dbg !1852

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1853
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1851
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1847, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1846, metadata !DIExpression()), !dbg !1851
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1854
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1852

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1855
  %div = lshr i64 %add, 1, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %div, metadata !1848, metadata !DIExpression()), !dbg !1851
  %mul = mul i64 %div, %__size, !dbg !1858
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1859
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1849, metadata !DIExpression()), !dbg !1851
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %call, metadata !1850, metadata !DIExpression()), !dbg !1851
  %cmp1 = icmp slt i32 %call, 0, !dbg !1861
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1863

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1864
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1866

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1846, metadata !DIExpression()), !dbg !1851
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1851
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1851
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1847, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1846, metadata !DIExpression()), !dbg !1851
  br label %while.cond, !dbg !1852, !llvm.loop !1868

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1851
  ret i8* %retval.0, !dbg !1870
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1871 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1877, metadata !DIExpression()), !dbg !1878
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1879
  ret double %call, !dbg !1880
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1881 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1890, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1891, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 %base, metadata !1892, metadata !DIExpression()), !dbg !1893
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1894
  ret i64 %call, !dbg !1895
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1896 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1902, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1903, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i32 %base, metadata !1904, metadata !DIExpression()), !dbg !1905
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1906
  ret i64 %call, !dbg !1907
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1908 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1919, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1920, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i32 %base, metadata !1921, metadata !DIExpression()), !dbg !1922
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1923
  ret i64 %call, !dbg !1924
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1925 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1929, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1930, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %base, metadata !1931, metadata !DIExpression()), !dbg !1932
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1933
  ret i64 %call, !dbg !1934
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1935 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1975, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1976, metadata !DIExpression()), !dbg !1977
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1978
  ret i32 %call, !dbg !1979
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1980 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1982, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1983, metadata !DIExpression()), !dbg !1984
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1985
  ret i32 %call, !dbg !1986
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1987 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1991, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1992, metadata !DIExpression()), !dbg !1993
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1994
  ret i32 %call, !dbg !1995
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1996 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2000, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2001, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2002, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2003, metadata !DIExpression()), !dbg !2004
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2005
  ret i32 %call, !dbg !2006
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2007 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2011, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2012, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2013, metadata !DIExpression()), !dbg !2014
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2013, metadata !DIExpression(DW_OP_deref)), !dbg !2014
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2015
  ret i32 %call, !dbg !2016
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2017 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2021, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2022, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2023, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2024, metadata !DIExpression()), !dbg !2025
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2024, metadata !DIExpression(DW_OP_deref)), !dbg !2025
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2026
  ret i32 %call, !dbg !2027
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2028 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2052, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2053, metadata !DIExpression()), !dbg !2054
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2055
  ret i32 %call, !dbg !2056
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2057 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2059, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2060, metadata !DIExpression()), !dbg !2061
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2062
  ret i32 %call, !dbg !2063
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2064 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2068, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2069, metadata !DIExpression()), !dbg !2070
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2071
  ret i32 %call, !dbg !2072
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2073 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2077, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2078, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2079, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2080, metadata !DIExpression()), !dbg !2081
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2082
  ret i32 %call, !dbg !2083
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @forwarder_block_p(%struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !2084 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2088, metadata !DIExpression()), !dbg !2090
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2091
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2091
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2091
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 1, !dbg !2091
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2091
  %cmp = icmp eq %struct.basic_block_def* %2, %bb, !dbg !2093
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !2094

lor.lhs.false:                                    ; preds = %entry
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2095
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2095
  %cmp3 = icmp eq %struct.basic_block_def* %3, %bb, !dbg !2096
  br i1 %cmp3, label %cleanup, label %lor.lhs.false4, !dbg !2097

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #7, !dbg !2098
  %tobool = icmp eq i8 %call, 0, !dbg !2098
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2099

if.end:                                           ; preds = %lor.lhs.false4
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !2100
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2100
  %4 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2100
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %4, i64 0, i32 0, !dbg !2100
  br label %for.cond, !dbg !2102

for.cond:                                         ; preds = %for.inc, %if.end
  %.pre4 = phi %struct.rtl_bb_info* [ %4, %if.end ], [ %.pre, %for.inc ]
  %5 = phi %struct.rtl_bb_info* [ %4, %if.end ], [ %.pre, %for.inc ], !dbg !2103
  %insn.0.in = phi %struct.rtx_def** [ %head_, %if.end ], [ %rt_rtx, %for.inc ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2105
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2089, metadata !DIExpression()), !dbg !2090
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %5, i64 0, i32 1, !dbg !2103
  %6 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2103
  %cmp7 = icmp eq %struct.rtx_def* %insn.0, %6, !dbg !2106
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2090
  %bf.load = load i32, i32* %7, align 8, !dbg !2090
  %bf.clear = and i32 %bf.load, 65535, !dbg !2090
  %cmp8 = icmp eq i32 %bf.clear, 8, !dbg !2090
  br i1 %cmp7, label %for.end, label %for.body, !dbg !2107

for.body:                                         ; preds = %for.cond
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false9, !dbg !2108

lor.lhs.false9:                                   ; preds = %for.body
  %cmp12 = icmp eq i32 %bf.clear, 7, !dbg !2108
  br i1 %cmp12, label %land.lhs.true, label %lor.lhs.false13, !dbg !2108

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %cmp16 = icmp eq i32 %bf.clear, 9, !dbg !2108
  br i1 %cmp16, label %land.lhs.true, label %lor.lhs.false17, !dbg !2108

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %cmp20 = icmp eq i32 %bf.clear, 10, !dbg !2108
  br i1 %cmp20, label %land.lhs.true, label %for.inc, !dbg !2110

land.lhs.true:                                    ; preds = %lor.lhs.false17, %lor.lhs.false13, %lor.lhs.false9, %for.body
  %call21 = tail call fastcc zeroext i8 @flow_active_insn_p(%struct.rtx_def* %insn.0) #7, !dbg !2111
  %tobool22 = icmp eq i8 %call21, 0, !dbg !2111
  br i1 %tobool22, label %land.lhs.true.for.inc_crit_edge, label %cleanup.loopexit, !dbg !2112

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  %.pre.pre = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2103
  br label %for.inc, !dbg !2112

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %lor.lhs.false17
  %.pre = phi %struct.rtl_bb_info* [ %.pre.pre, %land.lhs.true.for.inc_crit_edge ], [ %.pre4, %lor.lhs.false17 ], !dbg !2103
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2113
  %rt_rtx = bitcast %union.rtunion_def* %8 to %struct.rtx_def**, !dbg !2113
  br label %for.cond, !dbg !2114, !llvm.loop !2115

for.end:                                          ; preds = %for.cond
  %insn.0.lcssa = phi %struct.rtx_def* [ %insn.0, %for.cond ], !dbg !2105
  %bf.clear.lcssa = phi i32 [ %bf.clear, %for.cond ], !dbg !2090
  %cmp8.lcssa = phi i1 [ %cmp8, %for.cond ], !dbg !2090
  br i1 %cmp8.lcssa, label %lor.lhs.false44, label %lor.lhs.false29, !dbg !2117

lor.lhs.false29:                                  ; preds = %for.end
  %cmp32 = icmp eq i32 %bf.clear.lcssa, 7, !dbg !2117
  br i1 %cmp32, label %lor.lhs.false44, label %lor.lhs.false34, !dbg !2117

lor.lhs.false34:                                  ; preds = %lor.lhs.false29
  %cmp37 = icmp eq i32 %bf.clear.lcssa, 9, !dbg !2117
  br i1 %cmp37, label %lor.lhs.false44, label %lor.lhs.false39, !dbg !2117

lor.lhs.false39:                                  ; preds = %lor.lhs.false34
  %cmp42 = icmp eq i32 %bf.clear.lcssa, 10, !dbg !2117
  br i1 %cmp42, label %lor.lhs.false44, label %lor.end, !dbg !2118

lor.lhs.false44:                                  ; preds = %lor.lhs.false39, %lor.lhs.false34, %lor.lhs.false29, %for.end
  %cmp47 = icmp eq i32 %bf.clear.lcssa, 9, !dbg !2119
  br i1 %cmp47, label %land.lhs.true49, label %lor.rhs, !dbg !2120

land.lhs.true49:                                  ; preds = %lor.lhs.false44
  %call50 = tail call i32 @simplejump_p(%struct.rtx_def* %insn.0.lcssa) #6, !dbg !2121
  %tobool51 = icmp eq i32 %call50, 0, !dbg !2121
  br i1 %tobool51, label %lor.rhs, label %lor.end, !dbg !2122

lor.rhs:                                          ; preds = %land.lhs.true49, %lor.lhs.false44
  %call52 = tail call fastcc zeroext i8 @flow_active_insn_p(%struct.rtx_def* %insn.0.lcssa) #7, !dbg !2123
  %tobool53 = icmp eq i8 %call52, 0, !dbg !2124
  %phitmp = zext i1 %tobool53 to i8, !dbg !2122
  br label %lor.end, !dbg !2122

lor.end:                                          ; preds = %land.lhs.true49, %lor.rhs, %lor.lhs.false39
  %9 = phi i8 [ 1, %land.lhs.true49 ], [ 1, %lor.lhs.false39 ], [ %phitmp, %lor.rhs ]
  br label %cleanup, !dbg !2125

cleanup.loopexit:                                 ; preds = %land.lhs.true
  br label %cleanup, !dbg !2126

cleanup:                                          ; preds = %cleanup.loopexit, %lor.lhs.false4, %entry, %lor.lhs.false, %lor.end
  %retval.0 = phi i8 [ %9, %lor.end ], [ 0, %lor.lhs.false4 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %cleanup.loopexit ], !dbg !2090
  ret i8 %retval.0, !dbg !2126
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2127 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2129, metadata !DIExpression()), !dbg !2130
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !2131
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2131
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2131
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2131

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2131
  br label %cond.end, !dbg !2131

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2131
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2131
  %cmp = icmp eq i32 %call, 1, !dbg !2132
  %conv2 = zext i1 %cmp to i8, !dbg !2131
  ret i8 %conv2, !dbg !2133
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @flow_active_insn_p(%struct.rtx_def* %insn) unnamed_addr #4 !dbg !2134 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2141, metadata !DIExpression()), !dbg !2142
  %call = tail call i32 @active_insn_p(%struct.rtx_def* %insn) #6, !dbg !2143
  %tobool = icmp eq i32 %call, 0, !dbg !2143
  br i1 %tobool, label %if.end, label %return, !dbg !2145

if.end:                                           ; preds = %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !2146
  %0 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !2146
  %1 = bitcast %union.rtunion_def* %0 to i32**, !dbg !2146
  %2 = load i32*, i32** %1, align 8, !dbg !2146
  %bf.load = load i32, i32* %2, align 8, !dbg !2146
  %bf.clear = and i32 %bf.load, 65535, !dbg !2146
  %cmp = icmp eq i32 %bf.clear, 25, !dbg !2148
  br i1 %cmp, label %land.lhs.true, label %if.end24, !dbg !2149

land.lhs.true:                                    ; preds = %if.end
  %arrayidx7 = getelementptr inbounds i32, i32* %2, i64 2, !dbg !2150
  %3 = bitcast i32* %arrayidx7 to i32**, !dbg !2150
  %4 = load i32*, i32** %3, align 8, !dbg !2150
  %bf.load9 = load i32, i32* %4, align 8, !dbg !2150
  %bf.clear10 = and i32 %bf.load9, 65535, !dbg !2150
  %cmp11 = icmp eq i32 %bf.clear10, 37, !dbg !2150
  br i1 %cmp11, label %land.lhs.true12, label %if.end24, !dbg !2151

land.lhs.true12:                                  ; preds = %land.lhs.true
  %tobool22 = icmp slt i32 %bf.load9, 0, !dbg !2152
  br i1 %tobool22, label %return, label %if.end24, !dbg !2153

if.end24:                                         ; preds = %land.lhs.true12, %land.lhs.true, %if.end
  br label %return, !dbg !2154

return:                                           ; preds = %entry, %land.lhs.true12, %if.end24
  %retval.0 = phi i8 [ 0, %if.end24 ], [ 1, %entry ], [ 1, %land.lhs.true12 ], !dbg !2142
  ret i8 %retval.0, !dbg !2155
}

declare dso_local i32 @simplejump_p(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @can_fallthru(%struct.basic_block_def* %src, %struct.basic_block_def* %target) local_unnamed_addr #4 !dbg !2156 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %src, metadata !2160, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %target, metadata !2161, metadata !DIExpression()), !dbg !2166
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %src, i64 0, i32 7, !dbg !2167
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2167
  %0 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2167
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 1, !dbg !2167
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2167
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !2162, metadata !DIExpression()), !dbg !2166
  %2 = bitcast %struct.edge_def** %e to i8*, !dbg !2168
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2168
  %3 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2169
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8, !dbg !2169
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2170
  %cfg = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !2170
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2170
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !2170
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2170
  %cmp = icmp eq %struct.basic_block_def* %6, %target, !dbg !2172
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2173

if.end:                                           ; preds = %entry
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %src, i64 0, i32 6, !dbg !2174
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb, align 8, !dbg !2174
  %cmp1 = icmp eq %struct.basic_block_def* %7, %target, !dbg !2176
  br i1 %cmp1, label %if.end3, label %cleanup, !dbg !2177

if.end3:                                          ; preds = %if.end
  %8 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2178
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #8, !dbg !2178
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %src, i64 0, i32 1, !dbg !2178
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2178
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2178
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !2178
  store i32 %10, i32* %9, align 8, !dbg !2178
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2178
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !2178
  store %struct.VEC_edge_gc** %12, %struct.VEC_edge_gc*** %11, align 8, !dbg !2178
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %8, i64 16, i1 false), !dbg !2178
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #8, !dbg !2178
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2180
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2180
  br label %for.cond, !dbg !2178

for.cond:                                         ; preds = %for.inc, %if.end3
  %15 = load i32, i32* %13, align 8, !dbg !2182
  %16 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !2182
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2164, metadata !DIExpression(DW_OP_deref)), !dbg !2166
  %call4 = call fastcc zeroext i8 @ei_cond(i32 %15, %struct.VEC_edge_gc** %16, %struct.edge_def** nonnull %e) #7, !dbg !2182
  %tobool = icmp eq i8 %call4, 0, !dbg !2178
  br i1 %tobool, label %for.end, label %for.body, !dbg !2178

for.body:                                         ; preds = %for.cond
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2183
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !2164, metadata !DIExpression()), !dbg !2166
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i64 0, i32 1, !dbg !2185
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2185
  %19 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2186
  %cfg6 = getelementptr inbounds %struct.function, %struct.function* %19, i64 0, i32 1, !dbg !2186
  %20 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6, align 8, !dbg !2186
  %x_exit_block_ptr7 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %20, i64 0, i32 1, !dbg !2186
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr7, align 8, !dbg !2186
  %cmp8 = icmp eq %struct.basic_block_def* %18, %21, !dbg !2187
  br i1 %cmp8, label %land.lhs.true, label %for.inc, !dbg !2188

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !2164, metadata !DIExpression()), !dbg !2166
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i64 0, i32 7, !dbg !2189
  %22 = load i32, i32* %flags, align 8, !dbg !2189
  %and = and i32 %22, 1, !dbg !2190
  %tobool9 = icmp eq i32 %and, 0, !dbg !2190
  br i1 %tobool9, label %for.inc, label %cleanup.loopexit, !dbg !2191

for.inc:                                          ; preds = %land.lhs.true, %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2165, metadata !DIExpression(DW_OP_deref)), !dbg !2166
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2182
  br label %for.cond, !dbg !2182, !llvm.loop !2192

for.end:                                          ; preds = %for.cond
  %il12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %target, i64 0, i32 7, !dbg !2194
  %rtl13 = bitcast %union.basic_block_il_dependent* %il12 to %struct.rtl_bb_info**, !dbg !2194
  %23 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl13, align 8, !dbg !2194
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %23, i64 0, i32 0, !dbg !2194
  %24 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !2194
  call void @llvm.dbg.value(metadata %struct.rtx_def* %24, metadata !2163, metadata !DIExpression()), !dbg !2166
  %tobool14 = icmp eq %struct.rtx_def* %24, null, !dbg !2195
  br i1 %tobool14, label %if.end20, label %land.lhs.true15, !dbg !2197

land.lhs.true15:                                  ; preds = %for.end
  %call16 = call i32 @active_insn_p(%struct.rtx_def* nonnull %24) #6, !dbg !2198
  %tobool17 = icmp eq i32 %call16, 0, !dbg !2198
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !2199

if.then18:                                        ; preds = %land.lhs.true15
  %call19 = call %struct.rtx_def* @next_active_insn(%struct.rtx_def* nonnull %24) #6, !dbg !2200
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call19, metadata !2163, metadata !DIExpression()), !dbg !2166
  br label %if.end20, !dbg !2201

if.end20:                                         ; preds = %land.lhs.true15, %for.end, %if.then18
  %insn2.0 = phi %struct.rtx_def* [ %24, %land.lhs.true15 ], [ %call19, %if.then18 ], [ null, %for.end ], !dbg !2166
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn2.0, metadata !2163, metadata !DIExpression()), !dbg !2166
  %call21 = call %struct.rtx_def* @next_active_insn(%struct.rtx_def* %1) #6, !dbg !2202
  %cmp22 = icmp eq %struct.rtx_def* %call21, %insn2.0, !dbg !2203
  %conv23 = zext i1 %cmp22 to i8, !dbg !2202
  br label %cleanup, !dbg !2204

cleanup.loopexit:                                 ; preds = %land.lhs.true
  br label %cleanup, !dbg !2205

cleanup:                                          ; preds = %cleanup.loopexit, %if.end, %entry, %if.end20
  %retval.0 = phi i8 [ %conv23, %if.end20 ], [ 1, %entry ], [ 0, %if.end ], [ 0, %cleanup.loopexit ], !dbg !2166
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8, !dbg !2205
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2205
  ret i8 %retval.0, !dbg !2205
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2206 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2210, metadata !DIExpression()), !dbg !2212
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2213
  store i32 0, i32* %index, align 8, !dbg !2214
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2215
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2216
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2217
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2217
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2217
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2218 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2223, metadata !DIExpression()), !dbg !2224
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2225
  %tobool = icmp eq i8 %call, 0, !dbg !2225
  br i1 %tobool, label %if.then, label %if.else, !dbg !2227

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2228
  br label %return, !dbg !2230

if.else:                                          ; preds = %entry
  br label %return, !dbg !2231

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2233
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2233
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2233
  ret i8 %retval.0, !dbg !2234
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !2235 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !2239, metadata !DIExpression()), !dbg !2240
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !2241
  %0 = load i32, i32* %index, align 8, !dbg !2241
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !2241
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2241
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !2241
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2241
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2241

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !2241
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2241
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !2241
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2241
  br label %cond.end, !dbg !2241

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2241
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2241
  %cmp = icmp ult i32 %0, %call2, !dbg !2241
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !2241

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !2241
  br label %cond.end5, !dbg !2241

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !2242
  %inc = add i32 %5, 1, !dbg !2242
  store i32 %inc, i32* %index, align 8, !dbg !2242
  ret void, !dbg !2243
}

declare dso_local i32 @active_insn_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @next_active_insn(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @could_fall_through(%struct.basic_block_def* %src, %struct.basic_block_def* %target) local_unnamed_addr #4 !dbg !2244 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %src, metadata !2246, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %target, metadata !2247, metadata !DIExpression()), !dbg !2250
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2251
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2251
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2252
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2252
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2253
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2253
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2253
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !2253
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2253
  %cmp = icmp eq %struct.basic_block_def* %4, %target, !dbg !2255
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2256

if.end:                                           ; preds = %entry
  %5 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2257
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8, !dbg !2257
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %src, i64 0, i32 1, !dbg !2257
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2257
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2257
  %7 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !2257
  store i32 %7, i32* %6, align 8, !dbg !2257
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2257
  %9 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !2257
  store %struct.VEC_edge_gc** %9, %struct.VEC_edge_gc*** %8, align 8, !dbg !2257
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !2257
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8, !dbg !2257
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2259
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2259
  br label %for.cond, !dbg !2257

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %10, align 8, !dbg !2261
  %13 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %11, align 8, !dbg !2261
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2248, metadata !DIExpression(DW_OP_deref)), !dbg !2250
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %12, %struct.VEC_edge_gc** %13, %struct.edge_def** nonnull %e) #7, !dbg !2261
  %tobool = icmp eq i8 %call1, 0, !dbg !2257
  br i1 %tobool, label %cleanup.loopexit, label %for.body, !dbg !2257

for.body:                                         ; preds = %for.cond
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2262
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !2248, metadata !DIExpression()), !dbg !2250
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i64 0, i32 1, !dbg !2264
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2264
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2265
  %cfg3 = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 1, !dbg !2265
  %17 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg3, align 8, !dbg !2265
  %x_exit_block_ptr4 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 1, !dbg !2265
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr4, align 8, !dbg !2265
  %cmp5 = icmp eq %struct.basic_block_def* %15, %18, !dbg !2266
  br i1 %cmp5, label %land.lhs.true, label %for.inc, !dbg !2267

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !2248, metadata !DIExpression()), !dbg !2250
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i64 0, i32 7, !dbg !2268
  %19 = load i32, i32* %flags, align 8, !dbg !2268
  %and = and i32 %19, 1, !dbg !2269
  %tobool6 = icmp eq i32 %and, 0, !dbg !2269
  br i1 %tobool6, label %for.inc, label %cleanup.loopexit, !dbg !2270

for.inc:                                          ; preds = %land.lhs.true, %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2249, metadata !DIExpression(DW_OP_deref)), !dbg !2250
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2261
  br label %for.cond, !dbg !2261, !llvm.loop !2271

cleanup.loopexit:                                 ; preds = %for.cond, %land.lhs.true
  %retval.0.ph = phi i8 [ 1, %for.cond ], [ 0, %land.lhs.true ]
  br label %cleanup, !dbg !2273

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi i8 [ 1, %entry ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !2250
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2273
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2273
  ret i8 %retval.0, !dbg !2273
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #4 !dbg !2274 {
entry:
  %tmp = alloca %struct.edge_iterator, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp47 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata i32 1, metadata !2282, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 1, metadata !2283, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 0, metadata !2285, metadata !DIExpression()), !dbg !2290
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2291
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2291
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2291
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !2291
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !2291
  %conv = sext i32 %2 to i64, !dbg !2291
  %call = tail call i8* @xcalloc(i64 %conv, i64 4) #6, !dbg !2291
  %3 = bitcast i8* %call to i32*, !dbg !2291
  call void @llvm.dbg.value(metadata i32* %3, metadata !2279, metadata !DIExpression()), !dbg !2290
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2292
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !2292
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !2292
  %x_last_basic_block3 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 5, !dbg !2292
  %6 = load i32, i32* %x_last_basic_block3, align 8, !dbg !2292
  %conv4 = sext i32 %6 to i64, !dbg !2292
  %call5 = tail call i8* @xcalloc(i64 %conv4, i64 4) #6, !dbg !2292
  %7 = bitcast i8* %call5 to i32*, !dbg !2292
  call void @llvm.dbg.value(metadata i32* %7, metadata !2280, metadata !DIExpression()), !dbg !2290
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2293
  %cfg7 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !2293
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg7, align 8, !dbg !2293
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 3, !dbg !2293
  %10 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2293
  %add = add nsw i32 %10, 1, !dbg !2293
  %conv8 = sext i32 %add to i64, !dbg !2293
  %mul = shl nsw i64 %conv8, 4, !dbg !2293
  %call9 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2293
  %11 = bitcast i8* %call9 to %struct.edge_iterator*, !dbg !2293
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %11, metadata !2278, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 0, metadata !2281, metadata !DIExpression()), !dbg !2290
  %12 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2294
  %cfg11 = getelementptr inbounds %struct.function, %struct.function* %12, i64 0, i32 1, !dbg !2294
  %13 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg11, align 8, !dbg !2294
  %x_last_basic_block12 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %13, i64 0, i32 5, !dbg !2294
  %14 = load i32, i32* %x_last_basic_block12, align 8, !dbg !2294
  %call13 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %14) #6, !dbg !2295
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call13, metadata !2284, metadata !DIExpression()), !dbg !2290
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call13) #6, !dbg !2296
  call void @llvm.dbg.value(metadata i32 1, metadata !2281, metadata !DIExpression()), !dbg !2290
  %15 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2297
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #8, !dbg !2297
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2297
  %cfg15 = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 1, !dbg !2297
  %17 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg15, align 8, !dbg !2297
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 0, !dbg !2297
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2297
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i64 0, i32 1, !dbg !2297
  %call16 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2297
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2297
  %20 = extractvalue { i32, %struct.VEC_edge_gc** } %call16, 0, !dbg !2297
  store i32 %20, i32* %19, align 8, !dbg !2297
  %21 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2297
  %22 = extractvalue { i32, %struct.VEC_edge_gc** } %call16, 1, !dbg !2297
  store %struct.VEC_edge_gc** %22, %struct.VEC_edge_gc*** %21, align 8, !dbg !2297
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %call9, i8* nonnull align 8 %15, i64 16, i1 false), !dbg !2297
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #8, !dbg !2297
  %23 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2298
  %24 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2298
  %25 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2298
  %26 = bitcast %struct.edge_iterator* %tmp47 to i8*, !dbg !2299
  %27 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp47, i64 0, i32 0, !dbg !2299
  %28 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp47, i64 0, i32 1, !dbg !2299
  br label %while.cond, !dbg !2304

while.cond:                                       ; preds = %if.end108, %entry
  %sp.0 = phi i32 [ 1, %entry ], [ %sp.3, %if.end108 ], !dbg !2290
  %prenum.0 = phi i32 [ 1, %entry ], [ %prenum.1, %if.end108 ], !dbg !2305
  %postnum.0 = phi i32 [ 1, %entry ], [ %postnum.3, %if.end108 ], !dbg !2290
  %found.0 = phi i8 [ 0, %entry ], [ %found.2, %if.end108 ], !dbg !2290
  call void @llvm.dbg.value(metadata i8 %found.0, metadata !2285, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 %postnum.0, metadata !2283, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 %prenum.0, metadata !2282, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 %sp.0, metadata !2281, metadata !DIExpression()), !dbg !2290
  %tobool = icmp eq i32 %sp.0, 0, !dbg !2304
  br i1 %tobool, label %while.end, label %while.body, !dbg !2304

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %23) #8, !dbg !2306
  %sub = add nsw i32 %sp.0, -1, !dbg !2307
  %idxprom17 = sext i32 %sub to i64, !dbg !2308
  %arrayidx18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %11, i64 %idxprom17, !dbg !2308
  %29 = bitcast %struct.edge_iterator* %arrayidx18 to i8*, !dbg !2308
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %23, i8* align 8 %29, i64 16, i1 false), !dbg !2308
  %30 = load i32, i32* %24, align 8, !dbg !2309
  %31 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %25, align 8, !dbg !2309
  %call19 = tail call fastcc %struct.edge_def* @ei_edge(i32 %30, %struct.VEC_edge_gc** %31) #7, !dbg !2309
  %src20 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call19, i64 0, i32 0, !dbg !2310
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %src20, align 8, !dbg !2310
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %32, metadata !2288, metadata !DIExpression()), !dbg !2298
  %call21 = tail call fastcc %struct.edge_def* @ei_edge(i32 %30, %struct.VEC_edge_gc** %31) #7, !dbg !2311
  %dest22 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call21, i64 0, i32 1, !dbg !2312
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %dest22, align 8, !dbg !2312
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %33, metadata !2289, metadata !DIExpression()), !dbg !2298
  %call23 = tail call fastcc %struct.edge_def* @ei_edge(i32 %30, %struct.VEC_edge_gc** %31) #7, !dbg !2313
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call23, i64 0, i32 7, !dbg !2314
  %34 = load i32, i32* %flags, align 8, !dbg !2315
  %and = and i32 %34, -33, !dbg !2315
  store i32 %and, i32* %flags, align 8, !dbg !2315
  %35 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2316
  %cfg25 = getelementptr inbounds %struct.function, %struct.function* %35, i64 0, i32 1, !dbg !2316
  %36 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg25, align 8, !dbg !2316
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %36, i64 0, i32 1, !dbg !2316
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2316
  %cmp = icmp eq %struct.basic_block_def* %33, %37, !dbg !2317
  br i1 %cmp, label %if.else54, label %land.lhs.true, !dbg !2318

land.lhs.true:                                    ; preds = %while.body
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i64 0, i32 9, !dbg !2319
  %38 = load i32, i32* %index, align 8, !dbg !2319
  %div = lshr i32 %38, 6, !dbg !2319
  %idxprom27 = zext i32 %div to i64, !dbg !2319
  %arrayidx28 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call13, i64 0, i32 3, i64 %idxprom27, !dbg !2319
  %39 = load i64, i64* %arrayidx28, align 8, !dbg !2319
  %rem = and i32 %38, 63, !dbg !2319
  %sh_prom = zext i32 %rem to i64, !dbg !2319
  %40 = shl i64 1, %sh_prom, !dbg !2319
  %41 = and i64 %39, %40, !dbg !2319
  %tobool31 = icmp eq i64 %41, 0, !dbg !2319
  br i1 %tobool31, label %if.then, label %if.else54, !dbg !2320

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call13, i32 %38) #7, !dbg !2321
  %inc33 = add nsw i32 %prenum.0, 1, !dbg !2322
  call void @llvm.dbg.value(metadata i32 %inc33, metadata !2282, metadata !DIExpression()), !dbg !2290
  %42 = load i32, i32* %index, align 8, !dbg !2323
  %idxprom35 = sext i32 %42 to i64, !dbg !2324
  %arrayidx36 = getelementptr inbounds i32, i32* %3, i64 %idxprom35, !dbg !2324
  store i32 %prenum.0, i32* %arrayidx36, align 4, !dbg !2325
  %succs37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i64 0, i32 1, !dbg !2326
  %43 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs37, align 8, !dbg !2326
  %tobool38 = icmp eq %struct.VEC_edge_gc* %43, null, !dbg !2326
  br i1 %tobool38, label %cond.end, label %cond.true, !dbg !2326

cond.true:                                        ; preds = %if.then
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %43, i64 0, i32 0, !dbg !2326
  br label %cond.end, !dbg !2326

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %if.then ], !dbg !2326
  %call40 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2326
  %cmp41 = icmp eq i32 %call40, 0, !dbg !2327
  br i1 %cmp41, label %if.else, label %if.then43, !dbg !2328

if.then43:                                        ; preds = %cond.end
  %inc44 = add nsw i32 %sp.0, 1, !dbg !2329
  call void @llvm.dbg.value(metadata i32 %inc44, metadata !2281, metadata !DIExpression()), !dbg !2290
  %idxprom45 = sext i32 %sp.0 to i64, !dbg !2330
  %arrayidx46 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %11, i64 %idxprom45, !dbg !2330
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #8, !dbg !2331
  %call49 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs37) #7, !dbg !2331
  %44 = extractvalue { i32, %struct.VEC_edge_gc** } %call49, 0, !dbg !2331
  store i32 %44, i32* %27, align 8, !dbg !2331
  %45 = extractvalue { i32, %struct.VEC_edge_gc** } %call49, 1, !dbg !2331
  store %struct.VEC_edge_gc** %45, %struct.VEC_edge_gc*** %28, align 8, !dbg !2331
  %46 = bitcast %struct.edge_iterator* %arrayidx46 to i8*, !dbg !2331
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* nonnull align 8 %26, i64 16, i1 false), !dbg !2331
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #8, !dbg !2331
  br label %if.end108, !dbg !2332

if.else:                                          ; preds = %cond.end
  %inc50 = add nsw i32 %postnum.0, 1, !dbg !2333
  call void @llvm.dbg.value(metadata i32 %inc50, metadata !2283, metadata !DIExpression()), !dbg !2290
  %47 = load i32, i32* %index, align 8, !dbg !2334
  %idxprom52 = sext i32 %47 to i64, !dbg !2335
  %arrayidx53 = getelementptr inbounds i32, i32* %7, i64 %idxprom52, !dbg !2335
  store i32 %postnum.0, i32* %arrayidx53, align 4, !dbg !2336
  br label %if.end108

if.else54:                                        ; preds = %land.lhs.true, %while.body
  br i1 %cmp, label %if.end84, label %land.lhs.true60, !dbg !2337

land.lhs.true60:                                  ; preds = %if.else54
  %x_entry_block_ptr63 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %36, i64 0, i32 0, !dbg !2340
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr63, align 8, !dbg !2340
  %cmp64 = icmp eq %struct.basic_block_def* %32, %48, !dbg !2341
  br i1 %cmp64, label %if.end84, label %land.lhs.true66, !dbg !2342

land.lhs.true66:                                  ; preds = %land.lhs.true60
  %index67 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i64 0, i32 9, !dbg !2343
  %49 = load i32, i32* %index67, align 8, !dbg !2343
  %idxprom68 = sext i32 %49 to i64, !dbg !2344
  %arrayidx69 = getelementptr inbounds i32, i32* %3, i64 %idxprom68, !dbg !2344
  %50 = load i32, i32* %arrayidx69, align 4, !dbg !2344
  %index70 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i64 0, i32 9, !dbg !2345
  %51 = load i32, i32* %index70, align 8, !dbg !2345
  %idxprom71 = sext i32 %51 to i64, !dbg !2346
  %arrayidx72 = getelementptr inbounds i32, i32* %3, i64 %idxprom71, !dbg !2346
  %52 = load i32, i32* %arrayidx72, align 4, !dbg !2346
  %cmp73 = icmp slt i32 %50, %52, !dbg !2347
  br i1 %cmp73, label %if.end84, label %land.lhs.true75, !dbg !2348

land.lhs.true75:                                  ; preds = %land.lhs.true66
  %arrayidx78 = getelementptr inbounds i32, i32* %7, i64 %idxprom71, !dbg !2349
  %53 = load i32, i32* %arrayidx78, align 4, !dbg !2349
  %cmp79 = icmp eq i32 %53, 0, !dbg !2350
  br i1 %cmp79, label %if.then81, label %if.end84, !dbg !2351

if.then81:                                        ; preds = %land.lhs.true75
  %call82 = tail call fastcc %struct.edge_def* @ei_edge(i32 %30, %struct.VEC_edge_gc** %31) #7, !dbg !2352
  %flags83 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call82, i64 0, i32 7, !dbg !2353
  %54 = load i32, i32* %flags83, align 8, !dbg !2354
  %or = or i32 %54, 32, !dbg !2354
  store i32 %or, i32* %flags83, align 8, !dbg !2354
  call void @llvm.dbg.value(metadata i8 1, metadata !2285, metadata !DIExpression()), !dbg !2290
  br label %if.end84, !dbg !2352

if.end84:                                         ; preds = %land.lhs.true66, %land.lhs.true60, %if.else54, %if.then81, %land.lhs.true75
  %found.1 = phi i8 [ 1, %if.then81 ], [ %found.0, %land.lhs.true75 ], [ %found.0, %land.lhs.true66 ], [ %found.0, %land.lhs.true60 ], [ %found.0, %if.else54 ], !dbg !2290
  call void @llvm.dbg.value(metadata i8 %found.1, metadata !2285, metadata !DIExpression()), !dbg !2290
  %call85 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %30, %struct.VEC_edge_gc** %31) #7, !dbg !2355
  %tobool87 = icmp eq i8 %call85, 0, !dbg !2355
  br i1 %tobool87, label %if.end99, label %land.lhs.true88, !dbg !2357

land.lhs.true88:                                  ; preds = %if.end84
  %55 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2358
  %cfg90 = getelementptr inbounds %struct.function, %struct.function* %55, i64 0, i32 1, !dbg !2358
  %56 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg90, align 8, !dbg !2358
  %x_entry_block_ptr91 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %56, i64 0, i32 0, !dbg !2358
  %57 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr91, align 8, !dbg !2358
  %cmp92 = icmp eq %struct.basic_block_def* %32, %57, !dbg !2359
  br i1 %cmp92, label %if.end99, label %if.then94, !dbg !2360

if.then94:                                        ; preds = %land.lhs.true88
  %inc95 = add nsw i32 %postnum.0, 1, !dbg !2361
  call void @llvm.dbg.value(metadata i32 %inc95, metadata !2283, metadata !DIExpression()), !dbg !2290
  %index96 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i64 0, i32 9, !dbg !2362
  %58 = load i32, i32* %index96, align 8, !dbg !2362
  %idxprom97 = sext i32 %58 to i64, !dbg !2363
  %arrayidx98 = getelementptr inbounds i32, i32* %7, i64 %idxprom97, !dbg !2363
  store i32 %postnum.0, i32* %arrayidx98, align 4, !dbg !2364
  br label %if.end99, !dbg !2363

if.end99:                                         ; preds = %land.lhs.true88, %if.end84, %if.then94
  %postnum.2 = phi i32 [ %inc95, %if.then94 ], [ %postnum.0, %land.lhs.true88 ], [ %postnum.0, %if.end84 ], !dbg !2290
  call void @llvm.dbg.value(metadata i32 %postnum.2, metadata !2283, metadata !DIExpression()), !dbg !2290
  %call100 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %30, %struct.VEC_edge_gc** %31) #7, !dbg !2365
  %tobool101 = icmp eq i8 %call100, 0, !dbg !2365
  br i1 %tobool101, label %if.then102, label %if.else106, !dbg !2367

if.then102:                                       ; preds = %if.end99
  tail call fastcc void @ei_next(%struct.edge_iterator* %arrayidx18) #7, !dbg !2368
  br label %if.end108, !dbg !2368

if.else106:                                       ; preds = %if.end99
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2281, metadata !DIExpression()), !dbg !2290
  br label %if.end108

if.end108:                                        ; preds = %if.then102, %if.else106, %if.then43, %if.else
  %sp.3 = phi i32 [ %inc44, %if.then43 ], [ %sp.0, %if.else ], [ %sub, %if.else106 ], [ %sp.0, %if.then102 ], !dbg !2369
  %prenum.1 = phi i32 [ %inc33, %if.then43 ], [ %inc33, %if.else ], [ %prenum.0, %if.else106 ], [ %prenum.0, %if.then102 ], !dbg !2290
  %postnum.3 = phi i32 [ %postnum.0, %if.then43 ], [ %inc50, %if.else ], [ %postnum.2, %if.else106 ], [ %postnum.2, %if.then102 ], !dbg !2290
  %found.2 = phi i8 [ %found.0, %if.then43 ], [ %found.0, %if.else ], [ %found.1, %if.else106 ], [ %found.1, %if.then102 ], !dbg !2290
  call void @llvm.dbg.value(metadata i8 %found.2, metadata !2285, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 %postnum.3, metadata !2283, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 %prenum.1, metadata !2282, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 %sp.3, metadata !2281, metadata !DIExpression()), !dbg !2290
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %23) #8, !dbg !2370
  br label %while.cond, !dbg !2304, !llvm.loop !2371

while.end:                                        ; preds = %while.cond
  %found.0.lcssa = phi i8 [ %found.0, %while.cond ], !dbg !2290
  call void @llvm.dbg.value(metadata i8 %found.0.lcssa, metadata !2285, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 %found.0.lcssa, metadata !2285, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 %found.0.lcssa, metadata !2285, metadata !DIExpression()), !dbg !2290
  tail call void @free(i8* %call) #6, !dbg !2372
  tail call void @free(i8* %call5) #6, !dbg !2373
  tail call void @free(i8* %call9) #6, !dbg !2374
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call13, i64 0, i32 0, !dbg !2375
  %59 = load i8*, i8** %popcount, align 8, !dbg !2375
  tail call void @free(i8* %59) #6, !dbg !2375
  %60 = bitcast %struct.simple_bitmap_def* %call13 to i8*, !dbg !2375
  tail call void @free(i8* %60) #6, !dbg !2375
  ret i8 %found.0.lcssa, !dbg !2376
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #1

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2377 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !2382
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2382
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2382

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !2382
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2382
  br label %cond.end, !dbg !2382

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2382
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !2382
  ret %struct.edge_def* %call2, !dbg !2383
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !2384 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !2388, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !2389, metadata !DIExpression()), !dbg !2393
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !2394
  %0 = load i8*, i8** %popcount, align 8, !dbg !2394
  %tobool = icmp eq i8* %0, null, !dbg !2395
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !2396

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !2397
  %.pre2 = zext i32 %.pre to i64, !dbg !2398
  %.pre3 = shl i64 1, %.pre2, !dbg !2398
  %.pre4 = lshr i32 %bitno, 6, !dbg !2399
  %.pre5 = zext i32 %.pre4 to i64, !dbg !2400
  br label %if.end7, !dbg !2396

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !2401
  %idxprom = zext i32 %div to i64, !dbg !2401
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !2401
  %1 = load i64, i64* %arrayidx, align 8, !dbg !2401
  %rem = and i32 %bitno, 63, !dbg !2401
  %sh_prom = zext i32 %rem to i64, !dbg !2401
  %2 = shl i64 1, %sh_prom, !dbg !2402
  %3 = and i64 %1, %2, !dbg !2402
  %tobool1 = icmp eq i64 %3, 0, !dbg !2402
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !2404

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !2405
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !2406
  %inc = add i8 %4, 1, !dbg !2406
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !2406
  br label %if.end7, !dbg !2405

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !2400
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !2398
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !2400
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !2407
  %or = or i64 %5, %shl.pre-phi, !dbg !2407
  store i64 %or, i64* %arrayidx13, align 8, !dbg !2407
  ret void, !dbg !2408
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !2409 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2415, metadata !DIExpression()), !dbg !2416
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !2417
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2417

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !2417
  %0 = load i32, i32* %num, align 8, !dbg !2417
  br label %cond.end, !dbg !2417

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2417
  ret i32 %cond, !dbg !2417
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_one_before_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2418 {
entry:
  %add = add i32 %i.coerce0, 1, !dbg !2423
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !2424
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2424
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2424

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !2424
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2424
  br label %cond.end, !dbg !2424

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2424
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2424
  %cmp = icmp eq i32 %add, %call2, !dbg !2425
  %conv3 = zext i1 %cmp to i8, !dbg !2426
  ret i8 %conv3, !dbg !2427
}

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @set_edge_can_fallthru_flag() local_unnamed_addr #4 !dbg !2428 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2438
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2438
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2438
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2438
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2438
  %3 = bitcast %struct.edge_def** %e to i8*, !dbg !2439
  %4 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2439
  %5 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2440
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2440
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2440
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2442
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2442
  br label %for.cond, !dbg !2438

for.cond:                                         ; preds = %cleanup, %entry
  %10 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre1, %cleanup ], !dbg !2444
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %cleanup ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2445
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2445
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2432, metadata !DIExpression()), !dbg !2446
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 1, !dbg !2444
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2444
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %11, !dbg !2444
  br i1 %cmp, label %for.end67, label %for.body, !dbg !2438

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2447
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #8, !dbg !2448
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8, !dbg !2449
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !2449
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2449
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !2449
  store i32 %12, i32* %6, align 8, !dbg !2449
  %13 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !2449
  store %struct.VEC_edge_gc** %13, %struct.VEC_edge_gc*** %7, align 8, !dbg !2449
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !2449
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8, !dbg !2449
  br label %for.cond3, !dbg !2449

for.cond3:                                        ; preds = %for.inc, %for.body
  %14 = load i32, i32* %8, align 8, !dbg !2450
  %15 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !2450
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2433, metadata !DIExpression(DW_OP_deref)), !dbg !2439
  %call4 = call fastcc zeroext i8 @ei_cond(i32 %14, %struct.VEC_edge_gc** %15, %struct.edge_def** nonnull %e) #7, !dbg !2450
  %tobool = icmp eq i8 %call4, 0, !dbg !2449
  br i1 %tobool, label %for.end, label %for.body5, !dbg !2449

for.body5:                                        ; preds = %for.cond3
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2451
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !2433, metadata !DIExpression()), !dbg !2439
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 7, !dbg !2453
  %17 = load i32, i32* %flags, align 8, !dbg !2454
  %and = and i32 %17, -65, !dbg !2454
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !2433, metadata !DIExpression()), !dbg !2439
  %and7 = and i32 %17, 1, !dbg !2455
  %tobool8 = icmp eq i32 %and7, 0, !dbg !2455
  br i1 %tobool8, label %for.inc, label %if.then, !dbg !2457

if.then:                                          ; preds = %for.body5
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !2433, metadata !DIExpression()), !dbg !2439
  %or = or i32 %17, 64, !dbg !2458
  br label %for.inc, !dbg !2459

for.inc:                                          ; preds = %for.body5, %if.then
  %storemerge = phi i32 [ %or, %if.then ], [ %and, %for.body5 ], !dbg !2460
  store i32 %storemerge, i32* %flags, align 8, !dbg !2460
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2437, metadata !DIExpression(DW_OP_deref)), !dbg !2439
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2450
  br label %for.cond3, !dbg !2450, !llvm.loop !2461

for.end:                                          ; preds = %for.cond3
  %18 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2463
  %tobool11 = icmp eq %struct.VEC_edge_gc* %18, null, !dbg !2463
  br i1 %tobool11, label %cond.end, label %cond.true, !dbg !2463

cond.true:                                        ; preds = %for.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %18, i64 0, i32 0, !dbg !2463
  br label %cond.end, !dbg !2463

cond.end:                                         ; preds = %for.end, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %for.end ], !dbg !2463
  %call13 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2463
  %cmp14 = icmp eq i32 %call13, 2, !dbg !2465
  br i1 %cmp14, label %if.end16, label %cleanup, !dbg !2466

if.end16:                                         ; preds = %cond.end
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2467
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2467
  %19 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2467
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %19, i64 0, i32 1, !dbg !2467
  %20 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2467
  %call17 = call i32 @any_condjump_p(%struct.rtx_def* %20) #6, !dbg !2469
  %tobool18 = icmp eq i32 %call17, 0, !dbg !2469
  br i1 %tobool18, label %cleanup, label %if.end20, !dbg !2470

if.end20:                                         ; preds = %if.end16
  %21 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2471
  %end_23 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %21, i64 0, i32 1, !dbg !2471
  %22 = load %struct.rtx_def*, %struct.rtx_def** %end_23, align 8, !dbg !2471
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i64 0, i32 1, !dbg !2473
  %arrayidx = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 1, !dbg !2473
  %rt_rtx = bitcast %struct.object_block** %arrayidx to %struct.rtx_def**, !dbg !2473
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2473
  %call27 = call i32 @invert_jump(%struct.rtx_def* %22, %struct.rtx_def* %23, i32 0) #6, !dbg !2474
  %tobool28 = icmp eq i32 %call27, 0, !dbg !2474
  br i1 %tobool28, label %cleanup, label %if.end30, !dbg !2475

if.end30:                                         ; preds = %if.end20
  %24 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2476
  %end_33 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %24, i64 0, i32 1, !dbg !2476
  %25 = load %struct.rtx_def*, %struct.rtx_def** %end_33, align 8, !dbg !2476
  %u37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i64 0, i32 1, !dbg !2477
  %arrayidx39 = getelementptr inbounds %union.u, %union.u* %u37, i64 1, i32 0, i32 1, !dbg !2477
  %rt_rtx40 = bitcast %struct.object_block** %arrayidx39 to %struct.rtx_def**, !dbg !2477
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx40, align 8, !dbg !2477
  %call41 = call i32 @invert_jump(%struct.rtx_def* %25, %struct.rtx_def* %26, i32 0) #6, !dbg !2478
  %27 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2479
  %tobool43 = icmp eq %struct.VEC_edge_gc* %27, null, !dbg !2479
  br i1 %tobool43, label %cond.end48, label %cond.true44, !dbg !2479

cond.true44:                                      ; preds = %if.end30
  %base46 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %27, i64 0, i32 0, !dbg !2479
  br label %cond.end48, !dbg !2479

cond.end48:                                       ; preds = %if.end30, %cond.true44
  %cond49 = phi %struct.VEC_edge_base* [ %base46, %cond.true44 ], [ null, %if.end30 ], !dbg !2479
  %call50 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond49, i32 0) #7, !dbg !2479
  %flags51 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call50, i64 0, i32 7, !dbg !2480
  %28 = load i32, i32* %flags51, align 8, !dbg !2481
  %or52 = or i32 %28, 64, !dbg !2481
  store i32 %or52, i32* %flags51, align 8, !dbg !2481
  %29 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2482
  %tobool54 = icmp eq %struct.VEC_edge_gc* %29, null, !dbg !2482
  br i1 %tobool54, label %cond.end59, label %cond.true55, !dbg !2482

cond.true55:                                      ; preds = %cond.end48
  %base57 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %29, i64 0, i32 0, !dbg !2482
  br label %cond.end59, !dbg !2482

cond.end59:                                       ; preds = %cond.end48, %cond.true55
  %cond60 = phi %struct.VEC_edge_base* [ %base57, %cond.true55 ], [ null, %cond.end48 ], !dbg !2482
  %call61 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond60, i32 1) #7, !dbg !2482
  %flags62 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call61, i64 0, i32 7, !dbg !2483
  %30 = load i32, i32* %flags62, align 8, !dbg !2484
  %or63 = or i32 %30, 64, !dbg !2484
  store i32 %or63, i32* %flags62, align 8, !dbg !2484
  br label %cleanup, !dbg !2485

cleanup:                                          ; preds = %if.end20, %if.end16, %cond.end, %cond.end59
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #8, !dbg !2485
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2485
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2444
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2486
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2444
  br label %for.cond, !dbg !2444, !llvm.loop !2487

for.end67:                                        ; preds = %for.cond
  ret void, !dbg !2489
}

declare dso_local i32 @any_condjump_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @invert_jump(%struct.rtx_def*, %struct.rtx_def*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2490 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2494, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2495, metadata !DIExpression()), !dbg !2496
  br label %land.end, !dbg !2497

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2497
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2497
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2497
  ret %struct.edge_def* %0, !dbg !2497
}

; Function Attrs: nounwind uwtable
define dso_local void @find_unreachable_blocks() local_unnamed_addr #4 !dbg !2498 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp21 = alloca %struct.edge_iterator, align 8
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2511
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2511
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2512
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2512
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2513
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2513
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2513
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 3, !dbg !2513
  %4 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2513
  %conv = sext i32 %4 to i64, !dbg !2513
  %mul = shl nsw i64 %conv, 3, !dbg !2513
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2513
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %11, metadata !2503, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %11, metadata !2502, metadata !DIExpression()), !dbg !2514
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2515
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !2515
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !2515
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 0, !dbg !2515
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2515
  br label %for.cond, !dbg !2515

for.cond:                                         ; preds = %for.body, %entry
  %8 = phi %struct.control_flow_graph* [ %6, %entry ], [ %.pre, %for.body ], !dbg !2517
  %.pn = phi %struct.basic_block_def* [ %7, %entry ], [ %bb.0, %for.body ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2519
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2519
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2504, metadata !DIExpression()), !dbg !2514
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 1, !dbg !2517
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2517
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %9, !dbg !2517
  br i1 %cmp, label %for.end, label %for.body, !dbg !2515

for.body:                                         ; preds = %for.cond
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 13, !dbg !2520
  %10 = load i32, i32* %flags, align 8, !dbg !2521
  %and = and i32 %10, -3, !dbg !2521
  store i32 %and, i32* %flags, align 8, !dbg !2521
  %.pre = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !2517
  br label %for.cond, !dbg !2517, !llvm.loop !2522

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct.control_flow_graph* [ %8, %for.cond ], !dbg !2517
  %11 = bitcast i8* %call to %struct.basic_block_def**, !dbg !2513
  %12 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2524
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #8, !dbg !2524
  %x_entry_block_ptr9 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa, i64 0, i32 0, !dbg !2524
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr9, align 8, !dbg !2524
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 1, !dbg !2524
  %call10 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2524
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2524
  %15 = extractvalue { i32, %struct.VEC_edge_gc** } %call10, 0, !dbg !2524
  store i32 %15, i32* %14, align 8, !dbg !2524
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2524
  %17 = extractvalue { i32, %struct.VEC_edge_gc** } %call10, 1, !dbg !2524
  store %struct.VEC_edge_gc** %17, %struct.VEC_edge_gc*** %16, align 8, !dbg !2524
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %12, i64 16, i1 false), !dbg !2524
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #8, !dbg !2524
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2526
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2526
  br label %for.cond11, !dbg !2524

for.cond11:                                       ; preds = %for.body13, %for.end
  %tos.0 = phi %struct.basic_block_def** [ %11, %for.end ], [ %incdec.ptr, %for.body13 ], !dbg !2514
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.0, metadata !2502, metadata !DIExpression()), !dbg !2514
  %20 = load i32, i32* %18, align 8, !dbg !2528
  %21 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %19, align 8, !dbg !2528
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2500, metadata !DIExpression(DW_OP_deref)), !dbg !2514
  %call12 = call fastcc zeroext i8 @ei_cond(i32 %20, %struct.VEC_edge_gc** %21, %struct.edge_def** nonnull %e) #7, !dbg !2528
  %tobool = icmp eq i8 %call12, 0, !dbg !2524
  br i1 %tobool, label %while.cond.preheader, label %for.body13, !dbg !2524

while.cond.preheader:                             ; preds = %for.cond11
  %tos.0.lcssa = phi %struct.basic_block_def** [ %tos.0, %for.cond11 ], !dbg !2514
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.0.lcssa, metadata !2502, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.0.lcssa, metadata !2502, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.0.lcssa, metadata !2502, metadata !DIExpression()), !dbg !2514
  %22 = bitcast %struct.edge_iterator* %tmp21 to i8*, !dbg !2529
  %23 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp21, i64 0, i32 0, !dbg !2529
  %24 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp21, i64 0, i32 1, !dbg !2529
  br label %while.cond, !dbg !2530

for.body13:                                       ; preds = %for.cond11
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2531
  call void @llvm.dbg.value(metadata %struct.edge_def* %25, metadata !2500, metadata !DIExpression()), !dbg !2514
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i64 0, i32 1, !dbg !2533
  %26 = bitcast %struct.basic_block_def** %dest to i64*, !dbg !2533
  %27 = load i64, i64* %26, align 8, !dbg !2533
  %incdec.ptr = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %tos.0, i64 1, !dbg !2534
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr, metadata !2502, metadata !DIExpression()), !dbg !2514
  %28 = bitcast %struct.basic_block_def** %tos.0 to i64*, !dbg !2535
  store i64 %27, i64* %28, align 8, !dbg !2535
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2536
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !2500, metadata !DIExpression()), !dbg !2514
  %dest14 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 1, !dbg !2537
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %dest14, align 8, !dbg !2537
  %flags15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i64 0, i32 13, !dbg !2538
  %31 = load i32, i32* %flags15, align 8, !dbg !2539
  %or = or i32 %31, 2, !dbg !2539
  store i32 %or, i32* %flags15, align 8, !dbg !2539
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2501, metadata !DIExpression(DW_OP_deref)), !dbg !2514
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2528
  br label %for.cond11, !dbg !2528, !llvm.loop !2540

while.cond.loopexit:                              ; preds = %for.cond24
  %tos.2.lcssa = phi %struct.basic_block_def** [ %tos.2, %for.cond24 ], !dbg !2542
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.2.lcssa, metadata !2502, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.2.lcssa, metadata !2502, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.2.lcssa, metadata !2502, metadata !DIExpression()), !dbg !2514
  br label %while.cond, !dbg !2530

while.cond:                                       ; preds = %while.cond.preheader, %while.cond.loopexit
  %tos.1 = phi %struct.basic_block_def** [ %tos.2.lcssa, %while.cond.loopexit ], [ %tos.0.lcssa, %while.cond.preheader ], !dbg !2514
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.1, metadata !2502, metadata !DIExpression()), !dbg !2514
  %cmp18 = icmp eq %struct.basic_block_def** %tos.1, %11, !dbg !2543
  br i1 %cmp18, label %while.end, label %while.body, !dbg !2530

while.body:                                       ; preds = %while.cond
  %incdec.ptr20 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %tos.1, i64 -1, !dbg !2542
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr20, metadata !2502, metadata !DIExpression()), !dbg !2514
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %incdec.ptr20, align 8, !dbg !2544
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %32, metadata !2505, metadata !DIExpression()), !dbg !2545
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #8, !dbg !2546
  %succs22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i64 0, i32 1, !dbg !2546
  %call23 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs22) #7, !dbg !2546
  %33 = extractvalue { i32, %struct.VEC_edge_gc** } %call23, 0, !dbg !2546
  store i32 %33, i32* %23, align 8, !dbg !2546
  %34 = extractvalue { i32, %struct.VEC_edge_gc** } %call23, 1, !dbg !2546
  store %struct.VEC_edge_gc** %34, %struct.VEC_edge_gc*** %24, align 8, !dbg !2546
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %22, i64 16, i1 false), !dbg !2546
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #8, !dbg !2546
  br label %for.cond24, !dbg !2546

for.cond24:                                       ; preds = %for.inc36, %while.body
  %tos.2 = phi %struct.basic_block_def** [ %incdec.ptr20, %while.body ], [ %tos.3, %for.inc36 ], !dbg !2542
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.2, metadata !2502, metadata !DIExpression()), !dbg !2514
  %35 = load i32, i32* %18, align 8, !dbg !2547
  %36 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %19, align 8, !dbg !2547
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2500, metadata !DIExpression(DW_OP_deref)), !dbg !2514
  %call25 = call fastcc zeroext i8 @ei_cond(i32 %35, %struct.VEC_edge_gc** %36, %struct.edge_def** nonnull %e) #7, !dbg !2547
  %tobool26 = icmp eq i8 %call25, 0, !dbg !2546
  br i1 %tobool26, label %while.cond.loopexit, label %for.body27, !dbg !2546, !llvm.loop !2548

for.body27:                                       ; preds = %for.cond24
  %37 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2550
  call void @llvm.dbg.value(metadata %struct.edge_def* %37, metadata !2500, metadata !DIExpression()), !dbg !2514
  %dest29 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %37, i64 0, i32 1, !dbg !2551
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %dest29, align 8, !dbg !2551
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %38, metadata !2507, metadata !DIExpression()), !dbg !2552
  %flags30 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %38, i64 0, i32 13, !dbg !2553
  %39 = load i32, i32* %flags30, align 8, !dbg !2553
  %and31 = and i32 %39, 2, !dbg !2555
  %tobool32 = icmp eq i32 %and31, 0, !dbg !2555
  br i1 %tobool32, label %if.then, label %for.inc36, !dbg !2556

if.then:                                          ; preds = %for.body27
  %incdec.ptr33 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %tos.2, i64 1, !dbg !2557
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr33, metadata !2502, metadata !DIExpression()), !dbg !2514
  store %struct.basic_block_def* %38, %struct.basic_block_def** %tos.2, align 8, !dbg !2559
  %40 = load i32, i32* %flags30, align 8, !dbg !2560
  %or35 = or i32 %40, 2, !dbg !2560
  store i32 %or35, i32* %flags30, align 8, !dbg !2560
  br label %for.inc36, !dbg !2561

for.inc36:                                        ; preds = %for.body27, %if.then
  %tos.3 = phi %struct.basic_block_def** [ %tos.2, %for.body27 ], [ %incdec.ptr33, %if.then ], !dbg !2545
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.3, metadata !2502, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2501, metadata !DIExpression(DW_OP_deref)), !dbg !2514
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2547
  br label %for.cond24, !dbg !2547, !llvm.loop !2562

while.end:                                        ; preds = %while.cond
  call void @free(i8* %call) #6, !dbg !2564
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2565
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2565
  ret void, !dbg !2565
}

; Function Attrs: nounwind uwtable
define dso_local %struct.edge_list* @create_edge_list() local_unnamed_addr #4 !dbg !2566 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2576
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2576
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2577
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2577
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2578
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2578
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2578
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 3, !dbg !2578
  %4 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2578
  call void @llvm.dbg.value(metadata i32 %4, metadata !2573, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 0, metadata !2572, metadata !DIExpression()), !dbg !2579
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !2580
  br label %for.cond, !dbg !2580

for.cond:                                         ; preds = %cond.end, %entry
  %5 = phi %struct.control_flow_graph* [ %3, %entry ], [ %.pre1, %cond.end ], !dbg !2582
  %num_edges.0 = phi i32 [ 0, %entry ], [ %add, %cond.end ], !dbg !2579
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %entry ], [ %next_bb, %cond.end ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2584
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2574, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 %num_edges.0, metadata !2572, metadata !DIExpression()), !dbg !2579
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !2582
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2582
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %6, !dbg !2582
  br i1 %cmp, label %for.end, label %for.body, !dbg !2580

for.body:                                         ; preds = %for.cond
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !2585
  %7 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2585
  %tobool = icmp eq %struct.VEC_edge_gc* %7, null, !dbg !2585
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2585

cond.true:                                        ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %7, i64 0, i32 0, !dbg !2585
  br label %cond.end, !dbg !2585

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %for.body ], !dbg !2585
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2585
  %add = add i32 %num_edges.0, %call, !dbg !2587
  call void @llvm.dbg.value(metadata i32 %add, metadata !2572, metadata !DIExpression()), !dbg !2579
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !2582
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2582
  %cfg4.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2588
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg4.phi.trans.insert, align 8, !dbg !2582
  br label %for.cond, !dbg !2582, !llvm.loop !2589

for.end:                                          ; preds = %for.cond
  %num_edges.0.lcssa = phi i32 [ %num_edges.0, %for.cond ], !dbg !2579
  call void @llvm.dbg.value(metadata i32 %num_edges.0.lcssa, metadata !2572, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 %num_edges.0.lcssa, metadata !2572, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 %num_edges.0.lcssa, metadata !2572, metadata !DIExpression()), !dbg !2579
  %call6 = tail call i8* @xmalloc(i64 16) #6, !dbg !2591
  call void @llvm.dbg.value(metadata %struct.edge_list* %29, metadata !2570, metadata !DIExpression()), !dbg !2579
  %num_blocks = bitcast i8* %call6 to i32*, !dbg !2592
  store i32 %4, i32* %num_blocks, align 8, !dbg !2593
  %num_edges7 = getelementptr inbounds i8, i8* %call6, i64 4, !dbg !2594
  %8 = bitcast i8* %num_edges7 to i32*, !dbg !2594
  store i32 %num_edges.0.lcssa, i32* %8, align 4, !dbg !2595
  %conv = sext i32 %num_edges.0.lcssa to i64, !dbg !2596
  %mul = shl nsw i64 %conv, 3, !dbg !2596
  %call8 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2596
  %index_to_edge = getelementptr inbounds i8, i8* %call6, i64 8, !dbg !2597
  %9 = bitcast i8* %index_to_edge to i8**, !dbg !2598
  store i8* %call8, i8** %9, align 8, !dbg !2598
  call void @llvm.dbg.value(metadata i32 0, metadata !2572, metadata !DIExpression()), !dbg !2579
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2599
  %cfg10 = getelementptr inbounds %struct.function, %struct.function* %10, i64 0, i32 1, !dbg !2599
  %11 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg10, align 8, !dbg !2599
  %x_entry_block_ptr11 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 0, !dbg !2599
  %12 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2601
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2601
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2601
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2604
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2604
  %17 = bitcast %struct.edge_def** %e to i64*, !dbg !2604
  %18 = bitcast i8* %index_to_edge to %struct.edge_def***, !dbg !2604
  br label %for.cond12, !dbg !2599

for.cond12:                                       ; preds = %for.inc28, %for.end
  %19 = phi %struct.control_flow_graph* [ %11, %for.end ], [ %.pre3, %for.inc28 ], !dbg !2606
  %num_edges.1 = phi i64 [ 0, %for.end ], [ %indvars.iv.lcssa, %for.inc28 ], !dbg !2607
  %bb.1.in = phi %struct.basic_block_def** [ %x_entry_block_ptr11, %for.end ], [ %next_bb29, %for.inc28 ]
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !2608
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !2574, metadata !DIExpression()), !dbg !2579
  %x_exit_block_ptr15 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %19, i64 0, i32 1, !dbg !2606
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr15, align 8, !dbg !2606
  %cmp16 = icmp eq %struct.basic_block_def* %bb.1, %20, !dbg !2606
  br i1 %cmp16, label %for.end30, label %for.body18, !dbg !2599

for.body18:                                       ; preds = %for.cond12
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #8, !dbg !2609
  %succs19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 1, !dbg !2609
  %call20 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs19) #7, !dbg !2609
  %21 = extractvalue { i32, %struct.VEC_edge_gc** } %call20, 0, !dbg !2609
  store i32 %21, i32* %13, align 8, !dbg !2609
  %22 = extractvalue { i32, %struct.VEC_edge_gc** } %call20, 1, !dbg !2609
  store %struct.VEC_edge_gc** %22, %struct.VEC_edge_gc*** %14, align 8, !dbg !2609
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %12, i64 16, i1 false), !dbg !2609
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #8, !dbg !2609
  %sext = shl i64 %num_edges.1, 32, !dbg !2609
  %23 = ashr exact i64 %sext, 32, !dbg !2609
  br label %for.cond21, !dbg !2609

for.cond21:                                       ; preds = %for.body24, %for.body18
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body24 ], [ %23, %for.body18 ], !dbg !2579
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2572, metadata !DIExpression()), !dbg !2579
  %24 = load i32, i32* %15, align 8, !dbg !2610
  %25 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !2610
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2571, metadata !DIExpression(DW_OP_deref)), !dbg !2579
  %call22 = call fastcc zeroext i8 @ei_cond(i32 %24, %struct.VEC_edge_gc** %25, %struct.edge_def** nonnull %e) #7, !dbg !2610
  %tobool23 = icmp eq i8 %call22, 0, !dbg !2609
  br i1 %tobool23, label %for.inc28, label %for.body24, !dbg !2609

for.body24:                                       ; preds = %for.cond21
  %26 = load i64, i64* %17, align 8, !dbg !2611
  %27 = load %struct.edge_def**, %struct.edge_def*** %18, align 8, !dbg !2612
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2613
  call void @llvm.dbg.value(metadata i32 undef, metadata !2572, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2579
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %27, i64 %indvars.iv, !dbg !2614
  %28 = bitcast %struct.edge_def** %arrayidx to i64*, !dbg !2615
  store i64 %26, i64* %28, align 8, !dbg !2615
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2575, metadata !DIExpression(DW_OP_deref)), !dbg !2579
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2610
  br label %for.cond21, !dbg !2610, !llvm.loop !2616

for.inc28:                                        ; preds = %for.cond21
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.cond21 ], !dbg !2579
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !2572, metadata !DIExpression()), !dbg !2579
  %next_bb29 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 6, !dbg !2606
  %.pre2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2606
  %cfg14.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre2, i64 0, i32 1, !dbg !2618
  %.pre3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg14.phi.trans.insert, align 8, !dbg !2606
  br label %for.cond12, !dbg !2606, !llvm.loop !2619

for.end30:                                        ; preds = %for.cond12
  %29 = bitcast i8* %call6 to %struct.edge_list*, !dbg !2591
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2621
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2621
  ret %struct.edge_list* %29, !dbg !2622
}

; Function Attrs: nounwind uwtable
define dso_local void @free_edge_list(%struct.edge_list* %elist) local_unnamed_addr #4 !dbg !2623 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_list* %elist, metadata !2627, metadata !DIExpression()), !dbg !2628
  %tobool = icmp eq %struct.edge_list* %elist, null, !dbg !2629
  br i1 %tobool, label %if.end, label %if.then, !dbg !2631

if.then:                                          ; preds = %entry
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %elist, i64 0, i32 2, !dbg !2632
  %0 = bitcast %struct.edge_def*** %index_to_edge to i8**, !dbg !2632
  %1 = load i8*, i8** %0, align 8, !dbg !2632
  tail call void @free(i8* %1) #6, !dbg !2634
  %2 = bitcast %struct.edge_list* %elist to i8*, !dbg !2635
  tail call void @free(i8* nonnull %2) #6, !dbg !2636
  br label %if.end, !dbg !2637

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2638
}

; Function Attrs: nounwind uwtable
define dso_local void @print_edge_list(%struct._IO_FILE* %f, %struct.edge_list* %elist) local_unnamed_addr #4 !dbg !2639 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !2643, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata %struct.edge_list* %elist, metadata !2644, metadata !DIExpression()), !dbg !2646
  %num_blocks = getelementptr inbounds %struct.edge_list, %struct.edge_list* %elist, i64 0, i32 0, !dbg !2647
  %0 = load i32, i32* %num_blocks, align 8, !dbg !2647
  %num_edges = getelementptr inbounds %struct.edge_list, %struct.edge_list* %elist, i64 0, i32 1, !dbg !2648
  %1 = load i32, i32* %num_edges, align 4, !dbg !2648
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %0, i32 %1) #6, !dbg !2649
  call void @llvm.dbg.value(metadata i32 0, metadata !2645, metadata !DIExpression()), !dbg !2646
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %elist, i64 0, i32 2, !dbg !2650
  br label %for.cond, !dbg !2655

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !2656
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2645, metadata !DIExpression()), !dbg !2646
  %2 = load i32, i32* %num_edges, align 4, !dbg !2657
  %3 = sext i32 %2 to i64, !dbg !2658
  %cmp = icmp slt i64 %indvars.iv, %3, !dbg !2658
  br i1 %cmp, label %for.body, label %for.end, !dbg !2659

for.body:                                         ; preds = %for.cond
  %4 = trunc i64 %indvars.iv to i32, !dbg !2660
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %4) #6, !dbg !2660
  %5 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !2661
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %5, i64 %indvars.iv, !dbg !2661
  %6 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2661
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i64 0, i32 0, !dbg !2661
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2661
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2662
  %cfg = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !2662
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2662
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 0, !dbg !2662
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2662
  %cmp3 = icmp eq %struct.basic_block_def* %7, %10, !dbg !2663
  br i1 %cmp3, label %if.then, label %if.else, !dbg !2664

if.then:                                          ; preds = %for.body
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2665
  br label %if.end, !dbg !2665

if.else:                                          ; preds = %for.body
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 9, !dbg !2666
  %11 = load i32, i32* %index, align 8, !dbg !2666
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %11) #6, !dbg !2667
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !2668
  %arrayidx12 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %12, i64 %indvars.iv, !dbg !2668
  %13 = load %struct.edge_def*, %struct.edge_def** %arrayidx12, align 8, !dbg !2668
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i64 0, i32 1, !dbg !2668
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2668
  %15 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2670
  %cfg14 = getelementptr inbounds %struct.function, %struct.function* %15, i64 0, i32 1, !dbg !2670
  %16 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg14, align 8, !dbg !2670
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %16, i64 0, i32 1, !dbg !2670
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2670
  %cmp15 = icmp eq %struct.basic_block_def* %14, %17, !dbg !2671
  br i1 %cmp15, label %if.then16, label %if.else18, !dbg !2672

if.then16:                                        ; preds = %if.end
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2673
  br label %for.inc, !dbg !2673

if.else18:                                        ; preds = %if.end
  %index23 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i64 0, i32 9, !dbg !2674
  %18 = load i32, i32* %index23, align 8, !dbg !2674
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %18) #6, !dbg !2675
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.else18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2676
  call void @llvm.dbg.value(metadata i32 undef, metadata !2645, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2646
  br label %for.cond, !dbg !2677, !llvm.loop !2678

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2680
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @verify_edge_list(%struct._IO_FILE* %f, %struct.edge_list* %elist) local_unnamed_addr #4 !dbg !2681 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp56 = alloca %struct.edge_iterator, align 8
  %tmp69 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !2683, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata %struct.edge_list* %elist, metadata !2684, metadata !DIExpression()), !dbg !2699
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2700
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2700
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2701
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2701
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2702
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2702
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2702
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !2702
  %4 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2704
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2704
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2704
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2708
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2708
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %elist, i64 0, i32 2, !dbg !2710
  br label %for.cond, !dbg !2702

for.cond:                                         ; preds = %for.inc38, %entry
  %9 = phi %struct.control_flow_graph* [ %3, %entry ], [ %.pre3, %for.inc38 ], !dbg !2713
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %entry ], [ %next_bb, %for.inc38 ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2714
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2689, metadata !DIExpression()), !dbg !2699
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 1, !dbg !2713
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2713
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %10, !dbg !2713
  br i1 %cmp, label %for.end39, label %for.body, !dbg !2702

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #8, !dbg !2715
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !2715
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2715
  %11 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !2715
  store i32 %11, i32* %5, align 8, !dbg !2715
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !2715
  store %struct.VEC_edge_gc** %12, %struct.VEC_edge_gc*** %6, align 8, !dbg !2715
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %4, i64 16, i1 false), !dbg !2715
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #8, !dbg !2715
  br label %for.cond3, !dbg !2715

for.cond3:                                        ; preds = %for.inc, %for.body
  %13 = load i32, i32* %7, align 8, !dbg !2716
  %14 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !2716
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2688, metadata !DIExpression(DW_OP_deref)), !dbg !2699
  %call4 = call fastcc zeroext i8 @ei_cond(i32 %13, %struct.VEC_edge_gc** %14, %struct.edge_def** nonnull %e) #7, !dbg !2716
  %tobool = icmp eq i8 %call4, 0, !dbg !2715
  br i1 %tobool, label %for.inc38, label %for.body5, !dbg !2715

for.body5:                                        ; preds = %for.cond3
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2717
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !2688, metadata !DIExpression()), !dbg !2699
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i64 0, i32 0, !dbg !2718
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2718
  %index6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i64 0, i32 9, !dbg !2719
  %17 = load i32, i32* %index6, align 8, !dbg !2719
  call void @llvm.dbg.value(metadata i32 %17, metadata !2685, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !2688, metadata !DIExpression()), !dbg !2699
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i64 0, i32 1, !dbg !2720
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2720
  %index7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i64 0, i32 9, !dbg !2721
  %19 = load i32, i32* %index7, align 8, !dbg !2721
  call void @llvm.dbg.value(metadata i32 %19, metadata !2686, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !2688, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !2688, metadata !DIExpression()), !dbg !2699
  %call10 = call i32 @find_edge_index(%struct.edge_list* %elist, %struct.basic_block_def* %16, %struct.basic_block_def* %18) #7, !dbg !2722
  call void @llvm.dbg.value(metadata i32 %call10, metadata !2687, metadata !DIExpression()), !dbg !2699
  %cmp11 = icmp eq i32 %call10, -1, !dbg !2723
  br i1 %cmp11, label %if.then, label %if.end, !dbg !2725

if.then:                                          ; preds = %for.body5
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %17, i32 %19) #6, !dbg !2726
  br label %for.inc, !dbg !2728

if.end:                                           ; preds = %for.body5
  %20 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !2729
  %idxprom = sext i32 %call10 to i64, !dbg !2729
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %20, i64 %idxprom, !dbg !2729
  %21 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2729
  %src13 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i64 0, i32 0, !dbg !2729
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %src13, align 8, !dbg !2729
  %index14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i64 0, i32 9, !dbg !2730
  %23 = load i32, i32* %index14, align 8, !dbg !2730
  %cmp15 = icmp eq i32 %23, %17, !dbg !2731
  br i1 %cmp15, label %if.end23, label %if.then16, !dbg !2732

if.then16:                                        ; preds = %if.end
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %call10, i32 %17, i32 %23) #6, !dbg !2733
  %.pre4 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !2734
  %arrayidx26.phi.trans.insert = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %.pre4, i64 %idxprom, !dbg !2736
  %.pre5 = load %struct.edge_def*, %struct.edge_def** %arrayidx26.phi.trans.insert, align 8, !dbg !2734
  br label %if.end23, !dbg !2733

if.end23:                                         ; preds = %if.end, %if.then16
  %24 = phi %struct.edge_def* [ %21, %if.end ], [ %.pre5, %if.then16 ], !dbg !2734
  %dest27 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i64 0, i32 1, !dbg !2734
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %dest27, align 8, !dbg !2734
  %index28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i64 0, i32 9, !dbg !2737
  %26 = load i32, i32* %index28, align 8, !dbg !2737
  %cmp29 = icmp eq i32 %26, %19, !dbg !2738
  br i1 %cmp29, label %for.inc, label %if.then30, !dbg !2739

if.then30:                                        ; preds = %if.end23
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %call10, i32 %19, i32 %26) #6, !dbg !2740
  br label %for.inc, !dbg !2740

for.inc:                                          ; preds = %if.end23, %if.then30, %if.then
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2692, metadata !DIExpression(DW_OP_deref)), !dbg !2699
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2716
  br label %for.cond3, !dbg !2716, !llvm.loop !2741

for.inc38:                                        ; preds = %for.cond3
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !2713
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2713
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2743
  %.pre3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2713
  br label %for.cond, !dbg !2713, !llvm.loop !2744

for.end39:                                        ; preds = %for.cond
  %.lcssa = phi %struct.control_flow_graph* [ %9, %for.cond ], !dbg !2713
  %bb.0.lcssa = phi %struct.basic_block_def* [ %bb.0, %for.cond ], !dbg !2714
  %x_entry_block_ptr42 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa, i64 0, i32 0, !dbg !2746
  %27 = bitcast %struct.edge_iterator* %tmp56 to i8*, !dbg !2747
  %28 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp56, i64 0, i32 0, !dbg !2747
  %29 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp56, i64 0, i32 1, !dbg !2747
  %30 = bitcast %struct.edge_iterator* %tmp69 to i8*, !dbg !2749
  %31 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp69, i64 0, i32 0, !dbg !2749
  %32 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp69, i64 0, i32 1, !dbg !2749
  br label %for.cond43, !dbg !2746

for.cond43:                                       ; preds = %for.inc102, %for.end39
  %33 = phi %struct.basic_block_def* [ %bb.0.lcssa, %for.end39 ], [ %.pre8, %for.inc102 ], !dbg !2751
  %34 = phi %struct.control_flow_graph* [ %.lcssa, %for.end39 ], [ %.pre7, %for.inc102 ], !dbg !2751
  %p.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr42, %for.end39 ], [ %next_bb103, %for.inc102 ]
  %p.0 = load %struct.basic_block_def*, %struct.basic_block_def** %p.0.in, align 8, !dbg !2752
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %p.0, metadata !2690, metadata !DIExpression()), !dbg !2699
  %cmp47 = icmp eq %struct.basic_block_def* %p.0, %33, !dbg !2751
  br i1 %cmp47, label %for.end104, label %for.body48, !dbg !2746

for.body48:                                       ; preds = %for.cond43
  %x_entry_block_ptr51 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %34, i64 0, i32 0, !dbg !2753
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr51, align 8, !dbg !2753
  %succs57 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %p.0, i64 0, i32 1, !dbg !2747
  %index85 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %p.0, i64 0, i32 9, !dbg !2754
  br label %for.cond53, !dbg !2753

for.cond53:                                       ; preds = %for.inc99, %for.body48
  %.pn = phi %struct.basic_block_def* [ %35, %for.body48 ], [ %s.0, %for.inc99 ]
  %s.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2756
  %s.0 = load %struct.basic_block_def*, %struct.basic_block_def** %s.0.in, align 8, !dbg !2756
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %s.0, metadata !2691, metadata !DIExpression()), !dbg !2699
  %cmp54 = icmp eq %struct.basic_block_def* %s.0, null, !dbg !2757
  br i1 %cmp54, label %for.inc102, label %for.body55, !dbg !2753

for.body55:                                       ; preds = %for.cond53
  call void @llvm.dbg.value(metadata i32 0, metadata !2693, metadata !DIExpression()), !dbg !2758
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %27) #8, !dbg !2759
  %call58 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs57) #7, !dbg !2759
  %36 = extractvalue { i32, %struct.VEC_edge_gc** } %call58, 0, !dbg !2759
  store i32 %36, i32* %28, align 8, !dbg !2759
  %37 = extractvalue { i32, %struct.VEC_edge_gc** } %call58, 1, !dbg !2759
  store %struct.VEC_edge_gc** %37, %struct.VEC_edge_gc*** %29, align 8, !dbg !2759
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %27, i64 16, i1 false), !dbg !2759
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %27) #8, !dbg !2759
  br label %for.cond59, !dbg !2759

for.cond59:                                       ; preds = %for.inc67, %for.body55
  %38 = load i32, i32* %7, align 8, !dbg !2760
  %39 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !2760
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2688, metadata !DIExpression(DW_OP_deref)), !dbg !2699
  %call60 = call fastcc zeroext i8 @ei_cond(i32 %38, %struct.VEC_edge_gc** %39, %struct.edge_def** nonnull %e) #7, !dbg !2760
  %tobool61 = icmp eq i8 %call60, 0, !dbg !2759
  br i1 %tobool61, label %for.end68, label %for.body62, !dbg !2759

for.body62:                                       ; preds = %for.cond59
  %40 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2762
  call void @llvm.dbg.value(metadata %struct.edge_def* %40, metadata !2688, metadata !DIExpression()), !dbg !2699
  %dest63 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %40, i64 0, i32 1, !dbg !2764
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %dest63, align 8, !dbg !2764
  %cmp64 = icmp eq %struct.basic_block_def* %41, %s.0, !dbg !2765
  br i1 %cmp64, label %for.end68, label %for.inc67, !dbg !2766

for.inc67:                                        ; preds = %for.body62
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2692, metadata !DIExpression(DW_OP_deref)), !dbg !2699
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2760
  br label %for.cond59, !dbg !2760, !llvm.loop !2767

for.end68:                                        ; preds = %for.cond59, %for.body62
  %found_edge.0 = phi i32 [ 0, %for.cond59 ], [ 1, %for.body62 ], !dbg !2758
  call void @llvm.dbg.value(metadata i32 %found_edge.0, metadata !2693, metadata !DIExpression()), !dbg !2758
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %30) #8, !dbg !2769
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %s.0, i64 0, i32 0, !dbg !2769
  %call70 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %preds) #7, !dbg !2769
  %42 = extractvalue { i32, %struct.VEC_edge_gc** } %call70, 0, !dbg !2769
  store i32 %42, i32* %31, align 8, !dbg !2769
  %43 = extractvalue { i32, %struct.VEC_edge_gc** } %call70, 1, !dbg !2769
  store %struct.VEC_edge_gc** %43, %struct.VEC_edge_gc*** %32, align 8, !dbg !2769
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %30, i64 16, i1 false), !dbg !2769
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #8, !dbg !2769
  br label %for.cond71, !dbg !2769

for.cond71:                                       ; preds = %for.inc79, %for.end68
  %44 = load i32, i32* %7, align 8, !dbg !2770
  %45 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !2770
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2688, metadata !DIExpression(DW_OP_deref)), !dbg !2699
  %call72 = call fastcc zeroext i8 @ei_cond(i32 %44, %struct.VEC_edge_gc** %45, %struct.edge_def** nonnull %e) #7, !dbg !2770
  %tobool73 = icmp eq i8 %call72, 0, !dbg !2769
  br i1 %tobool73, label %for.end80, label %for.body74, !dbg !2769

for.body74:                                       ; preds = %for.cond71
  %46 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2772
  call void @llvm.dbg.value(metadata %struct.edge_def* %46, metadata !2688, metadata !DIExpression()), !dbg !2699
  %src75 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %46, i64 0, i32 0, !dbg !2774
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %src75, align 8, !dbg !2774
  %cmp76 = icmp eq %struct.basic_block_def* %47, %p.0, !dbg !2775
  br i1 %cmp76, label %for.end80, label %for.inc79, !dbg !2776

for.inc79:                                        ; preds = %for.body74
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2692, metadata !DIExpression(DW_OP_deref)), !dbg !2699
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2770
  br label %for.cond71, !dbg !2770, !llvm.loop !2777

for.end80:                                        ; preds = %for.cond71, %for.body74
  %found_edge.1 = phi i32 [ %found_edge.0, %for.cond71 ], [ 1, %for.body74 ], !dbg !2758
  call void @llvm.dbg.value(metadata i32 %found_edge.1, metadata !2693, metadata !DIExpression()), !dbg !2758
  %call81 = call i32 @find_edge_index(%struct.edge_list* %elist, %struct.basic_block_def* %p.0, %struct.basic_block_def* nonnull %s.0) #7, !dbg !2779
  %cmp82 = icmp eq i32 %call81, -1, !dbg !2780
  %cmp83 = icmp ne i32 %found_edge.1, 0, !dbg !2781
  %or.cond = and i1 %cmp82, %cmp83, !dbg !2782
  br i1 %or.cond, label %if.then84, label %if.end88, !dbg !2782

if.then84:                                        ; preds = %for.end80
  %48 = load i32, i32* %index85, align 8, !dbg !2783
  %index86 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %s.0, i64 0, i32 9, !dbg !2784
  %49 = load i32, i32* %index86, align 8, !dbg !2784
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %48, i32 %49) #6, !dbg !2785
  br label %if.end88, !dbg !2785

if.end88:                                         ; preds = %if.then84, %for.end80
  %call89 = call i32 @find_edge_index(%struct.edge_list* %elist, %struct.basic_block_def* %p.0, %struct.basic_block_def* nonnull %s.0) #7, !dbg !2786
  %cmp90 = icmp ne i32 %call89, -1, !dbg !2788
  %cmp92 = icmp eq i32 %found_edge.1, 0, !dbg !2789
  %or.cond1 = and i1 %cmp90, %cmp92, !dbg !2790
  br i1 %or.cond1, label %if.then93, label %for.inc99, !dbg !2790

if.then93:                                        ; preds = %if.end88
  %50 = load i32, i32* %index85, align 8, !dbg !2791
  %index95 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %s.0, i64 0, i32 9, !dbg !2792
  %51 = load i32, i32* %index95, align 8, !dbg !2792
  %call96 = call i32 @find_edge_index(%struct.edge_list* %elist, %struct.basic_block_def* %p.0, %struct.basic_block_def* nonnull %s.0) #7, !dbg !2793
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 %50, i32 %51, i32 %call96) #6, !dbg !2794
  br label %for.inc99, !dbg !2794

for.inc99:                                        ; preds = %if.end88, %if.then93
  br label %for.cond53, !dbg !2757, !llvm.loop !2795

for.inc102:                                       ; preds = %for.cond53
  %next_bb103 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %p.0, i64 0, i32 6, !dbg !2751
  %.pre6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2751
  %cfg45.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre6, i64 0, i32 1, !dbg !2797
  %.pre7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg45.phi.trans.insert, align 8, !dbg !2751
  %x_exit_block_ptr46.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre7, i64 0, i32 1, !dbg !2797
  %.pre8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr46.phi.trans.insert, align 8, !dbg !2751
  br label %for.cond43, !dbg !2751, !llvm.loop !2798

for.end104:                                       ; preds = %for.cond43
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2800
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2800
  ret void, !dbg !2800
}

; Function Attrs: nounwind uwtable
define dso_local i32 @find_edge_index(%struct.edge_list* %edge_list, %struct.basic_block_def* %pred, %struct.basic_block_def* %succ) local_unnamed_addr #4 !dbg !2801 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_list* %edge_list, metadata !2805, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %pred, metadata !2806, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %succ, metadata !2807, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i32 0, metadata !2808, metadata !DIExpression()), !dbg !2809
  %index_to_edge2 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %edge_list, i64 0, i32 2, !dbg !2810
  %num_edges = getelementptr inbounds %struct.edge_list, %struct.edge_list* %edge_list, i64 0, i32 1, !dbg !2814
  %0 = load i32, i32* %num_edges, align 4, !dbg !2814
  %1 = sext i32 %0 to i64, !dbg !2815
  br label %for.cond, !dbg !2815

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !2816
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2808, metadata !DIExpression()), !dbg !2809
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !2817
  br i1 %cmp, label %for.body, label %cleanup, !dbg !2818

for.body:                                         ; preds = %for.cond
  %2 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge2, align 8, !dbg !2819
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %2, i64 %indvars.iv, !dbg !2819
  %3 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2819
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i64 0, i32 0, !dbg !2819
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2819
  %cmp1 = icmp eq %struct.basic_block_def* %4, %pred, !dbg !2820
  br i1 %cmp1, label %land.lhs.true, label %for.inc, !dbg !2821

land.lhs.true:                                    ; preds = %for.body
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i64 0, i32 1, !dbg !2810
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2810
  %cmp5 = icmp eq %struct.basic_block_def* %5, %succ, !dbg !2822
  %6 = trunc i64 %indvars.iv to i32, !dbg !2823
  br i1 %cmp5, label %cleanup, label %for.inc, !dbg !2823

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2824
  call void @llvm.dbg.value(metadata i32 undef, metadata !2808, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2809
  br label %for.cond, !dbg !2825, !llvm.loop !2826

cleanup:                                          ; preds = %for.cond, %land.lhs.true
  %retval.0 = phi i32 [ %6, %land.lhs.true ], [ -1, %for.cond ], !dbg !2809
  ret i32 %retval.0, !dbg !2828
}

; Function Attrs: nounwind uwtable
define dso_local %struct.edge_def* @find_edge(%struct.basic_block_def* %pred, %struct.basic_block_def* %succ) local_unnamed_addr #4 !dbg !2829 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp16 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %pred, metadata !2833, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %succ, metadata !2834, metadata !DIExpression()), !dbg !2837
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2838
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2838
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2839
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2839
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %pred, i64 0, i32 1, !dbg !2840
  %2 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2840
  %tobool = icmp eq %struct.VEC_edge_gc* %2, null, !dbg !2840
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2840

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %2, i64 0, i32 0, !dbg !2840
  br label %cond.end, !dbg !2840

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2840
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2840
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %succ, i64 0, i32 0, !dbg !2842
  %3 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2842
  %tobool2 = icmp eq %struct.VEC_edge_gc* %3, null, !dbg !2842
  br i1 %tobool2, label %cond.end7, label %cond.true3, !dbg !2842

cond.true3:                                       ; preds = %cond.end
  %base5 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %3, i64 0, i32 0, !dbg !2842
  br label %cond.end7, !dbg !2842

cond.end7:                                        ; preds = %cond.end, %cond.true3
  %cond8 = phi %struct.VEC_edge_base* [ %base5, %cond.true3 ], [ null, %cond.end ], !dbg !2842
  %call9 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond8) #7, !dbg !2842
  %cmp = icmp ugt i32 %call, %call9, !dbg !2843
  br i1 %cmp, label %if.else, label %if.then, !dbg !2844

if.then:                                          ; preds = %cond.end7
  %4 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2845
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #8, !dbg !2845
  %call11 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2845
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2845
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call11, 0, !dbg !2845
  store i32 %6, i32* %5, align 8, !dbg !2845
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2845
  %8 = extractvalue { i32, %struct.VEC_edge_gc** } %call11, 1, !dbg !2845
  store %struct.VEC_edge_gc** %8, %struct.VEC_edge_gc*** %7, align 8, !dbg !2845
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %4, i64 16, i1 false), !dbg !2845
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #8, !dbg !2845
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2848
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2848
  br label %for.cond, !dbg !2845

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, i32* %9, align 8, !dbg !2850
  %12 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %10, align 8, !dbg !2850
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2835, metadata !DIExpression(DW_OP_deref)), !dbg !2837
  %call12 = call fastcc zeroext i8 @ei_cond(i32 %11, %struct.VEC_edge_gc** %12, %struct.edge_def** nonnull %e) #7, !dbg !2850
  %tobool13 = icmp eq i8 %call12, 0, !dbg !2845
  br i1 %tobool13, label %cleanup.loopexit1, label %for.body, !dbg !2845

for.body:                                         ; preds = %for.cond
  %13 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2851
  call void @llvm.dbg.value(metadata %struct.edge_def* %13, metadata !2835, metadata !DIExpression()), !dbg !2837
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i64 0, i32 1, !dbg !2853
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2853
  %cmp14 = icmp eq %struct.basic_block_def* %14, %succ, !dbg !2854
  br i1 %cmp14, label %if.then15, label %for.inc, !dbg !2855

if.then15:                                        ; preds = %for.body
  %.lcssa3 = phi %struct.edge_def* [ %13, %for.body ], !dbg !2851
  call void @llvm.dbg.value(metadata %struct.edge_def* %.lcssa3, metadata !2835, metadata !DIExpression()), !dbg !2837
  br label %cleanup, !dbg !2856

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2836, metadata !DIExpression(DW_OP_deref)), !dbg !2837
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2850
  br label %for.cond, !dbg !2850, !llvm.loop !2857

if.else:                                          ; preds = %cond.end7
  %15 = bitcast %struct.edge_iterator* %tmp16 to i8*, !dbg !2859
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #8, !dbg !2859
  %call18 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !2859
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp16, i64 0, i32 0, !dbg !2859
  %17 = extractvalue { i32, %struct.VEC_edge_gc** } %call18, 0, !dbg !2859
  store i32 %17, i32* %16, align 8, !dbg !2859
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp16, i64 0, i32 1, !dbg !2859
  %19 = extractvalue { i32, %struct.VEC_edge_gc** } %call18, 1, !dbg !2859
  store %struct.VEC_edge_gc** %19, %struct.VEC_edge_gc*** %18, align 8, !dbg !2859
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %15, i64 16, i1 false), !dbg !2859
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #8, !dbg !2859
  %20 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2862
  %21 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2862
  br label %for.cond19, !dbg !2859

for.cond19:                                       ; preds = %for.inc26, %if.else
  %22 = load i32, i32* %20, align 8, !dbg !2864
  %23 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %21, align 8, !dbg !2864
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2835, metadata !DIExpression(DW_OP_deref)), !dbg !2837
  %call20 = call fastcc zeroext i8 @ei_cond(i32 %22, %struct.VEC_edge_gc** %23, %struct.edge_def** nonnull %e) #7, !dbg !2864
  %tobool21 = icmp eq i8 %call20, 0, !dbg !2859
  br i1 %tobool21, label %cleanup.loopexit, label %for.body22, !dbg !2859

for.body22:                                       ; preds = %for.cond19
  %24 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2865
  call void @llvm.dbg.value(metadata %struct.edge_def* %24, metadata !2835, metadata !DIExpression()), !dbg !2837
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i64 0, i32 0, !dbg !2867
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2867
  %cmp23 = icmp eq %struct.basic_block_def* %25, %pred, !dbg !2868
  br i1 %cmp23, label %if.then24, label %for.inc26, !dbg !2869

if.then24:                                        ; preds = %for.body22
  %.lcssa = phi %struct.edge_def* [ %24, %for.body22 ], !dbg !2865
  call void @llvm.dbg.value(metadata %struct.edge_def* %.lcssa, metadata !2835, metadata !DIExpression()), !dbg !2837
  br label %cleanup, !dbg !2870

for.inc26:                                        ; preds = %for.body22
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2836, metadata !DIExpression(DW_OP_deref)), !dbg !2837
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2864
  br label %for.cond19, !dbg !2864, !llvm.loop !2871

cleanup.loopexit:                                 ; preds = %for.cond19
  br label %cleanup, !dbg !2873

cleanup.loopexit1:                                ; preds = %for.cond
  br label %cleanup, !dbg !2873

cleanup:                                          ; preds = %cleanup.loopexit1, %cleanup.loopexit, %if.then24, %if.then15
  %retval.0 = phi %struct.edge_def* [ %.lcssa3, %if.then15 ], [ %.lcssa, %if.then24 ], [ null, %cleanup.loopexit ], [ null, %cleanup.loopexit1 ], !dbg !2837
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2873
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2873
  ret %struct.edge_def* %retval.0, !dbg !2873
}

; Function Attrs: nounwind uwtable
define dso_local void @flow_nodes_print(i8* %str, %struct.simple_bitmap_def* %nodes, %struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !2874 {
entry:
  %node = alloca i32, align 4
  %sbi = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.dbg.value(metadata i8* %str, metadata !2881, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %nodes, metadata !2882, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2883, metadata !DIExpression()), !dbg !2896
  %0 = bitcast i32* %node to i8*, !dbg !2897
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2897
  call void @llvm.dbg.value(metadata i32 0, metadata !2884, metadata !DIExpression()), !dbg !2896
  store i32 0, i32* %node, align 4, !dbg !2898
  %1 = bitcast %struct.sbitmap_iterator* %sbi to i8*, !dbg !2899
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2899
  %tobool = icmp eq %struct.simple_bitmap_def* %nodes, null, !dbg !2900
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2902

if.end:                                           ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %str) #6, !dbg !2903
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !2885, metadata !DIExpression(DW_OP_deref)), !dbg !2896
  call fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* nonnull %sbi, %struct.simple_bitmap_def* nonnull %nodes, i32 0) #7, !dbg !2904
  br label %for.cond, !dbg !2904

for.cond:                                         ; preds = %for.body, %if.end
  call void @llvm.dbg.value(metadata i32* %node, metadata !2884, metadata !DIExpression(DW_OP_deref)), !dbg !2896
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !2885, metadata !DIExpression(DW_OP_deref)), !dbg !2896
  %call1 = call fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* nonnull %sbi, i32* nonnull %node) #7, !dbg !2906
  %tobool2 = icmp eq i8 %call1, 0, !dbg !2904
  br i1 %tobool2, label %for.end, label %for.body, !dbg !2904

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %node, align 4, !dbg !2908
  call void @llvm.dbg.value(metadata i32 %2, metadata !2884, metadata !DIExpression()), !dbg !2896
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %2) #6, !dbg !2909
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !2885, metadata !DIExpression(DW_OP_deref)), !dbg !2896
  call fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* nonnull %sbi) #7, !dbg !2906
  br label %for.cond, !dbg !2906, !llvm.loop !2910

for.end:                                          ; preds = %for.cond
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2912
  br label %cleanup, !dbg !2913

cleanup:                                          ; preds = %entry, %for.end
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2913
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2913
  ret void, !dbg !2913
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* %i, %struct.simple_bitmap_def* %bmp, i32 %min) unnamed_addr #0 !dbg !2914 {
entry:
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %i, metadata !2919, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %bmp, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i32 0, metadata !2921, metadata !DIExpression()), !dbg !2922
  %word_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 2, !dbg !2923
  store i32 0, i32* %word_num, align 4, !dbg !2924
  %bit_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 3, !dbg !2925
  store i32 0, i32* %bit_num, align 8, !dbg !2926
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmp, i64 0, i32 2, !dbg !2927
  %0 = load i32, i32* %size, align 4, !dbg !2927
  %size1 = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 1, !dbg !2928
  store i32 %0, i32* %size1, align 8, !dbg !2929
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmp, i64 0, i32 3, i64 0, !dbg !2930
  %ptr = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 0, !dbg !2931
  store i64* %arraydecay, i64** %ptr, align 8, !dbg !2932
  %cmp = icmp eq i32 %0, 0, !dbg !2933
  br i1 %cmp, label %if.then, label %if.else, !dbg !2935

if.then:                                          ; preds = %entry
  %word = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !2936
  store i64 0, i64* %word, align 8, !dbg !2937
  br label %if.end, !dbg !2938

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %arraydecay, align 8, !dbg !2939
  %word7 = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !2940
  store i64 %1, i64* %word7, align 8, !dbg !2941
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2942
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* %i, i32* %n) unnamed_addr #0 !dbg !2943 {
entry:
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %i, metadata !2948, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i32* %n, metadata !2949, metadata !DIExpression()), !dbg !2950
  %word = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !2951
  %word_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 2, !dbg !2954
  %size = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 1, !dbg !2956
  %bit_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 3, !dbg !2954
  %ptr = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 0, !dbg !2951
  %.pre = load i64, i64* %word, align 8, !dbg !2958
  br label %for.cond, !dbg !2959

for.cond:                                         ; preds = %if.end, %entry
  %0 = phi i64 [ %4, %if.end ], [ %.pre, %entry ], !dbg !2958
  %cmp = icmp eq i64 %0, 0, !dbg !2960
  br i1 %cmp, label %for.body, label %for.cond6.preheader, !dbg !2961

for.cond6.preheader:                              ; preds = %for.cond
  %.lcssa4 = phi i64 [ %0, %for.cond ], !dbg !2958
  %.pre1 = load i32, i32* %bit_num, align 8, !dbg !2950
  br label %for.cond6, !dbg !2962

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %word_num, align 4, !dbg !2964
  %inc = add i32 %1, 1, !dbg !2964
  store i32 %inc, i32* %word_num, align 4, !dbg !2964
  %2 = load i32, i32* %size, align 8, !dbg !2965
  %cmp2 = icmp ult i32 %inc, %2, !dbg !2966
  br i1 %cmp2, label %if.end, label %return.loopexit, !dbg !2967

if.end:                                           ; preds = %for.body
  %mul = shl i32 %inc, 6, !dbg !2968
  store i32 %mul, i32* %bit_num, align 8, !dbg !2969
  %3 = load i64*, i64** %ptr, align 8, !dbg !2970
  %idxprom = zext i32 %inc to i64, !dbg !2971
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom, !dbg !2971
  %4 = load i64, i64* %arrayidx, align 8, !dbg !2971
  store i64 %4, i64* %word, align 8, !dbg !2972
  br label %for.cond, !dbg !2973, !llvm.loop !2974

for.cond6:                                        ; preds = %for.cond6.preheader, %for.body9
  %5 = phi i32 [ %.pre1, %for.cond6.preheader ], [ %inc11, %for.body9 ], !dbg !2950
  %6 = phi i64 [ %.lcssa4, %for.cond6.preheader ], [ %shr, %for.body9 ], !dbg !2976
  %and = and i64 %6, 1, !dbg !2978
  %cmp8 = icmp eq i64 %and, 0, !dbg !2979
  br i1 %cmp8, label %for.body9, label %for.end14, !dbg !2962

for.body9:                                        ; preds = %for.cond6
  %inc11 = add i32 %5, 1, !dbg !2980
  store i32 %inc11, i32* %bit_num, align 8, !dbg !2980
  %shr = lshr i64 %6, 1, !dbg !2981
  store i64 %shr, i64* %word, align 8, !dbg !2981
  br label %for.cond6, !dbg !2982, !llvm.loop !2983

for.end14:                                        ; preds = %for.cond6
  %.lcssa = phi i32 [ %5, %for.cond6 ], !dbg !2950
  store i32 %.lcssa, i32* %n, align 4, !dbg !2985
  br label %return, !dbg !2986

return.loopexit:                                  ; preds = %for.body
  br label %return, !dbg !2987

return:                                           ; preds = %return.loopexit, %for.end14
  %retval.0 = phi i8 [ 1, %for.end14 ], [ 0, %return.loopexit ], !dbg !2950
  ret i8 %retval.0, !dbg !2987
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* %i) unnamed_addr #0 !dbg !2988 {
entry:
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %i, metadata !2992, metadata !DIExpression()), !dbg !2993
  %word = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !2994
  %0 = load i64, i64* %word, align 8, !dbg !2995
  %shr = lshr i64 %0, 1, !dbg !2995
  store i64 %shr, i64* %word, align 8, !dbg !2995
  %bit_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 3, !dbg !2996
  %1 = load i32, i32* %bit_num, align 8, !dbg !2997
  %inc = add i32 %1, 1, !dbg !2997
  store i32 %inc, i32* %bit_num, align 8, !dbg !2997
  ret void, !dbg !2998
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @flow_edge_list_print(i8* %str, %struct.edge_def** %edge_list, i32 %num_edges, %struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !2999 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !3005, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata %struct.edge_def** %edge_list, metadata !3006, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i32 %num_edges, metadata !3007, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !3008, metadata !DIExpression()), !dbg !3010
  %tobool = icmp eq %struct.edge_def** %edge_list, null, !dbg !3011
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !3013

if.end:                                           ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %str) #6, !dbg !3014
  call void @llvm.dbg.value(metadata i32 0, metadata !3009, metadata !DIExpression()), !dbg !3010
  %0 = sext i32 %num_edges to i64, !dbg !3015
  br label %for.cond, !dbg !3015

for.cond:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ], !dbg !3017
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3009, metadata !DIExpression()), !dbg !3010
  %cmp = icmp slt i64 %indvars.iv, %0, !dbg !3018
  br i1 %cmp, label %for.body, label %for.end, !dbg !3020

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %edge_list, i64 %indvars.iv, !dbg !3021
  %1 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3021
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %1, i64 0, i32 0, !dbg !3022
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3022
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 9, !dbg !3023
  %3 = load i32, i32* %index, align 8, !dbg !3023
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %1, i64 0, i32 1, !dbg !3024
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3024
  %index3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 9, !dbg !3025
  %5 = load i32, i32* %index3, align 8, !dbg !3025
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %3, i32 %5) #6, !dbg !3026
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3027
  call void @llvm.dbg.value(metadata i32 undef, metadata !3009, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3010
  br label %for.cond, !dbg !3028, !llvm.loop !3029

for.end:                                          ; preds = %for.cond
  %call5 = tail call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !3031
  br label %cleanup.cont, !dbg !3032

cleanup.cont:                                     ; preds = %entry, %for.end
  ret void, !dbg !3032
}

; Function Attrs: nounwind uwtable
define dso_local void @remove_fake_edges() local_unnamed_addr #4 !dbg !3033 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3036
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3036
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3036
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !3036
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3036
  br label %for.cond, !dbg !3036

for.cond:                                         ; preds = %for.body, %entry
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.body ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3038
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3038
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3035, metadata !DIExpression()), !dbg !3039
  %cmp = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !3040
  br i1 %cmp, label %for.end, label %for.body, !dbg !3036

for.body:                                         ; preds = %for.cond
  tail call fastcc void @remove_fake_predecessors(%struct.basic_block_def* nonnull %bb.0) #7, !dbg !3042
  br label %for.cond, !dbg !3040, !llvm.loop !3043

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3045
}

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_fake_predecessors(%struct.basic_block_def* %bb) unnamed_addr #4 !dbg !3046 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3050, metadata !DIExpression()), !dbg !3053
  %0 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3054
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3054
  %1 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3055
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3055
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3055
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3055
  %2 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3055
  %3 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3055
  store i32 %3, i32* %2, align 8, !dbg !3055
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3055
  %5 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3055
  store %struct.VEC_edge_gc** %5, %struct.VEC_edge_gc*** %4, align 8, !dbg !3055
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 16, i1 false), !dbg !3055
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3055
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3057
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3057
  br label %for.cond, !dbg !3059

for.cond:                                         ; preds = %if.end, %entry
  %8 = load i32, i32* %6, align 8, !dbg !3060
  %9 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %7, align 8, !dbg !3060
  %call1 = call fastcc %struct.edge_def* @ei_safe_edge(i32 %8, %struct.VEC_edge_gc** %9) #7, !dbg !3060
  call void @llvm.dbg.value(metadata %struct.edge_def* %call1, metadata !3051, metadata !DIExpression()), !dbg !3053
  %tobool = icmp eq %struct.edge_def* %call1, null, !dbg !3061
  br i1 %tobool, label %for.end, label %for.body, !dbg !3061

for.body:                                         ; preds = %for.cond
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call1, i64 0, i32 7, !dbg !3062
  %10 = load i32, i32* %flags, align 8, !dbg !3062
  %and = and i32 %10, 16, !dbg !3065
  %cmp = icmp eq i32 %and, 0, !dbg !3066
  br i1 %cmp, label %if.else, label %if.then, !dbg !3067

if.then:                                          ; preds = %for.body
  call void @remove_edge(%struct.edge_def* nonnull %call1) #6, !dbg !3068
  br label %if.end, !dbg !3068

if.else:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3052, metadata !DIExpression(DW_OP_deref)), !dbg !3053
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3069
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.cond, !dbg !3070, !llvm.loop !3071

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3073
  ret void, !dbg !3073
}

; Function Attrs: nounwind uwtable
define dso_local void @remove_fake_exit_edges() local_unnamed_addr #4 !dbg !3074 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3075
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3075
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3075
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 1, !dbg !3075
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3075
  tail call fastcc void @remove_fake_predecessors(%struct.basic_block_def* %2) #7, !dbg !3076
  ret void, !dbg !3077
}

; Function Attrs: nounwind uwtable
define dso_local void @add_noreturn_fake_exit_edges() local_unnamed_addr #4 !dbg !3078 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3081
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3081
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3081
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !3081
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3081
  br label %for.cond, !dbg !3081

for.cond:                                         ; preds = %for.inc, %entry
  %3 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre1, %for.inc ], !dbg !3083
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.inc ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3085
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3085
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3080, metadata !DIExpression()), !dbg !3086
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !3083
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3083
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %4, !dbg !3083
  br i1 %cmp, label %for.end, label %for.body, !dbg !3081

for.body:                                         ; preds = %for.cond
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !3087
  %5 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3087
  %tobool = icmp eq %struct.VEC_edge_gc* %5, null, !dbg !3087
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3087

cond.true:                                        ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %5, i64 0, i32 0, !dbg !3087
  br label %cond.end, !dbg !3087

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %for.body ], !dbg !3087
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3087
  %cmp4 = icmp eq i32 %call, 0, !dbg !3089
  br i1 %cmp4, label %if.then, label %for.inc, !dbg !3090

if.then:                                          ; preds = %cond.end
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3091
  %cfg6 = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 1, !dbg !3091
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6, align 8, !dbg !3091
  %x_exit_block_ptr7 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 1, !dbg !3091
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr7, align 8, !dbg !3091
  %call8 = tail call %struct.edge_def* @make_single_succ_edge(%struct.basic_block_def* %bb.0, %struct.basic_block_def* %8, i32 16) #6, !dbg !3092
  br label %for.inc, !dbg !3092

for.inc:                                          ; preds = %cond.end, %if.then
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3083
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3093
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !3083
  br label %for.cond, !dbg !3083, !llvm.loop !3094

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3096
}

declare dso_local %struct.edge_def* @make_single_succ_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @connect_infinite_loops_to_exit() local_unnamed_addr #4 !dbg !3097 {
entry:
  %dfs_ds = alloca %struct.depth_first_search_dsS, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3106
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3106
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3106
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 1, !dbg !3106
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3106
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %2, metadata !3099, metadata !DIExpression()), !dbg !3107
  %3 = bitcast %struct.depth_first_search_dsS* %dfs_ds to i8*, !dbg !3108
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !3108
  call void @llvm.dbg.value(metadata %struct.depth_first_search_dsS* %dfs_ds, metadata !3100, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call fastcc void @flow_dfs_compute_reverse_init(%struct.depth_first_search_dsS* nonnull %dfs_ds) #7, !dbg !3109
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3110
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !3110
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !3110
  %x_exit_block_ptr3 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !3110
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr3, align 8, !dbg !3110
  call void @llvm.dbg.value(metadata %struct.depth_first_search_dsS* %dfs_ds, metadata !3100, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call fastcc void @flow_dfs_compute_reverse_add_bb(%struct.depth_first_search_dsS* nonnull %dfs_ds, %struct.basic_block_def* %6) #7, !dbg !3111
  br label %while.cond, !dbg !3112

while.cond:                                       ; preds = %if.end, %entry
  %unvisited_block.0 = phi %struct.basic_block_def* [ %2, %entry ], [ %call, %if.end ], !dbg !3107
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %unvisited_block.0, metadata !3099, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata %struct.depth_first_search_dsS* %dfs_ds, metadata !3100, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  %call = call fastcc %struct.basic_block_def* @flow_dfs_compute_reverse_execute(%struct.depth_first_search_dsS* nonnull %dfs_ds, %struct.basic_block_def* %unvisited_block.0) #7, !dbg !3113
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3099, metadata !DIExpression()), !dbg !3107
  %tobool = icmp eq %struct.basic_block_def* %call, null, !dbg !3115
  br i1 %tobool, label %while.end, label %if.end, !dbg !3117

if.end:                                           ; preds = %while.cond
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3118
  %cfg5 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !3118
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg5, align 8, !dbg !3118
  %x_exit_block_ptr6 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 1, !dbg !3118
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr6, align 8, !dbg !3118
  %call7 = call %struct.edge_def* @make_edge(%struct.basic_block_def* nonnull %call, %struct.basic_block_def* %9, i32 16) #6, !dbg !3119
  call void @llvm.dbg.value(metadata %struct.depth_first_search_dsS* %dfs_ds, metadata !3100, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call fastcc void @flow_dfs_compute_reverse_add_bb(%struct.depth_first_search_dsS* nonnull %dfs_ds, %struct.basic_block_def* nonnull %call) #7, !dbg !3120
  br label %while.cond, !dbg !3112, !llvm.loop !3121

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.depth_first_search_dsS* %dfs_ds, metadata !3100, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call fastcc void @flow_dfs_compute_reverse_finish(%struct.depth_first_search_dsS* nonnull %dfs_ds) #7, !dbg !3123
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !3124
  ret void, !dbg !3124
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flow_dfs_compute_reverse_init(%struct.depth_first_search_dsS* %data) unnamed_addr #4 !dbg !3125 {
entry:
  call void @llvm.dbg.value(metadata %struct.depth_first_search_dsS* %data, metadata !3131, metadata !DIExpression()), !dbg !3132
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3133
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3133
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3133
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 3, !dbg !3133
  %2 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !3133
  %conv = sext i32 %2 to i64, !dbg !3133
  %mul = shl nsw i64 %conv, 3, !dbg !3133
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3133
  %3 = bitcast %struct.depth_first_search_dsS* %data to i8**, !dbg !3134
  store i8* %call, i8** %3, align 8, !dbg !3134
  %sp = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %data, i64 0, i32 1, !dbg !3135
  store i32 0, i32* %sp, align 8, !dbg !3136
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3137
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !3137
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !3137
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 5, !dbg !3137
  %6 = load i32, i32* %x_last_basic_block, align 8, !dbg !3137
  %call3 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %6) #6, !dbg !3138
  %visited_blocks = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %data, i64 0, i32 2, !dbg !3139
  store %struct.simple_bitmap_def* %call3, %struct.simple_bitmap_def** %visited_blocks, align 8, !dbg !3140
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call3) #6, !dbg !3141
  ret void, !dbg !3142
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flow_dfs_compute_reverse_add_bb(%struct.depth_first_search_dsS* %data, %struct.basic_block_def* %bb) unnamed_addr #4 !dbg !3143 {
entry:
  call void @llvm.dbg.value(metadata %struct.depth_first_search_dsS* %data, metadata !3147, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3148, metadata !DIExpression()), !dbg !3149
  %stack = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %data, i64 0, i32 0, !dbg !3150
  %0 = load %struct.basic_block_def**, %struct.basic_block_def*** %stack, align 8, !dbg !3150
  %sp = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %data, i64 0, i32 1, !dbg !3151
  %1 = load i32, i32* %sp, align 8, !dbg !3152
  %inc = add i32 %1, 1, !dbg !3152
  store i32 %inc, i32* %sp, align 8, !dbg !3152
  %idxprom = zext i32 %1 to i64, !dbg !3153
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %0, i64 %idxprom, !dbg !3153
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %arrayidx, align 8, !dbg !3154
  %visited_blocks = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %data, i64 0, i32 2, !dbg !3155
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited_blocks, align 8, !dbg !3155
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3156
  %3 = load i32, i32* %index, align 8, !dbg !3156
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %2, i32 %3) #7, !dbg !3157
  ret void, !dbg !3158
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.basic_block_def* @flow_dfs_compute_reverse_execute(%struct.depth_first_search_dsS* %data, %struct.basic_block_def* %last_unvisited) unnamed_addr #4 !dbg !3159 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.depth_first_search_dsS* %data, metadata !3163, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %last_unvisited, metadata !3164, metadata !DIExpression()), !dbg !3168
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3169
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3169
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3170
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3170
  %sp = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %data, i64 0, i32 1, !dbg !3168
  %stack = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %data, i64 0, i32 0, !dbg !3171
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3173
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3173
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3173
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3175
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3175
  %visited_blocks = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %data, i64 0, i32 2, !dbg !3177
  br label %while.cond, !dbg !3179

while.cond.loopexit:                              ; preds = %for.cond
  br label %while.cond, !dbg !3179

while.cond:                                       ; preds = %while.cond.loopexit, %entry
  %7 = load i32, i32* %sp, align 8, !dbg !3180
  %cmp = icmp eq i32 %7, 0, !dbg !3181
  br i1 %cmp, label %for.cond9.preheader, label %while.body, !dbg !3179

for.cond9.preheader:                              ; preds = %while.cond
  br label %for.cond9, !dbg !3182

while.body:                                       ; preds = %while.cond
  %8 = load %struct.basic_block_def**, %struct.basic_block_def*** %stack, align 8, !dbg !3184
  %dec = add i32 %7, -1, !dbg !3185
  store i32 %dec, i32* %sp, align 8, !dbg !3185
  %idxprom = zext i32 %dec to i64, !dbg !3186
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %8, i64 %idxprom, !dbg !3186
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3186
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %9, metadata !3165, metadata !DIExpression()), !dbg !3168
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3187
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i64 0, i32 0, !dbg !3187
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3187
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3187
  store i32 %10, i32* %3, align 8, !dbg !3187
  %11 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3187
  store %struct.VEC_edge_gc** %11, %struct.VEC_edge_gc*** %4, align 8, !dbg !3187
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3187
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3187
  br label %for.cond, !dbg !3187

for.cond:                                         ; preds = %for.inc, %while.body
  %12 = load i32, i32* %5, align 8, !dbg !3188
  %13 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %6, align 8, !dbg !3188
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3166, metadata !DIExpression(DW_OP_deref)), !dbg !3168
  %call2 = call fastcc zeroext i8 @ei_cond(i32 %12, %struct.VEC_edge_gc** %13, %struct.edge_def** nonnull %e) #7, !dbg !3188
  %tobool = icmp eq i8 %call2, 0, !dbg !3187
  br i1 %tobool, label %while.cond.loopexit, label %for.body, !dbg !3187, !llvm.loop !3189

for.body:                                         ; preds = %for.cond
  %14 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited_blocks, align 8, !dbg !3191
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3191
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !3166, metadata !DIExpression()), !dbg !3168
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i64 0, i32 0, !dbg !3191
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3191
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i64 0, i32 9, !dbg !3191
  %17 = load i32, i32* %index, align 8, !dbg !3191
  %div = lshr i32 %17, 6, !dbg !3191
  %idxprom3 = zext i32 %div to i64, !dbg !3191
  %arrayidx4 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %14, i64 0, i32 3, i64 %idxprom3, !dbg !3191
  %18 = load i64, i64* %arrayidx4, align 8, !dbg !3191
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !3166, metadata !DIExpression()), !dbg !3168
  %rem = and i32 %17, 63, !dbg !3191
  %sh_prom = zext i32 %rem to i64, !dbg !3191
  %19 = shl i64 1, %sh_prom, !dbg !3191
  %20 = and i64 %18, %19, !dbg !3191
  %tobool7 = icmp eq i64 %20, 0, !dbg !3191
  br i1 %tobool7, label %if.then, label %for.inc, !dbg !3192

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !3166, metadata !DIExpression()), !dbg !3168
  call fastcc void @flow_dfs_compute_reverse_add_bb(%struct.depth_first_search_dsS* %data, %struct.basic_block_def* %16) #7, !dbg !3193
  br label %for.inc, !dbg !3193

for.inc:                                          ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3167, metadata !DIExpression(DW_OP_deref)), !dbg !3168
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3188
  br label %for.cond, !dbg !3188, !llvm.loop !3194

for.cond9:                                        ; preds = %for.cond9.preheader, %for.inc26
  %bb.0 = phi %struct.basic_block_def* [ %26, %for.inc26 ], [ %last_unvisited, %for.cond9.preheader ], !dbg !3196
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3165, metadata !DIExpression()), !dbg !3168
  %cmp10 = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !3197
  br i1 %cmp10, label %cleanup, label %for.body11, !dbg !3182

for.body11:                                       ; preds = %for.cond9
  %21 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited_blocks, align 8, !dbg !3199
  %index14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !3199
  %22 = load i32, i32* %index14, align 8, !dbg !3199
  %div15 = lshr i32 %22, 6, !dbg !3199
  %idxprom16 = zext i32 %div15 to i64, !dbg !3199
  %arrayidx17 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %21, i64 0, i32 3, i64 %idxprom16, !dbg !3199
  %23 = load i64, i64* %arrayidx17, align 8, !dbg !3199
  %rem19 = and i32 %22, 63, !dbg !3199
  %sh_prom20 = zext i32 %rem19 to i64, !dbg !3199
  %24 = shl i64 1, %sh_prom20, !dbg !3199
  %25 = and i64 %23, %24, !dbg !3199
  %tobool23 = icmp eq i64 %25, 0, !dbg !3199
  br i1 %tobool23, label %cleanup, label %for.inc26, !dbg !3201

for.inc26:                                        ; preds = %for.body11
  %prev_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 5, !dbg !3197
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %prev_bb, align 8, !dbg !3197
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %26, metadata !3165, metadata !DIExpression()), !dbg !3168
  br label %for.cond9, !dbg !3197, !llvm.loop !3202

cleanup:                                          ; preds = %for.body11, %for.cond9
  %retval.0 = phi %struct.basic_block_def* [ %bb.0, %for.body11 ], [ null, %for.cond9 ], !dbg !3168
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3204
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3204
  ret %struct.basic_block_def* %retval.0, !dbg !3204
}

declare dso_local %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flow_dfs_compute_reverse_finish(%struct.depth_first_search_dsS* %data) unnamed_addr #4 !dbg !3205 {
entry:
  call void @llvm.dbg.value(metadata %struct.depth_first_search_dsS* %data, metadata !3207, metadata !DIExpression()), !dbg !3208
  %0 = bitcast %struct.depth_first_search_dsS* %data to i8**, !dbg !3209
  %1 = load i8*, i8** %0, align 8, !dbg !3209
  tail call void @free(i8* %1) #6, !dbg !3210
  %visited_blocks = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %data, i64 0, i32 2, !dbg !3211
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited_blocks, align 8, !dbg !3211
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i64 0, i32 0, !dbg !3211
  %3 = load i8*, i8** %popcount, align 8, !dbg !3211
  tail call void @free(i8* %3) #6, !dbg !3211
  %4 = bitcast %struct.simple_bitmap_def** %visited_blocks to i8**, !dbg !3211
  %5 = load i8*, i8** %4, align 8, !dbg !3211
  tail call void @free(i8* %5) #6, !dbg !3211
  ret void, !dbg !3212
}

; Function Attrs: nounwind uwtable
define dso_local i32 @post_order_compute(i32* %post_order, i8 zeroext %include_entry_exit, i8 zeroext %delete_unreachable) local_unnamed_addr #4 !dbg !3213 {
entry:
  %tmp = alloca %struct.edge_iterator, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp36 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata i32* %post_order, metadata !3217, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i8 %include_entry_exit, metadata !3218, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i8 %delete_unreachable, metadata !3219, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i32 0, metadata !3222, metadata !DIExpression()), !dbg !3233
  %tobool = icmp eq i8 %include_entry_exit, 0, !dbg !3234
  br i1 %tobool, label %if.end, label %if.then, !dbg !3236

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !3222, metadata !DIExpression()), !dbg !3233
  store i32 1, i32* %post_order, align 4, !dbg !3237
  br label %if.end, !dbg !3238

if.end:                                           ; preds = %entry, %if.then
  %post_order_num.0 = phi i32 [ 1, %if.then ], [ 0, %entry ], !dbg !3233
  call void @llvm.dbg.value(metadata i32 %post_order_num.0, metadata !3222, metadata !DIExpression()), !dbg !3233
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3239
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3239
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3239
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 3, !dbg !3239
  %2 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !3239
  %add = add nsw i32 %2, 1, !dbg !3239
  %conv = sext i32 %add to i64, !dbg !3239
  %mul = shl nsw i64 %conv, 4, !dbg !3239
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3239
  %3 = bitcast i8* %call to %struct.edge_iterator*, !dbg !3239
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %3, metadata !3220, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i32 0, metadata !3221, metadata !DIExpression()), !dbg !3233
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3240
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !3240
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !3240
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 5, !dbg !3240
  %6 = load i32, i32* %x_last_basic_block, align 8, !dbg !3240
  %call3 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %6) #6, !dbg !3241
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call3, metadata !3223, metadata !DIExpression()), !dbg !3233
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call3) #6, !dbg !3242
  call void @llvm.dbg.value(metadata i32 1, metadata !3221, metadata !DIExpression()), !dbg !3233
  %7 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3243
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #8, !dbg !3243
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3243
  %cfg8 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !3243
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg8, align 8, !dbg !3243
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 0, !dbg !3243
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3243
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i64 0, i32 1, !dbg !3243
  %call9 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3243
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3243
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call9, 0, !dbg !3243
  store i32 %12, i32* %11, align 8, !dbg !3243
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3243
  %14 = extractvalue { i32, %struct.VEC_edge_gc** } %call9, 1, !dbg !3243
  store %struct.VEC_edge_gc** %14, %struct.VEC_edge_gc*** %13, align 8, !dbg !3243
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %call, i8* nonnull align 8 %7, i64 16, i1 false), !dbg !3243
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #8, !dbg !3243
  %15 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3244
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3244
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3244
  %18 = bitcast %struct.edge_iterator* %tmp36 to i8*, !dbg !3245
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp36, i64 0, i32 0, !dbg !3245
  %20 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp36, i64 0, i32 1, !dbg !3245
  br label %while.cond, !dbg !3249

while.cond:                                       ; preds = %if.end68, %if.end
  %sp.0 = phi i32 [ 1, %if.end ], [ %sp.3, %if.end68 ], !dbg !3233
  %post_order_num.1 = phi i32 [ %post_order_num.0, %if.end ], [ %post_order_num.4, %if.end68 ], !dbg !3233
  call void @llvm.dbg.value(metadata i32 %post_order_num.1, metadata !3222, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i32 %sp.0, metadata !3221, metadata !DIExpression()), !dbg !3233
  %tobool10 = icmp eq i32 %sp.0, 0, !dbg !3249
  br i1 %tobool10, label %while.end, label %while.body, !dbg !3249

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #8, !dbg !3250
  %sub = add nsw i32 %sp.0, -1, !dbg !3251
  %idxprom11 = sext i32 %sub to i64, !dbg !3252
  %arrayidx12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %3, i64 %idxprom11, !dbg !3252
  %21 = bitcast %struct.edge_iterator* %arrayidx12 to i8*, !dbg !3252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %15, i8* align 8 %21, i64 16, i1 false), !dbg !3252
  %22 = load i32, i32* %16, align 8, !dbg !3253
  %23 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %17, align 8, !dbg !3253
  %call13 = tail call fastcc %struct.edge_def* @ei_edge(i32 %22, %struct.VEC_edge_gc** %23) #7, !dbg !3253
  %src14 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call13, i64 0, i32 0, !dbg !3254
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %src14, align 8, !dbg !3254
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %24, metadata !3227, metadata !DIExpression()), !dbg !3244
  %call15 = tail call fastcc %struct.edge_def* @ei_edge(i32 %22, %struct.VEC_edge_gc** %23) #7, !dbg !3255
  %dest16 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call15, i64 0, i32 1, !dbg !3256
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %dest16, align 8, !dbg !3256
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %25, metadata !3228, metadata !DIExpression()), !dbg !3244
  %26 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3257
  %cfg18 = getelementptr inbounds %struct.function, %struct.function* %26, i64 0, i32 1, !dbg !3257
  %27 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg18, align 8, !dbg !3257
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %27, i64 0, i32 1, !dbg !3257
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3257
  %cmp = icmp eq %struct.basic_block_def* %25, %28, !dbg !3258
  br i1 %cmp, label %if.else44, label %land.lhs.true, !dbg !3259

land.lhs.true:                                    ; preds = %while.body
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i64 0, i32 9, !dbg !3260
  %29 = load i32, i32* %index, align 8, !dbg !3260
  %div = lshr i32 %29, 6, !dbg !3260
  %idxprom20 = zext i32 %div to i64, !dbg !3260
  %arrayidx21 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call3, i64 0, i32 3, i64 %idxprom20, !dbg !3260
  %30 = load i64, i64* %arrayidx21, align 8, !dbg !3260
  %rem = and i32 %29, 63, !dbg !3260
  %sh_prom = zext i32 %rem to i64, !dbg !3260
  %31 = shl i64 1, %sh_prom, !dbg !3260
  %32 = and i64 %30, %31, !dbg !3260
  %tobool23 = icmp eq i64 %32, 0, !dbg !3260
  br i1 %tobool23, label %if.then24, label %if.else44, !dbg !3261

if.then24:                                        ; preds = %land.lhs.true
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call3, i32 %29) #7, !dbg !3262
  %succs26 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i64 0, i32 1, !dbg !3263
  %33 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs26, align 8, !dbg !3263
  %tobool27 = icmp eq %struct.VEC_edge_gc* %33, null, !dbg !3263
  br i1 %tobool27, label %cond.end, label %cond.true, !dbg !3263

cond.true:                                        ; preds = %if.then24
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %33, i64 0, i32 0, !dbg !3263
  br label %cond.end, !dbg !3263

cond.end:                                         ; preds = %if.then24, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %if.then24 ], !dbg !3263
  %call29 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3263
  %cmp30 = icmp eq i32 %call29, 0, !dbg !3264
  br i1 %cmp30, label %if.else, label %if.then32, !dbg !3265

if.then32:                                        ; preds = %cond.end
  %inc33 = add nsw i32 %sp.0, 1, !dbg !3266
  call void @llvm.dbg.value(metadata i32 %inc33, metadata !3221, metadata !DIExpression()), !dbg !3233
  %idxprom34 = sext i32 %sp.0 to i64, !dbg !3267
  %arrayidx35 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %3, i64 %idxprom34, !dbg !3267
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #8, !dbg !3268
  %call38 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs26) #7, !dbg !3268
  %34 = extractvalue { i32, %struct.VEC_edge_gc** } %call38, 0, !dbg !3268
  store i32 %34, i32* %19, align 8, !dbg !3268
  %35 = extractvalue { i32, %struct.VEC_edge_gc** } %call38, 1, !dbg !3268
  store %struct.VEC_edge_gc** %35, %struct.VEC_edge_gc*** %20, align 8, !dbg !3268
  %36 = bitcast %struct.edge_iterator* %arrayidx35 to i8*, !dbg !3268
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* nonnull align 8 %18, i64 16, i1 false), !dbg !3268
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #8, !dbg !3268
  br label %if.end68, !dbg !3267

if.else:                                          ; preds = %cond.end
  %37 = load i32, i32* %index, align 8, !dbg !3269
  %inc40 = add nsw i32 %post_order_num.1, 1, !dbg !3270
  call void @llvm.dbg.value(metadata i32 %inc40, metadata !3222, metadata !DIExpression()), !dbg !3233
  %idxprom41 = sext i32 %post_order_num.1 to i64, !dbg !3271
  %arrayidx42 = getelementptr inbounds i32, i32* %post_order, i64 %idxprom41, !dbg !3271
  store i32 %37, i32* %arrayidx42, align 4, !dbg !3272
  br label %if.end68

if.else44:                                        ; preds = %land.lhs.true, %while.body
  %call45 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %22, %struct.VEC_edge_gc** %23) #7, !dbg !3273
  %tobool47 = icmp eq i8 %call45, 0, !dbg !3273
  br i1 %tobool47, label %if.end59, label %land.lhs.true48, !dbg !3276

land.lhs.true48:                                  ; preds = %if.else44
  %38 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3277
  %cfg50 = getelementptr inbounds %struct.function, %struct.function* %38, i64 0, i32 1, !dbg !3277
  %39 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg50, align 8, !dbg !3277
  %x_entry_block_ptr51 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %39, i64 0, i32 0, !dbg !3277
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr51, align 8, !dbg !3277
  %cmp52 = icmp eq %struct.basic_block_def* %24, %40, !dbg !3278
  br i1 %cmp52, label %if.end59, label %if.then54, !dbg !3279

if.then54:                                        ; preds = %land.lhs.true48
  %index55 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i64 0, i32 9, !dbg !3280
  %41 = load i32, i32* %index55, align 8, !dbg !3280
  %inc56 = add nsw i32 %post_order_num.1, 1, !dbg !3281
  call void @llvm.dbg.value(metadata i32 %inc56, metadata !3222, metadata !DIExpression()), !dbg !3233
  %idxprom57 = sext i32 %post_order_num.1 to i64, !dbg !3282
  %arrayidx58 = getelementptr inbounds i32, i32* %post_order, i64 %idxprom57, !dbg !3282
  store i32 %41, i32* %arrayidx58, align 4, !dbg !3283
  br label %if.end59, !dbg !3282

if.end59:                                         ; preds = %land.lhs.true48, %if.else44, %if.then54
  %post_order_num.3 = phi i32 [ %inc56, %if.then54 ], [ %post_order_num.1, %land.lhs.true48 ], [ %post_order_num.1, %if.else44 ], !dbg !3233
  call void @llvm.dbg.value(metadata i32 %post_order_num.3, metadata !3222, metadata !DIExpression()), !dbg !3233
  %call60 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %22, %struct.VEC_edge_gc** %23) #7, !dbg !3284
  %tobool61 = icmp eq i8 %call60, 0, !dbg !3284
  br i1 %tobool61, label %if.then62, label %if.else66, !dbg !3286

if.then62:                                        ; preds = %if.end59
  tail call fastcc void @ei_next(%struct.edge_iterator* %arrayidx12) #7, !dbg !3287
  br label %if.end68, !dbg !3287

if.else66:                                        ; preds = %if.end59
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3221, metadata !DIExpression()), !dbg !3233
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %if.else66, %if.then32, %if.else
  %sp.3 = phi i32 [ %inc33, %if.then32 ], [ %sp.0, %if.else ], [ %sub, %if.else66 ], [ %sp.0, %if.then62 ], !dbg !3288
  %post_order_num.4 = phi i32 [ %post_order_num.1, %if.then32 ], [ %inc40, %if.else ], [ %post_order_num.3, %if.else66 ], [ %post_order_num.3, %if.then62 ], !dbg !3233
  call void @llvm.dbg.value(metadata i32 %post_order_num.4, metadata !3222, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i32 %sp.3, metadata !3221, metadata !DIExpression()), !dbg !3233
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #8, !dbg !3289
  br label %while.cond, !dbg !3249, !llvm.loop !3290

while.end:                                        ; preds = %while.cond
  %post_order_num.1.lcssa = phi i32 [ %post_order_num.1, %while.cond ], !dbg !3233
  call void @llvm.dbg.value(metadata i32 %post_order_num.1.lcssa, metadata !3222, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i32 %post_order_num.1.lcssa, metadata !3222, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i32 %post_order_num.1.lcssa, metadata !3222, metadata !DIExpression()), !dbg !3233
  br i1 %tobool, label %if.else74, label %if.then70, !dbg !3291

if.then70:                                        ; preds = %while.end
  %inc71 = add nsw i32 %post_order_num.1.lcssa, 1, !dbg !3292
  call void @llvm.dbg.value(metadata i32 %inc71, metadata !3222, metadata !DIExpression()), !dbg !3233
  %idxprom72 = sext i32 %post_order_num.1.lcssa to i64, !dbg !3295
  %arrayidx73 = getelementptr inbounds i32, i32* %post_order, i64 %idxprom72, !dbg !3295
  store i32 0, i32* %arrayidx73, align 4, !dbg !3296
  call void @llvm.dbg.value(metadata i32 %inc71, metadata !3224, metadata !DIExpression()), !dbg !3233
  br label %if.end76, !dbg !3297

if.else74:                                        ; preds = %while.end
  %add75 = add nsw i32 %post_order_num.1.lcssa, 2, !dbg !3298
  call void @llvm.dbg.value(metadata i32 %add75, metadata !3224, metadata !DIExpression()), !dbg !3233
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %if.then70
  %post_order_num.5 = phi i32 [ %inc71, %if.then70 ], [ %post_order_num.1.lcssa, %if.else74 ], !dbg !3233
  %count.0 = phi i32 [ %inc71, %if.then70 ], [ %add75, %if.else74 ], !dbg !3299
  call void @llvm.dbg.value(metadata i32 %count.0, metadata !3224, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i32 %post_order_num.5, metadata !3222, metadata !DIExpression()), !dbg !3233
  %tobool78 = icmp eq i8 %delete_unreachable, 0, !dbg !3300
  br i1 %tobool78, label %if.end109, label %land.lhs.true79, !dbg !3301

land.lhs.true79:                                  ; preds = %if.end76
  %42 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3302
  %cfg81 = getelementptr inbounds %struct.function, %struct.function* %42, i64 0, i32 1, !dbg !3302
  %43 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg81, align 8, !dbg !3302
  %x_n_basic_blocks82 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %43, i64 0, i32 3, !dbg !3302
  %44 = load i32, i32* %x_n_basic_blocks82, align 8, !dbg !3302
  %cmp83 = icmp eq i32 %count.0, %44, !dbg !3303
  br i1 %cmp83, label %if.end109, label %if.then85, !dbg !3304

if.then85:                                        ; preds = %land.lhs.true79
  %x_entry_block_ptr88 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %43, i64 0, i32 0, !dbg !3305
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr88, align 8, !dbg !3305
  %next_bb89 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %45, i64 0, i32 6, !dbg !3307
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb89, align 8, !dbg !3307
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %46, metadata !3229, metadata !DIExpression()), !dbg !3308
  br label %for.cond, !dbg !3309

for.cond:                                         ; preds = %for.inc, %if.then85
  %.pre3 = phi %struct.function* [ %42, %if.then85 ], [ %.pre, %for.inc ]
  %47 = phi %struct.control_flow_graph* [ %43, %if.then85 ], [ %.pre2, %for.inc ], !dbg !3310
  %b.0 = phi %struct.basic_block_def* [ %46, %if.then85 ], [ %49, %for.inc ], !dbg !3312
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %b.0, metadata !3229, metadata !DIExpression()), !dbg !3308
  %x_exit_block_ptr92 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %47, i64 0, i32 1, !dbg !3310
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr92, align 8, !dbg !3310
  %cmp93 = icmp eq %struct.basic_block_def* %b.0, %48, !dbg !3313
  br i1 %cmp93, label %for.end, label %for.body, !dbg !3314

for.body:                                         ; preds = %for.cond
  %next_bb95 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b.0, i64 0, i32 6, !dbg !3315
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb95, align 8, !dbg !3315
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %49, metadata !3232, metadata !DIExpression()), !dbg !3308
  %index97 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b.0, i64 0, i32 9, !dbg !3317
  %50 = load i32, i32* %index97, align 8, !dbg !3317
  %div98 = lshr i32 %50, 6, !dbg !3317
  %idxprom99 = zext i32 %div98 to i64, !dbg !3317
  %arrayidx100 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call3, i64 0, i32 3, i64 %idxprom99, !dbg !3317
  %51 = load i64, i64* %arrayidx100, align 8, !dbg !3317
  %rem102 = and i32 %50, 63, !dbg !3317
  %sh_prom103 = zext i32 %rem102 to i64, !dbg !3317
  %52 = shl i64 1, %sh_prom103, !dbg !3317
  %53 = and i64 %51, %52, !dbg !3317
  %tobool106 = icmp eq i64 %53, 0, !dbg !3317
  br i1 %tobool106, label %if.then107, label %for.inc, !dbg !3319

if.then107:                                       ; preds = %for.body
  tail call void @delete_basic_block(%struct.basic_block_def* %b.0) #6, !dbg !3320
  %.pre.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3310
  br label %for.inc, !dbg !3320

for.inc:                                          ; preds = %for.body, %if.then107
  %.pre = phi %struct.function* [ %.pre3, %for.body ], [ %.pre.pre, %if.then107 ], !dbg !3310
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %49, metadata !3229, metadata !DIExpression()), !dbg !3308
  %cfg91.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3321
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg91.phi.trans.insert, align 8, !dbg !3310
  br label %for.cond, !dbg !3322, !llvm.loop !3323

for.end:                                          ; preds = %for.cond
  tail call void @tidy_fallthru_edges() #6, !dbg !3325
  br label %if.end109, !dbg !3326

if.end109:                                        ; preds = %land.lhs.true79, %if.end76, %for.end
  tail call void @free(i8* %call) #6, !dbg !3327
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call3, i64 0, i32 0, !dbg !3328
  %54 = load i8*, i8** %popcount, align 8, !dbg !3328
  tail call void @free(i8* %54) #6, !dbg !3328
  %55 = bitcast %struct.simple_bitmap_def* %call3 to i8*, !dbg !3328
  tail call void @free(i8* %55) #6, !dbg !3328
  ret i32 %post_order_num.5, !dbg !3329
}

declare dso_local void @delete_basic_block(%struct.basic_block_def*) local_unnamed_addr #1

declare dso_local void @tidy_fallthru_edges() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @inverted_post_order_compute(i32* %post_order) local_unnamed_addr #4 !dbg !3330 {
entry:
  %tmp = alloca %struct.edge_iterator, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp52 = alloca %struct.edge_iterator, align 8
  %ei117 = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp118 = alloca %struct.edge_iterator, align 8
  %tmp156 = alloca %struct.edge_iterator, align 8
  %tmp188 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata i32* %post_order, metadata !3334, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 0, metadata !3338, metadata !DIExpression()), !dbg !3360
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3361
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3361
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3361
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 3, !dbg !3361
  %2 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !3361
  %add = add nsw i32 %2, 1, !dbg !3361
  %conv = sext i32 %add to i64, !dbg !3361
  %mul = shl nsw i64 %conv, 4, !dbg !3361
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3361
  %3 = bitcast i8* %call to %struct.edge_iterator*, !dbg !3361
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %3, metadata !3336, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 0, metadata !3337, metadata !DIExpression()), !dbg !3360
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3362
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !3362
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !3362
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 5, !dbg !3362
  %6 = load i32, i32* %x_last_basic_block, align 8, !dbg !3362
  %call3 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %6) #6, !dbg !3363
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call3, metadata !3339, metadata !DIExpression()), !dbg !3360
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call3) #6, !dbg !3364
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3365
  %cfg5 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !3365
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg5, align 8, !dbg !3365
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 0, !dbg !3365
  %9 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3367
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3367
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3367
  br label %for.cond, !dbg !3365

for.cond:                                         ; preds = %for.inc, %entry
  %sp.0 = phi i32 [ 0, %entry ], [ %sp.2, %for.inc ], !dbg !3360
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %entry ], [ %next_bb, %for.inc ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3373
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3335, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %sp.0, metadata !3337, metadata !DIExpression()), !dbg !3360
  %cmp = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !3374
  br i1 %cmp, label %do.body.preheader, label %for.body, !dbg !3365

do.body.preheader:                                ; preds = %for.cond
  %sp.0.lcssa = phi i32 [ %sp.0, %for.cond ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %sp.0.lcssa, metadata !3337, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %sp.0.lcssa, metadata !3337, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %sp.0.lcssa, metadata !3337, metadata !DIExpression()), !dbg !3360
  %12 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3375
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3375
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3375
  %15 = bitcast %struct.edge_iterator* %tmp52 to i8*, !dbg !3376
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp52, i64 0, i32 0, !dbg !3376
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp52, i64 0, i32 1, !dbg !3376
  %18 = bitcast %struct.edge_iterator* %ei117 to i8*, !dbg !3380
  %19 = bitcast %struct.edge_def** %e to i8*, !dbg !3380
  %20 = bitcast %struct.edge_iterator* %tmp118 to i8*, !dbg !3381
  %21 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp118, i64 0, i32 0, !dbg !3381
  %22 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp118, i64 0, i32 1, !dbg !3381
  %23 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei117, i64 0, i32 0, !dbg !3383
  %24 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei117, i64 0, i32 1, !dbg !3383
  %25 = bitcast %struct.edge_iterator* %tmp156 to i8*, !dbg !3385
  %26 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp156, i64 0, i32 0, !dbg !3385
  %27 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp156, i64 0, i32 1, !dbg !3385
  %28 = bitcast %struct.edge_iterator* %tmp188 to i8*, !dbg !3386
  %29 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp188, i64 0, i32 0, !dbg !3386
  %30 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp188, i64 0, i32 1, !dbg !3386
  br label %do.body, !dbg !3387

for.body:                                         ; preds = %for.cond
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !3388
  %31 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3388
  %tobool = icmp eq %struct.VEC_edge_gc* %31, null, !dbg !3388
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3388

cond.true:                                        ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %31, i64 0, i32 0, !dbg !3388
  br label %cond.end, !dbg !3388

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %for.body ], !dbg !3388
  %call8 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3388
  %cmp9 = icmp eq i32 %call8, 0, !dbg !3389
  br i1 %cmp9, label %if.then, label %for.inc, !dbg !3390

if.then:                                          ; preds = %cond.end
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 0, !dbg !3391
  %32 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3391
  %tobool11 = icmp eq %struct.VEC_edge_gc* %32, null, !dbg !3391
  br i1 %tobool11, label %cond.end16, label %cond.true12, !dbg !3391

cond.true12:                                      ; preds = %if.then
  %base14 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %32, i64 0, i32 0, !dbg !3391
  br label %cond.end16, !dbg !3391

cond.end16:                                       ; preds = %if.then, %cond.true12
  %cond17 = phi %struct.VEC_edge_base* [ %base14, %cond.true12 ], [ null, %if.then ], !dbg !3391
  %call18 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond17) #7, !dbg !3391
  %cmp19 = icmp eq i32 %call18, 0, !dbg !3392
  br i1 %cmp19, label %for.inc, label %if.then21, !dbg !3393

if.then21:                                        ; preds = %cond.end16
  %inc = add nsw i32 %sp.0, 1, !dbg !3394
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3337, metadata !DIExpression()), !dbg !3360
  %idxprom = sext i32 %sp.0 to i64, !dbg !3395
  %arrayidx = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %3, i64 %idxprom, !dbg !3395
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #8, !dbg !3396
  %call23 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %preds) #7, !dbg !3396
  %33 = extractvalue { i32, %struct.VEC_edge_gc** } %call23, 0, !dbg !3396
  store i32 %33, i32* %10, align 8, !dbg !3396
  %34 = extractvalue { i32, %struct.VEC_edge_gc** } %call23, 1, !dbg !3396
  store %struct.VEC_edge_gc** %34, %struct.VEC_edge_gc*** %11, align 8, !dbg !3396
  %35 = bitcast %struct.edge_iterator* %arrayidx to i8*, !dbg !3396
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* nonnull align 8 %9, i64 16, i1 false), !dbg !3396
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #8, !dbg !3396
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !3397
  %36 = load i32, i32* %index, align 8, !dbg !3397
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call3, i32 %36) #7, !dbg !3398
  br label %for.inc, !dbg !3399

for.inc:                                          ; preds = %cond.end16, %cond.end, %if.then21
  %sp.2 = phi i32 [ %sp.0, %cond.end ], [ %inc, %if.then21 ], [ %sp.0, %cond.end16 ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %sp.2, metadata !3337, metadata !DIExpression()), !dbg !3360
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !3374
  br label %for.cond, !dbg !3374, !llvm.loop !3400

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %post_order_num.0 = phi i32 [ %post_order_num.1.lcssa, %do.cond ], [ 0, %do.body.preheader ], !dbg !3402
  %sp.3 = phi i32 [ %sp.13, %do.cond ], [ %sp.0.lcssa, %do.body.preheader ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %sp.3, metadata !3337, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %post_order_num.0, metadata !3338, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8 0, metadata !3340, metadata !DIExpression()), !dbg !3403
  br label %while.cond, !dbg !3404

while.cond:                                       ; preds = %if.end82, %do.body
  %post_order_num.1 = phi i32 [ %post_order_num.0, %do.body ], [ %post_order_num.4, %if.end82 ], !dbg !3360
  %sp.4 = phi i32 [ %sp.3, %do.body ], [ %sp.7, %if.end82 ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %sp.4, metadata !3337, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %post_order_num.1, metadata !3338, metadata !DIExpression()), !dbg !3360
  %tobool25 = icmp eq i32 %sp.4, 0, !dbg !3404
  br i1 %tobool25, label %while.end, label %while.body, !dbg !3404

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #8, !dbg !3405
  %sub = add nsw i32 %sp.4, -1, !dbg !3406
  %idxprom26 = sext i32 %sub to i64, !dbg !3407
  %arrayidx27 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %3, i64 %idxprom26, !dbg !3407
  %37 = bitcast %struct.edge_iterator* %arrayidx27 to i8*, !dbg !3407
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %12, i8* align 8 %37, i64 16, i1 false), !dbg !3407
  %38 = load i32, i32* %13, align 8, !dbg !3408
  %39 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !3408
  %call28 = call fastcc %struct.edge_def* @ei_edge(i32 %38, %struct.VEC_edge_gc** %39) #7, !dbg !3408
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call28, i64 0, i32 1, !dbg !3409
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3409
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %40, metadata !3335, metadata !DIExpression()), !dbg !3360
  %call29 = call fastcc %struct.edge_def* @ei_edge(i32 %38, %struct.VEC_edge_gc** %39) #7, !dbg !3410
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call29, i64 0, i32 0, !dbg !3411
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3411
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %41, metadata !3344, metadata !DIExpression()), !dbg !3375
  %index30 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i64 0, i32 9, !dbg !3412
  %42 = load i32, i32* %index30, align 8, !dbg !3412
  %div = lshr i32 %42, 6, !dbg !3412
  %idxprom31 = zext i32 %div to i64, !dbg !3412
  %arrayidx32 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call3, i64 0, i32 3, i64 %idxprom31, !dbg !3412
  %43 = load i64, i64* %arrayidx32, align 8, !dbg !3412
  %rem = and i32 %42, 63, !dbg !3412
  %sh_prom = zext i32 %rem to i64, !dbg !3412
  %44 = shl i64 1, %sh_prom, !dbg !3412
  %45 = and i64 %43, %44, !dbg !3412
  %tobool34 = icmp eq i64 %45, 0, !dbg !3412
  br i1 %tobool34, label %if.then35, label %if.else60, !dbg !3413

if.then35:                                        ; preds = %while.body
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call3, i32 %42) #7, !dbg !3414
  %preds37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i64 0, i32 0, !dbg !3415
  %46 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds37, align 8, !dbg !3415
  %tobool38 = icmp eq %struct.VEC_edge_gc* %46, null, !dbg !3415
  br i1 %tobool38, label %cond.end43, label %cond.true39, !dbg !3415

cond.true39:                                      ; preds = %if.then35
  %base41 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %46, i64 0, i32 0, !dbg !3415
  br label %cond.end43, !dbg !3415

cond.end43:                                       ; preds = %if.then35, %cond.true39
  %cond44 = phi %struct.VEC_edge_base* [ %base41, %cond.true39 ], [ null, %if.then35 ], !dbg !3415
  %call45 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond44) #7, !dbg !3415
  %cmp46 = icmp eq i32 %call45, 0, !dbg !3416
  br i1 %cmp46, label %if.else, label %if.then48, !dbg !3417

if.then48:                                        ; preds = %cond.end43
  %inc49 = add nsw i32 %sp.4, 1, !dbg !3418
  call void @llvm.dbg.value(metadata i32 %inc49, metadata !3337, metadata !DIExpression()), !dbg !3360
  %idxprom50 = sext i32 %sp.4 to i64, !dbg !3419
  %arrayidx51 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %3, i64 %idxprom50, !dbg !3419
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #8, !dbg !3420
  %call54 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds37) #7, !dbg !3420
  %47 = extractvalue { i32, %struct.VEC_edge_gc** } %call54, 0, !dbg !3420
  store i32 %47, i32* %16, align 8, !dbg !3420
  %48 = extractvalue { i32, %struct.VEC_edge_gc** } %call54, 1, !dbg !3420
  store %struct.VEC_edge_gc** %48, %struct.VEC_edge_gc*** %17, align 8, !dbg !3420
  %49 = bitcast %struct.edge_iterator* %arrayidx51 to i8*, !dbg !3420
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* nonnull align 8 %15, i64 16, i1 false), !dbg !3420
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #8, !dbg !3420
  br label %if.end82, !dbg !3419

if.else:                                          ; preds = %cond.end43
  %50 = load i32, i32* %index30, align 8, !dbg !3421
  %inc56 = add nsw i32 %post_order_num.1, 1, !dbg !3422
  call void @llvm.dbg.value(metadata i32 %inc56, metadata !3338, metadata !DIExpression()), !dbg !3360
  %idxprom57 = sext i32 %post_order_num.1 to i64, !dbg !3423
  %arrayidx58 = getelementptr inbounds i32, i32* %post_order, i64 %idxprom57, !dbg !3423
  store i32 %50, i32* %arrayidx58, align 4, !dbg !3424
  br label %if.end82

if.else60:                                        ; preds = %while.body
  %51 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3425
  %cfg62 = getelementptr inbounds %struct.function, %struct.function* %51, i64 0, i32 1, !dbg !3425
  %52 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg62, align 8, !dbg !3425
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %52, i64 0, i32 1, !dbg !3425
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3425
  %cmp63 = icmp eq %struct.basic_block_def* %40, %53, !dbg !3428
  br i1 %cmp63, label %if.end73, label %land.lhs.true, !dbg !3429

land.lhs.true:                                    ; preds = %if.else60
  %call65 = call fastcc zeroext i8 @ei_one_before_end_p(i32 %38, %struct.VEC_edge_gc** %39) #7, !dbg !3430
  %tobool67 = icmp eq i8 %call65, 0, !dbg !3430
  br i1 %tobool67, label %if.end73, label %if.then68, !dbg !3431

if.then68:                                        ; preds = %land.lhs.true
  %index69 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i64 0, i32 9, !dbg !3432
  %54 = load i32, i32* %index69, align 8, !dbg !3432
  %inc70 = add nsw i32 %post_order_num.1, 1, !dbg !3433
  call void @llvm.dbg.value(metadata i32 %inc70, metadata !3338, metadata !DIExpression()), !dbg !3360
  %idxprom71 = sext i32 %post_order_num.1 to i64, !dbg !3434
  %arrayidx72 = getelementptr inbounds i32, i32* %post_order, i64 %idxprom71, !dbg !3434
  store i32 %54, i32* %arrayidx72, align 4, !dbg !3435
  br label %if.end73, !dbg !3434

if.end73:                                         ; preds = %land.lhs.true, %if.else60, %if.then68
  %post_order_num.3 = phi i32 [ %inc70, %if.then68 ], [ %post_order_num.1, %land.lhs.true ], [ %post_order_num.1, %if.else60 ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %post_order_num.3, metadata !3338, metadata !DIExpression()), !dbg !3360
  %call74 = call fastcc zeroext i8 @ei_one_before_end_p(i32 %38, %struct.VEC_edge_gc** %39) #7, !dbg !3436
  %tobool75 = icmp eq i8 %call74, 0, !dbg !3436
  br i1 %tobool75, label %if.then76, label %if.else80, !dbg !3438

if.then76:                                        ; preds = %if.end73
  call fastcc void @ei_next(%struct.edge_iterator* %arrayidx27) #7, !dbg !3439
  br label %if.end82, !dbg !3439

if.else80:                                        ; preds = %if.end73
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3337, metadata !DIExpression()), !dbg !3360
  br label %if.end82

if.end82:                                         ; preds = %if.then76, %if.else80, %if.then48, %if.else
  %post_order_num.4 = phi i32 [ %post_order_num.1, %if.then48 ], [ %inc56, %if.else ], [ %post_order_num.3, %if.else80 ], [ %post_order_num.3, %if.then76 ], !dbg !3360
  %sp.7 = phi i32 [ %inc49, %if.then48 ], [ %sp.4, %if.else ], [ %sub, %if.else80 ], [ %sp.4, %if.then76 ], !dbg !3440
  call void @llvm.dbg.value(metadata i32 %sp.7, metadata !3337, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %post_order_num.4, metadata !3338, metadata !DIExpression()), !dbg !3360
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #8, !dbg !3441
  br label %while.cond, !dbg !3404, !llvm.loop !3442

while.end:                                        ; preds = %while.cond
  %post_order_num.1.lcssa = phi i32 [ %post_order_num.1, %while.cond ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %post_order_num.1.lcssa, metadata !3338, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %post_order_num.1.lcssa, metadata !3338, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %post_order_num.1.lcssa, metadata !3338, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %sp.4, metadata !3337, metadata !DIExpression()), !dbg !3360
  %55 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3443
  %cfg84 = getelementptr inbounds %struct.function, %struct.function* %55, i64 0, i32 1, !dbg !3443
  %56 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg84, align 8, !dbg !3443
  %x_entry_block_ptr85 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %56, i64 0, i32 0, !dbg !3443
  br label %for.cond86, !dbg !3443

for.cond86:                                       ; preds = %for.inc164, %while.end
  %57 = phi %struct.control_flow_graph* [ %56, %while.end ], [ %.pre1, %for.inc164 ], !dbg !3444
  %has_unvisited_bb.0 = phi i8 [ 0, %while.end ], [ %has_unvisited_bb.1, %for.inc164 ], !dbg !3445
  %sp.8 = phi i32 [ 0, %while.end ], [ %sp.11, %for.inc164 ], !dbg !3446
  %bb.1.in = phi %struct.basic_block_def** [ %x_entry_block_ptr85, %while.end ], [ %next_bb165, %for.inc164 ]
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !3447
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !3335, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %sp.8, metadata !3337, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8 %has_unvisited_bb.0, metadata !3340, metadata !DIExpression()), !dbg !3403
  %x_exit_block_ptr89 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %57, i64 0, i32 1, !dbg !3444
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr89, align 8, !dbg !3444
  %cmp90 = icmp eq %struct.basic_block_def* %bb.1, %58, !dbg !3444
  br i1 %cmp90, label %for.end166, label %for.body92, !dbg !3443

for.body92:                                       ; preds = %for.cond86
  %index94 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 9, !dbg !3448
  %59 = load i32, i32* %index94, align 8, !dbg !3448
  %div95 = lshr i32 %59, 6, !dbg !3448
  %idxprom96 = zext i32 %div95 to i64, !dbg !3448
  %arrayidx97 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call3, i64 0, i32 3, i64 %idxprom96, !dbg !3448
  %60 = load i64, i64* %arrayidx97, align 8, !dbg !3448
  %rem99 = and i32 %59, 63, !dbg !3448
  %sh_prom100 = zext i32 %rem99 to i64, !dbg !3448
  %61 = shl i64 1, %sh_prom100, !dbg !3448
  %62 = and i64 %60, %61, !dbg !3448
  %tobool103 = icmp eq i64 %62, 0, !dbg !3448
  br i1 %tobool103, label %if.then104, label %for.inc164, !dbg !3449

if.then104:                                       ; preds = %for.body92
  call void @llvm.dbg.value(metadata i8 1, metadata !3340, metadata !DIExpression()), !dbg !3403
  %preds105 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 0, !dbg !3450
  %63 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds105, align 8, !dbg !3450
  %tobool106 = icmp eq %struct.VEC_edge_gc* %63, null, !dbg !3450
  br i1 %tobool106, label %cond.end111, label %cond.true107, !dbg !3450

cond.true107:                                     ; preds = %if.then104
  %base109 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %63, i64 0, i32 0, !dbg !3450
  br label %cond.end111, !dbg !3450

cond.end111:                                      ; preds = %if.then104, %cond.true107
  %cond112 = phi %struct.VEC_edge_base* [ %base109, %cond.true107 ], [ null, %if.then104 ], !dbg !3450
  %call113 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond112) #7, !dbg !3450
  %cmp114 = icmp eq i32 %call113, 0, !dbg !3451
  br i1 %cmp114, label %for.inc164, label %if.then116, !dbg !3452

if.then116:                                       ; preds = %cond.end111
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #8, !dbg !3453
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #8, !dbg !3454
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !3353, metadata !DIExpression()), !dbg !3380
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #8, !dbg !3455
  %call120 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds105) #7, !dbg !3455
  %64 = extractvalue { i32, %struct.VEC_edge_gc** } %call120, 0, !dbg !3455
  store i32 %64, i32* %21, align 8, !dbg !3455
  %65 = extractvalue { i32, %struct.VEC_edge_gc** } %call120, 1, !dbg !3455
  store %struct.VEC_edge_gc** %65, %struct.VEC_edge_gc*** %22, align 8, !dbg !3455
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %18, i8* nonnull align 8 %20, i64 16, i1 false), !dbg !3455
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #8, !dbg !3455
  br label %for.cond121, !dbg !3455

for.cond121:                                      ; preds = %for.inc141, %if.then116
  %visited_pred.0 = phi %struct.basic_block_def* [ null, %if.then116 ], [ %visited_pred.1, %for.inc141 ], !dbg !3380
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %visited_pred.0, metadata !3353, metadata !DIExpression()), !dbg !3380
  %66 = load i32, i32* %23, align 8, !dbg !3456
  %67 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %24, align 8, !dbg !3456
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3352, metadata !DIExpression(DW_OP_deref)), !dbg !3380
  %call122 = call fastcc zeroext i8 @ei_cond(i32 %66, %struct.VEC_edge_gc** %67, %struct.edge_def** nonnull %e) #7, !dbg !3456
  %tobool123 = icmp eq i8 %call122, 0, !dbg !3455
  br i1 %tobool123, label %for.end142, label %for.body124, !dbg !3455

for.body124:                                      ; preds = %for.cond121
  %68 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3457
  call void @llvm.dbg.value(metadata %struct.edge_def* %68, metadata !3352, metadata !DIExpression()), !dbg !3380
  %src126 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %68, i64 0, i32 0, !dbg !3457
  %69 = load %struct.basic_block_def*, %struct.basic_block_def** %src126, align 8, !dbg !3457
  %index127 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %69, i64 0, i32 9, !dbg !3457
  %70 = load i32, i32* %index127, align 8, !dbg !3457
  %div128 = lshr i32 %70, 6, !dbg !3457
  %idxprom129 = zext i32 %div128 to i64, !dbg !3457
  %arrayidx130 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call3, i64 0, i32 3, i64 %idxprom129, !dbg !3457
  %71 = load i64, i64* %arrayidx130, align 8, !dbg !3457
  call void @llvm.dbg.value(metadata %struct.edge_def* %68, metadata !3352, metadata !DIExpression()), !dbg !3380
  %rem133 = and i32 %70, 63, !dbg !3457
  %sh_prom134 = zext i32 %rem133 to i64, !dbg !3457
  %72 = shl i64 1, %sh_prom134, !dbg !3457
  %73 = and i64 %71, %72, !dbg !3457
  %tobool137 = icmp eq i64 %73, 0, !dbg !3457
  br i1 %tobool137, label %for.inc141, label %if.then138, !dbg !3460

if.then138:                                       ; preds = %for.body124
  call void @llvm.dbg.value(metadata %struct.edge_def* %68, metadata !3352, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %69, metadata !3353, metadata !DIExpression()), !dbg !3380
  br label %for.inc141, !dbg !3461

for.inc141:                                       ; preds = %for.body124, %if.then138
  %visited_pred.1 = phi %struct.basic_block_def* [ %69, %if.then138 ], [ %visited_pred.0, %for.body124 ], !dbg !3380
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %visited_pred.1, metadata !3353, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei117, metadata !3345, metadata !DIExpression(DW_OP_deref)), !dbg !3380
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei117) #7, !dbg !3456
  br label %for.cond121, !dbg !3456, !llvm.loop !3462

for.end142:                                       ; preds = %for.cond121
  %visited_pred.0.lcssa = phi %struct.basic_block_def* [ %visited_pred.0, %for.cond121 ], !dbg !3380
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %visited_pred.0.lcssa, metadata !3353, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %visited_pred.0.lcssa, metadata !3353, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %visited_pred.0.lcssa, metadata !3353, metadata !DIExpression()), !dbg !3380
  %tobool143 = icmp eq %struct.basic_block_def* %visited_pred.0.lcssa, null, !dbg !3464
  br i1 %tobool143, label %cleanup, label %if.then144, !dbg !3465

if.then144:                                       ; preds = %for.end142
  %call145 = call fastcc %struct.basic_block_def* @dfs_find_deadend(%struct.basic_block_def* %bb.1) #7, !dbg !3466
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call145, metadata !3354, metadata !DIExpression()), !dbg !3385
  %cmp146 = icmp eq %struct.basic_block_def* %call145, null, !dbg !3467
  br i1 %cmp146, label %cond.true148, label %cond.end150, !dbg !3467

cond.true148:                                     ; preds = %if.then144
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 907, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !3467
  br label %cond.end150, !dbg !3467

cond.end150:                                      ; preds = %if.then144, %cond.true148
  %index152 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call145, i64 0, i32 9, !dbg !3468
  %74 = load i32, i32* %index152, align 8, !dbg !3468
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call3, i32 %74) #7, !dbg !3469
  %inc153 = add nsw i32 %sp.8, 1, !dbg !3470
  call void @llvm.dbg.value(metadata i32 %inc153, metadata !3337, metadata !DIExpression()), !dbg !3360
  %idxprom154 = sext i32 %sp.8 to i64, !dbg !3471
  %arrayidx155 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %3, i64 %idxprom154, !dbg !3471
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #8, !dbg !3472
  %preds157 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call145, i64 0, i32 0, !dbg !3472
  %call158 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds157) #7, !dbg !3472
  %75 = extractvalue { i32, %struct.VEC_edge_gc** } %call158, 0, !dbg !3472
  store i32 %75, i32* %26, align 8, !dbg !3472
  %76 = extractvalue { i32, %struct.VEC_edge_gc** } %call158, 1, !dbg !3472
  store %struct.VEC_edge_gc** %76, %struct.VEC_edge_gc*** %27, align 8, !dbg !3472
  %77 = bitcast %struct.edge_iterator* %arrayidx155 to i8*, !dbg !3472
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* nonnull align 8 %25, i64 16, i1 false), !dbg !3472
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #8, !dbg !3472
  br label %cleanup

cleanup:                                          ; preds = %for.end142, %cond.end150
  %sp.9 = phi i32 [ %inc153, %cond.end150 ], [ %sp.8, %for.end142 ], !dbg !3360
  %cleanup.dest.slot.0 = phi i1 [ false, %cond.end150 ], [ true, %for.end142 ]
  call void @llvm.dbg.value(metadata i32 %sp.9, metadata !3337, metadata !DIExpression()), !dbg !3360
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #8, !dbg !3473
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #8, !dbg !3473
  br i1 %cleanup.dest.slot.0, label %for.inc164, label %for.end166

for.inc164:                                       ; preds = %cond.end111, %for.body92, %cleanup
  %has_unvisited_bb.1 = phi i8 [ %has_unvisited_bb.0, %for.body92 ], [ 1, %cleanup ], [ 1, %cond.end111 ], !dbg !3403
  %sp.11 = phi i32 [ %sp.8, %for.body92 ], [ %sp.9, %cleanup ], [ %sp.8, %cond.end111 ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %sp.11, metadata !3337, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8 %has_unvisited_bb.1, metadata !3340, metadata !DIExpression()), !dbg !3403
  %next_bb165 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 6, !dbg !3444
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3444
  %cfg88.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3474
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg88.phi.trans.insert, align 8, !dbg !3444
  br label %for.cond86, !dbg !3444, !llvm.loop !3475

for.end166:                                       ; preds = %for.cond86, %cleanup
  %has_unvisited_bb.2 = phi i8 [ 1, %cleanup ], [ %has_unvisited_bb.0, %for.cond86 ], !dbg !3403
  %sp.12 = phi i32 [ %sp.9, %cleanup ], [ %sp.8, %for.cond86 ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %sp.12, metadata !3337, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8 %has_unvisited_bb.2, metadata !3340, metadata !DIExpression()), !dbg !3403
  %tobool168 = icmp ne i8 %has_unvisited_bb.2, 0, !dbg !3477
  %cmp170 = icmp eq i32 %sp.12, 0, !dbg !3478
  %or.cond = and i1 %tobool168, %cmp170, !dbg !3479
  br i1 %or.cond, label %if.then172, label %do.cond, !dbg !3479

if.then172:                                       ; preds = %for.end166
  %78 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3480
  %cfg175 = getelementptr inbounds %struct.function, %struct.function* %78, i64 0, i32 1, !dbg !3480
  %79 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg175, align 8, !dbg !3480
  %x_entry_block_ptr176 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %79, i64 0, i32 0, !dbg !3480
  %80 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr176, align 8, !dbg !3480
  %call177 = call fastcc %struct.basic_block_def* @dfs_find_deadend(%struct.basic_block_def* %80) #7, !dbg !3481
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call177, metadata !3357, metadata !DIExpression()), !dbg !3386
  %cmp178 = icmp eq %struct.basic_block_def* %call177, null, !dbg !3482
  br i1 %cmp178, label %cond.true180, label %cond.end182, !dbg !3482

cond.true180:                                     ; preds = %if.then172
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 920, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !3482
  br label %cond.end182, !dbg !3482

cond.end182:                                      ; preds = %if.then172, %cond.true180
  %index184 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call177, i64 0, i32 9, !dbg !3483
  %81 = load i32, i32* %index184, align 8, !dbg !3483
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call3, i32 %81) #7, !dbg !3484
  call void @llvm.dbg.value(metadata i32 1, metadata !3337, metadata !DIExpression()), !dbg !3360
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #8, !dbg !3485
  %preds189 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call177, i64 0, i32 0, !dbg !3485
  %call190 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds189) #7, !dbg !3485
  %82 = extractvalue { i32, %struct.VEC_edge_gc** } %call190, 0, !dbg !3485
  store i32 %82, i32* %29, align 8, !dbg !3485
  %83 = extractvalue { i32, %struct.VEC_edge_gc** } %call190, 1, !dbg !3485
  store %struct.VEC_edge_gc** %83, %struct.VEC_edge_gc*** %30, align 8, !dbg !3485
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %call, i8* nonnull align 8 %28, i64 16, i1 false), !dbg !3485
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #8, !dbg !3485
  br label %do.cond, !dbg !3486

do.cond:                                          ; preds = %for.end166, %cond.end182
  %sp.13 = phi i32 [ 1, %cond.end182 ], [ %sp.12, %for.end166 ], !dbg !3403
  call void @llvm.dbg.value(metadata i32 %sp.13, metadata !3337, metadata !DIExpression()), !dbg !3360
  %tobool192 = icmp eq i32 %sp.13, 0, !dbg !3487
  br i1 %tobool192, label %do.end, label %do.body, !dbg !3487, !llvm.loop !3488

do.end:                                           ; preds = %do.cond
  %post_order_num.1.lcssa.lcssa = phi i32 [ %post_order_num.1.lcssa, %do.cond ], !dbg !3360
  call void @llvm.dbg.value(metadata i32 %post_order_num.1.lcssa.lcssa, metadata !3338, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %post_order_num.1.lcssa.lcssa, metadata !3338, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %post_order_num.1.lcssa.lcssa, metadata !3338, metadata !DIExpression()), !dbg !3360
  %inc193 = add nsw i32 %post_order_num.1.lcssa.lcssa, 1, !dbg !3490
  call void @llvm.dbg.value(metadata i32 %inc193, metadata !3338, metadata !DIExpression()), !dbg !3360
  %idxprom194 = sext i32 %post_order_num.1.lcssa.lcssa to i64, !dbg !3491
  %arrayidx195 = getelementptr inbounds i32, i32* %post_order, i64 %idxprom194, !dbg !3491
  store i32 1, i32* %arrayidx195, align 4, !dbg !3492
  call void @free(i8* %call) #6, !dbg !3493
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call3, i64 0, i32 0, !dbg !3494
  %84 = load i8*, i8** %popcount, align 8, !dbg !3494
  call void @free(i8* %84) #6, !dbg !3494
  %85 = bitcast %struct.simple_bitmap_def* %call3 to i8*, !dbg !3494
  call void @free(i8* %85) #6, !dbg !3494
  ret i32 %inc193, !dbg !3495
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.basic_block_def* @dfs_find_deadend(%struct.basic_block_def* %bb) unnamed_addr #4 !dbg !3496 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3500, metadata !DIExpression()), !dbg !3502
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3503
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3503
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3503
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !3503
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !3503
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %2) #6, !dbg !3504
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !3501, metadata !DIExpression()), !dbg !3502
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call) #6, !dbg !3505
  br label %for.cond, !dbg !3506

for.cond:                                         ; preds = %cond.end31, %entry
  %bb.addr.0 = phi %struct.basic_block_def* [ %bb, %entry ], [ %17, %cond.end31 ]
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.0, metadata !3500, metadata !DIExpression()), !dbg !3502
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.addr.0, i64 0, i32 9, !dbg !3507
  %3 = load i32, i32* %index, align 8, !dbg !3507
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call, i32 %3) #7, !dbg !3511
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.addr.0, i64 0, i32 1, !dbg !3512
  %4 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3512
  %tobool = icmp eq %struct.VEC_edge_gc* %4, null, !dbg !3512
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3512

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %4, i64 0, i32 0, !dbg !3512
  br label %cond.end, !dbg !3512

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !3512
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3512
  %cmp = icmp eq i32 %call2, 0, !dbg !3514
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3515

lor.lhs.false:                                    ; preds = %cond.end
  %5 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3516
  %tobool4 = icmp eq %struct.VEC_edge_gc* %5, null, !dbg !3516
  br i1 %tobool4, label %cond.end9, label %cond.true5, !dbg !3516

cond.true5:                                       ; preds = %lor.lhs.false
  %base7 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %5, i64 0, i32 0, !dbg !3516
  br label %cond.end9, !dbg !3516

cond.end9:                                        ; preds = %lor.lhs.false, %cond.true5
  %cond10 = phi %struct.VEC_edge_base* [ %base7, %cond.true5 ], [ null, %lor.lhs.false ], !dbg !3516
  %call11 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond10, i32 0) #7, !dbg !3516
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call11, i64 0, i32 1, !dbg !3516
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3516
  %index12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 9, !dbg !3516
  %7 = load i32, i32* %index12, align 8, !dbg !3516
  %div = lshr i32 %7, 6, !dbg !3516
  %idxprom = zext i32 %div to i64, !dbg !3516
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 3, i64 %idxprom, !dbg !3516
  %8 = load i64, i64* %arrayidx, align 8, !dbg !3516
  %9 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3516
  %tobool14 = icmp eq %struct.VEC_edge_gc* %9, null, !dbg !3516
  br i1 %tobool14, label %cond.end19, label %cond.true15, !dbg !3516

cond.true15:                                      ; preds = %cond.end9
  %base17 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %9, i64 0, i32 0, !dbg !3516
  br label %cond.end19, !dbg !3516

cond.end19:                                       ; preds = %cond.end9, %cond.true15
  %cond20 = phi %struct.VEC_edge_base* [ %base17, %cond.true15 ], [ null, %cond.end9 ], !dbg !3516
  %call21 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond20, i32 0) #7, !dbg !3516
  %dest22 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call21, i64 0, i32 1, !dbg !3516
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %dest22, align 8, !dbg !3516
  %index23 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i64 0, i32 9, !dbg !3516
  %11 = load i32, i32* %index23, align 8, !dbg !3516
  %rem = and i32 %11, 63, !dbg !3516
  %sh_prom = zext i32 %rem to i64, !dbg !3516
  %12 = shl i64 1, %sh_prom, !dbg !3516
  %13 = and i64 %8, %12, !dbg !3516
  %tobool24 = icmp eq i64 %13, 0, !dbg !3516
  br i1 %tobool24, label %if.end, label %if.then, !dbg !3517

if.then:                                          ; preds = %cond.end19, %cond.end
  %bb.addr.0.lcssa = phi %struct.basic_block_def* [ %bb.addr.0, %cond.end19 ], [ %bb.addr.0, %cond.end ]
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.0.lcssa, metadata !3500, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.0.lcssa, metadata !3500, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.0.lcssa, metadata !3500, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.0.lcssa, metadata !3500, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.0.lcssa, metadata !3500, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.0.lcssa, metadata !3500, metadata !DIExpression()), !dbg !3502
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 0, !dbg !3518
  %14 = load i8*, i8** %popcount, align 8, !dbg !3518
  tail call void @free(i8* %14) #6, !dbg !3518
  %15 = bitcast %struct.simple_bitmap_def* %call to i8*, !dbg !3518
  tail call void @free(i8* %15) #6, !dbg !3518
  ret %struct.basic_block_def* %bb.addr.0.lcssa, !dbg !3520

if.end:                                           ; preds = %cond.end19
  %16 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3521
  %tobool26 = icmp eq %struct.VEC_edge_gc* %16, null, !dbg !3521
  br i1 %tobool26, label %cond.end31, label %cond.true27, !dbg !3521

cond.true27:                                      ; preds = %if.end
  %base29 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %16, i64 0, i32 0, !dbg !3521
  br label %cond.end31, !dbg !3521

cond.end31:                                       ; preds = %if.end, %cond.true27
  %cond32 = phi %struct.VEC_edge_base* [ %base29, %cond.true27 ], [ null, %if.end ], !dbg !3521
  %call33 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond32, i32 0) #7, !dbg !3521
  %dest34 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call33, i64 0, i32 1, !dbg !3522
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %dest34, align 8, !dbg !3522
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %17, metadata !3500, metadata !DIExpression()), !dbg !3502
  br label %for.cond, !dbg !3523, !llvm.loop !3524
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @pre_and_rev_post_order_compute(i32* %pre_order, i32* %rev_post_order, i8 zeroext %include_entry_exit) local_unnamed_addr #4 !dbg !3527 {
entry:
  %tmp = alloca %struct.edge_iterator, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp56 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata i32* %pre_order, metadata !3531, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32* %rev_post_order, metadata !3532, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i8 %include_entry_exit, metadata !3533, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 0, metadata !3536, metadata !DIExpression()), !dbg !3543
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3544
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3544
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3544
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 3, !dbg !3544
  %2 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !3544
  %sub = add nsw i32 %2, -1, !dbg !3545
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3537, metadata !DIExpression()), !dbg !3543
  %add = add nsw i32 %2, 1, !dbg !3546
  %conv = sext i32 %add to i64, !dbg !3546
  %mul = shl nsw i64 %conv, 4, !dbg !3546
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3546
  %3 = bitcast i8* %call to %struct.edge_iterator*, !dbg !3546
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %3, metadata !3534, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 0, metadata !3535, metadata !DIExpression()), !dbg !3543
  %tobool = icmp eq i8 %include_entry_exit, 0, !dbg !3547
  br i1 %tobool, label %if.else, label %if.then, !dbg !3549

if.then:                                          ; preds = %entry
  %tobool4 = icmp eq i32* %pre_order, null, !dbg !3550
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !3553

if.then5:                                         ; preds = %if.then
  store i32 0, i32* %pre_order, align 4, !dbg !3554
  br label %if.end, !dbg !3555

if.end:                                           ; preds = %if.then, %if.then5
  call void @llvm.dbg.value(metadata i32 1, metadata !3536, metadata !DIExpression()), !dbg !3543
  %tobool6 = icmp eq i32* %rev_post_order, null, !dbg !3556
  br i1 %tobool6, label %if.end12, label %if.then7, !dbg !3558

if.then7:                                         ; preds = %if.end
  %dec = add nsw i32 %2, -2, !dbg !3559
  call void @llvm.dbg.value(metadata i32 %dec, metadata !3537, metadata !DIExpression()), !dbg !3543
  %idxprom8 = sext i32 %sub to i64, !dbg !3560
  %arrayidx9 = getelementptr inbounds i32, i32* %rev_post_order, i64 %idxprom8, !dbg !3560
  store i32 0, i32* %arrayidx9, align 4, !dbg !3561
  br label %if.end12, !dbg !3560

if.else:                                          ; preds = %entry
  %sub11 = add nsw i32 %2, -3, !dbg !3562
  call void @llvm.dbg.value(metadata i32 %sub11, metadata !3537, metadata !DIExpression()), !dbg !3543
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then7, %if.else
  %pre_order_num.0 = phi i32 [ 0, %if.else ], [ 1, %if.then7 ], [ 1, %if.end ], !dbg !3543
  %rev_post_order_num.1 = phi i32 [ %sub11, %if.else ], [ %dec, %if.then7 ], [ %sub, %if.end ], !dbg !3563
  call void @llvm.dbg.value(metadata i32 %rev_post_order_num.1, metadata !3537, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 %pre_order_num.0, metadata !3536, metadata !DIExpression()), !dbg !3543
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3564
  %cfg14 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !3564
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg14, align 8, !dbg !3564
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 5, !dbg !3564
  %6 = load i32, i32* %x_last_basic_block, align 8, !dbg !3564
  %call15 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %6) #6, !dbg !3565
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call15, metadata !3538, metadata !DIExpression()), !dbg !3543
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call15) #6, !dbg !3566
  call void @llvm.dbg.value(metadata i32 1, metadata !3535, metadata !DIExpression()), !dbg !3543
  %7 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3567
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #8, !dbg !3567
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3567
  %cfg20 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !3567
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg20, align 8, !dbg !3567
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 0, !dbg !3567
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3567
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i64 0, i32 1, !dbg !3567
  %call21 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3567
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3567
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call21, 0, !dbg !3567
  store i32 %12, i32* %11, align 8, !dbg !3567
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3567
  %14 = extractvalue { i32, %struct.VEC_edge_gc** } %call21, 1, !dbg !3567
  store %struct.VEC_edge_gc** %14, %struct.VEC_edge_gc*** %13, align 8, !dbg !3567
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %call, i8* nonnull align 8 %7, i64 16, i1 false), !dbg !3567
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #8, !dbg !3567
  %15 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3568
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3568
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3568
  %tobool39 = icmp eq i32* %pre_order, null, !dbg !3569
  %18 = bitcast %struct.edge_iterator* %tmp56 to i8*, !dbg !3573
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp56, i64 0, i32 0, !dbg !3573
  %20 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp56, i64 0, i32 1, !dbg !3573
  %tobool60 = icmp eq i32* %rev_post_order, null, !dbg !3575
  %tobool79 = icmp ne i32* %rev_post_order, null, !dbg !3577
  br label %while.cond, !dbg !3580

while.cond:                                       ; preds = %if.end95, %if.end12
  %sp.0 = phi i32 [ 1, %if.end12 ], [ %sp.3, %if.end95 ], !dbg !3543
  %pre_order_num.1 = phi i32 [ %pre_order_num.0, %if.end12 ], [ %pre_order_num.2, %if.end95 ], !dbg !3581
  %rev_post_order_num.2 = phi i32 [ %rev_post_order_num.1, %if.end12 ], [ %rev_post_order_num.6, %if.end95 ], !dbg !3543
  call void @llvm.dbg.value(metadata i32 %rev_post_order_num.2, metadata !3537, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 %pre_order_num.1, metadata !3536, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 %sp.0, metadata !3535, metadata !DIExpression()), !dbg !3543
  %tobool22 = icmp eq i32 %sp.0, 0, !dbg !3580
  br i1 %tobool22, label %while.end, label %while.body, !dbg !3580

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #8, !dbg !3582
  %sub23 = add nsw i32 %sp.0, -1, !dbg !3583
  %idxprom24 = sext i32 %sub23 to i64, !dbg !3584
  %arrayidx25 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %3, i64 %idxprom24, !dbg !3584
  %21 = bitcast %struct.edge_iterator* %arrayidx25 to i8*, !dbg !3584
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %15, i8* align 8 %21, i64 16, i1 false), !dbg !3584
  %22 = load i32, i32* %16, align 8, !dbg !3585
  %23 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %17, align 8, !dbg !3585
  %call26 = tail call fastcc %struct.edge_def* @ei_edge(i32 %22, %struct.VEC_edge_gc** %23) #7, !dbg !3585
  %src27 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call26, i64 0, i32 0, !dbg !3586
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %src27, align 8, !dbg !3586
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %24, metadata !3541, metadata !DIExpression()), !dbg !3568
  %call28 = tail call fastcc %struct.edge_def* @ei_edge(i32 %22, %struct.VEC_edge_gc** %23) #7, !dbg !3587
  %dest29 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call28, i64 0, i32 1, !dbg !3588
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %dest29, align 8, !dbg !3588
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %25, metadata !3542, metadata !DIExpression()), !dbg !3568
  %26 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3589
  %cfg31 = getelementptr inbounds %struct.function, %struct.function* %26, i64 0, i32 1, !dbg !3589
  %27 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg31, align 8, !dbg !3589
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %27, i64 0, i32 1, !dbg !3589
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3589
  %cmp = icmp eq %struct.basic_block_def* %25, %28, !dbg !3590
  br i1 %cmp, label %if.else68, label %land.lhs.true, !dbg !3591

land.lhs.true:                                    ; preds = %while.body
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i64 0, i32 9, !dbg !3592
  %29 = load i32, i32* %index, align 8, !dbg !3592
  %div = lshr i32 %29, 6, !dbg !3592
  %idxprom33 = zext i32 %div to i64, !dbg !3592
  %arrayidx34 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call15, i64 0, i32 3, i64 %idxprom33, !dbg !3592
  %30 = load i64, i64* %arrayidx34, align 8, !dbg !3592
  %rem = and i32 %29, 63, !dbg !3592
  %sh_prom = zext i32 %rem to i64, !dbg !3592
  %31 = shl i64 1, %sh_prom, !dbg !3592
  %32 = and i64 %30, %31, !dbg !3592
  %tobool36 = icmp eq i64 %32, 0, !dbg !3592
  br i1 %tobool36, label %if.then37, label %if.else68, !dbg !3593

if.then37:                                        ; preds = %land.lhs.true
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call15, i32 %29) #7, !dbg !3594
  br i1 %tobool39, label %if.end44, label %if.then40, !dbg !3595

if.then40:                                        ; preds = %if.then37
  %33 = load i32, i32* %index, align 8, !dbg !3596
  %idxprom42 = sext i32 %pre_order_num.1 to i64, !dbg !3597
  %arrayidx43 = getelementptr inbounds i32, i32* %pre_order, i64 %idxprom42, !dbg !3597
  store i32 %33, i32* %arrayidx43, align 4, !dbg !3598
  br label %if.end44, !dbg !3597

if.end44:                                         ; preds = %if.then37, %if.then40
  %inc45 = add nsw i32 %pre_order_num.1, 1, !dbg !3599
  call void @llvm.dbg.value(metadata i32 %inc45, metadata !3536, metadata !DIExpression()), !dbg !3543
  %succs46 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i64 0, i32 1, !dbg !3600
  %34 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs46, align 8, !dbg !3600
  %tobool47 = icmp eq %struct.VEC_edge_gc* %34, null, !dbg !3600
  br i1 %tobool47, label %cond.end, label %cond.true, !dbg !3600

cond.true:                                        ; preds = %if.end44
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %34, i64 0, i32 0, !dbg !3600
  br label %cond.end, !dbg !3600

cond.end:                                         ; preds = %if.end44, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %if.end44 ], !dbg !3600
  %call49 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3600
  %cmp50 = icmp eq i32 %call49, 0, !dbg !3601
  br i1 %cmp50, label %if.else59, label %if.then52, !dbg !3602

if.then52:                                        ; preds = %cond.end
  %inc53 = add nsw i32 %sp.0, 1, !dbg !3603
  call void @llvm.dbg.value(metadata i32 %inc53, metadata !3535, metadata !DIExpression()), !dbg !3543
  %idxprom54 = sext i32 %sp.0 to i64, !dbg !3604
  %arrayidx55 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %3, i64 %idxprom54, !dbg !3604
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #8, !dbg !3605
  %call58 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs46) #7, !dbg !3605
  %35 = extractvalue { i32, %struct.VEC_edge_gc** } %call58, 0, !dbg !3605
  store i32 %35, i32* %19, align 8, !dbg !3605
  %36 = extractvalue { i32, %struct.VEC_edge_gc** } %call58, 1, !dbg !3605
  store %struct.VEC_edge_gc** %36, %struct.VEC_edge_gc*** %20, align 8, !dbg !3605
  %37 = bitcast %struct.edge_iterator* %arrayidx55 to i8*, !dbg !3605
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* nonnull align 8 %18, i64 16, i1 false), !dbg !3605
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #8, !dbg !3605
  br label %if.end95, !dbg !3604

if.else59:                                        ; preds = %cond.end
  br i1 %tobool60, label %if.end95, label %if.then61, !dbg !3606

if.then61:                                        ; preds = %if.else59
  %38 = load i32, i32* %index, align 8, !dbg !3607
  %dec63 = add nsw i32 %rev_post_order_num.2, -1, !dbg !3608
  call void @llvm.dbg.value(metadata i32 %dec63, metadata !3537, metadata !DIExpression()), !dbg !3543
  %idxprom64 = sext i32 %rev_post_order_num.2 to i64, !dbg !3609
  %arrayidx65 = getelementptr inbounds i32, i32* %rev_post_order, i64 %idxprom64, !dbg !3609
  store i32 %38, i32* %arrayidx65, align 4, !dbg !3610
  br label %if.end95, !dbg !3609

if.else68:                                        ; preds = %land.lhs.true, %while.body
  %call69 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %22, %struct.VEC_edge_gc** %23) #7, !dbg !3611
  %tobool71 = icmp eq i8 %call69, 0, !dbg !3611
  br i1 %tobool71, label %if.end85, label %land.lhs.true72, !dbg !3612

land.lhs.true72:                                  ; preds = %if.else68
  %39 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3613
  %cfg74 = getelementptr inbounds %struct.function, %struct.function* %39, i64 0, i32 1, !dbg !3613
  %40 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg74, align 8, !dbg !3613
  %x_entry_block_ptr75 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %40, i64 0, i32 0, !dbg !3613
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr75, align 8, !dbg !3613
  %cmp76 = icmp ne %struct.basic_block_def* %24, %41, !dbg !3614
  %or.cond = and i1 %cmp76, %tobool79, !dbg !3615
  br i1 %or.cond, label %if.then80, label %if.end85, !dbg !3615

if.then80:                                        ; preds = %land.lhs.true72
  %index81 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i64 0, i32 9, !dbg !3616
  %42 = load i32, i32* %index81, align 8, !dbg !3616
  %dec82 = add nsw i32 %rev_post_order_num.2, -1, !dbg !3617
  call void @llvm.dbg.value(metadata i32 %dec82, metadata !3537, metadata !DIExpression()), !dbg !3543
  %idxprom83 = sext i32 %rev_post_order_num.2 to i64, !dbg !3618
  %arrayidx84 = getelementptr inbounds i32, i32* %rev_post_order, i64 %idxprom83, !dbg !3618
  store i32 %42, i32* %arrayidx84, align 4, !dbg !3619
  br label %if.end85, !dbg !3618

if.end85:                                         ; preds = %if.else68, %if.then80, %land.lhs.true72
  %rev_post_order_num.5 = phi i32 [ %dec82, %if.then80 ], [ %rev_post_order_num.2, %land.lhs.true72 ], [ %rev_post_order_num.2, %if.else68 ], !dbg !3543
  call void @llvm.dbg.value(metadata i32 %rev_post_order_num.5, metadata !3537, metadata !DIExpression()), !dbg !3543
  %call86 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %22, %struct.VEC_edge_gc** %23) #7, !dbg !3620
  %tobool87 = icmp eq i8 %call86, 0, !dbg !3620
  br i1 %tobool87, label %if.then88, label %if.else92, !dbg !3622

if.then88:                                        ; preds = %if.end85
  tail call fastcc void @ei_next(%struct.edge_iterator* %arrayidx25) #7, !dbg !3623
  br label %if.end95, !dbg !3623

if.else92:                                        ; preds = %if.end85
  call void @llvm.dbg.value(metadata i32 %sub23, metadata !3535, metadata !DIExpression()), !dbg !3543
  br label %if.end95

if.end95:                                         ; preds = %if.else59, %if.then88, %if.else92, %if.then52, %if.then61
  %sp.3 = phi i32 [ %inc53, %if.then52 ], [ %sp.0, %if.then61 ], [ %sp.0, %if.else59 ], [ %sub23, %if.else92 ], [ %sp.0, %if.then88 ], !dbg !3624
  %pre_order_num.2 = phi i32 [ %inc45, %if.then52 ], [ %inc45, %if.then61 ], [ %inc45, %if.else59 ], [ %pre_order_num.1, %if.else92 ], [ %pre_order_num.1, %if.then88 ], !dbg !3543
  %rev_post_order_num.6 = phi i32 [ %rev_post_order_num.2, %if.then52 ], [ %dec63, %if.then61 ], [ %rev_post_order_num.2, %if.else59 ], [ %rev_post_order_num.5, %if.else92 ], [ %rev_post_order_num.5, %if.then88 ], !dbg !3543
  call void @llvm.dbg.value(metadata i32 %rev_post_order_num.6, metadata !3537, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 %pre_order_num.2, metadata !3536, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 %sp.3, metadata !3535, metadata !DIExpression()), !dbg !3543
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #8, !dbg !3625
  br label %while.cond, !dbg !3580, !llvm.loop !3626

while.end:                                        ; preds = %while.cond
  %pre_order_num.1.lcssa = phi i32 [ %pre_order_num.1, %while.cond ], !dbg !3581
  %rev_post_order_num.2.lcssa = phi i32 [ %rev_post_order_num.2, %while.cond ], !dbg !3543
  call void @llvm.dbg.value(metadata i32 %pre_order_num.1.lcssa, metadata !3536, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 %rev_post_order_num.2.lcssa, metadata !3537, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 %pre_order_num.1.lcssa, metadata !3536, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 %rev_post_order_num.2.lcssa, metadata !3537, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 %pre_order_num.1.lcssa, metadata !3536, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 %rev_post_order_num.2.lcssa, metadata !3537, metadata !DIExpression()), !dbg !3543
  tail call void @free(i8* %call) #6, !dbg !3627
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call15, i64 0, i32 0, !dbg !3628
  %43 = load i8*, i8** %popcount, align 8, !dbg !3628
  tail call void @free(i8* %43) #6, !dbg !3628
  %44 = bitcast %struct.simple_bitmap_def* %call15 to i8*, !dbg !3628
  tail call void @free(i8* %44) #6, !dbg !3628
  br i1 %tobool, label %if.else119, label %if.then97, !dbg !3629

if.then97:                                        ; preds = %while.end
  br i1 %tobool39, label %if.end102, label %if.then99, !dbg !3630

if.then99:                                        ; preds = %if.then97
  %idxprom100 = sext i32 %pre_order_num.1.lcssa to i64, !dbg !3633
  %arrayidx101 = getelementptr inbounds i32, i32* %pre_order, i64 %idxprom100, !dbg !3633
  store i32 1, i32* %arrayidx101, align 4, !dbg !3635
  br label %if.end102, !dbg !3633

if.end102:                                        ; preds = %if.then97, %if.then99
  %inc103 = add nsw i32 %pre_order_num.1.lcssa, 1, !dbg !3636
  call void @llvm.dbg.value(metadata i32 %inc103, metadata !3536, metadata !DIExpression()), !dbg !3543
  br i1 %tobool60, label %if.end109, label %if.then105, !dbg !3637

if.then105:                                       ; preds = %if.end102
  call void @llvm.dbg.value(metadata i32 %rev_post_order_num.2.lcssa, metadata !3537, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3543
  %idxprom107 = sext i32 %rev_post_order_num.2.lcssa to i64, !dbg !3638
  %arrayidx108 = getelementptr inbounds i32, i32* %rev_post_order, i64 %idxprom107, !dbg !3638
  store i32 1, i32* %arrayidx108, align 4, !dbg !3640
  br label %if.end109, !dbg !3638

if.end109:                                        ; preds = %if.end102, %if.then105
  %45 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3641
  %cfg111 = getelementptr inbounds %struct.function, %struct.function* %45, i64 0, i32 1, !dbg !3641
  %46 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg111, align 8, !dbg !3641
  %x_n_basic_blocks112 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %46, i64 0, i32 3, !dbg !3641
  %47 = load i32, i32* %x_n_basic_blocks112, align 8, !dbg !3641
  %cmp113 = icmp eq i32 %inc103, %47, !dbg !3641
  br i1 %cmp113, label %if.end130, label %cond.true115, !dbg !3641

cond.true115:                                     ; preds = %if.end109
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 1040, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !3641
  br label %if.end130, !dbg !3641

if.else119:                                       ; preds = %while.end
  %48 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3642
  %cfg121 = getelementptr inbounds %struct.function, %struct.function* %48, i64 0, i32 1, !dbg !3642
  %49 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg121, align 8, !dbg !3642
  %x_n_basic_blocks122 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %49, i64 0, i32 3, !dbg !3642
  %50 = load i32, i32* %x_n_basic_blocks122, align 8, !dbg !3642
  %sub123 = add nsw i32 %50, -2, !dbg !3642
  %cmp124 = icmp eq i32 %pre_order_num.1.lcssa, %sub123, !dbg !3642
  br i1 %cmp124, label %if.end130, label %cond.true126, !dbg !3642

cond.true126:                                     ; preds = %if.else119
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 1045, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !3642
  br label %if.end130, !dbg !3642

if.end130:                                        ; preds = %cond.true126, %if.else119, %cond.true115, %if.end109
  %pre_order_num.3 = phi i32 [ %inc103, %if.end109 ], [ %inc103, %cond.true115 ], [ %pre_order_num.1.lcssa, %if.else119 ], [ %pre_order_num.1.lcssa, %cond.true126 ], !dbg !3543
  call void @llvm.dbg.value(metadata i32 %pre_order_num.3, metadata !3536, metadata !DIExpression()), !dbg !3543
  ret i32 %pre_order_num.3, !dbg !3643
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dfs_enumerate_from(%struct.basic_block_def* %bb, i32 %reverse, i8 (%struct.basic_block_def*, i8*)* %predicate, %struct.basic_block_def** %rslt, i32 %rslt_max, i8* %data) local_unnamed_addr #4 !dbg !2 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp47 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !1610, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %reverse, metadata !1611, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i8 (%struct.basic_block_def*, i8*)* %predicate, metadata !1612, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %rslt, metadata !1613, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %rslt_max, metadata !1614, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i8* %data, metadata !1615, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 0, metadata !1618, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 0, metadata !1619, metadata !DIExpression()), !dbg !3644
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3645
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3645
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3645
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !3645
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !3645
  call void @llvm.dbg.value(metadata i32 %2, metadata !1620, metadata !DIExpression()), !dbg !3644
  %3 = icmp ugt i32 %2, 10, !dbg !3646
  %spec.select = select i1 %3, i32 %2, i32 10, !dbg !3646
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1620, metadata !DIExpression()), !dbg !3644
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @dfs_enumerate_from.visited, align 8, !dbg !3647
  %tobool = icmp eq %struct.simple_bitmap_def* %4, null, !dbg !3647
  br i1 %tobool, label %if.then1, label %if.else, !dbg !3649

if.then1:                                         ; preds = %entry
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %spec.select) #6, !dbg !3650
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** @dfs_enumerate_from.visited, align 8, !dbg !3652
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call) #6, !dbg !3653
  store i32 %spec.select, i32* @dfs_enumerate_from.v_size, align 4, !dbg !3654
  br label %if.end10, !dbg !3655

if.else:                                          ; preds = %entry
  %5 = load i32, i32* @dfs_enumerate_from.v_size, align 4, !dbg !3656
  %cmp2 = icmp ult i32 %5, %spec.select, !dbg !3658
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !3659

if.then3:                                         ; preds = %if.else
  %mul = shl i32 %5, 1, !dbg !3660
  %cmp4 = icmp ugt i32 %mul, %spec.select, !dbg !3663
  %size.1 = select i1 %cmp4, i32 %mul, i32 %spec.select, !dbg !3664
  call void @llvm.dbg.value(metadata i32 %size.1, metadata !1620, metadata !DIExpression()), !dbg !3644
  %call8 = tail call %struct.simple_bitmap_def* @sbitmap_resize(%struct.simple_bitmap_def* nonnull %4, i32 %size.1, i32 0) #6, !dbg !3665
  store %struct.simple_bitmap_def* %call8, %struct.simple_bitmap_def** @dfs_enumerate_from.visited, align 8, !dbg !3666
  store i32 %size.1, i32* @dfs_enumerate_from.v_size, align 4, !dbg !3667
  br label %if.end10, !dbg !3668

if.end10:                                         ; preds = %if.else, %if.then3, %if.then1
  %conv = sext i32 %rslt_max to i64, !dbg !3669
  %call11 = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !3669
  %6 = bitcast i8* %call11 to %struct.basic_block_def**, !dbg !3669
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %6, metadata !1616, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 1, metadata !1618, metadata !DIExpression()), !dbg !3644
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %6, align 8, !dbg !3670
  call void @llvm.dbg.value(metadata i32 1, metadata !1619, metadata !DIExpression()), !dbg !3644
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %rslt, align 8, !dbg !3671
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @dfs_enumerate_from.visited, align 8, !dbg !3672
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3672
  %8 = load i32, i32* %index, align 8, !dbg !3672
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %7, i32 %8) #7, !dbg !3672
  %9 = bitcast %struct.edge_def** %e to i8*, !dbg !3673
  %10 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3673
  %tobool18 = icmp eq i32 %reverse, 0, !dbg !3674
  %11 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3676
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3676
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3676
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3679
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3679
  %16 = bitcast %struct.edge_def** %e to i64**, !dbg !3681
  %17 = bitcast %struct.edge_iterator* %tmp47 to i8*, !dbg !3684
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp47, i64 0, i32 0, !dbg !3684
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp47, i64 0, i32 1, !dbg !3684
  br label %while.cond, !dbg !3687

while.cond:                                       ; preds = %if.end89, %if.end10
  %sp.0 = phi i32 [ 1, %if.end10 ], [ %sp.5, %if.end89 ], !dbg !3644
  %tv.0 = phi i32 [ 1, %if.end10 ], [ %tv.5, %if.end89 ], !dbg !3688
  call void @llvm.dbg.value(metadata i32 %tv.0, metadata !1619, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %sp.0, metadata !1618, metadata !DIExpression()), !dbg !3644
  %tobool15 = icmp eq i32 %sp.0, 0, !dbg !3687
  br i1 %tobool15, label %while.end, label %while.body, !dbg !3687

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #8, !dbg !3689
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #8, !dbg !3690
  %dec = add nsw i32 %sp.0, -1, !dbg !3691
  call void @llvm.dbg.value(metadata i32 %dec, metadata !1618, metadata !DIExpression()), !dbg !3644
  %idxprom16 = sext i32 %dec to i64, !dbg !3692
  %arrayidx17 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %6, i64 %idxprom16, !dbg !3692
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx17, align 8, !dbg !3692
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %20, metadata !1617, metadata !DIExpression()), !dbg !3644
  br i1 %tobool18, label %if.else46, label %if.then19, !dbg !3693

if.then19:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #8, !dbg !3694
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i64 0, i32 0, !dbg !3694
  %call20 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3694
  %21 = extractvalue { i32, %struct.VEC_edge_gc** } %call20, 0, !dbg !3694
  store i32 %21, i32* %12, align 8, !dbg !3694
  %22 = extractvalue { i32, %struct.VEC_edge_gc** } %call20, 1, !dbg !3694
  store %struct.VEC_edge_gc** %22, %struct.VEC_edge_gc*** %13, align 8, !dbg !3694
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %10, i8* nonnull align 8 %11, i64 16, i1 false), !dbg !3694
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #8, !dbg !3694
  br label %for.cond, !dbg !3694

for.cond:                                         ; preds = %for.inc, %if.then19
  %sp.1 = phi i32 [ %dec, %if.then19 ], [ %sp.2, %for.inc ], !dbg !3691
  %tv.1 = phi i32 [ %tv.0, %if.then19 ], [ %tv.2, %for.inc ], !dbg !3688
  call void @llvm.dbg.value(metadata i32 %tv.1, metadata !1619, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %sp.1, metadata !1618, metadata !DIExpression()), !dbg !3644
  %23 = load i32, i32* %14, align 8, !dbg !3695
  %24 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %15, align 8, !dbg !3695
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !1621, metadata !DIExpression(DW_OP_deref)), !dbg !3673
  %call21 = call fastcc zeroext i8 @ei_cond(i32 %23, %struct.VEC_edge_gc** %24, %struct.edge_def** nonnull %e) #7, !dbg !3695
  %tobool22 = icmp eq i8 %call21, 0, !dbg !3694
  br i1 %tobool22, label %if.end89.loopexit1, label %for.body, !dbg !3694

for.body:                                         ; preds = %for.cond
  %25 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @dfs_enumerate_from.visited, align 8, !dbg !3696
  %26 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3696
  call void @llvm.dbg.value(metadata %struct.edge_def* %26, metadata !1621, metadata !DIExpression()), !dbg !3673
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i64 0, i32 0, !dbg !3696
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3696
  %index23 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i64 0, i32 9, !dbg !3696
  %28 = load i32, i32* %index23, align 8, !dbg !3696
  %div = lshr i32 %28, 6, !dbg !3696
  %idxprom24 = zext i32 %div to i64, !dbg !3696
  %arrayidx25 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %25, i64 0, i32 3, i64 %idxprom24, !dbg !3696
  %29 = load i64, i64* %arrayidx25, align 8, !dbg !3696
  call void @llvm.dbg.value(metadata %struct.edge_def* %26, metadata !1621, metadata !DIExpression()), !dbg !3673
  %rem = and i32 %28, 63, !dbg !3696
  %sh_prom = zext i32 %rem to i64, !dbg !3696
  %30 = shl i64 1, %sh_prom, !dbg !3696
  %31 = and i64 %29, %30, !dbg !3696
  %tobool28 = icmp eq i64 %31, 0, !dbg !3696
  br i1 %tobool28, label %land.lhs.true, label %for.inc, !dbg !3697

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %26, metadata !1621, metadata !DIExpression()), !dbg !3673
  %call30 = call zeroext i8 %predicate(%struct.basic_block_def* %27, i8* %data) #6, !dbg !3698
  %tobool32 = icmp eq i8 %call30, 0, !dbg !3698
  br i1 %tobool32, label %for.inc, label %if.then33, !dbg !3699

if.then33:                                        ; preds = %land.lhs.true
  %cmp34 = icmp eq i32 %tv.1, %rslt_max, !dbg !3700
  br i1 %cmp34, label %cond.true, label %cond.end, !dbg !3700

cond.true:                                        ; preds = %if.then33
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 1207, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !3700
  br label %cond.end, !dbg !3700

cond.end:                                         ; preds = %if.then33, %cond.true
  %32 = load i64*, i64** %16, align 8, !dbg !3701
  %33 = load i64, i64* %32, align 8, !dbg !3702
  %inc37 = add nsw i32 %sp.1, 1, !dbg !3703
  call void @llvm.dbg.value(metadata i32 %inc37, metadata !1618, metadata !DIExpression()), !dbg !3644
  %idxprom38 = sext i32 %sp.1 to i64, !dbg !3704
  %arrayidx39 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %6, i64 %idxprom38, !dbg !3704
  %34 = bitcast %struct.basic_block_def** %arrayidx39 to i64*, !dbg !3705
  store i64 %33, i64* %34, align 8, !dbg !3705
  %inc40 = add nsw i32 %tv.1, 1, !dbg !3706
  call void @llvm.dbg.value(metadata i32 %inc40, metadata !1619, metadata !DIExpression()), !dbg !3644
  %idxprom41 = sext i32 %tv.1 to i64, !dbg !3707
  %arrayidx42 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %rslt, i64 %idxprom41, !dbg !3707
  %35 = bitcast %struct.basic_block_def** %arrayidx42 to i64*, !dbg !3708
  store i64 %33, i64* %35, align 8, !dbg !3708
  %36 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @dfs_enumerate_from.visited, align 8, !dbg !3709
  %37 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3709
  call void @llvm.dbg.value(metadata %struct.edge_def* %37, metadata !1621, metadata !DIExpression()), !dbg !3673
  %src43 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %37, i64 0, i32 0, !dbg !3709
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %src43, align 8, !dbg !3709
  %index44 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %38, i64 0, i32 9, !dbg !3709
  %39 = load i32, i32* %index44, align 8, !dbg !3709
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %36, i32 %39) #7, !dbg !3709
  br label %for.inc, !dbg !3710

for.inc:                                          ; preds = %land.lhs.true, %for.body, %cond.end
  %sp.2 = phi i32 [ %sp.1, %for.body ], [ %inc37, %cond.end ], [ %sp.1, %land.lhs.true ], !dbg !3673
  %tv.2 = phi i32 [ %tv.1, %for.body ], [ %inc40, %cond.end ], [ %tv.1, %land.lhs.true ], !dbg !3644
  call void @llvm.dbg.value(metadata i32 %tv.2, metadata !1619, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %sp.2, metadata !1618, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !1623, metadata !DIExpression(DW_OP_deref)), !dbg !3673
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3695
  br label %for.cond, !dbg !3695, !llvm.loop !3711

if.else46:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #8, !dbg !3713
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i64 0, i32 1, !dbg !3713
  %call48 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3713
  %40 = extractvalue { i32, %struct.VEC_edge_gc** } %call48, 0, !dbg !3713
  store i32 %40, i32* %18, align 8, !dbg !3713
  %41 = extractvalue { i32, %struct.VEC_edge_gc** } %call48, 1, !dbg !3713
  store %struct.VEC_edge_gc** %41, %struct.VEC_edge_gc*** %19, align 8, !dbg !3713
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %10, i8* nonnull align 8 %17, i64 16, i1 false), !dbg !3713
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #8, !dbg !3713
  br label %for.cond49, !dbg !3713

for.cond49:                                       ; preds = %for.inc87, %if.else46
  %sp.3 = phi i32 [ %dec, %if.else46 ], [ %sp.4, %for.inc87 ], !dbg !3691
  %tv.3 = phi i32 [ %tv.0, %if.else46 ], [ %tv.4, %for.inc87 ], !dbg !3688
  call void @llvm.dbg.value(metadata i32 %tv.3, metadata !1619, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %sp.3, metadata !1618, metadata !DIExpression()), !dbg !3644
  %42 = load i32, i32* %14, align 8, !dbg !3714
  %43 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %15, align 8, !dbg !3714
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !1621, metadata !DIExpression(DW_OP_deref)), !dbg !3673
  %call50 = call fastcc zeroext i8 @ei_cond(i32 %42, %struct.VEC_edge_gc** %43, %struct.edge_def** nonnull %e) #7, !dbg !3714
  %tobool51 = icmp eq i8 %call50, 0, !dbg !3713
  br i1 %tobool51, label %if.end89.loopexit, label %for.body52, !dbg !3713

for.body52:                                       ; preds = %for.cond49
  %44 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @dfs_enumerate_from.visited, align 8, !dbg !3716
  %45 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3716
  call void @llvm.dbg.value(metadata %struct.edge_def* %45, metadata !1621, metadata !DIExpression()), !dbg !3673
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %45, i64 0, i32 1, !dbg !3716
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3716
  %index54 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %46, i64 0, i32 9, !dbg !3716
  %47 = load i32, i32* %index54, align 8, !dbg !3716
  %div55 = lshr i32 %47, 6, !dbg !3716
  %idxprom56 = zext i32 %div55 to i64, !dbg !3716
  %arrayidx57 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %44, i64 0, i32 3, i64 %idxprom56, !dbg !3716
  %48 = load i64, i64* %arrayidx57, align 8, !dbg !3716
  call void @llvm.dbg.value(metadata %struct.edge_def* %45, metadata !1621, metadata !DIExpression()), !dbg !3673
  %rem60 = and i32 %47, 63, !dbg !3716
  %sh_prom61 = zext i32 %rem60 to i64, !dbg !3716
  %49 = shl i64 1, %sh_prom61, !dbg !3716
  %50 = and i64 %48, %49, !dbg !3716
  %tobool64 = icmp eq i64 %50, 0, !dbg !3716
  br i1 %tobool64, label %land.lhs.true65, label %for.inc87, !dbg !3718

land.lhs.true65:                                  ; preds = %for.body52
  call void @llvm.dbg.value(metadata %struct.edge_def* %45, metadata !1621, metadata !DIExpression()), !dbg !3673
  %call67 = call zeroext i8 %predicate(%struct.basic_block_def* %46, i8* %data) #6, !dbg !3719
  %tobool69 = icmp eq i8 %call67, 0, !dbg !3719
  br i1 %tobool69, label %for.inc87, label %if.then70, !dbg !3720

if.then70:                                        ; preds = %land.lhs.true65
  %cmp71 = icmp eq i32 %tv.3, %rslt_max, !dbg !3721
  br i1 %cmp71, label %cond.true73, label %cond.end75, !dbg !3721

cond.true73:                                      ; preds = %if.then70
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 1217, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !3721
  br label %cond.end75, !dbg !3721

cond.end75:                                       ; preds = %if.then70, %cond.true73
  %51 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3723
  call void @llvm.dbg.value(metadata %struct.edge_def* %51, metadata !1621, metadata !DIExpression()), !dbg !3673
  %dest77 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %51, i64 0, i32 1, !dbg !3724
  %52 = bitcast %struct.basic_block_def** %dest77 to i64*, !dbg !3724
  %53 = load i64, i64* %52, align 8, !dbg !3724
  %inc78 = add nsw i32 %sp.3, 1, !dbg !3725
  call void @llvm.dbg.value(metadata i32 %inc78, metadata !1618, metadata !DIExpression()), !dbg !3644
  %idxprom79 = sext i32 %sp.3 to i64, !dbg !3726
  %arrayidx80 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %6, i64 %idxprom79, !dbg !3726
  %54 = bitcast %struct.basic_block_def** %arrayidx80 to i64*, !dbg !3727
  store i64 %53, i64* %54, align 8, !dbg !3727
  %inc81 = add nsw i32 %tv.3, 1, !dbg !3728
  call void @llvm.dbg.value(metadata i32 %inc81, metadata !1619, metadata !DIExpression()), !dbg !3644
  %idxprom82 = sext i32 %tv.3 to i64, !dbg !3729
  %arrayidx83 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %rslt, i64 %idxprom82, !dbg !3729
  %55 = bitcast %struct.basic_block_def** %arrayidx83 to i64*, !dbg !3730
  store i64 %53, i64* %55, align 8, !dbg !3730
  %56 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @dfs_enumerate_from.visited, align 8, !dbg !3731
  %57 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3731
  call void @llvm.dbg.value(metadata %struct.edge_def* %57, metadata !1621, metadata !DIExpression()), !dbg !3673
  %dest84 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %57, i64 0, i32 1, !dbg !3731
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %dest84, align 8, !dbg !3731
  %index85 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i64 0, i32 9, !dbg !3731
  %59 = load i32, i32* %index85, align 8, !dbg !3731
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %56, i32 %59) #7, !dbg !3731
  br label %for.inc87, !dbg !3732

for.inc87:                                        ; preds = %land.lhs.true65, %for.body52, %cond.end75
  %sp.4 = phi i32 [ %sp.3, %for.body52 ], [ %inc78, %cond.end75 ], [ %sp.3, %land.lhs.true65 ], !dbg !3673
  %tv.4 = phi i32 [ %tv.3, %for.body52 ], [ %inc81, %cond.end75 ], [ %tv.3, %land.lhs.true65 ], !dbg !3644
  call void @llvm.dbg.value(metadata i32 %tv.4, metadata !1619, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %sp.4, metadata !1618, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !1623, metadata !DIExpression(DW_OP_deref)), !dbg !3673
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3714
  br label %for.cond49, !dbg !3714, !llvm.loop !3733

if.end89.loopexit:                                ; preds = %for.cond49
  %sp.3.lcssa = phi i32 [ %sp.3, %for.cond49 ], !dbg !3691
  %tv.3.lcssa = phi i32 [ %tv.3, %for.cond49 ], !dbg !3688
  call void @llvm.dbg.value(metadata i32 %sp.3.lcssa, metadata !1618, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %tv.3.lcssa, metadata !1619, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %sp.3.lcssa, metadata !1618, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %tv.3.lcssa, metadata !1619, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %sp.3.lcssa, metadata !1618, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %tv.3.lcssa, metadata !1619, metadata !DIExpression()), !dbg !3644
  br label %if.end89, !dbg !3735

if.end89.loopexit1:                               ; preds = %for.cond
  %sp.1.lcssa = phi i32 [ %sp.1, %for.cond ], !dbg !3691
  %tv.1.lcssa = phi i32 [ %tv.1, %for.cond ], !dbg !3688
  call void @llvm.dbg.value(metadata i32 %sp.1.lcssa, metadata !1618, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %tv.1.lcssa, metadata !1619, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %sp.1.lcssa, metadata !1618, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %tv.1.lcssa, metadata !1619, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %sp.1.lcssa, metadata !1618, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %tv.1.lcssa, metadata !1619, metadata !DIExpression()), !dbg !3644
  br label %if.end89, !dbg !3735

if.end89:                                         ; preds = %if.end89.loopexit1, %if.end89.loopexit
  %sp.5 = phi i32 [ %sp.3.lcssa, %if.end89.loopexit ], [ %sp.1.lcssa, %if.end89.loopexit1 ], !dbg !3691
  %tv.5 = phi i32 [ %tv.3.lcssa, %if.end89.loopexit ], [ %tv.1.lcssa, %if.end89.loopexit1 ], !dbg !3688
  call void @llvm.dbg.value(metadata i32 %tv.5, metadata !1619, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %sp.5, metadata !1618, metadata !DIExpression()), !dbg !3644
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #8, !dbg !3735
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #8, !dbg !3735
  br label %while.cond, !dbg !3687, !llvm.loop !3736

while.end:                                        ; preds = %while.cond
  %tv.0.lcssa = phi i32 [ %tv.0, %while.cond ], !dbg !3688
  call void @llvm.dbg.value(metadata i32 %tv.0.lcssa, metadata !1619, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %tv.0.lcssa, metadata !1619, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %tv.0.lcssa, metadata !1619, metadata !DIExpression()), !dbg !3644
  call void @free(i8* %call11) #6, !dbg !3737
  call void @llvm.dbg.value(metadata i32 0, metadata !1618, metadata !DIExpression()), !dbg !3644
  %60 = sext i32 %tv.0.lcssa to i64, !dbg !3738
  br label %for.cond90, !dbg !3738

for.cond90:                                       ; preds = %for.body93, %while.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body93 ], [ 0, %while.end ], !dbg !3740
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1618, metadata !DIExpression()), !dbg !3644
  %cmp91 = icmp slt i64 %indvars.iv, %60, !dbg !3741
  br i1 %cmp91, label %for.body93, label %for.end99, !dbg !3743

for.body93:                                       ; preds = %for.cond90
  %61 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @dfs_enumerate_from.visited, align 8, !dbg !3744
  %arrayidx95 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %rslt, i64 %indvars.iv, !dbg !3744
  %62 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx95, align 8, !dbg !3744
  %index96 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %62, i64 0, i32 9, !dbg !3744
  %63 = load i32, i32* %index96, align 8, !dbg !3744
  call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %61, i32 %63) #7, !dbg !3744
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3745
  call void @llvm.dbg.value(metadata i32 undef, metadata !1618, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3644
  br label %for.cond90, !dbg !3746, !llvm.loop !3747

for.end99:                                        ; preds = %for.cond90
  ret i32 %tv.0.lcssa, !dbg !3749
}

declare dso_local %struct.simple_bitmap_def* @sbitmap_resize(%struct.simple_bitmap_def*, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @RESET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !3750 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !3752, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !3753, metadata !DIExpression()), !dbg !3757
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !3758
  %0 = load i8*, i8** %popcount, align 8, !dbg !3758
  %tobool = icmp eq i8* %0, null, !dbg !3759
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !3760

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !3761
  %.pre2 = zext i32 %.pre to i64, !dbg !3762
  %.pre3 = shl i64 1, %.pre2, !dbg !3762
  %.pre4 = lshr i32 %bitno, 6, !dbg !3763
  %.pre5 = zext i32 %.pre4 to i64, !dbg !3764
  br label %if.end7, !dbg !3760

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !3765
  %idxprom = zext i32 %div to i64, !dbg !3765
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !3765
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3765
  %rem = and i32 %bitno, 63, !dbg !3765
  %sh_prom = zext i32 %rem to i64, !dbg !3765
  %2 = shl i64 1, %sh_prom, !dbg !3766
  %3 = and i64 %1, %2, !dbg !3766
  %tobool1 = icmp eq i64 %3, 0, !dbg !3766
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !3768

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !3769
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !3770
  %dec = add i8 %4, -1, !dbg !3770
  store i8 %dec, i8* %arrayidx6, align 1, !dbg !3770
  br label %if.end7, !dbg !3769

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !3764
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !3762
  %neg = xor i64 %shl.pre-phi, -1, !dbg !3771
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !3764
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !3772
  %and14 = and i64 %5, %neg, !dbg !3772
  store i64 %and14, i64* %arrayidx13, align 8, !dbg !3772
  ret void, !dbg !3773
}

; Function Attrs: nounwind uwtable
define dso_local void @compute_dominance_frontiers(%struct.bitmap_head_def** %frontiers) local_unnamed_addr #4 !dbg !3774 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %frontiers, metadata !3780, metadata !DIExpression()), !dbg !3781
  %0 = load i8, i8* @timevar_enable, align 1, !dbg !3782
  %tobool = icmp eq i8 %0, 0, !dbg !3782
  br i1 %tobool, label %do.end, label %if.then, !dbg !3785

if.then:                                          ; preds = %entry
  tail call void @timevar_push_1(i32 111) #6, !dbg !3782
  br label %do.end, !dbg !3782

do.end:                                           ; preds = %entry, %if.then
  tail call fastcc void @compute_dominance_frontiers_1(%struct.bitmap_head_def** %frontiers) #7, !dbg !3786
  %1 = load i8, i8* @timevar_enable, align 1, !dbg !3787
  %tobool2 = icmp eq i8 %1, 0, !dbg !3787
  br i1 %tobool2, label %do.end5, label %if.then3, !dbg !3790

if.then3:                                         ; preds = %do.end
  tail call void @timevar_pop_1(i32 111) #6, !dbg !3787
  br label %do.end5, !dbg !3787

do.end5:                                          ; preds = %do.end, %if.then3
  ret void, !dbg !3791
}

declare dso_local void @timevar_push_1(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_dominance_frontiers_1(%struct.bitmap_head_def** %frontiers) unnamed_addr #4 !dbg !3792 {
entry:
  %p = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %frontiers, metadata !3794, metadata !DIExpression()), !dbg !3808
  %0 = bitcast %struct.edge_def** %p to i8*, !dbg !3809
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3809
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3810
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3810
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3811
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !3811
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3811
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !3811
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3811
  %5 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3812
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3812
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3812
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3813
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3813
  br label %for.cond, !dbg !3811

for.cond:                                         ; preds = %for.inc31, %entry
  %10 = phi %struct.control_flow_graph* [ %3, %entry ], [ %.pre1, %for.inc31 ], !dbg !3814
  %.pn = phi %struct.basic_block_def* [ %4, %entry ], [ %b.0, %for.inc31 ]
  %b.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3815
  %b.0 = load %struct.basic_block_def*, %struct.basic_block_def** %b.0.in, align 8, !dbg !3815
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %b.0, metadata !3797, metadata !DIExpression()), !dbg !3808
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 1, !dbg !3814
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3814
  %cmp = icmp eq %struct.basic_block_def* %b.0, %11, !dbg !3814
  br i1 %cmp, label %for.end33, label %for.body, !dbg !3811

for.body:                                         ; preds = %for.cond
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b.0, i64 0, i32 0, !dbg !3816
  %12 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3816
  %tobool = icmp eq %struct.VEC_edge_gc* %12, null, !dbg !3816
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3816

cond.true:                                        ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %12, i64 0, i32 0, !dbg !3816
  br label %cond.end, !dbg !3816

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %for.body ], !dbg !3816
  %call = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3816
  %cmp4 = icmp ugt i32 %call, 1, !dbg !3817
  br i1 %cmp4, label %if.then, label %for.inc31, !dbg !3818

if.then:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8, !dbg !3819
  %call6 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3819
  %13 = extractvalue { i32, %struct.VEC_edge_gc** } %call6, 0, !dbg !3819
  store i32 %13, i32* %6, align 8, !dbg !3819
  %14 = extractvalue { i32, %struct.VEC_edge_gc** } %call6, 1, !dbg !3819
  store %struct.VEC_edge_gc** %14, %struct.VEC_edge_gc*** %7, align 8, !dbg !3819
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !3819
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8, !dbg !3819
  %index18 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b.0, i64 0, i32 9, !dbg !3820
  br label %for.cond7, !dbg !3819

for.cond7:                                        ; preds = %cleanup, %if.then
  %15 = load i32, i32* %8, align 8, !dbg !3823
  %16 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !3823
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !3795, metadata !DIExpression(DW_OP_deref)), !dbg !3808
  %call8 = call fastcc zeroext i8 @ei_cond(i32 %15, %struct.VEC_edge_gc** %16, %struct.edge_def** nonnull %p) #7, !dbg !3823
  %tobool9 = icmp eq i8 %call8, 0, !dbg !3819
  br i1 %tobool9, label %for.inc31.loopexit, label %for.body10, !dbg !3819

for.body10:                                       ; preds = %for.cond7
  %17 = load %struct.edge_def*, %struct.edge_def** %p, align 8, !dbg !3824
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !3795, metadata !DIExpression()), !dbg !3808
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i64 0, i32 0, !dbg !3825
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3825
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %18, metadata !3798, metadata !DIExpression()), !dbg !3826
  %19 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3827
  %cfg12 = getelementptr inbounds %struct.function, %struct.function* %19, i64 0, i32 1, !dbg !3827
  %20 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg12, align 8, !dbg !3827
  %x_entry_block_ptr13 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %20, i64 0, i32 0, !dbg !3827
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr13, align 8, !dbg !3827
  %cmp14 = icmp eq %struct.basic_block_def* %18, %21, !dbg !3829
  br i1 %cmp14, label %cleanup, label %if.end, !dbg !3830

if.end:                                           ; preds = %for.body10
  %call16 = call %struct.basic_block_def* @get_immediate_dominator(i32 1, %struct.basic_block_def* %b.0) #6, !dbg !3831
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call16, metadata !3807, metadata !DIExpression()), !dbg !3826
  br label %while.cond, !dbg !3832

while.cond:                                       ; preds = %if.end22, %if.end
  %runner.0 = phi %struct.basic_block_def* [ %18, %if.end ], [ %call28, %if.end22 ], !dbg !3826
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %runner.0, metadata !3798, metadata !DIExpression()), !dbg !3826
  %cmp17 = icmp eq %struct.basic_block_def* %runner.0, %call16, !dbg !3833
  br i1 %cmp17, label %cleanup.loopexit, label %while.body, !dbg !3832

while.body:                                       ; preds = %while.cond
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %runner.0, i64 0, i32 9, !dbg !3834
  %22 = load i32, i32* %index, align 8, !dbg !3834
  %idxprom = sext i32 %22 to i64, !dbg !3835
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %frontiers, i64 %idxprom, !dbg !3835
  %23 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !3835
  %24 = load i32, i32* %index18, align 8, !dbg !3836
  %call19 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %23, i32 %24) #6, !dbg !3837
  %tobool20 = icmp eq i32 %call19, 0, !dbg !3837
  br i1 %tobool20, label %if.end22, label %cleanup.loopexit, !dbg !3838

if.end22:                                         ; preds = %while.body
  %25 = load i32, i32* %index, align 8, !dbg !3839
  %idxprom24 = sext i32 %25 to i64, !dbg !3840
  %arrayidx25 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %frontiers, i64 %idxprom24, !dbg !3840
  %26 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx25, align 8, !dbg !3840
  %27 = load i32, i32* %index18, align 8, !dbg !3841
  %call27 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %26, i32 %27) #6, !dbg !3842
  %call28 = call %struct.basic_block_def* @get_immediate_dominator(i32 1, %struct.basic_block_def* %runner.0) #6, !dbg !3843
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call28, metadata !3798, metadata !DIExpression()), !dbg !3826
  br label %while.cond, !dbg !3832, !llvm.loop !3844

cleanup.loopexit:                                 ; preds = %while.cond, %while.body
  br label %cleanup, !dbg !3823

cleanup:                                          ; preds = %cleanup.loopexit, %for.body10
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3796, metadata !DIExpression(DW_OP_deref)), !dbg !3808
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3823
  br label %for.cond7, !dbg !3823, !llvm.loop !3846

for.inc31.loopexit:                               ; preds = %for.cond7
  br label %for.inc31, !dbg !3814

for.inc31:                                        ; preds = %for.inc31.loopexit, %cond.end
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3814
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3848
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !3814
  br label %for.cond, !dbg !3814, !llvm.loop !3849

for.end33:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3851
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3851
  ret void, !dbg !3851
}

declare dso_local void @timevar_pop_1(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.bitmap_head_def* @compute_idf(%struct.bitmap_head_def* %def_blocks, %struct.bitmap_head_def** %dfs) local_unnamed_addr #4 !dbg !3852 {
entry:
  %bi = alloca %struct.bitmap_iterator, align 8
  %bb_index = alloca i32, align 4
  %i = alloca i32, align 4
  %work_stack = alloca %struct.VEC_int_heap*, align 8
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %def_blocks, metadata !3856, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %dfs, metadata !3857, metadata !DIExpression()), !dbg !3870
  %0 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !3871
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !3871
  %1 = bitcast i32* %bb_index to i8*, !dbg !3872
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !3872
  %2 = bitcast i32* %i to i8*, !dbg !3872
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8, !dbg !3872
  %3 = bitcast %struct.VEC_int_heap** %work_stack to i8*, !dbg !3873
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !3873
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3874
  %cfg = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !3874
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3874
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 3, !dbg !3874
  %6 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !3874
  %call = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %6) #7, !dbg !3874
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %call, metadata !3868, metadata !DIExpression()), !dbg !3870
  store %struct.VEC_int_heap* %call, %struct.VEC_int_heap** %work_stack, align 8, !dbg !3875
  %call1 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3876
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call1, metadata !3869, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3858, metadata !DIExpression(DW_OP_deref)), !dbg !3870
  call void @llvm.dbg.value(metadata i32* %bb_index, metadata !3866, metadata !DIExpression(DW_OP_deref)), !dbg !3870
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %def_blocks, i32 0, i32* nonnull %bb_index) #7, !dbg !3877
  br label %for.cond, !dbg !3877

for.cond:                                         ; preds = %for.body, %entry
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3858, metadata !DIExpression(DW_OP_deref)), !dbg !3870
  call void @llvm.dbg.value(metadata i32* %bb_index, metadata !3866, metadata !DIExpression(DW_OP_deref)), !dbg !3870
  %call2 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %bb_index) #7, !dbg !3879
  %tobool = icmp eq i8 %call2, 0, !dbg !3877
  br i1 %tobool, label %while.cond.preheader, label %for.body, !dbg !3877

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !3881

for.body:                                         ; preds = %for.cond
  %7 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %work_stack, align 8, !dbg !3882
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %7, metadata !3868, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %7, metadata !3868, metadata !DIExpression()), !dbg !3870
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %7, i64 0, i32 0, !dbg !3882
  %8 = load i32, i32* %bb_index, align 4, !dbg !3882
  call void @llvm.dbg.value(metadata i32 %8, metadata !3866, metadata !DIExpression()), !dbg !3870
  %call4 = call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %base, i32 %8) #7, !dbg !3882
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3858, metadata !DIExpression(DW_OP_deref)), !dbg !3870
  call void @llvm.dbg.value(metadata i32* %bb_index, metadata !3866, metadata !DIExpression(DW_OP_deref)), !dbg !3870
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %bb_index) #7, !dbg !3879
  br label %for.cond, !dbg !3879, !llvm.loop !3883

while.cond.loopexit:                              ; preds = %for.cond26
  br label %while.cond, !dbg !3881

while.cond:                                       ; preds = %while.cond.preheader, %while.cond.loopexit
  %9 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %work_stack, align 8, !dbg !3885
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %9, metadata !3868, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %9, metadata !3868, metadata !DIExpression()), !dbg !3870
  %base7 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %9, i64 0, i32 0, !dbg !3885
  %call11 = call fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %base7) #7, !dbg !3885
  %cmp = icmp eq i32 %call11, 0, !dbg !3886
  br i1 %cmp, label %while.end, label %while.body, !dbg !3881

while.body:                                       ; preds = %while.cond
  %10 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %work_stack, align 8, !dbg !3887
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %10, metadata !3868, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %10, metadata !3868, metadata !DIExpression()), !dbg !3870
  %base14 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %10, i64 0, i32 0, !dbg !3887
  %call18 = call fastcc i32 @VEC_int_base_pop(%struct.VEC_int_base* %base14) #7, !dbg !3887
  call void @llvm.dbg.value(metadata i32 %call18, metadata !3866, metadata !DIExpression()), !dbg !3870
  store i32 %call18, i32* %bb_index, align 4, !dbg !3889
  call void @llvm.dbg.value(metadata i32 %call18, metadata !3866, metadata !DIExpression()), !dbg !3870
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3890
  %cfg20 = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 1, !dbg !3890
  %12 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg20, align 8, !dbg !3890
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 5, !dbg !3890
  %13 = load i32, i32* %x_last_basic_block, align 8, !dbg !3890
  %cmp21 = icmp ult i32 %call18, %13, !dbg !3890
  br i1 %cmp21, label %cond.end24, label %cond.true22, !dbg !3890

cond.true22:                                      ; preds = %while.body
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 1340, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !3890
  %.pre = load i32, i32* %bb_index, align 4, !dbg !3891
  br label %cond.end24, !dbg !3890

cond.end24:                                       ; preds = %while.body, %cond.true22
  %14 = phi i32 [ %call18, %while.body ], [ %.pre, %cond.true22 ], !dbg !3891
  call void @llvm.dbg.value(metadata i32 %14, metadata !3866, metadata !DIExpression()), !dbg !3870
  %idxprom = zext i32 %14 to i64, !dbg !3891
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %dfs, i64 %idxprom, !dbg !3891
  %15 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !3891
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3858, metadata !DIExpression(DW_OP_deref)), !dbg !3870
  call void @llvm.dbg.value(metadata i32* %i, metadata !3867, metadata !DIExpression(DW_OP_deref)), !dbg !3870
  call fastcc void @bmp_iter_and_compl_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %15, %struct.bitmap_head_def* %call1, i32 0, i32* nonnull %i) #7, !dbg !3891
  br label %for.cond26, !dbg !3891

for.cond26:                                       ; preds = %for.body29, %cond.end24
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3858, metadata !DIExpression(DW_OP_deref)), !dbg !3870
  call void @llvm.dbg.value(metadata i32* %i, metadata !3867, metadata !DIExpression(DW_OP_deref)), !dbg !3870
  %call27 = call fastcc zeroext i8 @bmp_iter_and_compl(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !3893
  %tobool28 = icmp eq i8 %call27, 0, !dbg !3891
  br i1 %tobool28, label %while.cond.loopexit, label %for.body29, !dbg !3891, !llvm.loop !3895

for.body29:                                       ; preds = %for.cond26
  %16 = load i32, i32* %i, align 4, !dbg !3897
  call void @llvm.dbg.value(metadata i32 %16, metadata !3867, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %work_stack, metadata !3868, metadata !DIExpression(DW_OP_deref)), !dbg !3870
  %call30 = call fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** nonnull %work_stack, i32 %16) #7, !dbg !3897
  %17 = load i32, i32* %i, align 4, !dbg !3899
  call void @llvm.dbg.value(metadata i32 %17, metadata !3867, metadata !DIExpression()), !dbg !3870
  %call31 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call1, i32 %17) #6, !dbg !3900
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3858, metadata !DIExpression(DW_OP_deref)), !dbg !3870
  call void @llvm.dbg.value(metadata i32* %i, metadata !3867, metadata !DIExpression(DW_OP_deref)), !dbg !3870
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !3893
  br label %for.cond26, !dbg !3893, !llvm.loop !3901

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %work_stack, metadata !3868, metadata !DIExpression(DW_OP_deref)), !dbg !3870
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** nonnull %work_stack) #7, !dbg !3903
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !3904
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8, !dbg !3904
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !3904
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !3904
  ret %struct.bitmap_head_def* %call1, !dbg !3905
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3906 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3910, metadata !DIExpression()), !dbg !3911
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 4) #6, !dbg !3912
  %0 = bitcast i8* %call to %struct.VEC_int_heap*, !dbg !3912
  ret %struct.VEC_int_heap* %0, !dbg !3912
}

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !3913 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3921, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !3922, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 0, metadata !3923, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3924, metadata !DIExpression()), !dbg !3925
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !3926
  %1 = load i64, i64* %0, align 8, !dbg !3926
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3927
  store i64 %1, i64* %2, align 8, !dbg !3927
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !3928
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !3929
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3930
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !3933
  br label %while.body, !dbg !3933

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !3934
  br i1 %tobool, label %if.then, label %if.end, !dbg !3935

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !3936
  br label %while.end, !dbg !3938

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !3939

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !3933, !llvm.loop !3940

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !3942

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !3942
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !3944
  %7 = load i32, i32* %indx9, align 8, !dbg !3944
  %cmp11 = icmp eq i32 %7, 0, !dbg !3945
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !3946

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !3947
  %8 = load i32, i32* %indx14, align 8, !dbg !3947
  %mul = shl i32 %8, 7, !dbg !3948
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3923, metadata !DIExpression()), !dbg !3925
  br label %if.end15, !dbg !3949

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !3923, metadata !DIExpression()), !dbg !3925
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3950
  store i32 0, i32* %word_no, align 8, !dbg !3951
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !3952
  %9 = load i64, i64* %arrayidx, align 8, !dbg !3952
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3953
  store i64 %9, i64* %bits21, align 8, !dbg !3954
  %tobool23 = icmp eq i64 %9, 0, !dbg !3955
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !3955
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !3956
  call void @llvm.dbg.value(metadata i32 %add, metadata !3923, metadata !DIExpression()), !dbg !3925
  store i32 %add, i32* %bit_no, align 4, !dbg !3957
  ret void, !dbg !3958
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3959 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3963, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3964, metadata !DIExpression()), !dbg !3968
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3969
  %0 = load i64, i64* %bits, align 8, !dbg !3969
  %tobool = icmp eq i64 %0, 0, !dbg !3970
  br i1 %tobool, label %if.end, label %next_bit, !dbg !3971

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !3972
  br label %next_bit, !dbg !3975

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !3965), !dbg !3976
  br label %while.cond, !dbg !3975

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !3977
  %and = and i64 %2, 1, !dbg !3978
  %tobool2 = icmp eq i64 %and, 0, !dbg !3979
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !3975

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !3980
  store i64 %shr, i64* %bits, align 8, !dbg !3980
  %3 = load i32, i32* %bit_no, align 4, !dbg !3982
  %add = add i32 %3, 1, !dbg !3982
  store i32 %add, i32* %bit_no, align 4, !dbg !3982
  %.pre = load i64, i64* %bits, align 8, !dbg !3977
  br label %while.cond, !dbg !3975, !llvm.loop !3983

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !3985
  %sub = add i32 %4, 63, !dbg !3986
  %div = and i32 %sub, -64, !dbg !3987
  store i32 %div, i32* %bit_no, align 4, !dbg !3988
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3989
  %5 = load i32, i32* %word_no, align 8, !dbg !3990
  %inc = add i32 %5, 1, !dbg !3990
  store i32 %inc, i32* %word_no, align 8, !dbg !3990
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3991
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3991
  br label %while.body6, !dbg !3992

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !3993

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !3994
  %cmp = icmp eq i32 %8, 2, !dbg !3995
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !3991
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !3993

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !3972
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !3972
  %10 = load i64, i64* %arrayidx, align 8, !dbg !3972
  store i64 %10, i64* %bits, align 8, !dbg !3996
  %tobool14 = icmp eq i64 %10, 0, !dbg !3997
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !3999

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !4000
  %add17 = add i32 %11, 64, !dbg !4000
  store i32 %add17, i32* %bit_no, align 4, !dbg !4000
  %12 = load i32, i32* %word_no, align 8, !dbg !4001
  %inc19 = add i32 %12, 1, !dbg !4001
  store i32 %inc19, i32* %word_no, align 8, !dbg !4001
  br label %while.cond7, !dbg !3993, !llvm.loop !4002

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !3991
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !4004
  %14 = load i64, i64* %13, align 8, !dbg !4004
  store i64 %14, i64* %6, align 8, !dbg !4005
  %tobool24 = icmp eq i64 %14, 0, !dbg !4006
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !4008

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !4008
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !4009
  %16 = load i32, i32* %indx, align 8, !dbg !4009
  %mul28 = shl i32 %16, 7, !dbg !4010
  store i32 %mul28, i32* %bit_no, align 4, !dbg !4011
  store i32 0, i32* %word_no, align 8, !dbg !4012
  br label %while.body6, !dbg !3992, !llvm.loop !4013

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !4015

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !4015

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !3968
  ret i8 %retval.0, !dbg !4015
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !4016 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !4021, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !4022, metadata !DIExpression()), !dbg !4024
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !4025
  %0 = load i32, i32* %num1, align 4, !dbg !4025
  %inc = add i32 %0, 1, !dbg !4025
  store i32 %inc, i32* %num1, align 4, !dbg !4025
  %idxprom = zext i32 %0 to i64, !dbg !4025
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4025
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !4023, metadata !DIExpression()), !dbg !4024
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !4025
  ret i32* %arrayidx, !dbg !4025
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4026 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4030, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4031, metadata !DIExpression()), !dbg !4032
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4033
  %0 = load i64, i64* %bits, align 8, !dbg !4034
  %shr = lshr i64 %0, 1, !dbg !4034
  store i64 %shr, i64* %bits, align 8, !dbg !4034
  %1 = load i32, i32* %bit_no, align 4, !dbg !4035
  %add = add i32 %1, 1, !dbg !4035
  store i32 %add, i32* %bit_no, align 4, !dbg !4035
  ret void, !dbg !4036
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %vec_) unnamed_addr #0 !dbg !4037 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !4043, metadata !DIExpression()), !dbg !4044
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !4045
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4045

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !4045
  %0 = load i32, i32* %num, align 4, !dbg !4045
  br label %cond.end, !dbg !4045

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4045
  ret i32 %cond, !dbg !4045
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_pop(%struct.VEC_int_base* %vec_) unnamed_addr #0 !dbg !4046 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !4050, metadata !DIExpression()), !dbg !4052
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !4053
  %0 = load i32, i32* %num1, align 4, !dbg !4053
  %dec = add i32 %0, -1, !dbg !4053
  store i32 %dec, i32* %num1, align 4, !dbg !4053
  %idxprom = zext i32 %dec to i64, !dbg !4053
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4053
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4053
  call void @llvm.dbg.value(metadata i32 %1, metadata !4051, metadata !DIExpression()), !dbg !4052
  ret i32 %1, !dbg !4053
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_and_compl_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map1, %struct.bitmap_head_def* %map2, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !4054 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4058, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map1, metadata !4059, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map2, metadata !4060, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.value(metadata i32 0, metadata !4061, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4062, metadata !DIExpression()), !dbg !4063
  %0 = bitcast %struct.bitmap_head_def* %map1 to i64*, !dbg !4064
  %1 = load i64, i64* %0, align 8, !dbg !4064
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4065
  store i64 %1, i64* %2, align 8, !dbg !4065
  %3 = bitcast %struct.bitmap_head_def* %map2 to i64*, !dbg !4066
  %4 = load i64, i64* %3, align 8, !dbg !4066
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !4067
  %5 = bitcast %struct.bitmap_element_def** %elt2 to i64*, !dbg !4068
  store i64 %4, i64* %5, align 8, !dbg !4068
  %elt12 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4069
  %6 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !4072
  %7 = inttoptr i64 %4 to %struct.bitmap_element_def*, !dbg !4072
  br label %while.body, !dbg !4072

while.body:                                       ; preds = %entry, %if.end6
  %tobool = icmp eq i64 %1, 0, !dbg !4073
  br i1 %tobool, label %if.then, label %if.end, !dbg !4074

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt12, align 8, !dbg !4075
  br label %while.end, !dbg !4077

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end6, label %while.end.loopexit, !dbg !4078

if.end6:                                          ; preds = %if.end
  br label %while.body, !dbg !4072, !llvm.loop !4079

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !4081

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %8 = phi %struct.bitmap_element_def* [ %6, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %9 = phi %struct.bitmap_element_def* [ %6, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %10 = phi %struct.bitmap_element_def* [ %6, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %11 = phi %struct.bitmap_element_def* [ %6, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %12 = phi %struct.bitmap_element_def* [ %6, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  br label %while.cond, !dbg !4082

while.cond:                                       ; preds = %while.body16, %while.end
  %13 = phi %struct.bitmap_element_def* [ %22, %while.body16 ], [ %7, %while.end ]
  %14 = phi %struct.bitmap_element_def* [ %22, %while.body16 ], [ %7, %while.end ]
  %15 = phi %struct.bitmap_element_def* [ %22, %while.body16 ], [ %7, %while.end ]
  %.in = phi i64 [ %21, %while.body16 ], [ %4, %while.end ]
  %16 = phi %struct.bitmap_element_def* [ %22, %while.body16 ], [ %7, %while.end ]
  %17 = phi %struct.bitmap_element_def* [ %22, %while.body16 ], [ %7, %while.end ], !dbg !4083
  %18 = inttoptr i64 %.in to i64*, !dbg !4063
  %tobool10 = icmp eq %struct.bitmap_element_def* %17, null, !dbg !4084
  br i1 %tobool10, label %while.end20, label %land.rhs, !dbg !4085

land.rhs:                                         ; preds = %while.cond
  %indx12 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %16, i64 0, i32 2, !dbg !4086
  %19 = load i32, i32* %indx12, align 8, !dbg !4086
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %12, i64 0, i32 2, !dbg !4087
  %20 = load i32, i32* %indx14, align 8, !dbg !4087
  %cmp15 = icmp ult i32 %19, %20, !dbg !4088
  br i1 %cmp15, label %while.body16, label %while.end20, !dbg !4082

while.body16:                                     ; preds = %land.rhs
  %21 = load i64, i64* %18, align 8, !dbg !4089
  store i64 %21, i64* %5, align 8, !dbg !4090
  %22 = inttoptr i64 %21 to %struct.bitmap_element_def*, !dbg !4082
  br label %while.cond, !dbg !4082, !llvm.loop !4091

while.end20:                                      ; preds = %while.cond, %land.rhs
  %.lcssa5 = phi %struct.bitmap_element_def* [ %13, %while.cond ], [ %13, %land.rhs ]
  %.lcssa4 = phi %struct.bitmap_element_def* [ %14, %while.cond ], [ %14, %land.rhs ]
  %.lcssa = phi %struct.bitmap_element_def* [ %15, %while.cond ], [ %15, %land.rhs ]
  %indx22 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %11, i64 0, i32 2, !dbg !4092
  %23 = load i32, i32* %indx22, align 8, !dbg !4092
  %cmp24 = icmp eq i32 %23, 0, !dbg !4094
  br i1 %cmp24, label %if.end28, label %if.then25, !dbg !4095

if.then25:                                        ; preds = %while.end20
  %indx27 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %10, i64 0, i32 2, !dbg !4096
  %24 = load i32, i32* %indx27, align 8, !dbg !4096
  %mul = shl i32 %24, 7, !dbg !4097
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4061, metadata !DIExpression()), !dbg !4063
  br label %if.end28, !dbg !4098

if.end28:                                         ; preds = %while.end20, %if.then25
  %start_bit.addr.0 = phi i32 [ %mul, %if.then25 ], [ 0, %while.end20 ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !4061, metadata !DIExpression()), !dbg !4063
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4099
  store i32 0, i32* %word_no, align 8, !dbg !4100
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 0, !dbg !4101
  %25 = load i64, i64* %arrayidx, align 8, !dbg !4101
  %bits32 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4102
  store i64 %25, i64* %bits32, align 8, !dbg !4103
  %tobool34 = icmp eq %struct.bitmap_element_def* %.lcssa, null, !dbg !4104
  br i1 %tobool34, label %if.end47, label %land.lhs.true, !dbg !4106

land.lhs.true:                                    ; preds = %if.end28
  %indx36 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %8, i64 0, i32 2, !dbg !4107
  %26 = load i32, i32* %indx36, align 8, !dbg !4107
  %indx38 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %.lcssa4, i64 0, i32 2, !dbg !4108
  %27 = load i32, i32* %indx38, align 8, !dbg !4108
  %cmp39 = icmp eq i32 %26, %27, !dbg !4109
  br i1 %cmp39, label %if.then40, label %if.end47, !dbg !4110

if.then40:                                        ; preds = %land.lhs.true
  %arrayidx45 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %.lcssa5, i64 0, i32 3, i64 0, !dbg !4111
  %28 = load i64, i64* %arrayidx45, align 8, !dbg !4111
  %neg = xor i64 %28, -1, !dbg !4112
  %and = and i64 %25, %neg, !dbg !4113
  store i64 %and, i64* %bits32, align 8, !dbg !4113
  br label %if.end47, !dbg !4114

if.end47:                                         ; preds = %if.end28, %if.then40, %land.lhs.true
  %29 = phi i64 [ %25, %if.end28 ], [ %and, %if.then40 ], [ %25, %land.lhs.true ], !dbg !4115
  store i64 %29, i64* %bits32, align 8, !dbg !4115
  %tobool51 = icmp eq i64 %29, 0, !dbg !4116
  %lnot.ext = zext i1 %tobool51 to i32, !dbg !4116
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !4117
  call void @llvm.dbg.value(metadata i32 %add, metadata !4061, metadata !DIExpression()), !dbg !4063
  store i32 %add, i32* %bit_no, align 4, !dbg !4118
  ret void, !dbg !4119
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_and_compl(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4120 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4122, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4123, metadata !DIExpression()), !dbg !4127
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4128
  %0 = load i64, i64* %bits, align 8, !dbg !4128
  %tobool = icmp eq i64 %0, 0, !dbg !4129
  br i1 %tobool, label %if.end, label %next_bit, !dbg !4130

next_bit.loopexit:                                ; preds = %if.end26
  %.lcssa7 = phi i64 [ %16, %if.end26 ], !dbg !4131
  br label %next_bit, !dbg !4135

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa7, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !4124), !dbg !4136
  br label %while.cond, !dbg !4135

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !4137
  %and = and i64 %2, 1, !dbg !4138
  %tobool2 = icmp eq i64 %and, 0, !dbg !4139
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !4135

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !4140
  store i64 %shr, i64* %bits, align 8, !dbg !4140
  %3 = load i32, i32* %bit_no, align 4, !dbg !4142
  %add = add i32 %3, 1, !dbg !4142
  store i32 %add, i32* %bit_no, align 4, !dbg !4142
  %.pre = load i64, i64* %bits, align 8, !dbg !4137
  br label %while.cond, !dbg !4135, !llvm.loop !4143

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !4145
  %sub = add i32 %4, 63, !dbg !4146
  %div = and i32 %sub, -64, !dbg !4147
  store i32 %div, i32* %bit_no, align 4, !dbg !4148
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4149
  %5 = load i32, i32* %word_no, align 8, !dbg !4150
  %inc = add i32 %5, 1, !dbg !4150
  store i32 %inc, i32* %word_no, align 8, !dbg !4150
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4151
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !4152
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4151
  %7 = bitcast %struct.bitmap_element_def** %elt2 to i64*, !dbg !4151
  br label %while.body6, !dbg !4154

while.body6:                                      ; preds = %if.end, %while.end53
  %8 = phi i32 [ %inc, %if.end ], [ 0, %while.end53 ]
  br label %while.cond7, !dbg !4155

while.cond7:                                      ; preds = %if.end30, %while.body6
  %9 = phi i32 [ %inc33, %if.end30 ], [ %8, %while.body6 ], !dbg !4156
  %cmp = icmp eq i32 %9, 2, !dbg !4157
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !4151
  br i1 %cmp, label %while.end34, label %while.body9, !dbg !4155

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %9 to i64, !dbg !4158
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %10, i64 0, i32 3, i64 %idxprom, !dbg !4158
  %11 = load i64, i64* %arrayidx, align 8, !dbg !4158
  store i64 %11, i64* %bits, align 8, !dbg !4159
  %12 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt2, align 8, !dbg !4160
  %tobool13 = icmp eq %struct.bitmap_element_def* %12, null, !dbg !4161
  br i1 %tobool13, label %if.end26, label %land.lhs.true, !dbg !4162

land.lhs.true:                                    ; preds = %while.body9
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %12, i64 0, i32 2, !dbg !4163
  %13 = load i32, i32* %indx, align 8, !dbg !4163
  %indx16 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %10, i64 0, i32 2, !dbg !4164
  %14 = load i32, i32* %indx16, align 8, !dbg !4164
  %cmp17 = icmp eq i32 %13, %14, !dbg !4165
  br i1 %cmp17, label %if.then18, label %if.end26, !dbg !4166

if.then18:                                        ; preds = %land.lhs.true
  %arrayidx23 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %12, i64 0, i32 3, i64 %idxprom, !dbg !4167
  %15 = load i64, i64* %arrayidx23, align 8, !dbg !4167
  %neg = xor i64 %15, -1, !dbg !4168
  %and25 = and i64 %11, %neg, !dbg !4169
  store i64 %and25, i64* %bits, align 8, !dbg !4169
  br label %if.end26, !dbg !4170

if.end26:                                         ; preds = %while.body9, %if.then18, %land.lhs.true
  %16 = phi i64 [ %11, %while.body9 ], [ %and25, %if.then18 ], [ %11, %land.lhs.true ], !dbg !4131
  %tobool28 = icmp eq i64 %16, 0, !dbg !4171
  br i1 %tobool28, label %if.end30, label %next_bit.loopexit, !dbg !4172

if.end30:                                         ; preds = %if.end26
  %17 = load i32, i32* %bit_no, align 4, !dbg !4173
  %add31 = add i32 %17, 64, !dbg !4173
  store i32 %add31, i32* %bit_no, align 4, !dbg !4173
  %18 = load i32, i32* %word_no, align 8, !dbg !4174
  %inc33 = add i32 %18, 1, !dbg !4174
  store i32 %inc33, i32* %word_no, align 8, !dbg !4174
  br label %while.cond7, !dbg !4155, !llvm.loop !4175

while.end34:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %10, %while.cond7 ], !dbg !4151
  %19 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !4177
  %20 = load i64, i64* %19, align 8, !dbg !4177
  store i64 %20, i64* %6, align 8, !dbg !4178
  %tobool38 = icmp eq i64 %20, 0, !dbg !4179
  %21 = inttoptr i64 %20 to %struct.bitmap_element_def*, !dbg !4181
  br i1 %tobool38, label %return.loopexit1, label %while.cond41.preheader, !dbg !4181

while.cond41.preheader:                           ; preds = %while.end34
  %.pre3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt2, align 8, !dbg !4182
  %22 = bitcast %struct.bitmap_element_def* %.pre3 to i64*, !dbg !4183
  br label %while.cond41, !dbg !4183

while.cond41:                                     ; preds = %while.cond41.preheader, %while.body49
  %23 = phi i64* [ %22, %while.cond41.preheader ], [ %30, %while.body49 ]
  %24 = phi %struct.bitmap_element_def* [ %.pre3, %while.cond41.preheader ], [ %29, %while.body49 ]
  %25 = phi %struct.bitmap_element_def* [ %.pre3, %while.cond41.preheader ], [ %29, %while.body49 ], !dbg !4182
  %tobool43 = icmp eq %struct.bitmap_element_def* %25, null, !dbg !4184
  br i1 %tobool43, label %while.end53, label %land.rhs, !dbg !4185

land.rhs:                                         ; preds = %while.cond41
  %indx45 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %24, i64 0, i32 2, !dbg !4186
  %26 = load i32, i32* %indx45, align 8, !dbg !4186
  %indx47 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %21, i64 0, i32 2, !dbg !4187
  %27 = load i32, i32* %indx47, align 8, !dbg !4187
  %cmp48 = icmp ult i32 %26, %27, !dbg !4188
  br i1 %cmp48, label %while.body49, label %while.end53, !dbg !4183

while.body49:                                     ; preds = %land.rhs
  %28 = load i64, i64* %23, align 8, !dbg !4189
  store i64 %28, i64* %7, align 8, !dbg !4190
  %29 = inttoptr i64 %28 to %struct.bitmap_element_def*, !dbg !4183
  %30 = inttoptr i64 %28 to i64*, !dbg !4183
  br label %while.cond41, !dbg !4183, !llvm.loop !4191

while.end53:                                      ; preds = %while.cond41, %land.rhs
  %indx55 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %21, i64 0, i32 2, !dbg !4192
  %31 = load i32, i32* %indx55, align 8, !dbg !4192
  %mul56 = shl i32 %31, 7, !dbg !4193
  store i32 %mul56, i32* %bit_no, align 4, !dbg !4194
  store i32 0, i32* %word_no, align 8, !dbg !4195
  br label %while.body6, !dbg !4154, !llvm.loop !4196

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !4198

return.loopexit1:                                 ; preds = %while.end34
  br label %return, !dbg !4198

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !4127
  ret i8 %retval.0, !dbg !4198
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** %vec_, i32 %obj_) unnamed_addr #0 !dbg !4199 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !4205, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !4206, metadata !DIExpression()), !dbg !4207
  %call = tail call fastcc i32 @VEC_int_heap_reserve(%struct.VEC_int_heap** %vec_, i32 1) #7, !dbg !4208
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !4208
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !4208
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4208

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !4208
  br label %cond.end, !dbg !4208

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4208
  %call1 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond, i32 %obj_) #7, !dbg !4208
  ret i32* %call1, !dbg !4208
}

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !4209 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !4213, metadata !DIExpression()), !dbg !4214
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !4215
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !4215
  br i1 %tobool, label %if.end, label %if.then, !dbg !4217

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !4217
  tail call void @free(i8* nonnull %1) #6, !dbg !4215
  br label %if.end, !dbg !4215

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !4217
  ret void, !dbg !4217
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4218 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4221
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4221
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4221

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4221
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4221
  br label %cond.end, !dbg !4221

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4221
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4221
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !4222
  %conv3 = zext i1 %cmp to i8, !dbg !4223
  ret i8 %conv3, !dbg !4224
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4225 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !4230
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4230

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !4230
  br label %cond.end, !dbg !4230

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !4231
  ret %struct.VEC_edge_gc* %0, !dbg !4232
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_safe_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4233 {
entry:
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4236
  %tobool = icmp eq i8 %call, 0, !dbg !4236
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4237

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4238
  br label %cond.end, !dbg !4237

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.edge_def* [ %call1, %cond.true ], [ null, %entry ], !dbg !4237
  ret %struct.edge_def* %cond, !dbg !4239
}

declare dso_local void @remove_edge(%struct.edge_def*) local_unnamed_addr #1

declare dso_local %struct.basic_block_def* @get_immediate_dominator(i32, %struct.basic_block_def*) local_unnamed_addr #1

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_heap_reserve(%struct.VEC_int_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4240 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !4244, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i32 1, metadata !4245, metadata !DIExpression()), !dbg !4247
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !4248
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !4248
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4248

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !4248
  br label %cond.end, !dbg !4248

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4248
  %call = tail call fastcc i32 @VEC_int_base_space(%struct.VEC_int_base* %cond, i32 1) #7, !dbg !4248
  %tobool1 = icmp eq i32 %call, 0, !dbg !4248
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4248
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4246, metadata !DIExpression()), !dbg !4247
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4248

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_int_heap** %vec_ to i8**, !dbg !4249
  %2 = load i8*, i8** %1, align 8, !dbg !4249
  %call3 = tail call i8* @vec_heap_o_reserve(i8* %2, i32 1, i64 8, i64 4) #6, !dbg !4249
  store i8* %call3, i8** %1, align 8, !dbg !4249
  br label %if.end, !dbg !4249

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4248
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_space(%struct.VEC_int_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4251 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !4255, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 1, metadata !4256, metadata !DIExpression()), !dbg !4257
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !4258
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4258

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 1, !dbg !4258
  %0 = load i32, i32* %alloc, align 4, !dbg !4258
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !4258
  %1 = load i32, i32* %num, align 4, !dbg !4258
  %cmp1 = icmp ne i32 %0, %1, !dbg !4258
  %phitmp = zext i1 %cmp1 to i32, !dbg !4258
  br label %cond.end, !dbg !4258

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4258

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4258
}

declare dso_local i8* @vec_heap_o_reserve(i8*, i32, i64, i64) local_unnamed_addr #1

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

!llvm.dbg.cu = !{!1431}
!llvm.module.flags = !{!1634, !1635, !1636}
!llvm.ident = !{!1637}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "visited", scope: !2, file: !3, line: 1165, type: !1624, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "dfs_enumerate_from", scope: !3, file: !3, line: 1152, type: !4, scopeLine: 1155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1609)
!3 = !DIFile(filename: "cfganal.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !6, !1424, !1430, !6, !603}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !8, line: 111, baseType: !9)
!8 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !11, line: 217, size: 832, elements: !12)
!11 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!12 = !{!13, !1389, !1390, !1391, !1394, !1398, !1399, !1400, !1418, !1419, !1420, !1421, !1422, !1423}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !10, file: !11, line: 219, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !11, line: 151, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !11, line: 151, size: 128, elements: !17)
!17 = !{!18}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !16, file: !11, line: 151, baseType: !19, size: 128)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !11, line: 150, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !11, line: 150, size: 128, elements: !21)
!21 = !{!22, !24, !25}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !20, file: !11, line: 150, baseType: !23, size: 32)
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !20, file: !11, line: 150, baseType: !23, size: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !20, file: !11, line: 150, baseType: !26, size: 64, offset: 64)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 64, elements: !79)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !8, line: 108, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !11, line: 122, size: 512, elements: !30)
!30 = !{!31, !32, !33, !1381, !1382, !1383, !1384, !1385, !1386, !1387}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !29, file: !11, line: 124, baseType: !9, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !29, file: !11, line: 125, baseType: !9, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !29, file: !11, line: 131, baseType: !34, size: 64, offset: 128)
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !11, line: 128, size: 64, elements: !35)
!35 = !{!36, !40}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !34, file: !11, line: 129, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !8, line: 66, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !8, line: 65, flags: DIFlagFwdDecl)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !34, file: !11, line: 130, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !8, line: 50, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !44, line: 240, size: 384, elements: !45)
!44 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !43, file: !44, line: 242, baseType: !23, size: 16, flags: DIFlagBitField, extraData: i64 0)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !43, file: !44, line: 245, baseType: !23, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !43, file: !44, line: 252, baseType: !23, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !43, file: !44, line: 257, baseType: !23, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !43, file: !44, line: 265, baseType: !23, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !43, file: !44, line: 277, baseType: !23, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !43, file: !44, line: 291, baseType: !23, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !43, file: !44, line: 298, baseType: !23, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !43, file: !44, line: 305, baseType: !23, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !43, file: !44, line: 310, baseType: !23, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !43, file: !44, line: 321, baseType: !57, size: 320, offset: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !44, line: 315, size: 320, elements: !58)
!58 = !{!59, !1348, !1350, !1379, !1380}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !57, file: !44, line: 316, baseType: !60, size: 64)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 64, elements: !79)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !44, line: 183, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !44, line: 166, size: 64, elements: !63)
!63 = !{!64, !65, !66, !70, !71, !81, !210, !222, !225, !289, !1326, !1327, !1338, !1345}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !62, file: !44, line: 168, baseType: !6, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !62, file: !44, line: 169, baseType: !23, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !62, file: !44, line: 170, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !62, file: !44, line: 171, baseType: !41, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !62, file: !44, line: 172, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !8, line: 53, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !44, line: 359, size: 128, elements: !75)
!75 = !{!76, !77}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !74, file: !44, line: 360, baseType: !6, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !74, file: !44, line: 361, baseType: !78, size: 64, offset: 64)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 64, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 1)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !62, file: !44, line: 173, baseType: !82, size: 32)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !83, line: 7, baseType: !23, size: 32, elements: !84)
!83 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209}
!85 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!86 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!87 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!88 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!89 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!90 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!91 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!92 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!93 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!94 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!95 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!96 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!97 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!98 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!99 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!100 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!101 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!102 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!103 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!104 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!105 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!106 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!107 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!108 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!109 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!110 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!111 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!112 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!113 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!114 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!115 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!116 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!117 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!118 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!119 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!120 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!121 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!122 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!123 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!124 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!125 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!126 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!127 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!128 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!129 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!130 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!131 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!132 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!133 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!134 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!135 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!136 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!137 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!138 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!139 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!140 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!141 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!142 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!143 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!144 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!145 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!146 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!147 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!148 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!149 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!150 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!151 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!152 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!153 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!154 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!155 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!156 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!157 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!158 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!159 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!160 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!161 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!162 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!163 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!164 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!165 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!166 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!167 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!168 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!169 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!170 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!171 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!172 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!173 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!174 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!175 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!176 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!177 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!178 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!179 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!180 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!181 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!182 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!183 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!184 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!185 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!186 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!187 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!188 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!189 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!190 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!191 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!192 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!193 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!194 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!195 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!196 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!197 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!198 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!199 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!200 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!201 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!202 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!203 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!204 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!205 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!206 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!207 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!208 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!209 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !62, file: !44, line: 174, baseType: !211, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !44, line: 133, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 115, size: 32, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !212, file: !44, line: 118, baseType: !23, size: 8, flags: DIFlagBitField, extraData: i64 0)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !212, file: !44, line: 120, baseType: !23, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !212, file: !44, line: 121, baseType: !23, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !212, file: !44, line: 123, baseType: !23, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !212, file: !44, line: 125, baseType: !23, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !212, file: !44, line: 127, baseType: !23, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !212, file: !44, line: 130, baseType: !23, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !212, file: !44, line: 132, baseType: !23, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !62, file: !44, line: 175, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !44, line: 175, flags: DIFlagFwdDecl)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !62, file: !44, line: 176, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !228, line: 75, size: 256, elements: !229)
!228 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!229 = !{!230, !245, !246, !247}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !227, file: !228, line: 76, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !228, line: 68, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !228, line: 63, size: 320, elements: !234)
!234 = !{!235, !237, !238, !239}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !233, file: !228, line: 64, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !233, file: !228, line: 65, baseType: !236, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !233, file: !228, line: 66, baseType: !23, size: 32, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !233, file: !228, line: 67, baseType: !240, size: 128, offset: 192)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 128, elements: !243)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !228, line: 29, baseType: !242)
!242 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!243 = !{!244}
!244 = !DISubrange(count: 2)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !227, file: !228, line: 77, baseType: !231, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !227, file: !228, line: 78, baseType: !23, size: 32, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !227, file: !228, line: 79, baseType: !248, size: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !228, line: 49, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !228, line: 45, size: 832, elements: !251)
!251 = !{!252, !253, !254}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !250, file: !228, line: 46, baseType: !236, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !250, file: !228, line: 47, baseType: !226, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !250, file: !228, line: 48, baseType: !255, size: 704, offset: 128)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !256, line: 164, size: 704, elements: !257)
!256 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!257 = !{!258, !260, !271, !272, !273, !274, !275, !276, !281, !285, !286, !287, !288}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !255, file: !256, line: 166, baseType: !259, size: 64)
!259 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !255, file: !256, line: 167, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !256, line: 157, size: 192, elements: !263)
!263 = !{!264, !266, !267}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !262, file: !256, line: 159, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !262, file: !256, line: 160, baseType: !261, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !262, file: !256, line: 161, baseType: !268, size: 32, offset: 128)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 32, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 4)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !255, file: !256, line: 168, baseType: !265, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !255, file: !256, line: 169, baseType: !265, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !255, file: !256, line: 170, baseType: !265, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !255, file: !256, line: 171, baseType: !259, size: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !255, file: !256, line: 172, baseType: !6, size: 32, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !255, file: !256, line: 176, baseType: !277, size: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!261, !280, !259}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !255, file: !256, line: 177, baseType: !282, size: 64, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !280, !261}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !255, file: !256, line: 178, baseType: !280, size: 64, offset: 576)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !255, file: !256, line: 179, baseType: !23, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !255, file: !256, line: 180, baseType: !23, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !255, file: !256, line: 184, baseType: !23, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !62, file: !44, line: 177, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !8, line: 56, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !293, line: 3371, size: 1792, elements: !294)
!293 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!294 = !{!295, !328, !334, !345, !364, !375, !380, !387, !393, !407, !419, !457, !462, !490, !498, !499, !504, !513, !519, !524, !528, !532, !724, !773, !779, !786, !793, !819, !844, !861, !873, !895, !1136, !1308}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !292, file: !293, line: 3372, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !293, line: 360, size: 64, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !296, file: !293, line: 361, baseType: !23, size: 16, flags: DIFlagBitField, extraData: i64 0)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !296, file: !293, line: 363, baseType: !23, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !296, file: !293, line: 364, baseType: !23, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !296, file: !293, line: 365, baseType: !23, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !296, file: !293, line: 366, baseType: !23, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !296, file: !293, line: 367, baseType: !23, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !296, file: !293, line: 368, baseType: !23, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !296, file: !293, line: 369, baseType: !23, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !296, file: !293, line: 370, baseType: !23, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !296, file: !293, line: 372, baseType: !23, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !296, file: !293, line: 373, baseType: !23, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !296, file: !293, line: 374, baseType: !23, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !296, file: !293, line: 375, baseType: !23, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !296, file: !293, line: 376, baseType: !23, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !296, file: !293, line: 377, baseType: !23, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !296, file: !293, line: 378, baseType: !23, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !296, file: !293, line: 379, baseType: !23, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !296, file: !293, line: 381, baseType: !23, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !296, file: !293, line: 382, baseType: !23, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !296, file: !293, line: 383, baseType: !23, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !296, file: !293, line: 384, baseType: !23, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !296, file: !293, line: 385, baseType: !23, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !296, file: !293, line: 386, baseType: !23, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !296, file: !293, line: 387, baseType: !23, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !296, file: !293, line: 388, baseType: !23, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !296, file: !293, line: 390, baseType: !23, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !296, file: !293, line: 391, baseType: !23, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !296, file: !293, line: 392, baseType: !23, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !296, file: !293, line: 394, baseType: !23, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !296, file: !293, line: 399, baseType: !23, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !292, file: !293, line: 3373, baseType: !329, size: 192)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !293, line: 402, size: 192, elements: !330)
!330 = !{!331, !332, !333}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !329, file: !293, line: 403, baseType: !296, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !329, file: !293, line: 404, baseType: !290, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !329, file: !293, line: 405, baseType: !290, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !292, file: !293, line: 3374, baseType: !335, size: 320)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !293, line: 1384, size: 320, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !335, file: !293, line: 1385, baseType: !329, size: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !335, file: !293, line: 1386, baseType: !339, size: 128, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !340, line: 58, baseType: !341)
!340 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 54, size: 128, elements: !342)
!342 = !{!343, !344}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !341, file: !340, line: 56, baseType: !242, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !341, file: !340, line: 57, baseType: !259, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !292, file: !293, line: 3375, baseType: !346, size: 256)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !293, line: 1397, size: 256, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !346, file: !293, line: 1398, baseType: !329, size: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !346, file: !293, line: 1399, baseType: !350, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !352, line: 52, size: 256, elements: !353)
!352 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!353 = !{!354, !355, !356, !357, !358, !359, !360}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !351, file: !352, line: 56, baseType: !23, size: 2, flags: DIFlagBitField, extraData: i64 0)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !351, file: !352, line: 57, baseType: !23, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !351, file: !352, line: 58, baseType: !23, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !351, file: !352, line: 59, baseType: !23, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !351, file: !352, line: 60, baseType: !23, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !351, file: !352, line: 61, baseType: !23, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !351, file: !352, line: 62, baseType: !361, size: 192, offset: 64)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 192, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 3)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !292, file: !293, line: 3376, baseType: !365, size: 256)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !293, line: 1408, size: 256, elements: !366)
!366 = !{!367, !368}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !365, file: !293, line: 1409, baseType: !329, size: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !365, file: !293, line: 1410, baseType: !369, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !371, line: 27, size: 192, elements: !372)
!371 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !370, file: !371, line: 29, baseType: !339, size: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !370, file: !371, line: 30, baseType: !82, size: 32, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !292, file: !293, line: 3377, baseType: !376, size: 256)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !293, line: 1437, size: 256, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !376, file: !293, line: 1438, baseType: !329, size: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !376, file: !293, line: 1439, baseType: !290, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !292, file: !293, line: 3378, baseType: !381, size: 256)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !293, line: 1418, size: 256, elements: !382)
!382 = !{!383, !384, !385}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !381, file: !293, line: 1419, baseType: !329, size: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !381, file: !293, line: 1420, baseType: !6, size: 32, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !381, file: !293, line: 1421, baseType: !386, size: 8, offset: 224)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 8, elements: !79)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !292, file: !293, line: 3379, baseType: !388, size: 320)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !293, line: 1428, size: 320, elements: !389)
!389 = !{!390, !391, !392}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !388, file: !293, line: 1429, baseType: !329, size: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !388, file: !293, line: 1430, baseType: !290, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !388, file: !293, line: 1431, baseType: !290, size: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !292, file: !293, line: 3380, baseType: !394, size: 320)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !293, line: 1460, size: 320, elements: !395)
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !394, file: !293, line: 1461, baseType: !329, size: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !394, file: !293, line: 1462, baseType: !398, size: 128, offset: 192)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !399, line: 31, size: 128, elements: !400)
!399 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!400 = !{!401, !405, !406}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !398, file: !399, line: 32, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!404 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !398, file: !399, line: 33, baseType: !23, size: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !398, file: !399, line: 34, baseType: !23, size: 32, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !292, file: !293, line: 3381, baseType: !408, size: 384)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !293, line: 2507, size: 384, elements: !409)
!409 = !{!410, !411, !416, !417, !418}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !408, file: !293, line: 2508, baseType: !329, size: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !408, file: !293, line: 2509, baseType: !412, size: 32, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !413, line: 58, baseType: !414)
!413 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !415, line: 44, baseType: !23)
!415 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!416 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !408, file: !293, line: 2510, baseType: !23, size: 32, offset: 224)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !408, file: !293, line: 2511, baseType: !290, size: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !408, file: !293, line: 2512, baseType: !290, size: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !292, file: !293, line: 3382, baseType: !420, size: 896)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !293, line: 2652, size: 896, elements: !421)
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !420, file: !293, line: 2653, baseType: !408, size: 384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !420, file: !293, line: 2654, baseType: !290, size: 64, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !420, file: !293, line: 2656, baseType: !23, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !420, file: !293, line: 2658, baseType: !23, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !420, file: !293, line: 2659, baseType: !23, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !420, file: !293, line: 2660, baseType: !23, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !420, file: !293, line: 2661, baseType: !23, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !420, file: !293, line: 2662, baseType: !23, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !420, file: !293, line: 2663, baseType: !23, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !420, file: !293, line: 2664, baseType: !23, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !420, file: !293, line: 2666, baseType: !23, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !420, file: !293, line: 2667, baseType: !23, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !420, file: !293, line: 2668, baseType: !23, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !420, file: !293, line: 2669, baseType: !23, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !420, file: !293, line: 2670, baseType: !23, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !420, file: !293, line: 2671, baseType: !23, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !420, file: !293, line: 2672, baseType: !23, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !420, file: !293, line: 2673, baseType: !23, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !420, file: !293, line: 2674, baseType: !23, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !420, file: !293, line: 2678, baseType: !23, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !420, file: !293, line: 2682, baseType: !23, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !420, file: !293, line: 2685, baseType: !23, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !420, file: !293, line: 2688, baseType: !23, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !420, file: !293, line: 2690, baseType: !23, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !420, file: !293, line: 2692, baseType: !23, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !420, file: !293, line: 2695, baseType: !23, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !420, file: !293, line: 2698, baseType: !23, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !420, file: !293, line: 2703, baseType: !23, size: 32, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !420, file: !293, line: 2705, baseType: !290, size: 64, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !420, file: !293, line: 2706, baseType: !290, size: 64, offset: 640)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !420, file: !293, line: 2707, baseType: !290, size: 64, offset: 704)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !420, file: !293, line: 2708, baseType: !290, size: 64, offset: 768)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !420, file: !293, line: 2711, baseType: !455, size: 64, offset: 832)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !293, line: 2711, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !292, file: !293, line: 3383, baseType: !458, size: 960)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !293, line: 2756, size: 960, elements: !459)
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !458, file: !293, line: 2757, baseType: !420, size: 896)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !458, file: !293, line: 2758, baseType: !41, size: 64, offset: 896)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !292, file: !293, line: 3384, baseType: !463, size: 1472)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !293, line: 3114, size: 1472, elements: !464)
!464 = !{!465, !486, !487, !488, !489}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !463, file: !293, line: 3115, baseType: !466, size: 1216)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !293, line: 2984, size: 1216, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !466, file: !293, line: 2985, baseType: !458, size: 960)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !466, file: !293, line: 2986, baseType: !290, size: 64, offset: 960)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !466, file: !293, line: 2987, baseType: !290, size: 64, offset: 1024)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !466, file: !293, line: 2988, baseType: !290, size: 64, offset: 1088)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !466, file: !293, line: 2991, baseType: !23, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !466, file: !293, line: 2992, baseType: !23, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !466, file: !293, line: 2993, baseType: !23, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !466, file: !293, line: 2994, baseType: !23, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !466, file: !293, line: 2995, baseType: !23, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !466, file: !293, line: 2996, baseType: !23, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !466, file: !293, line: 2998, baseType: !23, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !466, file: !293, line: 3000, baseType: !23, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !466, file: !293, line: 3002, baseType: !23, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !466, file: !293, line: 3003, baseType: !23, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !466, file: !293, line: 3004, baseType: !23, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !466, file: !293, line: 3005, baseType: !23, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !466, file: !293, line: 3007, baseType: !23, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !466, file: !293, line: 3010, baseType: !23, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !463, file: !293, line: 3117, baseType: !290, size: 64, offset: 1216)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !463, file: !293, line: 3119, baseType: !290, size: 64, offset: 1280)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !463, file: !293, line: 3121, baseType: !290, size: 64, offset: 1344)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !463, file: !293, line: 3123, baseType: !290, size: 64, offset: 1408)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !292, file: !293, line: 3385, baseType: !491, size: 1088)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !293, line: 2874, size: 1088, elements: !492)
!492 = !{!493, !494, !495}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !491, file: !293, line: 2875, baseType: !458, size: 960)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !491, file: !293, line: 2876, baseType: !41, size: 64, offset: 960)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !491, file: !293, line: 2877, baseType: !496, size: 64, offset: 1024)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !293, line: 2856, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !292, file: !293, line: 3386, baseType: !466, size: 1216)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !292, file: !293, line: 3387, baseType: !500, size: 1280)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !293, line: 3093, size: 1280, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !500, file: !293, line: 3094, baseType: !466, size: 1216)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !500, file: !293, line: 3095, baseType: !496, size: 64, offset: 1216)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !292, file: !293, line: 3388, baseType: !505, size: 1216)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !293, line: 2824, size: 1216, elements: !506)
!506 = !{!507, !508, !509, !510, !511, !512}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !505, file: !293, line: 2825, baseType: !420, size: 896)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !505, file: !293, line: 2827, baseType: !290, size: 64, offset: 896)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !505, file: !293, line: 2828, baseType: !290, size: 64, offset: 960)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !505, file: !293, line: 2829, baseType: !290, size: 64, offset: 1024)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !505, file: !293, line: 2830, baseType: !290, size: 64, offset: 1088)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !505, file: !293, line: 2831, baseType: !290, size: 64, offset: 1152)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !292, file: !293, line: 3389, baseType: !514, size: 1024)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !293, line: 2850, size: 1024, elements: !515)
!515 = !{!516, !517, !518}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !514, file: !293, line: 2851, baseType: !458, size: 960)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !514, file: !293, line: 2852, baseType: !6, size: 32, offset: 960)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !514, file: !293, line: 2853, baseType: !6, size: 32, offset: 992)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !292, file: !293, line: 3390, baseType: !520, size: 1024)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !293, line: 2857, size: 1024, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !520, file: !293, line: 2858, baseType: !458, size: 960)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !520, file: !293, line: 2859, baseType: !496, size: 64, offset: 960)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !292, file: !293, line: 3391, baseType: !525, size: 960)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !293, line: 2862, size: 960, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !525, file: !293, line: 2863, baseType: !458, size: 960)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !292, file: !293, line: 3392, baseType: !529, size: 1472)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !293, line: 3304, size: 1472, elements: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !529, file: !293, line: 3305, baseType: !463, size: 1472)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !292, file: !293, line: 3393, baseType: !533, size: 1792)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !293, line: 3248, size: 1792, elements: !534)
!534 = !{!535, !536, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !533, file: !293, line: 3249, baseType: !463, size: 1472)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !533, file: !293, line: 3251, baseType: !537, size: 64, offset: 1472)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !539, line: 463, size: 1152, elements: !540)
!539 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!540 = !{!541, !544, !584, !585, !588, !591, !643, !644, !645, !646, !647, !676, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !538, file: !539, line: 464, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !539, line: 464, flags: DIFlagFwdDecl)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !538, file: !539, line: 467, baseType: !545, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !11, line: 374, size: 640, elements: !547)
!547 = !{!548, !549, !550, !563, !564, !565, !566, !567, !573, !580, !582, !583}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !546, file: !11, line: 377, baseType: !7, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !546, file: !11, line: 378, baseType: !7, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !546, file: !11, line: 381, baseType: !551, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !11, line: 282, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !11, line: 282, size: 128, elements: !554)
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !553, file: !11, line: 282, baseType: !556, size: 128)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !11, line: 281, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !11, line: 281, size: 128, elements: !558)
!558 = !{!559, !560, !561}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !557, file: !11, line: 281, baseType: !23, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !557, file: !11, line: 281, baseType: !23, size: 32, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !557, file: !11, line: 281, baseType: !562, size: 64, offset: 64)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !79)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !546, file: !11, line: 384, baseType: !6, size: 32, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !546, file: !11, line: 387, baseType: !6, size: 32, offset: 224)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !546, file: !11, line: 390, baseType: !6, size: 32, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !546, file: !11, line: 394, baseType: !551, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !546, file: !11, line: 396, baseType: !568, size: 32, offset: 384)
!568 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !11, line: 363, baseType: !23, size: 32, elements: !569)
!569 = !{!570, !571, !572}
!570 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!571 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!572 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !546, file: !11, line: 399, baseType: !574, size: 64, offset: 416)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 64, elements: !243)
!575 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !11, line: 355, baseType: !23, size: 32, elements: !576)
!576 = !{!577, !578, !579}
!577 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!578 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!579 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !546, file: !11, line: 402, baseType: !581, size: 64, offset: 480)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 64, elements: !243)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !546, file: !11, line: 406, baseType: !6, size: 32, offset: 544)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !546, file: !11, line: 409, baseType: !6, size: 32, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !538, file: !539, line: 470, baseType: !38, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !538, file: !539, line: 473, baseType: !586, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !539, line: 166, flags: DIFlagFwdDecl)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !538, file: !539, line: 476, baseType: !589, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !539, line: 476, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !538, file: !539, line: 479, baseType: !592, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !593, line: 144, baseType: !594)
!593 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !593, line: 100, size: 896, elements: !596)
!596 = !{!597, !605, !610, !615, !617, !620, !621, !622, !623, !624, !629, !631, !632, !637, !642}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !595, file: !593, line: 102, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !593, line: 52, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!602, !603}
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !593, line: 47, baseType: !23)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !595, file: !593, line: 105, baseType: !606, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !593, line: 59, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!6, !603, !603}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !595, file: !593, line: 108, baseType: !611, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !593, line: 63, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !280}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !595, file: !593, line: 111, baseType: !616, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !595, file: !593, line: 114, baseType: !618, size: 64, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !619, line: 46, baseType: !242)
!619 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!620 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !595, file: !593, line: 117, baseType: !618, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !595, file: !593, line: 120, baseType: !618, size: 64, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !595, file: !593, line: 124, baseType: !23, size: 32, offset: 448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !595, file: !593, line: 128, baseType: !23, size: 32, offset: 480)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !595, file: !593, line: 131, baseType: !625, size: 64, offset: 512)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !593, line: 75, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!280, !618, !618}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !595, file: !593, line: 132, baseType: !630, size: 64, offset: 576)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !593, line: 78, baseType: !612)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !595, file: !593, line: 135, baseType: !280, size: 64, offset: 640)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !595, file: !593, line: 136, baseType: !633, size: 64, offset: 704)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !593, line: 82, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!280, !280, !618, !618}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !595, file: !593, line: 137, baseType: !638, size: 64, offset: 768)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !593, line: 83, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !280, !280}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !595, file: !593, line: 141, baseType: !23, size: 32, offset: 832)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !538, file: !539, line: 484, baseType: !290, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !538, file: !539, line: 488, baseType: !290, size: 64, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !538, file: !539, line: 493, baseType: !290, size: 64, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !538, file: !539, line: 496, baseType: !290, size: 64, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !538, file: !539, line: 501, baseType: !648, size: 64, offset: 640)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !650, line: 2355, size: 576, elements: !651)
!650 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!651 = !{!652, !655, !656, !657, !658, !660, !661, !666, !671, !672, !673, !674, !675}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !649, file: !650, line: 2356, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !650, line: 2356, flags: DIFlagFwdDecl)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !649, file: !650, line: 2357, baseType: !67, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !649, file: !650, line: 2358, baseType: !6, size: 32, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !649, file: !650, line: 2359, baseType: !6, size: 32, offset: 160)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !649, file: !650, line: 2360, baseType: !659, size: 128, offset: 192)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !269)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !649, file: !650, line: 2364, baseType: !6, size: 32, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !649, file: !650, line: 2367, baseType: !662, size: 128, offset: 384)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !650, line: 2349, size: 128, elements: !663)
!663 = !{!664, !665}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !662, file: !650, line: 2351, baseType: !41, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !662, file: !650, line: 2352, baseType: !259, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !649, file: !650, line: 2371, baseType: !667, size: 32, offset: 512)
!667 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !650, line: 474, baseType: !23, size: 32, elements: !668)
!668 = !{!669, !670}
!669 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!670 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !649, file: !650, line: 2374, baseType: !23, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !649, file: !650, line: 2377, baseType: !23, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !649, file: !650, line: 2381, baseType: !23, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !649, file: !650, line: 2392, baseType: !23, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !649, file: !650, line: 2396, baseType: !23, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !538, file: !539, line: 504, baseType: !677, size: 64, offset: 704)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !539, line: 504, flags: DIFlagFwdDecl)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !538, file: !539, line: 507, baseType: !592, size: 64, offset: 768)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !538, file: !539, line: 510, baseType: !6, size: 32, offset: 832)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !538, file: !539, line: 513, baseType: !6, size: 32, offset: 864)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !538, file: !539, line: 516, baseType: !412, size: 32, offset: 896)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !538, file: !539, line: 519, baseType: !412, size: 32, offset: 928)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !538, file: !539, line: 522, baseType: !23, size: 32, offset: 960)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !538, file: !539, line: 523, baseType: !23, size: 32, offset: 992)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !538, file: !539, line: 528, baseType: !67, size: 64, offset: 1024)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !538, file: !539, line: 535, baseType: !23, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !538, file: !539, line: 539, baseType: !23, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !538, file: !539, line: 543, baseType: !23, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !538, file: !539, line: 546, baseType: !23, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !538, file: !539, line: 550, baseType: !23, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !538, file: !539, line: 554, baseType: !23, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !538, file: !539, line: 559, baseType: !23, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !538, file: !539, line: 562, baseType: !23, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !538, file: !539, line: 571, baseType: !23, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !538, file: !539, line: 573, baseType: !23, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !538, file: !539, line: 574, baseType: !23, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !538, file: !539, line: 581, baseType: !23, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !538, file: !539, line: 585, baseType: !23, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !538, file: !539, line: 588, baseType: !23, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !538, file: !539, line: 592, baseType: !23, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !538, file: !539, line: 598, baseType: !23, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !533, file: !293, line: 3254, baseType: !290, size: 64, offset: 1536)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !533, file: !293, line: 3257, baseType: !290, size: 64, offset: 1600)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !533, file: !293, line: 3258, baseType: !290, size: 64, offset: 1664)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !533, file: !293, line: 3264, baseType: !23, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !533, file: !293, line: 3265, baseType: !23, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !533, file: !293, line: 3267, baseType: !23, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !533, file: !293, line: 3268, baseType: !23, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !533, file: !293, line: 3269, baseType: !23, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !533, file: !293, line: 3271, baseType: !23, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !533, file: !293, line: 3272, baseType: !23, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !533, file: !293, line: 3273, baseType: !23, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !533, file: !293, line: 3274, baseType: !23, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !533, file: !293, line: 3275, baseType: !23, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !533, file: !293, line: 3276, baseType: !23, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !533, file: !293, line: 3277, baseType: !23, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !533, file: !293, line: 3279, baseType: !23, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !533, file: !293, line: 3280, baseType: !23, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !533, file: !293, line: 3281, baseType: !23, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !533, file: !293, line: 3282, baseType: !23, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !533, file: !293, line: 3283, baseType: !23, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !533, file: !293, line: 3284, baseType: !23, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !292, file: !293, line: 3394, baseType: !725, size: 1344)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !293, line: 2279, size: 1344, elements: !726)
!726 = !{!727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !752, !753, !754, !762, !763, !764, !765, !766, !767, !768, !769, !770}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !725, file: !293, line: 2280, baseType: !329, size: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !725, file: !293, line: 2281, baseType: !290, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !725, file: !293, line: 2282, baseType: !290, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !725, file: !293, line: 2283, baseType: !290, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !725, file: !293, line: 2284, baseType: !290, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !725, file: !293, line: 2285, baseType: !23, size: 32, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !725, file: !293, line: 2287, baseType: !23, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !725, file: !293, line: 2288, baseType: !23, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !725, file: !293, line: 2289, baseType: !23, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !725, file: !293, line: 2290, baseType: !23, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !725, file: !293, line: 2291, baseType: !23, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !725, file: !293, line: 2292, baseType: !23, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !725, file: !293, line: 2294, baseType: !23, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !725, file: !293, line: 2296, baseType: !23, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !725, file: !293, line: 2297, baseType: !23, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !725, file: !293, line: 2298, baseType: !23, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !725, file: !293, line: 2299, baseType: !23, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !725, file: !293, line: 2300, baseType: !23, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !725, file: !293, line: 2301, baseType: !23, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !725, file: !293, line: 2302, baseType: !23, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !725, file: !293, line: 2303, baseType: !23, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !725, file: !293, line: 2305, baseType: !23, size: 32, offset: 512)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !725, file: !293, line: 2306, baseType: !750, size: 32, offset: 544)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !751, line: 31, baseType: !6)
!751 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!752 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !725, file: !293, line: 2307, baseType: !290, size: 64, offset: 576)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !725, file: !293, line: 2308, baseType: !290, size: 64, offset: 640)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !725, file: !293, line: 2314, baseType: !755, size: 64, offset: 704)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !293, line: 2309, size: 64, elements: !756)
!756 = !{!757, !758, !759}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !755, file: !293, line: 2310, baseType: !6, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !755, file: !293, line: 2311, baseType: !67, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !755, file: !293, line: 2312, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !293, line: 2277, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !725, file: !293, line: 2315, baseType: !290, size: 64, offset: 768)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !725, file: !293, line: 2316, baseType: !290, size: 64, offset: 832)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !725, file: !293, line: 2317, baseType: !290, size: 64, offset: 896)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !725, file: !293, line: 2318, baseType: !290, size: 64, offset: 960)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !725, file: !293, line: 2319, baseType: !290, size: 64, offset: 1024)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !725, file: !293, line: 2320, baseType: !290, size: 64, offset: 1088)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !725, file: !293, line: 2321, baseType: !290, size: 64, offset: 1152)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !725, file: !293, line: 2322, baseType: !290, size: 64, offset: 1216)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !725, file: !293, line: 2324, baseType: !771, size: 64, offset: 1280)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !293, line: 2324, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !292, file: !293, line: 3395, baseType: !774, size: 320)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !293, line: 1469, size: 320, elements: !775)
!775 = !{!776, !777, !778}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !774, file: !293, line: 1470, baseType: !329, size: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !774, file: !293, line: 1471, baseType: !290, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !774, file: !293, line: 1472, baseType: !290, size: 64, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !292, file: !293, line: 3396, baseType: !780, size: 320)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !293, line: 1482, size: 320, elements: !781)
!781 = !{!782, !783, !784}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !780, file: !293, line: 1483, baseType: !329, size: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !780, file: !293, line: 1484, baseType: !6, size: 32, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !780, file: !293, line: 1485, baseType: !785, size: 64, offset: 256)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 64, elements: !79)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !292, file: !293, line: 3397, baseType: !787, size: 384)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !293, line: 1829, size: 384, elements: !788)
!788 = !{!789, !790, !791, !792}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !787, file: !293, line: 1830, baseType: !329, size: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !787, file: !293, line: 1831, baseType: !412, size: 32, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !787, file: !293, line: 1832, baseType: !290, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !787, file: !293, line: 1835, baseType: !785, size: 64, offset: 320)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !292, file: !293, line: 3398, baseType: !794, size: 704)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !293, line: 1898, size: 704, elements: !795)
!795 = !{!796, !797, !798, !802, !803, !806}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !794, file: !293, line: 1899, baseType: !329, size: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !794, file: !293, line: 1902, baseType: !290, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !794, file: !293, line: 1905, baseType: !799, size: 64, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !8, line: 58, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !8, line: 57, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !794, file: !293, line: 1908, baseType: !23, size: 32, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !794, file: !293, line: 1911, baseType: !804, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !293, line: 1876, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !794, file: !293, line: 1914, baseType: !807, size: 256, offset: 448)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !293, line: 1883, size: 256, elements: !808)
!808 = !{!809, !811, !812, !817}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !807, file: !293, line: 1884, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !807, file: !293, line: 1885, baseType: !810, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !807, file: !293, line: 1891, baseType: !813, size: 64, offset: 128)
!813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !807, file: !293, line: 1891, size: 64, elements: !814)
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !813, file: !293, line: 1891, baseType: !799, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !813, file: !293, line: 1891, baseType: !290, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !807, file: !293, line: 1892, baseType: !818, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !292, file: !293, line: 3399, baseType: !820, size: 704)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !293, line: 2008, size: 704, elements: !821)
!821 = !{!822, !823, !824, !825, !826, !827, !839, !840, !841, !842, !843}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !820, file: !293, line: 2009, baseType: !329, size: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !820, file: !293, line: 2011, baseType: !23, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !820, file: !293, line: 2012, baseType: !23, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !820, file: !293, line: 2014, baseType: !412, size: 32, offset: 224)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !820, file: !293, line: 2016, baseType: !290, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !820, file: !293, line: 2017, baseType: !828, size: 64, offset: 320)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !293, line: 183, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !293, line: 183, size: 128, elements: !831)
!831 = !{!832}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !830, file: !293, line: 183, baseType: !833, size: 128)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !293, line: 182, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !293, line: 182, size: 128, elements: !835)
!835 = !{!836, !837, !838}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !834, file: !293, line: 182, baseType: !23, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !834, file: !293, line: 182, baseType: !23, size: 32, offset: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !834, file: !293, line: 182, baseType: !785, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !820, file: !293, line: 2019, baseType: !290, size: 64, offset: 384)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !820, file: !293, line: 2020, baseType: !290, size: 64, offset: 448)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !820, file: !293, line: 2021, baseType: !290, size: 64, offset: 512)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !820, file: !293, line: 2022, baseType: !290, size: 64, offset: 576)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !820, file: !293, line: 2023, baseType: !290, size: 64, offset: 640)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !292, file: !293, line: 3400, baseType: !845, size: 832)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !293, line: 2430, size: 832, elements: !846)
!846 = !{!847, !848, !849, !850, !851, !852, !853, !854, !855, !856}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !845, file: !293, line: 2431, baseType: !329, size: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !845, file: !293, line: 2433, baseType: !290, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !845, file: !293, line: 2434, baseType: !290, size: 64, offset: 256)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !845, file: !293, line: 2435, baseType: !290, size: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !845, file: !293, line: 2436, baseType: !290, size: 64, offset: 384)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !845, file: !293, line: 2437, baseType: !828, size: 64, offset: 448)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !845, file: !293, line: 2438, baseType: !290, size: 64, offset: 512)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !845, file: !293, line: 2440, baseType: !290, size: 64, offset: 576)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !845, file: !293, line: 2441, baseType: !290, size: 64, offset: 640)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !845, file: !293, line: 2443, baseType: !857, size: 128, offset: 704)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !293, line: 182, baseType: !858)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !293, line: 182, size: 128, elements: !859)
!859 = !{!860}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !858, file: !293, line: 182, baseType: !833, size: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !292, file: !293, line: 3401, baseType: !862, size: 320)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !293, line: 3327, size: 320, elements: !863)
!863 = !{!864, !865, !872}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !862, file: !293, line: 3329, baseType: !329, size: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !862, file: !293, line: 3330, baseType: !866, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !293, line: 3320, size: 192, elements: !868)
!868 = !{!869, !870, !871}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !867, file: !293, line: 3322, baseType: !866, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !867, file: !293, line: 3323, baseType: !866, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !867, file: !293, line: 3324, baseType: !290, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !862, file: !293, line: 3331, baseType: !866, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !292, file: !293, line: 3402, baseType: !874, size: 256)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !293, line: 1540, size: 256, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !874, file: !293, line: 1541, baseType: !329, size: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !874, file: !293, line: 1542, baseType: !878, size: 64, offset: 192)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !293, line: 1538, baseType: !880)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !293, line: 1538, size: 192, elements: !881)
!881 = !{!882}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !880, file: !293, line: 1538, baseType: !883, size: 192)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !293, line: 1537, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !293, line: 1537, size: 192, elements: !885)
!885 = !{!886, !887, !888}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !884, file: !293, line: 1537, baseType: !23, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !884, file: !293, line: 1537, baseType: !23, size: 32, offset: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !884, file: !293, line: 1537, baseType: !889, size: 128, offset: 64)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 128, elements: !79)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !293, line: 1535, baseType: !891)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !293, line: 1532, size: 128, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !891, file: !293, line: 1533, baseType: !290, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !891, file: !293, line: 1534, baseType: !290, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !292, file: !293, line: 3403, baseType: !896, size: 512)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !293, line: 1938, size: 512, elements: !897)
!897 = !{!898, !899, !900, !919, !1133, !1134, !1135}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !896, file: !293, line: 1939, baseType: !329, size: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !896, file: !293, line: 1940, baseType: !412, size: 32, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !896, file: !293, line: 1941, baseType: !901, size: 32, offset: 224)
!901 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !293, line: 280, baseType: !23, size: 32, elements: !902)
!902 = !{!903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918}
!903 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!904 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!905 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!906 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!907 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!908 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!909 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!910 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!911 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!912 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!913 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!914 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!915 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!916 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!917 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!918 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !896, file: !293, line: 1946, baseType: !920, size: 32, offset: 256)
!920 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !293, line: 1942, size: 32, elements: !921)
!921 = !{!922, !930, !938}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !920, file: !293, line: 1943, baseType: !923, size: 32)
!923 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !293, line: 1817, baseType: !23, size: 32, elements: !924)
!924 = !{!925, !926, !927, !928, !929}
!925 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!926 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!927 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!928 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!929 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !920, file: !293, line: 1944, baseType: !931, size: 32)
!931 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !293, line: 1805, baseType: !23, size: 32, elements: !932)
!932 = !{!933, !934, !935, !936, !937}
!933 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!934 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!935 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!936 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!937 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !920, file: !293, line: 1945, baseType: !939, size: 32)
!939 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !293, line: 39, baseType: !23, size: 32, elements: !940)
!940 = !{!941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132}
!941 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!942 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!943 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!944 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!945 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!946 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!947 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!948 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!949 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!950 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!951 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!952 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!953 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!954 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!955 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!956 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!957 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!958 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!959 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!960 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!961 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!962 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!963 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!964 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!965 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!966 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!967 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!968 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!969 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!970 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!971 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!972 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!973 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!974 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!975 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!976 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!977 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!978 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!979 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!980 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!981 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!982 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!983 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!984 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!985 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!986 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!987 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!988 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!989 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!990 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!991 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!992 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!993 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!994 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!995 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!996 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!997 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!998 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!999 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!1000 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!1001 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!1002 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!1003 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!1004 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!1005 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!1006 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!1007 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!1008 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!1009 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!1010 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!1011 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!1012 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!1013 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!1014 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!1015 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!1016 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!1017 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!1018 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!1019 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!1020 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!1021 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!1022 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!1023 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!1024 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!1025 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!1026 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!1027 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!1028 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!1029 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!1030 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!1031 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!1032 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!1033 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!1034 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!1035 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!1036 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!1037 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!1038 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!1039 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!1040 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!1041 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!1042 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!1043 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!1044 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!1045 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!1046 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!1047 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!1048 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!1049 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!1050 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!1051 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!1052 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!1053 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!1054 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!1055 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!1056 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!1057 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!1058 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!1059 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!1060 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!1061 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!1062 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!1063 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!1064 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!1065 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!1066 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!1067 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!1068 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!1069 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!1070 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!1071 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!1072 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!1073 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!1074 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!1075 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!1076 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!1077 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!1078 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!1079 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!1080 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!1081 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!1082 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!1083 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!1084 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!1085 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!1086 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!1087 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!1088 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!1089 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!1090 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!1091 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!1092 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!1093 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!1094 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!1095 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!1096 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!1097 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!1098 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!1099 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!1100 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!1101 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!1102 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!1103 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!1104 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!1105 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!1106 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!1107 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!1108 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!1109 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!1110 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!1111 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!1112 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!1113 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!1114 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!1115 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!1116 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!1117 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!1118 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!1119 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!1120 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!1121 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!1122 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!1123 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!1124 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!1125 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!1126 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!1127 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!1128 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!1129 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!1130 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!1131 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!1132 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !896, file: !293, line: 1950, baseType: !37, size: 64, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !896, file: !293, line: 1951, baseType: !37, size: 64, offset: 384)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !896, file: !293, line: 1953, baseType: !785, size: 64, offset: 448)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !292, file: !293, line: 3404, baseType: !1137, size: 1664)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !293, line: 3337, size: 1664, elements: !1138)
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1137, file: !293, line: 3338, baseType: !329, size: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1137, file: !293, line: 3341, baseType: !1141, size: 1472, offset: 192)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1142, line: 410, size: 1472, elements: !1143)
!1142 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1141, file: !1142, line: 412, baseType: !6, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1141, file: !1142, line: 413, baseType: !6, size: 32, offset: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1141, file: !1142, line: 414, baseType: !6, size: 32, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1141, file: !1142, line: 415, baseType: !6, size: 32, offset: 96)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1141, file: !1142, line: 416, baseType: !6, size: 32, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1141, file: !1142, line: 417, baseType: !6, size: 32, offset: 160)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1141, file: !1142, line: 418, baseType: !404, size: 8, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1141, file: !1142, line: 419, baseType: !404, size: 8, offset: 200)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1141, file: !1142, line: 420, baseType: !1153, size: 8, offset: 208)
!1153 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1141, file: !1142, line: 421, baseType: !1153, size: 8, offset: 216)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1141, file: !1142, line: 422, baseType: !1153, size: 8, offset: 224)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1141, file: !1142, line: 423, baseType: !1153, size: 8, offset: 232)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1141, file: !1142, line: 424, baseType: !1153, size: 8, offset: 240)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1141, file: !1142, line: 425, baseType: !1153, size: 8, offset: 248)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1141, file: !1142, line: 426, baseType: !1153, size: 8, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1141, file: !1142, line: 427, baseType: !1153, size: 8, offset: 264)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1141, file: !1142, line: 428, baseType: !1153, size: 8, offset: 272)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1141, file: !1142, line: 429, baseType: !1153, size: 8, offset: 280)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1141, file: !1142, line: 430, baseType: !1153, size: 8, offset: 288)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1141, file: !1142, line: 431, baseType: !1153, size: 8, offset: 296)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1141, file: !1142, line: 432, baseType: !1153, size: 8, offset: 304)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1141, file: !1142, line: 433, baseType: !1153, size: 8, offset: 312)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1141, file: !1142, line: 434, baseType: !1153, size: 8, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1141, file: !1142, line: 435, baseType: !1153, size: 8, offset: 328)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1141, file: !1142, line: 436, baseType: !1153, size: 8, offset: 336)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1141, file: !1142, line: 437, baseType: !1153, size: 8, offset: 344)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1141, file: !1142, line: 438, baseType: !1153, size: 8, offset: 352)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1141, file: !1142, line: 439, baseType: !1153, size: 8, offset: 360)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1141, file: !1142, line: 440, baseType: !1153, size: 8, offset: 368)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1141, file: !1142, line: 441, baseType: !1153, size: 8, offset: 376)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1141, file: !1142, line: 442, baseType: !1153, size: 8, offset: 384)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1141, file: !1142, line: 443, baseType: !1153, size: 8, offset: 392)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1141, file: !1142, line: 444, baseType: !1153, size: 8, offset: 400)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1141, file: !1142, line: 445, baseType: !1153, size: 8, offset: 408)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1141, file: !1142, line: 446, baseType: !1153, size: 8, offset: 416)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1141, file: !1142, line: 447, baseType: !1153, size: 8, offset: 424)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1141, file: !1142, line: 448, baseType: !1153, size: 8, offset: 432)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1141, file: !1142, line: 449, baseType: !1153, size: 8, offset: 440)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1141, file: !1142, line: 450, baseType: !1153, size: 8, offset: 448)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1141, file: !1142, line: 451, baseType: !1153, size: 8, offset: 456)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1141, file: !1142, line: 452, baseType: !1153, size: 8, offset: 464)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1141, file: !1142, line: 453, baseType: !1153, size: 8, offset: 472)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1141, file: !1142, line: 454, baseType: !1153, size: 8, offset: 480)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1141, file: !1142, line: 455, baseType: !1153, size: 8, offset: 488)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1141, file: !1142, line: 456, baseType: !1153, size: 8, offset: 496)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1141, file: !1142, line: 457, baseType: !1153, size: 8, offset: 504)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1141, file: !1142, line: 458, baseType: !1153, size: 8, offset: 512)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1141, file: !1142, line: 459, baseType: !1153, size: 8, offset: 520)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1141, file: !1142, line: 460, baseType: !1153, size: 8, offset: 528)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1141, file: !1142, line: 461, baseType: !1153, size: 8, offset: 536)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1141, file: !1142, line: 462, baseType: !1153, size: 8, offset: 544)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1141, file: !1142, line: 463, baseType: !1153, size: 8, offset: 552)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1141, file: !1142, line: 464, baseType: !1153, size: 8, offset: 560)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1141, file: !1142, line: 465, baseType: !1153, size: 8, offset: 568)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1141, file: !1142, line: 466, baseType: !1153, size: 8, offset: 576)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1141, file: !1142, line: 467, baseType: !1153, size: 8, offset: 584)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1141, file: !1142, line: 468, baseType: !1153, size: 8, offset: 592)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1141, file: !1142, line: 469, baseType: !1153, size: 8, offset: 600)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1141, file: !1142, line: 470, baseType: !1153, size: 8, offset: 608)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1141, file: !1142, line: 471, baseType: !1153, size: 8, offset: 616)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1141, file: !1142, line: 472, baseType: !1153, size: 8, offset: 624)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1141, file: !1142, line: 473, baseType: !1153, size: 8, offset: 632)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1141, file: !1142, line: 474, baseType: !1153, size: 8, offset: 640)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1141, file: !1142, line: 475, baseType: !1153, size: 8, offset: 648)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1141, file: !1142, line: 476, baseType: !1153, size: 8, offset: 656)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1141, file: !1142, line: 477, baseType: !1153, size: 8, offset: 664)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1141, file: !1142, line: 478, baseType: !1153, size: 8, offset: 672)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1141, file: !1142, line: 479, baseType: !1153, size: 8, offset: 680)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1141, file: !1142, line: 480, baseType: !1153, size: 8, offset: 688)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1141, file: !1142, line: 481, baseType: !1153, size: 8, offset: 696)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1141, file: !1142, line: 482, baseType: !1153, size: 8, offset: 704)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1141, file: !1142, line: 483, baseType: !1153, size: 8, offset: 712)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1141, file: !1142, line: 484, baseType: !1153, size: 8, offset: 720)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1141, file: !1142, line: 485, baseType: !1153, size: 8, offset: 728)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1141, file: !1142, line: 486, baseType: !1153, size: 8, offset: 736)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1141, file: !1142, line: 487, baseType: !1153, size: 8, offset: 744)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1141, file: !1142, line: 488, baseType: !1153, size: 8, offset: 752)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1141, file: !1142, line: 489, baseType: !1153, size: 8, offset: 760)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1141, file: !1142, line: 490, baseType: !1153, size: 8, offset: 768)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1141, file: !1142, line: 491, baseType: !1153, size: 8, offset: 776)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1141, file: !1142, line: 492, baseType: !1153, size: 8, offset: 784)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1141, file: !1142, line: 493, baseType: !1153, size: 8, offset: 792)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1141, file: !1142, line: 494, baseType: !1153, size: 8, offset: 800)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1141, file: !1142, line: 495, baseType: !1153, size: 8, offset: 808)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1141, file: !1142, line: 496, baseType: !1153, size: 8, offset: 816)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1141, file: !1142, line: 497, baseType: !1153, size: 8, offset: 824)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1141, file: !1142, line: 498, baseType: !1153, size: 8, offset: 832)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1141, file: !1142, line: 499, baseType: !1153, size: 8, offset: 840)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1141, file: !1142, line: 500, baseType: !1153, size: 8, offset: 848)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1141, file: !1142, line: 501, baseType: !1153, size: 8, offset: 856)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1141, file: !1142, line: 502, baseType: !1153, size: 8, offset: 864)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1141, file: !1142, line: 503, baseType: !1153, size: 8, offset: 872)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1141, file: !1142, line: 504, baseType: !1153, size: 8, offset: 880)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1141, file: !1142, line: 505, baseType: !1153, size: 8, offset: 888)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1141, file: !1142, line: 506, baseType: !1153, size: 8, offset: 896)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1141, file: !1142, line: 507, baseType: !1153, size: 8, offset: 904)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1141, file: !1142, line: 508, baseType: !1153, size: 8, offset: 912)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1141, file: !1142, line: 509, baseType: !1153, size: 8, offset: 920)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1141, file: !1142, line: 510, baseType: !1153, size: 8, offset: 928)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1141, file: !1142, line: 511, baseType: !1153, size: 8, offset: 936)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1141, file: !1142, line: 512, baseType: !1153, size: 8, offset: 944)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1141, file: !1142, line: 513, baseType: !1153, size: 8, offset: 952)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1141, file: !1142, line: 514, baseType: !1153, size: 8, offset: 960)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1141, file: !1142, line: 515, baseType: !1153, size: 8, offset: 968)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1141, file: !1142, line: 516, baseType: !1153, size: 8, offset: 976)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1141, file: !1142, line: 517, baseType: !1153, size: 8, offset: 984)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1141, file: !1142, line: 518, baseType: !1153, size: 8, offset: 992)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1141, file: !1142, line: 519, baseType: !1153, size: 8, offset: 1000)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1141, file: !1142, line: 520, baseType: !1153, size: 8, offset: 1008)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1141, file: !1142, line: 521, baseType: !1153, size: 8, offset: 1016)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1141, file: !1142, line: 522, baseType: !1153, size: 8, offset: 1024)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1141, file: !1142, line: 523, baseType: !1153, size: 8, offset: 1032)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1141, file: !1142, line: 524, baseType: !1153, size: 8, offset: 1040)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1141, file: !1142, line: 525, baseType: !1153, size: 8, offset: 1048)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1141, file: !1142, line: 526, baseType: !1153, size: 8, offset: 1056)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1141, file: !1142, line: 527, baseType: !1153, size: 8, offset: 1064)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1141, file: !1142, line: 528, baseType: !1153, size: 8, offset: 1072)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1141, file: !1142, line: 529, baseType: !1153, size: 8, offset: 1080)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1141, file: !1142, line: 530, baseType: !1153, size: 8, offset: 1088)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1141, file: !1142, line: 531, baseType: !1153, size: 8, offset: 1096)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1141, file: !1142, line: 532, baseType: !1153, size: 8, offset: 1104)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1141, file: !1142, line: 533, baseType: !1153, size: 8, offset: 1112)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1141, file: !1142, line: 534, baseType: !1153, size: 8, offset: 1120)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1141, file: !1142, line: 535, baseType: !1153, size: 8, offset: 1128)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1141, file: !1142, line: 536, baseType: !1153, size: 8, offset: 1136)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1141, file: !1142, line: 537, baseType: !1153, size: 8, offset: 1144)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1141, file: !1142, line: 538, baseType: !1153, size: 8, offset: 1152)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1141, file: !1142, line: 539, baseType: !1153, size: 8, offset: 1160)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1141, file: !1142, line: 540, baseType: !1153, size: 8, offset: 1168)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1141, file: !1142, line: 541, baseType: !1153, size: 8, offset: 1176)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1141, file: !1142, line: 542, baseType: !1153, size: 8, offset: 1184)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1141, file: !1142, line: 543, baseType: !1153, size: 8, offset: 1192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1141, file: !1142, line: 544, baseType: !1153, size: 8, offset: 1200)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1141, file: !1142, line: 545, baseType: !1153, size: 8, offset: 1208)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1141, file: !1142, line: 546, baseType: !1153, size: 8, offset: 1216)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1141, file: !1142, line: 547, baseType: !1153, size: 8, offset: 1224)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1141, file: !1142, line: 548, baseType: !1153, size: 8, offset: 1232)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1141, file: !1142, line: 549, baseType: !1153, size: 8, offset: 1240)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1141, file: !1142, line: 550, baseType: !1153, size: 8, offset: 1248)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1141, file: !1142, line: 551, baseType: !1153, size: 8, offset: 1256)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1141, file: !1142, line: 552, baseType: !1153, size: 8, offset: 1264)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1141, file: !1142, line: 553, baseType: !1153, size: 8, offset: 1272)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1141, file: !1142, line: 554, baseType: !1153, size: 8, offset: 1280)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1141, file: !1142, line: 555, baseType: !1153, size: 8, offset: 1288)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1141, file: !1142, line: 556, baseType: !1153, size: 8, offset: 1296)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1141, file: !1142, line: 557, baseType: !1153, size: 8, offset: 1304)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1141, file: !1142, line: 558, baseType: !1153, size: 8, offset: 1312)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1141, file: !1142, line: 559, baseType: !1153, size: 8, offset: 1320)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1141, file: !1142, line: 560, baseType: !1153, size: 8, offset: 1328)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1141, file: !1142, line: 561, baseType: !1153, size: 8, offset: 1336)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1141, file: !1142, line: 562, baseType: !1153, size: 8, offset: 1344)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1141, file: !1142, line: 563, baseType: !1153, size: 8, offset: 1352)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1141, file: !1142, line: 564, baseType: !1153, size: 8, offset: 1360)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1141, file: !1142, line: 565, baseType: !1153, size: 8, offset: 1368)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1141, file: !1142, line: 566, baseType: !1153, size: 8, offset: 1376)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1141, file: !1142, line: 567, baseType: !1153, size: 8, offset: 1384)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1141, file: !1142, line: 568, baseType: !1153, size: 8, offset: 1392)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1141, file: !1142, line: 569, baseType: !1153, size: 8, offset: 1400)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1141, file: !1142, line: 570, baseType: !1153, size: 8, offset: 1408)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1141, file: !1142, line: 571, baseType: !1153, size: 8, offset: 1416)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1141, file: !1142, line: 572, baseType: !1153, size: 8, offset: 1424)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1141, file: !1142, line: 573, baseType: !1153, size: 8, offset: 1432)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1141, file: !1142, line: 574, baseType: !1153, size: 8, offset: 1440)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !292, file: !293, line: 3405, baseType: !1309, size: 384)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !293, line: 3352, size: 384, elements: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1309, file: !293, line: 3353, baseType: !329, size: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1309, file: !293, line: 3356, baseType: !1313, size: 192, offset: 192)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1142, line: 578, size: 192, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1313, file: !1142, line: 580, baseType: !6, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1313, file: !1142, line: 581, baseType: !6, size: 32, offset: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1313, file: !1142, line: 582, baseType: !6, size: 32, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1313, file: !1142, line: 583, baseType: !6, size: 32, offset: 96)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1313, file: !1142, line: 584, baseType: !404, size: 8, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1313, file: !1142, line: 585, baseType: !404, size: 8, offset: 136)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1313, file: !1142, line: 586, baseType: !404, size: 8, offset: 144)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1313, file: !1142, line: 587, baseType: !404, size: 8, offset: 152)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1313, file: !1142, line: 588, baseType: !404, size: 8, offset: 160)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1313, file: !1142, line: 589, baseType: !404, size: 8, offset: 168)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1313, file: !1142, line: 590, baseType: !404, size: 8, offset: 176)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !62, file: !44, line: 178, baseType: !9, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !62, file: !44, line: 179, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !44, line: 150, baseType: !1330)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !44, line: 142, size: 320, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1337}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1330, file: !44, line: 144, baseType: !290, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1330, file: !44, line: 145, baseType: !41, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1330, file: !44, line: 146, baseType: !41, size: 64, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1330, file: !44, line: 147, baseType: !750, size: 32, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1330, file: !44, line: 148, baseType: !23, size: 32, offset: 224)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1330, file: !44, line: 149, baseType: !404, size: 8, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !62, file: !44, line: 180, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !44, line: 162, baseType: !1341)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !44, line: 159, size: 128, elements: !1342)
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1341, file: !44, line: 160, baseType: !290, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1341, file: !44, line: 161, baseType: !259, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !62, file: !44, line: 181, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !44, line: 181, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !57, file: !44, line: 317, baseType: !1349, size: 64)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 64, elements: !79)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !57, file: !44, line: 318, baseType: !1351, size: 320)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !44, line: 188, size: 320, elements: !1352)
!1352 = !{!1353, !1355, !1378}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1351, file: !44, line: 190, baseType: !1354, size: 192)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 192, elements: !362)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1351, file: !44, line: 193, baseType: !1356, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !44, line: 206, size: 320, elements: !1358)
!1358 = !{!1359, !1363, !1364, !1365, !1377}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1357, file: !44, line: 208, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !8, line: 62, baseType: !1362)
!1362 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !8, line: 61, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1357, file: !44, line: 211, baseType: !23, size: 32, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1357, file: !44, line: 214, baseType: !259, size: 64, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1357, file: !44, line: 224, baseType: !1366, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !44, line: 202, baseType: !1368)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !44, line: 202, size: 128, elements: !1369)
!1369 = !{!1370}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1368, file: !44, line: 202, baseType: !1371, size: 128)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !44, line: 200, baseType: !1372)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !44, line: 200, size: 128, elements: !1373)
!1373 = !{!1374, !1375, !1376}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1372, file: !44, line: 200, baseType: !23, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1372, file: !44, line: 200, baseType: !23, size: 32, offset: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1372, file: !44, line: 200, baseType: !78, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1357, file: !44, line: 234, baseType: !1366, size: 64, offset: 256)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1351, file: !44, line: 197, baseType: !259, size: 64, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !57, file: !44, line: 319, baseType: !351, size: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !57, file: !44, line: 320, baseType: !370, size: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !29, file: !11, line: 134, baseType: !280, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !29, file: !11, line: 137, baseType: !290, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !29, file: !11, line: 138, baseType: !412, size: 32, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !29, file: !11, line: 142, baseType: !23, size: 32, offset: 352)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !29, file: !11, line: 144, baseType: !6, size: 32, offset: 384)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !29, file: !11, line: 145, baseType: !6, size: 32, offset: 416)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !29, file: !11, line: 146, baseType: !1388, size: 64, offset: 448)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !11, line: 119, baseType: !259)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !10, file: !11, line: 220, baseType: !14, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !10, file: !11, line: 223, baseType: !280, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !10, file: !11, line: 226, baseType: !1392, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !11, line: 185, flags: DIFlagFwdDecl)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !10, file: !11, line: 229, baseType: !1395, size: 128, offset: 256)
!1395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1396, size: 128, elements: !243)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !11, line: 229, flags: DIFlagFwdDecl)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !10, file: !11, line: 232, baseType: !9, size: 64, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !10, file: !11, line: 233, baseType: !9, size: 64, offset: 448)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !10, file: !11, line: 238, baseType: !1401, size: 64, offset: 512)
!1401 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !11, line: 235, size: 64, elements: !1402)
!1402 = !{!1403, !1409}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1401, file: !11, line: 236, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !11, line: 273, size: 128, elements: !1406)
!1406 = !{!1407, !1408}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1405, file: !11, line: 275, baseType: !37, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1405, file: !11, line: 278, baseType: !37, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1401, file: !11, line: 237, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !11, line: 259, size: 320, elements: !1412)
!1412 = !{!1413, !1414, !1415, !1416, !1417}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1411, file: !11, line: 261, baseType: !41, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1411, file: !11, line: 262, baseType: !41, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1411, file: !11, line: 266, baseType: !41, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1411, file: !11, line: 267, baseType: !41, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1411, file: !11, line: 270, baseType: !6, size: 32, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !10, file: !11, line: 241, baseType: !1388, size: 64, offset: 576)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !10, file: !11, line: 244, baseType: !6, size: 32, offset: 640)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !10, file: !11, line: 247, baseType: !6, size: 32, offset: 672)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !10, file: !11, line: 250, baseType: !6, size: 32, offset: 704)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !10, file: !11, line: 253, baseType: !6, size: 32, offset: 736)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !10, file: !11, line: 256, baseType: !6, size: 32, offset: 768)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!404, !1427, !603}
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !8, line: 112, baseType: !1428)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1431 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1432, retainedTypes: !1575, globals: !1606, nameTableKind: None)
!1432 = !{!82, !568, !575, !667, !901, !923, !931, !939, !1433}
!1433 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !44, line: 45, baseType: !23, size: 32, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574}
!1435 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!1436 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!1437 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!1438 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!1439 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!1440 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!1441 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!1442 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!1443 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!1444 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!1445 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!1446 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!1447 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!1448 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!1449 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!1450 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!1451 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!1452 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!1453 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!1454 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!1455 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!1456 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!1457 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!1458 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!1459 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!1460 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!1461 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!1462 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!1463 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!1464 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!1465 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!1466 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!1467 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!1468 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!1469 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!1470 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!1471 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!1472 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!1473 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!1474 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!1475 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!1476 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!1477 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!1478 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!1479 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!1480 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!1481 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!1482 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!1483 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!1484 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!1485 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!1486 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!1487 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!1488 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!1489 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!1490 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!1491 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!1492 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!1493 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!1494 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!1495 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!1496 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!1497 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!1498 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!1499 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!1500 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!1501 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!1502 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!1503 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!1504 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!1505 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!1506 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!1507 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!1508 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!1509 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!1510 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!1511 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!1512 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!1513 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!1514 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!1515 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!1516 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!1517 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!1518 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!1519 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!1520 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!1521 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!1522 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!1523 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!1524 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!1525 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!1526 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!1527 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!1528 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!1529 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!1530 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!1531 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!1532 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!1533 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!1534 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!1535 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!1536 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!1537 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!1538 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!1539 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!1540 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!1541 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!1542 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!1543 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!1544 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!1545 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!1546 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!1547 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!1548 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!1549 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!1550 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!1551 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!1552 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!1553 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!1554 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!1555 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!1556 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!1557 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!1558 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!1559 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!1560 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!1561 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!1562 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!1563 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!1564 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!1565 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!1566 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!1567 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!1568 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!1569 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!1570 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!1571 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!1572 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!1573 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!1574 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!1575 = !{!1576, !404, !6, !1577, !280, !67, !1433, !1578, !1579, !23, !1430, !1586, !1592, !242, !1593}
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !11, line: 682, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 679, size: 128, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1581, file: !11, line: 680, baseType: !23, size: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !1581, file: !11, line: 681, baseType: !1585, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_list", file: !11, line: 572, size: 128, elements: !1588)
!1588 = !{!1589, !1590, !1591}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !1587, file: !11, line: 574, baseType: !6, size: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "num_edges", scope: !1587, file: !11, line: 575, baseType: !6, size: 32, offset: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "index_to_edge", scope: !1587, file: !11, line: 576, baseType: !1592, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !1595, line: 32, baseType: !1596)
!1595 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !1595, line: 32, size: 96, elements: !1597)
!1597 = !{!1598}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1596, file: !1595, line: 32, baseType: !1599, size: 96)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !1595, line: 31, baseType: !1600)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !1595, line: 31, size: 96, elements: !1601)
!1601 = !{!1602, !1603, !1604}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1600, file: !1595, line: 31, baseType: !23, size: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1600, file: !1595, line: 31, baseType: !23, size: 32, offset: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1600, file: !1595, line: 31, baseType: !1605, size: 32, offset: 64)
!1605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32, elements: !79)
!1606 = !{!0, !1607}
!1607 = !DIGlobalVariableExpression(var: !1608, expr: !DIExpression())
!1608 = distinct !DIGlobalVariable(name: "v_size", scope: !2, file: !3, line: 1166, type: !23, isLocal: true, isDefinition: true)
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1623}
!1610 = !DILocalVariable(name: "bb", arg: 1, scope: !2, file: !3, line: 1152, type: !7)
!1611 = !DILocalVariable(name: "reverse", arg: 2, scope: !2, file: !3, line: 1152, type: !6)
!1612 = !DILocalVariable(name: "predicate", arg: 3, scope: !2, file: !3, line: 1153, type: !1424)
!1613 = !DILocalVariable(name: "rslt", arg: 4, scope: !2, file: !3, line: 1154, type: !1430)
!1614 = !DILocalVariable(name: "rslt_max", arg: 5, scope: !2, file: !3, line: 1154, type: !6)
!1615 = !DILocalVariable(name: "data", arg: 6, scope: !2, file: !3, line: 1154, type: !603)
!1616 = !DILocalVariable(name: "st", scope: !2, file: !3, line: 1156, type: !1430)
!1617 = !DILocalVariable(name: "lbb", scope: !2, file: !3, line: 1156, type: !7)
!1618 = !DILocalVariable(name: "sp", scope: !2, file: !3, line: 1157, type: !6)
!1619 = !DILocalVariable(name: "tv", scope: !2, file: !3, line: 1157, type: !6)
!1620 = !DILocalVariable(name: "size", scope: !2, file: !3, line: 1158, type: !23)
!1621 = !DILocalVariable(name: "e", scope: !1622, file: !3, line: 1199, type: !27)
!1622 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1198, column: 5)
!1623 = !DILocalVariable(name: "ei", scope: !1622, file: !3, line: 1200, type: !1580)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !1625, line: 45, baseType: !1626)
!1625 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !1625, line: 39, size: 192, elements: !1628)
!1628 = !{!1629, !1630, !1631, !1632}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !1627, file: !1625, line: 41, baseType: !1576, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !1627, file: !1625, line: 42, baseType: !23, size: 32, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1627, file: !1625, line: 43, baseType: !23, size: 32, offset: 96)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !1627, file: !1625, line: 44, baseType: !1633, size: 64, offset: 128)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 64, elements: !79)
!1634 = !{i32 2, !"Dwarf Version", i32 4}
!1635 = !{i32 2, !"Debug Info Version", i32 3}
!1636 = !{i32 1, !"wchar_size", i32 4}
!1637 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1638 = distinct !DISubprogram(name: "vprintf", scope: !1639, file: !1639, line: 39, type: !1640, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1650)
!1639 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!6, !1642, !1643}
!1642 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1645)
!1645 = !{!1646, !1647, !1648, !1649}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1644, file: !3, baseType: !23, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1644, file: !3, baseType: !23, size: 32, offset: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1644, file: !3, baseType: !280, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1644, file: !3, baseType: !280, size: 64, offset: 128)
!1650 = !{!1651, !1652}
!1651 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1638, file: !1639, line: 39, type: !1642)
!1652 = !DILocalVariable(name: "__arg", arg: 2, scope: !1638, file: !1639, line: 39, type: !1643)
!1653 = !DILocation(line: 0, scope: !1638)
!1654 = !DILocation(line: 41, column: 20, scope: !1638)
!1655 = !DILocation(line: 41, column: 10, scope: !1638)
!1656 = !DILocation(line: 41, column: 3, scope: !1638)
!1657 = distinct !DISubprogram(name: "getchar", scope: !1639, file: !1639, line: 47, type: !1658, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1660)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!6}
!1660 = !{}
!1661 = !DILocation(line: 49, column: 16, scope: !1657)
!1662 = !DILocation(line: 49, column: 10, scope: !1657)
!1663 = !DILocation(line: 49, column: 3, scope: !1657)
!1664 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1639, file: !1639, line: 56, type: !1665, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1718)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!6, !1667}
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1669, line: 7, baseType: !1670)
!1669 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1671, line: 49, size: 1728, elements: !1672)
!1671 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1672 = !{!1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1688, !1690, !1691, !1692, !1695, !1697, !1698, !1699, !1702, !1704, !1707, !1710, !1711, !1712, !1713, !1714}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1670, file: !1671, line: 51, baseType: !6, size: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1670, file: !1671, line: 54, baseType: !265, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1670, file: !1671, line: 55, baseType: !265, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1670, file: !1671, line: 56, baseType: !265, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1670, file: !1671, line: 57, baseType: !265, size: 64, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1670, file: !1671, line: 58, baseType: !265, size: 64, offset: 320)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1670, file: !1671, line: 59, baseType: !265, size: 64, offset: 384)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1670, file: !1671, line: 60, baseType: !265, size: 64, offset: 448)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1670, file: !1671, line: 61, baseType: !265, size: 64, offset: 512)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1670, file: !1671, line: 64, baseType: !265, size: 64, offset: 576)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1670, file: !1671, line: 65, baseType: !265, size: 64, offset: 640)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1670, file: !1671, line: 66, baseType: !265, size: 64, offset: 704)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1670, file: !1671, line: 68, baseType: !1686, size: 64, offset: 768)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1671, line: 36, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1670, file: !1671, line: 70, baseType: !1689, size: 64, offset: 832)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1670, file: !1671, line: 72, baseType: !6, size: 32, offset: 896)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1670, file: !1671, line: 73, baseType: !6, size: 32, offset: 928)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1670, file: !1671, line: 74, baseType: !1693, size: 64, offset: 960)
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1694, line: 152, baseType: !259)
!1694 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1670, file: !1671, line: 77, baseType: !1696, size: 16, offset: 1024)
!1696 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1670, file: !1671, line: 78, baseType: !1153, size: 8, offset: 1040)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1670, file: !1671, line: 79, baseType: !386, size: 8, offset: 1048)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1670, file: !1671, line: 81, baseType: !1700, size: 64, offset: 1088)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1671, line: 43, baseType: null)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1670, file: !1671, line: 89, baseType: !1703, size: 64, offset: 1152)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1694, line: 153, baseType: !259)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1670, file: !1671, line: 91, baseType: !1705, size: 64, offset: 1216)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1671, line: 37, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1670, file: !1671, line: 92, baseType: !1708, size: 64, offset: 1280)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1671, line: 38, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1670, file: !1671, line: 93, baseType: !1689, size: 64, offset: 1344)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1670, file: !1671, line: 94, baseType: !280, size: 64, offset: 1408)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1670, file: !1671, line: 95, baseType: !618, size: 64, offset: 1472)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1670, file: !1671, line: 96, baseType: !6, size: 32, offset: 1536)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1670, file: !1671, line: 98, baseType: !1715, size: 160, offset: 1568)
!1715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 160, elements: !1716)
!1716 = !{!1717}
!1717 = !DISubrange(count: 20)
!1718 = !{!1719}
!1719 = !DILocalVariable(name: "__fp", arg: 1, scope: !1664, file: !1639, line: 56, type: !1667)
!1720 = !DILocation(line: 0, scope: !1664)
!1721 = !DILocation(line: 58, column: 10, scope: !1664)
!1722 = !DILocation(line: 58, column: 3, scope: !1664)
!1723 = distinct !DISubprogram(name: "getc_unlocked", scope: !1639, file: !1639, line: 66, type: !1665, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1724)
!1724 = !{!1725}
!1725 = !DILocalVariable(name: "__fp", arg: 1, scope: !1723, file: !1639, line: 66, type: !1667)
!1726 = !DILocation(line: 0, scope: !1723)
!1727 = !DILocation(line: 68, column: 10, scope: !1723)
!1728 = !DILocation(line: 68, column: 3, scope: !1723)
!1729 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1639, file: !1639, line: 73, type: !1658, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1660)
!1730 = !DILocation(line: 75, column: 10, scope: !1729)
!1731 = !DILocation(line: 75, column: 3, scope: !1729)
!1732 = distinct !DISubprogram(name: "putchar", scope: !1639, file: !1639, line: 82, type: !1733, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1735)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!6, !6}
!1735 = !{!1736}
!1736 = !DILocalVariable(name: "__c", arg: 1, scope: !1732, file: !1639, line: 82, type: !6)
!1737 = !DILocation(line: 0, scope: !1732)
!1738 = !DILocation(line: 84, column: 21, scope: !1732)
!1739 = !DILocation(line: 84, column: 10, scope: !1732)
!1740 = !DILocation(line: 84, column: 3, scope: !1732)
!1741 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1639, file: !1639, line: 91, type: !1742, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1744)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!6, !6, !1667}
!1744 = !{!1745, !1746}
!1745 = !DILocalVariable(name: "__c", arg: 1, scope: !1741, file: !1639, line: 91, type: !6)
!1746 = !DILocalVariable(name: "__stream", arg: 2, scope: !1741, file: !1639, line: 91, type: !1667)
!1747 = !DILocation(line: 0, scope: !1741)
!1748 = !DILocation(line: 93, column: 10, scope: !1741)
!1749 = !DILocation(line: 93, column: 3, scope: !1741)
!1750 = distinct !DISubprogram(name: "putc_unlocked", scope: !1639, file: !1639, line: 101, type: !1742, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1751)
!1751 = !{!1752, !1753}
!1752 = !DILocalVariable(name: "__c", arg: 1, scope: !1750, file: !1639, line: 101, type: !6)
!1753 = !DILocalVariable(name: "__stream", arg: 2, scope: !1750, file: !1639, line: 101, type: !1667)
!1754 = !DILocation(line: 0, scope: !1750)
!1755 = !DILocation(line: 103, column: 10, scope: !1750)
!1756 = !DILocation(line: 103, column: 3, scope: !1750)
!1757 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1639, file: !1639, line: 108, type: !1733, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1758)
!1758 = !{!1759}
!1759 = !DILocalVariable(name: "__c", arg: 1, scope: !1757, file: !1639, line: 108, type: !6)
!1760 = !DILocation(line: 0, scope: !1757)
!1761 = !DILocation(line: 110, column: 10, scope: !1757)
!1762 = !DILocation(line: 110, column: 3, scope: !1757)
!1763 = distinct !DISubprogram(name: "getline", scope: !1639, file: !1639, line: 118, type: !1764, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1768)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!1766, !1577, !1767, !1667}
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1694, line: 193, baseType: !259)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!1768 = !{!1769, !1770, !1771}
!1769 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1763, file: !1639, line: 118, type: !1577)
!1770 = !DILocalVariable(name: "__n", arg: 2, scope: !1763, file: !1639, line: 118, type: !1767)
!1771 = !DILocalVariable(name: "__stream", arg: 3, scope: !1763, file: !1639, line: 118, type: !1667)
!1772 = !DILocation(line: 0, scope: !1763)
!1773 = !DILocation(line: 120, column: 10, scope: !1763)
!1774 = !DILocation(line: 120, column: 3, scope: !1763)
!1775 = distinct !DISubprogram(name: "feof_unlocked", scope: !1639, file: !1639, line: 128, type: !1665, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1776)
!1776 = !{!1777}
!1777 = !DILocalVariable(name: "__stream", arg: 1, scope: !1775, file: !1639, line: 128, type: !1667)
!1778 = !DILocation(line: 0, scope: !1775)
!1779 = !DILocation(line: 130, column: 10, scope: !1775)
!1780 = !DILocation(line: 130, column: 3, scope: !1775)
!1781 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1639, file: !1639, line: 135, type: !1665, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1782)
!1782 = !{!1783}
!1783 = !DILocalVariable(name: "__stream", arg: 1, scope: !1781, file: !1639, line: 135, type: !1667)
!1784 = !DILocation(line: 0, scope: !1781)
!1785 = !DILocation(line: 137, column: 10, scope: !1781)
!1786 = !DILocation(line: 137, column: 3, scope: !1781)
!1787 = distinct !DISubprogram(name: "tolower", scope: !1788, file: !1788, line: 207, type: !1733, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1789)
!1788 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1789 = !{!1790}
!1790 = !DILocalVariable(name: "__c", arg: 1, scope: !1787, file: !1788, line: 207, type: !6)
!1791 = !DILocation(line: 0, scope: !1787)
!1792 = !DILocation(line: 209, column: 22, scope: !1787)
!1793 = !DILocation(line: 209, column: 39, scope: !1787)
!1794 = !DILocation(line: 209, column: 38, scope: !1787)
!1795 = !DILocation(line: 209, column: 37, scope: !1787)
!1796 = !DILocation(line: 209, column: 10, scope: !1787)
!1797 = !DILocation(line: 209, column: 3, scope: !1787)
!1798 = distinct !DISubprogram(name: "toupper", scope: !1788, file: !1788, line: 213, type: !1733, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1799)
!1799 = !{!1800}
!1800 = !DILocalVariable(name: "__c", arg: 1, scope: !1798, file: !1788, line: 213, type: !6)
!1801 = !DILocation(line: 0, scope: !1798)
!1802 = !DILocation(line: 215, column: 22, scope: !1798)
!1803 = !DILocation(line: 215, column: 39, scope: !1798)
!1804 = !DILocation(line: 215, column: 38, scope: !1798)
!1805 = !DILocation(line: 215, column: 37, scope: !1798)
!1806 = !DILocation(line: 215, column: 10, scope: !1798)
!1807 = !DILocation(line: 215, column: 3, scope: !1798)
!1808 = distinct !DISubprogram(name: "atoi", scope: !1809, file: !1809, line: 361, type: !1810, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1812)
!1809 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!6, !67}
!1812 = !{!1813}
!1813 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1808, file: !1809, line: 361, type: !67)
!1814 = !DILocation(line: 0, scope: !1808)
!1815 = !DILocation(line: 363, column: 16, scope: !1808)
!1816 = !DILocation(line: 363, column: 10, scope: !1808)
!1817 = !DILocation(line: 363, column: 3, scope: !1808)
!1818 = distinct !DISubprogram(name: "atol", scope: !1809, file: !1809, line: 366, type: !1819, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1821)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!259, !67}
!1821 = !{!1822}
!1822 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1818, file: !1809, line: 366, type: !67)
!1823 = !DILocation(line: 0, scope: !1818)
!1824 = !DILocation(line: 368, column: 10, scope: !1818)
!1825 = !DILocation(line: 368, column: 3, scope: !1818)
!1826 = distinct !DISubprogram(name: "atoll", scope: !1809, file: !1809, line: 373, type: !1827, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1830)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!1829, !67}
!1829 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1830 = !{!1831}
!1831 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1826, file: !1809, line: 373, type: !67)
!1832 = !DILocation(line: 0, scope: !1826)
!1833 = !DILocation(line: 375, column: 10, scope: !1826)
!1834 = !DILocation(line: 375, column: 3, scope: !1826)
!1835 = distinct !DISubprogram(name: "bsearch", scope: !1836, file: !1836, line: 20, type: !1837, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1840)
!1836 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!280, !603, !603, !618, !618, !1839}
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1809, line: 808, baseType: !607)
!1840 = !{!1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850}
!1841 = !DILocalVariable(name: "__key", arg: 1, scope: !1835, file: !1836, line: 20, type: !603)
!1842 = !DILocalVariable(name: "__base", arg: 2, scope: !1835, file: !1836, line: 20, type: !603)
!1843 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1835, file: !1836, line: 20, type: !618)
!1844 = !DILocalVariable(name: "__size", arg: 4, scope: !1835, file: !1836, line: 20, type: !618)
!1845 = !DILocalVariable(name: "__compar", arg: 5, scope: !1835, file: !1836, line: 21, type: !1839)
!1846 = !DILocalVariable(name: "__l", scope: !1835, file: !1836, line: 23, type: !618)
!1847 = !DILocalVariable(name: "__u", scope: !1835, file: !1836, line: 23, type: !618)
!1848 = !DILocalVariable(name: "__idx", scope: !1835, file: !1836, line: 23, type: !618)
!1849 = !DILocalVariable(name: "__p", scope: !1835, file: !1836, line: 24, type: !603)
!1850 = !DILocalVariable(name: "__comparison", scope: !1835, file: !1836, line: 25, type: !6)
!1851 = !DILocation(line: 0, scope: !1835)
!1852 = !DILocation(line: 29, column: 3, scope: !1835)
!1853 = !DILocation(line: 27, column: 7, scope: !1835)
!1854 = !DILocation(line: 29, column: 14, scope: !1835)
!1855 = !DILocation(line: 31, column: 20, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1835, file: !1836, line: 30, column: 5)
!1857 = !DILocation(line: 31, column: 27, scope: !1856)
!1858 = !DILocation(line: 32, column: 56, scope: !1856)
!1859 = !DILocation(line: 32, column: 47, scope: !1856)
!1860 = !DILocation(line: 33, column: 22, scope: !1856)
!1861 = !DILocation(line: 34, column: 24, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1856, file: !1836, line: 34, column: 11)
!1863 = !DILocation(line: 34, column: 11, scope: !1856)
!1864 = !DILocation(line: 36, column: 29, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1862, file: !1836, line: 36, column: 16)
!1866 = !DILocation(line: 36, column: 16, scope: !1862)
!1867 = !DILocation(line: 37, column: 14, scope: !1865)
!1868 = distinct !{!1868, !1852, !1869}
!1869 = !DILocation(line: 40, column: 5, scope: !1835)
!1870 = !DILocation(line: 43, column: 1, scope: !1835)
!1871 = distinct !DISubprogram(name: "atof", scope: !1872, file: !1872, line: 25, type: !1873, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1876)
!1872 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!1875, !67}
!1875 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1876 = !{!1877}
!1877 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1871, file: !1872, line: 25, type: !67)
!1878 = !DILocation(line: 0, scope: !1871)
!1879 = !DILocation(line: 27, column: 10, scope: !1871)
!1880 = !DILocation(line: 27, column: 3, scope: !1871)
!1881 = distinct !DISubprogram(name: "strtoimax", scope: !1882, file: !1882, line: 324, type: !1883, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1889)
!1882 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!1885, !1642, !1888, !6}
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1886, line: 101, baseType: !1887)
!1886 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1694, line: 72, baseType: !259)
!1888 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1577)
!1889 = !{!1890, !1891, !1892}
!1890 = !DILocalVariable(name: "nptr", arg: 1, scope: !1881, file: !1882, line: 324, type: !1642)
!1891 = !DILocalVariable(name: "endptr", arg: 2, scope: !1881, file: !1882, line: 324, type: !1888)
!1892 = !DILocalVariable(name: "base", arg: 3, scope: !1881, file: !1882, line: 324, type: !6)
!1893 = !DILocation(line: 0, scope: !1881)
!1894 = !DILocation(line: 327, column: 10, scope: !1881)
!1895 = !DILocation(line: 327, column: 3, scope: !1881)
!1896 = distinct !DISubprogram(name: "strtoumax", scope: !1882, file: !1882, line: 336, type: !1897, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1901)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!1899, !1642, !1888, !6}
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1886, line: 102, baseType: !1900)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1694, line: 73, baseType: !242)
!1901 = !{!1902, !1903, !1904}
!1902 = !DILocalVariable(name: "nptr", arg: 1, scope: !1896, file: !1882, line: 336, type: !1642)
!1903 = !DILocalVariable(name: "endptr", arg: 2, scope: !1896, file: !1882, line: 336, type: !1888)
!1904 = !DILocalVariable(name: "base", arg: 3, scope: !1896, file: !1882, line: 336, type: !6)
!1905 = !DILocation(line: 0, scope: !1896)
!1906 = !DILocation(line: 339, column: 10, scope: !1896)
!1907 = !DILocation(line: 339, column: 3, scope: !1896)
!1908 = distinct !DISubprogram(name: "wcstoimax", scope: !1882, file: !1882, line: 348, type: !1909, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1918)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!1885, !1911, !1915, !6}
!1911 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1912)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1914)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1882, line: 34, baseType: !6)
!1915 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1916)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1918 = !{!1919, !1920, !1921}
!1919 = !DILocalVariable(name: "nptr", arg: 1, scope: !1908, file: !1882, line: 348, type: !1911)
!1920 = !DILocalVariable(name: "endptr", arg: 2, scope: !1908, file: !1882, line: 348, type: !1915)
!1921 = !DILocalVariable(name: "base", arg: 3, scope: !1908, file: !1882, line: 348, type: !6)
!1922 = !DILocation(line: 0, scope: !1908)
!1923 = !DILocation(line: 351, column: 10, scope: !1908)
!1924 = !DILocation(line: 351, column: 3, scope: !1908)
!1925 = distinct !DISubprogram(name: "wcstoumax", scope: !1882, file: !1882, line: 362, type: !1926, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1928)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!1899, !1911, !1915, !6}
!1928 = !{!1929, !1930, !1931}
!1929 = !DILocalVariable(name: "nptr", arg: 1, scope: !1925, file: !1882, line: 362, type: !1911)
!1930 = !DILocalVariable(name: "endptr", arg: 2, scope: !1925, file: !1882, line: 362, type: !1915)
!1931 = !DILocalVariable(name: "base", arg: 3, scope: !1925, file: !1882, line: 362, type: !6)
!1932 = !DILocation(line: 0, scope: !1925)
!1933 = !DILocation(line: 365, column: 10, scope: !1925)
!1934 = !DILocation(line: 365, column: 3, scope: !1925)
!1935 = distinct !DISubprogram(name: "stat", scope: !1936, file: !1936, line: 453, type: !1937, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1974)
!1936 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!6, !67, !1939}
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1941, line: 46, size: 1152, elements: !1942)
!1941 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1942 = !{!1943, !1945, !1947, !1949, !1951, !1953, !1955, !1956, !1957, !1958, !1960, !1962, !1970, !1971, !1972}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1940, file: !1941, line: 48, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1694, line: 145, baseType: !242)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1940, file: !1941, line: 53, baseType: !1946, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1694, line: 148, baseType: !242)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1940, file: !1941, line: 61, baseType: !1948, size: 64, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1694, line: 151, baseType: !242)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1940, file: !1941, line: 62, baseType: !1950, size: 32, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1694, line: 150, baseType: !23)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1940, file: !1941, line: 64, baseType: !1952, size: 32, offset: 224)
!1952 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1694, line: 146, baseType: !23)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1940, file: !1941, line: 65, baseType: !1954, size: 32, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1694, line: 147, baseType: !23)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1940, file: !1941, line: 67, baseType: !6, size: 32, offset: 288)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1940, file: !1941, line: 69, baseType: !1944, size: 64, offset: 320)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1940, file: !1941, line: 74, baseType: !1693, size: 64, offset: 384)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1940, file: !1941, line: 78, baseType: !1959, size: 64, offset: 448)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1694, line: 174, baseType: !259)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1940, file: !1941, line: 80, baseType: !1961, size: 64, offset: 512)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1694, line: 179, baseType: !259)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1940, file: !1941, line: 91, baseType: !1963, size: 128, offset: 576)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1964, line: 10, size: 128, elements: !1965)
!1964 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1965 = !{!1966, !1968}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1963, file: !1964, line: 12, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1694, line: 160, baseType: !259)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1963, file: !1964, line: 16, baseType: !1969, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1694, line: 196, baseType: !259)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1940, file: !1941, line: 92, baseType: !1963, size: 128, offset: 704)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1940, file: !1941, line: 93, baseType: !1963, size: 128, offset: 832)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1940, file: !1941, line: 106, baseType: !1973, size: 192, offset: 960)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1969, size: 192, elements: !362)
!1974 = !{!1975, !1976}
!1975 = !DILocalVariable(name: "__path", arg: 1, scope: !1935, file: !1936, line: 453, type: !67)
!1976 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1935, file: !1936, line: 453, type: !1939)
!1977 = !DILocation(line: 0, scope: !1935)
!1978 = !DILocation(line: 455, column: 10, scope: !1935)
!1979 = !DILocation(line: 455, column: 3, scope: !1935)
!1980 = distinct !DISubprogram(name: "lstat", scope: !1936, file: !1936, line: 460, type: !1937, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1981)
!1981 = !{!1982, !1983}
!1982 = !DILocalVariable(name: "__path", arg: 1, scope: !1980, file: !1936, line: 460, type: !67)
!1983 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1980, file: !1936, line: 460, type: !1939)
!1984 = !DILocation(line: 0, scope: !1980)
!1985 = !DILocation(line: 462, column: 10, scope: !1980)
!1986 = !DILocation(line: 462, column: 3, scope: !1980)
!1987 = distinct !DISubprogram(name: "fstat", scope: !1936, file: !1936, line: 467, type: !1988, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1990)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!6, !6, !1939}
!1990 = !{!1991, !1992}
!1991 = !DILocalVariable(name: "__fd", arg: 1, scope: !1987, file: !1936, line: 467, type: !6)
!1992 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1987, file: !1936, line: 467, type: !1939)
!1993 = !DILocation(line: 0, scope: !1987)
!1994 = !DILocation(line: 469, column: 10, scope: !1987)
!1995 = !DILocation(line: 469, column: 3, scope: !1987)
!1996 = distinct !DISubprogram(name: "fstatat", scope: !1936, file: !1936, line: 474, type: !1997, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!6, !6, !67, !1939, !6}
!1999 = !{!2000, !2001, !2002, !2003}
!2000 = !DILocalVariable(name: "__fd", arg: 1, scope: !1996, file: !1936, line: 474, type: !6)
!2001 = !DILocalVariable(name: "__filename", arg: 2, scope: !1996, file: !1936, line: 474, type: !67)
!2002 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1996, file: !1936, line: 474, type: !1939)
!2003 = !DILocalVariable(name: "__flag", arg: 4, scope: !1996, file: !1936, line: 474, type: !6)
!2004 = !DILocation(line: 0, scope: !1996)
!2005 = !DILocation(line: 477, column: 10, scope: !1996)
!2006 = !DILocation(line: 477, column: 3, scope: !1996)
!2007 = distinct !DISubprogram(name: "mknod", scope: !1936, file: !1936, line: 483, type: !2008, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!6, !67, !1950, !1944}
!2010 = !{!2011, !2012, !2013}
!2011 = !DILocalVariable(name: "__path", arg: 1, scope: !2007, file: !1936, line: 483, type: !67)
!2012 = !DILocalVariable(name: "__mode", arg: 2, scope: !2007, file: !1936, line: 483, type: !1950)
!2013 = !DILocalVariable(name: "__dev", arg: 3, scope: !2007, file: !1936, line: 483, type: !1944)
!2014 = !DILocation(line: 0, scope: !2007)
!2015 = !DILocation(line: 485, column: 10, scope: !2007)
!2016 = !DILocation(line: 485, column: 3, scope: !2007)
!2017 = distinct !DISubprogram(name: "mknodat", scope: !1936, file: !1936, line: 491, type: !2018, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2020)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!6, !6, !67, !1950, !1944}
!2020 = !{!2021, !2022, !2023, !2024}
!2021 = !DILocalVariable(name: "__fd", arg: 1, scope: !2017, file: !1936, line: 491, type: !6)
!2022 = !DILocalVariable(name: "__path", arg: 2, scope: !2017, file: !1936, line: 491, type: !67)
!2023 = !DILocalVariable(name: "__mode", arg: 3, scope: !2017, file: !1936, line: 491, type: !1950)
!2024 = !DILocalVariable(name: "__dev", arg: 4, scope: !2017, file: !1936, line: 491, type: !1944)
!2025 = !DILocation(line: 0, scope: !2017)
!2026 = !DILocation(line: 494, column: 10, scope: !2017)
!2027 = !DILocation(line: 494, column: 3, scope: !2017)
!2028 = distinct !DISubprogram(name: "stat64", scope: !1936, file: !1936, line: 502, type: !2029, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2051)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!6, !67, !2031}
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1941, line: 119, size: 1152, elements: !2033)
!2033 = !{!2034, !2035, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2047, !2048, !2049, !2050}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2032, file: !1941, line: 121, baseType: !1944, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2032, file: !1941, line: 123, baseType: !2036, size: 64, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1694, line: 149, baseType: !242)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2032, file: !1941, line: 124, baseType: !1948, size: 64, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2032, file: !1941, line: 125, baseType: !1950, size: 32, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2032, file: !1941, line: 132, baseType: !1952, size: 32, offset: 224)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2032, file: !1941, line: 133, baseType: !1954, size: 32, offset: 256)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2032, file: !1941, line: 135, baseType: !6, size: 32, offset: 288)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2032, file: !1941, line: 136, baseType: !1944, size: 64, offset: 320)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2032, file: !1941, line: 137, baseType: !1693, size: 64, offset: 384)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2032, file: !1941, line: 143, baseType: !1959, size: 64, offset: 448)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2032, file: !1941, line: 144, baseType: !2046, size: 64, offset: 512)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1694, line: 180, baseType: !259)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2032, file: !1941, line: 152, baseType: !1963, size: 128, offset: 576)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2032, file: !1941, line: 153, baseType: !1963, size: 128, offset: 704)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2032, file: !1941, line: 154, baseType: !1963, size: 128, offset: 832)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2032, file: !1941, line: 164, baseType: !1973, size: 192, offset: 960)
!2051 = !{!2052, !2053}
!2052 = !DILocalVariable(name: "__path", arg: 1, scope: !2028, file: !1936, line: 502, type: !67)
!2053 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2028, file: !1936, line: 502, type: !2031)
!2054 = !DILocation(line: 0, scope: !2028)
!2055 = !DILocation(line: 504, column: 10, scope: !2028)
!2056 = !DILocation(line: 504, column: 3, scope: !2028)
!2057 = distinct !DISubprogram(name: "lstat64", scope: !1936, file: !1936, line: 509, type: !2029, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2058)
!2058 = !{!2059, !2060}
!2059 = !DILocalVariable(name: "__path", arg: 1, scope: !2057, file: !1936, line: 509, type: !67)
!2060 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2057, file: !1936, line: 509, type: !2031)
!2061 = !DILocation(line: 0, scope: !2057)
!2062 = !DILocation(line: 511, column: 10, scope: !2057)
!2063 = !DILocation(line: 511, column: 3, scope: !2057)
!2064 = distinct !DISubprogram(name: "fstat64", scope: !1936, file: !1936, line: 516, type: !2065, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!6, !6, !2031}
!2067 = !{!2068, !2069}
!2068 = !DILocalVariable(name: "__fd", arg: 1, scope: !2064, file: !1936, line: 516, type: !6)
!2069 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2064, file: !1936, line: 516, type: !2031)
!2070 = !DILocation(line: 0, scope: !2064)
!2071 = !DILocation(line: 518, column: 10, scope: !2064)
!2072 = !DILocation(line: 518, column: 3, scope: !2064)
!2073 = distinct !DISubprogram(name: "fstatat64", scope: !1936, file: !1936, line: 523, type: !2074, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2076)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!6, !6, !67, !2031, !6}
!2076 = !{!2077, !2078, !2079, !2080}
!2077 = !DILocalVariable(name: "__fd", arg: 1, scope: !2073, file: !1936, line: 523, type: !6)
!2078 = !DILocalVariable(name: "__filename", arg: 2, scope: !2073, file: !1936, line: 523, type: !67)
!2079 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2073, file: !1936, line: 523, type: !2031)
!2080 = !DILocalVariable(name: "__flag", arg: 4, scope: !2073, file: !1936, line: 523, type: !6)
!2081 = !DILocation(line: 0, scope: !2073)
!2082 = !DILocation(line: 526, column: 10, scope: !2073)
!2083 = !DILocation(line: 526, column: 3, scope: !2073)
!2084 = distinct !DISubprogram(name: "forwarder_block_p", scope: !3, file: !3, line: 87, type: !2085, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!404, !1427}
!2087 = !{!2088, !2089}
!2088 = !DILocalVariable(name: "bb", arg: 1, scope: !2084, file: !3, line: 87, type: !1427)
!2089 = !DILocalVariable(name: "insn", scope: !2084, file: !3, line: 89, type: !41)
!2090 = !DILocation(line: 0, scope: !2084)
!2091 = !DILocation(line: 91, column: 13, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 91, column: 7)
!2093 = !DILocation(line: 91, column: 10, scope: !2092)
!2094 = !DILocation(line: 91, column: 28, scope: !2092)
!2095 = !DILocation(line: 91, column: 37, scope: !2092)
!2096 = !DILocation(line: 91, column: 34, scope: !2092)
!2097 = !DILocation(line: 92, column: 7, scope: !2092)
!2098 = !DILocation(line: 92, column: 11, scope: !2092)
!2099 = !DILocation(line: 91, column: 7, scope: !2084)
!2100 = !DILocation(line: 95, column: 15, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 95, column: 3)
!2102 = !DILocation(line: 95, column: 8, scope: !2101)
!2103 = !DILocation(line: 95, column: 37, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 95, column: 3)
!2105 = !DILocation(line: 0, scope: !2101)
!2106 = !DILocation(line: 95, column: 34, scope: !2104)
!2107 = !DILocation(line: 95, column: 3, scope: !2101)
!2108 = !DILocation(line: 96, column: 9, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2104, file: !3, line: 96, column: 9)
!2110 = !DILocation(line: 96, column: 23, scope: !2109)
!2111 = !DILocation(line: 96, column: 26, scope: !2109)
!2112 = !DILocation(line: 96, column: 9, scope: !2104)
!2113 = !DILocation(line: 95, column: 57, scope: !2104)
!2114 = !DILocation(line: 95, column: 3, scope: !2104)
!2115 = distinct !{!2115, !2107, !2116}
!2116 = !DILocation(line: 97, column: 14, scope: !2101)
!2117 = !DILocation(line: 99, column: 12, scope: !2084)
!2118 = !DILocation(line: 100, column: 4, scope: !2084)
!2119 = !DILocation(line: 100, column: 8, scope: !2084)
!2120 = !DILocation(line: 100, column: 22, scope: !2084)
!2121 = !DILocation(line: 100, column: 25, scope: !2084)
!2122 = !DILocation(line: 101, column: 4, scope: !2084)
!2123 = !DILocation(line: 101, column: 8, scope: !2084)
!2124 = !DILocation(line: 101, column: 7, scope: !2084)
!2125 = !DILocation(line: 99, column: 3, scope: !2084)
!2126 = !DILocation(line: 102, column: 1, scope: !2084)
!2127 = distinct !DISubprogram(name: "single_succ_p", scope: !11, file: !11, line: 626, type: !2085, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2128)
!2128 = !{!2129}
!2129 = !DILocalVariable(name: "bb", arg: 1, scope: !2127, file: !11, line: 626, type: !1427)
!2130 = !DILocation(line: 0, scope: !2127)
!2131 = !DILocation(line: 628, column: 10, scope: !2127)
!2132 = !DILocation(line: 628, column: 33, scope: !2127)
!2133 = !DILocation(line: 628, column: 3, scope: !2127)
!2134 = distinct !DISubprogram(name: "flow_active_insn_p", scope: !3, file: !3, line: 65, type: !2135, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2140)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!404, !2137}
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !8, line: 51, baseType: !2138)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!2140 = !{!2141}
!2141 = !DILocalVariable(name: "insn", arg: 1, scope: !2134, file: !3, line: 65, type: !2137)
!2142 = !DILocation(line: 0, scope: !2134)
!2143 = !DILocation(line: 67, column: 7, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 67, column: 7)
!2145 = !DILocation(line: 67, column: 7, scope: !2134)
!2146 = !DILocation(line: 75, column: 7, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 75, column: 7)
!2148 = !DILocation(line: 75, column: 33, scope: !2147)
!2149 = !DILocation(line: 76, column: 7, scope: !2147)
!2150 = !DILocation(line: 76, column: 10, scope: !2147)
!2151 = !DILocation(line: 77, column: 7, scope: !2147)
!2152 = !DILocation(line: 77, column: 10, scope: !2147)
!2153 = !DILocation(line: 75, column: 7, scope: !2134)
!2154 = !DILocation(line: 80, column: 3, scope: !2134)
!2155 = !DILocation(line: 81, column: 1, scope: !2134)
!2156 = distinct !DISubprogram(name: "can_fallthru", scope: !3, file: !3, line: 107, type: !2157, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2159)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!404, !7, !7}
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165}
!2160 = !DILocalVariable(name: "src", arg: 1, scope: !2156, file: !3, line: 107, type: !7)
!2161 = !DILocalVariable(name: "target", arg: 2, scope: !2156, file: !3, line: 107, type: !7)
!2162 = !DILocalVariable(name: "insn", scope: !2156, file: !3, line: 109, type: !41)
!2163 = !DILocalVariable(name: "insn2", scope: !2156, file: !3, line: 110, type: !41)
!2164 = !DILocalVariable(name: "e", scope: !2156, file: !3, line: 111, type: !27)
!2165 = !DILocalVariable(name: "ei", scope: !2156, file: !3, line: 112, type: !1580)
!2166 = !DILocation(line: 0, scope: !2156)
!2167 = !DILocation(line: 109, column: 14, scope: !2156)
!2168 = !DILocation(line: 111, column: 3, scope: !2156)
!2169 = !DILocation(line: 112, column: 3, scope: !2156)
!2170 = !DILocation(line: 114, column: 17, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 114, column: 7)
!2172 = !DILocation(line: 114, column: 14, scope: !2171)
!2173 = !DILocation(line: 114, column: 7, scope: !2156)
!2174 = !DILocation(line: 116, column: 12, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 116, column: 7)
!2176 = !DILocation(line: 116, column: 20, scope: !2175)
!2177 = !DILocation(line: 116, column: 7, scope: !2156)
!2178 = !DILocation(line: 118, column: 3, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 118, column: 3)
!2180 = !DILocation(line: 0, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 118, column: 3)
!2182 = !DILocation(line: 118, column: 3, scope: !2181)
!2183 = !DILocation(line: 119, column: 9, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 119, column: 9)
!2185 = !DILocation(line: 119, column: 12, scope: !2184)
!2186 = !DILocation(line: 119, column: 20, scope: !2184)
!2187 = !DILocation(line: 119, column: 17, scope: !2184)
!2188 = !DILocation(line: 120, column: 2, scope: !2184)
!2189 = !DILocation(line: 120, column: 8, scope: !2184)
!2190 = !DILocation(line: 120, column: 14, scope: !2184)
!2191 = !DILocation(line: 119, column: 9, scope: !2181)
!2192 = distinct !{!2192, !2178, !2193}
!2193 = !DILocation(line: 121, column: 14, scope: !2179)
!2194 = !DILocation(line: 123, column: 11, scope: !2156)
!2195 = !DILocation(line: 124, column: 7, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 124, column: 7)
!2197 = !DILocation(line: 124, column: 13, scope: !2196)
!2198 = !DILocation(line: 124, column: 17, scope: !2196)
!2199 = !DILocation(line: 124, column: 7, scope: !2156)
!2200 = !DILocation(line: 125, column: 13, scope: !2196)
!2201 = !DILocation(line: 125, column: 5, scope: !2196)
!2202 = !DILocation(line: 128, column: 10, scope: !2156)
!2203 = !DILocation(line: 128, column: 34, scope: !2156)
!2204 = !DILocation(line: 128, column: 3, scope: !2156)
!2205 = !DILocation(line: 129, column: 1, scope: !2156)
!2206 = distinct !DISubprogram(name: "ei_start_1", scope: !11, file: !11, line: 696, type: !2207, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2209)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!1580, !1585}
!2209 = !{!2210, !2211}
!2210 = !DILocalVariable(name: "ev", arg: 1, scope: !2206, file: !11, line: 696, type: !1585)
!2211 = !DILocalVariable(name: "i", scope: !2206, file: !11, line: 698, type: !1580)
!2212 = !DILocation(line: 0, scope: !2206)
!2213 = !DILocation(line: 700, column: 5, scope: !2206)
!2214 = !DILocation(line: 700, column: 11, scope: !2206)
!2215 = !DILocation(line: 701, column: 5, scope: !2206)
!2216 = !DILocation(line: 701, column: 15, scope: !2206)
!2217 = !DILocation(line: 703, column: 3, scope: !2206)
!2218 = distinct !DISubprogram(name: "ei_cond", scope: !11, file: !11, line: 771, type: !2219, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!404, !1580, !1592}
!2221 = !{!2222, !2223}
!2222 = !DILocalVariable(name: "ei", arg: 1, scope: !2218, file: !11, line: 771, type: !1580)
!2223 = !DILocalVariable(name: "p", arg: 2, scope: !2218, file: !11, line: 771, type: !1592)
!2224 = !DILocation(line: 0, scope: !2218)
!2225 = !DILocation(line: 773, column: 8, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2218, file: !11, line: 773, column: 7)
!2227 = !DILocation(line: 773, column: 7, scope: !2218)
!2228 = !DILocation(line: 775, column: 12, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2226, file: !11, line: 774, column: 5)
!2230 = !DILocation(line: 776, column: 7, scope: !2229)
!2231 = !DILocation(line: 781, column: 7, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2226, file: !11, line: 779, column: 5)
!2233 = !DILocation(line: 0, scope: !2226)
!2234 = !DILocation(line: 783, column: 1, scope: !2218)
!2235 = distinct !DISubprogram(name: "ei_next", scope: !11, file: !11, line: 736, type: !2236, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2238)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{null, !1579}
!2238 = !{!2239}
!2239 = !DILocalVariable(name: "i", arg: 1, scope: !2235, file: !11, line: 736, type: !1579)
!2240 = !DILocation(line: 0, scope: !2235)
!2241 = !DILocation(line: 738, column: 3, scope: !2235)
!2242 = !DILocation(line: 739, column: 11, scope: !2235)
!2243 = !DILocation(line: 740, column: 1, scope: !2235)
!2244 = distinct !DISubprogram(name: "could_fall_through", scope: !3, file: !3, line: 135, type: !2157, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2245)
!2245 = !{!2246, !2247, !2248, !2249}
!2246 = !DILocalVariable(name: "src", arg: 1, scope: !2244, file: !3, line: 135, type: !7)
!2247 = !DILocalVariable(name: "target", arg: 2, scope: !2244, file: !3, line: 135, type: !7)
!2248 = !DILocalVariable(name: "e", scope: !2244, file: !3, line: 137, type: !27)
!2249 = !DILocalVariable(name: "ei", scope: !2244, file: !3, line: 138, type: !1580)
!2250 = !DILocation(line: 0, scope: !2244)
!2251 = !DILocation(line: 137, column: 3, scope: !2244)
!2252 = !DILocation(line: 138, column: 3, scope: !2244)
!2253 = !DILocation(line: 140, column: 17, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 140, column: 7)
!2255 = !DILocation(line: 140, column: 14, scope: !2254)
!2256 = !DILocation(line: 140, column: 7, scope: !2244)
!2257 = !DILocation(line: 142, column: 3, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 142, column: 3)
!2259 = !DILocation(line: 0, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 142, column: 3)
!2261 = !DILocation(line: 142, column: 3, scope: !2260)
!2262 = !DILocation(line: 143, column: 9, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 143, column: 9)
!2264 = !DILocation(line: 143, column: 12, scope: !2263)
!2265 = !DILocation(line: 143, column: 20, scope: !2263)
!2266 = !DILocation(line: 143, column: 17, scope: !2263)
!2267 = !DILocation(line: 144, column: 2, scope: !2263)
!2268 = !DILocation(line: 144, column: 8, scope: !2263)
!2269 = !DILocation(line: 144, column: 14, scope: !2263)
!2270 = !DILocation(line: 143, column: 9, scope: !2260)
!2271 = distinct !{!2271, !2257, !2272}
!2272 = !DILocation(line: 145, column: 14, scope: !2258)
!2273 = !DILocation(line: 147, column: 1, scope: !2244)
!2274 = distinct !DISubprogram(name: "mark_dfs_back_edges", scope: !3, file: !3, line: 160, type: !2275, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!404}
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2288, !2289}
!2278 = !DILocalVariable(name: "stack", scope: !2274, file: !3, line: 162, type: !1579)
!2279 = !DILocalVariable(name: "pre", scope: !2274, file: !3, line: 163, type: !1578)
!2280 = !DILocalVariable(name: "post", scope: !2274, file: !3, line: 164, type: !1578)
!2281 = !DILocalVariable(name: "sp", scope: !2274, file: !3, line: 165, type: !6)
!2282 = !DILocalVariable(name: "prenum", scope: !2274, file: !3, line: 166, type: !6)
!2283 = !DILocalVariable(name: "postnum", scope: !2274, file: !3, line: 167, type: !6)
!2284 = !DILocalVariable(name: "visited", scope: !2274, file: !3, line: 168, type: !1624)
!2285 = !DILocalVariable(name: "found", scope: !2274, file: !3, line: 169, type: !404)
!2286 = !DILocalVariable(name: "ei", scope: !2287, file: !3, line: 190, type: !1580)
!2287 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 189, column: 5)
!2288 = !DILocalVariable(name: "src", scope: !2287, file: !3, line: 191, type: !7)
!2289 = !DILocalVariable(name: "dest", scope: !2287, file: !3, line: 192, type: !7)
!2290 = !DILocation(line: 0, scope: !2274)
!2291 = !DILocation(line: 172, column: 9, scope: !2274)
!2292 = !DILocation(line: 173, column: 10, scope: !2274)
!2293 = !DILocation(line: 176, column: 11, scope: !2274)
!2294 = !DILocation(line: 180, column: 28, scope: !2274)
!2295 = !DILocation(line: 180, column: 13, scope: !2274)
!2296 = !DILocation(line: 183, column: 3, scope: !2274)
!2297 = !DILocation(line: 186, column: 17, scope: !2274)
!2298 = !DILocation(line: 0, scope: !2287)
!2299 = !DILocation(line: 0, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 208, column: 6)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 207, column: 8)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 202, column: 2)
!2303 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 201, column: 11)
!2304 = !DILocation(line: 188, column: 3, scope: !2274)
!2305 = !DILocation(line: 166, column: 7, scope: !2274)
!2306 = !DILocation(line: 190, column: 7, scope: !2287)
!2307 = !DILocation(line: 195, column: 21, scope: !2287)
!2308 = !DILocation(line: 195, column: 12, scope: !2287)
!2309 = !DILocation(line: 196, column: 13, scope: !2287)
!2310 = !DILocation(line: 196, column: 27, scope: !2287)
!2311 = !DILocation(line: 197, column: 14, scope: !2287)
!2312 = !DILocation(line: 197, column: 28, scope: !2287)
!2313 = !DILocation(line: 198, column: 7, scope: !2287)
!2314 = !DILocation(line: 198, column: 21, scope: !2287)
!2315 = !DILocation(line: 198, column: 27, scope: !2287)
!2316 = !DILocation(line: 201, column: 19, scope: !2303)
!2317 = !DILocation(line: 201, column: 16, scope: !2303)
!2318 = !DILocation(line: 201, column: 34, scope: !2303)
!2319 = !DILocation(line: 201, column: 39, scope: !2303)
!2320 = !DILocation(line: 201, column: 11, scope: !2287)
!2321 = !DILocation(line: 204, column: 4, scope: !2302)
!2322 = !DILocation(line: 206, column: 29, scope: !2302)
!2323 = !DILocation(line: 206, column: 14, scope: !2302)
!2324 = !DILocation(line: 206, column: 4, scope: !2302)
!2325 = !DILocation(line: 206, column: 21, scope: !2302)
!2326 = !DILocation(line: 207, column: 8, scope: !2301)
!2327 = !DILocation(line: 207, column: 33, scope: !2301)
!2328 = !DILocation(line: 207, column: 8, scope: !2302)
!2329 = !DILocation(line: 211, column: 16, scope: !2300)
!2330 = !DILocation(line: 211, column: 8, scope: !2300)
!2331 = !DILocation(line: 211, column: 22, scope: !2300)
!2332 = !DILocation(line: 212, column: 6, scope: !2300)
!2333 = !DILocation(line: 214, column: 33, scope: !2301)
!2334 = !DILocation(line: 214, column: 17, scope: !2301)
!2335 = !DILocation(line: 214, column: 6, scope: !2301)
!2336 = !DILocation(line: 214, column: 24, scope: !2301)
!2337 = !DILocation(line: 218, column: 31, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 218, column: 8)
!2339 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 217, column: 2)
!2340 = !DILocation(line: 218, column: 41, scope: !2338)
!2341 = !DILocation(line: 218, column: 38, scope: !2338)
!2342 = !DILocation(line: 219, column: 8, scope: !2338)
!2343 = !DILocation(line: 219, column: 20, scope: !2338)
!2344 = !DILocation(line: 219, column: 11, scope: !2338)
!2345 = !DILocation(line: 219, column: 40, scope: !2338)
!2346 = !DILocation(line: 219, column: 30, scope: !2338)
!2347 = !DILocation(line: 219, column: 27, scope: !2338)
!2348 = !DILocation(line: 220, column: 8, scope: !2338)
!2349 = !DILocation(line: 220, column: 11, scope: !2338)
!2350 = !DILocation(line: 220, column: 29, scope: !2338)
!2351 = !DILocation(line: 218, column: 8, scope: !2339)
!2352 = !DILocation(line: 221, column: 6, scope: !2338)
!2353 = !DILocation(line: 221, column: 20, scope: !2338)
!2354 = !DILocation(line: 221, column: 26, scope: !2338)
!2355 = !DILocation(line: 223, column: 8, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 223, column: 8)
!2357 = !DILocation(line: 223, column: 33, scope: !2356)
!2358 = !DILocation(line: 223, column: 43, scope: !2356)
!2359 = !DILocation(line: 223, column: 40, scope: !2356)
!2360 = !DILocation(line: 223, column: 8, scope: !2339)
!2361 = !DILocation(line: 224, column: 32, scope: !2356)
!2362 = !DILocation(line: 224, column: 16, scope: !2356)
!2363 = !DILocation(line: 224, column: 6, scope: !2356)
!2364 = !DILocation(line: 224, column: 23, scope: !2356)
!2365 = !DILocation(line: 226, column: 9, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 226, column: 8)
!2367 = !DILocation(line: 226, column: 8, scope: !2339)
!2368 = !DILocation(line: 227, column: 6, scope: !2366)
!2369 = !DILocation(line: 0, scope: !2303)
!2370 = !DILocation(line: 231, column: 5, scope: !2274)
!2371 = distinct !{!2371, !2304, !2370}
!2372 = !DILocation(line: 233, column: 3, scope: !2274)
!2373 = !DILocation(line: 234, column: 3, scope: !2274)
!2374 = !DILocation(line: 235, column: 3, scope: !2274)
!2375 = !DILocation(line: 236, column: 3, scope: !2274)
!2376 = !DILocation(line: 238, column: 3, scope: !2274)
!2377 = distinct !DISubprogram(name: "ei_edge", scope: !11, file: !11, line: 752, type: !2378, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2380)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!27, !1580}
!2380 = !{!2381}
!2381 = !DILocalVariable(name: "i", arg: 1, scope: !2377, file: !11, line: 752, type: !1580)
!2382 = !DILocation(line: 754, column: 10, scope: !2377)
!2383 = !DILocation(line: 754, column: 3, scope: !2377)
!2384 = distinct !DISubprogram(name: "SET_BIT", scope: !1625, file: !1625, line: 63, type: !2385, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{null, !1624, !23}
!2387 = !{!2388, !2389, !2390}
!2388 = !DILocalVariable(name: "map", arg: 1, scope: !2384, file: !1625, line: 63, type: !1624)
!2389 = !DILocalVariable(name: "bitno", arg: 2, scope: !2384, file: !1625, line: 63, type: !23)
!2390 = !DILocalVariable(name: "oldbit", scope: !2391, file: !1625, line: 67, type: !404)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !1625, line: 66, column: 5)
!2392 = distinct !DILexicalBlock(scope: !2384, file: !1625, line: 65, column: 7)
!2393 = !DILocation(line: 0, scope: !2384)
!2394 = !DILocation(line: 65, column: 12, scope: !2392)
!2395 = !DILocation(line: 65, column: 7, scope: !2392)
!2396 = !DILocation(line: 65, column: 7, scope: !2384)
!2397 = !DILocation(line: 73, column: 40, scope: !2384)
!2398 = !DILocation(line: 73, column: 29, scope: !2384)
!2399 = !DILocation(line: 72, column: 19, scope: !2384)
!2400 = !DILocation(line: 72, column: 3, scope: !2384)
!2401 = !DILocation(line: 68, column: 16, scope: !2391)
!2402 = !DILocation(line: 69, column: 12, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2391, file: !1625, line: 69, column: 11)
!2404 = !DILocation(line: 69, column: 11, scope: !2391)
!2405 = !DILocation(line: 70, column: 2, scope: !2403)
!2406 = !DILocation(line: 70, column: 41, scope: !2403)
!2407 = !DILocation(line: 73, column: 5, scope: !2384)
!2408 = !DILocation(line: 74, column: 1, scope: !2384)
!2409 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !11, file: !11, line: 150, type: !2410, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2414)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!23, !2412}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!2414 = !{!2415}
!2415 = !DILocalVariable(name: "vec_", arg: 1, scope: !2409, file: !11, line: 150, type: !2412)
!2416 = !DILocation(line: 0, scope: !2409)
!2417 = !DILocation(line: 150, column: 1, scope: !2409)
!2418 = distinct !DISubprogram(name: "ei_one_before_end_p", scope: !11, file: !11, line: 729, type: !2419, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2421)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!404, !1580}
!2421 = !{!2422}
!2422 = !DILocalVariable(name: "i", arg: 1, scope: !2418, file: !11, line: 729, type: !1580)
!2423 = !DILocation(line: 731, column: 19, scope: !2418)
!2424 = !DILocation(line: 731, column: 26, scope: !2418)
!2425 = !DILocation(line: 731, column: 23, scope: !2418)
!2426 = !DILocation(line: 731, column: 10, scope: !2418)
!2427 = !DILocation(line: 731, column: 3, scope: !2418)
!2428 = distinct !DISubprogram(name: "set_edge_can_fallthru_flag", scope: !3, file: !3, line: 244, type: !2429, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2431)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{null}
!2431 = !{!2432, !2433, !2437}
!2432 = !DILocalVariable(name: "bb", scope: !2428, file: !3, line: 246, type: !7)
!2433 = !DILocalVariable(name: "e", scope: !2434, file: !3, line: 250, type: !27)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 249, column: 5)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 248, column: 3)
!2436 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 248, column: 3)
!2437 = !DILocalVariable(name: "ei", scope: !2434, file: !3, line: 251, type: !1580)
!2438 = !DILocation(line: 248, column: 3, scope: !2436)
!2439 = !DILocation(line: 0, scope: !2434)
!2440 = !DILocation(line: 0, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 253, column: 7)
!2442 = !DILocation(line: 0, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 253, column: 7)
!2444 = !DILocation(line: 248, column: 3, scope: !2435)
!2445 = !DILocation(line: 0, scope: !2436)
!2446 = !DILocation(line: 0, scope: !2428)
!2447 = !DILocation(line: 250, column: 7, scope: !2434)
!2448 = !DILocation(line: 251, column: 7, scope: !2434)
!2449 = !DILocation(line: 253, column: 7, scope: !2441)
!2450 = !DILocation(line: 253, column: 7, scope: !2443)
!2451 = !DILocation(line: 255, column: 4, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 254, column: 2)
!2453 = !DILocation(line: 255, column: 7, scope: !2452)
!2454 = !DILocation(line: 255, column: 13, scope: !2452)
!2455 = !DILocation(line: 258, column: 17, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 258, column: 8)
!2457 = !DILocation(line: 258, column: 8, scope: !2452)
!2458 = !DILocation(line: 259, column: 15, scope: !2456)
!2459 = !DILocation(line: 259, column: 6, scope: !2456)
!2460 = !DILocation(line: 0, scope: !2452)
!2461 = distinct !{!2461, !2449, !2462}
!2462 = !DILocation(line: 260, column: 2, scope: !2441)
!2463 = !DILocation(line: 264, column: 11, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 264, column: 11)
!2465 = !DILocation(line: 264, column: 34, scope: !2464)
!2466 = !DILocation(line: 264, column: 11, scope: !2434)
!2467 = !DILocation(line: 266, column: 28, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 266, column: 11)
!2469 = !DILocation(line: 266, column: 12, scope: !2468)
!2470 = !DILocation(line: 266, column: 11, scope: !2434)
!2471 = !DILocation(line: 268, column: 25, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 268, column: 11)
!2473 = !DILocation(line: 268, column: 38, scope: !2472)
!2474 = !DILocation(line: 268, column: 12, scope: !2472)
!2475 = !DILocation(line: 268, column: 11, scope: !2434)
!2476 = !DILocation(line: 270, column: 20, scope: !2434)
!2477 = !DILocation(line: 270, column: 33, scope: !2434)
!2478 = !DILocation(line: 270, column: 7, scope: !2434)
!2479 = !DILocation(line: 271, column: 7, scope: !2434)
!2480 = !DILocation(line: 271, column: 26, scope: !2434)
!2481 = !DILocation(line: 271, column: 32, scope: !2434)
!2482 = !DILocation(line: 272, column: 7, scope: !2434)
!2483 = !DILocation(line: 272, column: 26, scope: !2434)
!2484 = !DILocation(line: 272, column: 32, scope: !2434)
!2485 = !DILocation(line: 273, column: 5, scope: !2435)
!2486 = !DILocation(line: 0, scope: !2435)
!2487 = distinct !{!2487, !2438, !2488}
!2488 = !DILocation(line: 273, column: 5, scope: !2436)
!2489 = !DILocation(line: 274, column: 1, scope: !2428)
!2490 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !11, file: !11, line: 150, type: !2491, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2493)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!27, !2412, !23}
!2493 = !{!2494, !2495}
!2494 = !DILocalVariable(name: "vec_", arg: 1, scope: !2490, file: !11, line: 150, type: !2412)
!2495 = !DILocalVariable(name: "ix_", arg: 2, scope: !2490, file: !11, line: 150, type: !23)
!2496 = !DILocation(line: 0, scope: !2490)
!2497 = !DILocation(line: 150, column: 1, scope: !2490)
!2498 = distinct !DISubprogram(name: "find_unreachable_blocks", scope: !3, file: !3, line: 281, type: !2429, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2499)
!2499 = !{!2500, !2501, !2502, !2503, !2504, !2505, !2507}
!2500 = !DILocalVariable(name: "e", scope: !2498, file: !3, line: 283, type: !27)
!2501 = !DILocalVariable(name: "ei", scope: !2498, file: !3, line: 284, type: !1580)
!2502 = !DILocalVariable(name: "tos", scope: !2498, file: !3, line: 285, type: !1430)
!2503 = !DILocalVariable(name: "worklist", scope: !2498, file: !3, line: 285, type: !1430)
!2504 = !DILocalVariable(name: "bb", scope: !2498, file: !3, line: 285, type: !7)
!2505 = !DILocalVariable(name: "b", scope: !2506, file: !3, line: 310, type: !7)
!2506 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 309, column: 5)
!2507 = !DILocalVariable(name: "dest", scope: !2508, file: !3, line: 314, type: !7)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 313, column: 2)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 312, column: 7)
!2510 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 312, column: 7)
!2511 = !DILocation(line: 283, column: 3, scope: !2498)
!2512 = !DILocation(line: 284, column: 3, scope: !2498)
!2513 = !DILocation(line: 287, column: 20, scope: !2498)
!2514 = !DILocation(line: 0, scope: !2498)
!2515 = !DILocation(line: 291, column: 3, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 291, column: 3)
!2517 = !DILocation(line: 291, column: 3, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 291, column: 3)
!2519 = !DILocation(line: 0, scope: !2516)
!2520 = !DILocation(line: 292, column: 9, scope: !2518)
!2521 = !DILocation(line: 292, column: 15, scope: !2518)
!2522 = distinct !{!2522, !2515, !2523}
!2523 = !DILocation(line: 292, column: 19, scope: !2516)
!2524 = !DILocation(line: 298, column: 3, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 298, column: 3)
!2526 = !DILocation(line: 0, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 298, column: 3)
!2528 = !DILocation(line: 298, column: 3, scope: !2527)
!2529 = !DILocation(line: 0, scope: !2510)
!2530 = !DILocation(line: 308, column: 3, scope: !2498)
!2531 = !DILocation(line: 300, column: 16, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 299, column: 5)
!2533 = !DILocation(line: 300, column: 19, scope: !2532)
!2534 = !DILocation(line: 300, column: 11, scope: !2532)
!2535 = !DILocation(line: 300, column: 14, scope: !2532)
!2536 = !DILocation(line: 303, column: 7, scope: !2532)
!2537 = !DILocation(line: 303, column: 10, scope: !2532)
!2538 = !DILocation(line: 303, column: 16, scope: !2532)
!2539 = !DILocation(line: 303, column: 22, scope: !2532)
!2540 = distinct !{!2540, !2524, !2541}
!2541 = !DILocation(line: 304, column: 5, scope: !2525)
!2542 = !DILocation(line: 310, column: 24, scope: !2506)
!2543 = !DILocation(line: 308, column: 14, scope: !2498)
!2544 = !DILocation(line: 310, column: 23, scope: !2506)
!2545 = !DILocation(line: 0, scope: !2506)
!2546 = !DILocation(line: 312, column: 7, scope: !2510)
!2547 = !DILocation(line: 312, column: 7, scope: !2509)
!2548 = distinct !{!2548, !2530, !2549}
!2549 = !DILocation(line: 322, column: 5, scope: !2498)
!2550 = !DILocation(line: 314, column: 23, scope: !2508)
!2551 = !DILocation(line: 314, column: 26, scope: !2508)
!2552 = !DILocation(line: 0, scope: !2508)
!2553 = !DILocation(line: 316, column: 16, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 316, column: 8)
!2555 = !DILocation(line: 316, column: 22, scope: !2554)
!2556 = !DILocation(line: 316, column: 8, scope: !2508)
!2557 = !DILocation(line: 318, column: 12, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 317, column: 6)
!2559 = !DILocation(line: 318, column: 15, scope: !2558)
!2560 = !DILocation(line: 319, column: 20, scope: !2558)
!2561 = !DILocation(line: 320, column: 6, scope: !2558)
!2562 = distinct !{!2562, !2546, !2563}
!2563 = !DILocation(line: 321, column: 2, scope: !2510)
!2564 = !DILocation(line: 324, column: 3, scope: !2498)
!2565 = !DILocation(line: 325, column: 1, scope: !2498)
!2566 = distinct !DISubprogram(name: "create_edge_list", scope: !3, file: !3, line: 341, type: !2567, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!1586}
!2569 = !{!2570, !2571, !2572, !2573, !2574, !2575}
!2570 = !DILocalVariable(name: "elist", scope: !2566, file: !3, line: 343, type: !1586)
!2571 = !DILocalVariable(name: "e", scope: !2566, file: !3, line: 344, type: !27)
!2572 = !DILocalVariable(name: "num_edges", scope: !2566, file: !3, line: 345, type: !6)
!2573 = !DILocalVariable(name: "block_count", scope: !2566, file: !3, line: 346, type: !6)
!2574 = !DILocalVariable(name: "bb", scope: !2566, file: !3, line: 347, type: !7)
!2575 = !DILocalVariable(name: "ei", scope: !2566, file: !3, line: 348, type: !1580)
!2576 = !DILocation(line: 344, column: 3, scope: !2566)
!2577 = !DILocation(line: 348, column: 3, scope: !2566)
!2578 = !DILocation(line: 350, column: 17, scope: !2566)
!2579 = !DILocation(line: 0, scope: !2566)
!2580 = !DILocation(line: 356, column: 3, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 356, column: 3)
!2582 = !DILocation(line: 356, column: 3, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 356, column: 3)
!2584 = !DILocation(line: 0, scope: !2581)
!2585 = !DILocation(line: 358, column: 20, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 357, column: 5)
!2587 = !DILocation(line: 358, column: 17, scope: !2586)
!2588 = !DILocation(line: 0, scope: !2583)
!2589 = distinct !{!2589, !2580, !2590}
!2590 = !DILocation(line: 359, column: 5, scope: !2581)
!2591 = !DILocation(line: 361, column: 11, scope: !2566)
!2592 = !DILocation(line: 362, column: 10, scope: !2566)
!2593 = !DILocation(line: 362, column: 21, scope: !2566)
!2594 = !DILocation(line: 363, column: 10, scope: !2566)
!2595 = !DILocation(line: 363, column: 20, scope: !2566)
!2596 = !DILocation(line: 364, column: 26, scope: !2566)
!2597 = !DILocation(line: 364, column: 10, scope: !2566)
!2598 = !DILocation(line: 364, column: 24, scope: !2566)
!2599 = !DILocation(line: 369, column: 3, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 369, column: 3)
!2601 = !DILocation(line: 0, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 370, column: 5)
!2603 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 369, column: 3)
!2604 = !DILocation(line: 0, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 370, column: 5)
!2606 = !DILocation(line: 369, column: 3, scope: !2603)
!2607 = !DILocation(line: 366, column: 13, scope: !2566)
!2608 = !DILocation(line: 0, scope: !2600)
!2609 = !DILocation(line: 370, column: 5, scope: !2602)
!2610 = !DILocation(line: 370, column: 5, scope: !2605)
!2611 = !DILocation(line: 371, column: 43, scope: !2605)
!2612 = !DILocation(line: 371, column: 14, scope: !2605)
!2613 = !DILocation(line: 371, column: 37, scope: !2605)
!2614 = !DILocation(line: 371, column: 7, scope: !2605)
!2615 = !DILocation(line: 371, column: 41, scope: !2605)
!2616 = distinct !{!2616, !2609, !2617}
!2617 = !DILocation(line: 371, column: 43, scope: !2602)
!2618 = !DILocation(line: 0, scope: !2603)
!2619 = distinct !{!2619, !2599, !2620}
!2620 = !DILocation(line: 371, column: 43, scope: !2600)
!2621 = !DILocation(line: 374, column: 1, scope: !2566)
!2622 = !DILocation(line: 373, column: 3, scope: !2566)
!2623 = distinct !DISubprogram(name: "free_edge_list", scope: !3, file: !3, line: 379, type: !2624, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2626)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{null, !1586}
!2626 = !{!2627}
!2627 = !DILocalVariable(name: "elist", arg: 1, scope: !2623, file: !3, line: 379, type: !1586)
!2628 = !DILocation(line: 0, scope: !2623)
!2629 = !DILocation(line: 381, column: 7, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 381, column: 7)
!2631 = !DILocation(line: 381, column: 7, scope: !2623)
!2632 = !DILocation(line: 383, column: 20, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 382, column: 5)
!2634 = !DILocation(line: 383, column: 7, scope: !2633)
!2635 = !DILocation(line: 384, column: 13, scope: !2633)
!2636 = !DILocation(line: 384, column: 7, scope: !2633)
!2637 = !DILocation(line: 385, column: 5, scope: !2633)
!2638 = !DILocation(line: 386, column: 1, scope: !2623)
!2639 = distinct !DISubprogram(name: "print_edge_list", scope: !3, file: !3, line: 391, type: !2640, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2642)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{null, !1667, !1586}
!2642 = !{!2643, !2644, !2645}
!2643 = !DILocalVariable(name: "f", arg: 1, scope: !2639, file: !3, line: 391, type: !1667)
!2644 = !DILocalVariable(name: "elist", arg: 2, scope: !2639, file: !3, line: 391, type: !1586)
!2645 = !DILocalVariable(name: "x", scope: !2639, file: !3, line: 393, type: !6)
!2646 = !DILocation(line: 0, scope: !2639)
!2647 = !DILocation(line: 396, column: 12, scope: !2639)
!2648 = !DILocation(line: 396, column: 31, scope: !2639)
!2649 = !DILocation(line: 395, column: 3, scope: !2639)
!2650 = !DILocation(line: 0, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 401, column: 11)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 399, column: 5)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 398, column: 3)
!2654 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 398, column: 3)
!2655 = !DILocation(line: 398, column: 8, scope: !2654)
!2656 = !DILocation(line: 0, scope: !2654)
!2657 = !DILocation(line: 398, column: 26, scope: !2653)
!2658 = !DILocation(line: 398, column: 17, scope: !2653)
!2659 = !DILocation(line: 398, column: 3, scope: !2654)
!2660 = !DILocation(line: 400, column: 7, scope: !2652)
!2661 = !DILocation(line: 401, column: 11, scope: !2651)
!2662 = !DILocation(line: 401, column: 44, scope: !2651)
!2663 = !DILocation(line: 401, column: 41, scope: !2651)
!2664 = !DILocation(line: 401, column: 11, scope: !2652)
!2665 = !DILocation(line: 402, column: 2, scope: !2651)
!2666 = !DILocation(line: 404, column: 52, scope: !2651)
!2667 = !DILocation(line: 404, column: 2, scope: !2651)
!2668 = !DILocation(line: 406, column: 11, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 406, column: 11)
!2670 = !DILocation(line: 406, column: 44, scope: !2669)
!2671 = !DILocation(line: 406, column: 41, scope: !2669)
!2672 = !DILocation(line: 406, column: 11, scope: !2652)
!2673 = !DILocation(line: 407, column: 2, scope: !2669)
!2674 = !DILocation(line: 409, column: 54, scope: !2669)
!2675 = !DILocation(line: 409, column: 2, scope: !2669)
!2676 = !DILocation(line: 398, column: 38, scope: !2653)
!2677 = !DILocation(line: 398, column: 3, scope: !2653)
!2678 = distinct !{!2678, !2659, !2679}
!2679 = !DILocation(line: 410, column: 5, scope: !2654)
!2680 = !DILocation(line: 411, column: 1, scope: !2639)
!2681 = distinct !DISubprogram(name: "verify_edge_list", scope: !3, file: !3, line: 418, type: !2640, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2682)
!2682 = !{!2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693}
!2683 = !DILocalVariable(name: "f", arg: 1, scope: !2681, file: !3, line: 418, type: !1667)
!2684 = !DILocalVariable(name: "elist", arg: 2, scope: !2681, file: !3, line: 418, type: !1586)
!2685 = !DILocalVariable(name: "pred", scope: !2681, file: !3, line: 420, type: !6)
!2686 = !DILocalVariable(name: "succ", scope: !2681, file: !3, line: 420, type: !6)
!2687 = !DILocalVariable(name: "index", scope: !2681, file: !3, line: 420, type: !6)
!2688 = !DILocalVariable(name: "e", scope: !2681, file: !3, line: 421, type: !27)
!2689 = !DILocalVariable(name: "bb", scope: !2681, file: !3, line: 422, type: !7)
!2690 = !DILocalVariable(name: "p", scope: !2681, file: !3, line: 422, type: !7)
!2691 = !DILocalVariable(name: "s", scope: !2681, file: !3, line: 422, type: !7)
!2692 = !DILocalVariable(name: "ei", scope: !2681, file: !3, line: 423, type: !1580)
!2693 = !DILocalVariable(name: "found_edge", scope: !2694, file: !3, line: 453, type: !6)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 452, column: 7)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 451, column: 5)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 451, column: 5)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 450, column: 3)
!2698 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 450, column: 3)
!2699 = !DILocation(line: 0, scope: !2681)
!2700 = !DILocation(line: 421, column: 3, scope: !2681)
!2701 = !DILocation(line: 423, column: 3, scope: !2681)
!2702 = !DILocation(line: 425, column: 3, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 425, column: 3)
!2704 = !DILocation(line: 0, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 427, column: 7)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 426, column: 5)
!2707 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 425, column: 3)
!2708 = !DILocation(line: 0, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 427, column: 7)
!2710 = !DILocation(line: 0, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 438, column: 8)
!2712 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 428, column: 2)
!2713 = !DILocation(line: 425, column: 3, scope: !2707)
!2714 = !DILocation(line: 0, scope: !2703)
!2715 = !DILocation(line: 427, column: 7, scope: !2705)
!2716 = !DILocation(line: 427, column: 7, scope: !2709)
!2717 = !DILocation(line: 429, column: 11, scope: !2712)
!2718 = !DILocation(line: 429, column: 14, scope: !2712)
!2719 = !DILocation(line: 429, column: 19, scope: !2712)
!2720 = !DILocation(line: 430, column: 14, scope: !2712)
!2721 = !DILocation(line: 430, column: 20, scope: !2712)
!2722 = !DILocation(line: 431, column: 12, scope: !2712)
!2723 = !DILocation(line: 432, column: 14, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 432, column: 8)
!2725 = !DILocation(line: 432, column: 8, scope: !2712)
!2726 = !DILocation(line: 434, column: 8, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 433, column: 6)
!2728 = !DILocation(line: 435, column: 8, scope: !2727)
!2729 = !DILocation(line: 438, column: 8, scope: !2711)
!2730 = !DILocation(line: 438, column: 43, scope: !2711)
!2731 = !DILocation(line: 438, column: 49, scope: !2711)
!2732 = !DILocation(line: 438, column: 8, scope: !2712)
!2733 = !DILocation(line: 439, column: 6, scope: !2711)
!2734 = !DILocation(line: 441, column: 8, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 441, column: 8)
!2736 = !DILocation(line: 0, scope: !2735)
!2737 = !DILocation(line: 441, column: 43, scope: !2735)
!2738 = !DILocation(line: 441, column: 49, scope: !2735)
!2739 = !DILocation(line: 441, column: 8, scope: !2712)
!2740 = !DILocation(line: 442, column: 6, scope: !2735)
!2741 = distinct !{!2741, !2715, !2742}
!2742 = !DILocation(line: 444, column: 2, scope: !2705)
!2743 = !DILocation(line: 0, scope: !2707)
!2744 = distinct !{!2744, !2702, !2745}
!2745 = !DILocation(line: 445, column: 5, scope: !2703)
!2746 = !DILocation(line: 450, column: 3, scope: !2698)
!2747 = !DILocation(line: 0, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 455, column: 2)
!2749 = !DILocation(line: 0, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 462, column: 2)
!2751 = !DILocation(line: 450, column: 3, scope: !2697)
!2752 = !DILocation(line: 0, scope: !2698)
!2753 = !DILocation(line: 451, column: 5, scope: !2696)
!2754 = !DILocation(line: 0, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 469, column: 6)
!2756 = !DILocation(line: 0, scope: !2696)
!2757 = !DILocation(line: 451, column: 5, scope: !2695)
!2758 = !DILocation(line: 0, scope: !2694)
!2759 = !DILocation(line: 455, column: 2, scope: !2748)
!2760 = !DILocation(line: 455, column: 2, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 455, column: 2)
!2762 = !DILocation(line: 456, column: 8, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 456, column: 8)
!2764 = !DILocation(line: 456, column: 11, scope: !2763)
!2765 = !DILocation(line: 456, column: 16, scope: !2763)
!2766 = !DILocation(line: 456, column: 8, scope: !2761)
!2767 = distinct !{!2767, !2759, !2768}
!2768 = !DILocation(line: 460, column: 6, scope: !2748)
!2769 = !DILocation(line: 462, column: 2, scope: !2750)
!2770 = !DILocation(line: 462, column: 2, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 462, column: 2)
!2772 = !DILocation(line: 463, column: 8, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 463, column: 8)
!2774 = !DILocation(line: 463, column: 11, scope: !2773)
!2775 = !DILocation(line: 463, column: 15, scope: !2773)
!2776 = !DILocation(line: 463, column: 8, scope: !2771)
!2777 = distinct !{!2777, !2769, !2778}
!2778 = !DILocation(line: 467, column: 6, scope: !2750)
!2779 = !DILocation(line: 469, column: 6, scope: !2755)
!2780 = !DILocation(line: 470, column: 6, scope: !2755)
!2781 = !DILocation(line: 470, column: 42, scope: !2755)
!2782 = !DILocation(line: 470, column: 28, scope: !2755)
!2783 = !DILocation(line: 472, column: 9, scope: !2755)
!2784 = !DILocation(line: 472, column: 19, scope: !2755)
!2785 = !DILocation(line: 471, column: 4, scope: !2755)
!2786 = !DILocation(line: 473, column: 6, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 473, column: 6)
!2788 = !DILocation(line: 474, column: 6, scope: !2787)
!2789 = !DILocation(line: 474, column: 42, scope: !2787)
!2790 = !DILocation(line: 474, column: 28, scope: !2787)
!2791 = !DILocation(line: 476, column: 9, scope: !2787)
!2792 = !DILocation(line: 476, column: 19, scope: !2787)
!2793 = !DILocation(line: 476, column: 26, scope: !2787)
!2794 = !DILocation(line: 475, column: 4, scope: !2787)
!2795 = distinct !{!2795, !2753, !2796}
!2796 = !DILocation(line: 477, column: 7, scope: !2696)
!2797 = !DILocation(line: 0, scope: !2697)
!2798 = distinct !{!2798, !2746, !2799}
!2799 = !DILocation(line: 477, column: 7, scope: !2698)
!2800 = !DILocation(line: 478, column: 1, scope: !2681)
!2801 = distinct !DISubprogram(name: "find_edge_index", scope: !3, file: !3, line: 509, type: !2802, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2804)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!6, !1586, !7, !7}
!2804 = !{!2805, !2806, !2807, !2808}
!2805 = !DILocalVariable(name: "edge_list", arg: 1, scope: !2801, file: !3, line: 509, type: !1586)
!2806 = !DILocalVariable(name: "pred", arg: 2, scope: !2801, file: !3, line: 509, type: !7)
!2807 = !DILocalVariable(name: "succ", arg: 3, scope: !2801, file: !3, line: 509, type: !7)
!2808 = !DILocalVariable(name: "x", scope: !2801, file: !3, line: 511, type: !6)
!2809 = !DILocation(line: 0, scope: !2801)
!2810 = !DILocation(line: 515, column: 5, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 514, column: 9)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 513, column: 3)
!2813 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 513, column: 3)
!2814 = !DILocation(line: 0, scope: !2812)
!2815 = !DILocation(line: 513, column: 8, scope: !2813)
!2816 = !DILocation(line: 0, scope: !2813)
!2817 = !DILocation(line: 513, column: 17, scope: !2812)
!2818 = !DILocation(line: 513, column: 3, scope: !2813)
!2819 = !DILocation(line: 514, column: 9, scope: !2811)
!2820 = !DILocation(line: 514, column: 43, scope: !2811)
!2821 = !DILocation(line: 515, column: 2, scope: !2811)
!2822 = !DILocation(line: 515, column: 39, scope: !2811)
!2823 = !DILocation(line: 514, column: 9, scope: !2812)
!2824 = !DILocation(line: 513, column: 43, scope: !2812)
!2825 = !DILocation(line: 513, column: 3, scope: !2812)
!2826 = distinct !{!2826, !2818, !2827}
!2827 = !DILocation(line: 516, column: 14, scope: !2813)
!2828 = !DILocation(line: 519, column: 1, scope: !2801)
!2829 = distinct !DISubprogram(name: "find_edge", scope: !3, file: !3, line: 484, type: !2830, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2832)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!27, !7, !7}
!2832 = !{!2833, !2834, !2835, !2836}
!2833 = !DILocalVariable(name: "pred", arg: 1, scope: !2829, file: !3, line: 484, type: !7)
!2834 = !DILocalVariable(name: "succ", arg: 2, scope: !2829, file: !3, line: 484, type: !7)
!2835 = !DILocalVariable(name: "e", scope: !2829, file: !3, line: 486, type: !27)
!2836 = !DILocalVariable(name: "ei", scope: !2829, file: !3, line: 487, type: !1580)
!2837 = !DILocation(line: 0, scope: !2829)
!2838 = !DILocation(line: 486, column: 3, scope: !2829)
!2839 = !DILocation(line: 487, column: 3, scope: !2829)
!2840 = !DILocation(line: 489, column: 7, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 489, column: 7)
!2842 = !DILocation(line: 489, column: 35, scope: !2841)
!2843 = !DILocation(line: 489, column: 32, scope: !2841)
!2844 = !DILocation(line: 489, column: 7, scope: !2829)
!2845 = !DILocation(line: 491, column: 7, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 491, column: 7)
!2847 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 490, column: 5)
!2848 = !DILocation(line: 0, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 491, column: 7)
!2850 = !DILocation(line: 491, column: 7, scope: !2849)
!2851 = !DILocation(line: 492, column: 6, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 492, column: 6)
!2853 = !DILocation(line: 492, column: 9, scope: !2852)
!2854 = !DILocation(line: 492, column: 14, scope: !2852)
!2855 = !DILocation(line: 492, column: 6, scope: !2849)
!2856 = !DILocation(line: 493, column: 4, scope: !2852)
!2857 = distinct !{!2857, !2845, !2858}
!2858 = !DILocation(line: 493, column: 11, scope: !2846)
!2859 = !DILocation(line: 497, column: 7, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 497, column: 7)
!2861 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 496, column: 5)
!2862 = !DILocation(line: 0, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2860, file: !3, line: 497, column: 7)
!2864 = !DILocation(line: 497, column: 7, scope: !2863)
!2865 = !DILocation(line: 498, column: 6, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 498, column: 6)
!2867 = !DILocation(line: 498, column: 9, scope: !2866)
!2868 = !DILocation(line: 498, column: 13, scope: !2866)
!2869 = !DILocation(line: 498, column: 6, scope: !2863)
!2870 = !DILocation(line: 499, column: 4, scope: !2866)
!2871 = distinct !{!2871, !2859, !2872}
!2872 = !DILocation(line: 499, column: 11, scope: !2860)
!2873 = !DILocation(line: 503, column: 1, scope: !2829)
!2874 = distinct !DISubprogram(name: "flow_nodes_print", scope: !3, file: !3, line: 524, type: !2875, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2880)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{null, !67, !2877, !1667}
!2877 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_sbitmap", file: !1625, line: 46, baseType: !2878)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1627)
!2880 = !{!2881, !2882, !2883, !2884, !2885}
!2881 = !DILocalVariable(name: "str", arg: 1, scope: !2874, file: !3, line: 524, type: !67)
!2882 = !DILocalVariable(name: "nodes", arg: 2, scope: !2874, file: !3, line: 524, type: !2877)
!2883 = !DILocalVariable(name: "file", arg: 3, scope: !2874, file: !3, line: 524, type: !1667)
!2884 = !DILocalVariable(name: "node", scope: !2874, file: !3, line: 526, type: !23)
!2885 = !DILocalVariable(name: "sbi", scope: !2874, file: !3, line: 527, type: !2886)
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap_iterator", file: !1625, line: 111, baseType: !2887)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1625, line: 96, size: 256, elements: !2888)
!2888 = !{!2889, !2892, !2893, !2894, !2895}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2887, file: !1625, line: 98, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2887, file: !1625, line: 101, baseType: !23, size: 32, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "word_num", scope: !2887, file: !1625, line: 104, baseType: !23, size: 32, offset: 96)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "bit_num", scope: !2887, file: !1625, line: 107, baseType: !23, size: 32, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !2887, file: !1625, line: 110, baseType: !242, size: 64, offset: 192)
!2896 = !DILocation(line: 0, scope: !2874)
!2897 = !DILocation(line: 526, column: 3, scope: !2874)
!2898 = !DILocation(line: 526, column: 16, scope: !2874)
!2899 = !DILocation(line: 527, column: 3, scope: !2874)
!2900 = !DILocation(line: 529, column: 9, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 529, column: 7)
!2902 = !DILocation(line: 529, column: 7, scope: !2874)
!2903 = !DILocation(line: 532, column: 3, scope: !2874)
!2904 = !DILocation(line: 533, column: 3, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 533, column: 3)
!2906 = !DILocation(line: 533, column: 3, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 533, column: 3)
!2908 = !DILocation(line: 534, column: 27, scope: !2907)
!2909 = !DILocation(line: 534, column: 5, scope: !2907)
!2910 = distinct !{!2910, !2904, !2911}
!2911 = !DILocation(line: 534, column: 31, scope: !2905)
!2912 = !DILocation(line: 535, column: 3, scope: !2874)
!2913 = !DILocation(line: 536, column: 1, scope: !2874)
!2914 = distinct !DISubprogram(name: "sbitmap_iter_init", scope: !1625, file: !1625, line: 117, type: !2915, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2918)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{null, !2917, !2877, !23}
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2918 = !{!2919, !2920, !2921}
!2919 = !DILocalVariable(name: "i", arg: 1, scope: !2914, file: !1625, line: 117, type: !2917)
!2920 = !DILocalVariable(name: "bmp", arg: 2, scope: !2914, file: !1625, line: 117, type: !2877)
!2921 = !DILocalVariable(name: "min", arg: 3, scope: !2914, file: !1625, line: 117, type: !23)
!2922 = !DILocation(line: 0, scope: !2914)
!2923 = !DILocation(line: 119, column: 6, scope: !2914)
!2924 = !DILocation(line: 119, column: 15, scope: !2914)
!2925 = !DILocation(line: 120, column: 6, scope: !2914)
!2926 = !DILocation(line: 120, column: 14, scope: !2914)
!2927 = !DILocation(line: 121, column: 18, scope: !2914)
!2928 = !DILocation(line: 121, column: 6, scope: !2914)
!2929 = !DILocation(line: 121, column: 11, scope: !2914)
!2930 = !DILocation(line: 122, column: 12, scope: !2914)
!2931 = !DILocation(line: 122, column: 6, scope: !2914)
!2932 = !DILocation(line: 122, column: 10, scope: !2914)
!2933 = !DILocation(line: 124, column: 19, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2914, file: !1625, line: 124, column: 7)
!2935 = !DILocation(line: 124, column: 7, scope: !2914)
!2936 = !DILocation(line: 125, column: 8, scope: !2934)
!2937 = !DILocation(line: 125, column: 13, scope: !2934)
!2938 = !DILocation(line: 125, column: 5, scope: !2934)
!2939 = !DILocation(line: 127, column: 16, scope: !2934)
!2940 = !DILocation(line: 127, column: 8, scope: !2934)
!2941 = !DILocation(line: 127, column: 13, scope: !2934)
!2942 = !DILocation(line: 129, column: 1, scope: !2914)
!2943 = distinct !DISubprogram(name: "sbitmap_iter_cond", scope: !1625, file: !1625, line: 136, type: !2944, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2947)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!404, !2917, !2946}
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!2947 = !{!2948, !2949}
!2948 = !DILocalVariable(name: "i", arg: 1, scope: !2943, file: !1625, line: 136, type: !2917)
!2949 = !DILocalVariable(name: "n", arg: 2, scope: !2943, file: !1625, line: 136, type: !2946)
!2950 = !DILocation(line: 0, scope: !2943)
!2951 = !DILocation(line: 0, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !1625, line: 139, column: 3)
!2953 = distinct !DILexicalBlock(scope: !2943, file: !1625, line: 139, column: 3)
!2954 = !DILocation(line: 0, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2952, file: !1625, line: 140, column: 5)
!2956 = !DILocation(line: 0, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2955, file: !1625, line: 144, column: 11)
!2958 = !DILocation(line: 139, column: 13, scope: !2952)
!2959 = !DILocation(line: 139, column: 3, scope: !2943)
!2960 = !DILocation(line: 139, column: 18, scope: !2952)
!2961 = !DILocation(line: 139, column: 3, scope: !2953)
!2962 = !DILocation(line: 151, column: 3, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2943, file: !1625, line: 151, column: 3)
!2964 = !DILocation(line: 141, column: 18, scope: !2955)
!2965 = !DILocation(line: 144, column: 29, scope: !2957)
!2966 = !DILocation(line: 144, column: 23, scope: !2957)
!2967 = !DILocation(line: 144, column: 11, scope: !2955)
!2968 = !DILocation(line: 147, column: 32, scope: !2955)
!2969 = !DILocation(line: 147, column: 18, scope: !2955)
!2970 = !DILocation(line: 139, column: 37, scope: !2952)
!2971 = !DILocation(line: 139, column: 34, scope: !2952)
!2972 = !DILocation(line: 139, column: 32, scope: !2952)
!2973 = !DILocation(line: 139, column: 3, scope: !2952)
!2974 = distinct !{!2974, !2961, !2975}
!2975 = !DILocation(line: 148, column: 5, scope: !2953)
!2976 = !DILocation(line: 151, column: 14, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2963, file: !1625, line: 151, column: 3)
!2978 = !DILocation(line: 151, column: 19, scope: !2977)
!2979 = !DILocation(line: 151, column: 24, scope: !2977)
!2980 = !DILocation(line: 152, column: 15, scope: !2977)
!2981 = !DILocation(line: 151, column: 38, scope: !2977)
!2982 = !DILocation(line: 151, column: 3, scope: !2977)
!2983 = distinct !{!2983, !2962, !2984}
!2984 = !DILocation(line: 152, column: 15, scope: !2963)
!2985 = !DILocation(line: 154, column: 6, scope: !2943)
!2986 = !DILocation(line: 156, column: 3, scope: !2943)
!2987 = !DILocation(line: 157, column: 1, scope: !2943)
!2988 = distinct !DISubprogram(name: "sbitmap_iter_next", scope: !1625, file: !1625, line: 162, type: !2989, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !2917}
!2991 = !{!2992}
!2992 = !DILocalVariable(name: "i", arg: 1, scope: !2988, file: !1625, line: 162, type: !2917)
!2993 = !DILocation(line: 0, scope: !2988)
!2994 = !DILocation(line: 164, column: 6, scope: !2988)
!2995 = !DILocation(line: 164, column: 11, scope: !2988)
!2996 = !DILocation(line: 165, column: 6, scope: !2988)
!2997 = !DILocation(line: 165, column: 13, scope: !2988)
!2998 = !DILocation(line: 166, column: 1, scope: !2988)
!2999 = distinct !DISubprogram(name: "flow_edge_list_print", scope: !3, file: !3, line: 541, type: !3000, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3004)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{null, !67, !3002, !6, !1667}
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!3004 = !{!3005, !3006, !3007, !3008, !3009}
!3005 = !DILocalVariable(name: "str", arg: 1, scope: !2999, file: !3, line: 541, type: !67)
!3006 = !DILocalVariable(name: "edge_list", arg: 2, scope: !2999, file: !3, line: 541, type: !3002)
!3007 = !DILocalVariable(name: "num_edges", arg: 3, scope: !2999, file: !3, line: 541, type: !6)
!3008 = !DILocalVariable(name: "file", arg: 4, scope: !2999, file: !3, line: 541, type: !1667)
!3009 = !DILocalVariable(name: "i", scope: !2999, file: !3, line: 543, type: !6)
!3010 = !DILocation(line: 0, scope: !2999)
!3011 = !DILocation(line: 545, column: 9, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 545, column: 7)
!3013 = !DILocation(line: 545, column: 7, scope: !2999)
!3014 = !DILocation(line: 548, column: 3, scope: !2999)
!3015 = !DILocation(line: 549, column: 8, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 549, column: 3)
!3017 = !DILocation(line: 0, scope: !3016)
!3018 = !DILocation(line: 549, column: 17, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 549, column: 3)
!3020 = !DILocation(line: 549, column: 3, scope: !3016)
!3021 = !DILocation(line: 550, column: 31, scope: !3019)
!3022 = !DILocation(line: 550, column: 45, scope: !3019)
!3023 = !DILocation(line: 550, column: 50, scope: !3019)
!3024 = !DILocation(line: 551, column: 21, scope: !3019)
!3025 = !DILocation(line: 551, column: 27, scope: !3019)
!3026 = !DILocation(line: 550, column: 5, scope: !3019)
!3027 = !DILocation(line: 549, column: 31, scope: !3019)
!3028 = !DILocation(line: 549, column: 3, scope: !3019)
!3029 = distinct !{!3029, !3020, !3030}
!3030 = !DILocation(line: 551, column: 32, scope: !3016)
!3031 = !DILocation(line: 553, column: 3, scope: !2999)
!3032 = !DILocation(line: 554, column: 1, scope: !2999)
!3033 = distinct !DISubprogram(name: "remove_fake_edges", scope: !3, file: !3, line: 581, type: !2429, scopeLine: 582, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3034)
!3034 = !{!3035}
!3035 = !DILocalVariable(name: "bb", scope: !3033, file: !3, line: 583, type: !7)
!3036 = !DILocation(line: 585, column: 3, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 585, column: 3)
!3038 = !DILocation(line: 0, scope: !3037)
!3039 = !DILocation(line: 0, scope: !3033)
!3040 = !DILocation(line: 585, column: 3, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 585, column: 3)
!3042 = !DILocation(line: 586, column: 5, scope: !3041)
!3043 = distinct !{!3043, !3036, !3044}
!3044 = !DILocation(line: 586, column: 33, scope: !3037)
!3045 = !DILocation(line: 587, column: 1, scope: !3033)
!3046 = distinct !DISubprogram(name: "remove_fake_predecessors", scope: !3, file: !3, line: 562, type: !3047, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{null, !7}
!3049 = !{!3050, !3051, !3052}
!3050 = !DILocalVariable(name: "bb", arg: 1, scope: !3046, file: !3, line: 562, type: !7)
!3051 = !DILocalVariable(name: "e", scope: !3046, file: !3, line: 564, type: !27)
!3052 = !DILocalVariable(name: "ei", scope: !3046, file: !3, line: 565, type: !1580)
!3053 = !DILocation(line: 0, scope: !3046)
!3054 = !DILocation(line: 565, column: 3, scope: !3046)
!3055 = !DILocation(line: 567, column: 13, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 567, column: 3)
!3057 = !DILocation(line: 0, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 567, column: 3)
!3059 = !DILocation(line: 567, column: 8, scope: !3056)
!3060 = !DILocation(line: 567, column: 40, scope: !3058)
!3061 = !DILocation(line: 567, column: 3, scope: !3056)
!3062 = !DILocation(line: 569, column: 15, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 569, column: 11)
!3064 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 568, column: 5)
!3065 = !DILocation(line: 569, column: 21, scope: !3063)
!3066 = !DILocation(line: 569, column: 34, scope: !3063)
!3067 = !DILocation(line: 569, column: 11, scope: !3064)
!3068 = !DILocation(line: 570, column: 2, scope: !3063)
!3069 = !DILocation(line: 572, column: 2, scope: !3063)
!3070 = !DILocation(line: 567, column: 3, scope: !3058)
!3071 = distinct !{!3071, !3061, !3072}
!3072 = !DILocation(line: 573, column: 5, scope: !3056)
!3073 = !DILocation(line: 574, column: 1, scope: !3046)
!3074 = distinct !DISubprogram(name: "remove_fake_exit_edges", scope: !3, file: !3, line: 592, type: !2429, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !1660)
!3075 = !DILocation(line: 594, column: 29, scope: !3074)
!3076 = !DILocation(line: 594, column: 3, scope: !3074)
!3077 = !DILocation(line: 595, column: 1, scope: !3074)
!3078 = distinct !DISubprogram(name: "add_noreturn_fake_exit_edges", scope: !3, file: !3, line: 603, type: !2429, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3079)
!3079 = !{!3080}
!3080 = !DILocalVariable(name: "bb", scope: !3078, file: !3, line: 605, type: !7)
!3081 = !DILocation(line: 607, column: 3, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 607, column: 3)
!3083 = !DILocation(line: 607, column: 3, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 607, column: 3)
!3085 = !DILocation(line: 0, scope: !3082)
!3086 = !DILocation(line: 0, scope: !3078)
!3087 = !DILocation(line: 608, column: 9, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 608, column: 9)
!3089 = !DILocation(line: 608, column: 32, scope: !3088)
!3090 = !DILocation(line: 608, column: 9, scope: !3084)
!3091 = !DILocation(line: 609, column: 34, scope: !3088)
!3092 = !DILocation(line: 609, column: 7, scope: !3088)
!3093 = !DILocation(line: 0, scope: !3084)
!3094 = distinct !{!3094, !3081, !3095}
!3095 = !DILocation(line: 609, column: 59, scope: !3082)
!3096 = !DILocation(line: 610, column: 1, scope: !3078)
!3097 = distinct !DISubprogram(name: "connect_infinite_loops_to_exit", scope: !3, file: !3, line: 624, type: !2429, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3098)
!3098 = !{!3099, !3100}
!3099 = !DILocalVariable(name: "unvisited_block", scope: !3097, file: !3, line: 626, type: !7)
!3100 = !DILocalVariable(name: "dfs_ds", scope: !3097, file: !3, line: 627, type: !3101)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "depth_first_search_dsS", file: !3, line: 40, size: 192, elements: !3102)
!3102 = !{!3103, !3104, !3105}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3101, file: !3, line: 42, baseType: !1430, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3101, file: !3, line: 46, baseType: !23, size: 32, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "visited_blocks", scope: !3101, file: !3, line: 49, baseType: !1624, size: 64, offset: 128)
!3106 = !DILocation(line: 626, column: 33, scope: !3097)
!3107 = !DILocation(line: 0, scope: !3097)
!3108 = !DILocation(line: 627, column: 3, scope: !3097)
!3109 = !DILocation(line: 631, column: 3, scope: !3097)
!3110 = !DILocation(line: 632, column: 45, scope: !3097)
!3111 = !DILocation(line: 632, column: 3, scope: !3097)
!3112 = !DILocation(line: 635, column: 3, scope: !3097)
!3113 = !DILocation(line: 637, column: 25, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 636, column: 5)
!3115 = !DILocation(line: 639, column: 12, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 639, column: 11)
!3117 = !DILocation(line: 639, column: 11, scope: !3114)
!3118 = !DILocation(line: 642, column: 35, scope: !3114)
!3119 = !DILocation(line: 642, column: 7, scope: !3114)
!3120 = !DILocation(line: 643, column: 7, scope: !3114)
!3121 = distinct !{!3121, !3112, !3122}
!3122 = !DILocation(line: 644, column: 5, scope: !3097)
!3123 = !DILocation(line: 646, column: 3, scope: !3097)
!3124 = !DILocation(line: 648, column: 1, scope: !3097)
!3125 = distinct !DISubprogram(name: "flow_dfs_compute_reverse_init", scope: !3, file: !3, line: 1081, type: !3126, scopeLine: 1082, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3130)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{null, !3128}
!3128 = !DIDerivedType(tag: DW_TAG_typedef, name: "depth_first_search_ds", file: !3, line: 51, baseType: !3129)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3130 = !{!3131}
!3131 = !DILocalVariable(name: "data", arg: 1, scope: !3125, file: !3, line: 1081, type: !3128)
!3132 = !DILocation(line: 0, scope: !3125)
!3133 = !DILocation(line: 1084, column: 17, scope: !3125)
!3134 = !DILocation(line: 1084, column: 15, scope: !3125)
!3135 = !DILocation(line: 1085, column: 9, scope: !3125)
!3136 = !DILocation(line: 1085, column: 12, scope: !3125)
!3137 = !DILocation(line: 1088, column: 41, scope: !3125)
!3138 = !DILocation(line: 1088, column: 26, scope: !3125)
!3139 = !DILocation(line: 1088, column: 9, scope: !3125)
!3140 = !DILocation(line: 1088, column: 24, scope: !3125)
!3141 = !DILocation(line: 1091, column: 3, scope: !3125)
!3142 = !DILocation(line: 1093, column: 3, scope: !3125)
!3143 = distinct !DISubprogram(name: "flow_dfs_compute_reverse_add_bb", scope: !3, file: !3, line: 1101, type: !3144, scopeLine: 1102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3146)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{null, !3128, !7}
!3146 = !{!3147, !3148}
!3147 = !DILocalVariable(name: "data", arg: 1, scope: !3143, file: !3, line: 1101, type: !3128)
!3148 = !DILocalVariable(name: "bb", arg: 2, scope: !3143, file: !3, line: 1101, type: !7)
!3149 = !DILocation(line: 0, scope: !3143)
!3150 = !DILocation(line: 1103, column: 9, scope: !3143)
!3151 = !DILocation(line: 1103, column: 21, scope: !3143)
!3152 = !DILocation(line: 1103, column: 23, scope: !3143)
!3153 = !DILocation(line: 1103, column: 3, scope: !3143)
!3154 = !DILocation(line: 1103, column: 27, scope: !3143)
!3155 = !DILocation(line: 1104, column: 18, scope: !3143)
!3156 = !DILocation(line: 1104, column: 38, scope: !3143)
!3157 = !DILocation(line: 1104, column: 3, scope: !3143)
!3158 = !DILocation(line: 1105, column: 1, scope: !3143)
!3159 = distinct !DISubprogram(name: "flow_dfs_compute_reverse_execute", scope: !3, file: !3, line: 1113, type: !3160, scopeLine: 1115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3162)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!7, !3128, !7}
!3162 = !{!3163, !3164, !3165, !3166, !3167}
!3163 = !DILocalVariable(name: "data", arg: 1, scope: !3159, file: !3, line: 1113, type: !3128)
!3164 = !DILocalVariable(name: "last_unvisited", arg: 2, scope: !3159, file: !3, line: 1114, type: !7)
!3165 = !DILocalVariable(name: "bb", scope: !3159, file: !3, line: 1116, type: !7)
!3166 = !DILocalVariable(name: "e", scope: !3159, file: !3, line: 1117, type: !27)
!3167 = !DILocalVariable(name: "ei", scope: !3159, file: !3, line: 1118, type: !1580)
!3168 = !DILocation(line: 0, scope: !3159)
!3169 = !DILocation(line: 1117, column: 3, scope: !3159)
!3170 = !DILocation(line: 1118, column: 3, scope: !3159)
!3171 = !DILocation(line: 0, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3159, file: !3, line: 1121, column: 5)
!3173 = !DILocation(line: 0, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 1125, column: 7)
!3175 = !DILocation(line: 0, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 1125, column: 7)
!3177 = !DILocation(line: 0, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3176, file: !3, line: 1126, column: 6)
!3179 = !DILocation(line: 1120, column: 3, scope: !3159)
!3180 = !DILocation(line: 1120, column: 16, scope: !3159)
!3181 = !DILocation(line: 1120, column: 19, scope: !3159)
!3182 = !DILocation(line: 1131, column: 3, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3159, file: !3, line: 1131, column: 3)
!3184 = !DILocation(line: 1122, column: 18, scope: !3172)
!3185 = !DILocation(line: 1122, column: 24, scope: !3172)
!3186 = !DILocation(line: 1122, column: 12, scope: !3172)
!3187 = !DILocation(line: 1125, column: 7, scope: !3174)
!3188 = !DILocation(line: 1125, column: 7, scope: !3176)
!3189 = distinct !{!3189, !3179, !3190}
!3190 = !DILocation(line: 1128, column: 5, scope: !3159)
!3191 = !DILocation(line: 1126, column: 7, scope: !3178)
!3192 = !DILocation(line: 1126, column: 6, scope: !3176)
!3193 = !DILocation(line: 1127, column: 4, scope: !3178)
!3194 = distinct !{!3194, !3187, !3195}
!3195 = !DILocation(line: 1127, column: 49, scope: !3174)
!3196 = !DILocation(line: 0, scope: !3183)
!3197 = !DILocation(line: 1131, column: 3, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 1131, column: 3)
!3199 = !DILocation(line: 1132, column: 10, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 1132, column: 9)
!3201 = !DILocation(line: 1132, column: 9, scope: !3198)
!3202 = distinct !{!3202, !3182, !3203}
!3203 = !DILocation(line: 1133, column: 14, scope: !3183)
!3204 = !DILocation(line: 1136, column: 1, scope: !3159)
!3205 = distinct !DISubprogram(name: "flow_dfs_compute_reverse_finish", scope: !3, file: !3, line: 1142, type: !3126, scopeLine: 1143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3206)
!3206 = !{!3207}
!3207 = !DILocalVariable(name: "data", arg: 1, scope: !3205, file: !3, line: 1142, type: !3128)
!3208 = !DILocation(line: 0, scope: !3205)
!3209 = !DILocation(line: 1144, column: 15, scope: !3205)
!3210 = !DILocation(line: 1144, column: 3, scope: !3205)
!3211 = !DILocation(line: 1145, column: 3, scope: !3205)
!3212 = !DILocation(line: 1146, column: 1, scope: !3205)
!3213 = distinct !DISubprogram(name: "post_order_compute", scope: !3, file: !3, line: 656, type: !3214, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!6, !1578, !404, !404}
!3216 = !{!3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3227, !3228, !3229, !3232}
!3217 = !DILocalVariable(name: "post_order", arg: 1, scope: !3213, file: !3, line: 656, type: !1578)
!3218 = !DILocalVariable(name: "include_entry_exit", arg: 2, scope: !3213, file: !3, line: 656, type: !404)
!3219 = !DILocalVariable(name: "delete_unreachable", arg: 3, scope: !3213, file: !3, line: 657, type: !404)
!3220 = !DILocalVariable(name: "stack", scope: !3213, file: !3, line: 659, type: !1579)
!3221 = !DILocalVariable(name: "sp", scope: !3213, file: !3, line: 660, type: !6)
!3222 = !DILocalVariable(name: "post_order_num", scope: !3213, file: !3, line: 661, type: !6)
!3223 = !DILocalVariable(name: "visited", scope: !3213, file: !3, line: 662, type: !1624)
!3224 = !DILocalVariable(name: "count", scope: !3213, file: !3, line: 663, type: !6)
!3225 = !DILocalVariable(name: "ei", scope: !3226, file: !3, line: 683, type: !1580)
!3226 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 682, column: 5)
!3227 = !DILocalVariable(name: "src", scope: !3226, file: !3, line: 684, type: !7)
!3228 = !DILocalVariable(name: "dest", scope: !3226, file: !3, line: 685, type: !7)
!3229 = !DILocalVariable(name: "b", scope: !3230, file: !3, line: 729, type: !7)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 728, column: 5)
!3231 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 727, column: 7)
!3232 = !DILocalVariable(name: "next_bb", scope: !3230, file: !3, line: 730, type: !7)
!3233 = !DILocation(line: 0, scope: !3213)
!3234 = !DILocation(line: 665, column: 7, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 665, column: 7)
!3236 = !DILocation(line: 665, column: 7, scope: !3213)
!3237 = !DILocation(line: 666, column: 34, scope: !3235)
!3238 = !DILocation(line: 666, column: 5, scope: !3235)
!3239 = !DILocation(line: 669, column: 11, scope: !3213)
!3240 = !DILocation(line: 673, column: 28, scope: !3213)
!3241 = !DILocation(line: 673, column: 13, scope: !3213)
!3242 = !DILocation(line: 676, column: 3, scope: !3213)
!3243 = !DILocation(line: 679, column: 17, scope: !3213)
!3244 = !DILocation(line: 0, scope: !3226)
!3245 = !DILocation(line: 0, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 698, column: 8)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !3, line: 694, column: 2)
!3248 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 693, column: 11)
!3249 = !DILocation(line: 681, column: 3, scope: !3213)
!3250 = !DILocation(line: 683, column: 7, scope: !3226)
!3251 = !DILocation(line: 688, column: 21, scope: !3226)
!3252 = !DILocation(line: 688, column: 12, scope: !3226)
!3253 = !DILocation(line: 689, column: 13, scope: !3226)
!3254 = !DILocation(line: 689, column: 27, scope: !3226)
!3255 = !DILocation(line: 690, column: 14, scope: !3226)
!3256 = !DILocation(line: 690, column: 28, scope: !3226)
!3257 = !DILocation(line: 693, column: 19, scope: !3248)
!3258 = !DILocation(line: 693, column: 16, scope: !3248)
!3259 = !DILocation(line: 693, column: 34, scope: !3248)
!3260 = !DILocation(line: 693, column: 39, scope: !3248)
!3261 = !DILocation(line: 693, column: 11, scope: !3226)
!3262 = !DILocation(line: 696, column: 4, scope: !3247)
!3263 = !DILocation(line: 698, column: 8, scope: !3246)
!3264 = !DILocation(line: 698, column: 33, scope: !3246)
!3265 = !DILocation(line: 698, column: 8, scope: !3247)
!3266 = !DILocation(line: 701, column: 14, scope: !3246)
!3267 = !DILocation(line: 701, column: 6, scope: !3246)
!3268 = !DILocation(line: 701, column: 20, scope: !3246)
!3269 = !DILocation(line: 703, column: 43, scope: !3246)
!3270 = !DILocation(line: 703, column: 31, scope: !3246)
!3271 = !DILocation(line: 703, column: 6, scope: !3246)
!3272 = !DILocation(line: 703, column: 35, scope: !3246)
!3273 = !DILocation(line: 707, column: 8, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 707, column: 8)
!3275 = distinct !DILexicalBlock(scope: !3248, file: !3, line: 706, column: 2)
!3276 = !DILocation(line: 707, column: 33, scope: !3274)
!3277 = !DILocation(line: 707, column: 43, scope: !3274)
!3278 = !DILocation(line: 707, column: 40, scope: !3274)
!3279 = !DILocation(line: 707, column: 8, scope: !3275)
!3280 = !DILocation(line: 708, column: 42, scope: !3274)
!3281 = !DILocation(line: 708, column: 31, scope: !3274)
!3282 = !DILocation(line: 708, column: 6, scope: !3274)
!3283 = !DILocation(line: 708, column: 35, scope: !3274)
!3284 = !DILocation(line: 710, column: 9, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 710, column: 8)
!3286 = !DILocation(line: 710, column: 8, scope: !3275)
!3287 = !DILocation(line: 711, column: 6, scope: !3285)
!3288 = !DILocation(line: 0, scope: !3248)
!3289 = !DILocation(line: 715, column: 5, scope: !3213)
!3290 = distinct !{!3290, !3249, !3289}
!3291 = !DILocation(line: 717, column: 7, scope: !3213)
!3292 = !DILocation(line: 719, column: 32, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 718, column: 5)
!3294 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 717, column: 7)
!3295 = !DILocation(line: 719, column: 7, scope: !3293)
!3296 = !DILocation(line: 719, column: 36, scope: !3293)
!3297 = !DILocation(line: 721, column: 5, scope: !3293)
!3298 = !DILocation(line: 723, column: 28, scope: !3294)
!3299 = !DILocation(line: 0, scope: !3294)
!3300 = !DILocation(line: 727, column: 7, scope: !3231)
!3301 = !DILocation(line: 727, column: 26, scope: !3231)
!3302 = !DILocation(line: 727, column: 39, scope: !3231)
!3303 = !DILocation(line: 727, column: 36, scope: !3231)
!3304 = !DILocation(line: 727, column: 7, scope: !3213)
!3305 = !DILocation(line: 731, column: 16, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 731, column: 7)
!3307 = !DILocation(line: 731, column: 33, scope: !3306)
!3308 = !DILocation(line: 0, scope: !3230)
!3309 = !DILocation(line: 731, column: 12, scope: !3306)
!3310 = !DILocation(line: 731, column: 47, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 731, column: 7)
!3312 = !DILocation(line: 0, scope: !3306)
!3313 = !DILocation(line: 731, column: 44, scope: !3311)
!3314 = !DILocation(line: 731, column: 7, scope: !3306)
!3315 = !DILocation(line: 733, column: 17, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 732, column: 2)
!3317 = !DILocation(line: 735, column: 10, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 735, column: 8)
!3319 = !DILocation(line: 735, column: 8, scope: !3316)
!3320 = !DILocation(line: 736, column: 6, scope: !3318)
!3321 = !DILocation(line: 0, scope: !3311)
!3322 = !DILocation(line: 731, column: 7, scope: !3311)
!3323 = distinct !{!3323, !3314, !3324}
!3324 = !DILocation(line: 737, column: 2, scope: !3306)
!3325 = !DILocation(line: 739, column: 7, scope: !3230)
!3326 = !DILocation(line: 740, column: 5, scope: !3230)
!3327 = !DILocation(line: 742, column: 3, scope: !3213)
!3328 = !DILocation(line: 743, column: 3, scope: !3213)
!3329 = !DILocation(line: 744, column: 3, scope: !3213)
!3330 = distinct !DISubprogram(name: "inverted_post_order_compute", scope: !3, file: !3, line: 813, type: !3331, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3333)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!6, !1578}
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3339, !3340, !3342, !3344, !3345, !3352, !3353, !3354, !3357}
!3334 = !DILocalVariable(name: "post_order", arg: 1, scope: !3330, file: !3, line: 813, type: !1578)
!3335 = !DILocalVariable(name: "bb", scope: !3330, file: !3, line: 815, type: !7)
!3336 = !DILocalVariable(name: "stack", scope: !3330, file: !3, line: 816, type: !1579)
!3337 = !DILocalVariable(name: "sp", scope: !3330, file: !3, line: 817, type: !6)
!3338 = !DILocalVariable(name: "post_order_num", scope: !3330, file: !3, line: 818, type: !6)
!3339 = !DILocalVariable(name: "visited", scope: !3330, file: !3, line: 819, type: !1624)
!3340 = !DILocalVariable(name: "has_unvisited_bb", scope: !3341, file: !3, line: 845, type: !404)
!3341 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 844, column: 5)
!3342 = !DILocalVariable(name: "ei", scope: !3343, file: !3, line: 850, type: !1580)
!3343 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 849, column: 9)
!3344 = !DILocalVariable(name: "pred", scope: !3343, file: !3, line: 851, type: !7)
!3345 = !DILocalVariable(name: "ei", scope: !3346, file: !3, line: 893, type: !1580)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 892, column: 15)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 891, column: 17)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 888, column: 11)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 887, column: 13)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !3, line: 886, column: 7)
!3351 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 886, column: 7)
!3352 = !DILocalVariable(name: "e", scope: !3346, file: !3, line: 894, type: !27)
!3353 = !DILocalVariable(name: "visited_pred", scope: !3346, file: !3, line: 895, type: !7)
!3354 = !DILocalVariable(name: "be", scope: !3355, file: !3, line: 906, type: !7)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 905, column: 19)
!3356 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 904, column: 21)
!3357 = !DILocalVariable(name: "be", scope: !3358, file: !3, line: 919, type: !7)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 916, column: 9)
!3359 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 915, column: 11)
!3360 = !DILocation(line: 0, scope: !3330)
!3361 = !DILocation(line: 822, column: 11, scope: !3330)
!3362 = !DILocation(line: 826, column: 28, scope: !3330)
!3363 = !DILocation(line: 826, column: 13, scope: !3330)
!3364 = !DILocation(line: 829, column: 3, scope: !3330)
!3365 = !DILocation(line: 832, column: 3, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 832, column: 3)
!3367 = !DILocation(line: 0, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 837, column: 11)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 836, column: 13)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 834, column: 7)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 833, column: 9)
!3372 = distinct !DILexicalBlock(scope: !3366, file: !3, line: 832, column: 3)
!3373 = !DILocation(line: 0, scope: !3366)
!3374 = !DILocation(line: 832, column: 3, scope: !3372)
!3375 = !DILocation(line: 0, scope: !3343)
!3376 = !DILocation(line: 0, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 864, column: 19)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !3, line: 860, column: 13)
!3379 = distinct !DILexicalBlock(scope: !3343, file: !3, line: 859, column: 15)
!3380 = !DILocation(line: 0, scope: !3346)
!3381 = !DILocation(line: 0, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 898, column: 17)
!3383 = !DILocation(line: 0, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 898, column: 17)
!3385 = !DILocation(line: 0, scope: !3355)
!3386 = !DILocation(line: 0, scope: !3358)
!3387 = !DILocation(line: 843, column: 3, scope: !3330)
!3388 = !DILocation(line: 833, column: 9, scope: !3371)
!3389 = !DILocation(line: 833, column: 32, scope: !3371)
!3390 = !DILocation(line: 833, column: 9, scope: !3372)
!3391 = !DILocation(line: 836, column: 13, scope: !3369)
!3392 = !DILocation(line: 836, column: 36, scope: !3369)
!3393 = !DILocation(line: 836, column: 13, scope: !3370)
!3394 = !DILocation(line: 838, column: 21, scope: !3368)
!3395 = !DILocation(line: 838, column: 13, scope: !3368)
!3396 = !DILocation(line: 838, column: 27, scope: !3368)
!3397 = !DILocation(line: 839, column: 35, scope: !3368)
!3398 = !DILocation(line: 839, column: 13, scope: !3368)
!3399 = !DILocation(line: 840, column: 11, scope: !3368)
!3400 = distinct !{!3400, !3365, !3401}
!3401 = !DILocation(line: 841, column: 7, scope: !3366)
!3402 = !DILocation(line: 818, column: 7, scope: !3330)
!3403 = !DILocation(line: 0, scope: !3341)
!3404 = !DILocation(line: 848, column: 7, scope: !3341)
!3405 = !DILocation(line: 850, column: 11, scope: !3343)
!3406 = !DILocation(line: 854, column: 25, scope: !3343)
!3407 = !DILocation(line: 854, column: 16, scope: !3343)
!3408 = !DILocation(line: 855, column: 16, scope: !3343)
!3409 = !DILocation(line: 855, column: 30, scope: !3343)
!3410 = !DILocation(line: 856, column: 18, scope: !3343)
!3411 = !DILocation(line: 856, column: 32, scope: !3343)
!3412 = !DILocation(line: 859, column: 17, scope: !3379)
!3413 = !DILocation(line: 859, column: 15, scope: !3343)
!3414 = !DILocation(line: 862, column: 15, scope: !3378)
!3415 = !DILocation(line: 864, column: 19, scope: !3377)
!3416 = !DILocation(line: 864, column: 44, scope: !3377)
!3417 = !DILocation(line: 864, column: 19, scope: !3378)
!3418 = !DILocation(line: 867, column: 25, scope: !3377)
!3419 = !DILocation(line: 867, column: 17, scope: !3377)
!3420 = !DILocation(line: 867, column: 31, scope: !3377)
!3421 = !DILocation(line: 869, column: 54, scope: !3377)
!3422 = !DILocation(line: 869, column: 42, scope: !3377)
!3423 = !DILocation(line: 869, column: 17, scope: !3377)
!3424 = !DILocation(line: 869, column: 46, scope: !3377)
!3425 = !DILocation(line: 873, column: 25, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 873, column: 19)
!3427 = distinct !DILexicalBlock(scope: !3379, file: !3, line: 872, column: 13)
!3428 = !DILocation(line: 873, column: 22, scope: !3426)
!3429 = !DILocation(line: 873, column: 40, scope: !3426)
!3430 = !DILocation(line: 873, column: 43, scope: !3426)
!3431 = !DILocation(line: 873, column: 19, scope: !3427)
!3432 = !DILocation(line: 874, column: 52, scope: !3426)
!3433 = !DILocation(line: 874, column: 42, scope: !3426)
!3434 = !DILocation(line: 874, column: 17, scope: !3426)
!3435 = !DILocation(line: 874, column: 46, scope: !3426)
!3436 = !DILocation(line: 876, column: 20, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 876, column: 19)
!3438 = !DILocation(line: 876, column: 19, scope: !3427)
!3439 = !DILocation(line: 877, column: 17, scope: !3437)
!3440 = !DILocation(line: 0, scope: !3379)
!3441 = !DILocation(line: 881, column: 9, scope: !3341)
!3442 = distinct !{!3442, !3404, !3441}
!3443 = !DILocation(line: 886, column: 7, scope: !3351)
!3444 = !DILocation(line: 886, column: 7, scope: !3350)
!3445 = !DILocation(line: 845, column: 12, scope: !3341)
!3446 = !DILocation(line: 823, column: 6, scope: !3330)
!3447 = !DILocation(line: 0, scope: !3351)
!3448 = !DILocation(line: 887, column: 14, scope: !3349)
!3449 = !DILocation(line: 887, column: 13, scope: !3350)
!3450 = !DILocation(line: 891, column: 17, scope: !3347)
!3451 = !DILocation(line: 891, column: 40, scope: !3347)
!3452 = !DILocation(line: 891, column: 17, scope: !3348)
!3453 = !DILocation(line: 893, column: 17, scope: !3346)
!3454 = !DILocation(line: 894, column: 17, scope: !3346)
!3455 = !DILocation(line: 898, column: 17, scope: !3382)
!3456 = !DILocation(line: 898, column: 17, scope: !3384)
!3457 = !DILocation(line: 900, column: 25, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 900, column: 25)
!3459 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 899, column: 19)
!3460 = !DILocation(line: 900, column: 25, scope: !3459)
!3461 = !DILocation(line: 901, column: 23, scope: !3458)
!3462 = distinct !{!3462, !3455, !3463}
!3463 = !DILocation(line: 902, column: 19, scope: !3382)
!3464 = !DILocation(line: 904, column: 21, scope: !3356)
!3465 = !DILocation(line: 904, column: 21, scope: !3346)
!3466 = !DILocation(line: 906, column: 38, scope: !3355)
!3467 = !DILocation(line: 907, column: 21, scope: !3355)
!3468 = !DILocation(line: 908, column: 43, scope: !3355)
!3469 = !DILocation(line: 908, column: 21, scope: !3355)
!3470 = !DILocation(line: 909, column: 29, scope: !3355)
!3471 = !DILocation(line: 909, column: 21, scope: !3355)
!3472 = !DILocation(line: 909, column: 35, scope: !3355)
!3473 = !DILocation(line: 912, column: 15, scope: !3347)
!3474 = !DILocation(line: 0, scope: !3350)
!3475 = distinct !{!3475, !3443, !3476}
!3476 = !DILocation(line: 913, column: 11, scope: !3351)
!3477 = !DILocation(line: 915, column: 11, scope: !3359)
!3478 = !DILocation(line: 915, column: 34, scope: !3359)
!3479 = !DILocation(line: 915, column: 28, scope: !3359)
!3480 = !DILocation(line: 919, column: 46, scope: !3358)
!3481 = !DILocation(line: 919, column: 28, scope: !3358)
!3482 = !DILocation(line: 920, column: 11, scope: !3358)
!3483 = !DILocation(line: 921, column: 33, scope: !3358)
!3484 = !DILocation(line: 921, column: 11, scope: !3358)
!3485 = !DILocation(line: 922, column: 25, scope: !3358)
!3486 = !DILocation(line: 923, column: 9, scope: !3358)
!3487 = !DILocation(line: 927, column: 5, scope: !3341)
!3488 = distinct !{!3488, !3387, !3489}
!3489 = !DILocation(line: 928, column: 12, scope: !3330)
!3490 = !DILocation(line: 931, column: 28, scope: !3330)
!3491 = !DILocation(line: 931, column: 3, scope: !3330)
!3492 = !DILocation(line: 931, column: 32, scope: !3330)
!3493 = !DILocation(line: 933, column: 3, scope: !3330)
!3494 = !DILocation(line: 934, column: 3, scope: !3330)
!3495 = !DILocation(line: 935, column: 3, scope: !3330)
!3496 = distinct !DISubprogram(name: "dfs_find_deadend", scope: !3, file: !3, line: 769, type: !3497, scopeLine: 770, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3499)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!7, !7}
!3499 = !{!3500, !3501}
!3500 = !DILocalVariable(name: "bb", arg: 1, scope: !3496, file: !3, line: 769, type: !7)
!3501 = !DILocalVariable(name: "visited", scope: !3496, file: !3, line: 771, type: !1624)
!3502 = !DILocation(line: 0, scope: !3496)
!3503 = !DILocation(line: 771, column: 36, scope: !3496)
!3504 = !DILocation(line: 771, column: 21, scope: !3496)
!3505 = !DILocation(line: 772, column: 3, scope: !3496)
!3506 = !DILocation(line: 774, column: 3, scope: !3496)
!3507 = !DILocation(line: 776, column: 29, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 775, column: 5)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !3, line: 774, column: 3)
!3510 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 774, column: 3)
!3511 = !DILocation(line: 776, column: 7, scope: !3508)
!3512 = !DILocation(line: 777, column: 11, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 777, column: 11)
!3514 = !DILocation(line: 777, column: 34, scope: !3513)
!3515 = !DILocation(line: 778, column: 11, scope: !3513)
!3516 = !DILocation(line: 778, column: 14, scope: !3513)
!3517 = !DILocation(line: 777, column: 11, scope: !3508)
!3518 = !DILocation(line: 780, column: 11, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3513, file: !3, line: 779, column: 9)
!3520 = !DILocation(line: 781, column: 11, scope: !3519)
!3521 = !DILocation(line: 784, column: 12, scope: !3508)
!3522 = !DILocation(line: 784, column: 31, scope: !3508)
!3523 = !DILocation(line: 774, column: 3, scope: !3509)
!3524 = distinct !{!3524, !3525, !3526}
!3525 = !DILocation(line: 774, column: 3, scope: !3510)
!3526 = !DILocation(line: 785, column: 5, scope: !3510)
!3527 = distinct !DISubprogram(name: "pre_and_rev_post_order_compute", scope: !3, file: !3, line: 950, type: !3528, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3530)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!6, !1578, !1578, !404}
!3530 = !{!3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3541, !3542}
!3531 = !DILocalVariable(name: "pre_order", arg: 1, scope: !3527, file: !3, line: 950, type: !1578)
!3532 = !DILocalVariable(name: "rev_post_order", arg: 2, scope: !3527, file: !3, line: 950, type: !1578)
!3533 = !DILocalVariable(name: "include_entry_exit", arg: 3, scope: !3527, file: !3, line: 951, type: !404)
!3534 = !DILocalVariable(name: "stack", scope: !3527, file: !3, line: 953, type: !1579)
!3535 = !DILocalVariable(name: "sp", scope: !3527, file: !3, line: 954, type: !6)
!3536 = !DILocalVariable(name: "pre_order_num", scope: !3527, file: !3, line: 955, type: !6)
!3537 = !DILocalVariable(name: "rev_post_order_num", scope: !3527, file: !3, line: 956, type: !6)
!3538 = !DILocalVariable(name: "visited", scope: !3527, file: !3, line: 957, type: !1624)
!3539 = !DILocalVariable(name: "ei", scope: !3540, file: !3, line: 985, type: !1580)
!3540 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 984, column: 5)
!3541 = !DILocalVariable(name: "src", scope: !3540, file: !3, line: 986, type: !7)
!3542 = !DILocalVariable(name: "dest", scope: !3540, file: !3, line: 987, type: !7)
!3543 = !DILocation(line: 0, scope: !3527)
!3544 = !DILocation(line: 956, column: 28, scope: !3527)
!3545 = !DILocation(line: 956, column: 43, scope: !3527)
!3546 = !DILocation(line: 960, column: 11, scope: !3527)
!3547 = !DILocation(line: 963, column: 7, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 963, column: 7)
!3549 = !DILocation(line: 963, column: 7, scope: !3527)
!3550 = !DILocation(line: 965, column: 11, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 965, column: 11)
!3552 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 964, column: 5)
!3553 = !DILocation(line: 965, column: 11, scope: !3552)
!3554 = !DILocation(line: 966, column: 27, scope: !3551)
!3555 = !DILocation(line: 966, column: 2, scope: !3551)
!3556 = !DILocation(line: 968, column: 11, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 968, column: 11)
!3558 = !DILocation(line: 968, column: 11, scope: !3552)
!3559 = !DILocation(line: 969, column: 35, scope: !3557)
!3560 = !DILocation(line: 969, column: 2, scope: !3557)
!3561 = !DILocation(line: 969, column: 39, scope: !3557)
!3562 = !DILocation(line: 972, column: 24, scope: !3548)
!3563 = !DILocation(line: 0, scope: !3548)
!3564 = !DILocation(line: 975, column: 28, scope: !3527)
!3565 = !DILocation(line: 975, column: 13, scope: !3527)
!3566 = !DILocation(line: 978, column: 3, scope: !3527)
!3567 = !DILocation(line: 981, column: 17, scope: !3527)
!3568 = !DILocation(line: 0, scope: !3540)
!3569 = !DILocation(line: 0, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 1000, column: 8)
!3571 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 996, column: 2)
!3572 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 995, column: 11)
!3573 = !DILocation(line: 0, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 1005, column: 8)
!3575 = !DILocation(line: 0, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3574, file: !3, line: 1009, column: 13)
!3577 = !DILocation(line: 0, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 1016, column: 8)
!3579 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 1015, column: 2)
!3580 = !DILocation(line: 983, column: 3, scope: !3527)
!3581 = !DILocation(line: 967, column: 20, scope: !3552)
!3582 = !DILocation(line: 985, column: 7, scope: !3540)
!3583 = !DILocation(line: 990, column: 21, scope: !3540)
!3584 = !DILocation(line: 990, column: 12, scope: !3540)
!3585 = !DILocation(line: 991, column: 13, scope: !3540)
!3586 = !DILocation(line: 991, column: 27, scope: !3540)
!3587 = !DILocation(line: 992, column: 14, scope: !3540)
!3588 = !DILocation(line: 992, column: 28, scope: !3540)
!3589 = !DILocation(line: 995, column: 19, scope: !3572)
!3590 = !DILocation(line: 995, column: 16, scope: !3572)
!3591 = !DILocation(line: 995, column: 34, scope: !3572)
!3592 = !DILocation(line: 995, column: 39, scope: !3572)
!3593 = !DILocation(line: 995, column: 11, scope: !3540)
!3594 = !DILocation(line: 998, column: 4, scope: !3571)
!3595 = !DILocation(line: 1000, column: 8, scope: !3571)
!3596 = !DILocation(line: 1001, column: 39, scope: !3570)
!3597 = !DILocation(line: 1001, column: 6, scope: !3570)
!3598 = !DILocation(line: 1001, column: 31, scope: !3570)
!3599 = !DILocation(line: 1003, column: 17, scope: !3571)
!3600 = !DILocation(line: 1005, column: 8, scope: !3574)
!3601 = !DILocation(line: 1005, column: 33, scope: !3574)
!3602 = !DILocation(line: 1005, column: 8, scope: !3571)
!3603 = !DILocation(line: 1008, column: 14, scope: !3574)
!3604 = !DILocation(line: 1008, column: 6, scope: !3574)
!3605 = !DILocation(line: 1008, column: 20, scope: !3574)
!3606 = !DILocation(line: 1009, column: 13, scope: !3574)
!3607 = !DILocation(line: 1012, column: 51, scope: !3576)
!3608 = !DILocation(line: 1012, column: 39, scope: !3576)
!3609 = !DILocation(line: 1012, column: 6, scope: !3576)
!3610 = !DILocation(line: 1012, column: 43, scope: !3576)
!3611 = !DILocation(line: 1016, column: 8, scope: !3578)
!3612 = !DILocation(line: 1016, column: 33, scope: !3578)
!3613 = !DILocation(line: 1016, column: 43, scope: !3578)
!3614 = !DILocation(line: 1016, column: 40, scope: !3578)
!3615 = !DILocation(line: 1017, column: 8, scope: !3578)
!3616 = !DILocation(line: 1020, column: 50, scope: !3578)
!3617 = !DILocation(line: 1020, column: 39, scope: !3578)
!3618 = !DILocation(line: 1020, column: 6, scope: !3578)
!3619 = !DILocation(line: 1020, column: 43, scope: !3578)
!3620 = !DILocation(line: 1022, column: 9, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 1022, column: 8)
!3622 = !DILocation(line: 1022, column: 8, scope: !3579)
!3623 = !DILocation(line: 1023, column: 6, scope: !3621)
!3624 = !DILocation(line: 0, scope: !3572)
!3625 = !DILocation(line: 1027, column: 5, scope: !3527)
!3626 = distinct !{!3626, !3580, !3625}
!3627 = !DILocation(line: 1029, column: 3, scope: !3527)
!3628 = !DILocation(line: 1030, column: 3, scope: !3527)
!3629 = !DILocation(line: 1032, column: 7, scope: !3527)
!3630 = !DILocation(line: 1034, column: 11, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 1033, column: 5)
!3632 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 1032, column: 7)
!3633 = !DILocation(line: 1035, column: 2, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 1034, column: 11)
!3635 = !DILocation(line: 1035, column: 27, scope: !3634)
!3636 = !DILocation(line: 1036, column: 20, scope: !3631)
!3637 = !DILocation(line: 1037, column: 11, scope: !3631)
!3638 = !DILocation(line: 1038, column: 2, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 1037, column: 11)
!3640 = !DILocation(line: 1038, column: 39, scope: !3639)
!3641 = !DILocation(line: 1040, column: 7, scope: !3631)
!3642 = !DILocation(line: 1045, column: 5, scope: !3632)
!3643 = !DILocation(line: 1047, column: 3, scope: !3527)
!3644 = !DILocation(line: 0, scope: !2)
!3645 = !DILocation(line: 1173, column: 10, scope: !2)
!3646 = !DILocation(line: 1174, column: 7, scope: !2)
!3647 = !DILocation(line: 1177, column: 8, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1177, column: 7)
!3649 = !DILocation(line: 1177, column: 7, scope: !2)
!3650 = !DILocation(line: 1180, column: 17, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3648, file: !3, line: 1178, column: 5)
!3652 = !DILocation(line: 1180, column: 15, scope: !3651)
!3653 = !DILocation(line: 1181, column: 7, scope: !3651)
!3654 = !DILocation(line: 1182, column: 14, scope: !3651)
!3655 = !DILocation(line: 1183, column: 5, scope: !3651)
!3656 = !DILocation(line: 1184, column: 12, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3648, file: !3, line: 1184, column: 12)
!3658 = !DILocation(line: 1184, column: 19, scope: !3657)
!3659 = !DILocation(line: 1184, column: 12, scope: !3648)
!3660 = !DILocation(line: 1187, column: 13, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3662, file: !3, line: 1187, column: 11)
!3662 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 1185, column: 5)
!3663 = !DILocation(line: 1187, column: 22, scope: !3661)
!3664 = !DILocation(line: 1187, column: 11, scope: !3662)
!3665 = !DILocation(line: 1190, column: 17, scope: !3662)
!3666 = !DILocation(line: 1190, column: 15, scope: !3662)
!3667 = !DILocation(line: 1191, column: 14, scope: !3662)
!3668 = !DILocation(line: 1192, column: 5, scope: !3662)
!3669 = !DILocation(line: 1194, column: 8, scope: !2)
!3670 = !DILocation(line: 1195, column: 25, scope: !2)
!3671 = !DILocation(line: 1195, column: 14, scope: !2)
!3672 = !DILocation(line: 1196, column: 3, scope: !2)
!3673 = !DILocation(line: 0, scope: !1622)
!3674 = !DILocation(line: 0, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 1202, column: 11)
!3676 = !DILocation(line: 0, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 1204, column: 4)
!3678 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 1203, column: 2)
!3679 = !DILocation(line: 0, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 1204, column: 4)
!3681 = !DILocation(line: 0, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 1206, column: 8)
!3683 = distinct !DILexicalBlock(scope: !3680, file: !3, line: 1205, column: 10)
!3684 = !DILocation(line: 0, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 1214, column: 4)
!3686 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 1213, column: 2)
!3687 = !DILocation(line: 1197, column: 3, scope: !2)
!3688 = !DILocation(line: 1195, column: 10, scope: !2)
!3689 = !DILocation(line: 1199, column: 7, scope: !1622)
!3690 = !DILocation(line: 1200, column: 7, scope: !1622)
!3691 = !DILocation(line: 1201, column: 16, scope: !1622)
!3692 = !DILocation(line: 1201, column: 13, scope: !1622)
!3693 = !DILocation(line: 1202, column: 11, scope: !1622)
!3694 = !DILocation(line: 1204, column: 4, scope: !3677)
!3695 = !DILocation(line: 1204, column: 4, scope: !3680)
!3696 = !DILocation(line: 1205, column: 11, scope: !3683)
!3697 = !DILocation(line: 1205, column: 30, scope: !3683)
!3698 = !DILocation(line: 1205, column: 33, scope: !3683)
!3699 = !DILocation(line: 1205, column: 10, scope: !3680)
!3700 = !DILocation(line: 1207, column: 3, scope: !3682)
!3701 = !DILocation(line: 1208, column: 27, scope: !3682)
!3702 = !DILocation(line: 1208, column: 30, scope: !3682)
!3703 = !DILocation(line: 1208, column: 21, scope: !3682)
!3704 = !DILocation(line: 1208, column: 16, scope: !3682)
!3705 = !DILocation(line: 1208, column: 25, scope: !3682)
!3706 = !DILocation(line: 1208, column: 10, scope: !3682)
!3707 = !DILocation(line: 1208, column: 3, scope: !3682)
!3708 = !DILocation(line: 1208, column: 14, scope: !3682)
!3709 = !DILocation(line: 1209, column: 3, scope: !3682)
!3710 = !DILocation(line: 1210, column: 8, scope: !3682)
!3711 = distinct !{!3711, !3694, !3712}
!3712 = !DILocation(line: 1210, column: 8, scope: !3677)
!3713 = !DILocation(line: 1214, column: 4, scope: !3685)
!3714 = !DILocation(line: 1214, column: 4, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 1214, column: 4)
!3716 = !DILocation(line: 1215, column: 11, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 1215, column: 10)
!3718 = !DILocation(line: 1215, column: 31, scope: !3717)
!3719 = !DILocation(line: 1215, column: 34, scope: !3717)
!3720 = !DILocation(line: 1215, column: 10, scope: !3715)
!3721 = !DILocation(line: 1217, column: 3, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3717, file: !3, line: 1216, column: 8)
!3723 = !DILocation(line: 1218, column: 27, scope: !3722)
!3724 = !DILocation(line: 1218, column: 30, scope: !3722)
!3725 = !DILocation(line: 1218, column: 21, scope: !3722)
!3726 = !DILocation(line: 1218, column: 16, scope: !3722)
!3727 = !DILocation(line: 1218, column: 25, scope: !3722)
!3728 = !DILocation(line: 1218, column: 10, scope: !3722)
!3729 = !DILocation(line: 1218, column: 3, scope: !3722)
!3730 = !DILocation(line: 1218, column: 14, scope: !3722)
!3731 = !DILocation(line: 1219, column: 3, scope: !3722)
!3732 = !DILocation(line: 1220, column: 8, scope: !3722)
!3733 = distinct !{!3733, !3713, !3734}
!3734 = !DILocation(line: 1220, column: 8, scope: !3685)
!3735 = !DILocation(line: 1222, column: 5, scope: !2)
!3736 = distinct !{!3736, !3687, !3735}
!3737 = !DILocation(line: 1223, column: 3, scope: !2)
!3738 = !DILocation(line: 1224, column: 8, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1224, column: 3)
!3740 = !DILocation(line: 0, scope: !3739)
!3741 = !DILocation(line: 1224, column: 19, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 1224, column: 3)
!3743 = !DILocation(line: 1224, column: 3, scope: !3739)
!3744 = !DILocation(line: 1225, column: 5, scope: !3742)
!3745 = !DILocation(line: 1224, column: 27, scope: !3742)
!3746 = !DILocation(line: 1224, column: 3, scope: !3742)
!3747 = distinct !{!3747, !3743, !3748}
!3748 = !DILocation(line: 1225, column: 5, scope: !3739)
!3749 = !DILocation(line: 1226, column: 3, scope: !2)
!3750 = distinct !DISubprogram(name: "RESET_BIT", scope: !1625, file: !1625, line: 82, type: !2385, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3751)
!3751 = !{!3752, !3753, !3754}
!3752 = !DILocalVariable(name: "map", arg: 1, scope: !3750, file: !1625, line: 82, type: !1624)
!3753 = !DILocalVariable(name: "bitno", arg: 2, scope: !3750, file: !1625, line: 82, type: !23)
!3754 = !DILocalVariable(name: "oldbit", scope: !3755, file: !1625, line: 86, type: !404)
!3755 = distinct !DILexicalBlock(scope: !3756, file: !1625, line: 85, column: 5)
!3756 = distinct !DILexicalBlock(scope: !3750, file: !1625, line: 84, column: 7)
!3757 = !DILocation(line: 0, scope: !3750)
!3758 = !DILocation(line: 84, column: 12, scope: !3756)
!3759 = !DILocation(line: 84, column: 7, scope: !3756)
!3760 = !DILocation(line: 84, column: 7, scope: !3750)
!3761 = !DILocation(line: 92, column: 42, scope: !3750)
!3762 = !DILocation(line: 92, column: 31, scope: !3750)
!3763 = !DILocation(line: 91, column: 19, scope: !3750)
!3764 = !DILocation(line: 91, column: 3, scope: !3750)
!3765 = !DILocation(line: 87, column: 16, scope: !3755)
!3766 = !DILocation(line: 88, column: 11, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3755, file: !1625, line: 88, column: 11)
!3768 = !DILocation(line: 88, column: 11, scope: !3755)
!3769 = !DILocation(line: 89, column: 2, scope: !3767)
!3770 = !DILocation(line: 89, column: 41, scope: !3767)
!3771 = !DILocation(line: 92, column: 8, scope: !3750)
!3772 = !DILocation(line: 92, column: 5, scope: !3750)
!3773 = !DILocation(line: 93, column: 1, scope: !3750)
!3774 = distinct !DISubprogram(name: "compute_dominance_frontiers", scope: !3, file: !3, line: 1290, type: !3775, scopeLine: 1291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3779)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{null, !3777}
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !8, line: 47, baseType: !226)
!3779 = !{!3780}
!3780 = !DILocalVariable(name: "frontiers", arg: 1, scope: !3774, file: !3, line: 1290, type: !3777)
!3781 = !DILocation(line: 0, scope: !3774)
!3782 = !DILocation(line: 1292, column: 3, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3784, file: !3, line: 1292, column: 3)
!3784 = distinct !DILexicalBlock(scope: !3774, file: !3, line: 1292, column: 3)
!3785 = !DILocation(line: 1292, column: 3, scope: !3784)
!3786 = !DILocation(line: 1294, column: 3, scope: !3774)
!3787 = !DILocation(line: 1296, column: 3, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3789, file: !3, line: 1296, column: 3)
!3789 = distinct !DILexicalBlock(scope: !3774, file: !3, line: 1296, column: 3)
!3790 = !DILocation(line: 1296, column: 3, scope: !3789)
!3791 = !DILocation(line: 1297, column: 1, scope: !3774)
!3792 = distinct !DISubprogram(name: "compute_dominance_frontiers_1", scope: !3, file: !3, line: 1257, type: !3775, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3793)
!3793 = !{!3794, !3795, !3796, !3797, !3798, !3807}
!3794 = !DILocalVariable(name: "frontiers", arg: 1, scope: !3792, file: !3, line: 1257, type: !3777)
!3795 = !DILocalVariable(name: "p", scope: !3792, file: !3, line: 1259, type: !27)
!3796 = !DILocalVariable(name: "ei", scope: !3792, file: !3, line: 1260, type: !1580)
!3797 = !DILocalVariable(name: "b", scope: !3792, file: !3, line: 1261, type: !7)
!3798 = !DILocalVariable(name: "runner", scope: !3799, file: !3, line: 1268, type: !7)
!3799 = distinct !DILexicalBlock(scope: !3800, file: !3, line: 1267, column: 6)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !3, line: 1266, column: 4)
!3801 = distinct !DILexicalBlock(scope: !3802, file: !3, line: 1266, column: 4)
!3802 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 1265, column: 2)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 1264, column: 11)
!3804 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 1263, column: 5)
!3805 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 1262, column: 3)
!3806 = distinct !DILexicalBlock(scope: !3792, file: !3, line: 1262, column: 3)
!3807 = !DILocalVariable(name: "domsb", scope: !3799, file: !3, line: 1269, type: !7)
!3808 = !DILocation(line: 0, scope: !3792)
!3809 = !DILocation(line: 1259, column: 3, scope: !3792)
!3810 = !DILocation(line: 1260, column: 3, scope: !3792)
!3811 = !DILocation(line: 1262, column: 3, scope: !3806)
!3812 = !DILocation(line: 0, scope: !3801)
!3813 = !DILocation(line: 0, scope: !3800)
!3814 = !DILocation(line: 1262, column: 3, scope: !3805)
!3815 = !DILocation(line: 0, scope: !3806)
!3816 = !DILocation(line: 1264, column: 11, scope: !3803)
!3817 = !DILocation(line: 1264, column: 33, scope: !3803)
!3818 = !DILocation(line: 1264, column: 11, scope: !3804)
!3819 = !DILocation(line: 1266, column: 4, scope: !3801)
!3820 = !DILocation(line: 0, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3822, file: !3, line: 1276, column: 9)
!3822 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 1275, column: 3)
!3823 = !DILocation(line: 1266, column: 4, scope: !3800)
!3824 = !DILocation(line: 1268, column: 29, scope: !3799)
!3825 = !DILocation(line: 1268, column: 32, scope: !3799)
!3826 = !DILocation(line: 0, scope: !3799)
!3827 = !DILocation(line: 1270, column: 22, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 1270, column: 12)
!3829 = !DILocation(line: 1270, column: 19, scope: !3828)
!3830 = !DILocation(line: 1270, column: 12, scope: !3799)
!3831 = !DILocation(line: 1273, column: 16, scope: !3799)
!3832 = !DILocation(line: 1274, column: 8, scope: !3799)
!3833 = !DILocation(line: 1274, column: 22, scope: !3799)
!3834 = !DILocation(line: 1276, column: 41, scope: !3821)
!3835 = !DILocation(line: 1276, column: 23, scope: !3821)
!3836 = !DILocation(line: 1276, column: 52, scope: !3821)
!3837 = !DILocation(line: 1276, column: 9, scope: !3821)
!3838 = !DILocation(line: 1276, column: 9, scope: !3822)
!3839 = !DILocation(line: 1278, column: 39, scope: !3822)
!3840 = !DILocation(line: 1278, column: 21, scope: !3822)
!3841 = !DILocation(line: 1279, column: 10, scope: !3822)
!3842 = !DILocation(line: 1278, column: 5, scope: !3822)
!3843 = !DILocation(line: 1280, column: 14, scope: !3822)
!3844 = distinct !{!3844, !3832, !3845}
!3845 = !DILocation(line: 1282, column: 3, scope: !3799)
!3846 = distinct !{!3846, !3819, !3847}
!3847 = !DILocation(line: 1283, column: 6, scope: !3801)
!3848 = !DILocation(line: 0, scope: !3805)
!3849 = distinct !{!3849, !3811, !3850}
!3850 = !DILocation(line: 1285, column: 5, scope: !3806)
!3851 = !DILocation(line: 1286, column: 1, scope: !3792)
!3852 = distinct !DISubprogram(name: "compute_idf", scope: !3, file: !3, line: 1309, type: !3853, scopeLine: 1310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3855)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!3778, !3778, !3777}
!3855 = !{!3856, !3857, !3858, !3866, !3867, !3868, !3869}
!3856 = !DILocalVariable(name: "def_blocks", arg: 1, scope: !3852, file: !3, line: 1309, type: !3778)
!3857 = !DILocalVariable(name: "dfs", arg: 2, scope: !3852, file: !3, line: 1309, type: !3777)
!3858 = !DILocalVariable(name: "bi", scope: !3852, file: !3, line: 1311, type: !3859)
!3859 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !228, line: 218, baseType: !3860)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !228, line: 203, size: 256, elements: !3861)
!3861 = !{!3862, !3863, !3864, !3865}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !3860, file: !228, line: 206, baseType: !231, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !3860, file: !228, line: 209, baseType: !231, size: 64, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !3860, file: !228, line: 212, baseType: !23, size: 32, offset: 128)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3860, file: !228, line: 217, baseType: !241, size: 64, offset: 192)
!3866 = !DILocalVariable(name: "bb_index", scope: !3852, file: !3, line: 1312, type: !23)
!3867 = !DILocalVariable(name: "i", scope: !3852, file: !3, line: 1312, type: !23)
!3868 = !DILocalVariable(name: "work_stack", scope: !3852, file: !3, line: 1313, type: !1593)
!3869 = !DILocalVariable(name: "phi_insertion_points", scope: !3852, file: !3, line: 1314, type: !3778)
!3870 = !DILocation(line: 0, scope: !3852)
!3871 = !DILocation(line: 1311, column: 3, scope: !3852)
!3872 = !DILocation(line: 1312, column: 3, scope: !3852)
!3873 = !DILocation(line: 1313, column: 3, scope: !3852)
!3874 = !DILocation(line: 1316, column: 16, scope: !3852)
!3875 = !DILocation(line: 1316, column: 14, scope: !3852)
!3876 = !DILocation(line: 1317, column: 26, scope: !3852)
!3877 = !DILocation(line: 1323, column: 3, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 1323, column: 3)
!3879 = !DILocation(line: 1323, column: 3, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3878, file: !3, line: 1323, column: 3)
!3881 = !DILocation(line: 1331, column: 3, scope: !3852)
!3882 = !DILocation(line: 1324, column: 5, scope: !3880)
!3883 = distinct !{!3883, !3877, !3884}
!3884 = !DILocation(line: 1324, column: 5, scope: !3878)
!3885 = !DILocation(line: 1331, column: 10, scope: !3852)
!3886 = !DILocation(line: 1331, column: 39, scope: !3852)
!3887 = !DILocation(line: 1333, column: 18, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 1332, column: 5)
!3889 = !DILocation(line: 1333, column: 16, scope: !3888)
!3890 = !DILocation(line: 1340, column: 7, scope: !3888)
!3891 = !DILocation(line: 1342, column: 7, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3888, file: !3, line: 1342, column: 7)
!3893 = !DILocation(line: 1342, column: 7, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 1342, column: 7)
!3895 = distinct !{!3895, !3881, !3896}
!3896 = !DILocation(line: 1351, column: 5, scope: !3852)
!3897 = !DILocation(line: 1348, column: 4, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 1344, column: 2)
!3899 = !DILocation(line: 1349, column: 42, scope: !3898)
!3900 = !DILocation(line: 1349, column: 4, scope: !3898)
!3901 = distinct !{!3901, !3891, !3902}
!3902 = !DILocation(line: 1350, column: 2, scope: !3892)
!3903 = !DILocation(line: 1353, column: 3, scope: !3852)
!3904 = !DILocation(line: 1356, column: 1, scope: !3852)
!3905 = !DILocation(line: 1355, column: 3, scope: !3852)
!3906 = distinct !DISubprogram(name: "VEC_int_heap_alloc", scope: !1595, file: !1595, line: 32, type: !3907, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3909)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!1593, !6}
!3909 = !{!3910}
!3910 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3906, file: !1595, line: 32, type: !6)
!3911 = !DILocation(line: 0, scope: !3906)
!3912 = !DILocation(line: 32, column: 1, scope: !3906)
!3913 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !228, file: !228, line: 224, type: !3914, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3920)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{null, !3916, !3917, !23, !2946}
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !8, line: 48, baseType: !3918)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!3920 = !{!3921, !3922, !3923, !3924}
!3921 = !DILocalVariable(name: "bi", arg: 1, scope: !3913, file: !228, line: 224, type: !3916)
!3922 = !DILocalVariable(name: "map", arg: 2, scope: !3913, file: !228, line: 224, type: !3917)
!3923 = !DILocalVariable(name: "start_bit", arg: 3, scope: !3913, file: !228, line: 225, type: !23)
!3924 = !DILocalVariable(name: "bit_no", arg: 4, scope: !3913, file: !228, line: 225, type: !2946)
!3925 = !DILocation(line: 0, scope: !3913)
!3926 = !DILocation(line: 227, column: 19, scope: !3913)
!3927 = !DILocation(line: 227, column: 12, scope: !3913)
!3928 = !DILocation(line: 228, column: 7, scope: !3913)
!3929 = !DILocation(line: 228, column: 12, scope: !3913)
!3930 = !DILocation(line: 0, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3932, file: !228, line: 233, column: 11)
!3932 = distinct !DILexicalBlock(scope: !3913, file: !228, line: 232, column: 5)
!3933 = !DILocation(line: 231, column: 3, scope: !3913)
!3934 = !DILocation(line: 233, column: 12, scope: !3931)
!3935 = !DILocation(line: 233, column: 11, scope: !3932)
!3936 = !DILocation(line: 235, column: 13, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3931, file: !228, line: 234, column: 2)
!3938 = !DILocation(line: 236, column: 4, scope: !3937)
!3939 = !DILocation(line: 239, column: 11, scope: !3932)
!3940 = distinct !{!3940, !3933, !3941}
!3941 = !DILocation(line: 242, column: 5, scope: !3913)
!3942 = !DILocation(line: 245, column: 11, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3913, file: !228, line: 245, column: 7)
!3944 = !DILocation(line: 245, column: 17, scope: !3943)
!3945 = !DILocation(line: 245, column: 22, scope: !3943)
!3946 = !DILocation(line: 245, column: 7, scope: !3913)
!3947 = !DILocation(line: 246, column: 27, scope: !3943)
!3948 = !DILocation(line: 246, column: 32, scope: !3943)
!3949 = !DILocation(line: 246, column: 5, scope: !3943)
!3950 = !DILocation(line: 249, column: 7, scope: !3913)
!3951 = !DILocation(line: 249, column: 15, scope: !3913)
!3952 = !DILocation(line: 250, column: 14, scope: !3913)
!3953 = !DILocation(line: 251, column: 7, scope: !3913)
!3954 = !DILocation(line: 251, column: 12, scope: !3913)
!3955 = !DILocation(line: 257, column: 16, scope: !3913)
!3956 = !DILocation(line: 257, column: 13, scope: !3913)
!3957 = !DILocation(line: 259, column: 11, scope: !3913)
!3958 = !DILocation(line: 260, column: 1, scope: !3913)
!3959 = distinct !DISubprogram(name: "bmp_iter_set", scope: !228, file: !228, line: 393, type: !3960, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !3962)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!404, !3916, !2946}
!3962 = !{!3963, !3964, !3965}
!3963 = !DILocalVariable(name: "bi", arg: 1, scope: !3959, file: !228, line: 393, type: !3916)
!3964 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3959, file: !228, line: 393, type: !2946)
!3965 = !DILabel(scope: !3966, name: "next_bit", file: !228, line: 398)
!3966 = distinct !DILexicalBlock(scope: !3967, file: !228, line: 397, column: 5)
!3967 = distinct !DILexicalBlock(scope: !3959, file: !228, line: 396, column: 7)
!3968 = !DILocation(line: 0, scope: !3959)
!3969 = !DILocation(line: 396, column: 11, scope: !3967)
!3970 = !DILocation(line: 396, column: 7, scope: !3967)
!3971 = !DILocation(line: 396, column: 7, scope: !3959)
!3972 = !DILocation(line: 419, column: 15, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3974, file: !228, line: 418, column: 2)
!3974 = distinct !DILexicalBlock(scope: !3959, file: !228, line: 415, column: 5)
!3975 = !DILocation(line: 399, column: 7, scope: !3966)
!3976 = !DILocation(line: 398, column: 5, scope: !3966)
!3977 = !DILocation(line: 399, column: 20, scope: !3966)
!3978 = !DILocation(line: 399, column: 25, scope: !3966)
!3979 = !DILocation(line: 399, column: 14, scope: !3966)
!3980 = !DILocation(line: 401, column: 13, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3966, file: !228, line: 400, column: 2)
!3982 = !DILocation(line: 402, column: 12, scope: !3981)
!3983 = distinct !{!3983, !3975, !3984}
!3984 = !DILocation(line: 403, column: 2, scope: !3966)
!3985 = !DILocation(line: 410, column: 15, scope: !3959)
!3986 = !DILocation(line: 410, column: 42, scope: !3959)
!3987 = !DILocation(line: 411, column: 26, scope: !3959)
!3988 = !DILocation(line: 410, column: 11, scope: !3959)
!3989 = !DILocation(line: 412, column: 7, scope: !3959)
!3990 = !DILocation(line: 412, column: 14, scope: !3959)
!3991 = !DILocation(line: 0, scope: !3974)
!3992 = !DILocation(line: 414, column: 3, scope: !3959)
!3993 = !DILocation(line: 417, column: 7, scope: !3974)
!3994 = !DILocation(line: 417, column: 18, scope: !3974)
!3995 = !DILocation(line: 417, column: 26, scope: !3974)
!3996 = !DILocation(line: 419, column: 13, scope: !3973)
!3997 = !DILocation(line: 420, column: 8, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3973, file: !228, line: 420, column: 8)
!3999 = !DILocation(line: 420, column: 8, scope: !3973)
!4000 = !DILocation(line: 422, column: 12, scope: !3973)
!4001 = !DILocation(line: 423, column: 15, scope: !3973)
!4002 = distinct !{!4002, !3993, !4003}
!4003 = !DILocation(line: 424, column: 2, scope: !3974)
!4004 = !DILocation(line: 427, column: 28, scope: !3974)
!4005 = !DILocation(line: 427, column: 16, scope: !3974)
!4006 = !DILocation(line: 428, column: 12, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3974, file: !228, line: 428, column: 11)
!4008 = !DILocation(line: 428, column: 11, scope: !3974)
!4009 = !DILocation(line: 430, column: 27, scope: !3974)
!4010 = !DILocation(line: 430, column: 32, scope: !3974)
!4011 = !DILocation(line: 430, column: 15, scope: !3974)
!4012 = !DILocation(line: 431, column: 19, scope: !3974)
!4013 = distinct !{!4013, !3992, !4014}
!4014 = !DILocation(line: 432, column: 5, scope: !3959)
!4015 = !DILocation(line: 433, column: 1, scope: !3959)
!4016 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !1595, file: !1595, line: 31, type: !4017, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !4020)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!1578, !4019, !6}
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!4020 = !{!4021, !4022, !4023}
!4021 = !DILocalVariable(name: "vec_", arg: 1, scope: !4016, file: !1595, line: 31, type: !4019)
!4022 = !DILocalVariable(name: "obj_", arg: 2, scope: !4016, file: !1595, line: 31, type: !6)
!4023 = !DILocalVariable(name: "slot_", scope: !4016, file: !1595, line: 31, type: !1578)
!4024 = !DILocation(line: 0, scope: !4016)
!4025 = !DILocation(line: 31, column: 1, scope: !4016)
!4026 = distinct !DISubprogram(name: "bmp_iter_next", scope: !228, file: !228, line: 382, type: !4027, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !4029)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{null, !3916, !2946}
!4029 = !{!4030, !4031}
!4030 = !DILocalVariable(name: "bi", arg: 1, scope: !4026, file: !228, line: 382, type: !3916)
!4031 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4026, file: !228, line: 382, type: !2946)
!4032 = !DILocation(line: 0, scope: !4026)
!4033 = !DILocation(line: 384, column: 7, scope: !4026)
!4034 = !DILocation(line: 384, column: 12, scope: !4026)
!4035 = !DILocation(line: 385, column: 11, scope: !4026)
!4036 = !DILocation(line: 386, column: 1, scope: !4026)
!4037 = distinct !DISubprogram(name: "VEC_int_base_length", scope: !1595, file: !1595, line: 31, type: !4038, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !4042)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!23, !4040}
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1599)
!4042 = !{!4043}
!4043 = !DILocalVariable(name: "vec_", arg: 1, scope: !4037, file: !1595, line: 31, type: !4040)
!4044 = !DILocation(line: 0, scope: !4037)
!4045 = !DILocation(line: 31, column: 1, scope: !4037)
!4046 = distinct !DISubprogram(name: "VEC_int_base_pop", scope: !1595, file: !1595, line: 31, type: !4047, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !4049)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!6, !4019}
!4049 = !{!4050, !4051}
!4050 = !DILocalVariable(name: "vec_", arg: 1, scope: !4046, file: !1595, line: 31, type: !4019)
!4051 = !DILocalVariable(name: "obj_", scope: !4046, file: !1595, line: 31, type: !6)
!4052 = !DILocation(line: 0, scope: !4046)
!4053 = !DILocation(line: 31, column: 1, scope: !4046)
!4054 = distinct !DISubprogram(name: "bmp_iter_and_compl_init", scope: !228, file: !228, line: 334, type: !4055, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !4057)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{null, !3916, !3917, !3917, !23, !2946}
!4057 = !{!4058, !4059, !4060, !4061, !4062}
!4058 = !DILocalVariable(name: "bi", arg: 1, scope: !4054, file: !228, line: 334, type: !3916)
!4059 = !DILocalVariable(name: "map1", arg: 2, scope: !4054, file: !228, line: 334, type: !3917)
!4060 = !DILocalVariable(name: "map2", arg: 3, scope: !4054, file: !228, line: 334, type: !3917)
!4061 = !DILocalVariable(name: "start_bit", arg: 4, scope: !4054, file: !228, line: 335, type: !23)
!4062 = !DILocalVariable(name: "bit_no", arg: 5, scope: !4054, file: !228, line: 335, type: !2946)
!4063 = !DILocation(line: 0, scope: !4054)
!4064 = !DILocation(line: 337, column: 20, scope: !4054)
!4065 = !DILocation(line: 337, column: 12, scope: !4054)
!4066 = !DILocation(line: 338, column: 20, scope: !4054)
!4067 = !DILocation(line: 338, column: 7, scope: !4054)
!4068 = !DILocation(line: 338, column: 12, scope: !4054)
!4069 = !DILocation(line: 0, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4071, file: !228, line: 343, column: 11)
!4071 = distinct !DILexicalBlock(scope: !4054, file: !228, line: 342, column: 5)
!4072 = !DILocation(line: 341, column: 3, scope: !4054)
!4073 = !DILocation(line: 343, column: 12, scope: !4070)
!4074 = !DILocation(line: 343, column: 11, scope: !4071)
!4075 = !DILocation(line: 345, column: 13, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4070, file: !228, line: 344, column: 2)
!4077 = !DILocation(line: 346, column: 4, scope: !4076)
!4078 = !DILocation(line: 349, column: 11, scope: !4071)
!4079 = distinct !{!4079, !4072, !4080}
!4080 = !DILocation(line: 352, column: 5, scope: !4054)
!4081 = !DILocation(line: 355, column: 26, scope: !4054)
!4082 = !DILocation(line: 355, column: 3, scope: !4054)
!4083 = !DILocation(line: 355, column: 14, scope: !4054)
!4084 = !DILocation(line: 355, column: 10, scope: !4054)
!4085 = !DILocation(line: 355, column: 19, scope: !4054)
!4086 = !DILocation(line: 355, column: 32, scope: !4054)
!4087 = !DILocation(line: 355, column: 49, scope: !4054)
!4088 = !DILocation(line: 355, column: 37, scope: !4054)
!4089 = !DILocation(line: 356, column: 26, scope: !4054)
!4090 = !DILocation(line: 356, column: 14, scope: !4054)
!4091 = distinct !{!4091, !4082, !4089}
!4092 = !DILocation(line: 360, column: 17, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4054, file: !228, line: 360, column: 7)
!4094 = !DILocation(line: 360, column: 22, scope: !4093)
!4095 = !DILocation(line: 360, column: 7, scope: !4054)
!4096 = !DILocation(line: 361, column: 27, scope: !4093)
!4097 = !DILocation(line: 361, column: 32, scope: !4093)
!4098 = !DILocation(line: 361, column: 5, scope: !4093)
!4099 = !DILocation(line: 363, column: 7, scope: !4054)
!4100 = !DILocation(line: 363, column: 15, scope: !4054)
!4101 = !DILocation(line: 364, column: 14, scope: !4054)
!4102 = !DILocation(line: 364, column: 7, scope: !4054)
!4103 = !DILocation(line: 364, column: 12, scope: !4054)
!4104 = !DILocation(line: 365, column: 7, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4054, file: !228, line: 365, column: 7)
!4106 = !DILocation(line: 365, column: 16, scope: !4105)
!4107 = !DILocation(line: 365, column: 29, scope: !4105)
!4108 = !DILocation(line: 365, column: 47, scope: !4105)
!4109 = !DILocation(line: 365, column: 34, scope: !4105)
!4110 = !DILocation(line: 365, column: 7, scope: !4054)
!4111 = !DILocation(line: 366, column: 18, scope: !4105)
!4112 = !DILocation(line: 366, column: 17, scope: !4105)
!4113 = !DILocation(line: 366, column: 14, scope: !4105)
!4114 = !DILocation(line: 366, column: 5, scope: !4105)
!4115 = !DILocation(line: 367, column: 12, scope: !4054)
!4116 = !DILocation(line: 373, column: 16, scope: !4054)
!4117 = !DILocation(line: 373, column: 13, scope: !4054)
!4118 = !DILocation(line: 375, column: 11, scope: !4054)
!4119 = !DILocation(line: 376, column: 1, scope: !4054)
!4120 = distinct !DISubprogram(name: "bmp_iter_and_compl", scope: !228, file: !228, line: 507, type: !3960, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !4121)
!4121 = !{!4122, !4123, !4124}
!4122 = !DILocalVariable(name: "bi", arg: 1, scope: !4120, file: !228, line: 507, type: !3916)
!4123 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4120, file: !228, line: 507, type: !2946)
!4124 = !DILabel(scope: !4125, name: "next_bit", file: !228, line: 512)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !228, line: 511, column: 5)
!4126 = distinct !DILexicalBlock(scope: !4120, file: !228, line: 510, column: 7)
!4127 = !DILocation(line: 0, scope: !4120)
!4128 = !DILocation(line: 510, column: 11, scope: !4126)
!4129 = !DILocation(line: 510, column: 7, scope: !4126)
!4130 = !DILocation(line: 510, column: 7, scope: !4120)
!4131 = !DILocation(line: 536, column: 12, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4133, file: !228, line: 536, column: 8)
!4133 = distinct !DILexicalBlock(scope: !4134, file: !228, line: 532, column: 2)
!4134 = distinct !DILexicalBlock(scope: !4120, file: !228, line: 529, column: 5)
!4135 = !DILocation(line: 513, column: 7, scope: !4125)
!4136 = !DILocation(line: 512, column: 5, scope: !4125)
!4137 = !DILocation(line: 513, column: 20, scope: !4125)
!4138 = !DILocation(line: 513, column: 25, scope: !4125)
!4139 = !DILocation(line: 513, column: 14, scope: !4125)
!4140 = !DILocation(line: 515, column: 13, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4125, file: !228, line: 514, column: 2)
!4142 = !DILocation(line: 516, column: 12, scope: !4141)
!4143 = distinct !{!4143, !4135, !4144}
!4144 = !DILocation(line: 517, column: 2, scope: !4125)
!4145 = !DILocation(line: 524, column: 15, scope: !4120)
!4146 = !DILocation(line: 524, column: 42, scope: !4120)
!4147 = !DILocation(line: 525, column: 26, scope: !4120)
!4148 = !DILocation(line: 524, column: 11, scope: !4120)
!4149 = !DILocation(line: 526, column: 7, scope: !4120)
!4150 = !DILocation(line: 526, column: 14, scope: !4120)
!4151 = !DILocation(line: 0, scope: !4134)
!4152 = !DILocation(line: 0, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4133, file: !228, line: 534, column: 8)
!4154 = !DILocation(line: 528, column: 3, scope: !4120)
!4155 = !DILocation(line: 531, column: 7, scope: !4134)
!4156 = !DILocation(line: 531, column: 18, scope: !4134)
!4157 = !DILocation(line: 531, column: 26, scope: !4134)
!4158 = !DILocation(line: 533, column: 15, scope: !4133)
!4159 = !DILocation(line: 533, column: 13, scope: !4133)
!4160 = !DILocation(line: 534, column: 12, scope: !4153)
!4161 = !DILocation(line: 534, column: 8, scope: !4153)
!4162 = !DILocation(line: 534, column: 17, scope: !4153)
!4163 = !DILocation(line: 534, column: 30, scope: !4153)
!4164 = !DILocation(line: 534, column: 48, scope: !4153)
!4165 = !DILocation(line: 534, column: 35, scope: !4153)
!4166 = !DILocation(line: 534, column: 8, scope: !4133)
!4167 = !DILocation(line: 535, column: 19, scope: !4153)
!4168 = !DILocation(line: 535, column: 18, scope: !4153)
!4169 = !DILocation(line: 535, column: 15, scope: !4153)
!4170 = !DILocation(line: 535, column: 6, scope: !4153)
!4171 = !DILocation(line: 536, column: 8, scope: !4132)
!4172 = !DILocation(line: 536, column: 8, scope: !4133)
!4173 = !DILocation(line: 538, column: 12, scope: !4133)
!4174 = !DILocation(line: 539, column: 15, scope: !4133)
!4175 = distinct !{!4175, !4155, !4176}
!4176 = !DILocation(line: 540, column: 2, scope: !4134)
!4177 = !DILocation(line: 543, column: 28, scope: !4134)
!4178 = !DILocation(line: 543, column: 16, scope: !4134)
!4179 = !DILocation(line: 544, column: 12, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4134, file: !228, line: 544, column: 11)
!4181 = !DILocation(line: 544, column: 11, scope: !4134)
!4182 = !DILocation(line: 548, column: 18, scope: !4134)
!4183 = !DILocation(line: 548, column: 7, scope: !4134)
!4184 = !DILocation(line: 548, column: 14, scope: !4134)
!4185 = !DILocation(line: 548, column: 23, scope: !4134)
!4186 = !DILocation(line: 548, column: 36, scope: !4134)
!4187 = !DILocation(line: 548, column: 53, scope: !4134)
!4188 = !DILocation(line: 548, column: 41, scope: !4134)
!4189 = !DILocation(line: 549, column: 23, scope: !4134)
!4190 = !DILocation(line: 549, column: 11, scope: !4134)
!4191 = distinct !{!4191, !4183, !4189}
!4192 = !DILocation(line: 551, column: 27, scope: !4134)
!4193 = !DILocation(line: 551, column: 32, scope: !4134)
!4194 = !DILocation(line: 551, column: 15, scope: !4134)
!4195 = !DILocation(line: 552, column: 19, scope: !4134)
!4196 = distinct !{!4196, !4154, !4197}
!4197 = !DILocation(line: 553, column: 5, scope: !4120)
!4198 = !DILocation(line: 554, column: 1, scope: !4120)
!4199 = distinct !DISubprogram(name: "VEC_int_heap_safe_push", scope: !1595, file: !1595, line: 32, type: !4200, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !4204)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!1578, !4202, !4203}
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!4204 = !{!4205, !4206}
!4205 = !DILocalVariable(name: "vec_", arg: 1, scope: !4199, file: !1595, line: 32, type: !4202)
!4206 = !DILocalVariable(name: "obj_", arg: 2, scope: !4199, file: !1595, line: 32, type: !4203)
!4207 = !DILocation(line: 0, scope: !4199)
!4208 = !DILocation(line: 32, column: 1, scope: !4199)
!4209 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !1595, file: !1595, line: 32, type: !4210, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !4212)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{null, !4202}
!4212 = !{!4213}
!4213 = !DILocalVariable(name: "vec_", arg: 1, scope: !4209, file: !1595, line: 32, type: !4202)
!4214 = !DILocation(line: 0, scope: !4209)
!4215 = !DILocation(line: 32, column: 1, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4209, file: !1595, line: 32, column: 1)
!4217 = !DILocation(line: 32, column: 1, scope: !4209)
!4218 = distinct !DISubprogram(name: "ei_end_p", scope: !11, file: !11, line: 721, type: !2419, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !4219)
!4219 = !{!4220}
!4220 = !DILocalVariable(name: "i", arg: 1, scope: !4218, file: !11, line: 721, type: !1580)
!4221 = !DILocation(line: 723, column: 22, scope: !4218)
!4222 = !DILocation(line: 723, column: 19, scope: !4218)
!4223 = !DILocation(line: 723, column: 10, scope: !4218)
!4224 = !DILocation(line: 723, column: 3, scope: !4218)
!4225 = distinct !DISubprogram(name: "ei_container", scope: !11, file: !11, line: 685, type: !4226, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !4228)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!14, !1580}
!4228 = !{!4229}
!4229 = !DILocalVariable(name: "i", arg: 1, scope: !4225, file: !11, line: 685, type: !1580)
!4230 = !DILocation(line: 687, column: 3, scope: !4225)
!4231 = !DILocation(line: 688, column: 10, scope: !4225)
!4232 = !DILocation(line: 688, column: 3, scope: !4225)
!4233 = distinct !DISubprogram(name: "ei_safe_edge", scope: !11, file: !11, line: 761, type: !2378, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !4234)
!4234 = !{!4235}
!4235 = !DILocalVariable(name: "i", arg: 1, scope: !4233, file: !11, line: 761, type: !1580)
!4236 = !DILocation(line: 763, column: 11, scope: !4233)
!4237 = !DILocation(line: 763, column: 10, scope: !4233)
!4238 = !DILocation(line: 763, column: 26, scope: !4233)
!4239 = !DILocation(line: 763, column: 3, scope: !4233)
!4240 = distinct !DISubprogram(name: "VEC_int_heap_reserve", scope: !1595, file: !1595, line: 32, type: !4241, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !4243)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!6, !4202, !6}
!4243 = !{!4244, !4245, !4246}
!4244 = !DILocalVariable(name: "vec_", arg: 1, scope: !4240, file: !1595, line: 32, type: !4202)
!4245 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4240, file: !1595, line: 32, type: !6)
!4246 = !DILocalVariable(name: "extend", scope: !4240, file: !1595, line: 32, type: !6)
!4247 = !DILocation(line: 0, scope: !4240)
!4248 = !DILocation(line: 32, column: 1, scope: !4240)
!4249 = !DILocation(line: 32, column: 1, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4240, file: !1595, line: 32, column: 1)
!4251 = distinct !DISubprogram(name: "VEC_int_base_space", scope: !1595, file: !1595, line: 31, type: !4252, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1431, retainedNodes: !4254)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!6, !4019, !6}
!4254 = !{!4255, !4256}
!4255 = !DILocalVariable(name: "vec_", arg: 1, scope: !4251, file: !1595, line: 31, type: !4019)
!4256 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4251, file: !1595, line: 31, type: !6)
!4257 = !DILocation(line: 0, scope: !4251)
!4258 = !DILocation(line: 31, column: 1, scope: !4251)
