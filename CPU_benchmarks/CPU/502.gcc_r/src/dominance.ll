; ModuleID = 'dominance.bc'
source_filename = "dominance.c"
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
%struct.et_node = type { i8*, i32, i32, %struct.et_node*, %struct.et_node*, %struct.et_node*, %struct.et_node*, %struct.et_occ*, %struct.et_occ* }
%struct.et_occ = type opaque
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
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.dom_info = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.basic_block_def**, i32, i32, %struct.bitmap_head_def* }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.VEC_basic_block_heap = type { %struct.VEC_basic_block_base }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.pointer_map_t = type opaque
%struct.graph = type { i32, %struct.vertex*, %struct.htab* }
%struct.vertex = type { %struct.graph_edge*, %struct.graph_edge*, i32, i32, i8* }
%struct.graph_edge = type { i32, i32, %struct.graph_edge*, %struct.graph_edge*, i8* }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@timevar_enable = external dso_local local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [12 x i8] c"dominance.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"dominator of %d status unknown\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"dominator of %d should be %d, not %d\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"%i %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1477 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1490, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1491, metadata !DIExpression()), !dbg !1492
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1493
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1494
  ret i32 %call, !dbg !1495
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1496 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1500
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1501
  ret i32 %call, !dbg !1502
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1503 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1558, metadata !DIExpression()), !dbg !1559
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1560
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1560
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1560
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1560
  %cmp = icmp uge i8* %0, %1, !dbg !1560
  %conv1 = zext i1 %cmp to i64, !dbg !1560
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1560
  %tobool = icmp eq i64 %expval, 0, !dbg !1560
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1560

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1560
  br label %cond.end, !dbg !1560

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1560
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1560
  %2 = load i8, i8* %0, align 1, !dbg !1560
  %conv3 = zext i8 %2 to i32, !dbg !1560
  br label %cond.end, !dbg !1560

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1560
  ret i32 %cond, !dbg !1561
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1562 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1564, metadata !DIExpression()), !dbg !1565
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1566
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1566
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1566
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1566
  %cmp = icmp uge i8* %0, %1, !dbg !1566
  %conv1 = zext i1 %cmp to i64, !dbg !1566
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1566
  %tobool = icmp eq i64 %expval, 0, !dbg !1566
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1566

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1566
  br label %cond.end, !dbg !1566

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1566
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1566
  %2 = load i8, i8* %0, align 1, !dbg !1566
  %conv3 = zext i8 %2 to i32, !dbg !1566
  br label %cond.end, !dbg !1566

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1566
  ret i32 %cond, !dbg !1567
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1568 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1569
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1569
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1569
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1569
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1569
  %cmp = icmp uge i8* %1, %2, !dbg !1569
  %conv1 = zext i1 %cmp to i64, !dbg !1569
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1569
  %tobool = icmp eq i64 %expval, 0, !dbg !1569
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1569

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1569
  br label %cond.end, !dbg !1569

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1569
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1569
  %3 = load i8, i8* %1, align 1, !dbg !1569
  %conv3 = zext i8 %3 to i32, !dbg !1569
  br label %cond.end, !dbg !1569

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1569
  ret i32 %cond, !dbg !1570
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1571 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1575, metadata !DIExpression()), !dbg !1576
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1577
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1578
  ret i32 %call, !dbg !1579
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1580 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1584, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1585, metadata !DIExpression()), !dbg !1586
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1587
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1587
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1587
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1587
  %cmp = icmp uge i8* %0, %1, !dbg !1587
  %conv1 = zext i1 %cmp to i64, !dbg !1587
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1587
  %tobool = icmp eq i64 %expval, 0, !dbg !1587
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1587

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1587
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1587
  br label %cond.end, !dbg !1587

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1587
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1587
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1587
  store i8 %conv2, i8* %0, align 1, !dbg !1587
  %conv6 = and i32 %__c, 255, !dbg !1587
  br label %cond.end, !dbg !1587

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1587
  ret i32 %cond, !dbg !1588
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1589 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1591, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1592, metadata !DIExpression()), !dbg !1593
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1594
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1594
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1594
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1594
  %cmp = icmp uge i8* %0, %1, !dbg !1594
  %conv1 = zext i1 %cmp to i64, !dbg !1594
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1594
  %tobool = icmp eq i64 %expval, 0, !dbg !1594
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1594

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1594
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1594
  br label %cond.end, !dbg !1594

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1594
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1594
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1594
  store i8 %conv2, i8* %0, align 1, !dbg !1594
  %conv6 = and i32 %__c, 255, !dbg !1594
  br label %cond.end, !dbg !1594

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1594
  ret i32 %cond, !dbg !1595
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1596 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1598, metadata !DIExpression()), !dbg !1599
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1600
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1600
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1600
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1600
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1600
  %cmp = icmp uge i8* %1, %2, !dbg !1600
  %conv1 = zext i1 %cmp to i64, !dbg !1600
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1600
  %tobool = icmp eq i64 %expval, 0, !dbg !1600
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1600

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1600
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1600
  br label %cond.end, !dbg !1600

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1600
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1600
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1600
  store i8 %conv4, i8* %1, align 1, !dbg !1600
  %conv6 = and i32 %__c, 255, !dbg !1600
  br label %cond.end, !dbg !1600

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1600
  ret i32 %cond, !dbg !1601
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1602 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1608, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1609, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1610, metadata !DIExpression()), !dbg !1611
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1612
  ret i64 %call, !dbg !1613
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1614 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1616, metadata !DIExpression()), !dbg !1617
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1618
  %0 = load i32, i32* %_flags, align 8, !dbg !1618
  %and = lshr i32 %0, 4, !dbg !1618
  %and.lobit = and i32 %and, 1, !dbg !1618
  ret i32 %and.lobit, !dbg !1619
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1620 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1622, metadata !DIExpression()), !dbg !1623
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1624
  %0 = load i32, i32* %_flags, align 8, !dbg !1624
  %and = lshr i32 %0, 5, !dbg !1624
  %and.lobit = and i32 %and, 1, !dbg !1624
  ret i32 %and.lobit, !dbg !1625
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1626 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1629, metadata !DIExpression()), !dbg !1630
  %__c.off = add i32 %__c, 128, !dbg !1631
  %0 = icmp ult i32 %__c.off, 384, !dbg !1631
  br i1 %0, label %cond.true, label %cond.end, !dbg !1631

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1632
  %1 = load i32*, i32** %call, align 8, !dbg !1633
  %idxprom = sext i32 %__c to i64, !dbg !1634
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1634
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1634
  br label %cond.end, !dbg !1635

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1635
  ret i32 %cond, !dbg !1636
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1637 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1639, metadata !DIExpression()), !dbg !1640
  %__c.off = add i32 %__c, 128, !dbg !1641
  %0 = icmp ult i32 %__c.off, 384, !dbg !1641
  br i1 %0, label %cond.true, label %cond.end, !dbg !1641

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1642
  %1 = load i32*, i32** %call, align 8, !dbg !1643
  %idxprom = sext i32 %__c to i64, !dbg !1644
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1644
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1644
  br label %cond.end, !dbg !1645

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1645
  ret i32 %cond, !dbg !1646
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1647 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1652, metadata !DIExpression()), !dbg !1653
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1654
  %conv = trunc i64 %call to i32, !dbg !1655
  ret i32 %conv, !dbg !1656
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1657 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1661, metadata !DIExpression()), !dbg !1662
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1663
  ret i64 %call, !dbg !1664
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1665 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1670, metadata !DIExpression()), !dbg !1671
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1672
  ret i64 %call, !dbg !1673
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1674 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1680, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1681, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1682, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1683, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1684, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 0, metadata !1685, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1686, metadata !DIExpression()), !dbg !1690
  br label %while.cond, !dbg !1691

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1692
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1690
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1686, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1685, metadata !DIExpression()), !dbg !1690
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1693
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1691

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1694
  %div = lshr i64 %add, 1, !dbg !1696
  call void @llvm.dbg.value(metadata i64 %div, metadata !1687, metadata !DIExpression()), !dbg !1690
  %mul = mul i64 %div, %__size, !dbg !1697
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1698
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1688, metadata !DIExpression()), !dbg !1690
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1699
  call void @llvm.dbg.value(metadata i32 %call, metadata !1689, metadata !DIExpression()), !dbg !1690
  %cmp1 = icmp slt i32 %call, 0, !dbg !1700
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1702

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1703
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1705

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1685, metadata !DIExpression()), !dbg !1690
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1690
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1690
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1686, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1685, metadata !DIExpression()), !dbg !1690
  br label %while.cond, !dbg !1691, !llvm.loop !1707

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1690
  ret i8* %retval.0, !dbg !1709
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1710 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1716, metadata !DIExpression()), !dbg !1717
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1718
  ret double %call, !dbg !1719
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1720 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1729, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1730, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i32 %base, metadata !1731, metadata !DIExpression()), !dbg !1732
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1733
  ret i64 %call, !dbg !1734
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1735 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1741, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1742, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i32 %base, metadata !1743, metadata !DIExpression()), !dbg !1744
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1745
  ret i64 %call, !dbg !1746
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1747 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1758, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1759, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i32 %base, metadata !1760, metadata !DIExpression()), !dbg !1761
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1762
  ret i64 %call, !dbg !1763
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1764 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1768, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1769, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i32 %base, metadata !1770, metadata !DIExpression()), !dbg !1771
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1772
  ret i64 %call, !dbg !1773
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1774 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1814, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1815, metadata !DIExpression()), !dbg !1816
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1817
  ret i32 %call, !dbg !1818
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1819 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1821, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1822, metadata !DIExpression()), !dbg !1823
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1824
  ret i32 %call, !dbg !1825
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1826 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1830, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1831, metadata !DIExpression()), !dbg !1832
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1833
  ret i32 %call, !dbg !1834
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1835 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1839, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1840, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1841, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1842, metadata !DIExpression()), !dbg !1843
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1844
  ret i32 %call, !dbg !1845
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1846 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1850, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1851, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1852, metadata !DIExpression()), !dbg !1853
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1852, metadata !DIExpression(DW_OP_deref)), !dbg !1853
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1854
  ret i32 %call, !dbg !1855
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1856 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1860, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1861, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1862, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1863, metadata !DIExpression()), !dbg !1864
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1863, metadata !DIExpression(DW_OP_deref)), !dbg !1864
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1865
  ret i32 %call, !dbg !1866
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1867 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1891, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1892, metadata !DIExpression()), !dbg !1893
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1894
  ret i32 %call, !dbg !1895
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1896 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1898, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1899, metadata !DIExpression()), !dbg !1900
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1901
  ret i32 %call, !dbg !1902
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1903 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1907, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1908, metadata !DIExpression()), !dbg !1909
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !1910
  ret i32 %call, !dbg !1911
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1912 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1916, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1917, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1918, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1919, metadata !DIExpression()), !dbg !1920
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !1921
  ret i32 %call, !dbg !1922
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @calculate_dominance_info(i32 %dir) local_unnamed_addr #4 !dbg !1923 {
entry:
  %di = alloca %struct.dom_info, align 8
  call void @llvm.dbg.value(metadata i32 %dir, metadata !1927, metadata !DIExpression()), !dbg !1954
  %0 = bitcast %struct.dom_info* %di to i8*, !dbg !1955
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %0) #7, !dbg !1955
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !1956
  call void @llvm.dbg.value(metadata i32 %call, metadata !1946, metadata !DIExpression()), !dbg !1954
  %cmp = icmp eq i32 %dir, 2, !dbg !1957
  %conv = zext i1 %cmp to i8, !dbg !1958
  call void @llvm.dbg.value(metadata i8 %conv, metadata !1947, metadata !DIExpression()), !dbg !1954
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1959
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !1959
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !1959
  %idxprom = zext i32 %call to i64, !dbg !1959
  %arrayidx = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 8, i64 %idxprom, !dbg !1959
  %3 = load i32, i32* %arrayidx, align 4, !dbg !1959
  %cmp1 = icmp eq i32 %3, 2, !dbg !1961
  br i1 %cmp1, label %cleanup, label %do.body, !dbg !1962

do.body:                                          ; preds = %entry
  %4 = load i8, i8* @timevar_enable, align 1, !dbg !1963
  %tobool = icmp eq i8 %4, 0, !dbg !1963
  br i1 %tobool, label %do.end, label %if.then3, !dbg !1966

if.then3:                                         ; preds = %do.body
  tail call void @timevar_push_1(i32 112) #6, !dbg !1963
  br label %do.end, !dbg !1963

do.end:                                           ; preds = %do.body, %if.then3
  %call5 = tail call zeroext i8 @dom_info_available_p(i32 %dir) #8, !dbg !1967
  %tobool6 = icmp eq i8 %call5, 0, !dbg !1967
  br i1 %tobool6, label %if.then7, label %if.end64, !dbg !1968

if.then7:                                         ; preds = %do.end
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1969
  %cfg9 = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !1969
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg9, align 8, !dbg !1969
  %arrayidx11 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 9, i64 %idxprom, !dbg !1969
  %7 = load i32, i32* %arrayidx11, align 4, !dbg !1969
  %tobool12 = icmp eq i32 %7, 0, !dbg !1969
  br i1 %tobool12, label %cond.end, label %cond.true, !dbg !1969

cond.true:                                        ; preds = %if.then7
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 646, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1969
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1970
  %cfg15.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !1972
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg15.phi.trans.insert, align 8, !dbg !1970
  br label %cond.end, !dbg !1969

cond.end:                                         ; preds = %if.then7, %cond.true
  %8 = phi %struct.control_flow_graph* [ %6, %if.then7 ], [ %.pre1, %cond.true ], !dbg !1970
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 0, !dbg !1970
  br label %for.cond, !dbg !1970

for.cond:                                         ; preds = %for.body, %cond.end
  %b.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %cond.end ], [ %next_bb, %for.body ]
  %b.0 = load %struct.basic_block_def*, %struct.basic_block_def** %b.0.in, align 8, !dbg !1972
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %b.0, metadata !1945, metadata !DIExpression()), !dbg !1954
  %tobool16 = icmp eq %struct.basic_block_def* %b.0, null, !dbg !1970
  br i1 %tobool16, label %for.end, label %for.body, !dbg !1970

for.body:                                         ; preds = %for.cond
  %9 = bitcast %struct.basic_block_def* %b.0 to i8*, !dbg !1973
  %call17 = tail call %struct.et_node* @et_new_tree(i8* nonnull %9) #6, !dbg !1976
  %arrayidx19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b.0, i64 0, i32 4, i64 %idxprom, !dbg !1977
  store %struct.et_node* %call17, %struct.et_node** %arrayidx19, align 8, !dbg !1978
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b.0, i64 0, i32 6, !dbg !1979
  br label %for.cond, !dbg !1979, !llvm.loop !1980

for.end:                                          ; preds = %for.cond
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1982
  %cfg21 = getelementptr inbounds %struct.function, %struct.function* %10, i64 0, i32 1, !dbg !1982
  %11 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg21, align 8, !dbg !1982
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 3, !dbg !1982
  %12 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !1982
  %arrayidx26 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 9, i64 %idxprom, !dbg !1983
  store i32 %12, i32* %arrayidx26, align 4, !dbg !1984
  call void @llvm.dbg.value(metadata %struct.dom_info* %di, metadata !1928, metadata !DIExpression(DW_OP_deref)), !dbg !1954
  call fastcc void @init_dom_info(%struct.dom_info* nonnull %di, i32 %dir) #8, !dbg !1985
  call void @llvm.dbg.value(metadata %struct.dom_info* %di, metadata !1928, metadata !DIExpression(DW_OP_deref)), !dbg !1954
  call fastcc void @calc_dfs_tree(%struct.dom_info* nonnull %di, i8 zeroext %conv) #8, !dbg !1986
  call void @llvm.dbg.value(metadata %struct.dom_info* %di, metadata !1928, metadata !DIExpression(DW_OP_deref)), !dbg !1954
  call fastcc void @calc_idoms(%struct.dom_info* nonnull %di, i8 zeroext %conv) #8, !dbg !1987
  %13 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1988
  %cfg28 = getelementptr inbounds %struct.function, %struct.function* %13, i64 0, i32 1, !dbg !1988
  %14 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg28, align 8, !dbg !1988
  %x_entry_block_ptr29 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %14, i64 0, i32 0, !dbg !1988
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr29, align 8, !dbg !1988
  %dom37 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 5, !dbg !1989
  %dfs_order = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 9, !dbg !1989
  %dfs_to_bb = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 10, !dbg !1990
  br label %for.cond31, !dbg !1988

for.cond31:                                       ; preds = %for.inc56, %for.end
  %.pre24 = phi %struct.function* [ %13, %for.end ], [ %.pre2, %for.inc56 ]
  %16 = phi %struct.control_flow_graph* [ %14, %for.end ], [ %.pre3, %for.inc56 ], !dbg !1992
  %.pn = phi %struct.basic_block_def* [ %15, %for.end ], [ %b.1, %for.inc56 ]
  %b.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !1993
  %b.1 = load %struct.basic_block_def*, %struct.basic_block_def** %b.1.in, align 8, !dbg !1993
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %b.1, metadata !1945, metadata !DIExpression()), !dbg !1954
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %16, i64 0, i32 1, !dbg !1992
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !1992
  %cmp34 = icmp eq %struct.basic_block_def* %b.1, %17, !dbg !1992
  br i1 %cmp34, label %for.end58, label %for.body36, !dbg !1988

for.body36:                                       ; preds = %for.cond31
  %18 = load i32*, i32** %dom37, align 8, !dbg !1994
  %19 = load i32*, i32** %dfs_order, align 8, !dbg !1995
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b.1, i64 0, i32 9, !dbg !1996
  %20 = load i32, i32* %index, align 8, !dbg !1996
  %idxprom38 = sext i32 %20 to i64, !dbg !1997
  %arrayidx39 = getelementptr inbounds i32, i32* %19, i64 %idxprom38, !dbg !1997
  %21 = load i32, i32* %arrayidx39, align 4, !dbg !1997
  %idxprom40 = zext i32 %21 to i64, !dbg !1998
  %arrayidx41 = getelementptr inbounds i32, i32* %18, i64 %idxprom40, !dbg !1998
  %22 = load i32, i32* %arrayidx41, align 4, !dbg !1998
  call void @llvm.dbg.value(metadata i32 %22, metadata !1948, metadata !DIExpression()), !dbg !1989
  %23 = load %struct.basic_block_def**, %struct.basic_block_def*** %dfs_to_bb, align 8, !dbg !1999
  %idxprom42 = zext i32 %22 to i64, !dbg !2000
  %arrayidx43 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %23, i64 %idxprom42, !dbg !2000
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx43, align 8, !dbg !2000
  %tobool44 = icmp eq %struct.basic_block_def* %24, null, !dbg !2000
  br i1 %tobool44, label %for.inc56, label %if.then45, !dbg !2001

if.then45:                                        ; preds = %for.body36
  %arrayidx48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b.1, i64 0, i32 4, i64 %idxprom, !dbg !2002
  %25 = load %struct.et_node*, %struct.et_node** %arrayidx48, align 8, !dbg !2002
  %arrayidx54 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i64 0, i32 4, i64 %idxprom, !dbg !2003
  %26 = load %struct.et_node*, %struct.et_node** %arrayidx54, align 8, !dbg !2003
  call void @et_set_father(%struct.et_node* %25, %struct.et_node* %26) #6, !dbg !2004
  %.pre2.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1992
  br label %for.inc56, !dbg !2004

for.inc56:                                        ; preds = %for.body36, %if.then45
  %.pre2 = phi %struct.function* [ %.pre24, %for.body36 ], [ %.pre2.pre, %if.then45 ], !dbg !1992
  %cfg33.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre2, i64 0, i32 1, !dbg !2005
  %.pre3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg33.phi.trans.insert, align 8, !dbg !1992
  br label %for.cond31, !dbg !1992, !llvm.loop !2006

for.end58:                                        ; preds = %for.cond31
  call void @llvm.dbg.value(metadata %struct.dom_info* %di, metadata !1928, metadata !DIExpression(DW_OP_deref)), !dbg !1954
  call fastcc void @free_dom_info(%struct.dom_info* nonnull %di) #8, !dbg !2008
  %27 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2009
  %cfg60 = getelementptr inbounds %struct.function, %struct.function* %27, i64 0, i32 1, !dbg !2009
  %28 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg60, align 8, !dbg !2009
  %arrayidx63 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %28, i64 0, i32 8, i64 %idxprom, !dbg !2009
  store i32 1, i32* %arrayidx63, align 4, !dbg !2010
  br label %if.end64, !dbg !2011

if.end64:                                         ; preds = %do.end, %for.end58
  call fastcc void @compute_dom_fast_query(i32 %dir) #8, !dbg !2012
  %29 = load i8, i8* @timevar_enable, align 1, !dbg !2013
  %tobool66 = icmp eq i8 %29, 0, !dbg !2013
  br i1 %tobool66, label %cleanup, label %if.then67, !dbg !2016

if.then67:                                        ; preds = %if.end64
  call void @timevar_pop_1(i32 112) #6, !dbg !2013
  br label %cleanup, !dbg !2013

cleanup:                                          ; preds = %if.end64, %if.then67, %entry
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %0) #7, !dbg !2017
  ret void, !dbg !2017
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dom_convert_dir_to_idx(i32 %dir) unnamed_addr #4 !dbg !2018 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !2022, metadata !DIExpression()), !dbg !2023
  %dir.off = add i32 %dir, -1, !dbg !2024
  %switch = icmp ult i32 %dir.off, 2, !dbg !2024
  br i1 %switch, label %cond.end, label %cond.true, !dbg !2024

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 193, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2024
  br label %cond.end, !dbg !2024

cond.end:                                         ; preds = %entry, %cond.true
  ret i32 %dir.off, !dbg !2025
}

declare dso_local void @timevar_push_1(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @dom_info_available_p(i32 %dir) local_unnamed_addr #4 !dbg !2026 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !2030, metadata !DIExpression()), !dbg !2032
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !2033
  call void @llvm.dbg.value(metadata i32 %call, metadata !2031, metadata !DIExpression()), !dbg !2032
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2034
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2034
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2034
  %idxprom = zext i32 %call to i64, !dbg !2034
  %arrayidx = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 8, i64 %idxprom, !dbg !2034
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2034
  %cmp = icmp ne i32 %2, 0, !dbg !2035
  %conv1 = zext i1 %cmp to i8, !dbg !2034
  ret i8 %conv1, !dbg !2036
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local %struct.et_node* @et_new_tree(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @init_dom_info(%struct.dom_info* %di, i32 %dir) unnamed_addr #4 !dbg !2037 {
entry:
  call void @llvm.dbg.value(metadata %struct.dom_info* %di, metadata !2042, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 %dir, metadata !2043, metadata !DIExpression()), !dbg !2067
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2068
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2068
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2068
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 3, !dbg !2068
  %2 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2068
  call void @llvm.dbg.value(metadata i32 %2, metadata !2044, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 1, metadata !2045, metadata !DIExpression()), !dbg !2069
  %conv = zext i32 %2 to i64, !dbg !2070
  %call = tail call i8* @xcalloc(i64 %conv, i64 4) #6, !dbg !2070
  %3 = bitcast %struct.dom_info* %di to i8**, !dbg !2070
  store i8* %call, i8** %3, align 8, !dbg !2070
  call void @llvm.dbg.value(metadata i32 1, metadata !2047, metadata !DIExpression()), !dbg !2072
  %mul = shl nuw nsw i64 %conv, 2, !dbg !2073
  %call6 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2073
  %path_min7 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 2, !dbg !2073
  %4 = bitcast i32** %path_min7 to i8**, !dbg !2073
  store i8* %call6, i8** %4, align 8, !dbg !2073
  call void @llvm.dbg.value(metadata i32 0, metadata !2047, metadata !DIExpression()), !dbg !2072
  %wide.trip.count7 = zext i32 %2 to i64, !dbg !2076
  br label %for.cond, !dbg !2079

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.body ], [ 0, %entry ], !dbg !2080
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !2047, metadata !DIExpression()), !dbg !2072
  %exitcond8 = icmp eq i64 %indvars.iv5, %wide.trip.count7, !dbg !2076
  br i1 %exitcond8, label %do.body12.loopexit, label %for.body, !dbg !2079

for.body:                                         ; preds = %for.cond
  %5 = load i32*, i32** %path_min7, align 8, !dbg !2076
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %indvars.iv5, !dbg !2076
  %6 = trunc i64 %indvars.iv5 to i32, !dbg !2076
  store i32 %6, i32* %arrayidx, align 4, !dbg !2076
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !2076
  br label %for.cond, !dbg !2076, !llvm.loop !2081

do.body12.loopexit:                               ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 1, metadata !2049, metadata !DIExpression()), !dbg !2082
  %call21 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2083
  %key22 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 1, !dbg !2083
  %7 = bitcast i32** %key22 to i8**, !dbg !2083
  store i8* %call21, i8** %7, align 8, !dbg !2083
  call void @llvm.dbg.value(metadata i32 0, metadata !2049, metadata !DIExpression()), !dbg !2082
  %wide.trip.count3 = zext i32 %2 to i64, !dbg !2086
  br label %for.cond23, !dbg !2089

for.cond23:                                       ; preds = %for.body26, %do.body12.loopexit
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.body26 ], [ 0, %do.body12.loopexit ], !dbg !2090
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !2049, metadata !DIExpression()), !dbg !2082
  %exitcond4 = icmp eq i64 %indvars.iv1, %wide.trip.count3, !dbg !2086
  br i1 %exitcond4, label %do.body36.loopexit, label %for.body26, !dbg !2089

for.body26:                                       ; preds = %for.cond23
  %8 = load i32*, i32** %key22, align 8, !dbg !2086
  %arrayidx29 = getelementptr inbounds i32, i32* %8, i64 %indvars.iv1, !dbg !2086
  %9 = trunc i64 %indvars.iv1 to i32, !dbg !2086
  store i32 %9, i32* %arrayidx29, align 4, !dbg !2086
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !2086
  br label %for.cond23, !dbg !2086, !llvm.loop !2091

do.body36.loopexit:                               ; preds = %for.cond23
  call void @llvm.dbg.value(metadata i32 1, metadata !2051, metadata !DIExpression()), !dbg !2092
  %call39 = tail call i8* @xcalloc(i64 %conv, i64 4) #6, !dbg !2093
  %dom = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 5, !dbg !2093
  %10 = bitcast i32** %dom to i8**, !dbg !2093
  store i8* %call39, i8** %10, align 8, !dbg !2093
  call void @llvm.dbg.value(metadata i32 1, metadata !2053, metadata !DIExpression()), !dbg !2095
  %call45 = tail call i8* @xcalloc(i64 %conv, i64 4) #6, !dbg !2096
  %bucket = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 3, !dbg !2096
  %11 = bitcast i32** %bucket to i8**, !dbg !2096
  store i8* %call45, i8** %11, align 8, !dbg !2096
  call void @llvm.dbg.value(metadata i32 1, metadata !2055, metadata !DIExpression()), !dbg !2098
  %call51 = tail call i8* @xcalloc(i64 %conv, i64 4) #6, !dbg !2099
  %next_bucket = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 4, !dbg !2099
  %12 = bitcast i32** %next_bucket to i8**, !dbg !2099
  store i8* %call51, i8** %12, align 8, !dbg !2099
  call void @llvm.dbg.value(metadata i32 1, metadata !2057, metadata !DIExpression()), !dbg !2101
  %call57 = tail call i8* @xcalloc(i64 %conv, i64 4) #6, !dbg !2102
  %set_chain = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 6, !dbg !2102
  %13 = bitcast i32** %set_chain to i8**, !dbg !2102
  store i8* %call57, i8** %13, align 8, !dbg !2102
  call void @llvm.dbg.value(metadata i32 1, metadata !2059, metadata !DIExpression()), !dbg !2104
  %call64 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2105
  %set_size = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 7, !dbg !2105
  %14 = bitcast i32** %set_size to i8**, !dbg !2105
  store i8* %call64, i8** %14, align 8, !dbg !2105
  call void @llvm.dbg.value(metadata i32 0, metadata !2059, metadata !DIExpression()), !dbg !2104
  %wide.trip.count = zext i32 %2 to i64, !dbg !2108
  br label %for.cond65, !dbg !2111

for.cond65:                                       ; preds = %for.body68, %do.body36.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body68 ], [ 0, %do.body36.loopexit ], !dbg !2112
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2059, metadata !DIExpression()), !dbg !2104
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !2108
  br i1 %exitcond, label %do.body77, label %for.body68, !dbg !2111

for.body68:                                       ; preds = %for.cond65
  %15 = load i32*, i32** %set_size, align 8, !dbg !2108
  %arrayidx71 = getelementptr inbounds i32, i32* %15, i64 %indvars.iv, !dbg !2108
  store i32 1, i32* %arrayidx71, align 4, !dbg !2108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2108
  br label %for.cond65, !dbg !2108, !llvm.loop !2113

do.body77:                                        ; preds = %for.cond65
  call void @llvm.dbg.value(metadata i32 1, metadata !2061, metadata !DIExpression()), !dbg !2114
  %call80 = tail call i8* @xcalloc(i64 %conv, i64 4) #6, !dbg !2115
  %set_child = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 8, !dbg !2115
  %16 = bitcast i32** %set_child to i8**, !dbg !2115
  store i8* %call80, i8** %16, align 8, !dbg !2115
  call void @llvm.dbg.value(metadata i32 1, metadata !2063, metadata !DIExpression()), !dbg !2117
  %17 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2118
  %cfg86 = getelementptr inbounds %struct.function, %struct.function* %17, i64 0, i32 1, !dbg !2118
  %18 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg86, align 8, !dbg !2118
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %18, i64 0, i32 5, !dbg !2118
  %19 = load i32, i32* %x_last_basic_block, align 8, !dbg !2118
  %add = add i32 %19, 1, !dbg !2118
  %conv87 = zext i32 %add to i64, !dbg !2118
  %call88 = tail call i8* @xcalloc(i64 %conv87, i64 4) #6, !dbg !2118
  %dfs_order = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 9, !dbg !2118
  %20 = bitcast i32** %dfs_order to i8**, !dbg !2118
  store i8* %call88, i8** %20, align 8, !dbg !2118
  call void @llvm.dbg.value(metadata i32 1, metadata !2065, metadata !DIExpression()), !dbg !2120
  %call94 = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !2121
  %dfs_to_bb = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 10, !dbg !2121
  %21 = bitcast %struct.basic_block_def*** %dfs_to_bb to i8**, !dbg !2121
  store i8* %call94, i8** %21, align 8, !dbg !2121
  %dfsnum = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 11, !dbg !2123
  store i32 1, i32* %dfsnum, align 8, !dbg !2124
  %nodes = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 12, !dbg !2125
  store i32 0, i32* %nodes, align 4, !dbg !2126
  switch i32 %dir, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb97
  ], !dbg !2127

sw.bb:                                            ; preds = %do.body77
  %fake_exit_edge = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 13, !dbg !2128
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %fake_exit_edge, align 8, !dbg !2130
  br label %sw.epilog, !dbg !2131

sw.bb97:                                          ; preds = %do.body77
  %call98 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2132
  %fake_exit_edge99 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 13, !dbg !2133
  store %struct.bitmap_head_def* %call98, %struct.bitmap_head_def** %fake_exit_edge99, align 8, !dbg !2134
  br label %sw.epilog, !dbg !2135

sw.default:                                       ; preds = %do.body77
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2136
  br label %sw.epilog, !dbg !2137

sw.epilog:                                        ; preds = %sw.default, %sw.bb97, %sw.bb
  ret void, !dbg !2138
}

; Function Attrs: nounwind uwtable
define internal fastcc void @calc_dfs_tree(%struct.dom_info* %di, i8 zeroext %reverse) unnamed_addr #4 !dbg !2139 {
entry:
  call void @llvm.dbg.value(metadata %struct.dom_info* %di, metadata !2143, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i8 %reverse, metadata !2144, metadata !DIExpression()), !dbg !2150
  %tobool = icmp eq i8 %reverse, 0, !dbg !2151
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2150
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2150
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2150
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2151

cond.true:                                        ; preds = %entry
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 1, !dbg !2152
  br label %cond.end, !dbg !2151

cond.false:                                       ; preds = %entry
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2153
  br label %cond.end, !dbg !2151

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %struct.basic_block_def** [ %x_exit_block_ptr, %cond.true ], [ %x_entry_block_ptr, %cond.false ]
  %cond = load %struct.basic_block_def*, %struct.basic_block_def** %cond.in, align 8, !dbg !2151
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %cond, metadata !2145, metadata !DIExpression()), !dbg !2150
  %dfsnum = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 11, !dbg !2154
  %2 = load i32, i32* %dfsnum, align 8, !dbg !2154
  %dfs_order = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 9, !dbg !2155
  %3 = load i32*, i32** %dfs_order, align 8, !dbg !2155
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !2156
  %4 = load i32, i32* %x_last_basic_block, align 8, !dbg !2156
  %idxprom = sext i32 %4 to i64, !dbg !2157
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom, !dbg !2157
  store i32 %2, i32* %arrayidx, align 4, !dbg !2158
  %dfs_to_bb = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 10, !dbg !2159
  %5 = load %struct.basic_block_def**, %struct.basic_block_def*** %dfs_to_bb, align 8, !dbg !2159
  %6 = load i32, i32* %dfsnum, align 8, !dbg !2160
  %idxprom6 = zext i32 %6 to i64, !dbg !2161
  %arrayidx7 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %5, i64 %idxprom6, !dbg !2161
  store %struct.basic_block_def* %cond, %struct.basic_block_def** %arrayidx7, align 8, !dbg !2162
  %7 = load i32, i32* %dfsnum, align 8, !dbg !2163
  %inc = add i32 %7, 1, !dbg !2163
  store i32 %inc, i32* %dfsnum, align 8, !dbg !2163
  tail call fastcc void @calc_dfs_tree_nonrec(%struct.dom_info* %di, %struct.basic_block_def* %cond, i8 zeroext %reverse) #8, !dbg !2164
  br i1 %tobool, label %cond.end.if.end104_crit_edge, label %if.then, !dbg !2165

cond.end.if.end104_crit_edge:                     ; preds = %cond.end
  %.pre8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2166
  br label %if.end104, !dbg !2165

if.then:                                          ; preds = %cond.end
  call void @llvm.dbg.value(metadata i8 0, metadata !2149, metadata !DIExpression()), !dbg !2167
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2168
  %cfg11 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !2168
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg11, align 8, !dbg !2168
  %x_exit_block_ptr12 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 1, !dbg !2168
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr12, align 8, !dbg !2168
  %fake_exit_edge = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 13, !dbg !2170
  %dfs_parent = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 0, !dbg !2170
  br label %for.cond, !dbg !2168

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = phi %struct.control_flow_graph* [ %9, %if.then ], [ %.pre2, %for.inc ], !dbg !2173
  %12 = phi %struct.function* [ %8, %if.then ], [ %.pre, %for.inc ], !dbg !2173
  %.pn = phi %struct.basic_block_def* [ %10, %if.then ], [ %b.0, %for.inc ]
  %saw_unconnected.0 = phi i8 [ 0, %if.then ], [ %saw_unconnected.2, %for.inc ], !dbg !2167
  %b.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 5, !dbg !2174
  %b.0 = load %struct.basic_block_def*, %struct.basic_block_def** %b.0.in, align 8, !dbg !2174
  call void @llvm.dbg.value(metadata i8 %saw_unconnected.0, metadata !2149, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %b.0, metadata !2146, metadata !DIExpression()), !dbg !2167
  %x_entry_block_ptr15 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 0, !dbg !2173
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr15, align 8, !dbg !2173
  %cmp = icmp eq %struct.basic_block_def* %b.0, %13, !dbg !2173
  br i1 %cmp, label %for.end, label %for.body, !dbg !2168

for.body:                                         ; preds = %for.cond
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b.0, i64 0, i32 1, !dbg !2175
  %14 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2175
  %tobool17 = icmp eq %struct.VEC_edge_gc* %14, null, !dbg !2175
  br i1 %tobool17, label %cond.end21, label %cond.true18, !dbg !2175

cond.true18:                                      ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %14, i64 0, i32 0, !dbg !2175
  br label %cond.end21, !dbg !2175

cond.end21:                                       ; preds = %for.body, %cond.true18
  %cond22 = phi %struct.VEC_edge_base* [ %base, %cond.true18 ], [ null, %for.body ], !dbg !2175
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond22) #8, !dbg !2175
  %cmp23 = icmp eq i32 %call, 0, !dbg !2177
  br i1 %cmp23, label %if.end32, label %if.then25, !dbg !2178

if.then25:                                        ; preds = %cond.end21
  %15 = load i32*, i32** %dfs_order, align 8, !dbg !2179
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b.0, i64 0, i32 9, !dbg !2182
  %16 = load i32, i32* %index, align 8, !dbg !2182
  %idxprom27 = sext i32 %16 to i64, !dbg !2183
  %arrayidx28 = getelementptr inbounds i32, i32* %15, i64 %idxprom27, !dbg !2183
  %17 = load i32, i32* %arrayidx28, align 4, !dbg !2183
  %cmp29 = icmp eq i32 %17, 0, !dbg !2184
  %spec.select = select i1 %cmp29, i8 1, i8 %saw_unconnected.0, !dbg !2185
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !2149, metadata !DIExpression()), !dbg !2167
  br label %for.inc, !dbg !2186

if.end32:                                         ; preds = %cond.end21
  %18 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %fake_exit_edge, align 8, !dbg !2187
  %index33 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b.0, i64 0, i32 9, !dbg !2188
  %19 = load i32, i32* %index33, align 8, !dbg !2188
  %call34 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %18, i32 %19) #6, !dbg !2189
  %20 = load i32, i32* %dfsnum, align 8, !dbg !2190
  %21 = load i32*, i32** %dfs_order, align 8, !dbg !2191
  %22 = load i32, i32* %index33, align 8, !dbg !2192
  %idxprom38 = sext i32 %22 to i64, !dbg !2193
  %arrayidx39 = getelementptr inbounds i32, i32* %21, i64 %idxprom38, !dbg !2193
  store i32 %20, i32* %arrayidx39, align 4, !dbg !2194
  %23 = load %struct.basic_block_def**, %struct.basic_block_def*** %dfs_to_bb, align 8, !dbg !2195
  %24 = load i32, i32* %dfsnum, align 8, !dbg !2196
  %idxprom42 = zext i32 %24 to i64, !dbg !2197
  %arrayidx43 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %23, i64 %idxprom42, !dbg !2197
  store %struct.basic_block_def* %b.0, %struct.basic_block_def** %arrayidx43, align 8, !dbg !2198
  %25 = load i32*, i32** %dfs_order, align 8, !dbg !2199
  %26 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2200
  %cfg46 = getelementptr inbounds %struct.function, %struct.function* %26, i64 0, i32 1, !dbg !2200
  %27 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg46, align 8, !dbg !2200
  %x_last_basic_block47 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %27, i64 0, i32 5, !dbg !2200
  %28 = load i32, i32* %x_last_basic_block47, align 8, !dbg !2200
  %idxprom48 = sext i32 %28 to i64, !dbg !2201
  %arrayidx49 = getelementptr inbounds i32, i32* %25, i64 %idxprom48, !dbg !2201
  %29 = load i32, i32* %arrayidx49, align 4, !dbg !2201
  %30 = load i32*, i32** %dfs_parent, align 8, !dbg !2202
  %31 = load i32, i32* %dfsnum, align 8, !dbg !2203
  %idxprom51 = zext i32 %31 to i64, !dbg !2204
  %arrayidx52 = getelementptr inbounds i32, i32* %30, i64 %idxprom51, !dbg !2204
  store i32 %29, i32* %arrayidx52, align 4, !dbg !2205
  %32 = load i32, i32* %dfsnum, align 8, !dbg !2206
  %inc54 = add i32 %32, 1, !dbg !2206
  store i32 %inc54, i32* %dfsnum, align 8, !dbg !2206
  tail call fastcc void @calc_dfs_tree_nonrec(%struct.dom_info* %di, %struct.basic_block_def* %b.0, i8 zeroext %reverse) #8, !dbg !2207
  br label %for.inc, !dbg !2208

for.inc:                                          ; preds = %if.end32, %if.then25
  %saw_unconnected.2 = phi i8 [ %spec.select, %if.then25 ], [ %saw_unconnected.0, %if.end32 ], !dbg !2167
  call void @llvm.dbg.value(metadata i8 %saw_unconnected.2, metadata !2149, metadata !DIExpression()), !dbg !2167
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2173
  %cfg14.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2209
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg14.phi.trans.insert, align 8, !dbg !2173
  br label %for.cond, !dbg !2173, !llvm.loop !2210

for.end:                                          ; preds = %for.cond
  %.lcssa10 = phi %struct.control_flow_graph* [ %11, %for.cond ], !dbg !2173
  %.lcssa = phi %struct.function* [ %12, %for.cond ], !dbg !2173
  %saw_unconnected.0.lcssa = phi i8 [ %saw_unconnected.0, %for.cond ], !dbg !2167
  %b.0.lcssa = phi %struct.basic_block_def* [ %b.0, %for.cond ], !dbg !2174
  call void @llvm.dbg.value(metadata i8 %saw_unconnected.0.lcssa, metadata !2149, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata i8 %saw_unconnected.0.lcssa, metadata !2149, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata i8 %saw_unconnected.0.lcssa, metadata !2149, metadata !DIExpression()), !dbg !2167
  %tobool56 = icmp eq i8 %saw_unconnected.0.lcssa, 0, !dbg !2212
  br i1 %tobool56, label %if.end104, label %if.then57, !dbg !2214

if.then57:                                        ; preds = %for.end
  %x_exit_block_ptr60 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa10, i64 0, i32 1, !dbg !2215
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr60, align 8, !dbg !2215
  br label %for.cond62, !dbg !2215

for.cond62:                                       ; preds = %for.inc100, %if.then57
  %.pre36 = phi %struct.function* [ %.lcssa, %if.then57 ], [ %.pre3, %for.inc100 ]
  %34 = phi %struct.basic_block_def* [ %b.0.lcssa, %if.then57 ], [ %.pre5, %for.inc100 ], !dbg !2218
  %.pn1 = phi %struct.basic_block_def* [ %33, %if.then57 ], [ %b.1, %for.inc100 ]
  %b.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn1, i64 0, i32 5, !dbg !2220
  %b.1 = load %struct.basic_block_def*, %struct.basic_block_def** %b.1.in, align 8, !dbg !2220
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %b.1, metadata !2146, metadata !DIExpression()), !dbg !2167
  %cmp66 = icmp eq %struct.basic_block_def* %b.1, %34, !dbg !2218
  br i1 %cmp66, label %if.end104.loopexit, label %for.body68, !dbg !2215

for.body68:                                       ; preds = %for.cond62
  %35 = load i32*, i32** %dfs_order, align 8, !dbg !2221
  %index70 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b.1, i64 0, i32 9, !dbg !2224
  %36 = load i32, i32* %index70, align 8, !dbg !2224
  %idxprom71 = sext i32 %36 to i64, !dbg !2225
  %arrayidx72 = getelementptr inbounds i32, i32* %35, i64 %idxprom71, !dbg !2225
  %37 = load i32, i32* %arrayidx72, align 4, !dbg !2225
  %tobool73 = icmp eq i32 %37, 0, !dbg !2225
  br i1 %tobool73, label %if.end75, label %for.inc100, !dbg !2226

if.end75:                                         ; preds = %for.body68
  %38 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %fake_exit_edge, align 8, !dbg !2227
  %call78 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %38, i32 %36) #6, !dbg !2228
  %39 = load i32, i32* %dfsnum, align 8, !dbg !2229
  %40 = load i32*, i32** %dfs_order, align 8, !dbg !2230
  %41 = load i32, i32* %index70, align 8, !dbg !2231
  %idxprom82 = sext i32 %41 to i64, !dbg !2232
  %arrayidx83 = getelementptr inbounds i32, i32* %40, i64 %idxprom82, !dbg !2232
  store i32 %39, i32* %arrayidx83, align 4, !dbg !2233
  %42 = load %struct.basic_block_def**, %struct.basic_block_def*** %dfs_to_bb, align 8, !dbg !2234
  %43 = load i32, i32* %dfsnum, align 8, !dbg !2235
  %idxprom86 = zext i32 %43 to i64, !dbg !2236
  %arrayidx87 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %42, i64 %idxprom86, !dbg !2236
  store %struct.basic_block_def* %b.1, %struct.basic_block_def** %arrayidx87, align 8, !dbg !2237
  %44 = load i32*, i32** %dfs_order, align 8, !dbg !2238
  %45 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2239
  %cfg90 = getelementptr inbounds %struct.function, %struct.function* %45, i64 0, i32 1, !dbg !2239
  %46 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg90, align 8, !dbg !2239
  %x_last_basic_block91 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %46, i64 0, i32 5, !dbg !2239
  %47 = load i32, i32* %x_last_basic_block91, align 8, !dbg !2239
  %idxprom92 = sext i32 %47 to i64, !dbg !2240
  %arrayidx93 = getelementptr inbounds i32, i32* %44, i64 %idxprom92, !dbg !2240
  %48 = load i32, i32* %arrayidx93, align 4, !dbg !2240
  %49 = load i32*, i32** %dfs_parent, align 8, !dbg !2241
  %50 = load i32, i32* %dfsnum, align 8, !dbg !2242
  %idxprom96 = zext i32 %50 to i64, !dbg !2243
  %arrayidx97 = getelementptr inbounds i32, i32* %49, i64 %idxprom96, !dbg !2243
  store i32 %48, i32* %arrayidx97, align 4, !dbg !2244
  %51 = load i32, i32* %dfsnum, align 8, !dbg !2245
  %inc99 = add i32 %51, 1, !dbg !2245
  store i32 %inc99, i32* %dfsnum, align 8, !dbg !2245
  tail call fastcc void @calc_dfs_tree_nonrec(%struct.dom_info* %di, %struct.basic_block_def* %b.1, i8 zeroext %reverse) #8, !dbg !2246
  %.pre3.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2218
  br label %for.inc100, !dbg !2247

for.inc100:                                       ; preds = %for.body68, %if.end75
  %.pre3 = phi %struct.function* [ %.pre36, %for.body68 ], [ %.pre3.pre, %if.end75 ], !dbg !2218
  %cfg64.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre3, i64 0, i32 1, !dbg !2248
  %.pre4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg64.phi.trans.insert, align 8, !dbg !2218
  %x_entry_block_ptr65.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre4, i64 0, i32 0, !dbg !2248
  %.pre5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr65.phi.trans.insert, align 8, !dbg !2218
  br label %for.cond62, !dbg !2218, !llvm.loop !2249

if.end104.loopexit:                               ; preds = %for.cond62
  %.pre36.lcssa = phi %struct.function* [ %.pre36, %for.cond62 ]
  br label %if.end104, !dbg !2251

if.end104:                                        ; preds = %cond.end.if.end104_crit_edge, %if.end104.loopexit, %for.end
  %52 = phi %struct.function* [ %.pre8, %cond.end.if.end104_crit_edge ], [ %.pre36.lcssa, %if.end104.loopexit ], [ %.lcssa, %for.end ], !dbg !2166
  %53 = load i32, i32* %dfsnum, align 8, !dbg !2251
  %sub = add i32 %53, -1, !dbg !2252
  %nodes = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 12, !dbg !2253
  store i32 %sub, i32* %nodes, align 4, !dbg !2254
  %cfg108 = getelementptr inbounds %struct.function, %struct.function* %52, i64 0, i32 1, !dbg !2166
  %54 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg108, align 8, !dbg !2166
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %54, i64 0, i32 3, !dbg !2166
  %55 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2166
  %cmp110 = icmp eq i32 %53, %55, !dbg !2166
  br i1 %cmp110, label %cond.end114, label %cond.true112, !dbg !2166

cond.true112:                                     ; preds = %if.end104
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 394, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2166
  br label %cond.end114, !dbg !2166

cond.end114:                                      ; preds = %if.end104, %cond.true112
  ret void, !dbg !2255
}

; Function Attrs: nounwind uwtable
define internal fastcc void @calc_idoms(%struct.dom_info* %di, i8 zeroext %reverse) unnamed_addr #4 !dbg !2256 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %einext = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp6 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.dom_info* %di, metadata !2258, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 %reverse, metadata !2259, metadata !DIExpression()), !dbg !2276
  %0 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2277
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2277
  %1 = bitcast %struct.edge_iterator* %einext to i8*, !dbg !2277
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2277
  %tobool = icmp eq i8 %reverse, 0, !dbg !2278
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2280
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2280
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2280
  br i1 %tobool, label %if.else, label %if.then, !dbg !2281

if.then:                                          ; preds = %entry
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !2282
  br label %if.end, !dbg !2283

if.else:                                          ; preds = %entry
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !2284
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %en_block.0.in = phi %struct.basic_block_def** [ %x_exit_block_ptr, %if.then ], [ %x_entry_block_ptr, %if.else ]
  %en_block.0 = load %struct.basic_block_def*, %struct.basic_block_def** %en_block.0.in, align 8, !dbg !2280
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %en_block.0, metadata !2264, metadata !DIExpression()), !dbg !2276
  %nodes = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 12, !dbg !2285
  %4 = load i32, i32* %nodes, align 4, !dbg !2285
  call void @llvm.dbg.value(metadata i32 %4, metadata !2260, metadata !DIExpression()), !dbg !2276
  %dfs_to_bb = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 10, !dbg !2286
  %dfs_parent = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 0, !dbg !2286
  %5 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2286
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2286
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2286
  %8 = bitcast %struct.edge_iterator* %tmp6 to i8*, !dbg !2286
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp6, i64 0, i32 0, !dbg !2286
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp6, i64 0, i32 1, !dbg !2286
  %fake_exit_edge = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 13, !dbg !2287
  %index14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %einext, i64 0, i32 0, !dbg !2291
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2286
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2286
  %key51 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 1, !dbg !2286
  %bucket = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 3, !dbg !2286
  %next_bucket = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 4, !dbg !2286
  %dom = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 5, !dbg !2293
  %dfs_order35 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 9, !dbg !2298
  %13 = zext i32 %4 to i64, !dbg !2299
  br label %while.cond, !dbg !2299

while.cond:                                       ; preds = %for.end, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end ], [ %13, %if.end ], !dbg !2276
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2260, metadata !DIExpression()), !dbg !2276
  %cmp = icmp ugt i64 %indvars.iv, 1, !dbg !2300
  br i1 %cmp, label %while.body, label %while.end88, !dbg !2299

while.body:                                       ; preds = %while.cond
  %14 = load %struct.basic_block_def**, %struct.basic_block_def*** %dfs_to_bb, align 8, !dbg !2301
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %14, i64 %indvars.iv, !dbg !2302
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2302
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %15, metadata !2267, metadata !DIExpression()), !dbg !2286
  %16 = load i32*, i32** %dfs_parent, align 8, !dbg !2303
  %arrayidx4 = getelementptr inbounds i32, i32* %16, i64 %indvars.iv, !dbg !2304
  %17 = load i32, i32* %arrayidx4, align 4, !dbg !2304
  call void @llvm.dbg.value(metadata i32 %17, metadata !2263, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2262, metadata !DIExpression()), !dbg !2276
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2305

cond.true:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !2306
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i64 0, i32 1, !dbg !2306
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !2306
  %18 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !2306
  store i32 %18, i32* %6, align 8, !dbg !2306
  %19 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !2306
  store %struct.VEC_edge_gc** %19, %struct.VEC_edge_gc*** %7, align 8, !dbg !2306
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !2306
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !2306
  br label %cond.end, !dbg !2305

cond.false:                                       ; preds = %while.body
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !2307
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i64 0, i32 0, !dbg !2307
  %call8 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !2307
  %20 = extractvalue { i32, %struct.VEC_edge_gc** } %call8, 0, !dbg !2307
  store i32 %20, i32* %9, align 8, !dbg !2307
  %21 = extractvalue { i32, %struct.VEC_edge_gc** } %call8, 1, !dbg !2307
  store %struct.VEC_edge_gc** %21, %struct.VEC_edge_gc*** %10, align 8, !dbg !2307
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %8, i64 16, i1 false), !dbg !2307
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !2307
  br label %cond.end, !dbg !2305

cond.end:                                         ; preds = %cond.false, %cond.true
  %22 = trunc i64 %indvars.iv to i32, !dbg !2308
  br i1 %tobool, label %while.cond17, label %if.then10, !dbg !2308

if.then10:                                        ; preds = %cond.end
  %23 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %fake_exit_edge, align 8, !dbg !2309
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i64 0, i32 9, !dbg !2310
  %24 = load i32, i32* %index, align 8, !dbg !2310
  %call11 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %23, i32 %24) #6, !dbg !2311
  %tobool12 = icmp eq i32 %call11, 0, !dbg !2311
  br i1 %tobool12, label %while.cond17, label %if.then13, !dbg !2312

if.then13:                                        ; preds = %if.then10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %0, i64 16, i1 false), !dbg !2313
  store i32 0, i32* %index14, align 8, !dbg !2314
  %25 = trunc i64 %indvars.iv to i32, !dbg !2315
  br label %do_fake_exit_edge, !dbg !2315

while.cond17:                                     ; preds = %if.then10, %cond.end, %if.end46
  %k.0 = phi i32 [ %spec.select, %if.end46 ], [ %22, %if.then10 ], [ %22, %cond.end ], !dbg !2286
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !2262, metadata !DIExpression()), !dbg !2276
  %26 = load i32, i32* %11, align 8, !dbg !2316
  %27 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %12, align 8, !dbg !2316
  %call18 = call fastcc zeroext i8 @ei_end_p(i32 %26, %struct.VEC_edge_gc** %27) #8, !dbg !2316
  %tobool19 = icmp eq i8 %call18, 0, !dbg !2317
  br i1 %tobool19, label %while.body20, label %while.end, !dbg !2318

while.body20:                                     ; preds = %while.cond17
  %call21 = call fastcc %struct.edge_def* @ei_edge(i32 %26, %struct.VEC_edge_gc** %27) #8, !dbg !2319
  call void @llvm.dbg.value(metadata %struct.edge_def* %call21, metadata !2269, metadata !DIExpression()), !dbg !2286
  br i1 %tobool, label %cond.false25, label %cond.true24, !dbg !2320

cond.true24:                                      ; preds = %while.body20
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call21, i64 0, i32 1, !dbg !2321
  br label %cond.end26, !dbg !2320

cond.false25:                                     ; preds = %while.body20
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call21, i64 0, i32 0, !dbg !2322
  br label %cond.end26, !dbg !2320

cond.end26:                                       ; preds = %cond.false25, %cond.true24
  %cond.in = phi %struct.basic_block_def** [ %dest, %cond.true24 ], [ %src, %cond.false25 ]
  %cond = load %struct.basic_block_def*, %struct.basic_block_def** %cond.in, align 8, !dbg !2320
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %cond, metadata !2272, metadata !DIExpression()), !dbg !2323
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %0, i64 16, i1 false), !dbg !2324
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %einext, metadata !2266, metadata !DIExpression(DW_OP_deref)), !dbg !2276
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %einext) #8, !dbg !2325
  %cmp27 = icmp eq %struct.basic_block_def* %cond, %en_block.0, !dbg !2326
  br i1 %cmp27, label %do_fake_exit_edge, label %if.else34, !dbg !2327

do_fake_exit_edge:                                ; preds = %cond.end26, %if.then13
  %k.1 = phi i32 [ %25, %if.then13 ], [ %k.0, %cond.end26 ], !dbg !2286
  call void @llvm.dbg.value(metadata i32 %k.1, metadata !2262, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.label(metadata !2273), !dbg !2328
  %28 = load i32*, i32** %dfs_order35, align 8, !dbg !2329
  %29 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2330
  %cfg31 = getelementptr inbounds %struct.function, %struct.function* %29, i64 0, i32 1, !dbg !2330
  %30 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg31, align 8, !dbg !2330
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %30, i64 0, i32 5, !dbg !2330
  %31 = load i32, i32* %x_last_basic_block, align 8, !dbg !2330
  %idxprom32 = sext i32 %31 to i64, !dbg !2331
  %arrayidx33 = getelementptr inbounds i32, i32* %28, i64 %idxprom32, !dbg !2331
  br label %if.end39, !dbg !2332

if.else34:                                        ; preds = %cond.end26
  %32 = load i32*, i32** %dfs_order35, align 8, !dbg !2333
  %index36 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %cond, i64 0, i32 9, !dbg !2334
  %33 = load i32, i32* %index36, align 8, !dbg !2334
  %idxprom37 = sext i32 %33 to i64, !dbg !2335
  %arrayidx38 = getelementptr inbounds i32, i32* %32, i64 %idxprom37, !dbg !2335
  br label %if.end39

if.end39:                                         ; preds = %if.else34, %do_fake_exit_edge
  %k.2 = phi i32 [ %k.1, %do_fake_exit_edge ], [ %k.0, %if.else34 ], !dbg !2286
  %k1.0.in = phi i32* [ %arrayidx33, %do_fake_exit_edge ], [ %arrayidx38, %if.else34 ]
  %k1.0 = load i32, i32* %k1.0.in, align 4, !dbg !2298
  call void @llvm.dbg.value(metadata i32 %k1.0, metadata !2270, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i32 %k.2, metadata !2262, metadata !DIExpression()), !dbg !2276
  %34 = zext i32 %k1.0 to i64, !dbg !2336
  %cmp40 = icmp ult i64 %indvars.iv, %34, !dbg !2336
  br i1 %cmp40, label %if.then42, label %if.end46, !dbg !2338

if.then42:                                        ; preds = %if.end39
  %35 = load i32*, i32** %key51, align 8, !dbg !2339
  %call43 = call fastcc i32 @eval(%struct.dom_info* %di, i32 %k1.0) #8, !dbg !2340
  %idxprom44 = zext i32 %call43 to i64, !dbg !2341
  %arrayidx45 = getelementptr inbounds i32, i32* %35, i64 %idxprom44, !dbg !2341
  %36 = load i32, i32* %arrayidx45, align 4, !dbg !2341
  call void @llvm.dbg.value(metadata i32 %36, metadata !2270, metadata !DIExpression()), !dbg !2323
  br label %if.end46, !dbg !2342

if.end46:                                         ; preds = %if.then42, %if.end39
  %k1.1 = phi i32 [ %36, %if.then42 ], [ %k1.0, %if.end39 ], !dbg !2323
  call void @llvm.dbg.value(metadata i32 %k1.1, metadata !2270, metadata !DIExpression()), !dbg !2323
  %cmp47 = icmp ult i32 %k1.1, %k.2, !dbg !2343
  %spec.select = select i1 %cmp47, i32 %k1.1, i32 %k.2, !dbg !2345
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2262, metadata !DIExpression()), !dbg !2276
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 16, i1 false), !dbg !2346
  br label %while.cond17, !dbg !2318, !llvm.loop !2347

while.end:                                        ; preds = %while.cond17
  %37 = load i32*, i32** %key51, align 8, !dbg !2349
  %arrayidx53 = getelementptr inbounds i32, i32* %37, i64 %indvars.iv, !dbg !2350
  store i32 %k.0, i32* %arrayidx53, align 4, !dbg !2351
  %38 = trunc i64 %indvars.iv to i32, !dbg !2352
  call fastcc void @link_roots(%struct.dom_info* %di, i32 %17, i32 %38) #8, !dbg !2352
  %39 = load i32*, i32** %bucket, align 8, !dbg !2353
  %idxprom54 = zext i32 %k.0 to i64, !dbg !2354
  %arrayidx55 = getelementptr inbounds i32, i32* %39, i64 %idxprom54, !dbg !2354
  %40 = load i32, i32* %arrayidx55, align 4, !dbg !2354
  %41 = load i32*, i32** %next_bucket, align 8, !dbg !2355
  %arrayidx57 = getelementptr inbounds i32, i32* %41, i64 %indvars.iv, !dbg !2356
  store i32 %40, i32* %arrayidx57, align 4, !dbg !2357
  %42 = load i32*, i32** %bucket, align 8, !dbg !2358
  %arrayidx60 = getelementptr inbounds i32, i32* %42, i64 %idxprom54, !dbg !2359
  %43 = trunc i64 %indvars.iv to i32, !dbg !2360
  store i32 %43, i32* %arrayidx60, align 4, !dbg !2360
  %44 = load i32*, i32** %bucket, align 8, !dbg !2361
  %idxprom62 = zext i32 %17 to i64, !dbg !2362
  %arrayidx63 = getelementptr inbounds i32, i32* %44, i64 %idxprom62, !dbg !2362
  br label %for.cond, !dbg !2363

for.cond:                                         ; preds = %for.inc, %while.end
  %w.0.in = phi i32* [ %arrayidx63, %while.end ], [ %arrayidx84, %for.inc ]
  %w.0 = load i32, i32* %w.0.in, align 4, !dbg !2364
  call void @llvm.dbg.value(metadata i32 %w.0, metadata !2261, metadata !DIExpression()), !dbg !2276
  %tobool64 = icmp eq i32 %w.0, 0, !dbg !2365
  br i1 %tobool64, label %for.end, label %for.body, !dbg !2365

for.body:                                         ; preds = %for.cond
  %call65 = call fastcc i32 @eval(%struct.dom_info* %di, i32 %w.0) #8, !dbg !2366
  call void @llvm.dbg.value(metadata i32 %call65, metadata !2262, metadata !DIExpression()), !dbg !2276
  %45 = load i32*, i32** %key51, align 8, !dbg !2367
  %idxprom67 = zext i32 %call65 to i64, !dbg !2368
  %arrayidx68 = getelementptr inbounds i32, i32* %45, i64 %idxprom67, !dbg !2368
  %46 = load i32, i32* %arrayidx68, align 4, !dbg !2368
  %idxprom70 = zext i32 %w.0 to i64, !dbg !2369
  %arrayidx71 = getelementptr inbounds i32, i32* %45, i64 %idxprom70, !dbg !2369
  %47 = load i32, i32* %arrayidx71, align 4, !dbg !2369
  %cmp72 = icmp ult i32 %46, %47, !dbg !2370
  %48 = load i32*, i32** %dom, align 8, !dbg !2293
  %arrayidx76 = getelementptr inbounds i32, i32* %48, i64 %idxprom70, !dbg !2293
  br i1 %cmp72, label %if.then74, label %if.else77, !dbg !2371

if.then74:                                        ; preds = %for.body
  br label %for.inc, !dbg !2372

if.else77:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.then74, %if.else77
  %storemerge = phi i32 [ %17, %if.else77 ], [ %call65, %if.then74 ], !dbg !2293
  store i32 %storemerge, i32* %arrayidx76, align 4, !dbg !2293
  %49 = load i32*, i32** %next_bucket, align 8, !dbg !2373
  %arrayidx84 = getelementptr inbounds i32, i32* %49, i64 %idxprom70, !dbg !2374
  br label %for.cond, !dbg !2375, !llvm.loop !2376

for.end:                                          ; preds = %for.cond
  %50 = load i32*, i32** %bucket, align 8, !dbg !2378
  %arrayidx87 = getelementptr inbounds i32, i32* %50, i64 %idxprom62, !dbg !2379
  store i32 0, i32* %arrayidx87, align 4, !dbg !2380
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2381
  br label %while.cond, !dbg !2299, !llvm.loop !2382

while.end88:                                      ; preds = %while.cond
  %51 = load i32*, i32** %dom, align 8, !dbg !2384
  %arrayidx90 = getelementptr inbounds i32, i32* %51, i64 1, !dbg !2385
  store i32 0, i32* %arrayidx90, align 4, !dbg !2386
  call void @llvm.dbg.value(metadata i32 2, metadata !2260, metadata !DIExpression()), !dbg !2276
  br label %for.cond91, !dbg !2387

for.cond91:                                       ; preds = %for.inc115, %while.end88
  %v.1 = phi i32 [ 2, %while.end88 ], [ %inc, %for.inc115 ], !dbg !2389
  call void @llvm.dbg.value(metadata i32 %v.1, metadata !2260, metadata !DIExpression()), !dbg !2276
  %52 = load i32, i32* %nodes, align 4, !dbg !2390
  %cmp93 = icmp ugt i32 %v.1, %52, !dbg !2392
  br i1 %cmp93, label %for.end116, label %for.body95, !dbg !2393

for.body95:                                       ; preds = %for.cond91
  %53 = load i32*, i32** %dom, align 8, !dbg !2394
  %idxprom97 = zext i32 %v.1 to i64, !dbg !2396
  %arrayidx98 = getelementptr inbounds i32, i32* %53, i64 %idxprom97, !dbg !2396
  %54 = load i32, i32* %arrayidx98, align 4, !dbg !2396
  %55 = load i32*, i32** %key51, align 8, !dbg !2397
  %arrayidx101 = getelementptr inbounds i32, i32* %55, i64 %idxprom97, !dbg !2398
  %56 = load i32, i32* %arrayidx101, align 4, !dbg !2398
  %cmp102 = icmp eq i32 %54, %56, !dbg !2399
  br i1 %cmp102, label %for.inc115, label %if.then104, !dbg !2400

if.then104:                                       ; preds = %for.body95
  %idxprom109 = zext i32 %54 to i64, !dbg !2401
  %arrayidx110 = getelementptr inbounds i32, i32* %53, i64 %idxprom109, !dbg !2401
  %57 = load i32, i32* %arrayidx110, align 4, !dbg !2401
  store i32 %57, i32* %arrayidx98, align 4, !dbg !2402
  br label %for.inc115, !dbg !2403

for.inc115:                                       ; preds = %for.body95, %if.then104
  %inc = add i32 %v.1, 1, !dbg !2404
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2260, metadata !DIExpression()), !dbg !2276
  br label %for.cond91, !dbg !2405, !llvm.loop !2406

for.end116:                                       ; preds = %for.cond91
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2408
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2408
  ret void, !dbg !2408
}

declare dso_local void @et_set_father(%struct.et_node*, %struct.et_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @free_dom_info(%struct.dom_info* %di) unnamed_addr #4 !dbg !2409 {
entry:
  call void @llvm.dbg.value(metadata %struct.dom_info* %di, metadata !2413, metadata !DIExpression()), !dbg !2414
  %0 = bitcast %struct.dom_info* %di to i8**, !dbg !2415
  %1 = load i8*, i8** %0, align 8, !dbg !2415
  tail call void @free(i8* %1) #6, !dbg !2416
  %path_min = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 2, !dbg !2417
  %2 = bitcast i32** %path_min to i8**, !dbg !2417
  %3 = load i8*, i8** %2, align 8, !dbg !2417
  tail call void @free(i8* %3) #6, !dbg !2418
  %key = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 1, !dbg !2419
  %4 = bitcast i32** %key to i8**, !dbg !2419
  %5 = load i8*, i8** %4, align 8, !dbg !2419
  tail call void @free(i8* %5) #6, !dbg !2420
  %dom = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 5, !dbg !2421
  %6 = bitcast i32** %dom to i8**, !dbg !2421
  %7 = load i8*, i8** %6, align 8, !dbg !2421
  tail call void @free(i8* %7) #6, !dbg !2422
  %bucket = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 3, !dbg !2423
  %8 = bitcast i32** %bucket to i8**, !dbg !2423
  %9 = load i8*, i8** %8, align 8, !dbg !2423
  tail call void @free(i8* %9) #6, !dbg !2424
  %next_bucket = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 4, !dbg !2425
  %10 = bitcast i32** %next_bucket to i8**, !dbg !2425
  %11 = load i8*, i8** %10, align 8, !dbg !2425
  tail call void @free(i8* %11) #6, !dbg !2426
  %set_chain = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 6, !dbg !2427
  %12 = bitcast i32** %set_chain to i8**, !dbg !2427
  %13 = load i8*, i8** %12, align 8, !dbg !2427
  tail call void @free(i8* %13) #6, !dbg !2428
  %set_size = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 7, !dbg !2429
  %14 = bitcast i32** %set_size to i8**, !dbg !2429
  %15 = load i8*, i8** %14, align 8, !dbg !2429
  tail call void @free(i8* %15) #6, !dbg !2430
  %set_child = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 8, !dbg !2431
  %16 = bitcast i32** %set_child to i8**, !dbg !2431
  %17 = load i8*, i8** %16, align 8, !dbg !2431
  tail call void @free(i8* %17) #6, !dbg !2432
  %dfs_order = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 9, !dbg !2433
  %18 = bitcast i32** %dfs_order to i8**, !dbg !2433
  %19 = load i8*, i8** %18, align 8, !dbg !2433
  tail call void @free(i8* %19) #6, !dbg !2434
  %dfs_to_bb = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 10, !dbg !2435
  %20 = bitcast %struct.basic_block_def*** %dfs_to_bb to i8**, !dbg !2435
  %21 = load i8*, i8** %20, align 8, !dbg !2435
  tail call void @free(i8* %21) #6, !dbg !2436
  %fake_exit_edge = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 13, !dbg !2437
  %22 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %fake_exit_edge, align 8, !dbg !2437
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %22) #6, !dbg !2437
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %fake_exit_edge, align 8, !dbg !2437
  ret void, !dbg !2438
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_dom_fast_query(i32 %dir) unnamed_addr #4 !dbg !2439 {
entry:
  %num = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %dir, metadata !2441, metadata !DIExpression()), !dbg !2445
  %0 = bitcast i32* %num to i8*, !dbg !2446
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2446
  call void @llvm.dbg.value(metadata i32 0, metadata !2442, metadata !DIExpression()), !dbg !2445
  store i32 0, i32* %num, align 4, !dbg !2447
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !2448
  call void @llvm.dbg.value(metadata i32 %call, metadata !2444, metadata !DIExpression()), !dbg !2445
  %call1 = tail call zeroext i8 @dom_info_available_p(i32 %dir) #8, !dbg !2449
  %tobool = icmp eq i8 %call1, 0, !dbg !2449
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2449

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 615, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2449
  br label %cond.end, !dbg !2449

cond.end:                                         ; preds = %entry, %cond.true
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2450
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2450
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2450
  %idxprom = zext i32 %call to i64, !dbg !2450
  %arrayidx = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 8, i64 %idxprom, !dbg !2450
  %3 = load i32, i32* %arrayidx, align 4, !dbg !2450
  %cmp = icmp eq i32 %3, 2, !dbg !2452
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2453

if.end:                                           ; preds = %cond.end
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !2454
  br label %for.cond, !dbg !2454

for.cond:                                         ; preds = %for.inc, %if.end
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %if.end ], [ %next_bb, %for.inc ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2456
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2443, metadata !DIExpression()), !dbg !2445
  %tobool4 = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !2454
  br i1 %tobool4, label %for.end, label %for.body, !dbg !2454

for.body:                                         ; preds = %for.cond
  %arrayidx6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 4, i64 %idxprom, !dbg !2457
  %4 = load %struct.et_node*, %struct.et_node** %arrayidx6, align 8, !dbg !2457
  %father = getelementptr inbounds %struct.et_node, %struct.et_node* %4, i64 0, i32 3, !dbg !2461
  %5 = load %struct.et_node*, %struct.et_node** %father, align 8, !dbg !2461
  %tobool7 = icmp eq %struct.et_node* %5, null, !dbg !2457
  br i1 %tobool7, label %if.then8, label %for.inc, !dbg !2462

if.then8:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32* %num, metadata !2442, metadata !DIExpression(DW_OP_deref)), !dbg !2445
  call fastcc void @assign_dfs_numbers(%struct.et_node* %4, i32* nonnull %num) #8, !dbg !2463
  br label %for.inc, !dbg !2463

for.inc:                                          ; preds = %for.body, %if.then8
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !2464
  br label %for.cond, !dbg !2464, !llvm.loop !2465

for.end:                                          ; preds = %for.cond
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2467
  %cfg14 = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 1, !dbg !2467
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg14, align 8, !dbg !2467
  %arrayidx17 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 8, i64 %idxprom, !dbg !2467
  store i32 2, i32* %arrayidx17, align 4, !dbg !2468
  br label %cleanup, !dbg !2469

cleanup:                                          ; preds = %cond.end, %for.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2469
  ret void, !dbg !2469
}

declare dso_local void @timevar_pop_1(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @free_dominance_info(i32 %dir) local_unnamed_addr #4 !dbg !2470 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !2472, metadata !DIExpression()), !dbg !2475
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !2476
  call void @llvm.dbg.value(metadata i32 %call, metadata !2474, metadata !DIExpression()), !dbg !2475
  %call1 = tail call zeroext i8 @dom_info_available_p(i32 %dir) #8, !dbg !2477
  %tobool = icmp eq i8 %call1, 0, !dbg !2477
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !2479

if.end:                                           ; preds = %entry
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2480
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2480
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2480
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2480
  %idxprom = zext i32 %call to i64, !dbg !2482
  br label %for.cond, !dbg !2480

for.cond:                                         ; preds = %for.body, %if.end
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %if.end ], [ %next_bb, %for.body ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2485
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2473, metadata !DIExpression()), !dbg !2475
  %tobool2 = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !2480
  br i1 %tobool2, label %for.end, label %for.body, !dbg !2480

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 4, i64 %idxprom, !dbg !2486
  %2 = load %struct.et_node*, %struct.et_node** %arrayidx, align 8, !dbg !2486
  tail call void @et_free_tree_force(%struct.et_node* %2) #6, !dbg !2487
  store %struct.et_node* null, %struct.et_node** %arrayidx, align 8, !dbg !2488
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !2489
  br label %for.cond, !dbg !2489, !llvm.loop !2490

for.end:                                          ; preds = %for.cond
  tail call void @et_free_pools() #6, !dbg !2492
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2493
  %cfg7 = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !2493
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg7, align 8, !dbg !2493
  %arrayidx9 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 9, i64 %idxprom, !dbg !2493
  store i32 0, i32* %arrayidx9, align 4, !dbg !2494
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2495
  %cfg11 = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !2495
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg11, align 8, !dbg !2495
  %arrayidx13 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 8, i64 %idxprom, !dbg !2495
  store i32 0, i32* %arrayidx13, align 4, !dbg !2496
  br label %cleanup.cont, !dbg !2497

cleanup.cont:                                     ; preds = %entry, %for.end
  ret void, !dbg !2497
}

declare dso_local void @et_free_tree_force(%struct.et_node*) local_unnamed_addr #1

declare dso_local void @et_free_pools() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @get_immediate_dominator(i32 %dir, %struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !2498 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !2502, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2503, metadata !DIExpression()), !dbg !2506
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !2507
  call void @llvm.dbg.value(metadata i32 %call, metadata !2504, metadata !DIExpression()), !dbg !2506
  %idxprom = zext i32 %call to i64, !dbg !2508
  %arrayidx = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 4, i64 %idxprom, !dbg !2508
  %0 = load %struct.et_node*, %struct.et_node** %arrayidx, align 8, !dbg !2508
  call void @llvm.dbg.value(metadata %struct.et_node* %0, metadata !2505, metadata !DIExpression()), !dbg !2506
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2509
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2509
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2509
  %arrayidx2 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 8, i64 %idxprom, !dbg !2509
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !2509
  %tobool = icmp eq i32 %3, 0, !dbg !2509
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2509

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 704, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2509
  br label %cond.end, !dbg !2509

cond.end:                                         ; preds = %entry, %cond.true
  %father = getelementptr inbounds %struct.et_node, %struct.et_node* %0, i64 0, i32 3, !dbg !2510
  %4 = load %struct.et_node*, %struct.et_node** %father, align 8, !dbg !2510
  %tobool3 = icmp eq %struct.et_node* %4, null, !dbg !2512
  br i1 %tobool3, label %cleanup, label %if.end, !dbg !2513

if.end:                                           ; preds = %cond.end
  %5 = bitcast %struct.et_node* %4 to %struct.basic_block_def**, !dbg !2513
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %5, align 8, !dbg !2514
  br label %cleanup, !dbg !2515

cleanup:                                          ; preds = %cond.end, %if.end
  %retval.0 = phi %struct.basic_block_def* [ %6, %if.end ], [ null, %cond.end ], !dbg !2506
  ret %struct.basic_block_def* %retval.0, !dbg !2516
}

; Function Attrs: nounwind uwtable
define dso_local void @set_immediate_dominator(i32 %dir, %struct.basic_block_def* %bb, %struct.basic_block_def* %dominated_by) local_unnamed_addr #4 !dbg !2517 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !2521, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2522, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dominated_by, metadata !2523, metadata !DIExpression()), !dbg !2526
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !2527
  call void @llvm.dbg.value(metadata i32 %call, metadata !2524, metadata !DIExpression()), !dbg !2526
  %idxprom = zext i32 %call to i64, !dbg !2528
  %arrayidx = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 4, i64 %idxprom, !dbg !2528
  %0 = load %struct.et_node*, %struct.et_node** %arrayidx, align 8, !dbg !2528
  call void @llvm.dbg.value(metadata %struct.et_node* %0, metadata !2525, metadata !DIExpression()), !dbg !2526
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2529
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2529
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2529
  %arrayidx2 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 8, i64 %idxprom, !dbg !2529
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !2529
  %tobool = icmp eq i32 %3, 0, !dbg !2529
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2529

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 721, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2529
  br label %cond.end, !dbg !2529

cond.end:                                         ; preds = %entry, %cond.true
  %father = getelementptr inbounds %struct.et_node, %struct.et_node* %0, i64 0, i32 3, !dbg !2530
  %4 = load %struct.et_node*, %struct.et_node** %father, align 8, !dbg !2530
  %tobool3 = icmp eq %struct.et_node* %4, null, !dbg !2532
  br i1 %tobool3, label %if.end6, label %if.then, !dbg !2533

if.then:                                          ; preds = %cond.end
  %data = getelementptr inbounds %struct.et_node, %struct.et_node* %4, i64 0, i32 0, !dbg !2534
  %5 = load i8*, i8** %data, align 8, !dbg !2534
  %6 = bitcast %struct.basic_block_def* %dominated_by to i8*, !dbg !2537
  %cmp = icmp eq i8* %5, %6, !dbg !2538
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !2539

if.end:                                           ; preds = %if.then
  tail call void @et_split(%struct.et_node* %0) #6, !dbg !2540
  br label %if.end6, !dbg !2541

if.end6:                                          ; preds = %cond.end, %if.end
  %tobool7 = icmp eq %struct.basic_block_def* %dominated_by, null, !dbg !2542
  br i1 %tobool7, label %if.end12, label %if.then8, !dbg !2544

if.then8:                                         ; preds = %if.end6
  %arrayidx11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %dominated_by, i64 0, i32 4, i64 %idxprom, !dbg !2545
  %7 = load %struct.et_node*, %struct.et_node** %arrayidx11, align 8, !dbg !2545
  tail call void @et_set_father(%struct.et_node* %0, %struct.et_node* %7) #6, !dbg !2546
  br label %if.end12, !dbg !2546

if.end12:                                         ; preds = %if.end6, %if.then8
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2547
  %cfg14 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !2547
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg14, align 8, !dbg !2547
  %arrayidx17 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 8, i64 %idxprom, !dbg !2547
  %10 = load i32, i32* %arrayidx17, align 4, !dbg !2547
  %cmp18 = icmp eq i32 %10, 2, !dbg !2549
  br i1 %cmp18, label %if.then19, label %cleanup.cont, !dbg !2550

if.then19:                                        ; preds = %if.end12
  store i32 1, i32* %arrayidx17, align 4, !dbg !2551
  br label %cleanup.cont, !dbg !2552

cleanup.cont:                                     ; preds = %if.then, %if.then19, %if.end12
  ret void, !dbg !2553
}

declare dso_local void @et_split(%struct.et_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.VEC_basic_block_heap* @get_dominated_by(i32 %dir, %struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !2554 {
entry:
  %bbs = alloca %struct.VEC_basic_block_heap*, align 8
  call void @llvm.dbg.value(metadata i32 %dir, metadata !2558, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2559, metadata !DIExpression()), !dbg !2565
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !2566
  call void @llvm.dbg.value(metadata i32 %call, metadata !2560, metadata !DIExpression()), !dbg !2565
  %idxprom = zext i32 %call to i64, !dbg !2567
  %arrayidx = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 4, i64 %idxprom, !dbg !2567
  %0 = load %struct.et_node*, %struct.et_node** %arrayidx, align 8, !dbg !2567
  call void @llvm.dbg.value(metadata %struct.et_node* %0, metadata !2561, metadata !DIExpression()), !dbg !2565
  %son1 = getelementptr inbounds %struct.et_node, %struct.et_node* %0, i64 0, i32 4, !dbg !2568
  %1 = load %struct.et_node*, %struct.et_node** %son1, align 8, !dbg !2568
  call void @llvm.dbg.value(metadata %struct.et_node* %1, metadata !2562, metadata !DIExpression()), !dbg !2565
  %2 = bitcast %struct.VEC_basic_block_heap** %bbs to i8*, !dbg !2569
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2569
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* null, metadata !2564, metadata !DIExpression()), !dbg !2565
  store %struct.VEC_basic_block_heap* null, %struct.VEC_basic_block_heap** %bbs, align 8, !dbg !2570
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2571
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !2571
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2571
  %arrayidx3 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 8, i64 %idxprom, !dbg !2571
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !2571
  %tobool = icmp eq i32 %5, 0, !dbg !2571
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2571

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 746, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2571
  br label %cond.end, !dbg !2571

cond.end:                                         ; preds = %entry, %cond.true
  %tobool4 = icmp eq %struct.et_node* %1, null, !dbg !2572
  br i1 %tobool4, label %cleanup, label %if.end, !dbg !2574

if.end:                                           ; preds = %cond.end
  %6 = bitcast %struct.et_node* %1 to %struct.basic_block_def**, !dbg !2575
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %6, align 8, !dbg !2575
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %bbs, metadata !2564, metadata !DIExpression(DW_OP_deref)), !dbg !2565
  %call5 = call fastcc %struct.basic_block_def** @VEC_basic_block_heap_safe_push(%struct.VEC_basic_block_heap** nonnull %bbs, %struct.basic_block_def* %7) #8, !dbg !2575
  br label %for.cond, !dbg !2576

for.cond:                                         ; preds = %for.body, %if.end
  %.pn = phi %struct.et_node* [ %1, %if.end ], [ %ason.0, %for.body ]
  %ason.0.in = getelementptr inbounds %struct.et_node, %struct.et_node* %.pn, i64 0, i32 6, !dbg !2578
  %ason.0 = load %struct.et_node*, %struct.et_node** %ason.0.in, align 8, !dbg !2578
  call void @llvm.dbg.value(metadata %struct.et_node* %ason.0, metadata !2563, metadata !DIExpression()), !dbg !2565
  %cmp = icmp eq %struct.et_node* %ason.0, %1, !dbg !2579
  br i1 %cmp, label %for.end, label %for.body, !dbg !2581

for.body:                                         ; preds = %for.cond
  %8 = bitcast %struct.et_node* %ason.0 to %struct.basic_block_def**, !dbg !2582
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %8, align 8, !dbg !2582
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %bbs, metadata !2564, metadata !DIExpression(DW_OP_deref)), !dbg !2565
  %call7 = call fastcc %struct.basic_block_def** @VEC_basic_block_heap_safe_push(%struct.VEC_basic_block_heap** nonnull %bbs, %struct.basic_block_def* %9) #8, !dbg !2582
  br label %for.cond, !dbg !2583, !llvm.loop !2584

for.end:                                          ; preds = %for.cond
  %10 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %bbs, align 8, !dbg !2586
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %10, metadata !2564, metadata !DIExpression()), !dbg !2565
  br label %cleanup, !dbg !2587

cleanup:                                          ; preds = %cond.end, %for.end
  %retval.0 = phi %struct.VEC_basic_block_heap* [ %10, %for.end ], [ null, %cond.end ], !dbg !2565
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2588
  ret %struct.VEC_basic_block_heap* %retval.0, !dbg !2588
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def** @VEC_basic_block_heap_safe_push(%struct.VEC_basic_block_heap** %vec_, %struct.basic_block_def* %obj_) unnamed_addr #0 !dbg !2589 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %vec_, metadata !2594, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %obj_, metadata !2595, metadata !DIExpression()), !dbg !2596
  %call = tail call fastcc i32 @VEC_basic_block_heap_reserve(%struct.VEC_basic_block_heap** %vec_, i32 1) #8, !dbg !2597
  %0 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !2597
  %tobool = icmp eq %struct.VEC_basic_block_heap* %0, null, !dbg !2597
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2597

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %0, i64 0, i32 0, !dbg !2597
  br label %cond.end, !dbg !2597

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2597
  %call1 = tail call fastcc %struct.basic_block_def** @VEC_basic_block_base_quick_push(%struct.VEC_basic_block_base* %cond, %struct.basic_block_def* %obj_) #8, !dbg !2597
  ret %struct.basic_block_def** %call1, !dbg !2597
}

; Function Attrs: nounwind uwtable
define dso_local %struct.VEC_basic_block_heap* @get_dominated_by_region(i32 %dir, %struct.basic_block_def** %region, i32 %n_region) local_unnamed_addr #4 !dbg !2598 {
entry:
  %doms = alloca %struct.VEC_basic_block_heap*, align 8
  call void @llvm.dbg.value(metadata i32 %dir, metadata !2602, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %region, metadata !2603, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 %n_region, metadata !2604, metadata !DIExpression()), !dbg !2608
  %0 = bitcast %struct.VEC_basic_block_heap** %doms to i8*, !dbg !2609
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2609
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* null, metadata !2607, metadata !DIExpression()), !dbg !2608
  store %struct.VEC_basic_block_heap* null, %struct.VEC_basic_block_heap** %doms, align 8, !dbg !2610
  call void @llvm.dbg.value(metadata i32 0, metadata !2605, metadata !DIExpression()), !dbg !2608
  %wide.trip.count7 = zext i32 %n_region to i64, !dbg !2611
  br label %for.cond, !dbg !2614

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.body ], [ 0, %entry ], !dbg !2615
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !2605, metadata !DIExpression()), !dbg !2608
  %exitcond8 = icmp eq i64 %indvars.iv5, %wide.trip.count7, !dbg !2611
  br i1 %exitcond8, label %for.cond1.preheader, label %for.body, !dbg !2616

for.cond1.preheader:                              ; preds = %for.cond
  %wide.trip.count3 = zext i32 %n_region to i64, !dbg !2617
  br label %for.cond1, !dbg !2620

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %region, i64 %indvars.iv5, !dbg !2621
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2621
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i64 0, i32 13, !dbg !2622
  %2 = load i32, i32* %flags, align 8, !dbg !2623
  %or = or i32 %2, 128, !dbg !2623
  store i32 %or, i32* %flags, align 8, !dbg !2623
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !2624
  br label %for.cond, !dbg !2625, !llvm.loop !2626

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc14
  %indvars.iv1 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next2, %for.inc14 ], !dbg !2628
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !2605, metadata !DIExpression()), !dbg !2608
  %exitcond4 = icmp eq i64 %indvars.iv1, %wide.trip.count3, !dbg !2617
  br i1 %exitcond4, label %for.cond17.preheader, label %for.body3, !dbg !2620

for.cond17.preheader:                             ; preds = %for.cond1
  %wide.trip.count = zext i32 %n_region to i64, !dbg !2629
  br label %for.cond17, !dbg !2632

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %region, i64 %indvars.iv1, !dbg !2633
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx5, align 8, !dbg !2633
  %call = call %struct.basic_block_def* @first_dom_son(i32 %dir, %struct.basic_block_def* %3) #8, !dbg !2635
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !2606, metadata !DIExpression()), !dbg !2608
  br label %for.cond6, !dbg !2636

for.cond6:                                        ; preds = %for.inc11, %for.body3
  %dom.0 = phi %struct.basic_block_def* [ %call, %for.body3 ], [ %call12, %for.inc11 ], !dbg !2637
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.0, metadata !2606, metadata !DIExpression()), !dbg !2608
  %tobool = icmp eq %struct.basic_block_def* %dom.0, null, !dbg !2638
  br i1 %tobool, label %for.inc14, label %for.body7, !dbg !2638

for.body7:                                        ; preds = %for.cond6
  %flags8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %dom.0, i64 0, i32 13, !dbg !2639
  %4 = load i32, i32* %flags8, align 8, !dbg !2639
  %5 = trunc i32 %4 to i8, !dbg !2642
  %tobool9 = icmp slt i8 %5, 0, !dbg !2642
  br i1 %tobool9, label %for.inc11, label %if.then, !dbg !2643

if.then:                                          ; preds = %for.body7
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %doms, metadata !2607, metadata !DIExpression(DW_OP_deref)), !dbg !2608
  %call10 = call fastcc %struct.basic_block_def** @VEC_basic_block_heap_safe_push(%struct.VEC_basic_block_heap** nonnull %doms, %struct.basic_block_def* nonnull %dom.0) #8, !dbg !2644
  br label %for.inc11, !dbg !2644

for.inc11:                                        ; preds = %for.body7, %if.then
  %call12 = call %struct.basic_block_def* @next_dom_son(i32 %dir, %struct.basic_block_def* nonnull %dom.0) #8, !dbg !2645
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call12, metadata !2606, metadata !DIExpression()), !dbg !2608
  br label %for.cond6, !dbg !2646, !llvm.loop !2647

for.inc14:                                        ; preds = %for.cond6
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !2649
  br label %for.cond1, !dbg !2650, !llvm.loop !2651

for.cond17:                                       ; preds = %for.cond17.preheader, %for.body19
  %indvars.iv = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next, %for.body19 ], !dbg !2653
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2605, metadata !DIExpression()), !dbg !2608
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !2629
  br i1 %exitcond, label %for.end26, label %for.body19, !dbg !2632

for.body19:                                       ; preds = %for.cond17
  %arrayidx21 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %region, i64 %indvars.iv, !dbg !2654
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx21, align 8, !dbg !2654
  %flags22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 13, !dbg !2655
  %7 = load i32, i32* %flags22, align 8, !dbg !2656
  %and23 = and i32 %7, -129, !dbg !2656
  store i32 %and23, i32* %flags22, align 8, !dbg !2656
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2657
  br label %for.cond17, !dbg !2658, !llvm.loop !2659

for.end26:                                        ; preds = %for.cond17
  %8 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %doms, align 8, !dbg !2661
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %8, metadata !2607, metadata !DIExpression()), !dbg !2608
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2662
  ret %struct.VEC_basic_block_heap* %8, !dbg !2663
}

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @first_dom_son(i32 %dir, %struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !2664 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !2666, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2667, metadata !DIExpression()), !dbg !2670
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !2671
  call void @llvm.dbg.value(metadata i32 %call, metadata !2668, metadata !DIExpression()), !dbg !2670
  %idxprom = zext i32 %call to i64, !dbg !2672
  %arrayidx = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 4, i64 %idxprom, !dbg !2672
  %0 = load %struct.et_node*, %struct.et_node** %arrayidx, align 8, !dbg !2672
  %son1 = getelementptr inbounds %struct.et_node, %struct.et_node* %0, i64 0, i32 4, !dbg !2673
  %1 = load %struct.et_node*, %struct.et_node** %son1, align 8, !dbg !2673
  call void @llvm.dbg.value(metadata %struct.et_node* %1, metadata !2669, metadata !DIExpression()), !dbg !2670
  %tobool = icmp eq %struct.et_node* %1, null, !dbg !2674
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2674

cond.true:                                        ; preds = %entry
  %2 = bitcast %struct.et_node* %1 to %struct.basic_block_def**, !dbg !2675
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %2, align 8, !dbg !2675
  br label %cond.end, !dbg !2674

cond.end:                                         ; preds = %entry, %cond.true
  %4 = phi %struct.basic_block_def* [ %3, %cond.true ], [ null, %entry ], !dbg !2674
  ret %struct.basic_block_def* %4, !dbg !2676
}

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @next_dom_son(i32 %dir, %struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !2677 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !2679, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2680, metadata !DIExpression()), !dbg !2683
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !2684
  call void @llvm.dbg.value(metadata i32 %call, metadata !2681, metadata !DIExpression()), !dbg !2683
  %idxprom = zext i32 %call to i64, !dbg !2685
  %arrayidx = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 4, i64 %idxprom, !dbg !2685
  %0 = load %struct.et_node*, %struct.et_node** %arrayidx, align 8, !dbg !2685
  %right = getelementptr inbounds %struct.et_node, %struct.et_node* %0, i64 0, i32 6, !dbg !2686
  %1 = load %struct.et_node*, %struct.et_node** %right, align 8, !dbg !2686
  call void @llvm.dbg.value(metadata %struct.et_node* %1, metadata !2682, metadata !DIExpression()), !dbg !2683
  %father = getelementptr inbounds %struct.et_node, %struct.et_node* %1, i64 0, i32 3, !dbg !2687
  %2 = load %struct.et_node*, %struct.et_node** %father, align 8, !dbg !2687
  %son = getelementptr inbounds %struct.et_node, %struct.et_node* %2, i64 0, i32 4, !dbg !2688
  %3 = load %struct.et_node*, %struct.et_node** %son, align 8, !dbg !2688
  %cmp = icmp eq %struct.et_node* %3, %1, !dbg !2689
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !2690

cond.false:                                       ; preds = %entry
  %4 = bitcast %struct.et_node* %1 to %struct.basic_block_def**, !dbg !2691
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %4, align 8, !dbg !2691
  br label %cond.end, !dbg !2690

cond.end:                                         ; preds = %entry, %cond.false
  %6 = phi %struct.basic_block_def* [ %5, %cond.false ], [ null, %entry ], !dbg !2690
  ret %struct.basic_block_def* %6, !dbg !2692
}

; Function Attrs: nounwind uwtable
define dso_local %struct.VEC_basic_block_heap* @get_all_dominated_blocks(i32 %dir, %struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !2693 {
entry:
  %bbs = alloca %struct.VEC_basic_block_heap*, align 8
  call void @llvm.dbg.value(metadata i32 %dir, metadata !2695, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2696, metadata !DIExpression()), !dbg !2701
  %0 = bitcast %struct.VEC_basic_block_heap** %bbs to i8*, !dbg !2702
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2702
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* null, metadata !2697, metadata !DIExpression()), !dbg !2701
  store %struct.VEC_basic_block_heap* null, %struct.VEC_basic_block_heap** %bbs, align 8, !dbg !2703
  call void @llvm.dbg.value(metadata i32 0, metadata !2698, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %bbs, metadata !2697, metadata !DIExpression(DW_OP_deref)), !dbg !2701
  %call = call fastcc %struct.basic_block_def** @VEC_basic_block_heap_safe_push(%struct.VEC_basic_block_heap** nonnull %bbs, %struct.basic_block_def* %bb) #8, !dbg !2704
  br label %do.body, !dbg !2705

do.body:                                          ; preds = %do.cond, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond ], !dbg !2701
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2698, metadata !DIExpression()), !dbg !2701
  %1 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %bbs, align 8, !dbg !2706
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %1, metadata !2697, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %1, metadata !2697, metadata !DIExpression()), !dbg !2701
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %1, i64 0, i32 0, !dbg !2706
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2698, metadata !DIExpression()), !dbg !2701
  %call1 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %base, i32 %i.0) #8, !dbg !2706
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call1, metadata !2696, metadata !DIExpression()), !dbg !2701
  %call2 = call %struct.basic_block_def* @first_dom_son(i32 %dir, %struct.basic_block_def* %call1) #8, !dbg !2707
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call2, metadata !2699, metadata !DIExpression()), !dbg !2709
  br label %for.cond, !dbg !2710

for.cond:                                         ; preds = %for.body, %do.body
  %son.0 = phi %struct.basic_block_def* [ %call2, %do.body ], [ %call5, %for.body ], !dbg !2711
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %son.0, metadata !2699, metadata !DIExpression()), !dbg !2709
  %tobool3 = icmp eq %struct.basic_block_def* %son.0, null, !dbg !2712
  br i1 %tobool3, label %do.cond, label %for.body, !dbg !2712

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %bbs, metadata !2697, metadata !DIExpression(DW_OP_deref)), !dbg !2701
  %call4 = call fastcc %struct.basic_block_def** @VEC_basic_block_heap_safe_push(%struct.VEC_basic_block_heap** nonnull %bbs, %struct.basic_block_def* nonnull %son.0) #8, !dbg !2713
  %call5 = call %struct.basic_block_def* @next_dom_son(i32 %dir, %struct.basic_block_def* nonnull %son.0) #8, !dbg !2715
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call5, metadata !2699, metadata !DIExpression()), !dbg !2709
  br label %for.cond, !dbg !2716, !llvm.loop !2717

do.cond:                                          ; preds = %for.cond
  %inc = add nuw i32 %i.0, 1, !dbg !2706
  %2 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %bbs, align 8, !dbg !2719
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %2, metadata !2697, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %2, metadata !2697, metadata !DIExpression()), !dbg !2701
  %base8 = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %2, i64 0, i32 0, !dbg !2719
  %call12 = call fastcc i32 @VEC_basic_block_base_length(%struct.VEC_basic_block_base* %base8) #8, !dbg !2719
  %cmp = icmp ult i32 %inc, %call12, !dbg !2720
  br i1 %cmp, label %do.body, label %do.end, !dbg !2721, !llvm.loop !2722

do.end:                                           ; preds = %do.cond
  %3 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %bbs, align 8, !dbg !2724
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %3, metadata !2697, metadata !DIExpression()), !dbg !2701
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2725
  ret %struct.VEC_basic_block_heap* %3, !dbg !2726
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2727 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !2733, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2734, metadata !DIExpression()), !dbg !2735
  br label %land.end, !dbg !2736

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2736
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2736
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2736
  ret %struct.basic_block_def* %0, !dbg !2736
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_basic_block_base_length(%struct.VEC_basic_block_base* %vec_) unnamed_addr #0 !dbg !2737 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !2741, metadata !DIExpression()), !dbg !2742
  %tobool = icmp eq %struct.VEC_basic_block_base* %vec_, null, !dbg !2743
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2743

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !2743
  %0 = load i32, i32* %num, align 8, !dbg !2743
  br label %cond.end, !dbg !2743

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2743
  ret i32 %cond, !dbg !2743
}

; Function Attrs: nounwind uwtable
define dso_local void @redirect_immediate_dominators(i32 %dir, %struct.basic_block_def* %bb, %struct.basic_block_def* %to) local_unnamed_addr #4 !dbg !2744 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !2746, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2747, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %to, metadata !2748, metadata !DIExpression()), !dbg !2753
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !2754
  call void @llvm.dbg.value(metadata i32 %call, metadata !2749, metadata !DIExpression()), !dbg !2753
  %idxprom = zext i32 %call to i64, !dbg !2755
  %arrayidx = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 4, i64 %idxprom, !dbg !2755
  %0 = load %struct.et_node*, %struct.et_node** %arrayidx, align 8, !dbg !2755
  call void @llvm.dbg.value(metadata %struct.et_node* %0, metadata !2750, metadata !DIExpression()), !dbg !2753
  %arrayidx3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %to, i64 0, i32 4, i64 %idxprom, !dbg !2756
  %1 = load %struct.et_node*, %struct.et_node** %arrayidx3, align 8, !dbg !2756
  call void @llvm.dbg.value(metadata %struct.et_node* %1, metadata !2751, metadata !DIExpression()), !dbg !2753
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2757
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2757
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2757
  %arrayidx5 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 8, i64 %idxprom, !dbg !2757
  %4 = load i32, i32* %arrayidx5, align 4, !dbg !2757
  %tobool = icmp eq i32 %4, 0, !dbg !2757
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2757

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 822, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2757
  br label %cond.end, !dbg !2757

cond.end:                                         ; preds = %entry, %cond.true
  %son6 = getelementptr inbounds %struct.et_node, %struct.et_node* %0, i64 0, i32 4, !dbg !2758
  %5 = load %struct.et_node*, %struct.et_node** %son6, align 8, !dbg !2758
  %tobool7 = icmp eq %struct.et_node* %5, null, !dbg !2760
  br i1 %tobool7, label %cleanup.cont, label %while.cond.preheader, !dbg !2761

while.cond.preheader:                             ; preds = %cond.end
  br label %while.cond, !dbg !2762

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %6 = phi %struct.et_node* [ %5, %while.cond.preheader ], [ %.pre, %while.body ], !dbg !2763
  %tobool9 = icmp eq %struct.et_node* %6, null, !dbg !2762
  br i1 %tobool9, label %while.end, label %while.body, !dbg !2762

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.et_node* %6, metadata !2752, metadata !DIExpression()), !dbg !2753
  tail call void @et_split(%struct.et_node* nonnull %6) #6, !dbg !2764
  tail call void @et_set_father(%struct.et_node* nonnull %6, %struct.et_node* %1) #6, !dbg !2766
  %.pre = load %struct.et_node*, %struct.et_node** %son6, align 8, !dbg !2763
  br label %while.cond, !dbg !2762, !llvm.loop !2767

while.end:                                        ; preds = %while.cond
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2769
  %cfg12 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !2769
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg12, align 8, !dbg !2769
  %arrayidx15 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 8, i64 %idxprom, !dbg !2769
  %9 = load i32, i32* %arrayidx15, align 4, !dbg !2769
  %cmp = icmp eq i32 %9, 2, !dbg !2771
  br i1 %cmp, label %if.then16, label %cleanup.cont, !dbg !2772

if.then16:                                        ; preds = %while.end
  store i32 1, i32* %arrayidx15, align 4, !dbg !2773
  br label %cleanup.cont, !dbg !2774

cleanup.cont:                                     ; preds = %cond.end, %if.then16, %while.end
  ret void, !dbg !2775
}

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @nearest_common_dominator(i32 %dir, %struct.basic_block_def* %bb1, %struct.basic_block_def* %bb2) local_unnamed_addr #4 !dbg !2776 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !2780, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb1, metadata !2781, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb2, metadata !2782, metadata !DIExpression()), !dbg !2784
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !2785
  call void @llvm.dbg.value(metadata i32 %call, metadata !2783, metadata !DIExpression()), !dbg !2784
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2786
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2786
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2786
  %idxprom = zext i32 %call to i64, !dbg !2786
  %arrayidx = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 8, i64 %idxprom, !dbg !2786
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2786
  %tobool = icmp eq i32 %2, 0, !dbg !2786
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2786

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 845, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2786
  br label %cond.end, !dbg !2786

cond.end:                                         ; preds = %entry, %cond.true
  %tobool1 = icmp eq %struct.basic_block_def* %bb1, null, !dbg !2787
  br i1 %tobool1, label %cleanup, label %if.end, !dbg !2789

if.end:                                           ; preds = %cond.end
  %tobool2 = icmp eq %struct.basic_block_def* %bb2, null, !dbg !2790
  br i1 %tobool2, label %cleanup, label %if.end4, !dbg !2792

if.end4:                                          ; preds = %if.end
  %arrayidx6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb1, i64 0, i32 4, i64 %idxprom, !dbg !2793
  %3 = load %struct.et_node*, %struct.et_node** %arrayidx6, align 8, !dbg !2793
  %arrayidx9 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb2, i64 0, i32 4, i64 %idxprom, !dbg !2794
  %4 = load %struct.et_node*, %struct.et_node** %arrayidx9, align 8, !dbg !2794
  %call10 = tail call %struct.et_node* @et_nca(%struct.et_node* %3, %struct.et_node* %4) #6, !dbg !2795
  %5 = bitcast %struct.et_node* %call10 to %struct.basic_block_def**, !dbg !2796
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %5, align 8, !dbg !2796
  br label %cleanup, !dbg !2797

cleanup:                                          ; preds = %if.end, %cond.end, %if.end4
  %retval.0 = phi %struct.basic_block_def* [ %6, %if.end4 ], [ %bb2, %cond.end ], [ %bb1, %if.end ], !dbg !2784
  ret %struct.basic_block_def* %retval.0, !dbg !2798
}

declare dso_local %struct.et_node* @et_nca(%struct.et_node*, %struct.et_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @nearest_common_dominator_for_set(i32 %dir, %struct.bitmap_head_def* %blocks) local_unnamed_addr #4 !dbg !2799 {
entry:
  %i = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata i32 %dir, metadata !2803, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks, metadata !2804, metadata !DIExpression()), !dbg !2816
  %0 = bitcast i32* %i to i8*, !dbg !2817
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2817
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2818
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7, !dbg !2818
  %call = tail call i32 @bitmap_first_set_bit(%struct.bitmap_head_def* %blocks) #6, !dbg !2819
  call void @llvm.dbg.value(metadata i32 %call, metadata !2806, metadata !DIExpression()), !dbg !2816
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2820
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2820
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2820
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 2, !dbg !2820
  %4 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !2820
  %tobool = icmp eq %struct.VEC_basic_block_gc* %4, null, !dbg !2820
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2820

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %4, i64 0, i32 0, !dbg !2820
  br label %cond.end, !dbg !2820

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2820
  %call4 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %call) #8, !dbg !2820
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call4, metadata !2815, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i32* %i, metadata !2805, metadata !DIExpression(DW_OP_deref)), !dbg !2816
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2807, metadata !DIExpression(DW_OP_deref)), !dbg !2816
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %blocks, i32 0, i32* nonnull %i) #8, !dbg !2821
  br label %for.cond, !dbg !2821

for.cond:                                         ; preds = %for.inc, %cond.end
  %dom.0 = phi %struct.basic_block_def* [ %call4, %cond.end ], [ %dom.1, %for.inc ], !dbg !2816
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.0, metadata !2815, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i32* %i, metadata !2805, metadata !DIExpression(DW_OP_deref)), !dbg !2816
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2807, metadata !DIExpression(DW_OP_deref)), !dbg !2816
  %call5 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !2823
  %tobool6 = icmp eq i8 %call5, 0, !dbg !2821
  br i1 %tobool6, label %for.end, label %for.body, !dbg !2821

for.body:                                         ; preds = %for.cond
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2825
  %cfg8 = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !2825
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg8, align 8, !dbg !2825
  %x_basic_block_info9 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 2, !dbg !2825
  %7 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info9, align 8, !dbg !2825
  %tobool10 = icmp eq %struct.VEC_basic_block_gc* %7, null, !dbg !2825
  br i1 %tobool10, label %cond.end17, label %cond.true11, !dbg !2825

cond.true11:                                      ; preds = %for.body
  %base15 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %7, i64 0, i32 0, !dbg !2825
  br label %cond.end17, !dbg !2825

cond.end17:                                       ; preds = %for.body, %cond.true11
  %cond18 = phi %struct.VEC_basic_block_base* [ %base15, %cond.true11 ], [ null, %for.body ], !dbg !2825
  %8 = load i32, i32* %i, align 4, !dbg !2825
  call void @llvm.dbg.value(metadata i32 %8, metadata !2805, metadata !DIExpression()), !dbg !2816
  %call19 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond18, i32 %8) #8, !dbg !2825
  %cmp = icmp eq %struct.basic_block_def* %dom.0, %call19, !dbg !2827
  br i1 %cmp, label %for.inc, label %if.then, !dbg !2828

if.then:                                          ; preds = %cond.end17
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2829
  %cfg21 = getelementptr inbounds %struct.function, %struct.function* %9, i64 0, i32 1, !dbg !2829
  %10 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg21, align 8, !dbg !2829
  %x_basic_block_info22 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 2, !dbg !2829
  %11 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info22, align 8, !dbg !2829
  %tobool23 = icmp eq %struct.VEC_basic_block_gc* %11, null, !dbg !2829
  br i1 %tobool23, label %cond.end30, label %cond.true24, !dbg !2829

cond.true24:                                      ; preds = %if.then
  %base28 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %11, i64 0, i32 0, !dbg !2829
  br label %cond.end30, !dbg !2829

cond.end30:                                       ; preds = %if.then, %cond.true24
  %cond31 = phi %struct.VEC_basic_block_base* [ %base28, %cond.true24 ], [ null, %if.then ], !dbg !2829
  %12 = load i32, i32* %i, align 4, !dbg !2829
  call void @llvm.dbg.value(metadata i32 %12, metadata !2805, metadata !DIExpression()), !dbg !2816
  %call32 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond31, i32 %12) #8, !dbg !2829
  %call33 = call %struct.basic_block_def* @nearest_common_dominator(i32 %dir, %struct.basic_block_def* %dom.0, %struct.basic_block_def* %call32) #8, !dbg !2830
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call33, metadata !2815, metadata !DIExpression()), !dbg !2816
  br label %for.inc, !dbg !2831

for.inc:                                          ; preds = %cond.end17, %cond.end30
  %dom.1 = phi %struct.basic_block_def* [ %call33, %cond.end30 ], [ %dom.0, %cond.end17 ], !dbg !2816
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.1, metadata !2815, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i32* %i, metadata !2805, metadata !DIExpression(DW_OP_deref)), !dbg !2816
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2807, metadata !DIExpression(DW_OP_deref)), !dbg !2816
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !2823
  br label %for.cond, !dbg !2823, !llvm.loop !2832

for.end:                                          ; preds = %for.cond
  %dom.0.lcssa = phi %struct.basic_block_def* [ %dom.0, %for.cond ], !dbg !2816
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.0.lcssa, metadata !2815, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.0.lcssa, metadata !2815, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.0.lcssa, metadata !2815, metadata !DIExpression()), !dbg !2816
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7, !dbg !2834
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2834
  ret %struct.basic_block_def* %dom.0.lcssa, !dbg !2835
}

declare dso_local i32 @bitmap_first_set_bit(%struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !2836 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2844, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !2845, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i32 0, metadata !2846, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2847, metadata !DIExpression()), !dbg !2848
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !2849
  %1 = load i64, i64* %0, align 8, !dbg !2849
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !2850
  store i64 %1, i64* %2, align 8, !dbg !2850
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !2851
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !2852
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !2853
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !2856
  br label %while.body, !dbg !2856

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !2857
  br i1 %tobool, label %if.then, label %if.end, !dbg !2858

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !2859
  br label %while.end, !dbg !2861

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !2862

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !2856, !llvm.loop !2863

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !2865

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !2865
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !2867
  %7 = load i32, i32* %indx9, align 8, !dbg !2867
  %cmp11 = icmp eq i32 %7, 0, !dbg !2868
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !2869

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !2870
  %8 = load i32, i32* %indx14, align 8, !dbg !2870
  %mul = shl i32 %8, 7, !dbg !2871
  call void @llvm.dbg.value(metadata i32 %mul, metadata !2846, metadata !DIExpression()), !dbg !2848
  br label %if.end15, !dbg !2872

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !2846, metadata !DIExpression()), !dbg !2848
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !2873
  store i32 0, i32* %word_no, align 8, !dbg !2874
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !2875
  %9 = load i64, i64* %arrayidx, align 8, !dbg !2875
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2876
  store i64 %9, i64* %bits21, align 8, !dbg !2877
  %tobool23 = icmp eq i64 %9, 0, !dbg !2878
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !2878
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !2879
  call void @llvm.dbg.value(metadata i32 %add, metadata !2846, metadata !DIExpression()), !dbg !2848
  store i32 %add, i32* %bit_no, align 4, !dbg !2880
  ret void, !dbg !2881
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !2882 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2886, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2887, metadata !DIExpression()), !dbg !2891
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2892
  %0 = load i64, i64* %bits, align 8, !dbg !2892
  %tobool = icmp eq i64 %0, 0, !dbg !2893
  br i1 %tobool, label %if.end, label %next_bit, !dbg !2894

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !2895
  br label %next_bit, !dbg !2898

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !2888), !dbg !2899
  br label %while.cond, !dbg !2898

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !2900
  %and = and i64 %2, 1, !dbg !2901
  %tobool2 = icmp eq i64 %and, 0, !dbg !2902
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !2898

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !2903
  store i64 %shr, i64* %bits, align 8, !dbg !2903
  %3 = load i32, i32* %bit_no, align 4, !dbg !2905
  %add = add i32 %3, 1, !dbg !2905
  store i32 %add, i32* %bit_no, align 4, !dbg !2905
  %.pre = load i64, i64* %bits, align 8, !dbg !2900
  br label %while.cond, !dbg !2898, !llvm.loop !2906

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !2908
  %sub = add i32 %4, 63, !dbg !2909
  %div = and i32 %sub, -64, !dbg !2910
  store i32 %div, i32* %bit_no, align 4, !dbg !2911
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !2912
  %5 = load i32, i32* %word_no, align 8, !dbg !2913
  %inc = add i32 %5, 1, !dbg !2913
  store i32 %inc, i32* %word_no, align 8, !dbg !2913
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !2914
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !2914
  br label %while.body6, !dbg !2915

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !2916

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !2917
  %cmp = icmp eq i32 %8, 2, !dbg !2918
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !2914
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !2916

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !2895
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !2895
  %10 = load i64, i64* %arrayidx, align 8, !dbg !2895
  store i64 %10, i64* %bits, align 8, !dbg !2919
  %tobool14 = icmp eq i64 %10, 0, !dbg !2920
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !2922

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !2923
  %add17 = add i32 %11, 64, !dbg !2923
  store i32 %add17, i32* %bit_no, align 4, !dbg !2923
  %12 = load i32, i32* %word_no, align 8, !dbg !2924
  %inc19 = add i32 %12, 1, !dbg !2924
  store i32 %inc19, i32* %word_no, align 8, !dbg !2924
  br label %while.cond7, !dbg !2916, !llvm.loop !2925

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !2914
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !2927
  %14 = load i64, i64* %13, align 8, !dbg !2927
  store i64 %14, i64* %6, align 8, !dbg !2928
  %tobool24 = icmp eq i64 %14, 0, !dbg !2929
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !2931

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !2931
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !2932
  %16 = load i32, i32* %indx, align 8, !dbg !2932
  %mul28 = shl i32 %16, 7, !dbg !2933
  store i32 %mul28, i32* %bit_no, align 4, !dbg !2934
  store i32 0, i32* %word_no, align 8, !dbg !2935
  br label %while.body6, !dbg !2915, !llvm.loop !2936

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !2938

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !2938

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !2891
  ret i8 %retval.0, !dbg !2938
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !2939 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2943, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2944, metadata !DIExpression()), !dbg !2945
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2946
  %0 = load i64, i64* %bits, align 8, !dbg !2947
  %shr = lshr i64 %0, 1, !dbg !2947
  store i64 %shr, i64* %bits, align 8, !dbg !2947
  %1 = load i32, i32* %bit_no, align 4, !dbg !2948
  %add = add i32 %1, 1, !dbg !2948
  store i32 %add, i32* %bit_no, align 4, !dbg !2948
  ret void, !dbg !2949
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @dominated_by_p(i32 %dir, %struct.basic_block_def* %bb1, %struct.basic_block_def* %bb2) local_unnamed_addr #4 !dbg !2950 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !2957, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb1, metadata !2958, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb2, metadata !2959, metadata !DIExpression()), !dbg !2963
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !2964
  call void @llvm.dbg.value(metadata i32 %call, metadata !2960, metadata !DIExpression()), !dbg !2963
  %idxprom = zext i32 %call to i64, !dbg !2965
  %arrayidx = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb1, i64 0, i32 4, i64 %idxprom, !dbg !2965
  %0 = load %struct.et_node*, %struct.et_node** %arrayidx, align 8, !dbg !2965
  call void @llvm.dbg.value(metadata %struct.et_node* %0, metadata !2961, metadata !DIExpression()), !dbg !2963
  %arrayidx3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb2, i64 0, i32 4, i64 %idxprom, !dbg !2966
  %1 = load %struct.et_node*, %struct.et_node** %arrayidx3, align 8, !dbg !2966
  call void @llvm.dbg.value(metadata %struct.et_node* %1, metadata !2962, metadata !DIExpression()), !dbg !2963
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2967
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2967
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2967
  %arrayidx5 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 8, i64 %idxprom, !dbg !2967
  %4 = load i32, i32* %arrayidx5, align 4, !dbg !2967
  %tobool = icmp eq i32 %4, 0, !dbg !2967
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2967

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 957, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2967
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2968
  %cfg7.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2970
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg7.phi.trans.insert, align 8, !dbg !2968
  %arrayidx10.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre1, i64 0, i32 8, i64 %idxprom, !dbg !2970
  %.pre2 = load i32, i32* %arrayidx10.phi.trans.insert, align 4, !dbg !2968
  br label %cond.end, !dbg !2967

cond.end:                                         ; preds = %entry, %cond.true
  %5 = phi i32 [ %4, %entry ], [ %.pre2, %cond.true ], !dbg !2968
  %cmp = icmp eq i32 %5, 2, !dbg !2971
  br i1 %cmp, label %if.then, label %if.end, !dbg !2972

if.then:                                          ; preds = %cond.end
  %dfs_num_in = getelementptr inbounds %struct.et_node, %struct.et_node* %0, i64 0, i32 1, !dbg !2973
  %6 = load i32, i32* %dfs_num_in, align 8, !dbg !2973
  %dfs_num_in11 = getelementptr inbounds %struct.et_node, %struct.et_node* %1, i64 0, i32 1, !dbg !2974
  %7 = load i32, i32* %dfs_num_in11, align 8, !dbg !2974
  %cmp12 = icmp slt i32 %6, %7, !dbg !2975
  br i1 %cmp12, label %land.end, label %land.rhs, !dbg !2976

land.rhs:                                         ; preds = %if.then
  %dfs_num_out = getelementptr inbounds %struct.et_node, %struct.et_node* %0, i64 0, i32 2, !dbg !2977
  %8 = load i32, i32* %dfs_num_out, align 4, !dbg !2977
  %dfs_num_out13 = getelementptr inbounds %struct.et_node, %struct.et_node* %1, i64 0, i32 2, !dbg !2978
  %9 = load i32, i32* %dfs_num_out13, align 4, !dbg !2978
  %cmp14 = icmp sle i32 %8, %9, !dbg !2979
  %phitmp = zext i1 %cmp14 to i8
  br label %land.end

land.end:                                         ; preds = %if.then, %land.rhs
  %10 = phi i8 [ 0, %if.then ], [ %phitmp, %land.rhs ]
  br label %cleanup, !dbg !2980

if.end:                                           ; preds = %cond.end
  %call15 = tail call zeroext i8 @et_below(%struct.et_node* %0, %struct.et_node* %1) #6, !dbg !2981
  br label %cleanup, !dbg !2982

cleanup:                                          ; preds = %if.end, %land.end
  %retval.0 = phi i8 [ %10, %land.end ], [ %call15, %if.end ], !dbg !2963
  ret i8 %retval.0, !dbg !2983
}

declare dso_local zeroext i8 @et_below(%struct.et_node*, %struct.et_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @bb_dom_dfs_in(i32 %dir, %struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !2984 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !2988, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2989, metadata !DIExpression()), !dbg !2992
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !2993
  call void @llvm.dbg.value(metadata i32 %call, metadata !2990, metadata !DIExpression()), !dbg !2992
  %idxprom = zext i32 %call to i64, !dbg !2994
  %arrayidx = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 4, i64 %idxprom, !dbg !2994
  %0 = load %struct.et_node*, %struct.et_node** %arrayidx, align 8, !dbg !2994
  call void @llvm.dbg.value(metadata %struct.et_node* %0, metadata !2991, metadata !DIExpression()), !dbg !2992
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2995
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2995
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2995
  %arrayidx2 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 8, i64 %idxprom, !dbg !2995
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !2995
  %cmp = icmp eq i32 %3, 2, !dbg !2995
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2995

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 974, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2995
  br label %cond.end, !dbg !2995

cond.end:                                         ; preds = %entry, %cond.true
  %dfs_num_in = getelementptr inbounds %struct.et_node, %struct.et_node* %0, i64 0, i32 1, !dbg !2996
  %4 = load i32, i32* %dfs_num_in, align 8, !dbg !2996
  ret i32 %4, !dbg !2997
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bb_dom_dfs_out(i32 %dir, %struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !2998 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !3000, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3001, metadata !DIExpression()), !dbg !3004
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !3005
  call void @llvm.dbg.value(metadata i32 %call, metadata !3002, metadata !DIExpression()), !dbg !3004
  %idxprom = zext i32 %call to i64, !dbg !3006
  %arrayidx = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 4, i64 %idxprom, !dbg !3006
  %0 = load %struct.et_node*, %struct.et_node** %arrayidx, align 8, !dbg !3006
  call void @llvm.dbg.value(metadata %struct.et_node* %0, metadata !3003, metadata !DIExpression()), !dbg !3004
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3007
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3007
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3007
  %arrayidx2 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 8, i64 %idxprom, !dbg !3007
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !3007
  %cmp = icmp eq i32 %3, 2, !dbg !3007
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3007

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 986, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3007
  br label %cond.end, !dbg !3007

cond.end:                                         ; preds = %entry, %cond.true
  %dfs_num_out = getelementptr inbounds %struct.et_node, %struct.et_node* %0, i64 0, i32 2, !dbg !3008
  %4 = load i32, i32* %dfs_num_out, align 4, !dbg !3008
  ret i32 %4, !dbg !3009
}

; Function Attrs: nounwind uwtable
define dso_local void @verify_dominators(i32 %dir) local_unnamed_addr #4 !dbg !3010 {
entry:
  %di = alloca %struct.dom_info, align 8
  call void @llvm.dbg.value(metadata i32 %dir, metadata !3012, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i32 0, metadata !3013, metadata !DIExpression()), !dbg !3019
  %0 = bitcast %struct.dom_info* %di to i8*, !dbg !3020
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %0) #7, !dbg !3020
  %cmp = icmp eq i32 %dir, 2, !dbg !3021
  %conv = zext i1 %cmp to i8, !dbg !3022
  call void @llvm.dbg.value(metadata i8 %conv, metadata !3018, metadata !DIExpression()), !dbg !3019
  %call = tail call zeroext i8 @dom_info_available_p(i32 %dir) #8, !dbg !3023
  %tobool = icmp eq i8 %call, 0, !dbg !3023
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3023

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 999, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3023
  br label %cond.end, !dbg !3023

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata %struct.dom_info* %di, metadata !3017, metadata !DIExpression(DW_OP_deref)), !dbg !3019
  call fastcc void @init_dom_info(%struct.dom_info* nonnull %di, i32 %dir) #8, !dbg !3024
  call void @llvm.dbg.value(metadata %struct.dom_info* %di, metadata !3017, metadata !DIExpression(DW_OP_deref)), !dbg !3019
  call fastcc void @calc_dfs_tree(%struct.dom_info* nonnull %di, i8 zeroext %conv) #8, !dbg !3025
  call void @llvm.dbg.value(metadata %struct.dom_info* %di, metadata !3017, metadata !DIExpression(DW_OP_deref)), !dbg !3019
  call fastcc void @calc_idoms(%struct.dom_info* nonnull %di, i8 zeroext %conv) #8, !dbg !3026
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3027
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3027
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3027
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !3027
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3027
  %dfs_to_bb = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 10, !dbg !3029
  %dom = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 5, !dbg !3029
  %dfs_order = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 9, !dbg !3029
  br label %for.cond, !dbg !3027

for.cond:                                         ; preds = %for.inc, %cond.end
  %4 = phi %struct.control_flow_graph* [ %2, %cond.end ], [ %.pre1, %for.inc ], !dbg !3032
  %err.0 = phi i32 [ 0, %cond.end ], [ %err.2, %for.inc ], !dbg !3019
  %.pn = phi %struct.basic_block_def* [ %3, %cond.end ], [ %bb.0, %for.inc ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3033
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3033
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3014, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i32 %err.0, metadata !3013, metadata !DIExpression()), !dbg !3019
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 1, !dbg !3032
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3032
  %cmp4 = icmp eq %struct.basic_block_def* %bb.0, %5, !dbg !3032
  br i1 %cmp4, label %for.end, label %for.body, !dbg !3027

for.body:                                         ; preds = %for.cond
  %call6 = call %struct.basic_block_def* @get_immediate_dominator(i32 %dir, %struct.basic_block_def* %bb.0) #8, !dbg !3034
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call6, metadata !3015, metadata !DIExpression()), !dbg !3019
  %tobool7 = icmp eq %struct.basic_block_def* %call6, null, !dbg !3035
  br i1 %tobool7, label %if.then, label %if.end, !dbg !3037

if.then:                                          ; preds = %for.body
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !3038
  %6 = load i32, i32* %index, align 8, !dbg !3038
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %6) #6, !dbg !3040
  call void @llvm.dbg.value(metadata i32 1, metadata !3013, metadata !DIExpression()), !dbg !3019
  br label %if.end, !dbg !3041

if.end:                                           ; preds = %for.body, %if.then
  %err.1 = phi i32 [ %err.0, %for.body ], [ 1, %if.then ], !dbg !3019
  call void @llvm.dbg.value(metadata i32 %err.1, metadata !3013, metadata !DIExpression()), !dbg !3019
  %7 = load %struct.basic_block_def**, %struct.basic_block_def*** %dfs_to_bb, align 8, !dbg !3042
  %8 = load i32*, i32** %dom, align 8, !dbg !3043
  %9 = load i32*, i32** %dfs_order, align 8, !dbg !3044
  %index8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !3045
  %10 = load i32, i32* %index8, align 8, !dbg !3045
  %idxprom = sext i32 %10 to i64, !dbg !3046
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom, !dbg !3046
  %11 = load i32, i32* %arrayidx, align 4, !dbg !3046
  %idxprom9 = zext i32 %11 to i64, !dbg !3047
  %arrayidx10 = getelementptr inbounds i32, i32* %8, i64 %idxprom9, !dbg !3047
  %12 = load i32, i32* %arrayidx10, align 4, !dbg !3047
  %idxprom11 = zext i32 %12 to i64, !dbg !3048
  %arrayidx12 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %7, i64 %idxprom11, !dbg !3048
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx12, align 8, !dbg !3048
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %13, metadata !3016, metadata !DIExpression()), !dbg !3019
  %cmp13 = icmp eq %struct.basic_block_def* %call6, %13, !dbg !3049
  br i1 %cmp13, label %for.inc, label %if.then15, !dbg !3051

if.then15:                                        ; preds = %if.end
  %index17 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 9, !dbg !3052
  %14 = load i32, i32* %index17, align 8, !dbg !3052
  %index18 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call6, i64 0, i32 9, !dbg !3054
  %15 = load i32, i32* %index18, align 8, !dbg !3054
  call void (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %10, i32 %14, i32 %15) #6, !dbg !3055
  call void @llvm.dbg.value(metadata i32 1, metadata !3013, metadata !DIExpression()), !dbg !3019
  br label %for.inc, !dbg !3056

for.inc:                                          ; preds = %if.end, %if.then15
  %err.2 = phi i32 [ 1, %if.then15 ], [ %err.1, %if.end ], !dbg !3019
  call void @llvm.dbg.value(metadata i32 %err.2, metadata !3013, metadata !DIExpression()), !dbg !3019
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3032
  %cfg3.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3057
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg3.phi.trans.insert, align 8, !dbg !3032
  br label %for.cond, !dbg !3032, !llvm.loop !3058

for.end:                                          ; preds = %for.cond
  %err.0.lcssa = phi i32 [ %err.0, %for.cond ], !dbg !3019
  call void @llvm.dbg.value(metadata i32 %err.0.lcssa, metadata !3013, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i32 %err.0.lcssa, metadata !3013, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i32 %err.0.lcssa, metadata !3013, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata %struct.dom_info* %di, metadata !3017, metadata !DIExpression(DW_OP_deref)), !dbg !3019
  call fastcc void @free_dom_info(%struct.dom_info* nonnull %di) #8, !dbg !3060
  %tobool21 = icmp eq i32 %err.0.lcssa, 0, !dbg !3061
  br i1 %tobool21, label %cond.end24, label %cond.true22, !dbg !3061

cond.true22:                                      ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3061
  br label %cond.end24, !dbg !3061

cond.end24:                                       ; preds = %for.end, %cond.true22
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %0) #7, !dbg !3062
  ret void, !dbg !3062
}

declare dso_local void @error(i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @recompute_dominator(i32 %dir, %struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !3063 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp9 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata i32 %dir, metadata !3065, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3066, metadata !DIExpression()), !dbg !3071
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !3072
  call void @llvm.dbg.value(metadata i32 %call, metadata !3067, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !3068, metadata !DIExpression()), !dbg !3071
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3073
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3073
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3074
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3074
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3075
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !3075
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3075
  %idxprom = zext i32 %call to i64, !dbg !3075
  %arrayidx = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 8, i64 %idxprom, !dbg !3075
  %4 = load i32, i32* %arrayidx, align 4, !dbg !3075
  %tobool = icmp eq i32 %4, 0, !dbg !3075
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3075

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1040, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3075
  br label %cond.end, !dbg !3075

cond.end:                                         ; preds = %entry, %cond.true
  %cmp = icmp eq i32 %dir, 1, !dbg !3076
  br i1 %cmp, label %if.then, label %if.else, !dbg !3078

if.then:                                          ; preds = %cond.end
  %5 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3079
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !3079
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3079
  %call1 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !3079
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3079
  %7 = extractvalue { i32, %struct.VEC_edge_gc** } %call1, 0, !dbg !3079
  store i32 %7, i32* %6, align 8, !dbg !3079
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3079
  %9 = extractvalue { i32, %struct.VEC_edge_gc** } %call1, 1, !dbg !3079
  store %struct.VEC_edge_gc** %9, %struct.VEC_edge_gc*** %8, align 8, !dbg !3079
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !3079
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !3079
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3082
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3082
  br label %for.cond, !dbg !3079

for.cond:                                         ; preds = %for.inc, %if.then
  %dom_bb.0 = phi %struct.basic_block_def* [ null, %if.then ], [ %dom_bb.1, %for.inc ], !dbg !3084
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom_bb.0, metadata !3068, metadata !DIExpression()), !dbg !3071
  %12 = load i32, i32* %10, align 8, !dbg !3085
  %13 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %11, align 8, !dbg !3085
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3069, metadata !DIExpression(DW_OP_deref)), !dbg !3071
  %call2 = call fastcc zeroext i8 @ei_cond(i32 %12, %struct.VEC_edge_gc** %13, %struct.edge_def** nonnull %e) #8, !dbg !3085
  %tobool3 = icmp eq i8 %call2, 0, !dbg !3079
  br i1 %tobool3, label %if.end23.loopexit, label %for.body, !dbg !3079

for.body:                                         ; preds = %for.cond
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3086
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !3069, metadata !DIExpression()), !dbg !3071
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i64 0, i32 0, !dbg !3089
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3089
  %call4 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %15, %struct.basic_block_def* %bb) #8, !dbg !3090
  %tobool5 = icmp eq i8 %call4, 0, !dbg !3090
  br i1 %tobool5, label %if.then6, label %for.inc, !dbg !3091

if.then6:                                         ; preds = %for.body
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3092
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !3069, metadata !DIExpression()), !dbg !3071
  %src7 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 0, !dbg !3093
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %src7, align 8, !dbg !3093
  %call8 = call %struct.basic_block_def* @nearest_common_dominator(i32 1, %struct.basic_block_def* %dom_bb.0, %struct.basic_block_def* %17) #8, !dbg !3094
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call8, metadata !3068, metadata !DIExpression()), !dbg !3071
  br label %for.inc, !dbg !3095

for.inc:                                          ; preds = %for.body, %if.then6
  %dom_bb.1 = phi %struct.basic_block_def* [ %dom_bb.0, %for.body ], [ %call8, %if.then6 ], !dbg !3071
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom_bb.1, metadata !3068, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3070, metadata !DIExpression(DW_OP_deref)), !dbg !3071
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3085
  br label %for.cond, !dbg !3085, !llvm.loop !3096

if.else:                                          ; preds = %cond.end
  %18 = bitcast %struct.edge_iterator* %tmp9 to i8*, !dbg !3098
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #7, !dbg !3098
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3098
  %call10 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3098
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp9, i64 0, i32 0, !dbg !3098
  %20 = extractvalue { i32, %struct.VEC_edge_gc** } %call10, 0, !dbg !3098
  store i32 %20, i32* %19, align 8, !dbg !3098
  %21 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp9, i64 0, i32 1, !dbg !3098
  %22 = extractvalue { i32, %struct.VEC_edge_gc** } %call10, 1, !dbg !3098
  store %struct.VEC_edge_gc** %22, %struct.VEC_edge_gc*** %21, align 8, !dbg !3098
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %18, i64 16, i1 false), !dbg !3098
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #7, !dbg !3098
  %23 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3101
  %24 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3101
  br label %for.cond11, !dbg !3098

for.cond11:                                       ; preds = %for.inc21, %if.else
  %dom_bb.2 = phi %struct.basic_block_def* [ null, %if.else ], [ %dom_bb.3, %for.inc21 ], !dbg !3084
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom_bb.2, metadata !3068, metadata !DIExpression()), !dbg !3071
  %25 = load i32, i32* %23, align 8, !dbg !3103
  %26 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %24, align 8, !dbg !3103
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3069, metadata !DIExpression(DW_OP_deref)), !dbg !3071
  %call12 = call fastcc zeroext i8 @ei_cond(i32 %25, %struct.VEC_edge_gc** %26, %struct.edge_def** nonnull %e) #8, !dbg !3103
  %tobool13 = icmp eq i8 %call12, 0, !dbg !3098
  br i1 %tobool13, label %if.end23.loopexit1, label %for.body14, !dbg !3098

for.body14:                                       ; preds = %for.cond11
  %27 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3104
  call void @llvm.dbg.value(metadata %struct.edge_def* %27, metadata !3069, metadata !DIExpression()), !dbg !3071
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %27, i64 0, i32 1, !dbg !3107
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3107
  %call15 = call zeroext i8 @dominated_by_p(i32 %dir, %struct.basic_block_def* %28, %struct.basic_block_def* %bb) #8, !dbg !3108
  %tobool16 = icmp eq i8 %call15, 0, !dbg !3108
  br i1 %tobool16, label %if.then17, label %for.inc21, !dbg !3109

if.then17:                                        ; preds = %for.body14
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3110
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !3069, metadata !DIExpression()), !dbg !3071
  %dest18 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 1, !dbg !3111
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %dest18, align 8, !dbg !3111
  %call19 = call %struct.basic_block_def* @nearest_common_dominator(i32 %dir, %struct.basic_block_def* %dom_bb.2, %struct.basic_block_def* %30) #8, !dbg !3112
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call19, metadata !3068, metadata !DIExpression()), !dbg !3071
  br label %for.inc21, !dbg !3113

for.inc21:                                        ; preds = %for.body14, %if.then17
  %dom_bb.3 = phi %struct.basic_block_def* [ %dom_bb.2, %for.body14 ], [ %call19, %if.then17 ], !dbg !3071
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom_bb.3, metadata !3068, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3070, metadata !DIExpression(DW_OP_deref)), !dbg !3071
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3103
  br label %for.cond11, !dbg !3103, !llvm.loop !3114

if.end23.loopexit:                                ; preds = %for.cond
  %dom_bb.0.lcssa = phi %struct.basic_block_def* [ %dom_bb.0, %for.cond ], !dbg !3084
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom_bb.0.lcssa, metadata !3068, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom_bb.0.lcssa, metadata !3068, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom_bb.0.lcssa, metadata !3068, metadata !DIExpression()), !dbg !3071
  br label %if.end23, !dbg !3116

if.end23.loopexit1:                               ; preds = %for.cond11
  %dom_bb.2.lcssa = phi %struct.basic_block_def* [ %dom_bb.2, %for.cond11 ], !dbg !3084
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom_bb.2.lcssa, metadata !3068, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom_bb.2.lcssa, metadata !3068, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom_bb.2.lcssa, metadata !3068, metadata !DIExpression()), !dbg !3071
  br label %if.end23, !dbg !3116

if.end23:                                         ; preds = %if.end23.loopexit1, %if.end23.loopexit
  %dom_bb.4 = phi %struct.basic_block_def* [ %dom_bb.0.lcssa, %if.end23.loopexit ], [ %dom_bb.2.lcssa, %if.end23.loopexit1 ], !dbg !3084
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom_bb.4, metadata !3068, metadata !DIExpression()), !dbg !3071
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3116
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3116
  ret %struct.basic_block_def* %dom_bb.4, !dbg !3117
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !3118 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !3122, metadata !DIExpression()), !dbg !3124
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !3125
  store i32 0, i32* %index, align 8, !dbg !3126
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !3127
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !3128
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !3129
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !3129
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !3129
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !3130 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !3136, metadata !DIExpression()), !dbg !3137
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !3138
  %tobool = icmp eq i8 %call, 0, !dbg !3138
  br i1 %tobool, label %if.then, label %if.else, !dbg !3140

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !3141
  br label %return, !dbg !3143

if.else:                                          ; preds = %entry
  br label %return, !dbg !3144

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !3146
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3146
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !3146
  ret i8 %retval.0, !dbg !3147
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3148 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3152, metadata !DIExpression()), !dbg !3153
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3154
  %0 = load i32, i32* %index, align 8, !dbg !3154
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3154
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3154
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #8, !dbg !3154
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3154
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3154

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3154
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3154
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #8, !dbg !3154
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3154
  br label %cond.end, !dbg !3154

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3154
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3154
  %cmp = icmp ult i32 %0, %call2, !dbg !3154
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3154

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3154
  br label %cond.end5, !dbg !3154

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3155
  %inc = add i32 %5, 1, !dbg !3155
  store i32 %inc, i32* %index, align 8, !dbg !3155
  ret void, !dbg !3156
}

; Function Attrs: nounwind uwtable
define dso_local void @iterate_fix_dominators(i32 %dir, %struct.VEC_basic_block_heap* %bbs, i8 zeroext %conservative) local_unnamed_addr #4 !dbg !3157 {
entry:
  %bb = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata i32 %dir, metadata !3161, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %bbs, metadata !3162, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8 %conservative, metadata !3163, metadata !DIExpression()), !dbg !3204
  %0 = bitcast %struct.basic_block_def** %bb to i8*, !dbg !3205
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3205
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !3206
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3206
  %2 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3207
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3207
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !3208
  call void @llvm.dbg.value(metadata i32 %call, metadata !3203, metadata !DIExpression()), !dbg !3204
  %cmp = icmp eq i32 %dir, 1, !dbg !3209
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3209

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1240, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3209
  br label %cond.end, !dbg !3209

cond.end:                                         ; preds = %entry, %cond.true
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3210
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !3210
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3210
  %idxprom = zext i32 %call to i64, !dbg !3210
  %arrayidx = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 8, i64 %idxprom, !dbg !3210
  %5 = load i32, i32* %arrayidx, align 4, !dbg !3210
  %tobool = icmp eq i32 %5, 0, !dbg !3210
  br i1 %tobool, label %cond.true1, label %cond.end3, !dbg !3210

cond.true1:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1241, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3210
  br label %cond.end3, !dbg !3210

cond.end3:                                        ; preds = %cond.end, %cond.true1
  %tobool5 = icmp eq i8 %conservative, 0, !dbg !3211
  br i1 %tobool5, label %for.cond.preheader, label %if.end, !dbg !3213

for.cond.preheader:                               ; preds = %cond.end3
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %bbs, i64 0, i32 0, !dbg !3214
  br label %for.cond, !dbg !3218

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !3219
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3164, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %bb, metadata !3165, metadata !DIExpression(DW_OP_deref)), !dbg !3204
  %call11 = call fastcc i32 @VEC_basic_block_base_iterate(%struct.VEC_basic_block_base* %base, i32 %i.0, %struct.basic_block_def** nonnull %bb) #8, !dbg !3220
  %tobool12 = icmp eq i32 %call11, 0, !dbg !3218
  br i1 %tobool12, label %if.end.loopexit, label %for.body, !dbg !3218

for.body:                                         ; preds = %for.cond
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3221
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %6, metadata !3165, metadata !DIExpression()), !dbg !3204
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %6, %struct.basic_block_def* null) #8, !dbg !3222
  %inc = add i32 %i.0, 1, !dbg !3223
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3164, metadata !DIExpression()), !dbg !3204
  br label %for.cond, !dbg !3224, !llvm.loop !3225

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !3227

if.end:                                           ; preds = %if.end.loopexit, %cond.end3
  call fastcc void @prune_bbs_to_update_dominators(%struct.VEC_basic_block_heap* %bbs, i8 zeroext %conservative) #8, !dbg !3227
  %base15 = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %bbs, i64 0, i32 0, !dbg !3228
  %call19 = call fastcc i32 @VEC_basic_block_base_length(%struct.VEC_basic_block_base* %base15) #8, !dbg !3228
  call void @llvm.dbg.value(metadata i32 %call19, metadata !3191, metadata !DIExpression()), !dbg !3204
  switch i32 %call19, label %if.end33 [
    i32 0, label %cleanup
    i32 1, label %if.then24
  ], !dbg !3229

if.then24:                                        ; preds = %if.end
  %call31 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %base15, i32 0) #8, !dbg !3230
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call31, metadata !3165, metadata !DIExpression()), !dbg !3204
  store %struct.basic_block_def* %call31, %struct.basic_block_def** %bb, align 8, !dbg !3233
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call31, metadata !3165, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call31, metadata !3165, metadata !DIExpression()), !dbg !3204
  %call32 = call %struct.basic_block_def* @recompute_dominator(i32 1, %struct.basic_block_def* %call31) #8, !dbg !3234
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %call31, %struct.basic_block_def* %call32) #8, !dbg !3235
  br label %cleanup, !dbg !3236

if.end33:                                         ; preds = %if.end
  %call34 = call %struct.pointer_map_t* @pointer_map_create() #6, !dbg !3237
  call void @llvm.dbg.value(metadata %struct.pointer_map_t* %call34, metadata !3196, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i32 0, metadata !3164, metadata !DIExpression()), !dbg !3204
  %7 = bitcast %struct.basic_block_def** %bb to i8**, !dbg !3238
  br i1 %tobool5, label %if.end33.split.us, label %if.end33.if.end33.split_crit_edge, !dbg !3242

if.end33.if.end33.split_crit_edge:                ; preds = %if.end33
  br label %for.cond35, !dbg !3242

if.end33.split.us:                                ; preds = %if.end33
  br label %for.cond35.us, !dbg !3242

for.cond35.us:                                    ; preds = %for.body44.us, %if.end33.split.us
  %i.1.us = phi i32 [ 0, %if.end33.split.us ], [ %inc50.us, %for.body44.us ], !dbg !3243
  call void @llvm.dbg.value(metadata i32 %i.1.us, metadata !3164, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %bb, metadata !3165, metadata !DIExpression(DW_OP_deref)), !dbg !3204
  %call42.us = call fastcc i32 @VEC_basic_block_base_iterate(%struct.VEC_basic_block_base* %base15, i32 %i.1.us, %struct.basic_block_def** nonnull %bb) #8, !dbg !3244
  %tobool43.us = icmp eq i32 %call42.us, 0, !dbg !3245
  br i1 %tobool43.us, label %for.end51.us-lcssa.us, label %for.body44.us, !dbg !3245

for.body44.us:                                    ; preds = %for.cond35.us
  %conv.us = zext i32 %i.1.us to i64, !dbg !3246
  %8 = inttoptr i64 %conv.us to i8*, !dbg !3247
  %9 = load i8*, i8** %7, align 8, !dbg !3248
  %call48.us = call i8** @pointer_map_insert(%struct.pointer_map_t* %call34, i8* %9) #6, !dbg !3249
  store i8* %8, i8** %call48.us, align 8, !dbg !3250
  %inc50.us = add i32 %i.1.us, 1, !dbg !3251
  call void @llvm.dbg.value(metadata i32 %inc50.us, metadata !3164, metadata !DIExpression()), !dbg !3204
  br label %for.cond35.us, !dbg !3252, !llvm.loop !3253

for.end51.us-lcssa.us:                            ; preds = %for.cond35.us
  br label %for.end51, !dbg !3255

for.cond35:                                       ; preds = %for.body44, %if.end33.if.end33.split_crit_edge
  %i.1 = phi i32 [ 0, %if.end33.if.end33.split_crit_edge ], [ %inc50, %for.body44 ], !dbg !3243
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !3164, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %bb, metadata !3165, metadata !DIExpression(DW_OP_deref)), !dbg !3204
  %call42 = call fastcc i32 @VEC_basic_block_base_iterate(%struct.VEC_basic_block_base* %base15, i32 %i.1, %struct.basic_block_def** nonnull %bb) #8, !dbg !3244
  %tobool43 = icmp eq i32 %call42, 0, !dbg !3245
  br i1 %tobool43, label %for.end51.us-lcssa, label %for.body44, !dbg !3245

for.body44:                                       ; preds = %for.cond35
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3256
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %10, metadata !3165, metadata !DIExpression()), !dbg !3204
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %10, %struct.basic_block_def* null) #8, !dbg !3258
  %conv = zext i32 %i.1 to i64, !dbg !3246
  %11 = inttoptr i64 %conv to i8*, !dbg !3247
  %12 = load i8*, i8** %7, align 8, !dbg !3248
  %call48 = call i8** @pointer_map_insert(%struct.pointer_map_t* %call34, i8* %12) #6, !dbg !3249
  store i8* %11, i8** %call48, align 8, !dbg !3250
  %inc50 = add i32 %i.1, 1, !dbg !3251
  call void @llvm.dbg.value(metadata i32 %inc50, metadata !3164, metadata !DIExpression()), !dbg !3204
  br label %for.cond35, !dbg !3252, !llvm.loop !3253

for.end51.us-lcssa:                               ; preds = %for.cond35
  br label %for.end51, !dbg !3255

for.end51:                                        ; preds = %for.end51.us-lcssa.us, %for.end51.us-lcssa
  %conv52 = sext i32 %call19 to i64, !dbg !3255
  %13 = inttoptr i64 %conv52 to i8*, !dbg !3259
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3260
  %cfg54 = getelementptr inbounds %struct.function, %struct.function* %14, i64 0, i32 1, !dbg !3260
  %15 = bitcast %struct.control_flow_graph** %cfg54 to i8***, !dbg !3260
  %16 = load i8**, i8*** %15, align 8, !dbg !3260
  %17 = load i8*, i8** %16, align 8, !dbg !3260
  %call55 = call i8** @pointer_map_insert(%struct.pointer_map_t* %call34, i8* %17) #6, !dbg !3261
  store i8* %13, i8** %call55, align 8, !dbg !3262
  %add = add nsw i32 %call19, 1, !dbg !3263
  %call56 = call %struct.graph* @new_graph(i32 %add) #6, !dbg !3264
  call void @llvm.dbg.value(metadata %struct.graph* %call56, metadata !3167, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i32 0, metadata !3192, metadata !DIExpression()), !dbg !3204
  %n_vertices = getelementptr inbounds %struct.graph, %struct.graph* %call56, i64 0, i32 0, !dbg !3265
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %call56, i64 0, i32 1, !dbg !3265
  br label %for.cond57, !dbg !3268

for.cond57:                                       ; preds = %for.body60, %for.end51
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.body60 ], [ 0, %for.end51 ], !dbg !3269
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !3192, metadata !DIExpression()), !dbg !3204
  %18 = load i32, i32* %n_vertices, align 8, !dbg !3270
  %19 = sext i32 %18 to i64, !dbg !3271
  %cmp58 = icmp slt i64 %indvars.iv2, %19, !dbg !3271
  br i1 %cmp58, label %for.body60, label %for.cond67.preheader, !dbg !3272

for.cond67.preheader:                             ; preds = %for.cond57
  %20 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3273
  %21 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3273
  %22 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3273
  %23 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3278
  %24 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3278
  br label %for.cond67, !dbg !3280

for.body60:                                       ; preds = %for.cond57
  %call61 = call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3281
  %25 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !3282
  %data = getelementptr inbounds %struct.vertex, %struct.vertex* %25, i64 %indvars.iv2, i32 4, !dbg !3283
  %26 = bitcast i8** %data to %struct.bitmap_head_def**, !dbg !3284
  store %struct.bitmap_head_def* %call61, %struct.bitmap_head_def** %26, align 8, !dbg !3284
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !3285
  call void @llvm.dbg.value(metadata i32 undef, metadata !3192, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3204
  br label %for.cond57, !dbg !3286, !llvm.loop !3287

for.cond67:                                       ; preds = %for.cond67.preheader, %for.inc103
  %i.2 = phi i32 [ %inc104, %for.inc103 ], [ 0, %for.cond67.preheader ], !dbg !3289
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !3164, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %bb, metadata !3165, metadata !DIExpression(DW_OP_deref)), !dbg !3204
  %call74 = call fastcc i32 @VEC_basic_block_base_iterate(%struct.VEC_basic_block_base* %base15, i32 %i.2, %struct.basic_block_def** nonnull %bb) #8, !dbg !3290
  %tobool75 = icmp eq i32 %call74, 0, !dbg !3280
  br i1 %tobool75, label %for.cond106.preheader, label %for.body76, !dbg !3280

for.cond106.preheader:                            ; preds = %for.cond67
  br label %for.cond106, !dbg !3291

for.body76:                                       ; preds = %for.cond67
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #7, !dbg !3293
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3293
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %27, metadata !3165, metadata !DIExpression()), !dbg !3204
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i64 0, i32 0, !dbg !3293
  %call77 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !3293
  %28 = extractvalue { i32, %struct.VEC_edge_gc** } %call77, 0, !dbg !3293
  store i32 %28, i32* %21, align 8, !dbg !3293
  %29 = extractvalue { i32, %struct.VEC_edge_gc** } %call77, 1, !dbg !3293
  store %struct.VEC_edge_gc** %29, %struct.VEC_edge_gc*** %22, align 8, !dbg !3293
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %20, i64 16, i1 false), !dbg !3293
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #7, !dbg !3293
  br label %for.cond78, !dbg !3293

for.cond78:                                       ; preds = %for.inc101, %for.body76
  %30 = load i32, i32* %23, align 8, !dbg !3294
  %31 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %24, align 8, !dbg !3294
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3194, metadata !DIExpression(DW_OP_deref)), !dbg !3204
  %call79 = call fastcc zeroext i8 @ei_cond(i32 %30, %struct.VEC_edge_gc** %31, %struct.edge_def** nonnull %e) #8, !dbg !3294
  %tobool80 = icmp eq i8 %call79, 0, !dbg !3293
  br i1 %tobool80, label %for.inc103, label %for.body81, !dbg !3293

for.body81:                                       ; preds = %for.cond78
  %32 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3295
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !3194, metadata !DIExpression()), !dbg !3204
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i64 0, i32 0, !dbg !3297
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3297
  %call82 = call fastcc %struct.basic_block_def* @root_of_dom_tree(i32 1, %struct.basic_block_def* %33) #8, !dbg !3298
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call82, metadata !3166, metadata !DIExpression()), !dbg !3204
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3299
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %34, metadata !3165, metadata !DIExpression()), !dbg !3204
  %cmp83 = icmp eq %struct.basic_block_def* %call82, %34, !dbg !3301
  br i1 %cmp83, label %for.inc101, label %if.end86, !dbg !3302

if.end86:                                         ; preds = %for.body81
  %35 = bitcast %struct.basic_block_def* %call82 to i8*, !dbg !3303
  %call87 = call i8** @pointer_map_contains(%struct.pointer_map_t* %call34, i8* %35) #6, !dbg !3304
  %36 = bitcast i8** %call87 to i64*, !dbg !3305
  %37 = load i64, i64* %36, align 8, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %37, metadata !3193, metadata !DIExpression()), !dbg !3204
  %38 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !3306
  %data90 = getelementptr inbounds %struct.vertex, %struct.vertex* %38, i64 %37, i32 4, !dbg !3308
  %39 = bitcast i8** %data90 to %struct.bitmap_head_def**, !dbg !3308
  %40 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %39, align 8, !dbg !3308
  %call91 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %40, i32 %i.2) #6, !dbg !3309
  %tobool92 = icmp eq i32 %call91, 0, !dbg !3309
  br i1 %tobool92, label %if.end94, label %for.inc101, !dbg !3310

if.end94:                                         ; preds = %if.end86
  %41 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !3311
  %data97 = getelementptr inbounds %struct.vertex, %struct.vertex* %41, i64 %37, i32 4, !dbg !3312
  %42 = bitcast i8** %data97 to %struct.bitmap_head_def**, !dbg !3312
  %43 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %42, align 8, !dbg !3312
  %call98 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %43, i32 %i.2) #6, !dbg !3313
  %conv99 = trunc i64 %37 to i32, !dbg !3314
  %call100 = call %struct.graph_edge* @add_edge(%struct.graph* %call56, i32 %conv99, i32 %i.2) #6, !dbg !3315
  br label %for.inc101, !dbg !3316

for.inc101:                                       ; preds = %if.end86, %for.body81, %if.end94
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3195, metadata !DIExpression(DW_OP_deref)), !dbg !3204
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3294
  br label %for.cond78, !dbg !3294, !llvm.loop !3317

for.inc103:                                       ; preds = %for.cond78
  %inc104 = add i32 %i.2, 1, !dbg !3319
  call void @llvm.dbg.value(metadata i32 %inc104, metadata !3164, metadata !DIExpression()), !dbg !3204
  br label %for.cond67, !dbg !3320, !llvm.loop !3321

for.cond106:                                      ; preds = %for.cond106.preheader, %for.body110
  %indvars.iv = phi i64 [ 0, %for.cond106.preheader ], [ %indvars.iv.next, %for.body110 ], !dbg !3323
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3192, metadata !DIExpression()), !dbg !3204
  %44 = load i32, i32* %n_vertices, align 8, !dbg !3324
  %45 = sext i32 %44 to i64, !dbg !3326
  %cmp108 = icmp slt i64 %indvars.iv, %45, !dbg !3326
  br i1 %cmp108, label %for.body110, label %for.end121, !dbg !3291

for.body110:                                      ; preds = %for.cond106
  %46 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !3327
  %data114 = getelementptr inbounds %struct.vertex, %struct.vertex* %46, i64 %indvars.iv, i32 4, !dbg !3327
  %47 = bitcast i8** %data114 to %struct.bitmap_head_def**, !dbg !3327
  %48 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %47, align 8, !dbg !3327
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %48) #6, !dbg !3327
  %49 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !3327
  %data118 = getelementptr inbounds %struct.vertex, %struct.vertex* %49, i64 %indvars.iv, i32 4, !dbg !3327
  store i8* null, i8** %data118, align 8, !dbg !3327
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3328
  call void @llvm.dbg.value(metadata i32 undef, metadata !3192, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3204
  br label %for.cond106, !dbg !3329, !llvm.loop !3330

for.end121:                                       ; preds = %for.cond106
  call void @pointer_map_destroy(%struct.pointer_map_t* %call34) #6, !dbg !3332
  %conv123 = sext i32 %add to i64, !dbg !3333
  %mul = shl nsw i64 %conv123, 2, !dbg !3333
  %call124 = call i8* @xmalloc(i64 %mul) #6, !dbg !3333
  %50 = bitcast i8* %call124 to i32*, !dbg !3333
  call void @llvm.dbg.value(metadata i32* %50, metadata !3201, metadata !DIExpression()), !dbg !3204
  %call128 = call i8* @xmalloc(i64 %mul) #6, !dbg !3334
  %51 = bitcast i8* %call128 to i32*, !dbg !3334
  call void @llvm.dbg.value(metadata i32* %51, metadata !3202, metadata !DIExpression()), !dbg !3204
  %call132 = call i8* @xmalloc(i64 %mul) #6, !dbg !3335
  %52 = bitcast i8* %call132 to i32*, !dbg !3335
  call void @llvm.dbg.value(metadata i32* %52, metadata !3200, metadata !DIExpression()), !dbg !3204
  call void @graphds_domtree(%struct.graph* %call56, i32 %call19, i32* %52, i32* %50, i32* %51) #6, !dbg !3336
  call void @llvm.dbg.value(metadata i32 %call19, metadata !3192, metadata !DIExpression()), !dbg !3204
  br label %for.cond133, !dbg !3337

for.cond133:                                      ; preds = %for.inc139, %for.end121
  %y.2 = phi i32 [ %call19, %for.end121 ], [ %53, %for.inc139 ], !dbg !3339
  call void @llvm.dbg.value(metadata i32 %y.2, metadata !3192, metadata !DIExpression()), !dbg !3204
  %idxprom134 = sext i32 %y.2 to i64, !dbg !3340
  %arrayidx135 = getelementptr inbounds i32, i32* %50, i64 %idxprom134, !dbg !3340
  %53 = load i32, i32* %arrayidx135, align 4, !dbg !3340
  %cmp136 = icmp eq i32 %53, -1, !dbg !3342
  br i1 %cmp136, label %while.cond.preheader, label %for.inc139, !dbg !3343

while.cond.preheader:                             ; preds = %for.cond133
  %y.2.lcssa = phi i32 [ %y.2, %for.cond133 ], !dbg !3339
  call void @llvm.dbg.value(metadata i32 %y.2.lcssa, metadata !3192, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i32 %y.2.lcssa, metadata !3192, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i32 %y.2.lcssa, metadata !3192, metadata !DIExpression()), !dbg !3204
  br label %while.cond, !dbg !3344

for.inc139:                                       ; preds = %for.cond133
  call void @llvm.dbg.value(metadata i32 %53, metadata !3192, metadata !DIExpression()), !dbg !3204
  br label %for.cond133, !dbg !3345, !llvm.loop !3346

while.cond:                                       ; preds = %while.cond.preheader, %if.end162
  %y.3 = phi i32 [ %y.5, %if.end162 ], [ %y.2.lcssa, %while.cond.preheader ], !dbg !3204
  call void @llvm.dbg.value(metadata i32 %y.3, metadata !3192, metadata !DIExpression()), !dbg !3204
  %cmp143 = icmp eq i32 %y.3, -1, !dbg !3348
  br i1 %cmp143, label %while.end163, label %while.body, !dbg !3344

while.body:                                       ; preds = %while.cond
  call fastcc void @determine_dominators_for_sons(%struct.graph* %call56, %struct.VEC_basic_block_heap* %bbs, i32 %y.3, i32* %50, i32* %51) #8, !dbg !3349
  %idxprom145 = sext i32 %y.3 to i64, !dbg !3351
  %arrayidx146 = getelementptr inbounds i32, i32* %51, i64 %idxprom145, !dbg !3351
  %54 = load i32, i32* %arrayidx146, align 4, !dbg !3351
  %cmp147 = icmp eq i32 %54, -1, !dbg !3353
  br i1 %cmp147, label %if.else, label %if.then149, !dbg !3354

if.then149:                                       ; preds = %while.body
  br label %while.cond152, !dbg !3355

while.cond152:                                    ; preds = %while.body157, %if.then149
  %y.4 = phi i32 [ %54, %if.then149 ], [ %55, %while.body157 ], !dbg !3357
  call void @llvm.dbg.value(metadata i32 %y.4, metadata !3192, metadata !DIExpression()), !dbg !3204
  %idxprom153 = sext i32 %y.4 to i64, !dbg !3358
  %arrayidx154 = getelementptr inbounds i32, i32* %50, i64 %idxprom153, !dbg !3358
  %55 = load i32, i32* %arrayidx154, align 4, !dbg !3358
  %cmp155 = icmp eq i32 %55, -1, !dbg !3359
  br i1 %cmp155, label %if.end162.loopexit, label %while.body157, !dbg !3355

while.body157:                                    ; preds = %while.cond152
  br label %while.cond152, !dbg !3355, !llvm.loop !3360

if.else:                                          ; preds = %while.body
  %arrayidx161 = getelementptr inbounds i32, i32* %52, i64 %idxprom145, !dbg !3362
  %56 = load i32, i32* %arrayidx161, align 4, !dbg !3362
  call void @llvm.dbg.value(metadata i32 %56, metadata !3192, metadata !DIExpression()), !dbg !3204
  br label %if.end162

if.end162.loopexit:                               ; preds = %while.cond152
  %y.4.lcssa = phi i32 [ %y.4, %while.cond152 ], !dbg !3357
  call void @llvm.dbg.value(metadata i32 %y.4.lcssa, metadata !3192, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i32 %y.4.lcssa, metadata !3192, metadata !DIExpression()), !dbg !3204
  br label %if.end162, !dbg !3344

if.end162:                                        ; preds = %if.end162.loopexit, %if.else
  %y.5 = phi i32 [ %56, %if.else ], [ %y.4.lcssa, %if.end162.loopexit ], !dbg !3363
  call void @llvm.dbg.value(metadata i32 %y.5, metadata !3192, metadata !DIExpression()), !dbg !3204
  br label %while.cond, !dbg !3344, !llvm.loop !3364

while.end163:                                     ; preds = %while.cond
  call void @free(i8* %call124) #6, !dbg !3366
  call void @free(i8* %call128) #6, !dbg !3367
  call void @free(i8* %call132) #6, !dbg !3368
  call void @free_graph(%struct.graph* %call56) #6, !dbg !3369
  br label %cleanup, !dbg !3370

cleanup:                                          ; preds = %if.end, %while.end163, %if.then24
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3370
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3370
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3370
  ret void, !dbg !3370
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_basic_block_base_iterate(%struct.VEC_basic_block_base* %vec_, i32 %ix_, %struct.basic_block_def** %ptr) unnamed_addr #0 !dbg !3371 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !3375, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3376, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %ptr, metadata !3377, metadata !DIExpression()), !dbg !3378
  %tobool = icmp eq %struct.VEC_basic_block_base* %vec_, null, !dbg !3379
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3379

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !3379
  %0 = load i32, i32* %num, align 8, !dbg !3379
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3379
  br i1 %cmp, label %if.then, label %if.else, !dbg !3381

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3382
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3382
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3382
  br label %return, !dbg !3382

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3384

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.basic_block_def* [ null, %if.else ], [ %1, %if.then ], !dbg !3386
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3386
  store %struct.basic_block_def* %storemerge, %struct.basic_block_def** %ptr, align 8, !dbg !3386
  ret i32 %retval.0, !dbg !3381
}

; Function Attrs: nounwind uwtable
define internal fastcc void @prune_bbs_to_update_dominators(%struct.VEC_basic_block_heap* %bbs, i8 zeroext %conservative) unnamed_addr #4 !dbg !3387 {
entry:
  %bb = alloca %struct.basic_block_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %bbs, metadata !3391, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i8 %conservative, metadata !3392, metadata !DIExpression()), !dbg !3404
  %0 = bitcast %struct.basic_block_def** %bb to i8*, !dbg !3405
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3405
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !3396, metadata !DIExpression()), !dbg !3404
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3406
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3406
  %2 = bitcast %struct.edge_def** %e to i8*, !dbg !3407
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !3407
  call void @llvm.dbg.value(metadata i32 0, metadata !3393, metadata !DIExpression()), !dbg !3404
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %bbs, i64 0, i32 0, !dbg !3408
  %tobool7 = icmp eq i8 %conservative, 0, !dbg !3409
  %3 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3411
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3411
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3411
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3413
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3413
  br label %for.cond.outer, !dbg !3415

for.cond.outer:                                   ; preds = %fail, %entry
  %i.0.ph = phi i32 [ %inc, %fail ], [ 0, %entry ]
  br i1 %tobool7, label %for.cond.outer.split.us, label %for.cond.outer.for.cond.outer.split_crit_edge, !dbg !3416

for.cond.outer.for.cond.outer.split_crit_edge:    ; preds = %for.cond.outer
  br label %for.cond, !dbg !3416

for.cond.outer.split.us:                          ; preds = %for.cond.outer
  br label %for.cond.us, !dbg !3416

for.cond.us:                                      ; preds = %succeed.us, %for.cond.outer.split.us
  call void @llvm.dbg.value(metadata i32 %i.0.ph, metadata !3393, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %bb, metadata !3395, metadata !DIExpression(DW_OP_deref)), !dbg !3404
  %call.us = call fastcc i32 @VEC_basic_block_base_iterate(%struct.VEC_basic_block_base* %base, i32 %i.0.ph, %struct.basic_block_def** nonnull %bb) #8, !dbg !3417
  %tobool1.us = icmp eq i32 %call.us, 0, !dbg !3416
  br i1 %tobool1.us, label %for.end42.us-lcssa.us, label %for.body.us, !dbg !3416

for.body.us:                                      ; preds = %for.cond.us
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3418
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %8, metadata !3395, metadata !DIExpression()), !dbg !3404
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3420
  %cfg.us = getelementptr inbounds %struct.function, %struct.function* %9, i64 0, i32 1, !dbg !3420
  %10 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg.us, align 8, !dbg !3420
  %x_entry_block_ptr.us = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 0, !dbg !3420
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr.us, align 8, !dbg !3420
  %cmp.us = icmp eq %struct.basic_block_def* %8, %11, !dbg !3421
  br i1 %cmp.us, label %succeed.us, label %if.end.us, !dbg !3422

if.end.us:                                        ; preds = %for.body.us
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %8, metadata !3395, metadata !DIExpression()), !dbg !3404
  %call2.us = call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %8) #8, !dbg !3423
  %tobool3.us = icmp eq i8 %call2.us, 0, !dbg !3423
  br i1 %tobool3.us, label %if.end6.us, label %if.then4.us, !dbg !3425

if.then4.us:                                      ; preds = %if.end.us
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3426
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %12, metadata !3395, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %12, metadata !3395, metadata !DIExpression()), !dbg !3404
  %call5.us = call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %12) #8, !dbg !3428
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %12, %struct.basic_block_def* %call5.us) #8, !dbg !3429
  br label %succeed.us, !dbg !3430

if.end6.us:                                       ; preds = %if.end.us
  br label %fail, !dbg !3431

succeed.us:                                       ; preds = %if.then4.us, %for.body.us
  call void @llvm.dbg.label(metadata !3403), !dbg !3432
  %call41.us = call fastcc %struct.basic_block_def* @VEC_basic_block_base_unordered_remove(%struct.VEC_basic_block_base* %base, i32 %i.0.ph) #8, !dbg !3433
  br label %for.cond.us, !dbg !3434, !llvm.loop !3435

for.end42.us-lcssa.us:                            ; preds = %for.cond.us
  br label %for.end42, !dbg !3437

for.cond:                                         ; preds = %for.cond.outer.for.cond.outer.split_crit_edge, %succeed
  call void @llvm.dbg.value(metadata i32 %i.0.ph, metadata !3393, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %bb, metadata !3395, metadata !DIExpression(DW_OP_deref)), !dbg !3404
  %call = call fastcc i32 @VEC_basic_block_base_iterate(%struct.VEC_basic_block_base* %base, i32 %i.0.ph, %struct.basic_block_def** nonnull %bb) #8, !dbg !3417
  %tobool1 = icmp eq i32 %call, 0, !dbg !3416
  br i1 %tobool1, label %for.end42.us-lcssa, label %for.body, !dbg !3416

for.body:                                         ; preds = %for.cond
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3418
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %13, metadata !3395, metadata !DIExpression()), !dbg !3404
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3420
  %cfg = getelementptr inbounds %struct.function, %struct.function* %14, i64 0, i32 1, !dbg !3420
  %15 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3420
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 0, !dbg !3420
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3420
  %cmp = icmp eq %struct.basic_block_def* %13, %16, !dbg !3421
  br i1 %cmp, label %succeed, label %if.end, !dbg !3422

if.end:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %13, metadata !3395, metadata !DIExpression()), !dbg !3404
  %call2 = call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %13) #8, !dbg !3423
  %tobool3 = icmp eq i8 %call2, 0, !dbg !3423
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !3425

if.then4:                                         ; preds = %if.end
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3426
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %17, metadata !3395, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %17, metadata !3395, metadata !DIExpression()), !dbg !3404
  %call5 = call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %17) #8, !dbg !3428
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %17, %struct.basic_block_def* %call5) #8, !dbg !3429
  br label %succeed, !dbg !3430

if.end6:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i8 1, metadata !3394, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !3396, metadata !DIExpression()), !dbg !3404
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !3438
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3438
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %18, metadata !3395, metadata !DIExpression()), !dbg !3404
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i64 0, i32 0, !dbg !3438
  %call10 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !3438
  %19 = extractvalue { i32, %struct.VEC_edge_gc** } %call10, 0, !dbg !3438
  store i32 %19, i32* %4, align 8, !dbg !3438
  %20 = extractvalue { i32, %struct.VEC_edge_gc** } %call10, 1, !dbg !3438
  store %struct.VEC_edge_gc** %20, %struct.VEC_edge_gc*** %5, align 8, !dbg !3438
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !3438
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !3438
  br label %for.cond11, !dbg !3438

for.cond11:                                       ; preds = %for.inc, %if.end6
  %single.0 = phi i8 [ 1, %if.end6 ], [ %single.2, %for.inc ], !dbg !3439
  %dom.0 = phi %struct.basic_block_def* [ null, %if.end6 ], [ %dom.2, %for.inc ], !dbg !3440
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.0, metadata !3396, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i8 %single.0, metadata !3394, metadata !DIExpression()), !dbg !3404
  %21 = load i32, i32* %6, align 8, !dbg !3441
  %22 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %7, align 8, !dbg !3441
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3398, metadata !DIExpression(DW_OP_deref)), !dbg !3404
  %call12 = call fastcc zeroext i8 @ei_cond(i32 %21, %struct.VEC_edge_gc** %22, %struct.edge_def** nonnull %e) #8, !dbg !3441
  %tobool13 = icmp eq i8 %call12, 0, !dbg !3438
  br i1 %tobool13, label %for.end, label %for.body14, !dbg !3438

for.body14:                                       ; preds = %for.cond11
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3442
  call void @llvm.dbg.value(metadata %struct.edge_def* %23, metadata !3398, metadata !DIExpression()), !dbg !3404
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i64 0, i32 0, !dbg !3445
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3445
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3446
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %25, metadata !3395, metadata !DIExpression()), !dbg !3404
  %call15 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %24, %struct.basic_block_def* %25) #8, !dbg !3447
  %tobool16 = icmp eq i8 %call15, 0, !dbg !3447
  br i1 %tobool16, label %if.end18, label %for.inc, !dbg !3448

if.end18:                                         ; preds = %for.body14
  %tobool19 = icmp eq %struct.basic_block_def* %dom.0, null, !dbg !3449
  %26 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3451
  call void @llvm.dbg.value(metadata %struct.edge_def* %26, metadata !3398, metadata !DIExpression()), !dbg !3404
  %src22 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i64 0, i32 0, !dbg !3451
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %src22, align 8, !dbg !3451
  br i1 %tobool19, label %for.inc, label %if.else, !dbg !3452

if.else:                                          ; preds = %if.end18
  call void @llvm.dbg.value(metadata i8 0, metadata !3394, metadata !DIExpression()), !dbg !3404
  %call23 = call %struct.basic_block_def* @nearest_common_dominator(i32 1, %struct.basic_block_def* nonnull %dom.0, %struct.basic_block_def* %27) #8, !dbg !3453
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call23, metadata !3396, metadata !DIExpression()), !dbg !3404
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %for.body14, %if.else
  %single.2 = phi i8 [ %single.0, %for.body14 ], [ 0, %if.else ], [ %single.0, %if.end18 ], !dbg !3455
  %dom.2 = phi %struct.basic_block_def* [ %dom.0, %for.body14 ], [ %call23, %if.else ], [ %27, %if.end18 ], !dbg !3455
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.2, metadata !3396, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i8 %single.2, metadata !3394, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3397, metadata !DIExpression(DW_OP_deref)), !dbg !3404
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3441
  br label %for.cond11, !dbg !3441, !llvm.loop !3456

for.end:                                          ; preds = %for.cond11
  %single.0.lcssa = phi i8 [ %single.0, %for.cond11 ], !dbg !3439
  %dom.0.lcssa = phi %struct.basic_block_def* [ %dom.0, %for.cond11 ], !dbg !3440
  call void @llvm.dbg.value(metadata i8 %single.0.lcssa, metadata !3394, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.0.lcssa, metadata !3396, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i8 %single.0.lcssa, metadata !3394, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.0.lcssa, metadata !3396, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i8 %single.0.lcssa, metadata !3394, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.0.lcssa, metadata !3396, metadata !DIExpression()), !dbg !3404
  %cmp25 = icmp eq %struct.basic_block_def* %dom.0.lcssa, null, !dbg !3458
  br i1 %cmp25, label %cond.true26, label %cond.end28, !dbg !3458

cond.true26:                                      ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3458
  br label %cond.end28, !dbg !3458

cond.end28:                                       ; preds = %for.end, %cond.true26
  %tobool30 = icmp eq i8 %single.0.lcssa, 0, !dbg !3459
  br i1 %tobool30, label %lor.lhs.false, label %if.then33, !dbg !3461

lor.lhs.false:                                    ; preds = %cond.end28
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3462
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %28, metadata !3395, metadata !DIExpression()), !dbg !3404
  %call31 = call %struct.edge_def* @find_edge(%struct.basic_block_def* %dom.0.lcssa, %struct.basic_block_def* %28) #6, !dbg !3463
  %tobool32 = icmp eq %struct.edge_def* %call31, null, !dbg !3463
  br i1 %tobool32, label %fail.us-lcssa, label %if.then33, !dbg !3464

if.then33:                                        ; preds = %lor.lhs.false, %cond.end28
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3465
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %29, metadata !3395, metadata !DIExpression()), !dbg !3404
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %29, %struct.basic_block_def* %dom.0.lcssa) #8, !dbg !3467
  br label %succeed, !dbg !3468

fail.us-lcssa:                                    ; preds = %lor.lhs.false
  br label %fail, !dbg !3431

fail:                                             ; preds = %if.end6.us, %fail.us-lcssa
  call void @llvm.dbg.label(metadata !3399), !dbg !3469
  %inc = add i32 %i.0.ph, 1, !dbg !3431
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3393, metadata !DIExpression()), !dbg !3404
  br label %for.cond.outer, !dbg !3470, !llvm.loop !3435

succeed:                                          ; preds = %for.body, %if.then33, %if.then4
  call void @llvm.dbg.label(metadata !3403), !dbg !3432
  %call41 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_unordered_remove(%struct.VEC_basic_block_base* %base, i32 %i.0.ph) #8, !dbg !3433
  br label %for.cond, !dbg !3434, !llvm.loop !3435

for.end42.us-lcssa:                               ; preds = %for.cond
  br label %for.end42, !dbg !3437

for.end42:                                        ; preds = %for.end42.us-lcssa.us, %for.end42.us-lcssa
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !3437
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3437
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3437
  ret void, !dbg !3437
}

declare dso_local %struct.pointer_map_t* @pointer_map_create() local_unnamed_addr #1

declare dso_local i8** @pointer_map_insert(%struct.pointer_map_t*, i8*) local_unnamed_addr #1

declare dso_local %struct.graph* @new_graph(i32) local_unnamed_addr #1

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.basic_block_def* @root_of_dom_tree(i32 %dir, %struct.basic_block_def* %bb) unnamed_addr #4 !dbg !3471 {
entry:
  call void @llvm.dbg.value(metadata i32 1, metadata !3473, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3474, metadata !DIExpression()), !dbg !3475
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 1) #8, !dbg !3476
  %idxprom = zext i32 %call to i64, !dbg !3477
  %arrayidx = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 4, i64 %idxprom, !dbg !3477
  %0 = load %struct.et_node*, %struct.et_node** %arrayidx, align 8, !dbg !3477
  %call1 = tail call %struct.et_node* @et_root(%struct.et_node* %0) #6, !dbg !3478
  %1 = bitcast %struct.et_node* %call1 to %struct.basic_block_def**, !dbg !3479
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %1, align 8, !dbg !3479
  ret %struct.basic_block_def* %2, !dbg !3480
}

declare dso_local i8** @pointer_map_contains(%struct.pointer_map_t*, i8*) local_unnamed_addr #1

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local %struct.graph_edge* @add_edge(%struct.graph*, i32, i32) local_unnamed_addr #1

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @pointer_map_destroy(%struct.pointer_map_t*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local void @graphds_domtree(%struct.graph*, i32, i32*, i32*, i32*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @determine_dominators_for_sons(%struct.graph* %g, %struct.VEC_basic_block_heap* %bbs, i32 %y, i32* %son, i32* %brother) unnamed_addr #4 !dbg !3481 {
entry:
  %a = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.graph* %g, metadata !3485, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %bbs, metadata !3486, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i32 %y, metadata !3487, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i32* %son, metadata !3488, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i32* %brother, metadata !3489, metadata !DIExpression()), !dbg !3501
  %0 = bitcast i32* %a to i8*, !dbg !3502
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !3502
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !3503
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3503
  %2 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3504
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3504
  %idxprom = sext i32 %y to i64, !dbg !3505
  %arrayidx = getelementptr inbounds i32, i32* %son, i64 %idxprom, !dbg !3505
  %3 = load i32, i32* %arrayidx, align 4, !dbg !3505
  %cmp = icmp eq i32 %3, -1, !dbg !3507
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3508

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %bbs, i64 0, i32 0, !dbg !3509
  %call = tail call fastcc i32 @VEC_basic_block_base_length(%struct.VEC_basic_block_base* %base) #8, !dbg !3509
  %cmp1 = icmp eq i32 %call, %y, !dbg !3511
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !3512

if.then2:                                         ; preds = %if.end
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3513
  %cfg = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !3513
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3513
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 0, !dbg !3513
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3513
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %6, metadata !3497, metadata !DIExpression()), !dbg !3501
  br label %if.end10, !dbg !3514

if.else:                                          ; preds = %if.end
  %call9 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %base, i32 %y) #8, !dbg !3515
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call9, metadata !3497, metadata !DIExpression()), !dbg !3501
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then2
  %ybb.0 = phi %struct.basic_block_def* [ %6, %if.then2 ], [ %call9, %if.else ], !dbg !3516
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %ybb.0, metadata !3497, metadata !DIExpression()), !dbg !3501
  %7 = load i32, i32* %arrayidx, align 4, !dbg !3517
  %idxprom13 = sext i32 %7 to i64, !dbg !3519
  %arrayidx14 = getelementptr inbounds i32, i32* %brother, i64 %idxprom13, !dbg !3519
  %8 = load i32, i32* %arrayidx14, align 4, !dbg !3519
  %cmp15 = icmp eq i32 %8, -1, !dbg !3520
  br i1 %cmp15, label %if.then16, label %if.end29, !dbg !3521

if.then16:                                        ; preds = %if.end10
  %call25 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %base, i32 %7) #8, !dbg !3522
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call25, metadata !3495, metadata !DIExpression()), !dbg !3501
  %call26 = tail call %struct.basic_block_def* @recompute_dominator(i32 1, %struct.basic_block_def* %call25) #8, !dbg !3524
  tail call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %call25, %struct.basic_block_def* %call26) #8, !dbg !3525
  %9 = load i32, i32* %arrayidx, align 4, !dbg !3526
  tail call void @identify_vertices(%struct.graph* %g, i32 %y, i32 %9) #6, !dbg !3527
  br label %cleanup, !dbg !3528

if.end29:                                         ; preds = %if.end10
  %call30 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3529
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call30, metadata !3490, metadata !DIExpression()), !dbg !3501
  br label %for.cond, !dbg !3530

for.cond:                                         ; preds = %for.body, %if.end29
  %storemerge.in = phi i32* [ %arrayidx, %if.end29 ], [ %arrayidx36, %for.body ]
  %storemerge = load i32, i32* %storemerge.in, align 4, !dbg !3532
  call void @llvm.dbg.value(metadata i32 %storemerge, metadata !3492, metadata !DIExpression()), !dbg !3501
  %cmp33 = icmp eq i32 %storemerge, -1, !dbg !3533
  br i1 %cmp33, label %for.end, label %for.body, !dbg !3535

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 %storemerge, metadata !3492, metadata !DIExpression()), !dbg !3501
  %call34 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call30, i32 %storemerge) #6, !dbg !3536
  call void @llvm.dbg.value(metadata i32 %storemerge, metadata !3492, metadata !DIExpression()), !dbg !3501
  %idxprom35 = sext i32 %storemerge to i64, !dbg !3537
  %arrayidx36 = getelementptr inbounds i32, i32* %brother, i64 %idxprom35, !dbg !3537
  br label %for.cond, !dbg !3538, !llvm.loop !3539

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %a, align 4, !dbg !3532
  %call37 = tail call i32 @graphds_scc(%struct.graph* %g, %struct.bitmap_head_def* %call30) #6, !dbg !3541
  call void @llvm.dbg.value(metadata i32 %call37, metadata !3493, metadata !DIExpression()), !dbg !3501
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call30) #6, !dbg !3542
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3490, metadata !DIExpression()), !dbg !3501
  %conv = sext i32 %call37 to i64, !dbg !3543
  %call38 = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !3543
  %10 = bitcast i8* %call38 to %struct.VEC_int_heap**, !dbg !3543
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %10, metadata !3494, metadata !DIExpression()), !dbg !3501
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %g, i64 0, i32 1, !dbg !3544
  br label %for.cond41, !dbg !3547

for.cond41:                                       ; preds = %for.body44, %for.end
  %storemerge1.in = phi i32* [ %arrayidx, %for.end ], [ %arrayidx52, %for.body44 ]
  %storemerge1 = load i32, i32* %storemerge1.in, align 4, !dbg !3548
  store i32 %storemerge1, i32* %a, align 4, !dbg !3548
  call void @llvm.dbg.value(metadata i32 %storemerge1, metadata !3492, metadata !DIExpression()), !dbg !3501
  %cmp42 = icmp eq i32 %storemerge1, -1, !dbg !3549
  br i1 %cmp42, label %for.end53, label %for.body44, !dbg !3550

for.body44:                                       ; preds = %for.cond41
  %11 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !3551
  call void @llvm.dbg.value(metadata i32 %storemerge1, metadata !3492, metadata !DIExpression()), !dbg !3501
  %idxprom45 = sext i32 %storemerge1 to i64, !dbg !3551
  %component = getelementptr inbounds %struct.vertex, %struct.vertex* %11, i64 %idxprom45, i32 2, !dbg !3551
  %12 = load i32, i32* %component, align 8, !dbg !3551
  %idxprom47 = sext i32 %12 to i64, !dbg !3551
  %arrayidx48 = getelementptr inbounds %struct.VEC_int_heap*, %struct.VEC_int_heap** %10, i64 %idxprom47, !dbg !3551
  call void @llvm.dbg.value(metadata i32 %storemerge1, metadata !3492, metadata !DIExpression()), !dbg !3501
  %call49 = tail call fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** %arrayidx48, i32 %storemerge1) #8, !dbg !3551
  call void @llvm.dbg.value(metadata i32 %storemerge1, metadata !3492, metadata !DIExpression()), !dbg !3501
  %arrayidx52 = getelementptr inbounds i32, i32* %brother, i64 %idxprom45, !dbg !3552
  br label %for.cond41, !dbg !3553, !llvm.loop !3554

for.end53:                                        ; preds = %for.cond41
  call void @llvm.dbg.value(metadata i32 %call37, metadata !3491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3501
  %13 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3556
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3556
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3556
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3564
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3564
  %18 = sext i32 %call37 to i64, !dbg !3566
  br label %for.cond54, !dbg !3566

for.cond54:                                       ; preds = %for.inc125, %for.end53
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc125 ], [ %18, %for.end53 ]
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, -1, !dbg !3567
  call void @llvm.dbg.value(metadata i32 undef, metadata !3491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3501
  %cmp55 = icmp sgt i64 %indvars.iv3, 0, !dbg !3568
  br i1 %cmp55, label %for.cond58.preheader, label %for.cond127.preheader, !dbg !3569

for.cond58.preheader:                             ; preds = %for.cond54
  %arrayidx60 = getelementptr inbounds %struct.VEC_int_heap*, %struct.VEC_int_heap** %10, i64 %indvars.iv.next4, !dbg !3570
  br label %for.cond58, !dbg !3571

for.cond127.preheader:                            ; preds = %for.cond54
  %19 = sext i32 %call37 to i64, !dbg !3572
  br label %for.cond127, !dbg !3572

for.cond58:                                       ; preds = %for.cond58.preheader, %for.inc93
  %dom.0 = phi %struct.basic_block_def* [ %dom.1.lcssa, %for.inc93 ], [ null, %for.cond58.preheader ], !dbg !3574
  %si.0 = phi i32 [ %inc, %for.inc93 ], [ 0, %for.cond58.preheader ], !dbg !3575
  call void @llvm.dbg.value(metadata i32 %si.0, metadata !3498, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.0, metadata !3496, metadata !DIExpression()), !dbg !3501
  %20 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %arrayidx60, align 8, !dbg !3576
  %tobool61 = icmp eq %struct.VEC_int_heap* %20, null, !dbg !3576
  br i1 %tobool61, label %cond.end67, label %cond.true62, !dbg !3576

cond.true62:                                      ; preds = %for.cond58
  %base65 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %20, i64 0, i32 0, !dbg !3576
  br label %cond.end67, !dbg !3576

cond.end67:                                       ; preds = %for.cond58, %cond.true62
  %cond68 = phi %struct.VEC_int_base* [ %base65, %cond.true62 ], [ null, %for.cond58 ], !dbg !3576
  call void @llvm.dbg.value(metadata i32* %a, metadata !3492, metadata !DIExpression(DW_OP_deref)), !dbg !3501
  %call69 = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond68, i32 %si.0, i32* nonnull %a) #8, !dbg !3576
  %tobool70 = icmp eq i32 %call69, 0, !dbg !3571
  br i1 %tobool70, label %for.end94, label %for.body71, !dbg !3571

for.body71:                                       ; preds = %cond.end67
  %21 = load i32, i32* %a, align 4, !dbg !3577
  call void @llvm.dbg.value(metadata i32 %21, metadata !3492, metadata !DIExpression()), !dbg !3501
  %call78 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %base, i32 %21) #8, !dbg !3577
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call78, metadata !3495, metadata !DIExpression()), !dbg !3501
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #7, !dbg !3578
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call78, i64 0, i32 0, !dbg !3578
  %call79 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !3578
  %22 = extractvalue { i32, %struct.VEC_edge_gc** } %call79, 0, !dbg !3578
  store i32 %22, i32* %14, align 8, !dbg !3578
  %23 = extractvalue { i32, %struct.VEC_edge_gc** } %call79, 1, !dbg !3578
  store %struct.VEC_edge_gc** %23, %struct.VEC_edge_gc*** %15, align 8, !dbg !3578
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %13, i64 16, i1 false), !dbg !3578
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #7, !dbg !3578
  br label %for.cond80, !dbg !3578

for.cond80:                                       ; preds = %for.inc91, %for.body71
  %dom.1 = phi %struct.basic_block_def* [ %dom.0, %for.body71 ], [ %dom.2, %for.inc91 ], !dbg !3574
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.1, metadata !3496, metadata !DIExpression()), !dbg !3501
  %24 = load i32, i32* %16, align 8, !dbg !3579
  %25 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %17, align 8, !dbg !3579
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3499, metadata !DIExpression(DW_OP_deref)), !dbg !3501
  %call81 = call fastcc zeroext i8 @ei_cond(i32 %24, %struct.VEC_edge_gc** %25, %struct.edge_def** nonnull %e) #8, !dbg !3579
  %tobool82 = icmp eq i8 %call81, 0, !dbg !3578
  br i1 %tobool82, label %for.inc93, label %for.body83, !dbg !3578

for.body83:                                       ; preds = %for.cond80
  %26 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3580
  call void @llvm.dbg.value(metadata %struct.edge_def* %26, metadata !3499, metadata !DIExpression()), !dbg !3501
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i64 0, i32 0, !dbg !3583
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3583
  %call84 = call fastcc %struct.basic_block_def* @root_of_dom_tree(i32 1, %struct.basic_block_def* %27) #8, !dbg !3584
  %cmp85 = icmp eq %struct.basic_block_def* %call84, %ybb.0, !dbg !3585
  br i1 %cmp85, label %if.end88, label %for.inc91, !dbg !3586

if.end88:                                         ; preds = %for.body83
  %28 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3587
  call void @llvm.dbg.value(metadata %struct.edge_def* %28, metadata !3499, metadata !DIExpression()), !dbg !3501
  %src89 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %28, i64 0, i32 0, !dbg !3588
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %src89, align 8, !dbg !3588
  %call90 = call %struct.basic_block_def* @nearest_common_dominator(i32 1, %struct.basic_block_def* %dom.1, %struct.basic_block_def* %29) #8, !dbg !3589
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call90, metadata !3496, metadata !DIExpression()), !dbg !3501
  br label %for.inc91, !dbg !3590

for.inc91:                                        ; preds = %for.body83, %if.end88
  %dom.2 = phi %struct.basic_block_def* [ %call90, %if.end88 ], [ %dom.1, %for.body83 ], !dbg !3591
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.2, metadata !3496, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3500, metadata !DIExpression(DW_OP_deref)), !dbg !3501
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3579
  br label %for.cond80, !dbg !3579, !llvm.loop !3592

for.inc93:                                        ; preds = %for.cond80
  %dom.1.lcssa = phi %struct.basic_block_def* [ %dom.1, %for.cond80 ], !dbg !3574
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.1.lcssa, metadata !3496, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.1.lcssa, metadata !3496, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.1.lcssa, metadata !3496, metadata !DIExpression()), !dbg !3501
  %inc = add i32 %si.0, 1, !dbg !3594
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3498, metadata !DIExpression()), !dbg !3501
  br label %for.cond58, !dbg !3595, !llvm.loop !3596

for.end94:                                        ; preds = %cond.end67
  %dom.0.lcssa = phi %struct.basic_block_def* [ %dom.0, %cond.end67 ], !dbg !3574
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.0.lcssa, metadata !3496, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.0.lcssa, metadata !3496, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dom.0.lcssa, metadata !3496, metadata !DIExpression()), !dbg !3501
  %cmp95 = icmp eq %struct.basic_block_def* %dom.0.lcssa, null, !dbg !3598
  br i1 %cmp95, label %cond.true97, label %cond.end99, !dbg !3598

cond.true97:                                      ; preds = %for.end94
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3598
  br label %cond.end99, !dbg !3598

cond.end99:                                       ; preds = %for.end94, %cond.true97
  call void @llvm.dbg.value(metadata i32 0, metadata !3498, metadata !DIExpression()), !dbg !3501
  br label %for.cond101, !dbg !3599

for.cond101:                                      ; preds = %for.body114, %cond.end99
  %si.1 = phi i32 [ 0, %cond.end99 ], [ %inc123, %for.body114 ], !dbg !3601
  call void @llvm.dbg.value(metadata i32 %si.1, metadata !3498, metadata !DIExpression()), !dbg !3501
  %30 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %arrayidx60, align 8, !dbg !3602
  %tobool104 = icmp eq %struct.VEC_int_heap* %30, null, !dbg !3602
  br i1 %tobool104, label %cond.end110, label %cond.true105, !dbg !3602

cond.true105:                                     ; preds = %for.cond101
  %base108 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %30, i64 0, i32 0, !dbg !3602
  br label %cond.end110, !dbg !3602

cond.end110:                                      ; preds = %for.cond101, %cond.true105
  %cond111 = phi %struct.VEC_int_base* [ %base108, %cond.true105 ], [ null, %for.cond101 ], !dbg !3602
  call void @llvm.dbg.value(metadata i32* %a, metadata !3492, metadata !DIExpression(DW_OP_deref)), !dbg !3501
  %call112 = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond111, i32 %si.1, i32* nonnull %a) #8, !dbg !3602
  %tobool113 = icmp eq i32 %call112, 0, !dbg !3604
  br i1 %tobool113, label %for.inc125, label %for.body114, !dbg !3604

for.body114:                                      ; preds = %cond.end110
  %31 = load i32, i32* %a, align 4, !dbg !3605
  call void @llvm.dbg.value(metadata i32 %31, metadata !3492, metadata !DIExpression()), !dbg !3501
  %call121 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %base, i32 %31) #8, !dbg !3605
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call121, metadata !3495, metadata !DIExpression()), !dbg !3501
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %call121, %struct.basic_block_def* %dom.0.lcssa) #8, !dbg !3607
  %inc123 = add i32 %si.1, 1, !dbg !3608
  call void @llvm.dbg.value(metadata i32 %inc123, metadata !3498, metadata !DIExpression()), !dbg !3501
  br label %for.cond101, !dbg !3609, !llvm.loop !3610

for.inc125:                                       ; preds = %cond.end110
  call void @llvm.dbg.value(metadata i32 undef, metadata !3491, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3501
  br label %for.cond54, !dbg !3612, !llvm.loop !3613

for.cond127:                                      ; preds = %for.cond127.preheader, %for.body130
  %indvars.iv = phi i64 [ 0, %for.cond127.preheader ], [ %indvars.iv.next, %for.body130 ], !dbg !3615
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3491, metadata !DIExpression()), !dbg !3501
  %cmp128 = icmp slt i64 %indvars.iv, %19, !dbg !3616
  br i1 %cmp128, label %for.body130, label %for.end135, !dbg !3572

for.body130:                                      ; preds = %for.cond127
  %arrayidx132 = getelementptr inbounds %struct.VEC_int_heap*, %struct.VEC_int_heap** %10, i64 %indvars.iv, !dbg !3618
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %arrayidx132) #8, !dbg !3618
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3619
  call void @llvm.dbg.value(metadata i32 undef, metadata !3491, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3501
  br label %for.cond127, !dbg !3620, !llvm.loop !3621

for.end135:                                       ; preds = %for.cond127
  call void @free(i8* %call38) #6, !dbg !3623
  br label %for.cond138, !dbg !3624

for.cond138:                                      ; preds = %for.body141, %for.end135
  %storemerge2.in = phi i32* [ %arrayidx, %for.end135 ], [ %arrayidx144, %for.body141 ]
  %storemerge2 = load i32, i32* %storemerge2.in, align 4, !dbg !3626
  store i32 %storemerge2, i32* %a, align 4, !dbg !3626
  call void @llvm.dbg.value(metadata i32 %storemerge2, metadata !3492, metadata !DIExpression()), !dbg !3501
  %cmp139 = icmp eq i32 %storemerge2, -1, !dbg !3627
  br i1 %cmp139, label %cleanup.loopexit, label %for.body141, !dbg !3629

for.body141:                                      ; preds = %for.cond138
  call void @llvm.dbg.value(metadata i32 %storemerge2, metadata !3492, metadata !DIExpression()), !dbg !3501
  call void @identify_vertices(%struct.graph* %g, i32 %y, i32 %storemerge2) #6, !dbg !3630
  %32 = load i32, i32* %a, align 4, !dbg !3631
  call void @llvm.dbg.value(metadata i32 %32, metadata !3492, metadata !DIExpression()), !dbg !3501
  %idxprom143 = sext i32 %32 to i64, !dbg !3632
  %arrayidx144 = getelementptr inbounds i32, i32* %brother, i64 %idxprom143, !dbg !3632
  br label %for.cond138, !dbg !3633, !llvm.loop !3634

cleanup.loopexit:                                 ; preds = %for.cond138
  br label %cleanup, !dbg !3636

cleanup:                                          ; preds = %cleanup.loopexit, %entry, %if.then16
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3636
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3636
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !3636
  ret void, !dbg !3636
}

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local void @free_graph(%struct.graph*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @add_to_dominance_info(i32 %dir, %struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !3637 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !3641, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3642, metadata !DIExpression()), !dbg !3644
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !3645
  call void @llvm.dbg.value(metadata i32 %call, metadata !3643, metadata !DIExpression()), !dbg !3644
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3646
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3646
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3646
  %idxprom = zext i32 %call to i64, !dbg !3646
  %arrayidx = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 8, i64 %idxprom, !dbg !3646
  %2 = load i32, i32* %arrayidx, align 4, !dbg !3646
  %tobool = icmp eq i32 %2, 0, !dbg !3646
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3646

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1388, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3646
  br label %cond.end, !dbg !3646

cond.end:                                         ; preds = %entry, %cond.true
  %arrayidx2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 4, i64 %idxprom, !dbg !3647
  %3 = load %struct.et_node*, %struct.et_node** %arrayidx2, align 8, !dbg !3647
  %tobool3 = icmp eq %struct.et_node* %3, null, !dbg !3647
  br i1 %tobool3, label %cond.end6, label %cond.true4, !dbg !3647

cond.true4:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1389, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3647
  br label %cond.end6, !dbg !3647

cond.end6:                                        ; preds = %cond.end, %cond.true4
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3648
  %cfg9 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !3648
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg9, align 8, !dbg !3648
  %arrayidx11 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 9, i64 %idxprom, !dbg !3648
  %6 = load i32, i32* %arrayidx11, align 4, !dbg !3649
  %inc = add i32 %6, 1, !dbg !3649
  store i32 %inc, i32* %arrayidx11, align 4, !dbg !3649
  %7 = bitcast %struct.basic_block_def* %bb to i8*, !dbg !3650
  %call12 = tail call %struct.et_node* @et_new_tree(i8* %7) #6, !dbg !3651
  store %struct.et_node* %call12, %struct.et_node** %arrayidx2, align 8, !dbg !3652
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3653
  %cfg17 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !3653
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg17, align 8, !dbg !3653
  %arrayidx20 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 8, i64 %idxprom, !dbg !3653
  %10 = load i32, i32* %arrayidx20, align 4, !dbg !3653
  %cmp = icmp eq i32 %10, 2, !dbg !3655
  br i1 %cmp, label %if.then, label %if.end, !dbg !3656

if.then:                                          ; preds = %cond.end6
  store i32 1, i32* %arrayidx20, align 4, !dbg !3657
  br label %if.end, !dbg !3658

if.end:                                           ; preds = %if.then, %cond.end6
  ret void, !dbg !3659
}

; Function Attrs: nounwind uwtable
define dso_local void @delete_from_dominance_info(i32 %dir, %struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !3660 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !3662, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3663, metadata !DIExpression()), !dbg !3665
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !3666
  call void @llvm.dbg.value(metadata i32 %call, metadata !3664, metadata !DIExpression()), !dbg !3665
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3667
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3667
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3667
  %idxprom = zext i32 %call to i64, !dbg !3667
  %arrayidx = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 8, i64 %idxprom, !dbg !3667
  %2 = load i32, i32* %arrayidx, align 4, !dbg !3667
  %tobool = icmp eq i32 %2, 0, !dbg !3667
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3667

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1404, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3667
  br label %cond.end, !dbg !3667

cond.end:                                         ; preds = %entry, %cond.true
  %arrayidx2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 4, i64 %idxprom, !dbg !3668
  %3 = load %struct.et_node*, %struct.et_node** %arrayidx2, align 8, !dbg !3668
  tail call void @et_free_tree(%struct.et_node* %3) #6, !dbg !3669
  store %struct.et_node* null, %struct.et_node** %arrayidx2, align 8, !dbg !3670
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3671
  %cfg7 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !3671
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg7, align 8, !dbg !3671
  %arrayidx9 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 9, i64 %idxprom, !dbg !3671
  %6 = load i32, i32* %arrayidx9, align 4, !dbg !3672
  %dec = add i32 %6, -1, !dbg !3672
  store i32 %dec, i32* %arrayidx9, align 4, !dbg !3672
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3673
  %cfg11 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !3673
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg11, align 8, !dbg !3673
  %arrayidx14 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 8, i64 %idxprom, !dbg !3673
  %9 = load i32, i32* %arrayidx14, align 4, !dbg !3673
  %cmp = icmp eq i32 %9, 2, !dbg !3675
  br i1 %cmp, label %if.then, label %if.end, !dbg !3676

if.then:                                          ; preds = %cond.end
  store i32 1, i32* %arrayidx14, align 4, !dbg !3677
  br label %if.end, !dbg !3678

if.end:                                           ; preds = %if.then, %cond.end
  ret void, !dbg !3679
}

declare dso_local void @et_free_tree(%struct.et_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dom_info_state(i32 %dir) local_unnamed_addr #4 !dbg !3680 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !3684, metadata !DIExpression()), !dbg !3686
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !3687
  call void @llvm.dbg.value(metadata i32 %call, metadata !3685, metadata !DIExpression()), !dbg !3686
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3688
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3688
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3688
  %idxprom = zext i32 %call to i64, !dbg !3688
  %arrayidx = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 8, i64 %idxprom, !dbg !3688
  %2 = load i32, i32* %arrayidx, align 4, !dbg !3688
  ret i32 %2, !dbg !3689
}

; Function Attrs: nounwind uwtable
define dso_local void @set_dom_info_availability(i32 %dir, i32 %new_state) local_unnamed_addr #4 !dbg !3690 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !3694, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i32 %new_state, metadata !3695, metadata !DIExpression()), !dbg !3697
  %call = tail call fastcc i32 @dom_convert_dir_to_idx(i32 %dir) #8, !dbg !3698
  call void @llvm.dbg.value(metadata i32 %call, metadata !3696, metadata !DIExpression()), !dbg !3697
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3699
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3699
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3699
  %idxprom = zext i32 %call to i64, !dbg !3699
  %arrayidx = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 8, i64 %idxprom, !dbg !3699
  store i32 %new_state, i32* %arrayidx, align 4, !dbg !3700
  ret void, !dbg !3701
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_dominance_info(i32 %dir) local_unnamed_addr #4 !dbg !3702 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !3704, metadata !DIExpression()), !dbg !3707
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3708
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3708
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3708
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !3708
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3708
  br label %for.cond, !dbg !3708

for.cond:                                         ; preds = %for.inc, %entry
  %3 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre1, %for.inc ], !dbg !3710
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.inc ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3712
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3712
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3705, metadata !DIExpression()), !dbg !3707
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !3710
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3710
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %4, !dbg !3710
  br i1 %cmp, label %for.end, label %for.body, !dbg !3708

for.body:                                         ; preds = %for.cond
  %call = tail call %struct.basic_block_def* @get_immediate_dominator(i32 %dir, %struct.basic_block_def* %bb.0) #8, !dbg !3713
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3706, metadata !DIExpression()), !dbg !3707
  %tobool = icmp eq %struct.basic_block_def* %call, null, !dbg !3715
  br i1 %tobool, label %for.inc, label %if.then, !dbg !3716

if.then:                                          ; preds = %for.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3717
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !3718
  %6 = load i32, i32* %index, align 8, !dbg !3718
  %index3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 9, !dbg !3719
  %7 = load i32, i32* %index3, align 8, !dbg !3719
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %6, i32 %7) #6, !dbg !3720
  br label %for.inc, !dbg !3720

for.inc:                                          ; preds = %for.body, %if.then
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3710
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3721
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !3710
  br label %for.cond, !dbg !3710, !llvm.loop !3722

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3724
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @debug_dominance_tree(i32 %dir, %struct.basic_block_def* %root) local_unnamed_addr #4 !dbg !3725 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !3727, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %root, metadata !3728, metadata !DIExpression()), !dbg !3729
  tail call fastcc void @debug_dominance_tree_1(i32 %dir, %struct.basic_block_def* %root, i32 0, i8 zeroext 0) #8, !dbg !3730
  ret void, !dbg !3731
}

; Function Attrs: nounwind uwtable
define internal fastcc void @debug_dominance_tree_1(i32 %dir, %struct.basic_block_def* %root, i32 %indent, i8 zeroext %indent_first) unnamed_addr #4 !dbg !3732 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !3736, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %root, metadata !3737, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i32 %indent, metadata !3738, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i8 %indent_first, metadata !3739, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i8 1, metadata !3742, metadata !DIExpression()), !dbg !3743
  %tobool = icmp eq i8 %indent_first, 0, !dbg !3744
  br i1 %tobool, label %if.end, label %for.cond.preheader, !dbg !3746

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !3747

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !3749
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3741, metadata !DIExpression()), !dbg !3743
  %exitcond = icmp eq i32 %i.0, %indent, !dbg !3750
  br i1 %exitcond, label %if.end.loopexit, label %for.body, !dbg !3747

for.body:                                         ; preds = %for.cond
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3752
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3753
  %inc = add i32 %i.0, 1, !dbg !3754
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3741, metadata !DIExpression()), !dbg !3743
  br label %for.cond, !dbg !3755, !llvm.loop !3756

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !3758

if.end:                                           ; preds = %if.end.loopexit, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3758
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %root, i64 0, i32 9, !dbg !3759
  %2 = load i32, i32* %index, align 8, !dbg !3759
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %2) #6, !dbg !3760
  %call2 = tail call %struct.basic_block_def* @first_dom_son(i32 %dir, %struct.basic_block_def* %root) #8, !dbg !3761
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call2, metadata !3740, metadata !DIExpression()), !dbg !3743
  %add = add i32 %indent, 1, !dbg !3763
  br label %for.cond3, !dbg !3766

for.cond3:                                        ; preds = %for.body5, %if.end
  %son.0 = phi %struct.basic_block_def* [ %call2, %if.end ], [ %call8, %for.body5 ], !dbg !3767
  %first.0 = phi i8 [ 1, %if.end ], [ 0, %for.body5 ], !dbg !3743
  call void @llvm.dbg.value(metadata i8 %first.0, metadata !3742, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %son.0, metadata !3740, metadata !DIExpression()), !dbg !3743
  %tobool4 = icmp eq %struct.basic_block_def* %son.0, null, !dbg !3768
  br i1 %tobool4, label %for.end9, label %for.body5, !dbg !3768

for.body5:                                        ; preds = %for.cond3
  %3 = xor i8 %first.0, 1, !dbg !3769
  tail call fastcc void @debug_dominance_tree_1(i32 %dir, %struct.basic_block_def* nonnull %son.0, i32 %add, i8 zeroext %3) #8, !dbg !3770
  call void @llvm.dbg.value(metadata i8 0, metadata !3742, metadata !DIExpression()), !dbg !3743
  %call8 = tail call %struct.basic_block_def* @next_dom_son(i32 %dir, %struct.basic_block_def* nonnull %son.0) #8, !dbg !3771
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call8, metadata !3740, metadata !DIExpression()), !dbg !3743
  br label %for.cond3, !dbg !3772, !llvm.loop !3773

for.end9:                                         ; preds = %for.cond3
  %first.0.lcssa = phi i8 [ %first.0, %for.cond3 ], !dbg !3743
  call void @llvm.dbg.value(metadata i8 %first.0.lcssa, metadata !3742, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i8 %first.0.lcssa, metadata !3742, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i8 %first.0.lcssa, metadata !3742, metadata !DIExpression()), !dbg !3743
  %tobool10 = icmp eq i8 %first.0.lcssa, 0, !dbg !3775
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !3777

if.then11:                                        ; preds = %for.end9
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3778
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3779
  br label %if.end13, !dbg !3779

if.end13:                                         ; preds = %for.end9, %if.then11
  ret void, !dbg !3780
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @calc_dfs_tree_nonrec(%struct.dom_info* %di, %struct.basic_block_def* %bb, i8 zeroext %reverse) unnamed_addr #4 !dbg !3781 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %einext = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp6 = alloca %struct.edge_iterator, align 8
  %tmp25 = alloca %struct.edge_iterator, align 8
  %tmp41 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.dom_info* %di, metadata !3785, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3786, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i8 %reverse, metadata !3787, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i32 0, metadata !3790, metadata !DIExpression()), !dbg !3799
  %0 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3800
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3800
  %1 = bitcast %struct.edge_iterator* %einext to i8*, !dbg !3800
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3800
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3801
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !3801
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3801
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 3, !dbg !3801
  %4 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !3801
  %add = add nsw i32 %4, 1, !dbg !3801
  %conv = sext i32 %add to i64, !dbg !3801
  %mul = shl nsw i64 %conv, 4, !dbg !3801
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3801
  %5 = bitcast i8* %call to %struct.edge_iterator*, !dbg !3801
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %5, metadata !3791, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i32 0, metadata !3794, metadata !DIExpression()), !dbg !3799
  %tobool = icmp eq i8 %reverse, 0, !dbg !3802
  br i1 %tobool, label %if.else, label %if.then, !dbg !3804

if.then:                                          ; preds = %entry
  %6 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3805
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #7, !dbg !3805
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3805
  %call1 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !3805
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3805
  %8 = extractvalue { i32, %struct.VEC_edge_gc** } %call1, 0, !dbg !3805
  store i32 %8, i32* %7, align 8, !dbg !3805
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3805
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call1, 1, !dbg !3805
  store %struct.VEC_edge_gc** %10, %struct.VEC_edge_gc*** %9, align 8, !dbg !3805
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !3805
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #7, !dbg !3805
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3807
  %cfg3 = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 1, !dbg !3807
  %12 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg3, align 8, !dbg !3807
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 1, !dbg !3807
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 0, !dbg !3808
  br label %if.end, !dbg !3809

if.else:                                          ; preds = %entry
  %13 = bitcast %struct.edge_iterator* %tmp6 to i8*, !dbg !3810
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #7, !dbg !3810
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3810
  %call7 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3810
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp6, i64 0, i32 0, !dbg !3810
  %15 = extractvalue { i32, %struct.VEC_edge_gc** } %call7, 0, !dbg !3810
  store i32 %15, i32* %14, align 8, !dbg !3810
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp6, i64 0, i32 1, !dbg !3810
  %17 = extractvalue { i32, %struct.VEC_edge_gc** } %call7, 1, !dbg !3810
  store %struct.VEC_edge_gc** %17, %struct.VEC_edge_gc*** %16, align 8, !dbg !3810
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %13, i64 16, i1 false), !dbg !3810
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #7, !dbg !3810
  %18 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3812
  %cfg9 = getelementptr inbounds %struct.function, %struct.function* %18, i64 0, i32 1, !dbg !3812
  %19 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg9, align 8, !dbg !3812
  %x_entry_block_ptr10 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %19, i64 0, i32 0, !dbg !3812
  %x_exit_block_ptr13 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %19, i64 0, i32 1, !dbg !3813
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %en_block.0.in = phi %struct.basic_block_def** [ %x_exit_block_ptr, %if.then ], [ %x_entry_block_ptr10, %if.else ]
  %ex_block.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %if.then ], [ %x_exit_block_ptr13, %if.else ]
  %ex_block.0 = load %struct.basic_block_def*, %struct.basic_block_def** %ex_block.0.in, align 8, !dbg !3814
  %en_block.0 = load %struct.basic_block_def*, %struct.basic_block_def** %en_block.0.in, align 8, !dbg !3814
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %ex_block.0, metadata !3796, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %en_block.0, metadata !3795, metadata !DIExpression()), !dbg !3799
  %20 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3815
  %21 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3815
  %dfs_order = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 9, !dbg !3816
  %22 = bitcast %struct.edge_iterator* %tmp25 to i8*, !dbg !3821
  %23 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp25, i64 0, i32 0, !dbg !3821
  %24 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp25, i64 0, i32 1, !dbg !3821
  %25 = bitcast %struct.edge_iterator* %tmp41 to i8*, !dbg !3822
  %26 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp41, i64 0, i32 0, !dbg !3822
  %27 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp41, i64 0, i32 1, !dbg !3822
  %dfsnum = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 11, !dbg !3824
  %dfs_to_bb = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 10, !dbg !3824
  %dfs_parent = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 0, !dbg !3824
  br label %while.cond, !dbg !3825

while.cond:                                       ; preds = %cleanup, %if.end
  %sp.0 = phi i32 [ 0, %if.end ], [ %sp.2, %cleanup ], !dbg !3799
  call void @llvm.dbg.value(metadata i32 %sp.0, metadata !3794, metadata !DIExpression()), !dbg !3799
  %28 = sext i32 %sp.0 to i64, !dbg !3826
  br label %while.cond14.outer, !dbg !3826

while.cond14.outer:                               ; preds = %if.end60, %while.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end60 ], [ %28, %while.cond ]
  br i1 %tobool, label %while.cond14.outer.split.us, label %while.cond14.outer.while.cond14.outer.split_crit_edge, !dbg !3826

while.cond14.outer.while.cond14.outer.split_crit_edge: ; preds = %while.cond14.outer
  br label %while.cond14, !dbg !3826

while.cond14.outer.split.us:                      ; preds = %while.cond14.outer
  br label %while.cond14.us, !dbg !3826

while.cond14.us:                                  ; preds = %if.then38.us, %while.cond14.outer.split.us
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3794, metadata !DIExpression()), !dbg !3799
  %29 = load i32, i32* %20, align 8, !dbg !3827
  %30 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %21, align 8, !dbg !3827
  %call15.us = call fastcc zeroext i8 @ei_end_p(i32 %29, %struct.VEC_edge_gc** %30) #8, !dbg !3827
  %tobool16.us = icmp eq i8 %call15.us, 0, !dbg !3828
  br i1 %tobool16.us, label %while.body17.us, label %while.end.us-lcssa.us, !dbg !3826

while.body17.us:                                  ; preds = %while.cond14.us
  %31 = load i32, i32* %20, align 8, !dbg !3829
  %32 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %21, align 8, !dbg !3829
  %call18.us = call fastcc %struct.edge_def* @ei_edge(i32 %31, %struct.VEC_edge_gc** %32) #8, !dbg !3829
  call void @llvm.dbg.value(metadata %struct.edge_def* %call18.us, metadata !3788, metadata !DIExpression()), !dbg !3799
  %dest29.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call18.us, i64 0, i32 1, !dbg !3830
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %dest29.us, align 8, !dbg !3830
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %33, metadata !3797, metadata !DIExpression()), !dbg !3815
  %cmp30.us = icmp eq %struct.basic_block_def* %33, %ex_block.0, !dbg !3831
  br i1 %cmp30.us, label %if.then38.us, label %lor.lhs.false32.us, !dbg !3833

lor.lhs.false32.us:                               ; preds = %while.body17.us
  %34 = load i32*, i32** %dfs_order, align 8, !dbg !3834
  %index34.us = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i64 0, i32 9, !dbg !3835
  %35 = load i32, i32* %index34.us, align 8, !dbg !3835
  %idxprom35.us = sext i32 %35 to i64, !dbg !3836
  %arrayidx36.us = getelementptr inbounds i32, i32* %34, i64 %idxprom35.us, !dbg !3836
  %36 = load i32, i32* %arrayidx36.us, align 4, !dbg !3836
  %tobool37.us = icmp eq i32 %36, 0, !dbg !3836
  br i1 %tobool37.us, label %if.end39.us-lcssa.us, label %if.then38.us, !dbg !3837

if.then38.us:                                     ; preds = %lor.lhs.false32.us, %while.body17.us
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3792, metadata !DIExpression(DW_OP_deref)), !dbg !3799
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3838
  br label %while.cond14.us, !dbg !3799, !llvm.loop !3840

while.end.us-lcssa.us:                            ; preds = %while.cond14.us
  %indvars.iv.lcssa8 = phi i64 [ %indvars.iv, %while.cond14.us ]
  br label %while.end, !dbg !3842

if.end39.us-lcssa.us:                             ; preds = %lor.lhs.false32.us
  %call18.us.lcssa = phi %struct.edge_def* [ %call18.us, %lor.lhs.false32.us ], !dbg !3829
  %.lcssa7 = phi %struct.basic_block_def* [ %33, %lor.lhs.false32.us ], !dbg !3830
  %src40 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call18.us.lcssa, i64 0, i32 0, !dbg !3844
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %src40, align 8, !dbg !3844
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %37, metadata !3786, metadata !DIExpression()), !dbg !3799
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #7, !dbg !3845
  %succs42 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.lcssa7, i64 0, i32 1, !dbg !3845
  %call43 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs42) #8, !dbg !3845
  %38 = extractvalue { i32, %struct.VEC_edge_gc** } %call43, 0, !dbg !3845
  store i32 %38, i32* %26, align 8, !dbg !3845
  %39 = extractvalue { i32, %struct.VEC_edge_gc** } %call43, 1, !dbg !3845
  store %struct.VEC_edge_gc** %39, %struct.VEC_edge_gc*** %27, align 8, !dbg !3845
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %25, i64 16, i1 false), !dbg !3845
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #7, !dbg !3845
  br label %if.end44

while.cond14:                                     ; preds = %if.then23, %while.cond14.outer.while.cond14.outer.split_crit_edge
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3794, metadata !DIExpression()), !dbg !3799
  %40 = load i32, i32* %20, align 8, !dbg !3827
  %41 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %21, align 8, !dbg !3827
  %call15 = call fastcc zeroext i8 @ei_end_p(i32 %40, %struct.VEC_edge_gc** %41) #8, !dbg !3827
  %tobool16 = icmp eq i8 %call15, 0, !dbg !3828
  br i1 %tobool16, label %while.body17, label %while.end.us-lcssa, !dbg !3826

while.body17:                                     ; preds = %while.cond14
  %42 = load i32, i32* %20, align 8, !dbg !3829
  %43 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %21, align 8, !dbg !3829
  %call18 = call fastcc %struct.edge_def* @ei_edge(i32 %42, %struct.VEC_edge_gc** %43) #8, !dbg !3829
  call void @llvm.dbg.value(metadata %struct.edge_def* %call18, metadata !3788, metadata !DIExpression()), !dbg !3799
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call18, i64 0, i32 0, !dbg !3846
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3846
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %44, metadata !3797, metadata !DIExpression()), !dbg !3815
  %cmp = icmp eq %struct.basic_block_def* %44, %ex_block.0, !dbg !3847
  br i1 %cmp, label %if.then23, label %lor.lhs.false, !dbg !3848

lor.lhs.false:                                    ; preds = %while.body17
  %45 = load i32*, i32** %dfs_order, align 8, !dbg !3849
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i64 0, i32 9, !dbg !3850
  %46 = load i32, i32* %index, align 8, !dbg !3850
  %idxprom = sext i32 %46 to i64, !dbg !3851
  %arrayidx = getelementptr inbounds i32, i32* %45, i64 %idxprom, !dbg !3851
  %47 = load i32, i32* %arrayidx, align 4, !dbg !3851
  %tobool22 = icmp eq i32 %47, 0, !dbg !3851
  br i1 %tobool22, label %if.end24.us-lcssa, label %if.then23, !dbg !3852

if.then23:                                        ; preds = %lor.lhs.false, %while.body17
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3792, metadata !DIExpression(DW_OP_deref)), !dbg !3799
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3853
  br label %while.cond14, !dbg !3799, !llvm.loop !3840

if.end24.us-lcssa:                                ; preds = %lor.lhs.false
  %call18.lcssa = phi %struct.edge_def* [ %call18, %lor.lhs.false ], !dbg !3829
  %.lcssa = phi %struct.basic_block_def* [ %44, %lor.lhs.false ], !dbg !3846
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call18.lcssa, i64 0, i32 1, !dbg !3855
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3855
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %48, metadata !3786, metadata !DIExpression()), !dbg !3799
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #7, !dbg !3856
  %preds26 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.lcssa, i64 0, i32 0, !dbg !3856
  %call27 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds26) #8, !dbg !3856
  %49 = extractvalue { i32, %struct.VEC_edge_gc** } %call27, 0, !dbg !3856
  store i32 %49, i32* %23, align 8, !dbg !3856
  %50 = extractvalue { i32, %struct.VEC_edge_gc** } %call27, 1, !dbg !3856
  store %struct.VEC_edge_gc** %50, %struct.VEC_edge_gc*** %24, align 8, !dbg !3856
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %22, i64 16, i1 false), !dbg !3856
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #7, !dbg !3856
  br label %if.end44, !dbg !3857

if.end44:                                         ; preds = %if.end39.us-lcssa.us, %if.end24.us-lcssa
  %bn.0 = phi %struct.basic_block_def* [ %.lcssa, %if.end24.us-lcssa ], [ %.lcssa7, %if.end39.us-lcssa.us ], !dbg !3858
  %bb.addr.0 = phi %struct.basic_block_def* [ %48, %if.end24.us-lcssa ], [ %37, %if.end39.us-lcssa.us ], !dbg !3858
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.0, metadata !3786, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bn.0, metadata !3797, metadata !DIExpression()), !dbg !3815
  %cmp45 = icmp eq %struct.basic_block_def* %bn.0, %en_block.0, !dbg !3859
  br i1 %cmp45, label %cond.true, label %cond.end, !dbg !3859

cond.true:                                        ; preds = %if.end44
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 294, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3859
  br label %cond.end, !dbg !3859

cond.end:                                         ; preds = %if.end44, %cond.true
  %cmp47 = icmp eq %struct.basic_block_def* %bb.addr.0, %en_block.0, !dbg !3860
  %51 = load i32*, i32** %dfs_order, align 8, !dbg !3862
  br i1 %cmp47, label %if.else54, label %if.then49, !dbg !3863

if.then49:                                        ; preds = %cond.end
  %index51 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.addr.0, i64 0, i32 9, !dbg !3864
  br label %if.end60, !dbg !3865

if.else54:                                        ; preds = %cond.end
  %52 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3866
  %cfg57 = getelementptr inbounds %struct.function, %struct.function* %52, i64 0, i32 1, !dbg !3866
  %53 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg57, align 8, !dbg !3866
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %53, i64 0, i32 5, !dbg !3866
  br label %if.end60

if.end60:                                         ; preds = %if.else54, %if.then49
  %idxprom52.pn.in.in = phi i32* [ %index51, %if.then49 ], [ %x_last_basic_block, %if.else54 ]
  %idxprom52.pn.in = load i32, i32* %idxprom52.pn.in.in, align 8, !dbg !3862
  %idxprom52.pn = sext i32 %idxprom52.pn.in to i64, !dbg !3862
  %my_i.0.in = getelementptr inbounds i32, i32* %51, i64 %idxprom52.pn, !dbg !3862
  %my_i.0 = load i32, i32* %my_i.0.in, align 4, !dbg !3862
  call void @llvm.dbg.value(metadata i32 %my_i.0, metadata !3790, metadata !DIExpression()), !dbg !3799
  %54 = load i32, i32* %dfsnum, align 8, !dbg !3867
  %inc = add i32 %54, 1, !dbg !3867
  store i32 %inc, i32* %dfsnum, align 8, !dbg !3867
  %index62 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bn.0, i64 0, i32 9, !dbg !3868
  %55 = load i32, i32* %index62, align 8, !dbg !3868
  %idxprom63 = sext i32 %55 to i64, !dbg !3869
  %arrayidx64 = getelementptr inbounds i32, i32* %51, i64 %idxprom63, !dbg !3869
  store i32 %54, i32* %arrayidx64, align 4, !dbg !3870
  call void @llvm.dbg.value(metadata i32 %54, metadata !3789, metadata !DIExpression()), !dbg !3799
  %56 = load %struct.basic_block_def**, %struct.basic_block_def*** %dfs_to_bb, align 8, !dbg !3871
  %idxprom65 = zext i32 %54 to i64, !dbg !3872
  %arrayidx66 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %56, i64 %idxprom65, !dbg !3872
  store %struct.basic_block_def* %bn.0, %struct.basic_block_def** %arrayidx66, align 8, !dbg !3873
  %57 = load i32*, i32** %dfs_parent, align 8, !dbg !3874
  %arrayidx68 = getelementptr inbounds i32, i32* %57, i64 %idxprom65, !dbg !3875
  store i32 %my_i.0, i32* %arrayidx68, align 4, !dbg !3876
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !3877
  call void @llvm.dbg.value(metadata i32 undef, metadata !3794, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3799
  %arrayidx71 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %5, i64 %indvars.iv, !dbg !3878
  %58 = bitcast %struct.edge_iterator* %arrayidx71 to i8*, !dbg !3879
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* nonnull align 8 %0, i64 16, i1 false), !dbg !3879
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 16, i1 false), !dbg !3880
  br label %while.cond14.outer, !dbg !3826, !llvm.loop !3840

while.end.us-lcssa:                               ; preds = %while.cond14
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %while.cond14 ]
  br label %while.end, !dbg !3842

while.end:                                        ; preds = %while.end.us-lcssa.us, %while.end.us-lcssa
  %indvars.iv9 = phi i64 [ %indvars.iv.lcssa8, %while.end.us-lcssa.us ], [ %indvars.iv.lcssa, %while.end.us-lcssa ]
  %sp.1.ph6 = trunc i64 %indvars.iv9 to i32, !dbg !3842
  %tobool72 = icmp eq i32 %sp.1.ph6, 0, !dbg !3842
  br i1 %tobool72, label %cleanup, label %if.end74, !dbg !3881

if.end74:                                         ; preds = %while.end
  %dec = add nsw i32 %sp.1.ph6, -1, !dbg !3882
  call void @llvm.dbg.value(metadata i32 %dec, metadata !3794, metadata !DIExpression()), !dbg !3799
  %idxprom75 = sext i32 %dec to i64, !dbg !3883
  %arrayidx76 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %5, i64 %idxprom75, !dbg !3883
  %59 = bitcast %struct.edge_iterator* %arrayidx76 to i8*, !dbg !3883
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* align 8 %59, i64 16, i1 false), !dbg !3883
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3792, metadata !DIExpression(DW_OP_deref)), !dbg !3799
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3884
  br label %cleanup, !dbg !3885

cleanup:                                          ; preds = %while.end, %if.end74
  %sp.2 = phi i32 [ %dec, %if.end74 ], [ 0, %while.end ], !dbg !3799
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end74 ], [ false, %while.end ]
  call void @llvm.dbg.value(metadata i32 %sp.2, metadata !3794, metadata !DIExpression()), !dbg !3799
  br i1 %cleanup.dest.slot.0, label %while.cond, label %while.end77, !llvm.loop !3886

while.end77:                                      ; preds = %cleanup
  call void @free(i8* %call) #6, !dbg !3887
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3888
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3888
  ret void, !dbg !3888
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3889 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3895, metadata !DIExpression()), !dbg !3896
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3897
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3897

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3897
  %0 = load i32, i32* %num, align 8, !dbg !3897
  br label %cond.end, !dbg !3897

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3897
  ret i32 %cond, !dbg !3897
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3898 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3903
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3903
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3903

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3903
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3903
  br label %cond.end, !dbg !3903

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3903
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3903
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3904
  %conv3 = zext i1 %cmp to i8, !dbg !3905
  ret i8 %conv3, !dbg !3906
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3907 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3912
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3912
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3912

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3912
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3912
  br label %cond.end, !dbg !3912

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3912
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #8, !dbg !3912
  ret %struct.edge_def* %call2, !dbg !3913
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3914 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3919
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3919

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3919
  br label %cond.end, !dbg !3919

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3920
  ret %struct.VEC_edge_gc* %0, !dbg !3921
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3922 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3926, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3927, metadata !DIExpression()), !dbg !3928
  br label %land.end, !dbg !3929

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3929
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3929
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3929
  ret %struct.edge_def* %0, !dbg !3929
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @eval(%struct.dom_info* %di, i32 %v) unnamed_addr #0 !dbg !3930 {
entry:
  call void @llvm.dbg.value(metadata %struct.dom_info* %di, metadata !3934, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 %v, metadata !3935, metadata !DIExpression()), !dbg !3937
  %set_chain = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 6, !dbg !3938
  %0 = load i32*, i32** %set_chain, align 8, !dbg !3938
  %idxprom = zext i32 %v to i64, !dbg !3939
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !3939
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3939
  call void @llvm.dbg.value(metadata i32 %1, metadata !3936, metadata !DIExpression()), !dbg !3937
  %tobool = icmp eq i32 %1, 0, !dbg !3940
  br i1 %tobool, label %if.then, label %if.end, !dbg !3942

if.then:                                          ; preds = %entry
  %path_min = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 2, !dbg !3943
  %2 = load i32*, i32** %path_min, align 8, !dbg !3943
  %arrayidx2 = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !3944
  br label %cleanup, !dbg !3945

if.end:                                           ; preds = %entry
  %idxprom4 = zext i32 %1 to i64, !dbg !3946
  %arrayidx5 = getelementptr inbounds i32, i32* %0, i64 %idxprom4, !dbg !3946
  %3 = load i32, i32* %arrayidx5, align 4, !dbg !3946
  %tobool6 = icmp eq i32 %3, 0, !dbg !3946
  br i1 %tobool6, label %if.end11, label %if.then7, !dbg !3948

if.then7:                                         ; preds = %if.end
  tail call fastcc void @compress(%struct.dom_info* %di, i32 %v) #8, !dbg !3949
  %4 = load i32*, i32** %set_chain, align 8, !dbg !3951
  %arrayidx10 = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !3952
  %5 = load i32, i32* %arrayidx10, align 4, !dbg !3952
  call void @llvm.dbg.value(metadata i32 %5, metadata !3936, metadata !DIExpression()), !dbg !3937
  %.pre = zext i32 %5 to i64, !dbg !3953
  br label %if.end11, !dbg !3955

if.end11:                                         ; preds = %if.end, %if.then7
  %idxprom13.pre-phi = phi i64 [ %idxprom4, %if.end ], [ %.pre, %if.then7 ], !dbg !3953
  %key = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 1, !dbg !3956
  %6 = load i32*, i32** %key, align 8, !dbg !3956
  %path_min12 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 2, !dbg !3957
  %7 = load i32*, i32** %path_min12, align 8, !dbg !3957
  %arrayidx14 = getelementptr inbounds i32, i32* %7, i64 %idxprom13.pre-phi, !dbg !3953
  %8 = load i32, i32* %arrayidx14, align 4, !dbg !3953
  %idxprom15 = zext i32 %8 to i64, !dbg !3958
  %arrayidx16 = getelementptr inbounds i32, i32* %6, i64 %idxprom15, !dbg !3958
  %9 = load i32, i32* %arrayidx16, align 4, !dbg !3958
  %arrayidx20 = getelementptr inbounds i32, i32* %7, i64 %idxprom, !dbg !3959
  %10 = load i32, i32* %arrayidx20, align 4, !dbg !3959
  %idxprom21 = zext i32 %10 to i64, !dbg !3960
  %arrayidx22 = getelementptr inbounds i32, i32* %6, i64 %idxprom21, !dbg !3960
  %11 = load i32, i32* %arrayidx22, align 4, !dbg !3960
  %cmp = icmp ult i32 %9, %11, !dbg !3961
  br i1 %cmp, label %if.else, label %if.then23, !dbg !3962

if.then23:                                        ; preds = %if.end11
  br label %cleanup, !dbg !3963

if.else:                                          ; preds = %if.end11
  br label %cleanup, !dbg !3964

cleanup:                                          ; preds = %if.else, %if.then23, %if.then
  %retval.0.in = phi i32* [ %arrayidx20, %if.then23 ], [ %arrayidx14, %if.else ], [ %arrayidx2, %if.then ]
  %retval.0 = load i32, i32* %retval.0.in, align 4, !dbg !3937
  ret i32 %retval.0, !dbg !3965
}

; Function Attrs: nounwind uwtable
define internal fastcc void @link_roots(%struct.dom_info* %di, i32 %v, i32 %w) unnamed_addr #4 !dbg !3966 {
entry:
  call void @llvm.dbg.value(metadata %struct.dom_info* %di, metadata !3970, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 %v, metadata !3971, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 %w, metadata !3972, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 %w, metadata !3973, metadata !DIExpression()), !dbg !3977
  %key = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 1, !dbg !3977
  %path_min = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 2, !dbg !3977
  %idxprom = zext i32 %w to i64, !dbg !3977
  %set_child = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 8, !dbg !3977
  %set_size = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 7, !dbg !3978
  %set_chain = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 6, !dbg !3981
  br label %while.cond, !dbg !3983

while.cond:                                       ; preds = %if.end, %entry
  %s.0 = phi i32 [ %w, %entry ], [ %s.1, %if.end ], !dbg !3984
  call void @llvm.dbg.value(metadata i32 %s.0, metadata !3973, metadata !DIExpression()), !dbg !3977
  %0 = load i32*, i32** %key, align 8, !dbg !3985
  %1 = load i32*, i32** %path_min, align 8, !dbg !3986
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !3987
  %2 = load i32, i32* %arrayidx, align 4, !dbg !3987
  %idxprom1 = zext i32 %2 to i64, !dbg !3988
  %arrayidx2 = getelementptr inbounds i32, i32* %0, i64 %idxprom1, !dbg !3988
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !3988
  %4 = load i32*, i32** %set_child, align 8, !dbg !3989
  %idxprom5 = zext i32 %s.0 to i64, !dbg !3990
  %arrayidx6 = getelementptr inbounds i32, i32* %4, i64 %idxprom5, !dbg !3990
  %5 = load i32, i32* %arrayidx6, align 4, !dbg !3990
  %idxprom7 = zext i32 %5 to i64, !dbg !3991
  %arrayidx8 = getelementptr inbounds i32, i32* %1, i64 %idxprom7, !dbg !3991
  %6 = load i32, i32* %arrayidx8, align 4, !dbg !3991
  %idxprom9 = zext i32 %6 to i64, !dbg !3992
  %arrayidx10 = getelementptr inbounds i32, i32* %0, i64 %idxprom9, !dbg !3992
  %7 = load i32, i32* %arrayidx10, align 4, !dbg !3992
  %cmp = icmp ult i32 %3, %7, !dbg !3993
  br i1 %cmp, label %while.body, label %while.end, !dbg !3983

while.body:                                       ; preds = %while.cond
  %8 = load i32*, i32** %set_size, align 8, !dbg !3994
  %arrayidx12 = getelementptr inbounds i32, i32* %8, i64 %idxprom5, !dbg !3995
  %9 = load i32, i32* %arrayidx12, align 4, !dbg !3995
  %arrayidx19 = getelementptr inbounds i32, i32* %4, i64 %idxprom7, !dbg !3996
  %10 = load i32, i32* %arrayidx19, align 4, !dbg !3996
  %idxprom20 = zext i32 %10 to i64, !dbg !3997
  %arrayidx21 = getelementptr inbounds i32, i32* %8, i64 %idxprom20, !dbg !3997
  %11 = load i32, i32* %arrayidx21, align 4, !dbg !3997
  %add = add i32 %9, %11, !dbg !3998
  %arrayidx27 = getelementptr inbounds i32, i32* %8, i64 %idxprom7, !dbg !3999
  %12 = load i32, i32* %arrayidx27, align 4, !dbg !3999
  %mul = shl i32 %12, 1, !dbg !4000
  %cmp28 = icmp ult i32 %add, %mul, !dbg !4001
  br i1 %cmp28, label %if.else, label %if.then, !dbg !4002

if.then:                                          ; preds = %while.body
  %13 = load i32*, i32** %set_chain, align 8, !dbg !4003
  %arrayidx33 = getelementptr inbounds i32, i32* %13, i64 %idxprom7, !dbg !4004
  store i32 %s.0, i32* %arrayidx33, align 4, !dbg !4005
  %14 = load i32*, i32** %set_child, align 8, !dbg !4006
  %arrayidx37 = getelementptr inbounds i32, i32* %14, i64 %idxprom5, !dbg !4007
  %15 = load i32, i32* %arrayidx37, align 4, !dbg !4007
  %idxprom38 = zext i32 %15 to i64, !dbg !4008
  %arrayidx39 = getelementptr inbounds i32, i32* %14, i64 %idxprom38, !dbg !4008
  %16 = load i32, i32* %arrayidx39, align 4, !dbg !4008
  store i32 %16, i32* %arrayidx37, align 4, !dbg !4009
  br label %if.end, !dbg !4010

if.else:                                          ; preds = %while.body
  store i32 %9, i32* %arrayidx27, align 4, !dbg !4011
  %17 = load i32*, i32** %set_child, align 8, !dbg !4013
  %arrayidx54 = getelementptr inbounds i32, i32* %17, i64 %idxprom5, !dbg !4014
  %18 = load i32, i32* %arrayidx54, align 4, !dbg !4014
  %19 = load i32*, i32** %set_chain, align 8, !dbg !4015
  %arrayidx57 = getelementptr inbounds i32, i32* %19, i64 %idxprom5, !dbg !4016
  store i32 %18, i32* %arrayidx57, align 4, !dbg !4017
  call void @llvm.dbg.value(metadata i32 %18, metadata !3973, metadata !DIExpression()), !dbg !3977
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %s.1 = phi i32 [ %s.0, %if.then ], [ %18, %if.else ], !dbg !3977
  call void @llvm.dbg.value(metadata i32 %s.1, metadata !3973, metadata !DIExpression()), !dbg !3977
  br label %while.cond, !dbg !3983, !llvm.loop !4018

while.end:                                        ; preds = %while.cond
  %s.0.lcssa = phi i32 [ %s.0, %while.cond ], !dbg !3984
  %.lcssa2 = phi i32* [ %1, %while.cond ], !dbg !3986
  %.lcssa = phi i32 [ %2, %while.cond ], !dbg !3987
  %idxprom5.lcssa = phi i64 [ %idxprom5, %while.cond ], !dbg !3990
  call void @llvm.dbg.value(metadata i32 %s.0.lcssa, metadata !3973, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 %s.0.lcssa, metadata !3973, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 %s.0.lcssa, metadata !3973, metadata !DIExpression()), !dbg !3977
  %arrayidx63 = getelementptr inbounds i32, i32* %.lcssa2, i64 %idxprom5.lcssa, !dbg !4020
  store i32 %.lcssa, i32* %arrayidx63, align 4, !dbg !4021
  %20 = load i32*, i32** %set_size, align 8, !dbg !4022
  %arrayidx66 = getelementptr inbounds i32, i32* %20, i64 %idxprom, !dbg !4023
  %21 = load i32, i32* %arrayidx66, align 4, !dbg !4023
  %idxprom68 = zext i32 %v to i64, !dbg !4024
  %arrayidx69 = getelementptr inbounds i32, i32* %20, i64 %idxprom68, !dbg !4024
  %22 = load i32, i32* %arrayidx69, align 4, !dbg !4025
  %add70 = add i32 %22, %21, !dbg !4025
  store i32 %add70, i32* %arrayidx69, align 4, !dbg !4025
  %23 = load i32*, i32** %set_size, align 8, !dbg !4026
  %arrayidx73 = getelementptr inbounds i32, i32* %23, i64 %idxprom68, !dbg !4027
  %24 = load i32, i32* %arrayidx73, align 4, !dbg !4027
  %arrayidx76 = getelementptr inbounds i32, i32* %23, i64 %idxprom, !dbg !4028
  %25 = load i32, i32* %arrayidx76, align 4, !dbg !4028
  %mul77 = shl i32 %25, 1, !dbg !4029
  %cmp78 = icmp ult i32 %24, %mul77, !dbg !4030
  br i1 %cmp78, label %if.then79, label %if.end86, !dbg !4031

if.then79:                                        ; preds = %while.end
  call void @llvm.dbg.value(metadata i32 %s.0.lcssa, metadata !3974, metadata !DIExpression()), !dbg !4032
  %26 = load i32*, i32** %set_child, align 8, !dbg !4033
  %arrayidx82 = getelementptr inbounds i32, i32* %26, i64 %idxprom68, !dbg !4034
  %27 = load i32, i32* %arrayidx82, align 4, !dbg !4034
  call void @llvm.dbg.value(metadata i32 %27, metadata !3973, metadata !DIExpression()), !dbg !3977
  store i32 %s.0.lcssa, i32* %arrayidx82, align 4, !dbg !4035
  br label %if.end86, !dbg !4036

if.end86:                                         ; preds = %if.then79, %while.end
  %s.2 = phi i32 [ %27, %if.then79 ], [ %s.0.lcssa, %while.end ], !dbg !3977
  call void @llvm.dbg.value(metadata i32 %s.2, metadata !3973, metadata !DIExpression()), !dbg !3977
  br label %while.cond87, !dbg !4037

while.cond87:                                     ; preds = %while.body88, %if.end86
  %s.3 = phi i32 [ %s.2, %if.end86 ], [ %30, %while.body88 ], !dbg !3977
  call void @llvm.dbg.value(metadata i32 %s.3, metadata !3973, metadata !DIExpression()), !dbg !3977
  %tobool = icmp eq i32 %s.3, 0, !dbg !4037
  br i1 %tobool, label %while.end95, label %while.body88, !dbg !4037

while.body88:                                     ; preds = %while.cond87
  %28 = load i32*, i32** %set_chain, align 8, !dbg !4038
  %idxprom90 = zext i32 %s.3 to i64, !dbg !4040
  %arrayidx91 = getelementptr inbounds i32, i32* %28, i64 %idxprom90, !dbg !4040
  store i32 %v, i32* %arrayidx91, align 4, !dbg !4041
  %29 = load i32*, i32** %set_child, align 8, !dbg !4042
  %arrayidx94 = getelementptr inbounds i32, i32* %29, i64 %idxprom90, !dbg !4043
  %30 = load i32, i32* %arrayidx94, align 4, !dbg !4043
  call void @llvm.dbg.value(metadata i32 %30, metadata !3973, metadata !DIExpression()), !dbg !3977
  br label %while.cond87, !dbg !4037, !llvm.loop !4044

while.end95:                                      ; preds = %while.cond87
  ret void, !dbg !4046
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compress(%struct.dom_info* %di, i32 %v) unnamed_addr #4 !dbg !4047 {
entry:
  call void @llvm.dbg.value(metadata %struct.dom_info* %di, metadata !4051, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i32 %v, metadata !4052, metadata !DIExpression()), !dbg !4054
  %set_chain = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 6, !dbg !4055
  %0 = load i32*, i32** %set_chain, align 8, !dbg !4055
  %idxprom = zext i32 %v to i64, !dbg !4056
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !4056
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4056
  call void @llvm.dbg.value(metadata i32 %1, metadata !4053, metadata !DIExpression()), !dbg !4054
  %idxprom2 = zext i32 %1 to i64, !dbg !4057
  %arrayidx3 = getelementptr inbounds i32, i32* %0, i64 %idxprom2, !dbg !4057
  %2 = load i32, i32* %arrayidx3, align 4, !dbg !4057
  %tobool = icmp eq i32 %2, 0, !dbg !4057
  br i1 %tobool, label %if.end27, label %if.then, !dbg !4059

if.then:                                          ; preds = %entry
  tail call fastcc void @compress(%struct.dom_info* %di, i32 %1) #8, !dbg !4060
  %key = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 1, !dbg !4062
  %3 = load i32*, i32** %key, align 8, !dbg !4062
  %path_min = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i64 0, i32 2, !dbg !4064
  %4 = load i32*, i32** %path_min, align 8, !dbg !4064
  %arrayidx5 = getelementptr inbounds i32, i32* %4, i64 %idxprom2, !dbg !4065
  %5 = load i32, i32* %arrayidx5, align 4, !dbg !4065
  %idxprom6 = zext i32 %5 to i64, !dbg !4066
  %arrayidx7 = getelementptr inbounds i32, i32* %3, i64 %idxprom6, !dbg !4066
  %6 = load i32, i32* %arrayidx7, align 4, !dbg !4066
  %arrayidx11 = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !4067
  %7 = load i32, i32* %arrayidx11, align 4, !dbg !4067
  %idxprom12 = zext i32 %7 to i64, !dbg !4068
  %arrayidx13 = getelementptr inbounds i32, i32* %3, i64 %idxprom12, !dbg !4068
  %8 = load i32, i32* %arrayidx13, align 4, !dbg !4068
  %cmp = icmp ult i32 %6, %8, !dbg !4069
  br i1 %cmp, label %if.then14, label %if.end, !dbg !4070

if.then14:                                        ; preds = %if.then
  store i32 %5, i32* %arrayidx11, align 4, !dbg !4071
  br label %if.end, !dbg !4072

if.end:                                           ; preds = %if.then14, %if.then
  %9 = load i32*, i32** %set_chain, align 8, !dbg !4073
  %arrayidx23 = getelementptr inbounds i32, i32* %9, i64 %idxprom2, !dbg !4074
  %10 = load i32, i32* %arrayidx23, align 4, !dbg !4074
  %arrayidx26 = getelementptr inbounds i32, i32* %9, i64 %idxprom, !dbg !4075
  store i32 %10, i32* %arrayidx26, align 4, !dbg !4076
  br label %if.end27, !dbg !4077

if.end27:                                         ; preds = %entry, %if.end
  ret void, !dbg !4078
}

; Function Attrs: nounwind uwtable
define internal fastcc void @assign_dfs_numbers(%struct.et_node* %node, i32* %num) unnamed_addr #4 !dbg !4079 {
entry:
  call void @llvm.dbg.value(metadata %struct.et_node* %node, metadata !4083, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i32* %num, metadata !4084, metadata !DIExpression()), !dbg !4086
  %0 = load i32, i32* %num, align 4, !dbg !4087
  %inc = add nsw i32 %0, 1, !dbg !4087
  store i32 %inc, i32* %num, align 4, !dbg !4087
  %dfs_num_in = getelementptr inbounds %struct.et_node, %struct.et_node* %node, i64 0, i32 1, !dbg !4088
  store i32 %0, i32* %dfs_num_in, align 8, !dbg !4089
  %son1 = getelementptr inbounds %struct.et_node, %struct.et_node* %node, i64 0, i32 4, !dbg !4090
  %1 = load %struct.et_node*, %struct.et_node** %son1, align 8, !dbg !4090
  %tobool = icmp eq %struct.et_node* %1, null, !dbg !4092
  br i1 %tobool, label %if.end, label %if.then, !dbg !4093

if.then:                                          ; preds = %entry
  tail call fastcc void @assign_dfs_numbers(%struct.et_node* nonnull %1, i32* %num) #8, !dbg !4094
  %2 = load %struct.et_node*, %struct.et_node** %son1, align 8, !dbg !4096
  br label %for.cond, !dbg !4098

for.cond:                                         ; preds = %for.body, %if.then
  %3 = phi %struct.et_node* [ %2, %if.then ], [ %.pre, %for.body ], !dbg !4099
  %.pn = phi %struct.et_node* [ %2, %if.then ], [ %son.0, %for.body ]
  %son.0.in = getelementptr inbounds %struct.et_node, %struct.et_node* %.pn, i64 0, i32 6, !dbg !4101
  %son.0 = load %struct.et_node*, %struct.et_node** %son.0.in, align 8, !dbg !4101
  call void @llvm.dbg.value(metadata %struct.et_node* %son.0, metadata !4085, metadata !DIExpression()), !dbg !4086
  %cmp = icmp eq %struct.et_node* %son.0, %3, !dbg !4102
  br i1 %cmp, label %if.end.loopexit, label %for.body, !dbg !4103

for.body:                                         ; preds = %for.cond
  tail call fastcc void @assign_dfs_numbers(%struct.et_node* %son.0, i32* %num) #8, !dbg !4104
  %.pre = load %struct.et_node*, %struct.et_node** %son1, align 8, !dbg !4099
  br label %for.cond, !dbg !4105, !llvm.loop !4106

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4108

if.end:                                           ; preds = %if.end.loopexit, %entry
  %4 = load i32, i32* %num, align 4, !dbg !4108
  %inc6 = add nsw i32 %4, 1, !dbg !4108
  store i32 %inc6, i32* %num, align 4, !dbg !4108
  %dfs_num_out = getelementptr inbounds %struct.et_node, %struct.et_node* %node, i64 0, i32 2, !dbg !4109
  store i32 %4, i32* %dfs_num_out, align 4, !dbg !4110
  ret void, !dbg !4111
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_basic_block_heap_reserve(%struct.VEC_basic_block_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4112 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %vec_, metadata !4116, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i32 1, metadata !4117, metadata !DIExpression()), !dbg !4119
  %0 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !4120
  %tobool = icmp eq %struct.VEC_basic_block_heap* %0, null, !dbg !4120
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4120

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %0, i64 0, i32 0, !dbg !4120
  br label %cond.end, !dbg !4120

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4120
  %call = tail call fastcc i32 @VEC_basic_block_base_space(%struct.VEC_basic_block_base* %cond, i32 1) #8, !dbg !4120
  %tobool1 = icmp eq i32 %call, 0, !dbg !4120
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4120
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4118, metadata !DIExpression()), !dbg !4119
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4120

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_basic_block_heap** %vec_ to i8**, !dbg !4121
  %2 = load i8*, i8** %1, align 8, !dbg !4121
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !4121
  store i8* %call3, i8** %1, align 8, !dbg !4121
  br label %if.end, !dbg !4121

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4120
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def** @VEC_basic_block_base_quick_push(%struct.VEC_basic_block_base* %vec_, %struct.basic_block_def* %obj_) unnamed_addr #0 !dbg !4123 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !4128, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %obj_, metadata !4129, metadata !DIExpression()), !dbg !4131
  %num1 = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !4132
  %0 = load i32, i32* %num1, align 8, !dbg !4132
  %inc = add i32 %0, 1, !dbg !4132
  store i32 %inc, i32* %num1, align 8, !dbg !4132
  %idxprom = zext i32 %0 to i64, !dbg !4132
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4132
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %arrayidx, metadata !4130, metadata !DIExpression()), !dbg !4131
  store %struct.basic_block_def* %obj_, %struct.basic_block_def** %arrayidx, align 8, !dbg !4132
  ret %struct.basic_block_def** %arrayidx, !dbg !4132
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_basic_block_base_space(%struct.VEC_basic_block_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4133 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !4137, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i32 1, metadata !4138, metadata !DIExpression()), !dbg !4139
  %tobool = icmp eq %struct.VEC_basic_block_base* %vec_, null, !dbg !4140
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4140

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 1, !dbg !4140
  %0 = load i32, i32* %alloc, align 4, !dbg !4140
  %num = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !4140
  %1 = load i32, i32* %num, align 8, !dbg !4140
  %cmp1 = icmp ne i32 %0, %1, !dbg !4140
  %phitmp = zext i1 %cmp1 to i32, !dbg !4140
  br label %cond.end, !dbg !4140

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4140

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4140
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4141 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4145, metadata !DIExpression()), !dbg !4146
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !4147
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4147
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4147
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4147

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4147
  br label %cond.end, !dbg !4147

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4147
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !4147
  %cmp = icmp eq i32 %call, 1, !dbg !4148
  %conv2 = zext i1 %cmp to i8, !dbg !4147
  ret i8 %conv2, !dbg !4149
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4150 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4154, metadata !DIExpression()), !dbg !4155
  %call = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) #8, !dbg !4156
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 0, !dbg !4157
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4157
  ret %struct.basic_block_def* %0, !dbg !4158
}

declare dso_local %struct.edge_def* @find_edge(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_unordered_remove(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4159 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !4163, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4164, metadata !DIExpression()), !dbg !4167
  %idxprom = zext i32 %ix_ to i64, !dbg !4168
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4168
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %arrayidx, metadata !4165, metadata !DIExpression()), !dbg !4167
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4168
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !4166, metadata !DIExpression()), !dbg !4167
  %num2 = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !4168
  %1 = load i32, i32* %num2, align 8, !dbg !4168
  %dec = add i32 %1, -1, !dbg !4168
  store i32 %dec, i32* %num2, align 8, !dbg !4168
  %idxprom3 = zext i32 %dec to i64, !dbg !4168
  %arrayidx4 = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom3, !dbg !4168
  %2 = bitcast %struct.basic_block_def** %arrayidx4 to i64*, !dbg !4168
  %3 = load i64, i64* %2, align 8, !dbg !4168
  %4 = bitcast %struct.basic_block_def** %arrayidx to i64*, !dbg !4168
  store i64 %3, i64* %4, align 8, !dbg !4168
  ret %struct.basic_block_def* %0, !dbg !4168
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4169 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4173, metadata !DIExpression()), !dbg !4174
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #8, !dbg !4175
  %tobool = icmp eq i8 %call, 0, !dbg !4175
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4175

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4175
  br label %cond.end, !dbg !4175

cond.end:                                         ; preds = %entry, %cond.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !4176
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4176
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4176
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !4176

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4176
  br label %cond.end5, !dbg !4176

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !4176
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #8, !dbg !4176
  ret %struct.edge_def* %call7, !dbg !4177
}

declare dso_local %struct.et_node* @et_root(%struct.et_node*) local_unnamed_addr #1

declare dso_local void @identify_vertices(%struct.graph*, i32, i32) local_unnamed_addr #1

declare dso_local i32 @graphds_scc(%struct.graph*, %struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** %vec_, i32 %obj_) unnamed_addr #0 !dbg !4178 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !4183, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !4184, metadata !DIExpression()), !dbg !4185
  %call = tail call fastcc i32 @VEC_int_heap_reserve(%struct.VEC_int_heap** %vec_, i32 1) #8, !dbg !4186
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !4186
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !4186
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4186

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !4186
  br label %cond.end, !dbg !4186

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4186
  %call1 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond, i32 %obj_) #8, !dbg !4186
  ret i32* %call1, !dbg !4186
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %vec_, i32 %ix_, i32* %ptr) unnamed_addr #0 !dbg !4187 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !4193, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4194, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i32* %ptr, metadata !4195, metadata !DIExpression()), !dbg !4196
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !4197
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !4197

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !4197
  %0 = load i32, i32* %num, align 4, !dbg !4197
  %cmp = icmp ugt i32 %0, %ix_, !dbg !4197
  br i1 %cmp, label %if.then, label %if.else, !dbg !4199

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !4200
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4200
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4200
  br label %return, !dbg !4200

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !4202

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %1, %if.then ], !dbg !4204
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !4204
  store i32 %storemerge, i32* %ptr, align 4, !dbg !4204
  ret i32 %retval.0, !dbg !4199
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !4205 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !4209, metadata !DIExpression()), !dbg !4210
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !4211
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !4211
  br i1 %tobool, label %if.end, label %if.then, !dbg !4213

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !4213
  tail call void @free(i8* nonnull %1) #6, !dbg !4211
  br label %if.end, !dbg !4211

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !4213
  ret void, !dbg !4213
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_heap_reserve(%struct.VEC_int_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4214 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !4218, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i32 1, metadata !4219, metadata !DIExpression()), !dbg !4221
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !4222
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !4222
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4222

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !4222
  br label %cond.end, !dbg !4222

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4222
  %call = tail call fastcc i32 @VEC_int_base_space(%struct.VEC_int_base* %cond, i32 1) #8, !dbg !4222
  %tobool1 = icmp eq i32 %call, 0, !dbg !4222
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4222
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4220, metadata !DIExpression()), !dbg !4221
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4222

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_int_heap** %vec_ to i8**, !dbg !4223
  %2 = load i8*, i8** %1, align 8, !dbg !4223
  %call3 = tail call i8* @vec_heap_o_reserve(i8* %2, i32 1, i64 8, i64 4) #6, !dbg !4223
  store i8* %call3, i8** %1, align 8, !dbg !4223
  br label %if.end, !dbg !4223

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4222
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !4225 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !4230, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !4231, metadata !DIExpression()), !dbg !4233
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !4234
  %0 = load i32, i32* %num1, align 4, !dbg !4234
  %inc = add i32 %0, 1, !dbg !4234
  store i32 %inc, i32* %num1, align 4, !dbg !4234
  %idxprom = zext i32 %0 to i64, !dbg !4234
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4234
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !4232, metadata !DIExpression()), !dbg !4233
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !4234
  ret i32* %arrayidx, !dbg !4234
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_space(%struct.VEC_int_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4235 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !4239, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i32 1, metadata !4240, metadata !DIExpression()), !dbg !4241
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !4242
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4242

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 1, !dbg !4242
  %0 = load i32, i32* %alloc, align 4, !dbg !4242
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !4242
  %1 = load i32, i32* %num, align 4, !dbg !4242
  %cmp1 = icmp ne i32 %0, %1, !dbg !4242
  %phitmp = zext i1 %cmp1 to i32, !dbg !4242
  br label %cond.end, !dbg !4242

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4242

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4242
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
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1473, !1474, !1475}
!llvm.ident = !{!1476}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !379, nameTableKind: None)
!1 = !DIFile(filename: "dominance.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !9, !137, !142, !147, !152, !171, !178, !185}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cdi_direction", file: !4, line: 912, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "CDI_DOMINATORS", value: 1, isUnsigned: true)
!8 = !DIEnumerator(name: "CDI_POST_DOMINATORS", value: 2, isUnsigned: true)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !10, line: 7, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!12 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!14 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!15 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!16 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!17 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!18 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!19 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!20 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!21 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!22 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!23 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!24 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!25 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!26 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!27 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!28 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!29 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!30 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!31 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!32 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!33 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!34 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!35 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!36 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!37 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!38 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!39 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!40 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!41 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!42 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!43 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!44 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!45 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!46 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!47 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!48 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!49 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!50 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!51 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!52 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!53 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!54 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!55 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!56 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!57 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!58 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!59 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!60 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!61 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!62 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!63 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!64 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!65 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!66 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!67 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!68 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!69 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!70 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!71 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!72 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!73 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!74 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!75 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!76 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!77 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!78 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!79 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!80 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!81 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!82 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!83 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!84 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!85 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!86 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!87 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!88 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!89 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!90 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!91 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!92 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!93 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!94 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!95 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!96 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!97 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!98 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!99 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!100 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!101 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!102 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!103 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!104 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!105 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!106 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!107 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!108 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!109 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!110 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!111 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!112 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!113 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!114 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!115 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!116 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!117 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!118 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!119 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!120 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!121 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!122 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!123 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!124 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!125 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!126 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!133 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!134 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!135 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!136 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !4, line: 363, baseType: !5, size: 32, elements: !138)
!138 = !{!139, !140, !141}
!139 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!140 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!141 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !4, line: 355, baseType: !5, size: 32, elements: !143)
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!145 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!146 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !148, line: 474, baseType: !5, size: 32, elements: !149)
!148 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!149 = !{!150, !151}
!150 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!151 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !153, line: 280, baseType: !5, size: 32, elements: !154)
!153 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170}
!155 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!157 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!158 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!159 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!160 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !153, line: 1817, baseType: !5, size: 32, elements: !172)
!172 = !{!173, !174, !175, !176, !177}
!173 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!176 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!177 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !153, line: 1805, baseType: !5, size: 32, elements: !179)
!179 = !{!180, !181, !182, !183, !184}
!180 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!182 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!183 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!184 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !153, line: 39, baseType: !5, size: 32, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378}
!187 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!188 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!189 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!190 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!191 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!192 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!193 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!194 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!195 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!196 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!197 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!198 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!199 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!200 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!201 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!202 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!203 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!204 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!205 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!206 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!207 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!208 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!209 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!210 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!211 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!212 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!213 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!214 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!215 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!216 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!217 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!218 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!219 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!220 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!221 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!222 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!223 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!224 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!225 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!226 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!227 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!228 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!229 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!230 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!231 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!232 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!233 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!234 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!235 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!236 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!237 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!238 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!239 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!240 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!241 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!242 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!243 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!244 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!245 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!246 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!247 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!248 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!249 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!250 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!251 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!252 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!253 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!254 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!255 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!256 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!257 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!258 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!259 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!260 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!261 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!262 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!263 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!264 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!265 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!266 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!267 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!268 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!269 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!270 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!271 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!272 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!273 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!274 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!275 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!276 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!277 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!278 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!279 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!280 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!281 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!282 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!283 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!284 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!285 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!286 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!287 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!288 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!289 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!290 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!291 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!292 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!293 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!294 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!295 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!296 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!297 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!298 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!299 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!300 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!301 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!302 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!303 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!304 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!305 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!306 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!307 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!308 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!309 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!310 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!311 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!312 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!313 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!314 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!315 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!316 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!317 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!318 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!319 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!320 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!321 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!322 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!323 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!324 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!325 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!326 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!327 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!328 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!329 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!330 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!331 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!332 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!333 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!334 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!335 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!336 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!337 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!338 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!339 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!340 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!341 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!342 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!343 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!351 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!352 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!353 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!354 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!355 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!356 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!357 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!358 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!359 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!360 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!361 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!362 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!363 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!364 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!365 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!366 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!367 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!370 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!371 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!372 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!373 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!374 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!375 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!376 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!377 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!378 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!379 = !{!380, !381, !382, !383, !386, !387, !389, !853, !1441, !1442, !1443, !1445, !5, !1446, !1447, !1454, !1459, !1460}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!382 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !390, line: 111, baseType: !391)
!390 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !4, line: 217, size: 832, elements: !393)
!393 = !{!394, !1393, !1394, !1395, !1398, !1415, !1416, !1417, !1435, !1436, !1437, !1438, !1439, !1440}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !392, file: !4, line: 219, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !4, line: 151, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !4, line: 151, size: 128, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !397, file: !4, line: 151, baseType: !400, size: 128)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !4, line: 150, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !4, line: 150, size: 128, elements: !402)
!402 = !{!403, !404, !405}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !401, file: !4, line: 150, baseType: !5, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !401, file: !4, line: 150, baseType: !5, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !401, file: !4, line: 150, baseType: !406, size: 64, offset: 64)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 64, elements: !456)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !390, line: 108, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !4, line: 122, size: 512, elements: !410)
!410 = !{!411, !412, !413, !1385, !1386, !1387, !1388, !1389, !1390, !1391}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !409, file: !4, line: 124, baseType: !391, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !409, file: !4, line: 125, baseType: !391, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !409, file: !4, line: 131, baseType: !414, size: 64, offset: 128)
!414 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !4, line: 128, size: 64, elements: !415)
!415 = !{!416, !420}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !414, file: !4, line: 129, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !390, line: 66, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !390, line: 65, flags: DIFlagFwdDecl)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !414, file: !4, line: 130, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !390, line: 50, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !424, line: 240, size: 384, elements: !425)
!424 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!425 = !{!426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !423, file: !424, line: 242, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !423, file: !424, line: 245, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !423, file: !424, line: 252, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !423, file: !424, line: 257, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !423, file: !424, line: 265, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !423, file: !424, line: 277, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !423, file: !424, line: 291, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !423, file: !424, line: 298, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !423, file: !424, line: 305, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !423, file: !424, line: 310, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !423, file: !424, line: 321, baseType: !437, size: 320, offset: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !424, line: 315, size: 320, elements: !438)
!438 = !{!439, !1352, !1354, !1383, !1384}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !437, file: !424, line: 316, baseType: !440, size: 64)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 64, elements: !456)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !424, line: 183, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !424, line: 166, size: 64, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !458, !459, !471, !474, !536, !1330, !1331, !1342, !1349}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !442, file: !424, line: 168, baseType: !382, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !442, file: !424, line: 169, baseType: !5, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !442, file: !424, line: 170, baseType: !387, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !442, file: !424, line: 171, baseType: !421, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !442, file: !424, line: 172, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !390, line: 53, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !424, line: 359, size: 128, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !451, file: !424, line: 360, baseType: !382, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !451, file: !424, line: 361, baseType: !455, size: 64, offset: 64)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 64, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 1)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !442, file: !424, line: 173, baseType: !9, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !442, file: !424, line: 174, baseType: !460, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !424, line: 133, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 115, size: 32, elements: !462)
!462 = !{!463, !464, !465, !466, !467, !468, !469, !470}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !461, file: !424, line: 118, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !461, file: !424, line: 120, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !461, file: !424, line: 121, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !461, file: !424, line: 123, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !461, file: !424, line: 125, baseType: !5, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !461, file: !424, line: 127, baseType: !5, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !461, file: !424, line: 130, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !461, file: !424, line: 132, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !442, file: !424, line: 175, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !424, line: 175, flags: DIFlagFwdDecl)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !442, file: !424, line: 176, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !477, line: 75, size: 256, elements: !478)
!477 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!478 = !{!479, !494, !495, !496}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !476, file: !477, line: 76, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !477, line: 68, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !477, line: 63, size: 320, elements: !483)
!483 = !{!484, !486, !487, !488}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !482, file: !477, line: 64, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !482, file: !477, line: 65, baseType: !485, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !482, file: !477, line: 66, baseType: !5, size: 32, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !482, file: !477, line: 67, baseType: !489, size: 128, offset: 192)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 128, elements: !492)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !477, line: 29, baseType: !491)
!491 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!492 = !{!493}
!493 = !DISubrange(count: 2)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !476, file: !477, line: 77, baseType: !480, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !476, file: !477, line: 78, baseType: !5, size: 32, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !476, file: !477, line: 79, baseType: !497, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !477, line: 49, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !477, line: 45, size: 832, elements: !500)
!500 = !{!501, !502, !503}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !499, file: !477, line: 46, baseType: !485, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !499, file: !477, line: 47, baseType: !475, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !499, file: !477, line: 48, baseType: !504, size: 704, offset: 128)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !505, line: 164, size: 704, elements: !506)
!505 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!506 = !{!507, !509, !519, !520, !521, !522, !523, !524, !528, !532, !533, !534, !535}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !504, file: !505, line: 166, baseType: !508, size: 64)
!508 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !504, file: !505, line: 167, baseType: !510, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !505, line: 157, size: 192, elements: !512)
!512 = !{!513, !514, !515}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !511, file: !505, line: 159, baseType: !384, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !511, file: !505, line: 160, baseType: !510, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !511, file: !505, line: 161, baseType: !516, size: 32, offset: 128)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 32, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 4)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !504, file: !505, line: 168, baseType: !384, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !504, file: !505, line: 169, baseType: !384, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !504, file: !505, line: 170, baseType: !384, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !504, file: !505, line: 171, baseType: !508, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !504, file: !505, line: 172, baseType: !382, size: 32, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !504, file: !505, line: 176, baseType: !525, size: 64, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!510, !386, !508}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !504, file: !505, line: 177, baseType: !529, size: 64, offset: 512)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !386, !510}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !504, file: !505, line: 178, baseType: !386, size: 64, offset: 576)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !504, file: !505, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !504, file: !505, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !504, file: !505, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !442, file: !424, line: 177, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !390, line: 56, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !153, line: 3371, size: 1792, elements: !540)
!540 = !{!541, !574, !580, !591, !610, !621, !626, !633, !639, !652, !664, !702, !707, !735, !743, !744, !749, !758, !764, !769, !773, !777, !954, !1003, !1009, !1016, !1023, !1049, !1074, !1091, !1103, !1125, !1140, !1312}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !539, file: !153, line: 3372, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !153, line: 360, size: 64, elements: !543)
!543 = !{!544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !542, file: !153, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !542, file: !153, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !542, file: !153, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !542, file: !153, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !542, file: !153, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !542, file: !153, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !542, file: !153, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !542, file: !153, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !542, file: !153, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !542, file: !153, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !542, file: !153, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !542, file: !153, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !542, file: !153, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !542, file: !153, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !542, file: !153, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !542, file: !153, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !542, file: !153, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !542, file: !153, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !542, file: !153, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !542, file: !153, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !542, file: !153, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !542, file: !153, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !542, file: !153, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !542, file: !153, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !542, file: !153, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !542, file: !153, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !542, file: !153, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !542, file: !153, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !542, file: !153, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !542, file: !153, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !539, file: !153, line: 3373, baseType: !575, size: 192)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !153, line: 402, size: 192, elements: !576)
!576 = !{!577, !578, !579}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !575, file: !153, line: 403, baseType: !542, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !575, file: !153, line: 404, baseType: !537, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !575, file: !153, line: 405, baseType: !537, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !539, file: !153, line: 3374, baseType: !581, size: 320)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !153, line: 1384, size: 320, elements: !582)
!582 = !{!583, !584}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !581, file: !153, line: 1385, baseType: !575, size: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !581, file: !153, line: 1386, baseType: !585, size: 128, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !586, line: 58, baseType: !587)
!586 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !586, line: 54, size: 128, elements: !588)
!588 = !{!589, !590}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !587, file: !586, line: 56, baseType: !491, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !587, file: !586, line: 57, baseType: !508, size: 64, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !539, file: !153, line: 3375, baseType: !592, size: 256)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !153, line: 1397, size: 256, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !592, file: !153, line: 1398, baseType: !575, size: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !592, file: !153, line: 1399, baseType: !596, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !598, line: 52, size: 256, elements: !599)
!598 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!599 = !{!600, !601, !602, !603, !604, !605, !606}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !597, file: !598, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !597, file: !598, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !597, file: !598, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !597, file: !598, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !597, file: !598, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !597, file: !598, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !597, file: !598, line: 62, baseType: !607, size: 192, offset: 64)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 192, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 3)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !539, file: !153, line: 3376, baseType: !611, size: 256)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !153, line: 1408, size: 256, elements: !612)
!612 = !{!613, !614}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !611, file: !153, line: 1409, baseType: !575, size: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !611, file: !153, line: 1410, baseType: !615, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !617, line: 27, size: 192, elements: !618)
!617 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!618 = !{!619, !620}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !616, file: !617, line: 29, baseType: !585, size: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !616, file: !617, line: 30, baseType: !9, size: 32, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !539, file: !153, line: 3377, baseType: !622, size: 256)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !153, line: 1437, size: 256, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !622, file: !153, line: 1438, baseType: !575, size: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !622, file: !153, line: 1439, baseType: !537, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !539, file: !153, line: 3378, baseType: !627, size: 256)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !153, line: 1418, size: 256, elements: !628)
!628 = !{!629, !630, !631}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !627, file: !153, line: 1419, baseType: !575, size: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !627, file: !153, line: 1420, baseType: !382, size: 32, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !627, file: !153, line: 1421, baseType: !632, size: 8, offset: 224)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 8, elements: !456)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !539, file: !153, line: 3379, baseType: !634, size: 320)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !153, line: 1428, size: 320, elements: !635)
!635 = !{!636, !637, !638}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !634, file: !153, line: 1429, baseType: !575, size: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !634, file: !153, line: 1430, baseType: !537, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !634, file: !153, line: 1431, baseType: !537, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !539, file: !153, line: 3380, baseType: !640, size: 320)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !153, line: 1460, size: 320, elements: !641)
!641 = !{!642, !643}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !640, file: !153, line: 1461, baseType: !575, size: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !640, file: !153, line: 1462, baseType: !644, size: 128, offset: 192)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !645, line: 31, size: 128, elements: !646)
!645 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!646 = !{!647, !650, !651}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !644, file: !645, line: 32, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !644, file: !645, line: 33, baseType: !5, size: 32, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !644, file: !645, line: 34, baseType: !5, size: 32, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !539, file: !153, line: 3381, baseType: !653, size: 384)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !153, line: 2507, size: 384, elements: !654)
!654 = !{!655, !656, !661, !662, !663}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !653, file: !153, line: 2508, baseType: !575, size: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !653, file: !153, line: 2509, baseType: !657, size: 32, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !658, line: 58, baseType: !659)
!658 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !660, line: 44, baseType: !5)
!660 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!661 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !653, file: !153, line: 2510, baseType: !5, size: 32, offset: 224)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !653, file: !153, line: 2511, baseType: !537, size: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !653, file: !153, line: 2512, baseType: !537, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !539, file: !153, line: 3382, baseType: !665, size: 896)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !153, line: 2652, size: 896, elements: !666)
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !665, file: !153, line: 2653, baseType: !653, size: 384)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !665, file: !153, line: 2654, baseType: !537, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !665, file: !153, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !665, file: !153, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !665, file: !153, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !665, file: !153, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !665, file: !153, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !665, file: !153, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !665, file: !153, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !665, file: !153, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !665, file: !153, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !665, file: !153, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !665, file: !153, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !665, file: !153, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !665, file: !153, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !665, file: !153, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !665, file: !153, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !665, file: !153, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !665, file: !153, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !665, file: !153, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !665, file: !153, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !665, file: !153, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !665, file: !153, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !665, file: !153, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !665, file: !153, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !665, file: !153, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !665, file: !153, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !665, file: !153, line: 2703, baseType: !5, size: 32, offset: 512)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !665, file: !153, line: 2705, baseType: !537, size: 64, offset: 576)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !665, file: !153, line: 2706, baseType: !537, size: 64, offset: 640)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !665, file: !153, line: 2707, baseType: !537, size: 64, offset: 704)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !665, file: !153, line: 2708, baseType: !537, size: 64, offset: 768)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !665, file: !153, line: 2711, baseType: !700, size: 64, offset: 832)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !153, line: 2711, flags: DIFlagFwdDecl)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !539, file: !153, line: 3383, baseType: !703, size: 960)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !153, line: 2756, size: 960, elements: !704)
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !703, file: !153, line: 2757, baseType: !665, size: 896)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !703, file: !153, line: 2758, baseType: !421, size: 64, offset: 896)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !539, file: !153, line: 3384, baseType: !708, size: 1472)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !153, line: 3114, size: 1472, elements: !709)
!709 = !{!710, !731, !732, !733, !734}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !708, file: !153, line: 3115, baseType: !711, size: 1216)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !153, line: 2984, size: 1216, elements: !712)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !711, file: !153, line: 2985, baseType: !703, size: 960)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !711, file: !153, line: 2986, baseType: !537, size: 64, offset: 960)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !711, file: !153, line: 2987, baseType: !537, size: 64, offset: 1024)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !711, file: !153, line: 2988, baseType: !537, size: 64, offset: 1088)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !711, file: !153, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !711, file: !153, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !711, file: !153, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !711, file: !153, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !711, file: !153, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !711, file: !153, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !711, file: !153, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !711, file: !153, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !711, file: !153, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !711, file: !153, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !711, file: !153, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !711, file: !153, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !711, file: !153, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !711, file: !153, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !708, file: !153, line: 3117, baseType: !537, size: 64, offset: 1216)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !708, file: !153, line: 3119, baseType: !537, size: 64, offset: 1280)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !708, file: !153, line: 3121, baseType: !537, size: 64, offset: 1344)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !708, file: !153, line: 3123, baseType: !537, size: 64, offset: 1408)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !539, file: !153, line: 3385, baseType: !736, size: 1088)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !153, line: 2874, size: 1088, elements: !737)
!737 = !{!738, !739, !740}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !736, file: !153, line: 2875, baseType: !703, size: 960)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !736, file: !153, line: 2876, baseType: !421, size: 64, offset: 960)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !736, file: !153, line: 2877, baseType: !741, size: 64, offset: 1024)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !153, line: 2856, flags: DIFlagFwdDecl)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !539, file: !153, line: 3386, baseType: !711, size: 1216)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !539, file: !153, line: 3387, baseType: !745, size: 1280)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !153, line: 3093, size: 1280, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !745, file: !153, line: 3094, baseType: !711, size: 1216)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !745, file: !153, line: 3095, baseType: !741, size: 64, offset: 1216)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !539, file: !153, line: 3388, baseType: !750, size: 1216)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !153, line: 2824, size: 1216, elements: !751)
!751 = !{!752, !753, !754, !755, !756, !757}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !750, file: !153, line: 2825, baseType: !665, size: 896)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !750, file: !153, line: 2827, baseType: !537, size: 64, offset: 896)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !750, file: !153, line: 2828, baseType: !537, size: 64, offset: 960)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !750, file: !153, line: 2829, baseType: !537, size: 64, offset: 1024)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !750, file: !153, line: 2830, baseType: !537, size: 64, offset: 1088)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !750, file: !153, line: 2831, baseType: !537, size: 64, offset: 1152)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !539, file: !153, line: 3389, baseType: !759, size: 1024)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !153, line: 2850, size: 1024, elements: !760)
!760 = !{!761, !762, !763}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !759, file: !153, line: 2851, baseType: !703, size: 960)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !759, file: !153, line: 2852, baseType: !382, size: 32, offset: 960)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !759, file: !153, line: 2853, baseType: !382, size: 32, offset: 992)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !539, file: !153, line: 3390, baseType: !765, size: 1024)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !153, line: 2857, size: 1024, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !765, file: !153, line: 2858, baseType: !703, size: 960)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !765, file: !153, line: 2859, baseType: !741, size: 64, offset: 960)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !539, file: !153, line: 3391, baseType: !770, size: 960)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !153, line: 2862, size: 960, elements: !771)
!771 = !{!772}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !770, file: !153, line: 2863, baseType: !703, size: 960)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !539, file: !153, line: 3392, baseType: !774, size: 1472)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !153, line: 3304, size: 1472, elements: !775)
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !774, file: !153, line: 3305, baseType: !708, size: 1472)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !539, file: !153, line: 3393, baseType: !778, size: 1792)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !153, line: 3248, size: 1792, elements: !779)
!779 = !{!780, !781, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !778, file: !153, line: 3249, baseType: !708, size: 1472)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !778, file: !153, line: 3251, baseType: !782, size: 64, offset: 1472)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !784, line: 463, size: 1152, elements: !785)
!784 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!785 = !{!786, !789, !819, !820, !823, !826, !878, !879, !880, !881, !882, !906, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !783, file: !784, line: 464, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !784, line: 464, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !783, file: !784, line: 467, baseType: !790, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !4, line: 374, size: 640, elements: !792)
!792 = !{!793, !794, !795, !808, !809, !810, !811, !812, !813, !815, !817, !818}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !791, file: !4, line: 377, baseType: !389, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !791, file: !4, line: 378, baseType: !389, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !791, file: !4, line: 381, baseType: !796, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !4, line: 282, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !4, line: 282, size: 128, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !798, file: !4, line: 282, baseType: !801, size: 128)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !4, line: 281, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !4, line: 281, size: 128, elements: !803)
!803 = !{!804, !805, !806}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !802, file: !4, line: 281, baseType: !5, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !802, file: !4, line: 281, baseType: !5, size: 32, offset: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !802, file: !4, line: 281, baseType: !807, size: 64, offset: 64)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 64, elements: !456)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !791, file: !4, line: 384, baseType: !382, size: 32, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !791, file: !4, line: 387, baseType: !382, size: 32, offset: 224)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !791, file: !4, line: 390, baseType: !382, size: 32, offset: 256)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !791, file: !4, line: 394, baseType: !796, size: 64, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !791, file: !4, line: 396, baseType: !137, size: 32, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !791, file: !4, line: 399, baseType: !814, size: 64, offset: 416)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 64, elements: !492)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !791, file: !4, line: 402, baseType: !816, size: 64, offset: 480)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !492)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !791, file: !4, line: 406, baseType: !382, size: 32, offset: 544)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !791, file: !4, line: 409, baseType: !382, size: 32, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !783, file: !784, line: 470, baseType: !418, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !783, file: !784, line: 473, baseType: !821, size: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !784, line: 166, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !783, file: !784, line: 476, baseType: !824, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !784, line: 476, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !783, file: !784, line: 479, baseType: !827, size: 64, offset: 320)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !828, line: 144, baseType: !829)
!828 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !828, line: 100, size: 896, elements: !831)
!831 = !{!832, !840, !845, !850, !852, !855, !856, !857, !858, !859, !864, !866, !867, !872, !877}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !830, file: !828, line: 102, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !828, line: 52, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!837, !838}
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !828, line: 47, baseType: !5)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !830, file: !828, line: 105, baseType: !841, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !828, line: 59, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!382, !838, !838}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !830, file: !828, line: 108, baseType: !846, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !828, line: 63, baseType: !847)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !386}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !830, file: !828, line: 111, baseType: !851, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !830, file: !828, line: 114, baseType: !853, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !854, line: 46, baseType: !491)
!854 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!855 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !830, file: !828, line: 117, baseType: !853, size: 64, offset: 320)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !830, file: !828, line: 120, baseType: !853, size: 64, offset: 384)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !830, file: !828, line: 124, baseType: !5, size: 32, offset: 448)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !830, file: !828, line: 128, baseType: !5, size: 32, offset: 480)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !830, file: !828, line: 131, baseType: !860, size: 64, offset: 512)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !828, line: 75, baseType: !861)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!386, !853, !853}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !830, file: !828, line: 132, baseType: !865, size: 64, offset: 576)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !828, line: 78, baseType: !847)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !830, file: !828, line: 135, baseType: !386, size: 64, offset: 640)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !830, file: !828, line: 136, baseType: !868, size: 64, offset: 704)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !828, line: 82, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!386, !386, !853, !853}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !830, file: !828, line: 137, baseType: !873, size: 64, offset: 768)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !828, line: 83, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !386, !386}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !830, file: !828, line: 141, baseType: !5, size: 32, offset: 832)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !783, file: !784, line: 484, baseType: !537, size: 64, offset: 384)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !783, file: !784, line: 488, baseType: !537, size: 64, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !783, file: !784, line: 493, baseType: !537, size: 64, offset: 512)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !783, file: !784, line: 496, baseType: !537, size: 64, offset: 576)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !783, file: !784, line: 501, baseType: !883, size: 64, offset: 640)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !148, line: 2355, size: 576, elements: !885)
!885 = !{!886, !889, !890, !891, !892, !894, !895, !900, !901, !902, !903, !904, !905}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !884, file: !148, line: 2356, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !148, line: 2356, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !884, file: !148, line: 2357, baseType: !387, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !884, file: !148, line: 2358, baseType: !382, size: 32, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !884, file: !148, line: 2359, baseType: !382, size: 32, offset: 160)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !884, file: !148, line: 2360, baseType: !893, size: 128, offset: 192)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 128, elements: !517)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !884, file: !148, line: 2364, baseType: !382, size: 32, offset: 320)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !884, file: !148, line: 2367, baseType: !896, size: 128, offset: 384)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !148, line: 2349, size: 128, elements: !897)
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !896, file: !148, line: 2351, baseType: !421, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !896, file: !148, line: 2352, baseType: !508, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !884, file: !148, line: 2371, baseType: !147, size: 32, offset: 512)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !884, file: !148, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !884, file: !148, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !884, file: !148, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !884, file: !148, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !884, file: !148, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !783, file: !784, line: 504, baseType: !907, size: 64, offset: 704)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !784, line: 504, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !783, file: !784, line: 507, baseType: !827, size: 64, offset: 768)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !783, file: !784, line: 510, baseType: !382, size: 32, offset: 832)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !783, file: !784, line: 513, baseType: !382, size: 32, offset: 864)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !783, file: !784, line: 516, baseType: !657, size: 32, offset: 896)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !783, file: !784, line: 519, baseType: !657, size: 32, offset: 928)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !783, file: !784, line: 522, baseType: !5, size: 32, offset: 960)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !783, file: !784, line: 523, baseType: !5, size: 32, offset: 992)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !783, file: !784, line: 528, baseType: !387, size: 64, offset: 1024)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !783, file: !784, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !783, file: !784, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !783, file: !784, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !783, file: !784, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !783, file: !784, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !783, file: !784, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !783, file: !784, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !783, file: !784, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !783, file: !784, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !783, file: !784, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !783, file: !784, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !783, file: !784, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !783, file: !784, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !783, file: !784, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !783, file: !784, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !783, file: !784, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !778, file: !153, line: 3254, baseType: !537, size: 64, offset: 1536)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !778, file: !153, line: 3257, baseType: !537, size: 64, offset: 1600)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !778, file: !153, line: 3258, baseType: !537, size: 64, offset: 1664)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !778, file: !153, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !778, file: !153, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !778, file: !153, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !778, file: !153, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !778, file: !153, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !778, file: !153, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !778, file: !153, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !778, file: !153, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !778, file: !153, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !778, file: !153, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !778, file: !153, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !778, file: !153, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !778, file: !153, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !778, file: !153, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !778, file: !153, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !778, file: !153, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !778, file: !153, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !778, file: !153, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !539, file: !153, line: 3394, baseType: !955, size: 1344)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !153, line: 2279, size: 1344, elements: !956)
!956 = !{!957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !982, !983, !984, !992, !993, !994, !995, !996, !997, !998, !999, !1000}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !955, file: !153, line: 2280, baseType: !575, size: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !955, file: !153, line: 2281, baseType: !537, size: 64, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !955, file: !153, line: 2282, baseType: !537, size: 64, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !955, file: !153, line: 2283, baseType: !537, size: 64, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !955, file: !153, line: 2284, baseType: !537, size: 64, offset: 384)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !955, file: !153, line: 2285, baseType: !5, size: 32, offset: 448)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !955, file: !153, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !955, file: !153, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !955, file: !153, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !955, file: !153, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !955, file: !153, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !955, file: !153, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !955, file: !153, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !955, file: !153, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !955, file: !153, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !955, file: !153, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !955, file: !153, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !955, file: !153, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !955, file: !153, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !955, file: !153, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !955, file: !153, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !955, file: !153, line: 2305, baseType: !5, size: 32, offset: 512)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !955, file: !153, line: 2306, baseType: !980, size: 32, offset: 544)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !981, line: 31, baseType: !382)
!981 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!982 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !955, file: !153, line: 2307, baseType: !537, size: 64, offset: 576)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !955, file: !153, line: 2308, baseType: !537, size: 64, offset: 640)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !955, file: !153, line: 2314, baseType: !985, size: 64, offset: 704)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !153, line: 2309, size: 64, elements: !986)
!986 = !{!987, !988, !989}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !985, file: !153, line: 2310, baseType: !382, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !985, file: !153, line: 2311, baseType: !387, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !985, file: !153, line: 2312, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !153, line: 2277, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !955, file: !153, line: 2315, baseType: !537, size: 64, offset: 768)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !955, file: !153, line: 2316, baseType: !537, size: 64, offset: 832)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !955, file: !153, line: 2317, baseType: !537, size: 64, offset: 896)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !955, file: !153, line: 2318, baseType: !537, size: 64, offset: 960)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !955, file: !153, line: 2319, baseType: !537, size: 64, offset: 1024)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !955, file: !153, line: 2320, baseType: !537, size: 64, offset: 1088)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !955, file: !153, line: 2321, baseType: !537, size: 64, offset: 1152)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !955, file: !153, line: 2322, baseType: !537, size: 64, offset: 1216)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !955, file: !153, line: 2324, baseType: !1001, size: 64, offset: 1280)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !153, line: 2324, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !539, file: !153, line: 3395, baseType: !1004, size: 320)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !153, line: 1469, size: 320, elements: !1005)
!1005 = !{!1006, !1007, !1008}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1004, file: !153, line: 1470, baseType: !575, size: 192)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1004, file: !153, line: 1471, baseType: !537, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1004, file: !153, line: 1472, baseType: !537, size: 64, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !539, file: !153, line: 3396, baseType: !1010, size: 320)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !153, line: 1482, size: 320, elements: !1011)
!1011 = !{!1012, !1013, !1014}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1010, file: !153, line: 1483, baseType: !575, size: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1010, file: !153, line: 1484, baseType: !382, size: 32, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1010, file: !153, line: 1485, baseType: !1015, size: 64, offset: 256)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 64, elements: !456)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !539, file: !153, line: 3397, baseType: !1017, size: 384)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !153, line: 1829, size: 384, elements: !1018)
!1018 = !{!1019, !1020, !1021, !1022}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1017, file: !153, line: 1830, baseType: !575, size: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1017, file: !153, line: 1831, baseType: !657, size: 32, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1017, file: !153, line: 1832, baseType: !537, size: 64, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1017, file: !153, line: 1835, baseType: !1015, size: 64, offset: 320)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !539, file: !153, line: 3398, baseType: !1024, size: 704)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !153, line: 1898, size: 704, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1032, !1033, !1036}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1024, file: !153, line: 1899, baseType: !575, size: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1024, file: !153, line: 1902, baseType: !537, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1024, file: !153, line: 1905, baseType: !1029, size: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !390, line: 58, baseType: !1030)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !390, line: 57, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1024, file: !153, line: 1908, baseType: !5, size: 32, offset: 320)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1024, file: !153, line: 1911, baseType: !1034, size: 64, offset: 384)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !153, line: 1876, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1024, file: !153, line: 1914, baseType: !1037, size: 256, offset: 448)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !153, line: 1883, size: 256, elements: !1038)
!1038 = !{!1039, !1041, !1042, !1047}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1037, file: !153, line: 1884, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1037, file: !153, line: 1885, baseType: !1040, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1037, file: !153, line: 1891, baseType: !1043, size: 64, offset: 128)
!1043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !153, line: 1891, size: 64, elements: !1044)
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1043, file: !153, line: 1891, baseType: !1029, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1043, file: !153, line: 1891, baseType: !537, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1037, file: !153, line: 1892, baseType: !1048, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !539, file: !153, line: 3399, baseType: !1050, size: 704)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !153, line: 2008, size: 704, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1069, !1070, !1071, !1072, !1073}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1050, file: !153, line: 2009, baseType: !575, size: 192)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1050, file: !153, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1050, file: !153, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1050, file: !153, line: 2014, baseType: !657, size: 32, offset: 224)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1050, file: !153, line: 2016, baseType: !537, size: 64, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1050, file: !153, line: 2017, baseType: !1058, size: 64, offset: 320)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !153, line: 183, baseType: !1060)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !153, line: 183, size: 128, elements: !1061)
!1061 = !{!1062}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1060, file: !153, line: 183, baseType: !1063, size: 128)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !153, line: 182, baseType: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !153, line: 182, size: 128, elements: !1065)
!1065 = !{!1066, !1067, !1068}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1064, file: !153, line: 182, baseType: !5, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1064, file: !153, line: 182, baseType: !5, size: 32, offset: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1064, file: !153, line: 182, baseType: !1015, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1050, file: !153, line: 2019, baseType: !537, size: 64, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1050, file: !153, line: 2020, baseType: !537, size: 64, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1050, file: !153, line: 2021, baseType: !537, size: 64, offset: 512)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1050, file: !153, line: 2022, baseType: !537, size: 64, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1050, file: !153, line: 2023, baseType: !537, size: 64, offset: 640)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !539, file: !153, line: 3400, baseType: !1075, size: 832)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !153, line: 2430, size: 832, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1075, file: !153, line: 2431, baseType: !575, size: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1075, file: !153, line: 2433, baseType: !537, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1075, file: !153, line: 2434, baseType: !537, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1075, file: !153, line: 2435, baseType: !537, size: 64, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1075, file: !153, line: 2436, baseType: !537, size: 64, offset: 384)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1075, file: !153, line: 2437, baseType: !1058, size: 64, offset: 448)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1075, file: !153, line: 2438, baseType: !537, size: 64, offset: 512)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1075, file: !153, line: 2440, baseType: !537, size: 64, offset: 576)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1075, file: !153, line: 2441, baseType: !537, size: 64, offset: 640)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1075, file: !153, line: 2443, baseType: !1087, size: 128, offset: 704)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !153, line: 182, baseType: !1088)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !153, line: 182, size: 128, elements: !1089)
!1089 = !{!1090}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1088, file: !153, line: 182, baseType: !1063, size: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !539, file: !153, line: 3401, baseType: !1092, size: 320)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !153, line: 3327, size: 320, elements: !1093)
!1093 = !{!1094, !1095, !1102}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1092, file: !153, line: 3329, baseType: !575, size: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1092, file: !153, line: 3330, baseType: !1096, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !153, line: 3320, size: 192, elements: !1098)
!1098 = !{!1099, !1100, !1101}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1097, file: !153, line: 3322, baseType: !1096, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1097, file: !153, line: 3323, baseType: !1096, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1097, file: !153, line: 3324, baseType: !537, size: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1092, file: !153, line: 3331, baseType: !1096, size: 64, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !539, file: !153, line: 3402, baseType: !1104, size: 256)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !153, line: 1540, size: 256, elements: !1105)
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1104, file: !153, line: 1541, baseType: !575, size: 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1104, file: !153, line: 1542, baseType: !1108, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !153, line: 1538, baseType: !1110)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !153, line: 1538, size: 192, elements: !1111)
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1110, file: !153, line: 1538, baseType: !1113, size: 192)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !153, line: 1537, baseType: !1114)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !153, line: 1537, size: 192, elements: !1115)
!1115 = !{!1116, !1117, !1118}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1114, file: !153, line: 1537, baseType: !5, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1114, file: !153, line: 1537, baseType: !5, size: 32, offset: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1114, file: !153, line: 1537, baseType: !1119, size: 128, offset: 64)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1120, size: 128, elements: !456)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !153, line: 1535, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !153, line: 1532, size: 128, elements: !1122)
!1122 = !{!1123, !1124}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1121, file: !153, line: 1533, baseType: !537, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1121, file: !153, line: 1534, baseType: !537, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !539, file: !153, line: 3403, baseType: !1126, size: 512)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !153, line: 1938, size: 512, elements: !1127)
!1127 = !{!1128, !1129, !1130, !1131, !1137, !1138, !1139}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1126, file: !153, line: 1939, baseType: !575, size: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1126, file: !153, line: 1940, baseType: !657, size: 32, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1126, file: !153, line: 1941, baseType: !152, size: 32, offset: 224)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1126, file: !153, line: 1946, baseType: !1132, size: 32, offset: 256)
!1132 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !153, line: 1942, size: 32, elements: !1133)
!1133 = !{!1134, !1135, !1136}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1132, file: !153, line: 1943, baseType: !171, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1132, file: !153, line: 1944, baseType: !178, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1132, file: !153, line: 1945, baseType: !185, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1126, file: !153, line: 1950, baseType: !417, size: 64, offset: 320)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1126, file: !153, line: 1951, baseType: !417, size: 64, offset: 384)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1126, file: !153, line: 1953, baseType: !1015, size: 64, offset: 448)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !539, file: !153, line: 3404, baseType: !1141, size: 1664)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !153, line: 3337, size: 1664, elements: !1142)
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1141, file: !153, line: 3338, baseType: !575, size: 192)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1141, file: !153, line: 3341, baseType: !1145, size: 1472, offset: 192)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1146, line: 410, size: 1472, elements: !1147)
!1146 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1147 = !{!1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1145, file: !1146, line: 412, baseType: !382, size: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1145, file: !1146, line: 413, baseType: !382, size: 32, offset: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1145, file: !1146, line: 414, baseType: !382, size: 32, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1145, file: !1146, line: 415, baseType: !382, size: 32, offset: 96)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1145, file: !1146, line: 416, baseType: !382, size: 32, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1145, file: !1146, line: 417, baseType: !382, size: 32, offset: 160)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1145, file: !1146, line: 418, baseType: !381, size: 8, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1145, file: !1146, line: 419, baseType: !381, size: 8, offset: 200)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1145, file: !1146, line: 420, baseType: !1157, size: 8, offset: 208)
!1157 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1145, file: !1146, line: 421, baseType: !1157, size: 8, offset: 216)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1145, file: !1146, line: 422, baseType: !1157, size: 8, offset: 224)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1145, file: !1146, line: 423, baseType: !1157, size: 8, offset: 232)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1145, file: !1146, line: 424, baseType: !1157, size: 8, offset: 240)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1145, file: !1146, line: 425, baseType: !1157, size: 8, offset: 248)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1145, file: !1146, line: 426, baseType: !1157, size: 8, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1145, file: !1146, line: 427, baseType: !1157, size: 8, offset: 264)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1145, file: !1146, line: 428, baseType: !1157, size: 8, offset: 272)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1145, file: !1146, line: 429, baseType: !1157, size: 8, offset: 280)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1145, file: !1146, line: 430, baseType: !1157, size: 8, offset: 288)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1145, file: !1146, line: 431, baseType: !1157, size: 8, offset: 296)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1145, file: !1146, line: 432, baseType: !1157, size: 8, offset: 304)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1145, file: !1146, line: 433, baseType: !1157, size: 8, offset: 312)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1145, file: !1146, line: 434, baseType: !1157, size: 8, offset: 320)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1145, file: !1146, line: 435, baseType: !1157, size: 8, offset: 328)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1145, file: !1146, line: 436, baseType: !1157, size: 8, offset: 336)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1145, file: !1146, line: 437, baseType: !1157, size: 8, offset: 344)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1145, file: !1146, line: 438, baseType: !1157, size: 8, offset: 352)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1145, file: !1146, line: 439, baseType: !1157, size: 8, offset: 360)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1145, file: !1146, line: 440, baseType: !1157, size: 8, offset: 368)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1145, file: !1146, line: 441, baseType: !1157, size: 8, offset: 376)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1145, file: !1146, line: 442, baseType: !1157, size: 8, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1145, file: !1146, line: 443, baseType: !1157, size: 8, offset: 392)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1145, file: !1146, line: 444, baseType: !1157, size: 8, offset: 400)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1145, file: !1146, line: 445, baseType: !1157, size: 8, offset: 408)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1145, file: !1146, line: 446, baseType: !1157, size: 8, offset: 416)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1145, file: !1146, line: 447, baseType: !1157, size: 8, offset: 424)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1145, file: !1146, line: 448, baseType: !1157, size: 8, offset: 432)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1145, file: !1146, line: 449, baseType: !1157, size: 8, offset: 440)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1145, file: !1146, line: 450, baseType: !1157, size: 8, offset: 448)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1145, file: !1146, line: 451, baseType: !1157, size: 8, offset: 456)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1145, file: !1146, line: 452, baseType: !1157, size: 8, offset: 464)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1145, file: !1146, line: 453, baseType: !1157, size: 8, offset: 472)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1145, file: !1146, line: 454, baseType: !1157, size: 8, offset: 480)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1145, file: !1146, line: 455, baseType: !1157, size: 8, offset: 488)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1145, file: !1146, line: 456, baseType: !1157, size: 8, offset: 496)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1145, file: !1146, line: 457, baseType: !1157, size: 8, offset: 504)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1145, file: !1146, line: 458, baseType: !1157, size: 8, offset: 512)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1145, file: !1146, line: 459, baseType: !1157, size: 8, offset: 520)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1145, file: !1146, line: 460, baseType: !1157, size: 8, offset: 528)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1145, file: !1146, line: 461, baseType: !1157, size: 8, offset: 536)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1145, file: !1146, line: 462, baseType: !1157, size: 8, offset: 544)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1145, file: !1146, line: 463, baseType: !1157, size: 8, offset: 552)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1145, file: !1146, line: 464, baseType: !1157, size: 8, offset: 560)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1145, file: !1146, line: 465, baseType: !1157, size: 8, offset: 568)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1145, file: !1146, line: 466, baseType: !1157, size: 8, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1145, file: !1146, line: 467, baseType: !1157, size: 8, offset: 584)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1145, file: !1146, line: 468, baseType: !1157, size: 8, offset: 592)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1145, file: !1146, line: 469, baseType: !1157, size: 8, offset: 600)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1145, file: !1146, line: 470, baseType: !1157, size: 8, offset: 608)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1145, file: !1146, line: 471, baseType: !1157, size: 8, offset: 616)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1145, file: !1146, line: 472, baseType: !1157, size: 8, offset: 624)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1145, file: !1146, line: 473, baseType: !1157, size: 8, offset: 632)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1145, file: !1146, line: 474, baseType: !1157, size: 8, offset: 640)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1145, file: !1146, line: 475, baseType: !1157, size: 8, offset: 648)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1145, file: !1146, line: 476, baseType: !1157, size: 8, offset: 656)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1145, file: !1146, line: 477, baseType: !1157, size: 8, offset: 664)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1145, file: !1146, line: 478, baseType: !1157, size: 8, offset: 672)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1145, file: !1146, line: 479, baseType: !1157, size: 8, offset: 680)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1145, file: !1146, line: 480, baseType: !1157, size: 8, offset: 688)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1145, file: !1146, line: 481, baseType: !1157, size: 8, offset: 696)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1145, file: !1146, line: 482, baseType: !1157, size: 8, offset: 704)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1145, file: !1146, line: 483, baseType: !1157, size: 8, offset: 712)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1145, file: !1146, line: 484, baseType: !1157, size: 8, offset: 720)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1145, file: !1146, line: 485, baseType: !1157, size: 8, offset: 728)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1145, file: !1146, line: 486, baseType: !1157, size: 8, offset: 736)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1145, file: !1146, line: 487, baseType: !1157, size: 8, offset: 744)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1145, file: !1146, line: 488, baseType: !1157, size: 8, offset: 752)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1145, file: !1146, line: 489, baseType: !1157, size: 8, offset: 760)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1145, file: !1146, line: 490, baseType: !1157, size: 8, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1145, file: !1146, line: 491, baseType: !1157, size: 8, offset: 776)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1145, file: !1146, line: 492, baseType: !1157, size: 8, offset: 784)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1145, file: !1146, line: 493, baseType: !1157, size: 8, offset: 792)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1145, file: !1146, line: 494, baseType: !1157, size: 8, offset: 800)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1145, file: !1146, line: 495, baseType: !1157, size: 8, offset: 808)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1145, file: !1146, line: 496, baseType: !1157, size: 8, offset: 816)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1145, file: !1146, line: 497, baseType: !1157, size: 8, offset: 824)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1145, file: !1146, line: 498, baseType: !1157, size: 8, offset: 832)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1145, file: !1146, line: 499, baseType: !1157, size: 8, offset: 840)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1145, file: !1146, line: 500, baseType: !1157, size: 8, offset: 848)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1145, file: !1146, line: 501, baseType: !1157, size: 8, offset: 856)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1145, file: !1146, line: 502, baseType: !1157, size: 8, offset: 864)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1145, file: !1146, line: 503, baseType: !1157, size: 8, offset: 872)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1145, file: !1146, line: 504, baseType: !1157, size: 8, offset: 880)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1145, file: !1146, line: 505, baseType: !1157, size: 8, offset: 888)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1145, file: !1146, line: 506, baseType: !1157, size: 8, offset: 896)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1145, file: !1146, line: 507, baseType: !1157, size: 8, offset: 904)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1145, file: !1146, line: 508, baseType: !1157, size: 8, offset: 912)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1145, file: !1146, line: 509, baseType: !1157, size: 8, offset: 920)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1145, file: !1146, line: 510, baseType: !1157, size: 8, offset: 928)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1145, file: !1146, line: 511, baseType: !1157, size: 8, offset: 936)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1145, file: !1146, line: 512, baseType: !1157, size: 8, offset: 944)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1145, file: !1146, line: 513, baseType: !1157, size: 8, offset: 952)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1145, file: !1146, line: 514, baseType: !1157, size: 8, offset: 960)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1145, file: !1146, line: 515, baseType: !1157, size: 8, offset: 968)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1145, file: !1146, line: 516, baseType: !1157, size: 8, offset: 976)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1145, file: !1146, line: 517, baseType: !1157, size: 8, offset: 984)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1145, file: !1146, line: 518, baseType: !1157, size: 8, offset: 992)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1145, file: !1146, line: 519, baseType: !1157, size: 8, offset: 1000)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1145, file: !1146, line: 520, baseType: !1157, size: 8, offset: 1008)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1145, file: !1146, line: 521, baseType: !1157, size: 8, offset: 1016)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1145, file: !1146, line: 522, baseType: !1157, size: 8, offset: 1024)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1145, file: !1146, line: 523, baseType: !1157, size: 8, offset: 1032)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1145, file: !1146, line: 524, baseType: !1157, size: 8, offset: 1040)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1145, file: !1146, line: 525, baseType: !1157, size: 8, offset: 1048)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1145, file: !1146, line: 526, baseType: !1157, size: 8, offset: 1056)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1145, file: !1146, line: 527, baseType: !1157, size: 8, offset: 1064)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1145, file: !1146, line: 528, baseType: !1157, size: 8, offset: 1072)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1145, file: !1146, line: 529, baseType: !1157, size: 8, offset: 1080)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1145, file: !1146, line: 530, baseType: !1157, size: 8, offset: 1088)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1145, file: !1146, line: 531, baseType: !1157, size: 8, offset: 1096)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1145, file: !1146, line: 532, baseType: !1157, size: 8, offset: 1104)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1145, file: !1146, line: 533, baseType: !1157, size: 8, offset: 1112)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1145, file: !1146, line: 534, baseType: !1157, size: 8, offset: 1120)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1145, file: !1146, line: 535, baseType: !1157, size: 8, offset: 1128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1145, file: !1146, line: 536, baseType: !1157, size: 8, offset: 1136)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1145, file: !1146, line: 537, baseType: !1157, size: 8, offset: 1144)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1145, file: !1146, line: 538, baseType: !1157, size: 8, offset: 1152)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1145, file: !1146, line: 539, baseType: !1157, size: 8, offset: 1160)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1145, file: !1146, line: 540, baseType: !1157, size: 8, offset: 1168)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1145, file: !1146, line: 541, baseType: !1157, size: 8, offset: 1176)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1145, file: !1146, line: 542, baseType: !1157, size: 8, offset: 1184)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1145, file: !1146, line: 543, baseType: !1157, size: 8, offset: 1192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1145, file: !1146, line: 544, baseType: !1157, size: 8, offset: 1200)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1145, file: !1146, line: 545, baseType: !1157, size: 8, offset: 1208)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1145, file: !1146, line: 546, baseType: !1157, size: 8, offset: 1216)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1145, file: !1146, line: 547, baseType: !1157, size: 8, offset: 1224)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1145, file: !1146, line: 548, baseType: !1157, size: 8, offset: 1232)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1145, file: !1146, line: 549, baseType: !1157, size: 8, offset: 1240)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1145, file: !1146, line: 550, baseType: !1157, size: 8, offset: 1248)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1145, file: !1146, line: 551, baseType: !1157, size: 8, offset: 1256)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1145, file: !1146, line: 552, baseType: !1157, size: 8, offset: 1264)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1145, file: !1146, line: 553, baseType: !1157, size: 8, offset: 1272)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1145, file: !1146, line: 554, baseType: !1157, size: 8, offset: 1280)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1145, file: !1146, line: 555, baseType: !1157, size: 8, offset: 1288)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1145, file: !1146, line: 556, baseType: !1157, size: 8, offset: 1296)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1145, file: !1146, line: 557, baseType: !1157, size: 8, offset: 1304)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1145, file: !1146, line: 558, baseType: !1157, size: 8, offset: 1312)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1145, file: !1146, line: 559, baseType: !1157, size: 8, offset: 1320)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1145, file: !1146, line: 560, baseType: !1157, size: 8, offset: 1328)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1145, file: !1146, line: 561, baseType: !1157, size: 8, offset: 1336)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1145, file: !1146, line: 562, baseType: !1157, size: 8, offset: 1344)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1145, file: !1146, line: 563, baseType: !1157, size: 8, offset: 1352)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1145, file: !1146, line: 564, baseType: !1157, size: 8, offset: 1360)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1145, file: !1146, line: 565, baseType: !1157, size: 8, offset: 1368)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1145, file: !1146, line: 566, baseType: !1157, size: 8, offset: 1376)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1145, file: !1146, line: 567, baseType: !1157, size: 8, offset: 1384)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1145, file: !1146, line: 568, baseType: !1157, size: 8, offset: 1392)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1145, file: !1146, line: 569, baseType: !1157, size: 8, offset: 1400)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1145, file: !1146, line: 570, baseType: !1157, size: 8, offset: 1408)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1145, file: !1146, line: 571, baseType: !1157, size: 8, offset: 1416)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1145, file: !1146, line: 572, baseType: !1157, size: 8, offset: 1424)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1145, file: !1146, line: 573, baseType: !1157, size: 8, offset: 1432)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1145, file: !1146, line: 574, baseType: !1157, size: 8, offset: 1440)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !539, file: !153, line: 3405, baseType: !1313, size: 384)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !153, line: 3352, size: 384, elements: !1314)
!1314 = !{!1315, !1316}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1313, file: !153, line: 3353, baseType: !575, size: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1313, file: !153, line: 3356, baseType: !1317, size: 192, offset: 192)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1146, line: 578, size: 192, elements: !1318)
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1317, file: !1146, line: 580, baseType: !382, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1317, file: !1146, line: 581, baseType: !382, size: 32, offset: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1317, file: !1146, line: 582, baseType: !382, size: 32, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1317, file: !1146, line: 583, baseType: !382, size: 32, offset: 96)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1317, file: !1146, line: 584, baseType: !381, size: 8, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1317, file: !1146, line: 585, baseType: !381, size: 8, offset: 136)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1317, file: !1146, line: 586, baseType: !381, size: 8, offset: 144)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1317, file: !1146, line: 587, baseType: !381, size: 8, offset: 152)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1317, file: !1146, line: 588, baseType: !381, size: 8, offset: 160)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1317, file: !1146, line: 589, baseType: !381, size: 8, offset: 168)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1317, file: !1146, line: 590, baseType: !381, size: 8, offset: 176)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !442, file: !424, line: 178, baseType: !391, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !442, file: !424, line: 179, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !424, line: 150, baseType: !1334)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !424, line: 142, size: 320, elements: !1335)
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1334, file: !424, line: 144, baseType: !537, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1334, file: !424, line: 145, baseType: !421, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1334, file: !424, line: 146, baseType: !421, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1334, file: !424, line: 147, baseType: !980, size: 32, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1334, file: !424, line: 148, baseType: !5, size: 32, offset: 224)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1334, file: !424, line: 149, baseType: !381, size: 8, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !442, file: !424, line: 180, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !424, line: 162, baseType: !1345)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !424, line: 159, size: 128, elements: !1346)
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1345, file: !424, line: 160, baseType: !537, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1345, file: !424, line: 161, baseType: !508, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !442, file: !424, line: 181, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !424, line: 181, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !437, file: !424, line: 317, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 64, elements: !456)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !437, file: !424, line: 318, baseType: !1355, size: 320)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !424, line: 188, size: 320, elements: !1356)
!1356 = !{!1357, !1359, !1382}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1355, file: !424, line: 190, baseType: !1358, size: 192)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 192, elements: !608)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1355, file: !424, line: 193, baseType: !1360, size: 64, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !424, line: 206, size: 320, elements: !1362)
!1362 = !{!1363, !1367, !1368, !1369, !1381}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1361, file: !424, line: 208, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !390, line: 62, baseType: !1366)
!1366 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !390, line: 61, flags: DIFlagFwdDecl)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1361, file: !424, line: 211, baseType: !5, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1361, file: !424, line: 214, baseType: !508, size: 64, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1361, file: !424, line: 224, baseType: !1370, size: 64, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !424, line: 202, baseType: !1372)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !424, line: 202, size: 128, elements: !1373)
!1373 = !{!1374}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1372, file: !424, line: 202, baseType: !1375, size: 128)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !424, line: 200, baseType: !1376)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !424, line: 200, size: 128, elements: !1377)
!1377 = !{!1378, !1379, !1380}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1376, file: !424, line: 200, baseType: !5, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1376, file: !424, line: 200, baseType: !5, size: 32, offset: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1376, file: !424, line: 200, baseType: !455, size: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1361, file: !424, line: 234, baseType: !1370, size: 64, offset: 256)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1355, file: !424, line: 197, baseType: !508, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !437, file: !424, line: 319, baseType: !597, size: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !437, file: !424, line: 320, baseType: !616, size: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !409, file: !4, line: 134, baseType: !386, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !409, file: !4, line: 137, baseType: !537, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !409, file: !4, line: 138, baseType: !657, size: 32, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !409, file: !4, line: 142, baseType: !5, size: 32, offset: 352)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !409, file: !4, line: 144, baseType: !382, size: 32, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !409, file: !4, line: 145, baseType: !382, size: 32, offset: 416)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !409, file: !4, line: 146, baseType: !1392, size: 64, offset: 448)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !4, line: 119, baseType: !508)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !392, file: !4, line: 220, baseType: !395, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !392, file: !4, line: 223, baseType: !386, size: 64, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !392, file: !4, line: 226, baseType: !1396, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !4, line: 185, flags: DIFlagFwdDecl)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !392, file: !4, line: 229, baseType: !1399, size: 128, offset: 256)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1400, size: 128, elements: !492)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !1402, line: 59, size: 512, elements: !1403)
!1402 = !DIFile(filename: "./et-forest.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1414}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1401, file: !1402, line: 61, baseType: !386, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_num_in", scope: !1401, file: !1402, line: 63, baseType: !382, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_num_out", scope: !1401, file: !1402, line: 63, baseType: !382, size: 32, offset: 96)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "father", scope: !1401, file: !1402, line: 65, baseType: !1400, size: 64, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "son", scope: !1401, file: !1402, line: 66, baseType: !1400, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !1401, file: !1402, line: 67, baseType: !1400, size: 64, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !1401, file: !1402, line: 68, baseType: !1400, size: 64, offset: 320)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rightmost_occ", scope: !1401, file: !1402, line: 70, baseType: !1412, size: 64, offset: 384)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_occ", file: !1402, line: 70, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "parent_occ", scope: !1401, file: !1402, line: 71, baseType: !1412, size: 64, offset: 448)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !392, file: !4, line: 232, baseType: !391, size: 64, offset: 384)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !392, file: !4, line: 233, baseType: !391, size: 64, offset: 448)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !392, file: !4, line: 238, baseType: !1418, size: 64, offset: 512)
!1418 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !4, line: 235, size: 64, elements: !1419)
!1419 = !{!1420, !1426}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1418, file: !4, line: 236, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !4, line: 273, size: 128, elements: !1423)
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1422, file: !4, line: 275, baseType: !417, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1422, file: !4, line: 278, baseType: !417, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1418, file: !4, line: 237, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !4, line: 259, size: 320, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1433, !1434}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1428, file: !4, line: 261, baseType: !421, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1428, file: !4, line: 262, baseType: !421, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1428, file: !4, line: 266, baseType: !421, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1428, file: !4, line: 267, baseType: !421, size: 64, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1428, file: !4, line: 270, baseType: !382, size: 32, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !392, file: !4, line: 241, baseType: !1392, size: 64, offset: 576)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !392, file: !4, line: 244, baseType: !382, size: 32, offset: 640)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !392, file: !4, line: 247, baseType: !382, size: 32, offset: 672)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !392, file: !4, line: 250, baseType: !382, size: 32, offset: 704)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !392, file: !4, line: 253, baseType: !382, size: 32, offset: 736)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !392, file: !4, line: 256, baseType: !382, size: 32, offset: 768)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !390, line: 47, baseType: !475)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "TBB", file: !1, line: 58, baseType: !5)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !4, line: 682, baseType: !1449)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 679, size: 128, elements: !1450)
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1449, file: !4, line: 680, baseType: !5, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !1449, file: !4, line: 681, baseType: !1453, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_heap", file: !4, line: 283, baseType: !1456)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_heap", file: !4, line: 283, size: 128, elements: !1457)
!1457 = !{!1458}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1456, file: !4, line: 283, baseType: !801, size: 128)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !1462, line: 32, baseType: !1463)
!1462 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !1462, line: 32, size: 96, elements: !1464)
!1464 = !{!1465}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1463, file: !1462, line: 32, baseType: !1466, size: 96)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !1462, line: 31, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !1462, line: 31, size: 96, elements: !1468)
!1468 = !{!1469, !1470, !1471}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1467, file: !1462, line: 31, baseType: !5, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1467, file: !1462, line: 31, baseType: !5, size: 32, offset: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1467, file: !1462, line: 31, baseType: !1472, size: 32, offset: 64)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 32, elements: !456)
!1473 = !{i32 2, !"Dwarf Version", i32 4}
!1474 = !{i32 2, !"Debug Info Version", i32 3}
!1475 = !{i32 1, !"wchar_size", i32 4}
!1476 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1477 = distinct !DISubprogram(name: "vprintf", scope: !1478, file: !1478, line: 39, type: !1479, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1489)
!1478 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!382, !1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !387)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1484)
!1484 = !{!1485, !1486, !1487, !1488}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1483, file: !1, baseType: !5, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1483, file: !1, baseType: !5, size: 32, offset: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1483, file: !1, baseType: !386, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1483, file: !1, baseType: !386, size: 64, offset: 128)
!1489 = !{!1490, !1491}
!1490 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1477, file: !1478, line: 39, type: !1481)
!1491 = !DILocalVariable(name: "__arg", arg: 2, scope: !1477, file: !1478, line: 39, type: !1482)
!1492 = !DILocation(line: 0, scope: !1477)
!1493 = !DILocation(line: 41, column: 20, scope: !1477)
!1494 = !DILocation(line: 41, column: 10, scope: !1477)
!1495 = !DILocation(line: 41, column: 3, scope: !1477)
!1496 = distinct !DISubprogram(name: "getchar", scope: !1478, file: !1478, line: 47, type: !1497, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1499)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!382}
!1499 = !{}
!1500 = !DILocation(line: 49, column: 16, scope: !1496)
!1501 = !DILocation(line: 49, column: 10, scope: !1496)
!1502 = !DILocation(line: 49, column: 3, scope: !1496)
!1503 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1478, file: !1478, line: 56, type: !1504, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1557)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!382, !1506}
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1508, line: 7, baseType: !1509)
!1508 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1510, line: 49, size: 1728, elements: !1511)
!1510 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1511 = !{!1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1527, !1529, !1530, !1531, !1534, !1536, !1537, !1538, !1541, !1543, !1546, !1549, !1550, !1551, !1552, !1553}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1509, file: !1510, line: 51, baseType: !382, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1509, file: !1510, line: 54, baseType: !384, size: 64, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1509, file: !1510, line: 55, baseType: !384, size: 64, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1509, file: !1510, line: 56, baseType: !384, size: 64, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1509, file: !1510, line: 57, baseType: !384, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1509, file: !1510, line: 58, baseType: !384, size: 64, offset: 320)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1509, file: !1510, line: 59, baseType: !384, size: 64, offset: 384)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1509, file: !1510, line: 60, baseType: !384, size: 64, offset: 448)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1509, file: !1510, line: 61, baseType: !384, size: 64, offset: 512)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1509, file: !1510, line: 64, baseType: !384, size: 64, offset: 576)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1509, file: !1510, line: 65, baseType: !384, size: 64, offset: 640)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1509, file: !1510, line: 66, baseType: !384, size: 64, offset: 704)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1509, file: !1510, line: 68, baseType: !1525, size: 64, offset: 768)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1510, line: 36, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1509, file: !1510, line: 70, baseType: !1528, size: 64, offset: 832)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1509, file: !1510, line: 72, baseType: !382, size: 32, offset: 896)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1509, file: !1510, line: 73, baseType: !382, size: 32, offset: 928)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1509, file: !1510, line: 74, baseType: !1532, size: 64, offset: 960)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1533, line: 152, baseType: !508)
!1533 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1509, file: !1510, line: 77, baseType: !1535, size: 16, offset: 1024)
!1535 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1509, file: !1510, line: 78, baseType: !1157, size: 8, offset: 1040)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1509, file: !1510, line: 79, baseType: !632, size: 8, offset: 1048)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1509, file: !1510, line: 81, baseType: !1539, size: 64, offset: 1088)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1510, line: 43, baseType: null)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1509, file: !1510, line: 89, baseType: !1542, size: 64, offset: 1152)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1533, line: 153, baseType: !508)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1509, file: !1510, line: 91, baseType: !1544, size: 64, offset: 1216)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1510, line: 37, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1509, file: !1510, line: 92, baseType: !1547, size: 64, offset: 1280)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1510, line: 38, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1509, file: !1510, line: 93, baseType: !1528, size: 64, offset: 1344)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1509, file: !1510, line: 94, baseType: !386, size: 64, offset: 1408)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1509, file: !1510, line: 95, baseType: !853, size: 64, offset: 1472)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1509, file: !1510, line: 96, baseType: !382, size: 32, offset: 1536)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1509, file: !1510, line: 98, baseType: !1554, size: 160, offset: 1568)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 160, elements: !1555)
!1555 = !{!1556}
!1556 = !DISubrange(count: 20)
!1557 = !{!1558}
!1558 = !DILocalVariable(name: "__fp", arg: 1, scope: !1503, file: !1478, line: 56, type: !1506)
!1559 = !DILocation(line: 0, scope: !1503)
!1560 = !DILocation(line: 58, column: 10, scope: !1503)
!1561 = !DILocation(line: 58, column: 3, scope: !1503)
!1562 = distinct !DISubprogram(name: "getc_unlocked", scope: !1478, file: !1478, line: 66, type: !1504, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1563)
!1563 = !{!1564}
!1564 = !DILocalVariable(name: "__fp", arg: 1, scope: !1562, file: !1478, line: 66, type: !1506)
!1565 = !DILocation(line: 0, scope: !1562)
!1566 = !DILocation(line: 68, column: 10, scope: !1562)
!1567 = !DILocation(line: 68, column: 3, scope: !1562)
!1568 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1478, file: !1478, line: 73, type: !1497, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1499)
!1569 = !DILocation(line: 75, column: 10, scope: !1568)
!1570 = !DILocation(line: 75, column: 3, scope: !1568)
!1571 = distinct !DISubprogram(name: "putchar", scope: !1478, file: !1478, line: 82, type: !1572, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1574)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!382, !382}
!1574 = !{!1575}
!1575 = !DILocalVariable(name: "__c", arg: 1, scope: !1571, file: !1478, line: 82, type: !382)
!1576 = !DILocation(line: 0, scope: !1571)
!1577 = !DILocation(line: 84, column: 21, scope: !1571)
!1578 = !DILocation(line: 84, column: 10, scope: !1571)
!1579 = !DILocation(line: 84, column: 3, scope: !1571)
!1580 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1478, file: !1478, line: 91, type: !1581, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1583)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!382, !382, !1506}
!1583 = !{!1584, !1585}
!1584 = !DILocalVariable(name: "__c", arg: 1, scope: !1580, file: !1478, line: 91, type: !382)
!1585 = !DILocalVariable(name: "__stream", arg: 2, scope: !1580, file: !1478, line: 91, type: !1506)
!1586 = !DILocation(line: 0, scope: !1580)
!1587 = !DILocation(line: 93, column: 10, scope: !1580)
!1588 = !DILocation(line: 93, column: 3, scope: !1580)
!1589 = distinct !DISubprogram(name: "putc_unlocked", scope: !1478, file: !1478, line: 101, type: !1581, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1590)
!1590 = !{!1591, !1592}
!1591 = !DILocalVariable(name: "__c", arg: 1, scope: !1589, file: !1478, line: 101, type: !382)
!1592 = !DILocalVariable(name: "__stream", arg: 2, scope: !1589, file: !1478, line: 101, type: !1506)
!1593 = !DILocation(line: 0, scope: !1589)
!1594 = !DILocation(line: 103, column: 10, scope: !1589)
!1595 = !DILocation(line: 103, column: 3, scope: !1589)
!1596 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1478, file: !1478, line: 108, type: !1572, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1597)
!1597 = !{!1598}
!1598 = !DILocalVariable(name: "__c", arg: 1, scope: !1596, file: !1478, line: 108, type: !382)
!1599 = !DILocation(line: 0, scope: !1596)
!1600 = !DILocation(line: 110, column: 10, scope: !1596)
!1601 = !DILocation(line: 110, column: 3, scope: !1596)
!1602 = distinct !DISubprogram(name: "getline", scope: !1478, file: !1478, line: 118, type: !1603, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1607)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!1605, !383, !1606, !1506}
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1533, line: 193, baseType: !508)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!1607 = !{!1608, !1609, !1610}
!1608 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1602, file: !1478, line: 118, type: !383)
!1609 = !DILocalVariable(name: "__n", arg: 2, scope: !1602, file: !1478, line: 118, type: !1606)
!1610 = !DILocalVariable(name: "__stream", arg: 3, scope: !1602, file: !1478, line: 118, type: !1506)
!1611 = !DILocation(line: 0, scope: !1602)
!1612 = !DILocation(line: 120, column: 10, scope: !1602)
!1613 = !DILocation(line: 120, column: 3, scope: !1602)
!1614 = distinct !DISubprogram(name: "feof_unlocked", scope: !1478, file: !1478, line: 128, type: !1504, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1615)
!1615 = !{!1616}
!1616 = !DILocalVariable(name: "__stream", arg: 1, scope: !1614, file: !1478, line: 128, type: !1506)
!1617 = !DILocation(line: 0, scope: !1614)
!1618 = !DILocation(line: 130, column: 10, scope: !1614)
!1619 = !DILocation(line: 130, column: 3, scope: !1614)
!1620 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1478, file: !1478, line: 135, type: !1504, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1621)
!1621 = !{!1622}
!1622 = !DILocalVariable(name: "__stream", arg: 1, scope: !1620, file: !1478, line: 135, type: !1506)
!1623 = !DILocation(line: 0, scope: !1620)
!1624 = !DILocation(line: 137, column: 10, scope: !1620)
!1625 = !DILocation(line: 137, column: 3, scope: !1620)
!1626 = distinct !DISubprogram(name: "tolower", scope: !1627, file: !1627, line: 207, type: !1572, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1628)
!1627 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1628 = !{!1629}
!1629 = !DILocalVariable(name: "__c", arg: 1, scope: !1626, file: !1627, line: 207, type: !382)
!1630 = !DILocation(line: 0, scope: !1626)
!1631 = !DILocation(line: 209, column: 22, scope: !1626)
!1632 = !DILocation(line: 209, column: 39, scope: !1626)
!1633 = !DILocation(line: 209, column: 38, scope: !1626)
!1634 = !DILocation(line: 209, column: 37, scope: !1626)
!1635 = !DILocation(line: 209, column: 10, scope: !1626)
!1636 = !DILocation(line: 209, column: 3, scope: !1626)
!1637 = distinct !DISubprogram(name: "toupper", scope: !1627, file: !1627, line: 213, type: !1572, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1638)
!1638 = !{!1639}
!1639 = !DILocalVariable(name: "__c", arg: 1, scope: !1637, file: !1627, line: 213, type: !382)
!1640 = !DILocation(line: 0, scope: !1637)
!1641 = !DILocation(line: 215, column: 22, scope: !1637)
!1642 = !DILocation(line: 215, column: 39, scope: !1637)
!1643 = !DILocation(line: 215, column: 38, scope: !1637)
!1644 = !DILocation(line: 215, column: 37, scope: !1637)
!1645 = !DILocation(line: 215, column: 10, scope: !1637)
!1646 = !DILocation(line: 215, column: 3, scope: !1637)
!1647 = distinct !DISubprogram(name: "atoi", scope: !1648, file: !1648, line: 361, type: !1649, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1651)
!1648 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!382, !387}
!1651 = !{!1652}
!1652 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1647, file: !1648, line: 361, type: !387)
!1653 = !DILocation(line: 0, scope: !1647)
!1654 = !DILocation(line: 363, column: 16, scope: !1647)
!1655 = !DILocation(line: 363, column: 10, scope: !1647)
!1656 = !DILocation(line: 363, column: 3, scope: !1647)
!1657 = distinct !DISubprogram(name: "atol", scope: !1648, file: !1648, line: 366, type: !1658, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1660)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!508, !387}
!1660 = !{!1661}
!1661 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1657, file: !1648, line: 366, type: !387)
!1662 = !DILocation(line: 0, scope: !1657)
!1663 = !DILocation(line: 368, column: 10, scope: !1657)
!1664 = !DILocation(line: 368, column: 3, scope: !1657)
!1665 = distinct !DISubprogram(name: "atoll", scope: !1648, file: !1648, line: 373, type: !1666, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1669)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!1668, !387}
!1668 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1669 = !{!1670}
!1670 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1665, file: !1648, line: 373, type: !387)
!1671 = !DILocation(line: 0, scope: !1665)
!1672 = !DILocation(line: 375, column: 10, scope: !1665)
!1673 = !DILocation(line: 375, column: 3, scope: !1665)
!1674 = distinct !DISubprogram(name: "bsearch", scope: !1675, file: !1675, line: 20, type: !1676, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1679)
!1675 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!386, !838, !838, !853, !853, !1678}
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1648, line: 808, baseType: !842)
!1679 = !{!1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689}
!1680 = !DILocalVariable(name: "__key", arg: 1, scope: !1674, file: !1675, line: 20, type: !838)
!1681 = !DILocalVariable(name: "__base", arg: 2, scope: !1674, file: !1675, line: 20, type: !838)
!1682 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1674, file: !1675, line: 20, type: !853)
!1683 = !DILocalVariable(name: "__size", arg: 4, scope: !1674, file: !1675, line: 20, type: !853)
!1684 = !DILocalVariable(name: "__compar", arg: 5, scope: !1674, file: !1675, line: 21, type: !1678)
!1685 = !DILocalVariable(name: "__l", scope: !1674, file: !1675, line: 23, type: !853)
!1686 = !DILocalVariable(name: "__u", scope: !1674, file: !1675, line: 23, type: !853)
!1687 = !DILocalVariable(name: "__idx", scope: !1674, file: !1675, line: 23, type: !853)
!1688 = !DILocalVariable(name: "__p", scope: !1674, file: !1675, line: 24, type: !838)
!1689 = !DILocalVariable(name: "__comparison", scope: !1674, file: !1675, line: 25, type: !382)
!1690 = !DILocation(line: 0, scope: !1674)
!1691 = !DILocation(line: 29, column: 3, scope: !1674)
!1692 = !DILocation(line: 27, column: 7, scope: !1674)
!1693 = !DILocation(line: 29, column: 14, scope: !1674)
!1694 = !DILocation(line: 31, column: 20, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1674, file: !1675, line: 30, column: 5)
!1696 = !DILocation(line: 31, column: 27, scope: !1695)
!1697 = !DILocation(line: 32, column: 56, scope: !1695)
!1698 = !DILocation(line: 32, column: 47, scope: !1695)
!1699 = !DILocation(line: 33, column: 22, scope: !1695)
!1700 = !DILocation(line: 34, column: 24, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1695, file: !1675, line: 34, column: 11)
!1702 = !DILocation(line: 34, column: 11, scope: !1695)
!1703 = !DILocation(line: 36, column: 29, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1701, file: !1675, line: 36, column: 16)
!1705 = !DILocation(line: 36, column: 16, scope: !1701)
!1706 = !DILocation(line: 37, column: 14, scope: !1704)
!1707 = distinct !{!1707, !1691, !1708}
!1708 = !DILocation(line: 40, column: 5, scope: !1674)
!1709 = !DILocation(line: 43, column: 1, scope: !1674)
!1710 = distinct !DISubprogram(name: "atof", scope: !1711, file: !1711, line: 25, type: !1712, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1715)
!1711 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!1714, !387}
!1714 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1715 = !{!1716}
!1716 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1710, file: !1711, line: 25, type: !387)
!1717 = !DILocation(line: 0, scope: !1710)
!1718 = !DILocation(line: 27, column: 10, scope: !1710)
!1719 = !DILocation(line: 27, column: 3, scope: !1710)
!1720 = distinct !DISubprogram(name: "strtoimax", scope: !1721, file: !1721, line: 324, type: !1722, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1728)
!1721 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!1724, !1481, !1727, !382}
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1725, line: 101, baseType: !1726)
!1725 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1533, line: 72, baseType: !508)
!1727 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !383)
!1728 = !{!1729, !1730, !1731}
!1729 = !DILocalVariable(name: "nptr", arg: 1, scope: !1720, file: !1721, line: 324, type: !1481)
!1730 = !DILocalVariable(name: "endptr", arg: 2, scope: !1720, file: !1721, line: 324, type: !1727)
!1731 = !DILocalVariable(name: "base", arg: 3, scope: !1720, file: !1721, line: 324, type: !382)
!1732 = !DILocation(line: 0, scope: !1720)
!1733 = !DILocation(line: 327, column: 10, scope: !1720)
!1734 = !DILocation(line: 327, column: 3, scope: !1720)
!1735 = distinct !DISubprogram(name: "strtoumax", scope: !1721, file: !1721, line: 336, type: !1736, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1740)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!1738, !1481, !1727, !382}
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1725, line: 102, baseType: !1739)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1533, line: 73, baseType: !491)
!1740 = !{!1741, !1742, !1743}
!1741 = !DILocalVariable(name: "nptr", arg: 1, scope: !1735, file: !1721, line: 336, type: !1481)
!1742 = !DILocalVariable(name: "endptr", arg: 2, scope: !1735, file: !1721, line: 336, type: !1727)
!1743 = !DILocalVariable(name: "base", arg: 3, scope: !1735, file: !1721, line: 336, type: !382)
!1744 = !DILocation(line: 0, scope: !1735)
!1745 = !DILocation(line: 339, column: 10, scope: !1735)
!1746 = !DILocation(line: 339, column: 3, scope: !1735)
!1747 = distinct !DISubprogram(name: "wcstoimax", scope: !1721, file: !1721, line: 348, type: !1748, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1757)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!1724, !1750, !1754, !382}
!1750 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1751)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1753)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1721, line: 34, baseType: !382)
!1754 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1755)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1757 = !{!1758, !1759, !1760}
!1758 = !DILocalVariable(name: "nptr", arg: 1, scope: !1747, file: !1721, line: 348, type: !1750)
!1759 = !DILocalVariable(name: "endptr", arg: 2, scope: !1747, file: !1721, line: 348, type: !1754)
!1760 = !DILocalVariable(name: "base", arg: 3, scope: !1747, file: !1721, line: 348, type: !382)
!1761 = !DILocation(line: 0, scope: !1747)
!1762 = !DILocation(line: 351, column: 10, scope: !1747)
!1763 = !DILocation(line: 351, column: 3, scope: !1747)
!1764 = distinct !DISubprogram(name: "wcstoumax", scope: !1721, file: !1721, line: 362, type: !1765, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1767)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!1738, !1750, !1754, !382}
!1767 = !{!1768, !1769, !1770}
!1768 = !DILocalVariable(name: "nptr", arg: 1, scope: !1764, file: !1721, line: 362, type: !1750)
!1769 = !DILocalVariable(name: "endptr", arg: 2, scope: !1764, file: !1721, line: 362, type: !1754)
!1770 = !DILocalVariable(name: "base", arg: 3, scope: !1764, file: !1721, line: 362, type: !382)
!1771 = !DILocation(line: 0, scope: !1764)
!1772 = !DILocation(line: 365, column: 10, scope: !1764)
!1773 = !DILocation(line: 365, column: 3, scope: !1764)
!1774 = distinct !DISubprogram(name: "stat", scope: !1775, file: !1775, line: 453, type: !1776, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1813)
!1775 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!382, !387, !1778}
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1780, line: 46, size: 1152, elements: !1781)
!1780 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1781 = !{!1782, !1784, !1786, !1788, !1790, !1792, !1794, !1795, !1796, !1797, !1799, !1801, !1809, !1810, !1811}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1779, file: !1780, line: 48, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1533, line: 145, baseType: !491)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1779, file: !1780, line: 53, baseType: !1785, size: 64, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1533, line: 148, baseType: !491)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1779, file: !1780, line: 61, baseType: !1787, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1533, line: 151, baseType: !491)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1779, file: !1780, line: 62, baseType: !1789, size: 32, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1533, line: 150, baseType: !5)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1779, file: !1780, line: 64, baseType: !1791, size: 32, offset: 224)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1533, line: 146, baseType: !5)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1779, file: !1780, line: 65, baseType: !1793, size: 32, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1533, line: 147, baseType: !5)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1779, file: !1780, line: 67, baseType: !382, size: 32, offset: 288)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1779, file: !1780, line: 69, baseType: !1783, size: 64, offset: 320)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1779, file: !1780, line: 74, baseType: !1532, size: 64, offset: 384)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1779, file: !1780, line: 78, baseType: !1798, size: 64, offset: 448)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1533, line: 174, baseType: !508)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1779, file: !1780, line: 80, baseType: !1800, size: 64, offset: 512)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1533, line: 179, baseType: !508)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1779, file: !1780, line: 91, baseType: !1802, size: 128, offset: 576)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1803, line: 10, size: 128, elements: !1804)
!1803 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1804 = !{!1805, !1807}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1802, file: !1803, line: 12, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1533, line: 160, baseType: !508)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1802, file: !1803, line: 16, baseType: !1808, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1533, line: 196, baseType: !508)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1779, file: !1780, line: 92, baseType: !1802, size: 128, offset: 704)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1779, file: !1780, line: 93, baseType: !1802, size: 128, offset: 832)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1779, file: !1780, line: 106, baseType: !1812, size: 192, offset: 960)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1808, size: 192, elements: !608)
!1813 = !{!1814, !1815}
!1814 = !DILocalVariable(name: "__path", arg: 1, scope: !1774, file: !1775, line: 453, type: !387)
!1815 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1774, file: !1775, line: 453, type: !1778)
!1816 = !DILocation(line: 0, scope: !1774)
!1817 = !DILocation(line: 455, column: 10, scope: !1774)
!1818 = !DILocation(line: 455, column: 3, scope: !1774)
!1819 = distinct !DISubprogram(name: "lstat", scope: !1775, file: !1775, line: 460, type: !1776, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1820)
!1820 = !{!1821, !1822}
!1821 = !DILocalVariable(name: "__path", arg: 1, scope: !1819, file: !1775, line: 460, type: !387)
!1822 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1819, file: !1775, line: 460, type: !1778)
!1823 = !DILocation(line: 0, scope: !1819)
!1824 = !DILocation(line: 462, column: 10, scope: !1819)
!1825 = !DILocation(line: 462, column: 3, scope: !1819)
!1826 = distinct !DISubprogram(name: "fstat", scope: !1775, file: !1775, line: 467, type: !1827, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1829)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!382, !382, !1778}
!1829 = !{!1830, !1831}
!1830 = !DILocalVariable(name: "__fd", arg: 1, scope: !1826, file: !1775, line: 467, type: !382)
!1831 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1826, file: !1775, line: 467, type: !1778)
!1832 = !DILocation(line: 0, scope: !1826)
!1833 = !DILocation(line: 469, column: 10, scope: !1826)
!1834 = !DILocation(line: 469, column: 3, scope: !1826)
!1835 = distinct !DISubprogram(name: "fstatat", scope: !1775, file: !1775, line: 474, type: !1836, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1838)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!382, !382, !387, !1778, !382}
!1838 = !{!1839, !1840, !1841, !1842}
!1839 = !DILocalVariable(name: "__fd", arg: 1, scope: !1835, file: !1775, line: 474, type: !382)
!1840 = !DILocalVariable(name: "__filename", arg: 2, scope: !1835, file: !1775, line: 474, type: !387)
!1841 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1835, file: !1775, line: 474, type: !1778)
!1842 = !DILocalVariable(name: "__flag", arg: 4, scope: !1835, file: !1775, line: 474, type: !382)
!1843 = !DILocation(line: 0, scope: !1835)
!1844 = !DILocation(line: 477, column: 10, scope: !1835)
!1845 = !DILocation(line: 477, column: 3, scope: !1835)
!1846 = distinct !DISubprogram(name: "mknod", scope: !1775, file: !1775, line: 483, type: !1847, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1849)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!382, !387, !1789, !1783}
!1849 = !{!1850, !1851, !1852}
!1850 = !DILocalVariable(name: "__path", arg: 1, scope: !1846, file: !1775, line: 483, type: !387)
!1851 = !DILocalVariable(name: "__mode", arg: 2, scope: !1846, file: !1775, line: 483, type: !1789)
!1852 = !DILocalVariable(name: "__dev", arg: 3, scope: !1846, file: !1775, line: 483, type: !1783)
!1853 = !DILocation(line: 0, scope: !1846)
!1854 = !DILocation(line: 485, column: 10, scope: !1846)
!1855 = !DILocation(line: 485, column: 3, scope: !1846)
!1856 = distinct !DISubprogram(name: "mknodat", scope: !1775, file: !1775, line: 491, type: !1857, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1859)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!382, !382, !387, !1789, !1783}
!1859 = !{!1860, !1861, !1862, !1863}
!1860 = !DILocalVariable(name: "__fd", arg: 1, scope: !1856, file: !1775, line: 491, type: !382)
!1861 = !DILocalVariable(name: "__path", arg: 2, scope: !1856, file: !1775, line: 491, type: !387)
!1862 = !DILocalVariable(name: "__mode", arg: 3, scope: !1856, file: !1775, line: 491, type: !1789)
!1863 = !DILocalVariable(name: "__dev", arg: 4, scope: !1856, file: !1775, line: 491, type: !1783)
!1864 = !DILocation(line: 0, scope: !1856)
!1865 = !DILocation(line: 494, column: 10, scope: !1856)
!1866 = !DILocation(line: 494, column: 3, scope: !1856)
!1867 = distinct !DISubprogram(name: "stat64", scope: !1775, file: !1775, line: 502, type: !1868, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1890)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!382, !387, !1870}
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1780, line: 119, size: 1152, elements: !1872)
!1872 = !{!1873, !1874, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1886, !1887, !1888, !1889}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1871, file: !1780, line: 121, baseType: !1783, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1871, file: !1780, line: 123, baseType: !1875, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1533, line: 149, baseType: !491)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1871, file: !1780, line: 124, baseType: !1787, size: 64, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1871, file: !1780, line: 125, baseType: !1789, size: 32, offset: 192)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1871, file: !1780, line: 132, baseType: !1791, size: 32, offset: 224)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1871, file: !1780, line: 133, baseType: !1793, size: 32, offset: 256)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1871, file: !1780, line: 135, baseType: !382, size: 32, offset: 288)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1871, file: !1780, line: 136, baseType: !1783, size: 64, offset: 320)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1871, file: !1780, line: 137, baseType: !1532, size: 64, offset: 384)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1871, file: !1780, line: 143, baseType: !1798, size: 64, offset: 448)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1871, file: !1780, line: 144, baseType: !1885, size: 64, offset: 512)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1533, line: 180, baseType: !508)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1871, file: !1780, line: 152, baseType: !1802, size: 128, offset: 576)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1871, file: !1780, line: 153, baseType: !1802, size: 128, offset: 704)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1871, file: !1780, line: 154, baseType: !1802, size: 128, offset: 832)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1871, file: !1780, line: 164, baseType: !1812, size: 192, offset: 960)
!1890 = !{!1891, !1892}
!1891 = !DILocalVariable(name: "__path", arg: 1, scope: !1867, file: !1775, line: 502, type: !387)
!1892 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1867, file: !1775, line: 502, type: !1870)
!1893 = !DILocation(line: 0, scope: !1867)
!1894 = !DILocation(line: 504, column: 10, scope: !1867)
!1895 = !DILocation(line: 504, column: 3, scope: !1867)
!1896 = distinct !DISubprogram(name: "lstat64", scope: !1775, file: !1775, line: 509, type: !1868, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1897)
!1897 = !{!1898, !1899}
!1898 = !DILocalVariable(name: "__path", arg: 1, scope: !1896, file: !1775, line: 509, type: !387)
!1899 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1896, file: !1775, line: 509, type: !1870)
!1900 = !DILocation(line: 0, scope: !1896)
!1901 = !DILocation(line: 511, column: 10, scope: !1896)
!1902 = !DILocation(line: 511, column: 3, scope: !1896)
!1903 = distinct !DISubprogram(name: "fstat64", scope: !1775, file: !1775, line: 516, type: !1904, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1906)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!382, !382, !1870}
!1906 = !{!1907, !1908}
!1907 = !DILocalVariable(name: "__fd", arg: 1, scope: !1903, file: !1775, line: 516, type: !382)
!1908 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1903, file: !1775, line: 516, type: !1870)
!1909 = !DILocation(line: 0, scope: !1903)
!1910 = !DILocation(line: 518, column: 10, scope: !1903)
!1911 = !DILocation(line: 518, column: 3, scope: !1903)
!1912 = distinct !DISubprogram(name: "fstatat64", scope: !1775, file: !1775, line: 523, type: !1913, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1915)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!382, !382, !387, !1870, !382}
!1915 = !{!1916, !1917, !1918, !1919}
!1916 = !DILocalVariable(name: "__fd", arg: 1, scope: !1912, file: !1775, line: 523, type: !382)
!1917 = !DILocalVariable(name: "__filename", arg: 2, scope: !1912, file: !1775, line: 523, type: !387)
!1918 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1912, file: !1775, line: 523, type: !1870)
!1919 = !DILocalVariable(name: "__flag", arg: 4, scope: !1912, file: !1775, line: 523, type: !382)
!1920 = !DILocation(line: 0, scope: !1912)
!1921 = !DILocation(line: 526, column: 10, scope: !1912)
!1922 = !DILocation(line: 526, column: 3, scope: !1912)
!1923 = distinct !DISubprogram(name: "calculate_dominance_info", scope: !1, file: !1, line: 633, type: !1924, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1926)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !3}
!1926 = !{!1927, !1928, !1945, !1946, !1947, !1948}
!1927 = !DILocalVariable(name: "dir", arg: 1, scope: !1923, file: !1, line: 633, type: !3)
!1928 = !DILocalVariable(name: "di", scope: !1923, file: !1, line: 635, type: !1929)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dom_info", file: !1, line: 65, size: 832, elements: !1930)
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_parent", scope: !1929, file: !1, line: 68, baseType: !1443, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1929, file: !1, line: 72, baseType: !1443, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "path_min", scope: !1929, file: !1, line: 75, baseType: !1443, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "bucket", scope: !1929, file: !1, line: 77, baseType: !1443, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "next_bucket", scope: !1929, file: !1, line: 79, baseType: !1443, size: 64, offset: 256)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1929, file: !1, line: 82, baseType: !1443, size: 64, offset: 320)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "set_chain", scope: !1929, file: !1, line: 88, baseType: !1443, size: 64, offset: 384)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "set_size", scope: !1929, file: !1, line: 90, baseType: !1445, size: 64, offset: 448)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "set_child", scope: !1929, file: !1, line: 93, baseType: !1443, size: 64, offset: 512)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_order", scope: !1929, file: !1, line: 98, baseType: !1443, size: 64, offset: 576)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_to_bb", scope: !1929, file: !1, line: 103, baseType: !1446, size: 64, offset: 640)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "dfsnum", scope: !1929, file: !1, line: 106, baseType: !5, size: 32, offset: 704)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1929, file: !1, line: 108, baseType: !5, size: 32, offset: 736)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fake_exit_edge", scope: !1929, file: !1, line: 112, baseType: !1441, size: 64, offset: 768)
!1945 = !DILocalVariable(name: "b", scope: !1923, file: !1, line: 636, type: !389)
!1946 = !DILocalVariable(name: "dir_index", scope: !1923, file: !1, line: 637, type: !5)
!1947 = !DILocalVariable(name: "reverse", scope: !1923, file: !1, line: 638, type: !381)
!1948 = !DILocalVariable(name: "d", scope: !1949, file: !1, line: 660, type: !1444)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !1, line: 659, column: 2)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !1, line: 658, column: 7)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !1, line: 658, column: 7)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !1, line: 645, column: 5)
!1953 = distinct !DILexicalBlock(scope: !1923, file: !1, line: 644, column: 7)
!1954 = !DILocation(line: 0, scope: !1923)
!1955 = !DILocation(line: 635, column: 3, scope: !1923)
!1956 = !DILocation(line: 637, column: 28, scope: !1923)
!1957 = !DILocation(line: 638, column: 23, scope: !1923)
!1958 = !DILocation(line: 638, column: 18, scope: !1923)
!1959 = !DILocation(line: 640, column: 7, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1923, file: !1, line: 640, column: 7)
!1961 = !DILocation(line: 640, column: 31, scope: !1960)
!1962 = !DILocation(line: 640, column: 7, scope: !1923)
!1963 = !DILocation(line: 643, column: 3, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !1, line: 643, column: 3)
!1965 = distinct !DILexicalBlock(scope: !1923, file: !1, line: 643, column: 3)
!1966 = !DILocation(line: 643, column: 3, scope: !1965)
!1967 = !DILocation(line: 644, column: 8, scope: !1953)
!1968 = !DILocation(line: 644, column: 7, scope: !1923)
!1969 = !DILocation(line: 646, column: 7, scope: !1952)
!1970 = !DILocation(line: 648, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1952, file: !1, line: 648, column: 7)
!1972 = !DILocation(line: 0, scope: !1971)
!1973 = !DILocation(line: 650, column: 37, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !1, line: 649, column: 2)
!1975 = distinct !DILexicalBlock(scope: !1971, file: !1, line: 648, column: 7)
!1976 = !DILocation(line: 650, column: 24, scope: !1974)
!1977 = !DILocation(line: 650, column: 4, scope: !1974)
!1978 = !DILocation(line: 650, column: 22, scope: !1974)
!1979 = !DILocation(line: 648, column: 7, scope: !1975)
!1980 = distinct !{!1980, !1970, !1981}
!1981 = !DILocation(line: 651, column: 2, scope: !1971)
!1982 = !DILocation(line: 652, column: 38, scope: !1952)
!1983 = !DILocation(line: 652, column: 7, scope: !1952)
!1984 = !DILocation(line: 652, column: 36, scope: !1952)
!1985 = !DILocation(line: 654, column: 7, scope: !1952)
!1986 = !DILocation(line: 655, column: 7, scope: !1952)
!1987 = !DILocation(line: 656, column: 7, scope: !1952)
!1988 = !DILocation(line: 658, column: 7, scope: !1951)
!1989 = !DILocation(line: 0, scope: !1949)
!1990 = !DILocation(line: 0, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1949, file: !1, line: 662, column: 8)
!1992 = !DILocation(line: 658, column: 7, scope: !1950)
!1993 = !DILocation(line: 0, scope: !1951)
!1994 = !DILocation(line: 660, column: 15, scope: !1949)
!1995 = !DILocation(line: 660, column: 22, scope: !1949)
!1996 = !DILocation(line: 660, column: 35, scope: !1949)
!1997 = !DILocation(line: 660, column: 19, scope: !1949)
!1998 = !DILocation(line: 660, column: 12, scope: !1949)
!1999 = !DILocation(line: 662, column: 11, scope: !1991)
!2000 = !DILocation(line: 662, column: 8, scope: !1991)
!2001 = !DILocation(line: 662, column: 8, scope: !1949)
!2002 = !DILocation(line: 663, column: 21, scope: !1991)
!2003 = !DILocation(line: 663, column: 40, scope: !1991)
!2004 = !DILocation(line: 663, column: 6, scope: !1991)
!2005 = !DILocation(line: 0, scope: !1950)
!2006 = distinct !{!2006, !1988, !2007}
!2007 = !DILocation(line: 664, column: 2, scope: !1951)
!2008 = !DILocation(line: 666, column: 7, scope: !1952)
!2009 = !DILocation(line: 667, column: 7, scope: !1952)
!2010 = !DILocation(line: 667, column: 31, scope: !1952)
!2011 = !DILocation(line: 668, column: 5, scope: !1952)
!2012 = !DILocation(line: 670, column: 3, scope: !1923)
!2013 = !DILocation(line: 672, column: 3, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !1, line: 672, column: 3)
!2015 = distinct !DILexicalBlock(scope: !1923, file: !1, line: 672, column: 3)
!2016 = !DILocation(line: 672, column: 3, scope: !2015)
!2017 = !DILocation(line: 673, column: 1, scope: !1923)
!2018 = distinct !DISubprogram(name: "dom_convert_dir_to_idx", scope: !1, file: !1, line: 191, type: !2019, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2021)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!5, !3}
!2021 = !{!2022}
!2022 = !DILocalVariable(name: "dir", arg: 1, scope: !2018, file: !1, line: 191, type: !3)
!2023 = !DILocation(line: 0, scope: !2018)
!2024 = !DILocation(line: 193, column: 3, scope: !2018)
!2025 = !DILocation(line: 194, column: 3, scope: !2018)
!2026 = distinct !DISubprogram(name: "dom_info_available_p", scope: !1, file: !1, line: 1461, type: !2027, scopeLine: 1462, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2029)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!381, !3}
!2029 = !{!2030, !2031}
!2030 = !DILocalVariable(name: "dir", arg: 1, scope: !2026, file: !1, line: 1461, type: !3)
!2031 = !DILocalVariable(name: "dir_index", scope: !2026, file: !1, line: 1463, type: !5)
!2032 = !DILocation(line: 0, scope: !2026)
!2033 = !DILocation(line: 1463, column: 28, scope: !2026)
!2034 = !DILocation(line: 1465, column: 10, scope: !2026)
!2035 = !DILocation(line: 1465, column: 34, scope: !2026)
!2036 = !DILocation(line: 1465, column: 3, scope: !2026)
!2037 = distinct !DISubprogram(name: "init_dom_info", scope: !1, file: !1, line: 147, type: !2038, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2041)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{null, !2040, !3}
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!2041 = !{!2042, !2043, !2044, !2045, !2047, !2049, !2051, !2053, !2055, !2057, !2059, !2061, !2063, !2065}
!2042 = !DILocalVariable(name: "di", arg: 1, scope: !2037, file: !1, line: 147, type: !2040)
!2043 = !DILocalVariable(name: "dir", arg: 2, scope: !2037, file: !1, line: 147, type: !3)
!2044 = !DILocalVariable(name: "num", scope: !2037, file: !1, line: 150, type: !5)
!2045 = !DILocalVariable(name: "i", scope: !2046, file: !1, line: 151, type: !5)
!2046 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 151, column: 3)
!2047 = !DILocalVariable(name: "i", scope: !2048, file: !1, line: 152, type: !5)
!2048 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 152, column: 3)
!2049 = !DILocalVariable(name: "i", scope: !2050, file: !1, line: 153, type: !5)
!2050 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 153, column: 3)
!2051 = !DILocalVariable(name: "i", scope: !2052, file: !1, line: 154, type: !5)
!2052 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 154, column: 3)
!2053 = !DILocalVariable(name: "i", scope: !2054, file: !1, line: 156, type: !5)
!2054 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 156, column: 3)
!2055 = !DILocalVariable(name: "i", scope: !2056, file: !1, line: 157, type: !5)
!2056 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 157, column: 3)
!2057 = !DILocalVariable(name: "i", scope: !2058, file: !1, line: 159, type: !5)
!2058 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 159, column: 3)
!2059 = !DILocalVariable(name: "i", scope: !2060, file: !1, line: 160, type: !5)
!2060 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 160, column: 3)
!2061 = !DILocalVariable(name: "i", scope: !2062, file: !1, line: 161, type: !5)
!2062 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 161, column: 3)
!2063 = !DILocalVariable(name: "i", scope: !2064, file: !1, line: 163, type: !5)
!2064 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 163, column: 3)
!2065 = !DILocalVariable(name: "i", scope: !2066, file: !1, line: 164, type: !5)
!2066 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 164, column: 3)
!2067 = !DILocation(line: 0, scope: !2037)
!2068 = !DILocation(line: 150, column: 22, scope: !2037)
!2069 = !DILocation(line: 0, scope: !2046)
!2070 = !DILocation(line: 151, column: 3, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2046, file: !1, line: 151, column: 3)
!2072 = !DILocation(line: 0, scope: !2048)
!2073 = !DILocation(line: 152, column: 3, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !1, line: 152, column: 3)
!2075 = distinct !DILexicalBlock(scope: !2048, file: !1, line: 152, column: 3)
!2076 = !DILocation(line: 152, column: 3, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !1, line: 152, column: 3)
!2078 = distinct !DILexicalBlock(scope: !2074, file: !1, line: 152, column: 3)
!2079 = !DILocation(line: 152, column: 3, scope: !2078)
!2080 = !DILocation(line: 0, scope: !2078)
!2081 = distinct !{!2081, !2079, !2079}
!2082 = !DILocation(line: 0, scope: !2050)
!2083 = !DILocation(line: 153, column: 3, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 153, column: 3)
!2085 = distinct !DILexicalBlock(scope: !2050, file: !1, line: 153, column: 3)
!2086 = !DILocation(line: 153, column: 3, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !1, line: 153, column: 3)
!2088 = distinct !DILexicalBlock(scope: !2084, file: !1, line: 153, column: 3)
!2089 = !DILocation(line: 153, column: 3, scope: !2088)
!2090 = !DILocation(line: 0, scope: !2088)
!2091 = distinct !{!2091, !2089, !2089}
!2092 = !DILocation(line: 0, scope: !2052)
!2093 = !DILocation(line: 154, column: 3, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2052, file: !1, line: 154, column: 3)
!2095 = !DILocation(line: 0, scope: !2054)
!2096 = !DILocation(line: 156, column: 3, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2054, file: !1, line: 156, column: 3)
!2098 = !DILocation(line: 0, scope: !2056)
!2099 = !DILocation(line: 157, column: 3, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2056, file: !1, line: 157, column: 3)
!2101 = !DILocation(line: 0, scope: !2058)
!2102 = !DILocation(line: 159, column: 3, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2058, file: !1, line: 159, column: 3)
!2104 = !DILocation(line: 0, scope: !2060)
!2105 = !DILocation(line: 160, column: 3, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !1, line: 160, column: 3)
!2107 = distinct !DILexicalBlock(scope: !2060, file: !1, line: 160, column: 3)
!2108 = !DILocation(line: 160, column: 3, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !1, line: 160, column: 3)
!2110 = distinct !DILexicalBlock(scope: !2106, file: !1, line: 160, column: 3)
!2111 = !DILocation(line: 160, column: 3, scope: !2110)
!2112 = !DILocation(line: 0, scope: !2110)
!2113 = distinct !{!2113, !2111, !2111}
!2114 = !DILocation(line: 0, scope: !2062)
!2115 = !DILocation(line: 161, column: 3, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2062, file: !1, line: 161, column: 3)
!2117 = !DILocation(line: 0, scope: !2064)
!2118 = !DILocation(line: 163, column: 3, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2064, file: !1, line: 163, column: 3)
!2120 = !DILocation(line: 0, scope: !2066)
!2121 = !DILocation(line: 164, column: 3, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2066, file: !1, line: 164, column: 3)
!2123 = !DILocation(line: 166, column: 7, scope: !2037)
!2124 = !DILocation(line: 166, column: 14, scope: !2037)
!2125 = !DILocation(line: 167, column: 7, scope: !2037)
!2126 = !DILocation(line: 167, column: 13, scope: !2037)
!2127 = !DILocation(line: 169, column: 3, scope: !2037)
!2128 = !DILocation(line: 172, column: 6, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 170, column: 5)
!2130 = !DILocation(line: 172, column: 21, scope: !2129)
!2131 = !DILocation(line: 173, column: 2, scope: !2129)
!2132 = !DILocation(line: 175, column: 23, scope: !2129)
!2133 = !DILocation(line: 175, column: 6, scope: !2129)
!2134 = !DILocation(line: 175, column: 21, scope: !2129)
!2135 = !DILocation(line: 176, column: 2, scope: !2129)
!2136 = !DILocation(line: 178, column: 2, scope: !2129)
!2137 = !DILocation(line: 179, column: 2, scope: !2129)
!2138 = !DILocation(line: 181, column: 1, scope: !2037)
!2139 = distinct !DISubprogram(name: "calc_dfs_tree", scope: !1, file: !1, line: 334, type: !2140, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2142)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !2040, !381}
!2142 = !{!2143, !2144, !2145, !2146, !2149}
!2143 = !DILocalVariable(name: "di", arg: 1, scope: !2139, file: !1, line: 334, type: !2040)
!2144 = !DILocalVariable(name: "reverse", arg: 2, scope: !2139, file: !1, line: 334, type: !381)
!2145 = !DILocalVariable(name: "begin", scope: !2139, file: !1, line: 337, type: !389)
!2146 = !DILocalVariable(name: "b", scope: !2147, file: !1, line: 356, type: !389)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 345, column: 5)
!2148 = distinct !DILexicalBlock(scope: !2139, file: !1, line: 344, column: 7)
!2149 = !DILocalVariable(name: "saw_unconnected", scope: !2147, file: !1, line: 357, type: !381)
!2150 = !DILocation(line: 0, scope: !2139)
!2151 = !DILocation(line: 337, column: 23, scope: !2139)
!2152 = !DILocation(line: 337, column: 33, scope: !2139)
!2153 = !DILocation(line: 337, column: 50, scope: !2139)
!2154 = !DILocation(line: 338, column: 41, scope: !2139)
!2155 = !DILocation(line: 338, column: 7, scope: !2139)
!2156 = !DILocation(line: 338, column: 17, scope: !2139)
!2157 = !DILocation(line: 338, column: 3, scope: !2139)
!2158 = !DILocation(line: 338, column: 35, scope: !2139)
!2159 = !DILocation(line: 339, column: 7, scope: !2139)
!2160 = !DILocation(line: 339, column: 21, scope: !2139)
!2161 = !DILocation(line: 339, column: 3, scope: !2139)
!2162 = !DILocation(line: 339, column: 29, scope: !2139)
!2163 = !DILocation(line: 340, column: 13, scope: !2139)
!2164 = !DILocation(line: 342, column: 3, scope: !2139)
!2165 = !DILocation(line: 344, column: 7, scope: !2139)
!2166 = !DILocation(line: 394, column: 3, scope: !2139)
!2167 = !DILocation(line: 0, scope: !2147)
!2168 = !DILocation(line: 359, column: 7, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2147, file: !1, line: 359, column: 7)
!2170 = !DILocation(line: 0, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !1, line: 360, column: 2)
!2172 = distinct !DILexicalBlock(scope: !2169, file: !1, line: 359, column: 7)
!2173 = !DILocation(line: 359, column: 7, scope: !2172)
!2174 = !DILocation(line: 0, scope: !2169)
!2175 = !DILocation(line: 361, column: 8, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2171, file: !1, line: 361, column: 8)
!2177 = !DILocation(line: 361, column: 30, scope: !2176)
!2178 = !DILocation(line: 361, column: 8, scope: !2171)
!2179 = !DILocation(line: 363, column: 16, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !1, line: 363, column: 12)
!2181 = distinct !DILexicalBlock(scope: !2176, file: !1, line: 362, column: 6)
!2182 = !DILocation(line: 363, column: 29, scope: !2180)
!2183 = !DILocation(line: 363, column: 12, scope: !2180)
!2184 = !DILocation(line: 363, column: 36, scope: !2180)
!2185 = !DILocation(line: 363, column: 12, scope: !2181)
!2186 = !DILocation(line: 365, column: 8, scope: !2181)
!2187 = !DILocation(line: 367, column: 24, scope: !2171)
!2188 = !DILocation(line: 367, column: 43, scope: !2171)
!2189 = !DILocation(line: 367, column: 4, scope: !2171)
!2190 = !DILocation(line: 368, column: 34, scope: !2171)
!2191 = !DILocation(line: 368, column: 8, scope: !2171)
!2192 = !DILocation(line: 368, column: 21, scope: !2171)
!2193 = !DILocation(line: 368, column: 4, scope: !2171)
!2194 = !DILocation(line: 368, column: 28, scope: !2171)
!2195 = !DILocation(line: 369, column: 8, scope: !2171)
!2196 = !DILocation(line: 369, column: 22, scope: !2171)
!2197 = !DILocation(line: 369, column: 4, scope: !2171)
!2198 = !DILocation(line: 369, column: 30, scope: !2171)
!2199 = !DILocation(line: 370, column: 37, scope: !2171)
!2200 = !DILocation(line: 370, column: 47, scope: !2171)
!2201 = !DILocation(line: 370, column: 33, scope: !2171)
!2202 = !DILocation(line: 370, column: 8, scope: !2171)
!2203 = !DILocation(line: 370, column: 23, scope: !2171)
!2204 = !DILocation(line: 370, column: 4, scope: !2171)
!2205 = !DILocation(line: 370, column: 31, scope: !2171)
!2206 = !DILocation(line: 371, column: 14, scope: !2171)
!2207 = !DILocation(line: 372, column: 4, scope: !2171)
!2208 = !DILocation(line: 373, column: 2, scope: !2171)
!2209 = !DILocation(line: 0, scope: !2172)
!2210 = distinct !{!2210, !2168, !2211}
!2211 = !DILocation(line: 373, column: 2, scope: !2169)
!2212 = !DILocation(line: 375, column: 11, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2147, file: !1, line: 375, column: 11)
!2214 = !DILocation(line: 375, column: 11, scope: !2147)
!2215 = !DILocation(line: 377, column: 4, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !1, line: 377, column: 4)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !1, line: 376, column: 2)
!2218 = !DILocation(line: 377, column: 4, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2216, file: !1, line: 377, column: 4)
!2220 = !DILocation(line: 0, scope: !2216)
!2221 = !DILocation(line: 379, column: 16, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !1, line: 379, column: 12)
!2223 = distinct !DILexicalBlock(scope: !2219, file: !1, line: 378, column: 6)
!2224 = !DILocation(line: 379, column: 29, scope: !2222)
!2225 = !DILocation(line: 379, column: 12, scope: !2222)
!2226 = !DILocation(line: 379, column: 12, scope: !2223)
!2227 = !DILocation(line: 381, column: 28, scope: !2223)
!2228 = !DILocation(line: 381, column: 8, scope: !2223)
!2229 = !DILocation(line: 382, column: 38, scope: !2223)
!2230 = !DILocation(line: 382, column: 12, scope: !2223)
!2231 = !DILocation(line: 382, column: 25, scope: !2223)
!2232 = !DILocation(line: 382, column: 8, scope: !2223)
!2233 = !DILocation(line: 382, column: 32, scope: !2223)
!2234 = !DILocation(line: 383, column: 12, scope: !2223)
!2235 = !DILocation(line: 383, column: 26, scope: !2223)
!2236 = !DILocation(line: 383, column: 8, scope: !2223)
!2237 = !DILocation(line: 383, column: 34, scope: !2223)
!2238 = !DILocation(line: 384, column: 41, scope: !2223)
!2239 = !DILocation(line: 384, column: 51, scope: !2223)
!2240 = !DILocation(line: 384, column: 37, scope: !2223)
!2241 = !DILocation(line: 384, column: 12, scope: !2223)
!2242 = !DILocation(line: 384, column: 27, scope: !2223)
!2243 = !DILocation(line: 384, column: 8, scope: !2223)
!2244 = !DILocation(line: 384, column: 35, scope: !2223)
!2245 = !DILocation(line: 385, column: 18, scope: !2223)
!2246 = !DILocation(line: 386, column: 8, scope: !2223)
!2247 = !DILocation(line: 387, column: 6, scope: !2223)
!2248 = !DILocation(line: 0, scope: !2219)
!2249 = distinct !{!2249, !2215, !2250}
!2250 = !DILocation(line: 387, column: 6, scope: !2216)
!2251 = !DILocation(line: 391, column: 19, scope: !2139)
!2252 = !DILocation(line: 391, column: 26, scope: !2139)
!2253 = !DILocation(line: 391, column: 7, scope: !2139)
!2254 = !DILocation(line: 391, column: 13, scope: !2139)
!2255 = !DILocation(line: 395, column: 1, scope: !2139)
!2256 = distinct !DISubprogram(name: "calc_idoms", scope: !1, file: !1, line: 494, type: !2140, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2257)
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2269, !2270, !2272, !2273}
!2258 = !DILocalVariable(name: "di", arg: 1, scope: !2256, file: !1, line: 494, type: !2040)
!2259 = !DILocalVariable(name: "reverse", arg: 2, scope: !2256, file: !1, line: 494, type: !381)
!2260 = !DILocalVariable(name: "v", scope: !2256, file: !1, line: 496, type: !1444)
!2261 = !DILocalVariable(name: "w", scope: !2256, file: !1, line: 496, type: !1444)
!2262 = !DILocalVariable(name: "k", scope: !2256, file: !1, line: 496, type: !1444)
!2263 = !DILocalVariable(name: "par", scope: !2256, file: !1, line: 496, type: !1444)
!2264 = !DILocalVariable(name: "en_block", scope: !2256, file: !1, line: 497, type: !389)
!2265 = !DILocalVariable(name: "ei", scope: !2256, file: !1, line: 498, type: !1448)
!2266 = !DILocalVariable(name: "einext", scope: !2256, file: !1, line: 498, type: !1448)
!2267 = !DILocalVariable(name: "bb", scope: !2268, file: !1, line: 509, type: !389)
!2268 = distinct !DILexicalBlock(scope: !2256, file: !1, line: 508, column: 5)
!2269 = !DILocalVariable(name: "e", scope: !2268, file: !1, line: 510, type: !407)
!2270 = !DILocalVariable(name: "k1", scope: !2271, file: !1, line: 534, type: !1444)
!2271 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 533, column: 2)
!2272 = !DILocalVariable(name: "b", scope: !2271, file: !1, line: 535, type: !389)
!2273 = !DILabel(scope: !2274, name: "do_fake_exit_edge", file: !1, line: 544)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !1, line: 543, column: 6)
!2275 = distinct !DILexicalBlock(scope: !2271, file: !1, line: 542, column: 8)
!2276 = !DILocation(line: 0, scope: !2256)
!2277 = !DILocation(line: 498, column: 3, scope: !2256)
!2278 = !DILocation(line: 500, column: 7, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2256, file: !1, line: 500, column: 7)
!2280 = !DILocation(line: 0, scope: !2279)
!2281 = !DILocation(line: 500, column: 7, scope: !2256)
!2282 = !DILocation(line: 501, column: 16, scope: !2279)
!2283 = !DILocation(line: 501, column: 5, scope: !2279)
!2284 = !DILocation(line: 503, column: 16, scope: !2279)
!2285 = !DILocation(line: 506, column: 11, scope: !2256)
!2286 = !DILocation(line: 0, scope: !2268)
!2287 = !DILocation(line: 0, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !1, line: 520, column: 8)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !1, line: 518, column: 2)
!2290 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 517, column: 11)
!2291 = !DILocation(line: 0, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2288, file: !1, line: 521, column: 6)
!2293 = !DILocation(line: 0, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !1, line: 569, column: 8)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !1, line: 567, column: 2)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !1, line: 566, column: 7)
!2297 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 566, column: 7)
!2298 = !DILocation(line: 0, scope: !2275)
!2299 = !DILocation(line: 507, column: 3, scope: !2256)
!2300 = !DILocation(line: 507, column: 12, scope: !2256)
!2301 = !DILocation(line: 509, column: 28, scope: !2268)
!2302 = !DILocation(line: 509, column: 24, scope: !2268)
!2303 = !DILocation(line: 512, column: 17, scope: !2268)
!2304 = !DILocation(line: 512, column: 13, scope: !2268)
!2305 = !DILocation(line: 515, column: 12, scope: !2268)
!2306 = !DILocation(line: 515, column: 24, scope: !2268)
!2307 = !DILocation(line: 515, column: 47, scope: !2268)
!2308 = !DILocation(line: 517, column: 11, scope: !2268)
!2309 = !DILocation(line: 520, column: 26, scope: !2288)
!2310 = !DILocation(line: 520, column: 46, scope: !2288)
!2311 = !DILocation(line: 520, column: 8, scope: !2288)
!2312 = !DILocation(line: 520, column: 8, scope: !2289)
!2313 = !DILocation(line: 522, column: 17, scope: !2292)
!2314 = !DILocation(line: 523, column: 21, scope: !2292)
!2315 = !DILocation(line: 524, column: 8, scope: !2292)
!2316 = !DILocation(line: 532, column: 15, scope: !2268)
!2317 = !DILocation(line: 532, column: 14, scope: !2268)
!2318 = !DILocation(line: 532, column: 7, scope: !2268)
!2319 = !DILocation(line: 537, column: 8, scope: !2271)
!2320 = !DILocation(line: 538, column: 8, scope: !2271)
!2321 = !DILocation(line: 538, column: 23, scope: !2271)
!2322 = !DILocation(line: 538, column: 33, scope: !2271)
!2323 = !DILocation(line: 0, scope: !2271)
!2324 = !DILocation(line: 539, column: 13, scope: !2271)
!2325 = !DILocation(line: 540, column: 4, scope: !2271)
!2326 = !DILocation(line: 542, column: 10, scope: !2275)
!2327 = !DILocation(line: 542, column: 8, scope: !2271)
!2328 = !DILocation(line: 544, column: 6, scope: !2274)
!2329 = !DILocation(line: 545, column: 17, scope: !2274)
!2330 = !DILocation(line: 545, column: 27, scope: !2274)
!2331 = !DILocation(line: 545, column: 13, scope: !2274)
!2332 = !DILocation(line: 546, column: 6, scope: !2274)
!2333 = !DILocation(line: 548, column: 15, scope: !2275)
!2334 = !DILocation(line: 548, column: 28, scope: !2275)
!2335 = !DILocation(line: 548, column: 11, scope: !2275)
!2336 = !DILocation(line: 552, column: 11, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2271, file: !1, line: 552, column: 8)
!2338 = !DILocation(line: 552, column: 8, scope: !2271)
!2339 = !DILocation(line: 553, column: 15, scope: !2337)
!2340 = !DILocation(line: 553, column: 19, scope: !2337)
!2341 = !DILocation(line: 553, column: 11, scope: !2337)
!2342 = !DILocation(line: 553, column: 6, scope: !2337)
!2343 = !DILocation(line: 554, column: 11, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2271, file: !1, line: 554, column: 8)
!2345 = !DILocation(line: 554, column: 8, scope: !2271)
!2346 = !DILocation(line: 557, column: 9, scope: !2271)
!2347 = distinct !{!2347, !2318, !2348}
!2348 = !DILocation(line: 558, column: 2, scope: !2268)
!2349 = !DILocation(line: 560, column: 11, scope: !2268)
!2350 = !DILocation(line: 560, column: 7, scope: !2268)
!2351 = !DILocation(line: 560, column: 18, scope: !2268)
!2352 = !DILocation(line: 561, column: 7, scope: !2268)
!2353 = !DILocation(line: 562, column: 32, scope: !2268)
!2354 = !DILocation(line: 562, column: 28, scope: !2268)
!2355 = !DILocation(line: 562, column: 11, scope: !2268)
!2356 = !DILocation(line: 562, column: 7, scope: !2268)
!2357 = !DILocation(line: 562, column: 26, scope: !2268)
!2358 = !DILocation(line: 563, column: 11, scope: !2268)
!2359 = !DILocation(line: 563, column: 7, scope: !2268)
!2360 = !DILocation(line: 563, column: 21, scope: !2268)
!2361 = !DILocation(line: 566, column: 20, scope: !2297)
!2362 = !DILocation(line: 566, column: 16, scope: !2297)
!2363 = !DILocation(line: 566, column: 12, scope: !2297)
!2364 = !DILocation(line: 0, scope: !2297)
!2365 = !DILocation(line: 566, column: 7, scope: !2297)
!2366 = !DILocation(line: 568, column: 8, scope: !2295)
!2367 = !DILocation(line: 569, column: 12, scope: !2294)
!2368 = !DILocation(line: 569, column: 8, scope: !2294)
!2369 = !DILocation(line: 569, column: 21, scope: !2294)
!2370 = !DILocation(line: 569, column: 19, scope: !2294)
!2371 = !DILocation(line: 569, column: 8, scope: !2295)
!2372 = !DILocation(line: 570, column: 6, scope: !2294)
!2373 = !DILocation(line: 566, column: 44, scope: !2296)
!2374 = !DILocation(line: 566, column: 40, scope: !2296)
!2375 = !DILocation(line: 566, column: 7, scope: !2296)
!2376 = distinct !{!2376, !2365, !2377}
!2377 = !DILocation(line: 573, column: 2, scope: !2297)
!2378 = !DILocation(line: 575, column: 11, scope: !2268)
!2379 = !DILocation(line: 575, column: 7, scope: !2268)
!2380 = !DILocation(line: 575, column: 23, scope: !2268)
!2381 = !DILocation(line: 576, column: 8, scope: !2268)
!2382 = distinct !{!2382, !2299, !2383}
!2383 = !DILocation(line: 577, column: 5, scope: !2256)
!2384 = !DILocation(line: 580, column: 7, scope: !2256)
!2385 = !DILocation(line: 580, column: 3, scope: !2256)
!2386 = !DILocation(line: 580, column: 14, scope: !2256)
!2387 = !DILocation(line: 581, column: 8, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2256, file: !1, line: 581, column: 3)
!2389 = !DILocation(line: 0, scope: !2388)
!2390 = !DILocation(line: 581, column: 24, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2388, file: !1, line: 581, column: 3)
!2392 = !DILocation(line: 581, column: 17, scope: !2391)
!2393 = !DILocation(line: 581, column: 3, scope: !2388)
!2394 = !DILocation(line: 582, column: 13, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2391, file: !1, line: 582, column: 9)
!2396 = !DILocation(line: 582, column: 9, scope: !2395)
!2397 = !DILocation(line: 582, column: 27, scope: !2395)
!2398 = !DILocation(line: 582, column: 23, scope: !2395)
!2399 = !DILocation(line: 582, column: 20, scope: !2395)
!2400 = !DILocation(line: 582, column: 9, scope: !2391)
!2401 = !DILocation(line: 583, column: 20, scope: !2395)
!2402 = !DILocation(line: 583, column: 18, scope: !2395)
!2403 = !DILocation(line: 583, column: 7, scope: !2395)
!2404 = !DILocation(line: 581, column: 32, scope: !2391)
!2405 = !DILocation(line: 581, column: 3, scope: !2391)
!2406 = distinct !{!2406, !2393, !2407}
!2407 = !DILocation(line: 583, column: 38, scope: !2388)
!2408 = !DILocation(line: 584, column: 1, scope: !2256)
!2409 = distinct !DISubprogram(name: "free_dom_info", scope: !1, file: !1, line: 200, type: !2410, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2412)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !2040}
!2412 = !{!2413}
!2413 = !DILocalVariable(name: "di", arg: 1, scope: !2409, file: !1, line: 200, type: !2040)
!2414 = !DILocation(line: 0, scope: !2409)
!2415 = !DILocation(line: 202, column: 13, scope: !2409)
!2416 = !DILocation(line: 202, column: 3, scope: !2409)
!2417 = !DILocation(line: 203, column: 13, scope: !2409)
!2418 = !DILocation(line: 203, column: 3, scope: !2409)
!2419 = !DILocation(line: 204, column: 13, scope: !2409)
!2420 = !DILocation(line: 204, column: 3, scope: !2409)
!2421 = !DILocation(line: 205, column: 13, scope: !2409)
!2422 = !DILocation(line: 205, column: 3, scope: !2409)
!2423 = !DILocation(line: 206, column: 13, scope: !2409)
!2424 = !DILocation(line: 206, column: 3, scope: !2409)
!2425 = !DILocation(line: 207, column: 13, scope: !2409)
!2426 = !DILocation(line: 207, column: 3, scope: !2409)
!2427 = !DILocation(line: 208, column: 13, scope: !2409)
!2428 = !DILocation(line: 208, column: 3, scope: !2409)
!2429 = !DILocation(line: 209, column: 13, scope: !2409)
!2430 = !DILocation(line: 209, column: 3, scope: !2409)
!2431 = !DILocation(line: 210, column: 13, scope: !2409)
!2432 = !DILocation(line: 210, column: 3, scope: !2409)
!2433 = !DILocation(line: 211, column: 13, scope: !2409)
!2434 = !DILocation(line: 211, column: 3, scope: !2409)
!2435 = !DILocation(line: 212, column: 13, scope: !2409)
!2436 = !DILocation(line: 212, column: 3, scope: !2409)
!2437 = !DILocation(line: 213, column: 3, scope: !2409)
!2438 = !DILocation(line: 214, column: 1, scope: !2409)
!2439 = distinct !DISubprogram(name: "compute_dom_fast_query", scope: !1, file: !1, line: 609, type: !1924, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2440)
!2440 = !{!2441, !2442, !2443, !2444}
!2441 = !DILocalVariable(name: "dir", arg: 1, scope: !2439, file: !1, line: 609, type: !3)
!2442 = !DILocalVariable(name: "num", scope: !2439, file: !1, line: 611, type: !382)
!2443 = !DILocalVariable(name: "bb", scope: !2439, file: !1, line: 612, type: !389)
!2444 = !DILocalVariable(name: "dir_index", scope: !2439, file: !1, line: 613, type: !5)
!2445 = !DILocation(line: 0, scope: !2439)
!2446 = !DILocation(line: 611, column: 3, scope: !2439)
!2447 = !DILocation(line: 611, column: 7, scope: !2439)
!2448 = !DILocation(line: 613, column: 28, scope: !2439)
!2449 = !DILocation(line: 615, column: 3, scope: !2439)
!2450 = !DILocation(line: 617, column: 7, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2439, file: !1, line: 617, column: 7)
!2452 = !DILocation(line: 617, column: 31, scope: !2451)
!2453 = !DILocation(line: 617, column: 7, scope: !2439)
!2454 = !DILocation(line: 620, column: 3, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2439, file: !1, line: 620, column: 3)
!2456 = !DILocation(line: 0, scope: !2455)
!2457 = !DILocation(line: 622, column: 12, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !1, line: 622, column: 11)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !1, line: 621, column: 5)
!2460 = distinct !DILexicalBlock(scope: !2455, file: !1, line: 620, column: 3)
!2461 = !DILocation(line: 622, column: 32, scope: !2458)
!2462 = !DILocation(line: 622, column: 11, scope: !2459)
!2463 = !DILocation(line: 623, column: 2, scope: !2458)
!2464 = !DILocation(line: 620, column: 3, scope: !2460)
!2465 = distinct !{!2465, !2454, !2466}
!2466 = !DILocation(line: 624, column: 5, scope: !2455)
!2467 = !DILocation(line: 626, column: 3, scope: !2439)
!2468 = !DILocation(line: 626, column: 27, scope: !2439)
!2469 = !DILocation(line: 627, column: 1, scope: !2439)
!2470 = distinct !DISubprogram(name: "free_dominance_info", scope: !1, file: !1, line: 677, type: !1924, scopeLine: 678, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2471)
!2471 = !{!2472, !2473, !2474}
!2472 = !DILocalVariable(name: "dir", arg: 1, scope: !2470, file: !1, line: 677, type: !3)
!2473 = !DILocalVariable(name: "bb", scope: !2470, file: !1, line: 679, type: !389)
!2474 = !DILocalVariable(name: "dir_index", scope: !2470, file: !1, line: 680, type: !5)
!2475 = !DILocation(line: 0, scope: !2470)
!2476 = !DILocation(line: 680, column: 28, scope: !2470)
!2477 = !DILocation(line: 682, column: 8, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2470, file: !1, line: 682, column: 7)
!2479 = !DILocation(line: 682, column: 7, scope: !2470)
!2480 = !DILocation(line: 685, column: 3, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2470, file: !1, line: 685, column: 3)
!2482 = !DILocation(line: 0, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !1, line: 686, column: 5)
!2484 = distinct !DILexicalBlock(scope: !2481, file: !1, line: 685, column: 3)
!2485 = !DILocation(line: 0, scope: !2481)
!2486 = !DILocation(line: 687, column: 27, scope: !2483)
!2487 = !DILocation(line: 687, column: 7, scope: !2483)
!2488 = !DILocation(line: 688, column: 26, scope: !2483)
!2489 = !DILocation(line: 685, column: 3, scope: !2484)
!2490 = distinct !{!2490, !2480, !2491}
!2491 = !DILocation(line: 689, column: 5, scope: !2481)
!2492 = !DILocation(line: 690, column: 3, scope: !2470)
!2493 = !DILocation(line: 692, column: 3, scope: !2470)
!2494 = !DILocation(line: 692, column: 32, scope: !2470)
!2495 = !DILocation(line: 694, column: 3, scope: !2470)
!2496 = !DILocation(line: 694, column: 27, scope: !2470)
!2497 = !DILocation(line: 695, column: 1, scope: !2470)
!2498 = distinct !DISubprogram(name: "get_immediate_dominator", scope: !1, file: !1, line: 699, type: !2499, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!389, !3, !389}
!2501 = !{!2502, !2503, !2504, !2505}
!2502 = !DILocalVariable(name: "dir", arg: 1, scope: !2498, file: !1, line: 699, type: !3)
!2503 = !DILocalVariable(name: "bb", arg: 2, scope: !2498, file: !1, line: 699, type: !389)
!2504 = !DILocalVariable(name: "dir_index", scope: !2498, file: !1, line: 701, type: !5)
!2505 = !DILocalVariable(name: "node", scope: !2498, file: !1, line: 702, type: !1400)
!2506 = !DILocation(line: 0, scope: !2498)
!2507 = !DILocation(line: 701, column: 28, scope: !2498)
!2508 = !DILocation(line: 702, column: 26, scope: !2498)
!2509 = !DILocation(line: 704, column: 3, scope: !2498)
!2510 = !DILocation(line: 706, column: 14, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2498, file: !1, line: 706, column: 7)
!2512 = !DILocation(line: 706, column: 8, scope: !2511)
!2513 = !DILocation(line: 706, column: 7, scope: !2498)
!2514 = !DILocation(line: 709, column: 38, scope: !2498)
!2515 = !DILocation(line: 709, column: 3, scope: !2498)
!2516 = !DILocation(line: 710, column: 1, scope: !2498)
!2517 = distinct !DISubprogram(name: "set_immediate_dominator", scope: !1, file: !1, line: 715, type: !2518, scopeLine: 717, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{null, !3, !389, !389}
!2520 = !{!2521, !2522, !2523, !2524, !2525}
!2521 = !DILocalVariable(name: "dir", arg: 1, scope: !2517, file: !1, line: 715, type: !3)
!2522 = !DILocalVariable(name: "bb", arg: 2, scope: !2517, file: !1, line: 715, type: !389)
!2523 = !DILocalVariable(name: "dominated_by", arg: 3, scope: !2517, file: !1, line: 716, type: !389)
!2524 = !DILocalVariable(name: "dir_index", scope: !2517, file: !1, line: 718, type: !5)
!2525 = !DILocalVariable(name: "node", scope: !2517, file: !1, line: 719, type: !1400)
!2526 = !DILocation(line: 0, scope: !2517)
!2527 = !DILocation(line: 718, column: 28, scope: !2517)
!2528 = !DILocation(line: 719, column: 26, scope: !2517)
!2529 = !DILocation(line: 721, column: 3, scope: !2517)
!2530 = !DILocation(line: 723, column: 13, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2517, file: !1, line: 723, column: 7)
!2532 = !DILocation(line: 723, column: 7, scope: !2531)
!2533 = !DILocation(line: 723, column: 7, scope: !2517)
!2534 = !DILocation(line: 725, column: 25, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !1, line: 725, column: 11)
!2536 = distinct !DILexicalBlock(scope: !2531, file: !1, line: 724, column: 5)
!2537 = !DILocation(line: 725, column: 33, scope: !2535)
!2538 = !DILocation(line: 725, column: 30, scope: !2535)
!2539 = !DILocation(line: 725, column: 11, scope: !2536)
!2540 = !DILocation(line: 727, column: 7, scope: !2536)
!2541 = !DILocation(line: 728, column: 5, scope: !2536)
!2542 = !DILocation(line: 730, column: 7, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2517, file: !1, line: 730, column: 7)
!2544 = !DILocation(line: 730, column: 7, scope: !2517)
!2545 = !DILocation(line: 731, column: 26, scope: !2543)
!2546 = !DILocation(line: 731, column: 5, scope: !2543)
!2547 = !DILocation(line: 733, column: 7, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2517, file: !1, line: 733, column: 7)
!2549 = !DILocation(line: 733, column: 31, scope: !2548)
!2550 = !DILocation(line: 733, column: 7, scope: !2517)
!2551 = !DILocation(line: 734, column: 29, scope: !2548)
!2552 = !DILocation(line: 734, column: 5, scope: !2548)
!2553 = !DILocation(line: 735, column: 1, scope: !2517)
!2554 = distinct !DISubprogram(name: "get_dominated_by", scope: !1, file: !1, line: 740, type: !2555, scopeLine: 741, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2557)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!1454, !3, !389}
!2557 = !{!2558, !2559, !2560, !2561, !2562, !2563, !2564}
!2558 = !DILocalVariable(name: "dir", arg: 1, scope: !2554, file: !1, line: 740, type: !3)
!2559 = !DILocalVariable(name: "bb", arg: 2, scope: !2554, file: !1, line: 740, type: !389)
!2560 = !DILocalVariable(name: "dir_index", scope: !2554, file: !1, line: 742, type: !5)
!2561 = !DILocalVariable(name: "node", scope: !2554, file: !1, line: 743, type: !1400)
!2562 = !DILocalVariable(name: "son", scope: !2554, file: !1, line: 743, type: !1400)
!2563 = !DILocalVariable(name: "ason", scope: !2554, file: !1, line: 743, type: !1400)
!2564 = !DILocalVariable(name: "bbs", scope: !2554, file: !1, line: 744, type: !1454)
!2565 = !DILocation(line: 0, scope: !2554)
!2566 = !DILocation(line: 742, column: 28, scope: !2554)
!2567 = !DILocation(line: 743, column: 26, scope: !2554)
!2568 = !DILocation(line: 743, column: 59, scope: !2554)
!2569 = !DILocation(line: 744, column: 3, scope: !2554)
!2570 = !DILocation(line: 744, column: 28, scope: !2554)
!2571 = !DILocation(line: 746, column: 3, scope: !2554)
!2572 = !DILocation(line: 748, column: 8, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2554, file: !1, line: 748, column: 7)
!2574 = !DILocation(line: 748, column: 7, scope: !2554)
!2575 = !DILocation(line: 751, column: 3, scope: !2554)
!2576 = !DILocation(line: 752, column: 8, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2554, file: !1, line: 752, column: 3)
!2578 = !DILocation(line: 0, scope: !2577)
!2579 = !DILocation(line: 752, column: 32, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2577, file: !1, line: 752, column: 3)
!2581 = !DILocation(line: 752, column: 3, scope: !2577)
!2582 = !DILocation(line: 753, column: 5, scope: !2580)
!2583 = !DILocation(line: 752, column: 3, scope: !2580)
!2584 = distinct !{!2584, !2581, !2585}
!2585 = !DILocation(line: 753, column: 5, scope: !2577)
!2586 = !DILocation(line: 755, column: 10, scope: !2554)
!2587 = !DILocation(line: 755, column: 3, scope: !2554)
!2588 = !DILocation(line: 756, column: 1, scope: !2554)
!2589 = distinct !DISubprogram(name: "VEC_basic_block_heap_safe_push", scope: !4, file: !4, line: 283, type: !2590, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2593)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!1446, !2592, !389}
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!2593 = !{!2594, !2595}
!2594 = !DILocalVariable(name: "vec_", arg: 1, scope: !2589, file: !4, line: 283, type: !2592)
!2595 = !DILocalVariable(name: "obj_", arg: 2, scope: !2589, file: !4, line: 283, type: !389)
!2596 = !DILocation(line: 0, scope: !2589)
!2597 = !DILocation(line: 283, column: 1, scope: !2589)
!2598 = distinct !DISubprogram(name: "get_dominated_by_region", scope: !1, file: !1, line: 763, type: !2599, scopeLine: 765, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!1454, !3, !1446, !5}
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2607}
!2602 = !DILocalVariable(name: "dir", arg: 1, scope: !2598, file: !1, line: 763, type: !3)
!2603 = !DILocalVariable(name: "region", arg: 2, scope: !2598, file: !1, line: 763, type: !1446)
!2604 = !DILocalVariable(name: "n_region", arg: 3, scope: !2598, file: !1, line: 764, type: !5)
!2605 = !DILocalVariable(name: "i", scope: !2598, file: !1, line: 766, type: !5)
!2606 = !DILocalVariable(name: "dom", scope: !2598, file: !1, line: 767, type: !389)
!2607 = !DILocalVariable(name: "doms", scope: !2598, file: !1, line: 768, type: !1454)
!2608 = !DILocation(line: 0, scope: !2598)
!2609 = !DILocation(line: 768, column: 3, scope: !2598)
!2610 = !DILocation(line: 768, column: 28, scope: !2598)
!2611 = !DILocation(line: 770, column: 17, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !1, line: 770, column: 3)
!2613 = distinct !DILexicalBlock(scope: !2598, file: !1, line: 770, column: 3)
!2614 = !DILocation(line: 770, column: 8, scope: !2613)
!2615 = !DILocation(line: 0, scope: !2613)
!2616 = !DILocation(line: 770, column: 3, scope: !2613)
!2617 = !DILocation(line: 772, column: 17, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !1, line: 772, column: 3)
!2619 = distinct !DILexicalBlock(scope: !2598, file: !1, line: 772, column: 3)
!2620 = !DILocation(line: 772, column: 3, scope: !2619)
!2621 = !DILocation(line: 771, column: 5, scope: !2612)
!2622 = !DILocation(line: 771, column: 16, scope: !2612)
!2623 = !DILocation(line: 771, column: 22, scope: !2612)
!2624 = !DILocation(line: 770, column: 30, scope: !2612)
!2625 = !DILocation(line: 770, column: 3, scope: !2612)
!2626 = distinct !{!2626, !2616, !2627}
!2627 = !DILocation(line: 771, column: 25, scope: !2613)
!2628 = !DILocation(line: 0, scope: !2619)
!2629 = !DILocation(line: 778, column: 17, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !1, line: 778, column: 3)
!2631 = distinct !DILexicalBlock(scope: !2598, file: !1, line: 778, column: 3)
!2632 = !DILocation(line: 778, column: 3, scope: !2631)
!2633 = !DILocation(line: 773, column: 36, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 773, column: 5)
!2635 = !DILocation(line: 773, column: 16, scope: !2634)
!2636 = !DILocation(line: 773, column: 10, scope: !2634)
!2637 = !DILocation(line: 0, scope: !2634)
!2638 = !DILocation(line: 773, column: 5, scope: !2634)
!2639 = !DILocation(line: 776, column: 18, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !1, line: 776, column: 11)
!2641 = distinct !DILexicalBlock(scope: !2634, file: !1, line: 773, column: 5)
!2642 = !DILocation(line: 776, column: 24, scope: !2640)
!2643 = !DILocation(line: 776, column: 11, scope: !2641)
!2644 = !DILocation(line: 777, column: 2, scope: !2640)
!2645 = !DILocation(line: 775, column: 9, scope: !2641)
!2646 = !DILocation(line: 773, column: 5, scope: !2641)
!2647 = distinct !{!2647, !2638, !2648}
!2648 = !DILocation(line: 777, column: 2, scope: !2634)
!2649 = !DILocation(line: 772, column: 30, scope: !2618)
!2650 = !DILocation(line: 772, column: 3, scope: !2618)
!2651 = distinct !{!2651, !2620, !2652}
!2652 = !DILocation(line: 777, column: 2, scope: !2619)
!2653 = !DILocation(line: 0, scope: !2631)
!2654 = !DILocation(line: 779, column: 5, scope: !2630)
!2655 = !DILocation(line: 779, column: 16, scope: !2630)
!2656 = !DILocation(line: 779, column: 22, scope: !2630)
!2657 = !DILocation(line: 778, column: 30, scope: !2630)
!2658 = !DILocation(line: 778, column: 3, scope: !2630)
!2659 = distinct !{!2659, !2632, !2660}
!2660 = !DILocation(line: 779, column: 26, scope: !2631)
!2661 = !DILocation(line: 781, column: 10, scope: !2598)
!2662 = !DILocation(line: 782, column: 1, scope: !2598)
!2663 = !DILocation(line: 781, column: 3, scope: !2598)
!2664 = distinct !DISubprogram(name: "first_dom_son", scope: !1, file: !1, line: 1418, type: !2499, scopeLine: 1419, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2665)
!2665 = !{!2666, !2667, !2668, !2669}
!2666 = !DILocalVariable(name: "dir", arg: 1, scope: !2664, file: !1, line: 1418, type: !3)
!2667 = !DILocalVariable(name: "bb", arg: 2, scope: !2664, file: !1, line: 1418, type: !389)
!2668 = !DILocalVariable(name: "dir_index", scope: !2664, file: !1, line: 1420, type: !5)
!2669 = !DILocalVariable(name: "son", scope: !2664, file: !1, line: 1421, type: !1400)
!2670 = !DILocation(line: 0, scope: !2664)
!2671 = !DILocation(line: 1420, column: 28, scope: !2664)
!2672 = !DILocation(line: 1421, column: 25, scope: !2664)
!2673 = !DILocation(line: 1421, column: 45, scope: !2664)
!2674 = !DILocation(line: 1423, column: 25, scope: !2664)
!2675 = !DILocation(line: 1423, column: 36, scope: !2664)
!2676 = !DILocation(line: 1423, column: 3, scope: !2664)
!2677 = distinct !DISubprogram(name: "next_dom_son", scope: !1, file: !1, line: 1430, type: !2499, scopeLine: 1431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2678)
!2678 = !{!2679, !2680, !2681, !2682}
!2679 = !DILocalVariable(name: "dir", arg: 1, scope: !2677, file: !1, line: 1430, type: !3)
!2680 = !DILocalVariable(name: "bb", arg: 2, scope: !2677, file: !1, line: 1430, type: !389)
!2681 = !DILocalVariable(name: "dir_index", scope: !2677, file: !1, line: 1432, type: !5)
!2682 = !DILocalVariable(name: "next", scope: !2677, file: !1, line: 1433, type: !1400)
!2683 = !DILocation(line: 0, scope: !2677)
!2684 = !DILocation(line: 1432, column: 28, scope: !2677)
!2685 = !DILocation(line: 1433, column: 26, scope: !2677)
!2686 = !DILocation(line: 1433, column: 46, scope: !2677)
!2687 = !DILocation(line: 1435, column: 31, scope: !2677)
!2688 = !DILocation(line: 1435, column: 39, scope: !2677)
!2689 = !DILocation(line: 1435, column: 43, scope: !2677)
!2690 = !DILocation(line: 1435, column: 25, scope: !2677)
!2691 = !DILocation(line: 1435, column: 66, scope: !2677)
!2692 = !DILocation(line: 1435, column: 3, scope: !2677)
!2693 = distinct !DISubprogram(name: "get_all_dominated_blocks", scope: !1, file: !1, line: 788, type: !2555, scopeLine: 789, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2694)
!2694 = !{!2695, !2696, !2697, !2698, !2699}
!2695 = !DILocalVariable(name: "dir", arg: 1, scope: !2693, file: !1, line: 788, type: !3)
!2696 = !DILocalVariable(name: "bb", arg: 2, scope: !2693, file: !1, line: 788, type: !389)
!2697 = !DILocalVariable(name: "bbs", scope: !2693, file: !1, line: 790, type: !1454)
!2698 = !DILocalVariable(name: "i", scope: !2693, file: !1, line: 791, type: !5)
!2699 = !DILocalVariable(name: "son", scope: !2700, file: !1, line: 798, type: !389)
!2700 = distinct !DILexicalBlock(scope: !2693, file: !1, line: 797, column: 5)
!2701 = !DILocation(line: 0, scope: !2693)
!2702 = !DILocation(line: 790, column: 3, scope: !2693)
!2703 = !DILocation(line: 790, column: 27, scope: !2693)
!2704 = !DILocation(line: 794, column: 3, scope: !2693)
!2705 = !DILocation(line: 796, column: 3, scope: !2693)
!2706 = !DILocation(line: 800, column: 12, scope: !2700)
!2707 = !DILocation(line: 801, column: 18, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2700, file: !1, line: 801, column: 7)
!2709 = !DILocation(line: 0, scope: !2700)
!2710 = !DILocation(line: 801, column: 12, scope: !2708)
!2711 = !DILocation(line: 0, scope: !2708)
!2712 = !DILocation(line: 801, column: 7, scope: !2708)
!2713 = !DILocation(line: 804, column: 2, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2708, file: !1, line: 801, column: 7)
!2715 = !DILocation(line: 803, column: 11, scope: !2714)
!2716 = !DILocation(line: 801, column: 7, scope: !2714)
!2717 = distinct !{!2717, !2712, !2718}
!2718 = !DILocation(line: 804, column: 2, scope: !2708)
!2719 = !DILocation(line: 806, column: 14, scope: !2693)
!2720 = !DILocation(line: 806, column: 12, scope: !2693)
!2721 = !DILocation(line: 805, column: 5, scope: !2700)
!2722 = distinct !{!2722, !2705, !2723}
!2723 = !DILocation(line: 806, column: 43, scope: !2693)
!2724 = !DILocation(line: 808, column: 10, scope: !2693)
!2725 = !DILocation(line: 809, column: 1, scope: !2693)
!2726 = !DILocation(line: 808, column: 3, scope: !2693)
!2727 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !4, file: !4, line: 281, type: !2728, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2732)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!389, !2730, !5}
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !801)
!2732 = !{!2733, !2734}
!2733 = !DILocalVariable(name: "vec_", arg: 1, scope: !2727, file: !4, line: 281, type: !2730)
!2734 = !DILocalVariable(name: "ix_", arg: 2, scope: !2727, file: !4, line: 281, type: !5)
!2735 = !DILocation(line: 0, scope: !2727)
!2736 = !DILocation(line: 281, column: 1, scope: !2727)
!2737 = distinct !DISubprogram(name: "VEC_basic_block_base_length", scope: !4, file: !4, line: 281, type: !2738, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!5, !2730}
!2740 = !{!2741}
!2741 = !DILocalVariable(name: "vec_", arg: 1, scope: !2737, file: !4, line: 281, type: !2730)
!2742 = !DILocation(line: 0, scope: !2737)
!2743 = !DILocation(line: 281, column: 1, scope: !2737)
!2744 = distinct !DISubprogram(name: "redirect_immediate_dominators", scope: !1, file: !1, line: 813, type: !2518, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2745)
!2745 = !{!2746, !2747, !2748, !2749, !2750, !2751, !2752}
!2746 = !DILocalVariable(name: "dir", arg: 1, scope: !2744, file: !1, line: 813, type: !3)
!2747 = !DILocalVariable(name: "bb", arg: 2, scope: !2744, file: !1, line: 813, type: !389)
!2748 = !DILocalVariable(name: "to", arg: 3, scope: !2744, file: !1, line: 814, type: !389)
!2749 = !DILocalVariable(name: "dir_index", scope: !2744, file: !1, line: 816, type: !5)
!2750 = !DILocalVariable(name: "bb_node", scope: !2744, file: !1, line: 817, type: !1400)
!2751 = !DILocalVariable(name: "to_node", scope: !2744, file: !1, line: 817, type: !1400)
!2752 = !DILocalVariable(name: "son", scope: !2744, file: !1, line: 817, type: !1400)
!2753 = !DILocation(line: 0, scope: !2744)
!2754 = !DILocation(line: 816, column: 28, scope: !2744)
!2755 = !DILocation(line: 819, column: 13, scope: !2744)
!2756 = !DILocation(line: 820, column: 13, scope: !2744)
!2757 = !DILocation(line: 822, column: 3, scope: !2744)
!2758 = !DILocation(line: 824, column: 17, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2744, file: !1, line: 824, column: 7)
!2760 = !DILocation(line: 824, column: 8, scope: !2759)
!2761 = !DILocation(line: 824, column: 7, scope: !2744)
!2762 = !DILocation(line: 827, column: 3, scope: !2744)
!2763 = !DILocation(line: 827, column: 19, scope: !2744)
!2764 = !DILocation(line: 831, column: 7, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2744, file: !1, line: 828, column: 5)
!2766 = !DILocation(line: 832, column: 7, scope: !2765)
!2767 = distinct !{!2767, !2762, !2768}
!2768 = !DILocation(line: 833, column: 5, scope: !2744)
!2769 = !DILocation(line: 835, column: 7, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2744, file: !1, line: 835, column: 7)
!2771 = !DILocation(line: 835, column: 31, scope: !2770)
!2772 = !DILocation(line: 835, column: 7, scope: !2744)
!2773 = !DILocation(line: 836, column: 29, scope: !2770)
!2774 = !DILocation(line: 836, column: 5, scope: !2770)
!2775 = !DILocation(line: 837, column: 1, scope: !2744)
!2776 = distinct !DISubprogram(name: "nearest_common_dominator", scope: !1, file: !1, line: 841, type: !2777, scopeLine: 842, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2779)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!389, !3, !389, !389}
!2779 = !{!2780, !2781, !2782, !2783}
!2780 = !DILocalVariable(name: "dir", arg: 1, scope: !2776, file: !1, line: 841, type: !3)
!2781 = !DILocalVariable(name: "bb1", arg: 2, scope: !2776, file: !1, line: 841, type: !389)
!2782 = !DILocalVariable(name: "bb2", arg: 3, scope: !2776, file: !1, line: 841, type: !389)
!2783 = !DILocalVariable(name: "dir_index", scope: !2776, file: !1, line: 843, type: !5)
!2784 = !DILocation(line: 0, scope: !2776)
!2785 = !DILocation(line: 843, column: 28, scope: !2776)
!2786 = !DILocation(line: 845, column: 3, scope: !2776)
!2787 = !DILocation(line: 847, column: 8, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2776, file: !1, line: 847, column: 7)
!2789 = !DILocation(line: 847, column: 7, scope: !2776)
!2790 = !DILocation(line: 849, column: 8, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2776, file: !1, line: 849, column: 7)
!2792 = !DILocation(line: 849, column: 7, scope: !2776)
!2793 = !DILocation(line: 852, column: 32, scope: !2776)
!2794 = !DILocation(line: 852, column: 53, scope: !2776)
!2795 = !DILocation(line: 852, column: 24, scope: !2776)
!2796 = !DILocation(line: 852, column: 75, scope: !2776)
!2797 = !DILocation(line: 852, column: 3, scope: !2776)
!2798 = !DILocation(line: 853, column: 1, scope: !2776)
!2799 = distinct !DISubprogram(name: "nearest_common_dominator_for_set", scope: !1, file: !1, line: 860, type: !2800, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2802)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!389, !3, !1441}
!2802 = !{!2803, !2804, !2805, !2806, !2807, !2815}
!2803 = !DILocalVariable(name: "dir", arg: 1, scope: !2799, file: !1, line: 860, type: !3)
!2804 = !DILocalVariable(name: "blocks", arg: 2, scope: !2799, file: !1, line: 860, type: !1441)
!2805 = !DILocalVariable(name: "i", scope: !2799, file: !1, line: 862, type: !5)
!2806 = !DILocalVariable(name: "first", scope: !2799, file: !1, line: 862, type: !5)
!2807 = !DILocalVariable(name: "bi", scope: !2799, file: !1, line: 863, type: !2808)
!2808 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !477, line: 218, baseType: !2809)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !477, line: 203, size: 256, elements: !2810)
!2810 = !{!2811, !2812, !2813, !2814}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !2809, file: !477, line: 206, baseType: !480, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !2809, file: !477, line: 209, baseType: !480, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !2809, file: !477, line: 212, baseType: !5, size: 32, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2809, file: !477, line: 217, baseType: !490, size: 64, offset: 192)
!2815 = !DILocalVariable(name: "dom", scope: !2799, file: !1, line: 864, type: !389)
!2816 = !DILocation(line: 0, scope: !2799)
!2817 = !DILocation(line: 862, column: 3, scope: !2799)
!2818 = !DILocation(line: 863, column: 3, scope: !2799)
!2819 = !DILocation(line: 866, column: 11, scope: !2799)
!2820 = !DILocation(line: 867, column: 9, scope: !2799)
!2821 = !DILocation(line: 868, column: 3, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2799, file: !1, line: 868, column: 3)
!2823 = !DILocation(line: 868, column: 3, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2822, file: !1, line: 868, column: 3)
!2825 = !DILocation(line: 869, column: 16, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2824, file: !1, line: 869, column: 9)
!2827 = !DILocation(line: 869, column: 13, scope: !2826)
!2828 = !DILocation(line: 869, column: 9, scope: !2824)
!2829 = !DILocation(line: 870, column: 49, scope: !2826)
!2830 = !DILocation(line: 870, column: 13, scope: !2826)
!2831 = !DILocation(line: 870, column: 7, scope: !2826)
!2832 = distinct !{!2832, !2821, !2833}
!2833 = !DILocation(line: 870, column: 64, scope: !2822)
!2834 = !DILocation(line: 873, column: 1, scope: !2799)
!2835 = !DILocation(line: 872, column: 3, scope: !2799)
!2836 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !477, file: !477, line: 224, type: !2837, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2843)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{null, !2839, !2840, !5, !1445}
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !390, line: 48, baseType: !2841)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!2843 = !{!2844, !2845, !2846, !2847}
!2844 = !DILocalVariable(name: "bi", arg: 1, scope: !2836, file: !477, line: 224, type: !2839)
!2845 = !DILocalVariable(name: "map", arg: 2, scope: !2836, file: !477, line: 224, type: !2840)
!2846 = !DILocalVariable(name: "start_bit", arg: 3, scope: !2836, file: !477, line: 225, type: !5)
!2847 = !DILocalVariable(name: "bit_no", arg: 4, scope: !2836, file: !477, line: 225, type: !1445)
!2848 = !DILocation(line: 0, scope: !2836)
!2849 = !DILocation(line: 227, column: 19, scope: !2836)
!2850 = !DILocation(line: 227, column: 12, scope: !2836)
!2851 = !DILocation(line: 228, column: 7, scope: !2836)
!2852 = !DILocation(line: 228, column: 12, scope: !2836)
!2853 = !DILocation(line: 0, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !477, line: 233, column: 11)
!2855 = distinct !DILexicalBlock(scope: !2836, file: !477, line: 232, column: 5)
!2856 = !DILocation(line: 231, column: 3, scope: !2836)
!2857 = !DILocation(line: 233, column: 12, scope: !2854)
!2858 = !DILocation(line: 233, column: 11, scope: !2855)
!2859 = !DILocation(line: 235, column: 13, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2854, file: !477, line: 234, column: 2)
!2861 = !DILocation(line: 236, column: 4, scope: !2860)
!2862 = !DILocation(line: 239, column: 11, scope: !2855)
!2863 = distinct !{!2863, !2856, !2864}
!2864 = !DILocation(line: 242, column: 5, scope: !2836)
!2865 = !DILocation(line: 245, column: 11, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2836, file: !477, line: 245, column: 7)
!2867 = !DILocation(line: 245, column: 17, scope: !2866)
!2868 = !DILocation(line: 245, column: 22, scope: !2866)
!2869 = !DILocation(line: 245, column: 7, scope: !2836)
!2870 = !DILocation(line: 246, column: 27, scope: !2866)
!2871 = !DILocation(line: 246, column: 32, scope: !2866)
!2872 = !DILocation(line: 246, column: 5, scope: !2866)
!2873 = !DILocation(line: 249, column: 7, scope: !2836)
!2874 = !DILocation(line: 249, column: 15, scope: !2836)
!2875 = !DILocation(line: 250, column: 14, scope: !2836)
!2876 = !DILocation(line: 251, column: 7, scope: !2836)
!2877 = !DILocation(line: 251, column: 12, scope: !2836)
!2878 = !DILocation(line: 257, column: 16, scope: !2836)
!2879 = !DILocation(line: 257, column: 13, scope: !2836)
!2880 = !DILocation(line: 259, column: 11, scope: !2836)
!2881 = !DILocation(line: 260, column: 1, scope: !2836)
!2882 = distinct !DISubprogram(name: "bmp_iter_set", scope: !477, file: !477, line: 393, type: !2883, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!381, !2839, !1445}
!2885 = !{!2886, !2887, !2888}
!2886 = !DILocalVariable(name: "bi", arg: 1, scope: !2882, file: !477, line: 393, type: !2839)
!2887 = !DILocalVariable(name: "bit_no", arg: 2, scope: !2882, file: !477, line: 393, type: !1445)
!2888 = !DILabel(scope: !2889, name: "next_bit", file: !477, line: 398)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !477, line: 397, column: 5)
!2890 = distinct !DILexicalBlock(scope: !2882, file: !477, line: 396, column: 7)
!2891 = !DILocation(line: 0, scope: !2882)
!2892 = !DILocation(line: 396, column: 11, scope: !2890)
!2893 = !DILocation(line: 396, column: 7, scope: !2890)
!2894 = !DILocation(line: 396, column: 7, scope: !2882)
!2895 = !DILocation(line: 419, column: 15, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !477, line: 418, column: 2)
!2897 = distinct !DILexicalBlock(scope: !2882, file: !477, line: 415, column: 5)
!2898 = !DILocation(line: 399, column: 7, scope: !2889)
!2899 = !DILocation(line: 398, column: 5, scope: !2889)
!2900 = !DILocation(line: 399, column: 20, scope: !2889)
!2901 = !DILocation(line: 399, column: 25, scope: !2889)
!2902 = !DILocation(line: 399, column: 14, scope: !2889)
!2903 = !DILocation(line: 401, column: 13, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2889, file: !477, line: 400, column: 2)
!2905 = !DILocation(line: 402, column: 12, scope: !2904)
!2906 = distinct !{!2906, !2898, !2907}
!2907 = !DILocation(line: 403, column: 2, scope: !2889)
!2908 = !DILocation(line: 410, column: 15, scope: !2882)
!2909 = !DILocation(line: 410, column: 42, scope: !2882)
!2910 = !DILocation(line: 411, column: 26, scope: !2882)
!2911 = !DILocation(line: 410, column: 11, scope: !2882)
!2912 = !DILocation(line: 412, column: 7, scope: !2882)
!2913 = !DILocation(line: 412, column: 14, scope: !2882)
!2914 = !DILocation(line: 0, scope: !2897)
!2915 = !DILocation(line: 414, column: 3, scope: !2882)
!2916 = !DILocation(line: 417, column: 7, scope: !2897)
!2917 = !DILocation(line: 417, column: 18, scope: !2897)
!2918 = !DILocation(line: 417, column: 26, scope: !2897)
!2919 = !DILocation(line: 419, column: 13, scope: !2896)
!2920 = !DILocation(line: 420, column: 8, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2896, file: !477, line: 420, column: 8)
!2922 = !DILocation(line: 420, column: 8, scope: !2896)
!2923 = !DILocation(line: 422, column: 12, scope: !2896)
!2924 = !DILocation(line: 423, column: 15, scope: !2896)
!2925 = distinct !{!2925, !2916, !2926}
!2926 = !DILocation(line: 424, column: 2, scope: !2897)
!2927 = !DILocation(line: 427, column: 28, scope: !2897)
!2928 = !DILocation(line: 427, column: 16, scope: !2897)
!2929 = !DILocation(line: 428, column: 12, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2897, file: !477, line: 428, column: 11)
!2931 = !DILocation(line: 428, column: 11, scope: !2897)
!2932 = !DILocation(line: 430, column: 27, scope: !2897)
!2933 = !DILocation(line: 430, column: 32, scope: !2897)
!2934 = !DILocation(line: 430, column: 15, scope: !2897)
!2935 = !DILocation(line: 431, column: 19, scope: !2897)
!2936 = distinct !{!2936, !2915, !2937}
!2937 = !DILocation(line: 432, column: 5, scope: !2882)
!2938 = !DILocation(line: 433, column: 1, scope: !2882)
!2939 = distinct !DISubprogram(name: "bmp_iter_next", scope: !477, file: !477, line: 382, type: !2940, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{null, !2839, !1445}
!2942 = !{!2943, !2944}
!2943 = !DILocalVariable(name: "bi", arg: 1, scope: !2939, file: !477, line: 382, type: !2839)
!2944 = !DILocalVariable(name: "bit_no", arg: 2, scope: !2939, file: !477, line: 382, type: !1445)
!2945 = !DILocation(line: 0, scope: !2939)
!2946 = !DILocation(line: 384, column: 7, scope: !2939)
!2947 = !DILocation(line: 384, column: 12, scope: !2939)
!2948 = !DILocation(line: 385, column: 11, scope: !2939)
!2949 = !DILocation(line: 386, column: 1, scope: !2939)
!2950 = distinct !DISubprogram(name: "dominated_by_p", scope: !1, file: !1, line: 952, type: !2951, scopeLine: 953, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2956)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!381, !3, !2953, !2953}
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !390, line: 112, baseType: !2954)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!2956 = !{!2957, !2958, !2959, !2960, !2961, !2962}
!2957 = !DILocalVariable(name: "dir", arg: 1, scope: !2950, file: !1, line: 952, type: !3)
!2958 = !DILocalVariable(name: "bb1", arg: 2, scope: !2950, file: !1, line: 952, type: !2953)
!2959 = !DILocalVariable(name: "bb2", arg: 3, scope: !2950, file: !1, line: 952, type: !2953)
!2960 = !DILocalVariable(name: "dir_index", scope: !2950, file: !1, line: 954, type: !5)
!2961 = !DILocalVariable(name: "n1", scope: !2950, file: !1, line: 955, type: !1400)
!2962 = !DILocalVariable(name: "n2", scope: !2950, file: !1, line: 955, type: !1400)
!2963 = !DILocation(line: 0, scope: !2950)
!2964 = !DILocation(line: 954, column: 28, scope: !2950)
!2965 = !DILocation(line: 955, column: 24, scope: !2950)
!2966 = !DILocation(line: 955, column: 51, scope: !2950)
!2967 = !DILocation(line: 957, column: 3, scope: !2950)
!2968 = !DILocation(line: 959, column: 7, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2950, file: !1, line: 959, column: 7)
!2970 = !DILocation(line: 0, scope: !2969)
!2971 = !DILocation(line: 959, column: 31, scope: !2969)
!2972 = !DILocation(line: 959, column: 7, scope: !2950)
!2973 = !DILocation(line: 960, column: 17, scope: !2969)
!2974 = !DILocation(line: 960, column: 35, scope: !2969)
!2975 = !DILocation(line: 960, column: 28, scope: !2969)
!2976 = !DILocation(line: 961, column: 8, scope: !2969)
!2977 = !DILocation(line: 961, column: 15, scope: !2969)
!2978 = !DILocation(line: 961, column: 34, scope: !2969)
!2979 = !DILocation(line: 961, column: 27, scope: !2969)
!2980 = !DILocation(line: 960, column: 5, scope: !2969)
!2981 = !DILocation(line: 963, column: 10, scope: !2950)
!2982 = !DILocation(line: 963, column: 3, scope: !2950)
!2983 = !DILocation(line: 964, column: 1, scope: !2950)
!2984 = distinct !DISubprogram(name: "bb_dom_dfs_in", scope: !1, file: !1, line: 969, type: !2985, scopeLine: 970, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!5, !3, !389}
!2987 = !{!2988, !2989, !2990, !2991}
!2988 = !DILocalVariable(name: "dir", arg: 1, scope: !2984, file: !1, line: 969, type: !3)
!2989 = !DILocalVariable(name: "bb", arg: 2, scope: !2984, file: !1, line: 969, type: !389)
!2990 = !DILocalVariable(name: "dir_index", scope: !2984, file: !1, line: 971, type: !5)
!2991 = !DILocalVariable(name: "n", scope: !2984, file: !1, line: 972, type: !1400)
!2992 = !DILocation(line: 0, scope: !2984)
!2993 = !DILocation(line: 971, column: 28, scope: !2984)
!2994 = !DILocation(line: 972, column: 23, scope: !2984)
!2995 = !DILocation(line: 974, column: 3, scope: !2984)
!2996 = !DILocation(line: 975, column: 13, scope: !2984)
!2997 = !DILocation(line: 975, column: 3, scope: !2984)
!2998 = distinct !DISubprogram(name: "bb_dom_dfs_out", scope: !1, file: !1, line: 981, type: !2985, scopeLine: 982, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2999)
!2999 = !{!3000, !3001, !3002, !3003}
!3000 = !DILocalVariable(name: "dir", arg: 1, scope: !2998, file: !1, line: 981, type: !3)
!3001 = !DILocalVariable(name: "bb", arg: 2, scope: !2998, file: !1, line: 981, type: !389)
!3002 = !DILocalVariable(name: "dir_index", scope: !2998, file: !1, line: 983, type: !5)
!3003 = !DILocalVariable(name: "n", scope: !2998, file: !1, line: 984, type: !1400)
!3004 = !DILocation(line: 0, scope: !2998)
!3005 = !DILocation(line: 983, column: 28, scope: !2998)
!3006 = !DILocation(line: 984, column: 23, scope: !2998)
!3007 = !DILocation(line: 986, column: 3, scope: !2998)
!3008 = !DILocation(line: 987, column: 13, scope: !2998)
!3009 = !DILocation(line: 987, column: 3, scope: !2998)
!3010 = distinct !DISubprogram(name: "verify_dominators", scope: !1, file: !1, line: 992, type: !1924, scopeLine: 993, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3011)
!3011 = !{!3012, !3013, !3014, !3015, !3016, !3017, !3018}
!3012 = !DILocalVariable(name: "dir", arg: 1, scope: !3010, file: !1, line: 992, type: !3)
!3013 = !DILocalVariable(name: "err", scope: !3010, file: !1, line: 994, type: !382)
!3014 = !DILocalVariable(name: "bb", scope: !3010, file: !1, line: 995, type: !389)
!3015 = !DILocalVariable(name: "imm_bb", scope: !3010, file: !1, line: 995, type: !389)
!3016 = !DILocalVariable(name: "imm_bb_correct", scope: !3010, file: !1, line: 995, type: !389)
!3017 = !DILocalVariable(name: "di", scope: !3010, file: !1, line: 996, type: !1929)
!3018 = !DILocalVariable(name: "reverse", scope: !3010, file: !1, line: 997, type: !381)
!3019 = !DILocation(line: 0, scope: !3010)
!3020 = !DILocation(line: 996, column: 3, scope: !3010)
!3021 = !DILocation(line: 997, column: 23, scope: !3010)
!3022 = !DILocation(line: 997, column: 18, scope: !3010)
!3023 = !DILocation(line: 999, column: 3, scope: !3010)
!3024 = !DILocation(line: 1001, column: 3, scope: !3010)
!3025 = !DILocation(line: 1002, column: 3, scope: !3010)
!3026 = !DILocation(line: 1003, column: 3, scope: !3010)
!3027 = !DILocation(line: 1005, column: 3, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3010, file: !1, line: 1005, column: 3)
!3029 = !DILocation(line: 0, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !1, line: 1006, column: 5)
!3031 = distinct !DILexicalBlock(scope: !3028, file: !1, line: 1005, column: 3)
!3032 = !DILocation(line: 1005, column: 3, scope: !3031)
!3033 = !DILocation(line: 0, scope: !3028)
!3034 = !DILocation(line: 1007, column: 16, scope: !3030)
!3035 = !DILocation(line: 1008, column: 12, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3030, file: !1, line: 1008, column: 11)
!3037 = !DILocation(line: 1008, column: 11, scope: !3030)
!3038 = !DILocation(line: 1010, column: 49, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3036, file: !1, line: 1009, column: 2)
!3040 = !DILocation(line: 1010, column: 4, scope: !3039)
!3041 = !DILocation(line: 1012, column: 2, scope: !3039)
!3042 = !DILocation(line: 1014, column: 27, scope: !3030)
!3043 = !DILocation(line: 1014, column: 40, scope: !3030)
!3044 = !DILocation(line: 1014, column: 47, scope: !3030)
!3045 = !DILocation(line: 1014, column: 61, scope: !3030)
!3046 = !DILocation(line: 1014, column: 44, scope: !3030)
!3047 = !DILocation(line: 1014, column: 37, scope: !3030)
!3048 = !DILocation(line: 1014, column: 24, scope: !3030)
!3049 = !DILocation(line: 1015, column: 18, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3030, file: !1, line: 1015, column: 11)
!3051 = !DILocation(line: 1015, column: 11, scope: !3030)
!3052 = !DILocation(line: 1018, column: 31, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3050, file: !1, line: 1016, column: 2)
!3054 = !DILocation(line: 1018, column: 46, scope: !3053)
!3055 = !DILocation(line: 1017, column: 4, scope: !3053)
!3056 = !DILocation(line: 1020, column: 2, scope: !3053)
!3057 = !DILocation(line: 0, scope: !3031)
!3058 = distinct !{!3058, !3027, !3059}
!3059 = !DILocation(line: 1021, column: 5, scope: !3028)
!3060 = !DILocation(line: 1023, column: 3, scope: !3010)
!3061 = !DILocation(line: 1024, column: 3, scope: !3010)
!3062 = !DILocation(line: 1025, column: 1, scope: !3010)
!3063 = distinct !DISubprogram(name: "recompute_dominator", scope: !1, file: !1, line: 1033, type: !2499, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3064)
!3064 = !{!3065, !3066, !3067, !3068, !3069, !3070}
!3065 = !DILocalVariable(name: "dir", arg: 1, scope: !3063, file: !1, line: 1033, type: !3)
!3066 = !DILocalVariable(name: "bb", arg: 2, scope: !3063, file: !1, line: 1033, type: !389)
!3067 = !DILocalVariable(name: "dir_index", scope: !3063, file: !1, line: 1035, type: !5)
!3068 = !DILocalVariable(name: "dom_bb", scope: !3063, file: !1, line: 1036, type: !389)
!3069 = !DILocalVariable(name: "e", scope: !3063, file: !1, line: 1037, type: !407)
!3070 = !DILocalVariable(name: "ei", scope: !3063, file: !1, line: 1038, type: !1448)
!3071 = !DILocation(line: 0, scope: !3063)
!3072 = !DILocation(line: 1035, column: 28, scope: !3063)
!3073 = !DILocation(line: 1037, column: 3, scope: !3063)
!3074 = !DILocation(line: 1038, column: 3, scope: !3063)
!3075 = !DILocation(line: 1040, column: 3, scope: !3063)
!3076 = !DILocation(line: 1042, column: 11, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3063, file: !1, line: 1042, column: 7)
!3078 = !DILocation(line: 1042, column: 7, scope: !3063)
!3079 = !DILocation(line: 1044, column: 7, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !1, line: 1044, column: 7)
!3081 = distinct !DILexicalBlock(scope: !3077, file: !1, line: 1043, column: 5)
!3082 = !DILocation(line: 0, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3080, file: !1, line: 1044, column: 7)
!3084 = !DILocation(line: 1036, column: 15, scope: !3063)
!3085 = !DILocation(line: 1044, column: 7, scope: !3083)
!3086 = !DILocation(line: 1046, column: 30, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !1, line: 1046, column: 8)
!3088 = distinct !DILexicalBlock(scope: !3083, file: !1, line: 1045, column: 2)
!3089 = !DILocation(line: 1046, column: 33, scope: !3087)
!3090 = !DILocation(line: 1046, column: 9, scope: !3087)
!3091 = !DILocation(line: 1046, column: 8, scope: !3088)
!3092 = !DILocation(line: 1047, column: 54, scope: !3087)
!3093 = !DILocation(line: 1047, column: 57, scope: !3087)
!3094 = !DILocation(line: 1047, column: 15, scope: !3087)
!3095 = !DILocation(line: 1047, column: 6, scope: !3087)
!3096 = distinct !{!3096, !3079, !3097}
!3097 = !DILocation(line: 1048, column: 2, scope: !3080)
!3098 = !DILocation(line: 1052, column: 7, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !1, line: 1052, column: 7)
!3100 = distinct !DILexicalBlock(scope: !3077, file: !1, line: 1051, column: 5)
!3101 = !DILocation(line: 0, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3099, file: !1, line: 1052, column: 7)
!3103 = !DILocation(line: 1052, column: 7, scope: !3102)
!3104 = !DILocation(line: 1054, column: 30, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !1, line: 1054, column: 8)
!3106 = distinct !DILexicalBlock(scope: !3102, file: !1, line: 1053, column: 2)
!3107 = !DILocation(line: 1054, column: 33, scope: !3105)
!3108 = !DILocation(line: 1054, column: 9, scope: !3105)
!3109 = !DILocation(line: 1054, column: 8, scope: !3106)
!3110 = !DILocation(line: 1055, column: 54, scope: !3105)
!3111 = !DILocation(line: 1055, column: 57, scope: !3105)
!3112 = !DILocation(line: 1055, column: 15, scope: !3105)
!3113 = !DILocation(line: 1055, column: 6, scope: !3105)
!3114 = distinct !{!3114, !3098, !3115}
!3115 = !DILocation(line: 1056, column: 2, scope: !3099)
!3116 = !DILocation(line: 1060, column: 1, scope: !3063)
!3117 = !DILocation(line: 1059, column: 3, scope: !3063)
!3118 = distinct !DISubprogram(name: "ei_start_1", scope: !4, file: !4, line: 696, type: !3119, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3121)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!1448, !1453}
!3121 = !{!3122, !3123}
!3122 = !DILocalVariable(name: "ev", arg: 1, scope: !3118, file: !4, line: 696, type: !1453)
!3123 = !DILocalVariable(name: "i", scope: !3118, file: !4, line: 698, type: !1448)
!3124 = !DILocation(line: 0, scope: !3118)
!3125 = !DILocation(line: 700, column: 5, scope: !3118)
!3126 = !DILocation(line: 700, column: 11, scope: !3118)
!3127 = !DILocation(line: 701, column: 5, scope: !3118)
!3128 = !DILocation(line: 701, column: 15, scope: !3118)
!3129 = !DILocation(line: 703, column: 3, scope: !3118)
!3130 = distinct !DISubprogram(name: "ei_cond", scope: !4, file: !4, line: 771, type: !3131, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3134)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!381, !1448, !3133}
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!3134 = !{!3135, !3136}
!3135 = !DILocalVariable(name: "ei", arg: 1, scope: !3130, file: !4, line: 771, type: !1448)
!3136 = !DILocalVariable(name: "p", arg: 2, scope: !3130, file: !4, line: 771, type: !3133)
!3137 = !DILocation(line: 0, scope: !3130)
!3138 = !DILocation(line: 773, column: 8, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3130, file: !4, line: 773, column: 7)
!3140 = !DILocation(line: 773, column: 7, scope: !3130)
!3141 = !DILocation(line: 775, column: 12, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3139, file: !4, line: 774, column: 5)
!3143 = !DILocation(line: 776, column: 7, scope: !3142)
!3144 = !DILocation(line: 781, column: 7, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3139, file: !4, line: 779, column: 5)
!3146 = !DILocation(line: 0, scope: !3139)
!3147 = !DILocation(line: 783, column: 1, scope: !3130)
!3148 = distinct !DISubprogram(name: "ei_next", scope: !4, file: !4, line: 736, type: !3149, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{null, !1447}
!3151 = !{!3152}
!3152 = !DILocalVariable(name: "i", arg: 1, scope: !3148, file: !4, line: 736, type: !1447)
!3153 = !DILocation(line: 0, scope: !3148)
!3154 = !DILocation(line: 738, column: 3, scope: !3148)
!3155 = !DILocation(line: 739, column: 11, scope: !3148)
!3156 = !DILocation(line: 740, column: 1, scope: !3148)
!3157 = distinct !DISubprogram(name: "iterate_fix_dominators", scope: !1, file: !1, line: 1219, type: !3158, scopeLine: 1221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3160)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{null, !3, !1454, !381}
!3160 = !{!3161, !3162, !3163, !3164, !3165, !3166, !3167, !3191, !3192, !3193, !3194, !3195, !3196, !3200, !3201, !3202, !3203}
!3161 = !DILocalVariable(name: "dir", arg: 1, scope: !3157, file: !1, line: 1219, type: !3)
!3162 = !DILocalVariable(name: "bbs", arg: 2, scope: !3157, file: !1, line: 1219, type: !1454)
!3163 = !DILocalVariable(name: "conservative", arg: 3, scope: !3157, file: !1, line: 1220, type: !381)
!3164 = !DILocalVariable(name: "i", scope: !3157, file: !1, line: 1222, type: !5)
!3165 = !DILocalVariable(name: "bb", scope: !3157, file: !1, line: 1223, type: !389)
!3166 = !DILocalVariable(name: "dom", scope: !3157, file: !1, line: 1223, type: !389)
!3167 = !DILocalVariable(name: "g", scope: !3157, file: !1, line: 1224, type: !3168)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "graph", file: !3170, line: 45, size: 192, elements: !3171)
!3170 = !DIFile(filename: "./graphds.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3171 = !{!3172, !3173, !3190}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "n_vertices", scope: !3169, file: !3170, line: 47, baseType: !382, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "vertices", scope: !3169, file: !3170, line: 48, baseType: !3174, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vertex", file: !3170, line: 33, size: 256, elements: !3176)
!3176 = !{!3177, !3186, !3187, !3188, !3189}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !3175, file: !3170, line: 35, baseType: !3178, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "graph_edge", file: !3170, line: 23, size: 256, elements: !3180)
!3180 = !{!3181, !3182, !3183, !3184, !3185}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3179, file: !3170, line: 25, baseType: !382, size: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !3179, file: !3170, line: 25, baseType: !382, size: 32, offset: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "pred_next", scope: !3179, file: !3170, line: 26, baseType: !3178, size: 64, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "succ_next", scope: !3179, file: !3170, line: 26, baseType: !3178, size: 64, offset: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3179, file: !3170, line: 28, baseType: !386, size: 64, offset: 192)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "succ", scope: !3175, file: !3170, line: 35, baseType: !3178, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "component", scope: !3175, file: !3170, line: 37, baseType: !382, size: 32, offset: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !3175, file: !3170, line: 39, baseType: !382, size: 32, offset: 160)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3175, file: !3170, line: 40, baseType: !386, size: 64, offset: 192)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !3169, file: !3170, line: 50, baseType: !827, size: 64, offset: 128)
!3191 = !DILocalVariable(name: "n", scope: !3157, file: !1, line: 1225, type: !382)
!3192 = !DILocalVariable(name: "y", scope: !3157, file: !1, line: 1225, type: !382)
!3193 = !DILocalVariable(name: "dom_i", scope: !3157, file: !1, line: 1226, type: !853)
!3194 = !DILocalVariable(name: "e", scope: !3157, file: !1, line: 1227, type: !407)
!3195 = !DILocalVariable(name: "ei", scope: !3157, file: !1, line: 1228, type: !1448)
!3196 = !DILocalVariable(name: "map", scope: !3157, file: !1, line: 1229, type: !3197)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !3199, line: 33, flags: DIFlagFwdDecl)
!3199 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3200 = !DILocalVariable(name: "parent", scope: !3157, file: !1, line: 1230, type: !1442)
!3201 = !DILocalVariable(name: "son", scope: !3157, file: !1, line: 1230, type: !1442)
!3202 = !DILocalVariable(name: "brother", scope: !3157, file: !1, line: 1230, type: !1442)
!3203 = !DILocalVariable(name: "dir_index", scope: !3157, file: !1, line: 1231, type: !5)
!3204 = !DILocation(line: 0, scope: !3157)
!3205 = !DILocation(line: 1223, column: 3, scope: !3157)
!3206 = !DILocation(line: 1227, column: 3, scope: !3157)
!3207 = !DILocation(line: 1228, column: 3, scope: !3157)
!3208 = !DILocation(line: 1231, column: 28, scope: !3157)
!3209 = !DILocation(line: 1240, column: 3, scope: !3157)
!3210 = !DILocation(line: 1241, column: 3, scope: !3157)
!3211 = !DILocation(line: 1293, column: 8, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3157, file: !1, line: 1293, column: 7)
!3213 = !DILocation(line: 1293, column: 7, scope: !3157)
!3214 = !DILocation(line: 0, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !1, line: 1299, column: 7)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !1, line: 1299, column: 7)
!3217 = distinct !DILexicalBlock(scope: !3212, file: !1, line: 1294, column: 5)
!3218 = !DILocation(line: 1299, column: 7, scope: !3216)
!3219 = !DILocation(line: 0, scope: !3216)
!3220 = !DILocation(line: 1299, column: 19, scope: !3215)
!3221 = !DILocation(line: 1300, column: 43, scope: !3215)
!3222 = !DILocation(line: 1300, column: 2, scope: !3215)
!3223 = !DILocation(line: 1299, column: 59, scope: !3215)
!3224 = !DILocation(line: 1299, column: 7, scope: !3215)
!3225 = distinct !{!3225, !3218, !3226}
!3226 = !DILocation(line: 1300, column: 51, scope: !3216)
!3227 = !DILocation(line: 1303, column: 3, scope: !3157)
!3228 = !DILocation(line: 1304, column: 7, scope: !3157)
!3229 = !DILocation(line: 1306, column: 7, scope: !3157)
!3230 = !DILocation(line: 1311, column: 12, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !1, line: 1310, column: 5)
!3232 = distinct !DILexicalBlock(scope: !3157, file: !1, line: 1309, column: 7)
!3233 = !DILocation(line: 1311, column: 10, scope: !3231)
!3234 = !DILocation(line: 1313, column: 11, scope: !3231)
!3235 = !DILocation(line: 1312, column: 7, scope: !3231)
!3236 = !DILocation(line: 1314, column: 7, scope: !3231)
!3237 = !DILocation(line: 1318, column: 9, scope: !3157)
!3238 = !DILocation(line: 0, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !1, line: 1320, column: 5)
!3240 = distinct !DILexicalBlock(scope: !3241, file: !1, line: 1319, column: 3)
!3241 = distinct !DILexicalBlock(scope: !3157, file: !1, line: 1319, column: 3)
!3242 = !DILocation(line: 1319, column: 8, scope: !3241)
!3243 = !DILocation(line: 0, scope: !3241)
!3244 = !DILocation(line: 1319, column: 15, scope: !3240)
!3245 = !DILocation(line: 1319, column: 3, scope: !3241)
!3246 = !DILocation(line: 1324, column: 48, scope: !3239)
!3247 = !DILocation(line: 1324, column: 39, scope: !3239)
!3248 = !DILocation(line: 1324, column: 33, scope: !3239)
!3249 = !DILocation(line: 1324, column: 8, scope: !3239)
!3250 = !DILocation(line: 1324, column: 37, scope: !3239)
!3251 = !DILocation(line: 1319, column: 55, scope: !3240)
!3252 = !DILocation(line: 1319, column: 3, scope: !3240)
!3253 = distinct !{!3253, !3245, !3254}
!3254 = !DILocation(line: 1325, column: 5, scope: !3241)
!3255 = !DILocation(line: 1326, column: 57, scope: !3157)
!3256 = !DILocation(line: 1323, column: 43, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3239, file: !1, line: 1322, column: 11)
!3258 = !DILocation(line: 1323, column: 2, scope: !3257)
!3259 = !DILocation(line: 1326, column: 48, scope: !3157)
!3260 = !DILocation(line: 1326, column: 29, scope: !3157)
!3261 = !DILocation(line: 1326, column: 4, scope: !3157)
!3262 = !DILocation(line: 1326, column: 46, scope: !3157)
!3263 = !DILocation(line: 1328, column: 20, scope: !3157)
!3264 = !DILocation(line: 1328, column: 7, scope: !3157)
!3265 = !DILocation(line: 0, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !1, line: 1329, column: 3)
!3267 = distinct !DILexicalBlock(scope: !3157, file: !1, line: 1329, column: 3)
!3268 = !DILocation(line: 1329, column: 8, scope: !3267)
!3269 = !DILocation(line: 0, scope: !3267)
!3270 = !DILocation(line: 1329, column: 22, scope: !3266)
!3271 = !DILocation(line: 1329, column: 17, scope: !3266)
!3272 = !DILocation(line: 1329, column: 3, scope: !3267)
!3273 = !DILocation(line: 0, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !1, line: 1333, column: 7)
!3275 = distinct !DILexicalBlock(scope: !3276, file: !1, line: 1332, column: 5)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !1, line: 1331, column: 3)
!3277 = distinct !DILexicalBlock(scope: !3157, file: !1, line: 1331, column: 3)
!3278 = !DILocation(line: 0, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3274, file: !1, line: 1333, column: 7)
!3280 = !DILocation(line: 1331, column: 3, scope: !3277)
!3281 = !DILocation(line: 1330, column: 27, scope: !3266)
!3282 = !DILocation(line: 1330, column: 8, scope: !3266)
!3283 = !DILocation(line: 1330, column: 20, scope: !3266)
!3284 = !DILocation(line: 1330, column: 25, scope: !3266)
!3285 = !DILocation(line: 1329, column: 35, scope: !3266)
!3286 = !DILocation(line: 1329, column: 3, scope: !3266)
!3287 = distinct !{!3287, !3272, !3288}
!3288 = !DILocation(line: 1330, column: 27, scope: !3267)
!3289 = !DILocation(line: 0, scope: !3277)
!3290 = !DILocation(line: 1331, column: 15, scope: !3276)
!3291 = !DILocation(line: 1349, column: 3, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3157, file: !1, line: 1349, column: 3)
!3293 = !DILocation(line: 1333, column: 7, scope: !3274)
!3294 = !DILocation(line: 1333, column: 7, scope: !3279)
!3295 = !DILocation(line: 1335, column: 44, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3279, file: !1, line: 1334, column: 2)
!3297 = !DILocation(line: 1335, column: 47, scope: !3296)
!3298 = !DILocation(line: 1335, column: 10, scope: !3296)
!3299 = !DILocation(line: 1336, column: 15, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3296, file: !1, line: 1336, column: 8)
!3301 = !DILocation(line: 1336, column: 12, scope: !3300)
!3302 = !DILocation(line: 1336, column: 8, scope: !3296)
!3303 = !DILocation(line: 1339, column: 49, scope: !3296)
!3304 = !DILocation(line: 1339, column: 22, scope: !3296)
!3305 = !DILocation(line: 1339, column: 21, scope: !3296)
!3306 = !DILocation(line: 1342, column: 34, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3296, file: !1, line: 1342, column: 8)
!3308 = !DILocation(line: 1342, column: 50, scope: !3307)
!3309 = !DILocation(line: 1342, column: 8, scope: !3307)
!3310 = !DILocation(line: 1342, column: 8, scope: !3296)
!3311 = !DILocation(line: 1345, column: 32, scope: !3296)
!3312 = !DILocation(line: 1345, column: 48, scope: !3296)
!3313 = !DILocation(line: 1345, column: 4, scope: !3296)
!3314 = !DILocation(line: 1346, column: 17, scope: !3296)
!3315 = !DILocation(line: 1346, column: 4, scope: !3296)
!3316 = !DILocation(line: 1347, column: 2, scope: !3296)
!3317 = distinct !{!3317, !3293, !3318}
!3318 = !DILocation(line: 1347, column: 2, scope: !3274)
!3319 = !DILocation(line: 1331, column: 55, scope: !3276)
!3320 = !DILocation(line: 1331, column: 3, scope: !3276)
!3321 = distinct !{!3321, !3280, !3322}
!3322 = !DILocation(line: 1348, column: 5, scope: !3277)
!3323 = !DILocation(line: 0, scope: !3292)
!3324 = !DILocation(line: 1349, column: 22, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3292, file: !1, line: 1349, column: 3)
!3326 = !DILocation(line: 1349, column: 17, scope: !3325)
!3327 = !DILocation(line: 1350, column: 5, scope: !3325)
!3328 = !DILocation(line: 1349, column: 35, scope: !3325)
!3329 = !DILocation(line: 1349, column: 3, scope: !3325)
!3330 = distinct !{!3330, !3291, !3331}
!3331 = !DILocation(line: 1350, column: 5, scope: !3292)
!3332 = !DILocation(line: 1351, column: 3, scope: !3157)
!3333 = !DILocation(line: 1354, column: 9, scope: !3157)
!3334 = !DILocation(line: 1355, column: 13, scope: !3157)
!3335 = !DILocation(line: 1356, column: 12, scope: !3157)
!3336 = !DILocation(line: 1357, column: 3, scope: !3157)
!3337 = !DILocation(line: 1360, column: 8, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3157, file: !1, line: 1360, column: 3)
!3339 = !DILocation(line: 0, scope: !3338)
!3340 = !DILocation(line: 1360, column: 15, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3338, file: !1, line: 1360, column: 3)
!3342 = !DILocation(line: 1360, column: 22, scope: !3341)
!3343 = !DILocation(line: 1360, column: 3, scope: !3338)
!3344 = !DILocation(line: 1362, column: 3, scope: !3157)
!3345 = !DILocation(line: 1360, column: 3, scope: !3341)
!3346 = distinct !{!3346, !3343, !3347}
!3347 = !DILocation(line: 1361, column: 5, scope: !3338)
!3348 = !DILocation(line: 1362, column: 12, scope: !3157)
!3349 = !DILocation(line: 1364, column: 7, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3157, file: !1, line: 1363, column: 5)
!3351 = !DILocation(line: 1366, column: 11, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3350, file: !1, line: 1366, column: 11)
!3353 = !DILocation(line: 1366, column: 22, scope: !3352)
!3354 = !DILocation(line: 1366, column: 11, scope: !3350)
!3355 = !DILocation(line: 1369, column: 4, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3352, file: !1, line: 1367, column: 2)
!3357 = !DILocation(line: 0, scope: !3356)
!3358 = !DILocation(line: 1369, column: 11, scope: !3356)
!3359 = !DILocation(line: 1369, column: 18, scope: !3356)
!3360 = distinct !{!3360, !3355, !3361}
!3361 = !DILocation(line: 1370, column: 15, scope: !3356)
!3362 = !DILocation(line: 1373, column: 6, scope: !3352)
!3363 = !DILocation(line: 0, scope: !3352)
!3364 = distinct !{!3364, !3344, !3365}
!3365 = !DILocation(line: 1374, column: 5, scope: !3157)
!3366 = !DILocation(line: 1376, column: 3, scope: !3157)
!3367 = !DILocation(line: 1377, column: 3, scope: !3157)
!3368 = !DILocation(line: 1378, column: 3, scope: !3157)
!3369 = !DILocation(line: 1380, column: 3, scope: !3157)
!3370 = !DILocation(line: 1381, column: 1, scope: !3157)
!3371 = distinct !DISubprogram(name: "VEC_basic_block_base_iterate", scope: !4, file: !4, line: 281, type: !3372, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3374)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!382, !2730, !5, !1446}
!3374 = !{!3375, !3376, !3377}
!3375 = !DILocalVariable(name: "vec_", arg: 1, scope: !3371, file: !4, line: 281, type: !2730)
!3376 = !DILocalVariable(name: "ix_", arg: 2, scope: !3371, file: !4, line: 281, type: !5)
!3377 = !DILocalVariable(name: "ptr", arg: 3, scope: !3371, file: !4, line: 281, type: !1446)
!3378 = !DILocation(line: 0, scope: !3371)
!3379 = !DILocation(line: 281, column: 1, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3371, file: !4, line: 281, column: 1)
!3381 = !DILocation(line: 281, column: 1, scope: !3371)
!3382 = !DILocation(line: 281, column: 1, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3380, file: !4, line: 281, column: 1)
!3384 = !DILocation(line: 281, column: 1, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3380, file: !4, line: 281, column: 1)
!3386 = !DILocation(line: 0, scope: !3380)
!3387 = distinct !DISubprogram(name: "prune_bbs_to_update_dominators", scope: !1, file: !1, line: 1070, type: !3388, scopeLine: 1072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3390)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{null, !1454, !381}
!3390 = !{!3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3403}
!3391 = !DILocalVariable(name: "bbs", arg: 1, scope: !3387, file: !1, line: 1070, type: !1454)
!3392 = !DILocalVariable(name: "conservative", arg: 2, scope: !3387, file: !1, line: 1071, type: !381)
!3393 = !DILocalVariable(name: "i", scope: !3387, file: !1, line: 1073, type: !5)
!3394 = !DILocalVariable(name: "single", scope: !3387, file: !1, line: 1074, type: !381)
!3395 = !DILocalVariable(name: "bb", scope: !3387, file: !1, line: 1075, type: !389)
!3396 = !DILocalVariable(name: "dom", scope: !3387, file: !1, line: 1075, type: !389)
!3397 = !DILocalVariable(name: "ei", scope: !3387, file: !1, line: 1076, type: !1448)
!3398 = !DILocalVariable(name: "e", scope: !3387, file: !1, line: 1077, type: !407)
!3399 = !DILabel(scope: !3400, name: "fail", file: !1, line: 1117)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !1, line: 1080, column: 5)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !1, line: 1079, column: 3)
!3402 = distinct !DILexicalBlock(scope: !3387, file: !1, line: 1079, column: 3)
!3403 = !DILabel(scope: !3400, name: "succeed", file: !1, line: 1121)
!3404 = !DILocation(line: 0, scope: !3387)
!3405 = !DILocation(line: 1075, column: 3, scope: !3387)
!3406 = !DILocation(line: 1076, column: 3, scope: !3387)
!3407 = !DILocation(line: 1077, column: 3, scope: !3387)
!3408 = !DILocation(line: 0, scope: !3401)
!3409 = !DILocation(line: 0, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3400, file: !1, line: 1090, column: 11)
!3411 = !DILocation(line: 0, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3400, file: !1, line: 1095, column: 7)
!3413 = !DILocation(line: 0, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3412, file: !1, line: 1095, column: 7)
!3415 = !DILocation(line: 1079, column: 8, scope: !3402)
!3416 = !DILocation(line: 1079, column: 3, scope: !3402)
!3417 = !DILocation(line: 1079, column: 15, scope: !3401)
!3418 = !DILocation(line: 1081, column: 11, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3400, file: !1, line: 1081, column: 11)
!3420 = !DILocation(line: 1081, column: 17, scope: !3419)
!3421 = !DILocation(line: 1081, column: 14, scope: !3419)
!3422 = !DILocation(line: 1081, column: 11, scope: !3400)
!3423 = !DILocation(line: 1084, column: 11, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3400, file: !1, line: 1084, column: 11)
!3425 = !DILocation(line: 1084, column: 11, scope: !3400)
!3426 = !DILocation(line: 1086, column: 45, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3424, file: !1, line: 1085, column: 2)
!3428 = !DILocation(line: 1086, column: 49, scope: !3427)
!3429 = !DILocation(line: 1086, column: 4, scope: !3427)
!3430 = !DILocation(line: 1087, column: 4, scope: !3427)
!3431 = !DILocation(line: 1118, column: 8, scope: !3400)
!3432 = !DILocation(line: 1121, column: 1, scope: !3400)
!3433 = !DILocation(line: 1122, column: 7, scope: !3400)
!3434 = !DILocation(line: 1079, column: 3, scope: !3401)
!3435 = distinct !{!3435, !3416, !3436}
!3436 = !DILocation(line: 1123, column: 5, scope: !3402)
!3437 = !DILocation(line: 1124, column: 1, scope: !3387)
!3438 = !DILocation(line: 1095, column: 7, scope: !3412)
!3439 = !DILocation(line: 1093, column: 14, scope: !3400)
!3440 = !DILocation(line: 1094, column: 11, scope: !3400)
!3441 = !DILocation(line: 1095, column: 7, scope: !3414)
!3442 = !DILocation(line: 1097, column: 40, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !1, line: 1097, column: 8)
!3444 = distinct !DILexicalBlock(scope: !3414, file: !1, line: 1096, column: 2)
!3445 = !DILocation(line: 1097, column: 43, scope: !3443)
!3446 = !DILocation(line: 1097, column: 48, scope: !3443)
!3447 = !DILocation(line: 1097, column: 8, scope: !3443)
!3448 = !DILocation(line: 1097, column: 8, scope: !3444)
!3449 = !DILocation(line: 1100, column: 9, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3444, file: !1, line: 1100, column: 8)
!3451 = !DILocation(line: 0, scope: !3450)
!3452 = !DILocation(line: 1100, column: 8, scope: !3444)
!3453 = !DILocation(line: 1105, column: 14, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3450, file: !1, line: 1103, column: 6)
!3455 = !DILocation(line: 0, scope: !3400)
!3456 = distinct !{!3456, !3438, !3457}
!3457 = !DILocation(line: 1107, column: 2, scope: !3412)
!3458 = !DILocation(line: 1109, column: 7, scope: !3400)
!3459 = !DILocation(line: 1110, column: 11, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3400, file: !1, line: 1110, column: 11)
!3461 = !DILocation(line: 1111, column: 4, scope: !3460)
!3462 = !DILocation(line: 1111, column: 23, scope: !3460)
!3463 = !DILocation(line: 1111, column: 7, scope: !3460)
!3464 = !DILocation(line: 1110, column: 11, scope: !3400)
!3465 = !DILocation(line: 1113, column: 45, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3460, file: !1, line: 1112, column: 2)
!3467 = !DILocation(line: 1113, column: 4, scope: !3466)
!3468 = !DILocation(line: 1114, column: 4, scope: !3466)
!3469 = !DILocation(line: 1117, column: 1, scope: !3400)
!3470 = !DILocation(line: 1119, column: 7, scope: !3400)
!3471 = distinct !DISubprogram(name: "root_of_dom_tree", scope: !1, file: !1, line: 1130, type: !2499, scopeLine: 1131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3472)
!3472 = !{!3473, !3474}
!3473 = !DILocalVariable(name: "dir", arg: 1, scope: !3471, file: !1, line: 1130, type: !3)
!3474 = !DILocalVariable(name: "bb", arg: 2, scope: !3471, file: !1, line: 1130, type: !389)
!3475 = !DILocation(line: 0, scope: !3471)
!3476 = !DILocation(line: 1132, column: 41, scope: !3471)
!3477 = !DILocation(line: 1132, column: 33, scope: !3471)
!3478 = !DILocation(line: 1132, column: 24, scope: !3471)
!3479 = !DILocation(line: 1132, column: 73, scope: !3471)
!3480 = !DILocation(line: 1132, column: 3, scope: !3471)
!3481 = distinct !DISubprogram(name: "determine_dominators_for_sons", scope: !1, file: !1, line: 1141, type: !3482, scopeLine: 1143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3484)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{null, !3168, !1454, !382, !1442, !1442}
!3484 = !{!3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500}
!3485 = !DILocalVariable(name: "g", arg: 1, scope: !3481, file: !1, line: 1141, type: !3168)
!3486 = !DILocalVariable(name: "bbs", arg: 2, scope: !3481, file: !1, line: 1141, type: !1454)
!3487 = !DILocalVariable(name: "y", arg: 3, scope: !3481, file: !1, line: 1142, type: !382)
!3488 = !DILocalVariable(name: "son", arg: 4, scope: !3481, file: !1, line: 1142, type: !1442)
!3489 = !DILocalVariable(name: "brother", arg: 5, scope: !3481, file: !1, line: 1142, type: !1442)
!3490 = !DILocalVariable(name: "gprime", scope: !3481, file: !1, line: 1144, type: !1441)
!3491 = !DILocalVariable(name: "i", scope: !3481, file: !1, line: 1145, type: !382)
!3492 = !DILocalVariable(name: "a", scope: !3481, file: !1, line: 1145, type: !382)
!3493 = !DILocalVariable(name: "nc", scope: !3481, file: !1, line: 1145, type: !382)
!3494 = !DILocalVariable(name: "sccs", scope: !3481, file: !1, line: 1146, type: !1459)
!3495 = !DILocalVariable(name: "bb", scope: !3481, file: !1, line: 1147, type: !389)
!3496 = !DILocalVariable(name: "dom", scope: !3481, file: !1, line: 1147, type: !389)
!3497 = !DILocalVariable(name: "ybb", scope: !3481, file: !1, line: 1147, type: !389)
!3498 = !DILocalVariable(name: "si", scope: !3481, file: !1, line: 1148, type: !5)
!3499 = !DILocalVariable(name: "e", scope: !3481, file: !1, line: 1149, type: !407)
!3500 = !DILocalVariable(name: "ei", scope: !3481, file: !1, line: 1150, type: !1448)
!3501 = !DILocation(line: 0, scope: !3481)
!3502 = !DILocation(line: 1145, column: 3, scope: !3481)
!3503 = !DILocation(line: 1149, column: 3, scope: !3481)
!3504 = !DILocation(line: 1150, column: 3, scope: !3481)
!3505 = !DILocation(line: 1152, column: 7, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3481, file: !1, line: 1152, column: 7)
!3507 = !DILocation(line: 1152, column: 14, scope: !3506)
!3508 = !DILocation(line: 1152, column: 7, scope: !3481)
!3509 = !DILocation(line: 1154, column: 18, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3481, file: !1, line: 1154, column: 7)
!3511 = !DILocation(line: 1154, column: 9, scope: !3510)
!3512 = !DILocation(line: 1154, column: 7, scope: !3481)
!3513 = !DILocation(line: 1155, column: 11, scope: !3510)
!3514 = !DILocation(line: 1155, column: 5, scope: !3510)
!3515 = !DILocation(line: 1157, column: 11, scope: !3510)
!3516 = !DILocation(line: 0, scope: !3510)
!3517 = !DILocation(line: 1159, column: 15, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3481, file: !1, line: 1159, column: 7)
!3519 = !DILocation(line: 1159, column: 7, scope: !3518)
!3520 = !DILocation(line: 1159, column: 23, scope: !3518)
!3521 = !DILocation(line: 1159, column: 7, scope: !3481)
!3522 = !DILocation(line: 1162, column: 12, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3518, file: !1, line: 1160, column: 5)
!3524 = !DILocation(line: 1164, column: 11, scope: !3523)
!3525 = !DILocation(line: 1163, column: 7, scope: !3523)
!3526 = !DILocation(line: 1165, column: 32, scope: !3523)
!3527 = !DILocation(line: 1165, column: 7, scope: !3523)
!3528 = !DILocation(line: 1166, column: 7, scope: !3523)
!3529 = !DILocation(line: 1169, column: 12, scope: !3481)
!3530 = !DILocation(line: 1170, column: 8, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3481, file: !1, line: 1170, column: 3)
!3532 = !DILocation(line: 0, scope: !3531)
!3533 = !DILocation(line: 1170, column: 22, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3531, file: !1, line: 1170, column: 3)
!3535 = !DILocation(line: 1170, column: 3, scope: !3531)
!3536 = !DILocation(line: 1171, column: 5, scope: !3534)
!3537 = !DILocation(line: 1170, column: 33, scope: !3534)
!3538 = !DILocation(line: 1170, column: 3, scope: !3534)
!3539 = distinct !{!3539, !3535, !3540}
!3540 = !DILocation(line: 1171, column: 30, scope: !3531)
!3541 = !DILocation(line: 1173, column: 8, scope: !3481)
!3542 = !DILocation(line: 1174, column: 3, scope: !3481)
!3543 = !DILocation(line: 1176, column: 10, scope: !3481)
!3544 = !DILocation(line: 0, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !1, line: 1177, column: 3)
!3546 = distinct !DILexicalBlock(scope: !3481, file: !1, line: 1177, column: 3)
!3547 = !DILocation(line: 1177, column: 8, scope: !3546)
!3548 = !DILocation(line: 0, scope: !3546)
!3549 = !DILocation(line: 1177, column: 22, scope: !3545)
!3550 = !DILocation(line: 1177, column: 3, scope: !3546)
!3551 = !DILocation(line: 1178, column: 5, scope: !3545)
!3552 = !DILocation(line: 1177, column: 33, scope: !3545)
!3553 = !DILocation(line: 1177, column: 3, scope: !3545)
!3554 = distinct !{!3554, !3550, !3555}
!3555 = !DILocation(line: 1178, column: 5, scope: !3546)
!3556 = !DILocation(line: 0, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3558, file: !1, line: 1186, column: 4)
!3558 = distinct !DILexicalBlock(scope: !3559, file: !1, line: 1184, column: 2)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !1, line: 1183, column: 7)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !1, line: 1183, column: 7)
!3561 = distinct !DILexicalBlock(scope: !3562, file: !1, line: 1181, column: 5)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !1, line: 1180, column: 3)
!3563 = distinct !DILexicalBlock(scope: !3481, file: !1, line: 1180, column: 3)
!3564 = !DILocation(line: 0, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3557, file: !1, line: 1186, column: 4)
!3566 = !DILocation(line: 1180, column: 8, scope: !3563)
!3567 = !DILocation(line: 0, scope: !3563)
!3568 = !DILocation(line: 1180, column: 22, scope: !3562)
!3569 = !DILocation(line: 1180, column: 3, scope: !3563)
!3570 = !DILocation(line: 0, scope: !3559)
!3571 = !DILocation(line: 1183, column: 7, scope: !3560)
!3572 = !DILocation(line: 1203, column: 3, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3481, file: !1, line: 1203, column: 3)
!3574 = !DILocation(line: 1182, column: 11, scope: !3561)
!3575 = !DILocation(line: 0, scope: !3560)
!3576 = !DILocation(line: 1183, column: 20, scope: !3559)
!3577 = !DILocation(line: 1185, column: 9, scope: !3558)
!3578 = !DILocation(line: 1186, column: 4, scope: !3557)
!3579 = !DILocation(line: 1186, column: 4, scope: !3565)
!3580 = !DILocation(line: 1188, column: 46, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !1, line: 1188, column: 12)
!3582 = distinct !DILexicalBlock(scope: !3565, file: !1, line: 1187, column: 6)
!3583 = !DILocation(line: 1188, column: 49, scope: !3581)
!3584 = !DILocation(line: 1188, column: 12, scope: !3581)
!3585 = !DILocation(line: 1188, column: 54, scope: !3581)
!3586 = !DILocation(line: 1188, column: 12, scope: !3582)
!3587 = !DILocation(line: 1191, column: 61, scope: !3582)
!3588 = !DILocation(line: 1191, column: 64, scope: !3582)
!3589 = !DILocation(line: 1191, column: 14, scope: !3582)
!3590 = !DILocation(line: 1192, column: 6, scope: !3582)
!3591 = !DILocation(line: 0, scope: !3561)
!3592 = distinct !{!3592, !3578, !3593}
!3593 = !DILocation(line: 1192, column: 6, scope: !3557)
!3594 = !DILocation(line: 1183, column: 57, scope: !3559)
!3595 = !DILocation(line: 1183, column: 7, scope: !3559)
!3596 = distinct !{!3596, !3571, !3597}
!3597 = !DILocation(line: 1193, column: 2, scope: !3560)
!3598 = !DILocation(line: 1195, column: 7, scope: !3561)
!3599 = !DILocation(line: 1196, column: 12, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3561, file: !1, line: 1196, column: 7)
!3601 = !DILocation(line: 0, scope: !3600)
!3602 = !DILocation(line: 1196, column: 20, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3600, file: !1, line: 1196, column: 7)
!3604 = !DILocation(line: 1196, column: 7, scope: !3600)
!3605 = !DILocation(line: 1198, column: 9, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !1, line: 1197, column: 2)
!3607 = !DILocation(line: 1199, column: 4, scope: !3606)
!3608 = !DILocation(line: 1196, column: 57, scope: !3603)
!3609 = !DILocation(line: 1196, column: 7, scope: !3603)
!3610 = distinct !{!3610, !3604, !3611}
!3611 = !DILocation(line: 1200, column: 2, scope: !3600)
!3612 = !DILocation(line: 1180, column: 3, scope: !3562)
!3613 = distinct !{!3613, !3569, !3614}
!3614 = !DILocation(line: 1201, column: 5, scope: !3563)
!3615 = !DILocation(line: 0, scope: !3573)
!3616 = !DILocation(line: 1203, column: 17, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3573, file: !1, line: 1203, column: 3)
!3618 = !DILocation(line: 1204, column: 5, scope: !3617)
!3619 = !DILocation(line: 1203, column: 24, scope: !3617)
!3620 = !DILocation(line: 1203, column: 3, scope: !3617)
!3621 = distinct !{!3621, !3572, !3622}
!3622 = !DILocation(line: 1204, column: 5, scope: !3573)
!3623 = !DILocation(line: 1205, column: 3, scope: !3481)
!3624 = !DILocation(line: 1207, column: 8, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3481, file: !1, line: 1207, column: 3)
!3626 = !DILocation(line: 0, scope: !3625)
!3627 = !DILocation(line: 1207, column: 22, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3625, file: !1, line: 1207, column: 3)
!3629 = !DILocation(line: 1207, column: 3, scope: !3625)
!3630 = !DILocation(line: 1208, column: 5, scope: !3628)
!3631 = !DILocation(line: 1207, column: 41, scope: !3628)
!3632 = !DILocation(line: 1207, column: 33, scope: !3628)
!3633 = !DILocation(line: 1207, column: 3, scope: !3628)
!3634 = distinct !{!3634, !3629, !3635}
!3635 = !DILocation(line: 1208, column: 31, scope: !3625)
!3636 = !DILocation(line: 1209, column: 1, scope: !3481)
!3637 = distinct !DISubprogram(name: "add_to_dominance_info", scope: !1, file: !1, line: 1384, type: !3638, scopeLine: 1385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3640)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{null, !3, !389}
!3640 = !{!3641, !3642, !3643}
!3641 = !DILocalVariable(name: "dir", arg: 1, scope: !3637, file: !1, line: 1384, type: !3)
!3642 = !DILocalVariable(name: "bb", arg: 2, scope: !3637, file: !1, line: 1384, type: !389)
!3643 = !DILocalVariable(name: "dir_index", scope: !3637, file: !1, line: 1386, type: !5)
!3644 = !DILocation(line: 0, scope: !3637)
!3645 = !DILocation(line: 1386, column: 28, scope: !3637)
!3646 = !DILocation(line: 1388, column: 3, scope: !3637)
!3647 = !DILocation(line: 1389, column: 3, scope: !3637)
!3648 = !DILocation(line: 1391, column: 3, scope: !3637)
!3649 = !DILocation(line: 1391, column: 31, scope: !3637)
!3650 = !DILocation(line: 1393, column: 37, scope: !3637)
!3651 = !DILocation(line: 1393, column: 24, scope: !3637)
!3652 = !DILocation(line: 1393, column: 22, scope: !3637)
!3653 = !DILocation(line: 1395, column: 7, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3637, file: !1, line: 1395, column: 7)
!3655 = !DILocation(line: 1395, column: 31, scope: !3654)
!3656 = !DILocation(line: 1395, column: 7, scope: !3637)
!3657 = !DILocation(line: 1396, column: 29, scope: !3654)
!3658 = !DILocation(line: 1396, column: 5, scope: !3654)
!3659 = !DILocation(line: 1397, column: 1, scope: !3637)
!3660 = distinct !DISubprogram(name: "delete_from_dominance_info", scope: !1, file: !1, line: 1400, type: !3638, scopeLine: 1401, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3661)
!3661 = !{!3662, !3663, !3664}
!3662 = !DILocalVariable(name: "dir", arg: 1, scope: !3660, file: !1, line: 1400, type: !3)
!3663 = !DILocalVariable(name: "bb", arg: 2, scope: !3660, file: !1, line: 1400, type: !389)
!3664 = !DILocalVariable(name: "dir_index", scope: !3660, file: !1, line: 1402, type: !5)
!3665 = !DILocation(line: 0, scope: !3660)
!3666 = !DILocation(line: 1402, column: 28, scope: !3660)
!3667 = !DILocation(line: 1404, column: 3, scope: !3660)
!3668 = !DILocation(line: 1406, column: 17, scope: !3660)
!3669 = !DILocation(line: 1406, column: 3, scope: !3660)
!3670 = !DILocation(line: 1407, column: 22, scope: !3660)
!3671 = !DILocation(line: 1408, column: 3, scope: !3660)
!3672 = !DILocation(line: 1408, column: 31, scope: !3660)
!3673 = !DILocation(line: 1410, column: 7, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3660, file: !1, line: 1410, column: 7)
!3675 = !DILocation(line: 1410, column: 31, scope: !3674)
!3676 = !DILocation(line: 1410, column: 7, scope: !3660)
!3677 = !DILocation(line: 1411, column: 29, scope: !3674)
!3678 = !DILocation(line: 1411, column: 5, scope: !3674)
!3679 = !DILocation(line: 1412, column: 1, scope: !3660)
!3680 = distinct !DISubprogram(name: "dom_info_state", scope: !1, file: !1, line: 1441, type: !3681, scopeLine: 1442, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3683)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!142, !3}
!3683 = !{!3684, !3685}
!3684 = !DILocalVariable(name: "dir", arg: 1, scope: !3680, file: !1, line: 1441, type: !3)
!3685 = !DILocalVariable(name: "dir_index", scope: !3680, file: !1, line: 1443, type: !5)
!3686 = !DILocation(line: 0, scope: !3680)
!3687 = !DILocation(line: 1443, column: 28, scope: !3680)
!3688 = !DILocation(line: 1445, column: 10, scope: !3680)
!3689 = !DILocation(line: 1445, column: 3, scope: !3680)
!3690 = distinct !DISubprogram(name: "set_dom_info_availability", scope: !1, file: !1, line: 1451, type: !3691, scopeLine: 1452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3693)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{null, !3, !142}
!3693 = !{!3694, !3695, !3696}
!3694 = !DILocalVariable(name: "dir", arg: 1, scope: !3690, file: !1, line: 1451, type: !3)
!3695 = !DILocalVariable(name: "new_state", arg: 2, scope: !3690, file: !1, line: 1451, type: !142)
!3696 = !DILocalVariable(name: "dir_index", scope: !3690, file: !1, line: 1453, type: !5)
!3697 = !DILocation(line: 0, scope: !3690)
!3698 = !DILocation(line: 1453, column: 28, scope: !3690)
!3699 = !DILocation(line: 1455, column: 3, scope: !3690)
!3700 = !DILocation(line: 1455, column: 27, scope: !3690)
!3701 = !DILocation(line: 1456, column: 1, scope: !3690)
!3702 = distinct !DISubprogram(name: "debug_dominance_info", scope: !1, file: !1, line: 1469, type: !1924, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3703)
!3703 = !{!3704, !3705, !3706}
!3704 = !DILocalVariable(name: "dir", arg: 1, scope: !3702, file: !1, line: 1469, type: !3)
!3705 = !DILocalVariable(name: "bb", scope: !3702, file: !1, line: 1471, type: !389)
!3706 = !DILocalVariable(name: "bb2", scope: !3702, file: !1, line: 1471, type: !389)
!3707 = !DILocation(line: 0, scope: !3702)
!3708 = !DILocation(line: 1472, column: 3, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3702, file: !1, line: 1472, column: 3)
!3710 = !DILocation(line: 1472, column: 3, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3709, file: !1, line: 1472, column: 3)
!3712 = !DILocation(line: 0, scope: !3709)
!3713 = !DILocation(line: 1473, column: 16, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3711, file: !1, line: 1473, column: 9)
!3715 = !DILocation(line: 1473, column: 14, scope: !3714)
!3716 = !DILocation(line: 1473, column: 9, scope: !3711)
!3717 = !DILocation(line: 1474, column: 16, scope: !3714)
!3718 = !DILocation(line: 1474, column: 39, scope: !3714)
!3719 = !DILocation(line: 1474, column: 51, scope: !3714)
!3720 = !DILocation(line: 1474, column: 7, scope: !3714)
!3721 = !DILocation(line: 0, scope: !3711)
!3722 = distinct !{!3722, !3708, !3723}
!3723 = !DILocation(line: 1474, column: 56, scope: !3709)
!3724 = !DILocation(line: 1475, column: 1, scope: !3702)
!3725 = distinct !DISubprogram(name: "debug_dominance_tree", scope: !1, file: !1, line: 1510, type: !3638, scopeLine: 1511, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3726)
!3726 = !{!3727, !3728}
!3727 = !DILocalVariable(name: "dir", arg: 1, scope: !3725, file: !1, line: 1510, type: !3)
!3728 = !DILocalVariable(name: "root", arg: 2, scope: !3725, file: !1, line: 1510, type: !389)
!3729 = !DILocation(line: 0, scope: !3725)
!3730 = !DILocation(line: 1512, column: 3, scope: !3725)
!3731 = !DILocation(line: 1513, column: 1, scope: !3725)
!3732 = distinct !DISubprogram(name: "debug_dominance_tree_1", scope: !1, file: !1, line: 1482, type: !3733, scopeLine: 1484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3735)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{null, !3, !389, !5, !381}
!3735 = !{!3736, !3737, !3738, !3739, !3740, !3741, !3742}
!3736 = !DILocalVariable(name: "dir", arg: 1, scope: !3732, file: !1, line: 1482, type: !3)
!3737 = !DILocalVariable(name: "root", arg: 2, scope: !3732, file: !1, line: 1482, type: !389)
!3738 = !DILocalVariable(name: "indent", arg: 3, scope: !3732, file: !1, line: 1483, type: !5)
!3739 = !DILocalVariable(name: "indent_first", arg: 4, scope: !3732, file: !1, line: 1483, type: !381)
!3740 = !DILocalVariable(name: "son", scope: !3732, file: !1, line: 1485, type: !389)
!3741 = !DILocalVariable(name: "i", scope: !3732, file: !1, line: 1486, type: !5)
!3742 = !DILocalVariable(name: "first", scope: !3732, file: !1, line: 1487, type: !381)
!3743 = !DILocation(line: 0, scope: !3732)
!3744 = !DILocation(line: 1489, column: 7, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3732, file: !1, line: 1489, column: 7)
!3746 = !DILocation(line: 1489, column: 7, scope: !3732)
!3747 = !DILocation(line: 1490, column: 5, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3745, file: !1, line: 1490, column: 5)
!3749 = !DILocation(line: 0, scope: !3748)
!3750 = !DILocation(line: 1490, column: 19, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3748, file: !1, line: 1490, column: 5)
!3752 = !DILocation(line: 1491, column: 16, scope: !3751)
!3753 = !DILocation(line: 1491, column: 7, scope: !3751)
!3754 = !DILocation(line: 1490, column: 30, scope: !3751)
!3755 = !DILocation(line: 1490, column: 5, scope: !3751)
!3756 = distinct !{!3756, !3747, !3757}
!3757 = !DILocation(line: 1491, column: 28, scope: !3748)
!3758 = !DILocation(line: 1492, column: 12, scope: !3732)
!3759 = !DILocation(line: 1492, column: 34, scope: !3732)
!3760 = !DILocation(line: 1492, column: 3, scope: !3732)
!3761 = !DILocation(line: 1494, column: 14, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3732, file: !1, line: 1494, column: 3)
!3763 = !DILocation(line: 0, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3765, file: !1, line: 1497, column: 5)
!3765 = distinct !DILexicalBlock(scope: !3762, file: !1, line: 1494, column: 3)
!3766 = !DILocation(line: 1494, column: 8, scope: !3762)
!3767 = !DILocation(line: 0, scope: !3762)
!3768 = !DILocation(line: 1494, column: 3, scope: !3762)
!3769 = !DILocation(line: 1498, column: 53, scope: !3764)
!3770 = !DILocation(line: 1498, column: 7, scope: !3764)
!3771 = !DILocation(line: 1496, column: 14, scope: !3765)
!3772 = !DILocation(line: 1494, column: 3, scope: !3765)
!3773 = distinct !{!3773, !3768, !3774}
!3774 = !DILocation(line: 1500, column: 5, scope: !3762)
!3775 = !DILocation(line: 1502, column: 7, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3732, file: !1, line: 1502, column: 7)
!3777 = !DILocation(line: 1502, column: 7, scope: !3732)
!3778 = !DILocation(line: 1503, column: 14, scope: !3776)
!3779 = !DILocation(line: 1503, column: 5, scope: !3776)
!3780 = !DILocation(line: 1504, column: 1, scope: !3732)
!3781 = distinct !DISubprogram(name: "calc_dfs_tree_nonrec", scope: !1, file: !1, line: 223, type: !3782, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3784)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{null, !2040, !389, !381}
!3784 = !{!3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797}
!3785 = !DILocalVariable(name: "di", arg: 1, scope: !3781, file: !1, line: 223, type: !2040)
!3786 = !DILocalVariable(name: "bb", arg: 2, scope: !3781, file: !1, line: 223, type: !389)
!3787 = !DILocalVariable(name: "reverse", arg: 3, scope: !3781, file: !1, line: 223, type: !381)
!3788 = !DILocalVariable(name: "e", scope: !3781, file: !1, line: 226, type: !407)
!3789 = !DILocalVariable(name: "child_i", scope: !3781, file: !1, line: 227, type: !1444)
!3790 = !DILocalVariable(name: "my_i", scope: !3781, file: !1, line: 227, type: !1444)
!3791 = !DILocalVariable(name: "stack", scope: !3781, file: !1, line: 228, type: !1447)
!3792 = !DILocalVariable(name: "ei", scope: !3781, file: !1, line: 229, type: !1448)
!3793 = !DILocalVariable(name: "einext", scope: !3781, file: !1, line: 229, type: !1448)
!3794 = !DILocalVariable(name: "sp", scope: !3781, file: !1, line: 230, type: !382)
!3795 = !DILocalVariable(name: "en_block", scope: !3781, file: !1, line: 233, type: !389)
!3796 = !DILocalVariable(name: "ex_block", scope: !3781, file: !1, line: 235, type: !389)
!3797 = !DILocalVariable(name: "bn", scope: !3798, file: !1, line: 257, type: !389)
!3798 = distinct !DILexicalBlock(scope: !3781, file: !1, line: 256, column: 5)
!3799 = !DILocation(line: 0, scope: !3781)
!3800 = !DILocation(line: 229, column: 3, scope: !3781)
!3801 = !DILocation(line: 237, column: 11, scope: !3781)
!3802 = !DILocation(line: 241, column: 7, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3781, file: !1, line: 241, column: 7)
!3804 = !DILocation(line: 241, column: 7, scope: !3781)
!3805 = !DILocation(line: 243, column: 12, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3803, file: !1, line: 242, column: 5)
!3807 = !DILocation(line: 244, column: 18, scope: !3806)
!3808 = !DILocation(line: 245, column: 18, scope: !3806)
!3809 = !DILocation(line: 246, column: 5, scope: !3806)
!3810 = !DILocation(line: 249, column: 12, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3803, file: !1, line: 248, column: 5)
!3812 = !DILocation(line: 250, column: 18, scope: !3811)
!3813 = !DILocation(line: 251, column: 18, scope: !3811)
!3814 = !DILocation(line: 0, scope: !3803)
!3815 = !DILocation(line: 0, scope: !3798)
!3816 = !DILocation(line: 0, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !1, line: 274, column: 12)
!3818 = distinct !DILexicalBlock(scope: !3819, file: !1, line: 268, column: 6)
!3819 = distinct !DILexicalBlock(scope: !3820, file: !1, line: 267, column: 8)
!3820 = distinct !DILexicalBlock(scope: !3798, file: !1, line: 262, column: 2)
!3821 = !DILocation(line: 0, scope: !3818)
!3822 = !DILocation(line: 0, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3819, file: !1, line: 283, column: 6)
!3824 = !DILocation(line: 0, scope: !3820)
!3825 = !DILocation(line: 255, column: 3, scope: !3781)
!3826 = !DILocation(line: 261, column: 7, scope: !3798)
!3827 = !DILocation(line: 261, column: 15, scope: !3798)
!3828 = !DILocation(line: 261, column: 14, scope: !3798)
!3829 = !DILocation(line: 263, column: 8, scope: !3820)
!3830 = !DILocation(line: 284, column: 16, scope: !3823)
!3831 = !DILocation(line: 285, column: 15, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3823, file: !1, line: 285, column: 12)
!3833 = !DILocation(line: 285, column: 27, scope: !3832)
!3834 = !DILocation(line: 285, column: 34, scope: !3832)
!3835 = !DILocation(line: 285, column: 48, scope: !3832)
!3836 = !DILocation(line: 285, column: 30, scope: !3832)
!3837 = !DILocation(line: 285, column: 12, scope: !3823)
!3838 = !DILocation(line: 287, column: 5, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3832, file: !1, line: 286, column: 3)
!3840 = distinct !{!3840, !3826, !3841}
!3841 = !DILocation(line: 308, column: 2, scope: !3798)
!3842 = !DILocation(line: 310, column: 12, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3798, file: !1, line: 310, column: 11)
!3844 = !DILocation(line: 290, column: 16, scope: !3823)
!3845 = !DILocation(line: 291, column: 17, scope: !3823)
!3846 = !DILocation(line: 269, column: 16, scope: !3818)
!3847 = !DILocation(line: 274, column: 15, scope: !3817)
!3848 = !DILocation(line: 274, column: 27, scope: !3817)
!3849 = !DILocation(line: 274, column: 34, scope: !3817)
!3850 = !DILocation(line: 274, column: 48, scope: !3817)
!3851 = !DILocation(line: 274, column: 30, scope: !3817)
!3852 = !DILocation(line: 274, column: 12, scope: !3818)
!3853 = !DILocation(line: 276, column: 5, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3817, file: !1, line: 275, column: 3)
!3855 = !DILocation(line: 279, column: 16, scope: !3818)
!3856 = !DILocation(line: 280, column: 17, scope: !3818)
!3857 = !DILocation(line: 281, column: 6, scope: !3818)
!3858 = !DILocation(line: 0, scope: !3819)
!3859 = !DILocation(line: 294, column: 4, scope: !3820)
!3860 = !DILocation(line: 297, column: 11, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3820, file: !1, line: 297, column: 8)
!3862 = !DILocation(line: 0, scope: !3861)
!3863 = !DILocation(line: 297, column: 8, scope: !3820)
!3864 = !DILocation(line: 298, column: 31, scope: !3861)
!3865 = !DILocation(line: 298, column: 6, scope: !3861)
!3866 = !DILocation(line: 300, column: 27, scope: !3861)
!3867 = !DILocation(line: 301, column: 51, scope: !3820)
!3868 = !DILocation(line: 301, column: 32, scope: !3820)
!3869 = !DILocation(line: 301, column: 14, scope: !3820)
!3870 = !DILocation(line: 301, column: 39, scope: !3820)
!3871 = !DILocation(line: 302, column: 8, scope: !3820)
!3872 = !DILocation(line: 302, column: 4, scope: !3820)
!3873 = !DILocation(line: 302, column: 27, scope: !3820)
!3874 = !DILocation(line: 303, column: 8, scope: !3820)
!3875 = !DILocation(line: 303, column: 4, scope: !3820)
!3876 = !DILocation(line: 303, column: 28, scope: !3820)
!3877 = !DILocation(line: 306, column: 12, scope: !3820)
!3878 = !DILocation(line: 306, column: 4, scope: !3820)
!3879 = !DILocation(line: 306, column: 18, scope: !3820)
!3880 = !DILocation(line: 307, column: 9, scope: !3820)
!3881 = !DILocation(line: 310, column: 11, scope: !3798)
!3882 = !DILocation(line: 312, column: 18, scope: !3798)
!3883 = !DILocation(line: 312, column: 12, scope: !3798)
!3884 = !DILocation(line: 323, column: 7, scope: !3798)
!3885 = !DILocation(line: 324, column: 5, scope: !3781)
!3886 = distinct !{!3886, !3825, !3885}
!3887 = !DILocation(line: 325, column: 3, scope: !3781)
!3888 = !DILocation(line: 326, column: 1, scope: !3781)
!3889 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !4, file: !4, line: 150, type: !3890, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3894)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!5, !3892}
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!3894 = !{!3895}
!3895 = !DILocalVariable(name: "vec_", arg: 1, scope: !3889, file: !4, line: 150, type: !3892)
!3896 = !DILocation(line: 0, scope: !3889)
!3897 = !DILocation(line: 150, column: 1, scope: !3889)
!3898 = distinct !DISubprogram(name: "ei_end_p", scope: !4, file: !4, line: 721, type: !3899, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3901)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!381, !1448}
!3901 = !{!3902}
!3902 = !DILocalVariable(name: "i", arg: 1, scope: !3898, file: !4, line: 721, type: !1448)
!3903 = !DILocation(line: 723, column: 22, scope: !3898)
!3904 = !DILocation(line: 723, column: 19, scope: !3898)
!3905 = !DILocation(line: 723, column: 10, scope: !3898)
!3906 = !DILocation(line: 723, column: 3, scope: !3898)
!3907 = distinct !DISubprogram(name: "ei_edge", scope: !4, file: !4, line: 752, type: !3908, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3910)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!407, !1448}
!3910 = !{!3911}
!3911 = !DILocalVariable(name: "i", arg: 1, scope: !3907, file: !4, line: 752, type: !1448)
!3912 = !DILocation(line: 754, column: 10, scope: !3907)
!3913 = !DILocation(line: 754, column: 3, scope: !3907)
!3914 = distinct !DISubprogram(name: "ei_container", scope: !4, file: !4, line: 685, type: !3915, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3917)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!395, !1448}
!3917 = !{!3918}
!3918 = !DILocalVariable(name: "i", arg: 1, scope: !3914, file: !4, line: 685, type: !1448)
!3919 = !DILocation(line: 687, column: 3, scope: !3914)
!3920 = !DILocation(line: 688, column: 10, scope: !3914)
!3921 = !DILocation(line: 688, column: 3, scope: !3914)
!3922 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !4, file: !4, line: 150, type: !3923, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3925)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!407, !3892, !5}
!3925 = !{!3926, !3927}
!3926 = !DILocalVariable(name: "vec_", arg: 1, scope: !3922, file: !4, line: 150, type: !3892)
!3927 = !DILocalVariable(name: "ix_", arg: 2, scope: !3922, file: !4, line: 150, type: !5)
!3928 = !DILocation(line: 0, scope: !3922)
!3929 = !DILocation(line: 150, column: 1, scope: !3922)
!3930 = distinct !DISubprogram(name: "eval", scope: !1, file: !1, line: 423, type: !3931, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3933)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!1444, !2040, !1444}
!3933 = !{!3934, !3935, !3936}
!3934 = !DILocalVariable(name: "di", arg: 1, scope: !3930, file: !1, line: 423, type: !2040)
!3935 = !DILocalVariable(name: "v", arg: 2, scope: !3930, file: !1, line: 423, type: !1444)
!3936 = !DILocalVariable(name: "rep", scope: !3930, file: !1, line: 427, type: !1444)
!3937 = !DILocation(line: 0, scope: !3930)
!3938 = !DILocation(line: 427, column: 17, scope: !3930)
!3939 = !DILocation(line: 427, column: 13, scope: !3930)
!3940 = !DILocation(line: 430, column: 8, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3930, file: !1, line: 430, column: 7)
!3942 = !DILocation(line: 430, column: 7, scope: !3930)
!3943 = !DILocation(line: 431, column: 16, scope: !3941)
!3944 = !DILocation(line: 431, column: 12, scope: !3941)
!3945 = !DILocation(line: 431, column: 5, scope: !3941)
!3946 = !DILocation(line: 434, column: 7, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3930, file: !1, line: 434, column: 7)
!3948 = !DILocation(line: 434, column: 7, scope: !3930)
!3949 = !DILocation(line: 436, column: 7, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3947, file: !1, line: 435, column: 5)
!3951 = !DILocation(line: 437, column: 17, scope: !3950)
!3952 = !DILocation(line: 437, column: 13, scope: !3950)
!3953 = !DILocation(line: 440, column: 15, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3930, file: !1, line: 440, column: 7)
!3955 = !DILocation(line: 438, column: 5, scope: !3950)
!3956 = !DILocation(line: 440, column: 11, scope: !3954)
!3957 = !DILocation(line: 440, column: 19, scope: !3954)
!3958 = !DILocation(line: 440, column: 7, scope: !3954)
!3959 = !DILocation(line: 440, column: 45, scope: !3954)
!3960 = !DILocation(line: 440, column: 37, scope: !3954)
!3961 = !DILocation(line: 440, column: 34, scope: !3954)
!3962 = !DILocation(line: 440, column: 7, scope: !3930)
!3963 = !DILocation(line: 441, column: 5, scope: !3954)
!3964 = !DILocation(line: 443, column: 5, scope: !3954)
!3965 = !DILocation(line: 444, column: 1, scope: !3930)
!3966 = distinct !DISubprogram(name: "link_roots", scope: !1, file: !1, line: 452, type: !3967, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3969)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{null, !2040, !1444, !1444}
!3969 = !{!3970, !3971, !3972, !3973, !3974}
!3970 = !DILocalVariable(name: "di", arg: 1, scope: !3966, file: !1, line: 452, type: !2040)
!3971 = !DILocalVariable(name: "v", arg: 2, scope: !3966, file: !1, line: 452, type: !1444)
!3972 = !DILocalVariable(name: "w", arg: 3, scope: !3966, file: !1, line: 452, type: !1444)
!3973 = !DILocalVariable(name: "s", scope: !3966, file: !1, line: 454, type: !1444)
!3974 = !DILocalVariable(name: "tmp", scope: !3975, file: !1, line: 476, type: !1444)
!3975 = distinct !DILexicalBlock(scope: !3976, file: !1, line: 475, column: 5)
!3976 = distinct !DILexicalBlock(scope: !3966, file: !1, line: 474, column: 7)
!3977 = !DILocation(line: 0, scope: !3966)
!3978 = !DILocation(line: 0, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3980, file: !1, line: 459, column: 11)
!3980 = distinct !DILexicalBlock(scope: !3966, file: !1, line: 458, column: 5)
!3981 = !DILocation(line: 0, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3979, file: !1, line: 461, column: 2)
!3983 = !DILocation(line: 457, column: 3, scope: !3966)
!3984 = !DILocation(line: 454, column: 7, scope: !3966)
!3985 = !DILocation(line: 457, column: 14, scope: !3966)
!3986 = !DILocation(line: 457, column: 22, scope: !3966)
!3987 = !DILocation(line: 457, column: 18, scope: !3966)
!3988 = !DILocation(line: 457, column: 10, scope: !3966)
!3989 = !DILocation(line: 457, column: 62, scope: !3966)
!3990 = !DILocation(line: 457, column: 58, scope: !3966)
!3991 = !DILocation(line: 457, column: 45, scope: !3966)
!3992 = !DILocation(line: 457, column: 37, scope: !3966)
!3993 = !DILocation(line: 457, column: 35, scope: !3966)
!3994 = !DILocation(line: 459, column: 15, scope: !3979)
!3995 = !DILocation(line: 459, column: 11, scope: !3979)
!3996 = !DILocation(line: 459, column: 42, scope: !3979)
!3997 = !DILocation(line: 459, column: 29, scope: !3979)
!3998 = !DILocation(line: 459, column: 27, scope: !3979)
!3999 = !DILocation(line: 460, column: 11, scope: !3979)
!4000 = !DILocation(line: 460, column: 9, scope: !3979)
!4001 = !DILocation(line: 460, column: 4, scope: !3979)
!4002 = !DILocation(line: 459, column: 11, scope: !3980)
!4003 = !DILocation(line: 462, column: 8, scope: !3982)
!4004 = !DILocation(line: 462, column: 4, scope: !3982)
!4005 = !DILocation(line: 462, column: 36, scope: !3982)
!4006 = !DILocation(line: 463, column: 27, scope: !3982)
!4007 = !DILocation(line: 463, column: 37, scope: !3982)
!4008 = !DILocation(line: 463, column: 23, scope: !3982)
!4009 = !DILocation(line: 463, column: 21, scope: !3982)
!4010 = !DILocation(line: 464, column: 2, scope: !3982)
!4011 = !DILocation(line: 467, column: 35, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3979, file: !1, line: 466, column: 2)
!4013 = !DILocation(line: 468, column: 31, scope: !4012)
!4014 = !DILocation(line: 468, column: 27, scope: !4012)
!4015 = !DILocation(line: 468, column: 12, scope: !4012)
!4016 = !DILocation(line: 468, column: 8, scope: !4012)
!4017 = !DILocation(line: 468, column: 25, scope: !4012)
!4018 = distinct !{!4018, !3983, !4019}
!4019 = !DILocation(line: 470, column: 5, scope: !3966)
!4020 = !DILocation(line: 472, column: 3, scope: !3966)
!4021 = !DILocation(line: 472, column: 19, scope: !3966)
!4022 = !DILocation(line: 473, column: 26, scope: !3966)
!4023 = !DILocation(line: 473, column: 22, scope: !3966)
!4024 = !DILocation(line: 473, column: 3, scope: !3966)
!4025 = !DILocation(line: 473, column: 19, scope: !3966)
!4026 = !DILocation(line: 474, column: 11, scope: !3976)
!4027 = !DILocation(line: 474, column: 7, scope: !3976)
!4028 = !DILocation(line: 474, column: 29, scope: !3976)
!4029 = !DILocation(line: 474, column: 27, scope: !3976)
!4030 = !DILocation(line: 474, column: 23, scope: !3976)
!4031 = !DILocation(line: 474, column: 7, scope: !3966)
!4032 = !DILocation(line: 0, scope: !3975)
!4033 = !DILocation(line: 477, column: 15, scope: !3975)
!4034 = !DILocation(line: 477, column: 11, scope: !3975)
!4035 = !DILocation(line: 478, column: 24, scope: !3975)
!4036 = !DILocation(line: 479, column: 5, scope: !3975)
!4037 = !DILocation(line: 482, column: 3, scope: !3966)
!4038 = !DILocation(line: 484, column: 11, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !3966, file: !1, line: 483, column: 5)
!4040 = !DILocation(line: 484, column: 7, scope: !4039)
!4041 = !DILocation(line: 484, column: 24, scope: !4039)
!4042 = !DILocation(line: 485, column: 15, scope: !4039)
!4043 = !DILocation(line: 485, column: 11, scope: !4039)
!4044 = distinct !{!4044, !4037, !4045}
!4045 = !DILocation(line: 486, column: 5, scope: !3966)
!4046 = !DILocation(line: 487, column: 1, scope: !3966)
!4047 = distinct !DISubprogram(name: "compress", scope: !1, file: !1, line: 403, type: !4048, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4050)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !2040, !1444}
!4050 = !{!4051, !4052, !4053}
!4051 = !DILocalVariable(name: "di", arg: 1, scope: !4047, file: !1, line: 403, type: !2040)
!4052 = !DILocalVariable(name: "v", arg: 2, scope: !4047, file: !1, line: 403, type: !1444)
!4053 = !DILocalVariable(name: "parent", scope: !4047, file: !1, line: 408, type: !1444)
!4054 = !DILocation(line: 0, scope: !4047)
!4055 = !DILocation(line: 408, column: 20, scope: !4047)
!4056 = !DILocation(line: 408, column: 16, scope: !4047)
!4057 = !DILocation(line: 409, column: 7, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4047, file: !1, line: 409, column: 7)
!4059 = !DILocation(line: 409, column: 7, scope: !4047)
!4060 = !DILocation(line: 411, column: 7, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4058, file: !1, line: 410, column: 5)
!4062 = !DILocation(line: 412, column: 15, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4061, file: !1, line: 412, column: 11)
!4064 = !DILocation(line: 412, column: 23, scope: !4063)
!4065 = !DILocation(line: 412, column: 19, scope: !4063)
!4066 = !DILocation(line: 412, column: 11, scope: !4063)
!4067 = !DILocation(line: 412, column: 51, scope: !4063)
!4068 = !DILocation(line: 412, column: 43, scope: !4063)
!4069 = !DILocation(line: 412, column: 41, scope: !4063)
!4070 = !DILocation(line: 412, column: 11, scope: !4061)
!4071 = !DILocation(line: 413, column: 18, scope: !4063)
!4072 = !DILocation(line: 413, column: 2, scope: !4063)
!4073 = !DILocation(line: 414, column: 30, scope: !4061)
!4074 = !DILocation(line: 414, column: 26, scope: !4061)
!4075 = !DILocation(line: 414, column: 7, scope: !4061)
!4076 = !DILocation(line: 414, column: 24, scope: !4061)
!4077 = !DILocation(line: 415, column: 5, scope: !4061)
!4078 = !DILocation(line: 416, column: 1, scope: !4047)
!4079 = distinct !DISubprogram(name: "assign_dfs_numbers", scope: !1, file: !1, line: 589, type: !4080, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4082)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{null, !1400, !1442}
!4082 = !{!4083, !4084, !4085}
!4083 = !DILocalVariable(name: "node", arg: 1, scope: !4079, file: !1, line: 589, type: !1400)
!4084 = !DILocalVariable(name: "num", arg: 2, scope: !4079, file: !1, line: 589, type: !1442)
!4085 = !DILocalVariable(name: "son", scope: !4079, file: !1, line: 591, type: !1400)
!4086 = !DILocation(line: 0, scope: !4079)
!4087 = !DILocation(line: 593, column: 28, scope: !4079)
!4088 = !DILocation(line: 593, column: 9, scope: !4079)
!4089 = !DILocation(line: 593, column: 20, scope: !4079)
!4090 = !DILocation(line: 595, column: 13, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4079, file: !1, line: 595, column: 7)
!4092 = !DILocation(line: 595, column: 7, scope: !4091)
!4093 = !DILocation(line: 595, column: 7, scope: !4079)
!4094 = !DILocation(line: 597, column: 7, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4091, file: !1, line: 596, column: 5)
!4096 = !DILocation(line: 598, column: 24, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4095, file: !1, line: 598, column: 7)
!4098 = !DILocation(line: 598, column: 12, scope: !4097)
!4099 = !DILocation(line: 598, column: 49, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4097, file: !1, line: 598, column: 7)
!4101 = !DILocation(line: 0, scope: !4097)
!4102 = !DILocation(line: 598, column: 40, scope: !4100)
!4103 = !DILocation(line: 598, column: 7, scope: !4097)
!4104 = !DILocation(line: 599, column: 2, scope: !4100)
!4105 = !DILocation(line: 598, column: 7, scope: !4100)
!4106 = distinct !{!4106, !4103, !4107}
!4107 = !DILocation(line: 599, column: 30, scope: !4097)
!4108 = !DILocation(line: 602, column: 29, scope: !4079)
!4109 = !DILocation(line: 602, column: 9, scope: !4079)
!4110 = !DILocation(line: 602, column: 21, scope: !4079)
!4111 = !DILocation(line: 603, column: 1, scope: !4079)
!4112 = distinct !DISubprogram(name: "VEC_basic_block_heap_reserve", scope: !4, file: !4, line: 283, type: !4113, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4115)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!382, !2592, !382}
!4115 = !{!4116, !4117, !4118}
!4116 = !DILocalVariable(name: "vec_", arg: 1, scope: !4112, file: !4, line: 283, type: !2592)
!4117 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4112, file: !4, line: 283, type: !382)
!4118 = !DILocalVariable(name: "extend", scope: !4112, file: !4, line: 283, type: !382)
!4119 = !DILocation(line: 0, scope: !4112)
!4120 = !DILocation(line: 283, column: 1, scope: !4112)
!4121 = !DILocation(line: 283, column: 1, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4112, file: !4, line: 283, column: 1)
!4123 = distinct !DISubprogram(name: "VEC_basic_block_base_quick_push", scope: !4, file: !4, line: 281, type: !4124, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4127)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!1446, !4126, !389}
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!4127 = !{!4128, !4129, !4130}
!4128 = !DILocalVariable(name: "vec_", arg: 1, scope: !4123, file: !4, line: 281, type: !4126)
!4129 = !DILocalVariable(name: "obj_", arg: 2, scope: !4123, file: !4, line: 281, type: !389)
!4130 = !DILocalVariable(name: "slot_", scope: !4123, file: !4, line: 281, type: !1446)
!4131 = !DILocation(line: 0, scope: !4123)
!4132 = !DILocation(line: 281, column: 1, scope: !4123)
!4133 = distinct !DISubprogram(name: "VEC_basic_block_base_space", scope: !4, file: !4, line: 281, type: !4134, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4136)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!382, !4126, !382}
!4136 = !{!4137, !4138}
!4137 = !DILocalVariable(name: "vec_", arg: 1, scope: !4133, file: !4, line: 281, type: !4126)
!4138 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4133, file: !4, line: 281, type: !382)
!4139 = !DILocation(line: 0, scope: !4133)
!4140 = !DILocation(line: 281, column: 1, scope: !4133)
!4141 = distinct !DISubprogram(name: "single_pred_p", scope: !4, file: !4, line: 634, type: !4142, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4144)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!381, !2953}
!4144 = !{!4145}
!4145 = !DILocalVariable(name: "bb", arg: 1, scope: !4141, file: !4, line: 634, type: !2953)
!4146 = !DILocation(line: 0, scope: !4141)
!4147 = !DILocation(line: 636, column: 10, scope: !4141)
!4148 = !DILocation(line: 636, column: 33, scope: !4141)
!4149 = !DILocation(line: 636, column: 3, scope: !4141)
!4150 = distinct !DISubprogram(name: "single_pred", scope: !4, file: !4, line: 672, type: !4151, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4153)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!389, !2953}
!4153 = !{!4154}
!4154 = !DILocalVariable(name: "bb", arg: 1, scope: !4150, file: !4, line: 672, type: !2953)
!4155 = !DILocation(line: 0, scope: !4150)
!4156 = !DILocation(line: 674, column: 10, scope: !4150)
!4157 = !DILocation(line: 674, column: 33, scope: !4150)
!4158 = !DILocation(line: 674, column: 3, scope: !4150)
!4159 = distinct !DISubprogram(name: "VEC_basic_block_base_unordered_remove", scope: !4, file: !4, line: 281, type: !4160, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4162)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!389, !4126, !5}
!4162 = !{!4163, !4164, !4165, !4166}
!4163 = !DILocalVariable(name: "vec_", arg: 1, scope: !4159, file: !4, line: 281, type: !4126)
!4164 = !DILocalVariable(name: "ix_", arg: 2, scope: !4159, file: !4, line: 281, type: !5)
!4165 = !DILocalVariable(name: "slot_", scope: !4159, file: !4, line: 281, type: !1446)
!4166 = !DILocalVariable(name: "obj_", scope: !4159, file: !4, line: 281, type: !389)
!4167 = !DILocation(line: 0, scope: !4159)
!4168 = !DILocation(line: 281, column: 1, scope: !4159)
!4169 = distinct !DISubprogram(name: "single_pred_edge", scope: !4, file: !4, line: 653, type: !4170, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4172)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!407, !2953}
!4172 = !{!4173}
!4173 = !DILocalVariable(name: "bb", arg: 1, scope: !4169, file: !4, line: 653, type: !2953)
!4174 = !DILocation(line: 0, scope: !4169)
!4175 = !DILocation(line: 655, column: 3, scope: !4169)
!4176 = !DILocation(line: 656, column: 10, scope: !4169)
!4177 = !DILocation(line: 656, column: 3, scope: !4169)
!4178 = distinct !DISubprogram(name: "VEC_int_heap_safe_push", scope: !1462, file: !1462, line: 32, type: !4179, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4182)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!1442, !1459, !4181}
!4181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!4182 = !{!4183, !4184}
!4183 = !DILocalVariable(name: "vec_", arg: 1, scope: !4178, file: !1462, line: 32, type: !1459)
!4184 = !DILocalVariable(name: "obj_", arg: 2, scope: !4178, file: !1462, line: 32, type: !4181)
!4185 = !DILocation(line: 0, scope: !4178)
!4186 = !DILocation(line: 32, column: 1, scope: !4178)
!4187 = distinct !DISubprogram(name: "VEC_int_base_iterate", scope: !1462, file: !1462, line: 31, type: !4188, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4192)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!382, !4190, !5, !1442}
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1466)
!4192 = !{!4193, !4194, !4195}
!4193 = !DILocalVariable(name: "vec_", arg: 1, scope: !4187, file: !1462, line: 31, type: !4190)
!4194 = !DILocalVariable(name: "ix_", arg: 2, scope: !4187, file: !1462, line: 31, type: !5)
!4195 = !DILocalVariable(name: "ptr", arg: 3, scope: !4187, file: !1462, line: 31, type: !1442)
!4196 = !DILocation(line: 0, scope: !4187)
!4197 = !DILocation(line: 31, column: 1, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4187, file: !1462, line: 31, column: 1)
!4199 = !DILocation(line: 31, column: 1, scope: !4187)
!4200 = !DILocation(line: 31, column: 1, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4198, file: !1462, line: 31, column: 1)
!4202 = !DILocation(line: 31, column: 1, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4198, file: !1462, line: 31, column: 1)
!4204 = !DILocation(line: 0, scope: !4198)
!4205 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !1462, file: !1462, line: 32, type: !4206, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4208)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{null, !1459}
!4208 = !{!4209}
!4209 = !DILocalVariable(name: "vec_", arg: 1, scope: !4205, file: !1462, line: 32, type: !1459)
!4210 = !DILocation(line: 0, scope: !4205)
!4211 = !DILocation(line: 32, column: 1, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4205, file: !1462, line: 32, column: 1)
!4213 = !DILocation(line: 32, column: 1, scope: !4205)
!4214 = distinct !DISubprogram(name: "VEC_int_heap_reserve", scope: !1462, file: !1462, line: 32, type: !4215, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!382, !1459, !382}
!4217 = !{!4218, !4219, !4220}
!4218 = !DILocalVariable(name: "vec_", arg: 1, scope: !4214, file: !1462, line: 32, type: !1459)
!4219 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4214, file: !1462, line: 32, type: !382)
!4220 = !DILocalVariable(name: "extend", scope: !4214, file: !1462, line: 32, type: !382)
!4221 = !DILocation(line: 0, scope: !4214)
!4222 = !DILocation(line: 32, column: 1, scope: !4214)
!4223 = !DILocation(line: 32, column: 1, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4214, file: !1462, line: 32, column: 1)
!4225 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !1462, file: !1462, line: 31, type: !4226, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4229)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!1442, !4228, !382}
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!4229 = !{!4230, !4231, !4232}
!4230 = !DILocalVariable(name: "vec_", arg: 1, scope: !4225, file: !1462, line: 31, type: !4228)
!4231 = !DILocalVariable(name: "obj_", arg: 2, scope: !4225, file: !1462, line: 31, type: !382)
!4232 = !DILocalVariable(name: "slot_", scope: !4225, file: !1462, line: 31, type: !1442)
!4233 = !DILocation(line: 0, scope: !4225)
!4234 = !DILocation(line: 31, column: 1, scope: !4225)
!4235 = distinct !DISubprogram(name: "VEC_int_base_space", scope: !1462, file: !1462, line: 31, type: !4236, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4238)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!382, !4228, !382}
!4238 = !{!4239, !4240}
!4239 = !DILocalVariable(name: "vec_", arg: 1, scope: !4235, file: !1462, line: 31, type: !4228)
!4240 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4235, file: !1462, line: 31, type: !382)
!4241 = !DILocation(line: 0, scope: !4235)
!4242 = !DILocation(line: 31, column: 1, scope: !4235)
