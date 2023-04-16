; ModuleID = 'lcm.bc'
source_filename = "lcm.c"
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.edge_list = type { i32, i32, %struct.edge_def** }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1461 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1474, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1475, metadata !DIExpression()), !dbg !1476
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1477
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1478
  ret i32 %call, !dbg !1479
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1480 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1484
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1485
  ret i32 %call, !dbg !1486
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1487 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1542, metadata !DIExpression()), !dbg !1543
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1544
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1544
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1544
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1544
  %cmp = icmp uge i8* %0, %1, !dbg !1544
  %conv1 = zext i1 %cmp to i64, !dbg !1544
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1544
  %tobool = icmp eq i64 %expval, 0, !dbg !1544
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1544

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1544
  br label %cond.end, !dbg !1544

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1544
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1544
  %2 = load i8, i8* %0, align 1, !dbg !1544
  %conv3 = zext i8 %2 to i32, !dbg !1544
  br label %cond.end, !dbg !1544

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1544
  ret i32 %cond, !dbg !1545
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1546 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1548, metadata !DIExpression()), !dbg !1549
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1550
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1550
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1550
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1550
  %cmp = icmp uge i8* %0, %1, !dbg !1550
  %conv1 = zext i1 %cmp to i64, !dbg !1550
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1550
  %tobool = icmp eq i64 %expval, 0, !dbg !1550
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1550

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1550
  br label %cond.end, !dbg !1550

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1550
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1550
  %2 = load i8, i8* %0, align 1, !dbg !1550
  %conv3 = zext i8 %2 to i32, !dbg !1550
  br label %cond.end, !dbg !1550

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1550
  ret i32 %cond, !dbg !1551
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1552 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1553
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1553
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1553
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1553
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1553
  %cmp = icmp uge i8* %1, %2, !dbg !1553
  %conv1 = zext i1 %cmp to i64, !dbg !1553
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1553
  %tobool = icmp eq i64 %expval, 0, !dbg !1553
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1553

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1553
  br label %cond.end, !dbg !1553

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1553
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1553
  %3 = load i8, i8* %1, align 1, !dbg !1553
  %conv3 = zext i8 %3 to i32, !dbg !1553
  br label %cond.end, !dbg !1553

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1553
  ret i32 %cond, !dbg !1554
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1555 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1559, metadata !DIExpression()), !dbg !1560
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1561
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1562
  ret i32 %call, !dbg !1563
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1564 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1568, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1569, metadata !DIExpression()), !dbg !1570
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1571
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1571
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1571
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1571
  %cmp = icmp uge i8* %0, %1, !dbg !1571
  %conv1 = zext i1 %cmp to i64, !dbg !1571
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1571
  %tobool = icmp eq i64 %expval, 0, !dbg !1571
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1571

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1571
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1571
  br label %cond.end, !dbg !1571

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1571
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1571
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1571
  store i8 %conv2, i8* %0, align 1, !dbg !1571
  %conv6 = and i32 %__c, 255, !dbg !1571
  br label %cond.end, !dbg !1571

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1571
  ret i32 %cond, !dbg !1572
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1573 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1575, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1576, metadata !DIExpression()), !dbg !1577
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1578
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1578
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1578
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1578
  %cmp = icmp uge i8* %0, %1, !dbg !1578
  %conv1 = zext i1 %cmp to i64, !dbg !1578
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1578
  %tobool = icmp eq i64 %expval, 0, !dbg !1578
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1578

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1578
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1578
  br label %cond.end, !dbg !1578

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1578
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1578
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1578
  store i8 %conv2, i8* %0, align 1, !dbg !1578
  %conv6 = and i32 %__c, 255, !dbg !1578
  br label %cond.end, !dbg !1578

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1578
  ret i32 %cond, !dbg !1579
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1580 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1582, metadata !DIExpression()), !dbg !1583
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1584
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1584
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1584
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1584
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1584
  %cmp = icmp uge i8* %1, %2, !dbg !1584
  %conv1 = zext i1 %cmp to i64, !dbg !1584
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1584
  %tobool = icmp eq i64 %expval, 0, !dbg !1584
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1584

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1584
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1584
  br label %cond.end, !dbg !1584

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1584
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1584
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1584
  store i8 %conv4, i8* %1, align 1, !dbg !1584
  %conv6 = and i32 %__c, 255, !dbg !1584
  br label %cond.end, !dbg !1584

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1584
  ret i32 %cond, !dbg !1585
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1586 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1592, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1593, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1594, metadata !DIExpression()), !dbg !1595
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1596
  ret i64 %call, !dbg !1597
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1598 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1600, metadata !DIExpression()), !dbg !1601
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1602
  %0 = load i32, i32* %_flags, align 8, !dbg !1602
  %and = lshr i32 %0, 4, !dbg !1602
  %and.lobit = and i32 %and, 1, !dbg !1602
  ret i32 %and.lobit, !dbg !1603
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1604 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1606, metadata !DIExpression()), !dbg !1607
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1608
  %0 = load i32, i32* %_flags, align 8, !dbg !1608
  %and = lshr i32 %0, 5, !dbg !1608
  %and.lobit = and i32 %and, 1, !dbg !1608
  ret i32 %and.lobit, !dbg !1609
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1610 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1613, metadata !DIExpression()), !dbg !1614
  %__c.off = add i32 %__c, 128, !dbg !1615
  %0 = icmp ult i32 %__c.off, 384, !dbg !1615
  br i1 %0, label %cond.true, label %cond.end, !dbg !1615

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1616
  %1 = load i32*, i32** %call, align 8, !dbg !1617
  %idxprom = sext i32 %__c to i64, !dbg !1618
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1618
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1618
  br label %cond.end, !dbg !1619

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1619
  ret i32 %cond, !dbg !1620
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1621 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1623, metadata !DIExpression()), !dbg !1624
  %__c.off = add i32 %__c, 128, !dbg !1625
  %0 = icmp ult i32 %__c.off, 384, !dbg !1625
  br i1 %0, label %cond.true, label %cond.end, !dbg !1625

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1626
  %1 = load i32*, i32** %call, align 8, !dbg !1627
  %idxprom = sext i32 %__c to i64, !dbg !1628
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1628
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1628
  br label %cond.end, !dbg !1629

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1629
  ret i32 %cond, !dbg !1630
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1631 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1636, metadata !DIExpression()), !dbg !1637
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1638
  %conv = trunc i64 %call to i32, !dbg !1639
  ret i32 %conv, !dbg !1640
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1641 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1645, metadata !DIExpression()), !dbg !1646
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1647
  ret i64 %call, !dbg !1648
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1649 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1654, metadata !DIExpression()), !dbg !1655
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1656
  ret i64 %call, !dbg !1657
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1658 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1664, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1665, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1666, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1667, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1668, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i64 0, metadata !1669, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1670, metadata !DIExpression()), !dbg !1674
  br label %while.cond, !dbg !1675

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1676
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1674
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1670, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1669, metadata !DIExpression()), !dbg !1674
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1677
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1675

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1678
  %div = lshr i64 %add, 1, !dbg !1680
  call void @llvm.dbg.value(metadata i64 %div, metadata !1671, metadata !DIExpression()), !dbg !1674
  %mul = mul i64 %div, %__size, !dbg !1681
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1682
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1672, metadata !DIExpression()), !dbg !1674
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1683
  call void @llvm.dbg.value(metadata i32 %call, metadata !1673, metadata !DIExpression()), !dbg !1674
  %cmp1 = icmp slt i32 %call, 0, !dbg !1684
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1686

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1687
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1689

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1690
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1669, metadata !DIExpression()), !dbg !1674
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1674
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1674
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1670, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1669, metadata !DIExpression()), !dbg !1674
  br label %while.cond, !dbg !1675, !llvm.loop !1691

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1674
  ret i8* %retval.0, !dbg !1693
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1694 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1700, metadata !DIExpression()), !dbg !1701
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1702
  ret double %call, !dbg !1703
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1704 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1713, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1714, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i32 %base, metadata !1715, metadata !DIExpression()), !dbg !1716
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1717
  ret i64 %call, !dbg !1718
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1719 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1725, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1726, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i32 %base, metadata !1727, metadata !DIExpression()), !dbg !1728
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1729
  ret i64 %call, !dbg !1730
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1731 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1742, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1743, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i32 %base, metadata !1744, metadata !DIExpression()), !dbg !1745
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1746
  ret i64 %call, !dbg !1747
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1748 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1752, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1753, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 %base, metadata !1754, metadata !DIExpression()), !dbg !1755
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1756
  ret i64 %call, !dbg !1757
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1758 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1798, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1799, metadata !DIExpression()), !dbg !1800
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1801
  ret i32 %call, !dbg !1802
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1803 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1805, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1806, metadata !DIExpression()), !dbg !1807
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1808
  ret i32 %call, !dbg !1809
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1810 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1814, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1815, metadata !DIExpression()), !dbg !1816
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1817
  ret i32 %call, !dbg !1818
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1819 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1823, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1824, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1825, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1826, metadata !DIExpression()), !dbg !1827
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1828
  ret i32 %call, !dbg !1829
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1830 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1834, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1835, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1836, metadata !DIExpression()), !dbg !1837
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1836, metadata !DIExpression(DW_OP_deref)), !dbg !1837
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1838
  ret i32 %call, !dbg !1839
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1840 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1844, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1845, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1846, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1847, metadata !DIExpression()), !dbg !1848
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1847, metadata !DIExpression(DW_OP_deref)), !dbg !1848
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1849
  ret i32 %call, !dbg !1850
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1851 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1875, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1876, metadata !DIExpression()), !dbg !1877
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1878
  ret i32 %call, !dbg !1879
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1880 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1882, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1883, metadata !DIExpression()), !dbg !1884
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1885
  ret i32 %call, !dbg !1886
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1887 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1891, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1892, metadata !DIExpression()), !dbg !1893
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !1894
  ret i32 %call, !dbg !1895
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1896 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1900, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1901, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1902, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1903, metadata !DIExpression()), !dbg !1904
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !1905
  ret i32 %call, !dbg !1906
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.edge_list* @pre_edge_lcm(i32 %n_exprs, %struct.simple_bitmap_def** %transp, %struct.simple_bitmap_def** %avloc, %struct.simple_bitmap_def** %antloc, %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def*** %insert, %struct.simple_bitmap_def*** %del) local_unnamed_addr #4 !dbg !1907 {
entry:
  call void @llvm.dbg.value(metadata i32 %n_exprs, metadata !1930, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %transp, metadata !1931, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %avloc, metadata !1932, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %antloc, metadata !1933, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %kill, metadata !1934, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def*** %insert, metadata !1935, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def*** %del, metadata !1936, metadata !DIExpression()), !dbg !1946
  %call = tail call %struct.edge_list* @create_edge_list() #6, !dbg !1947
  call void @llvm.dbg.value(metadata %struct.edge_list* %call, metadata !1944, metadata !DIExpression()), !dbg !1946
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %call, i64 0, i32 1, !dbg !1948
  %0 = load i32, i32* %num_edges1, align 4, !dbg !1948
  call void @llvm.dbg.value(metadata i32 %0, metadata !1945, metadata !DIExpression()), !dbg !1946
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1949
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !1949
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !1949
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 5, !dbg !1949
  %3 = load i32, i32* %x_last_basic_block, align 8, !dbg !1949
  %call2 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %3, i32 %n_exprs) #6, !dbg !1950
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call2, metadata !1940, metadata !DIExpression()), !dbg !1946
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1951
  %cfg4 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !1951
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg4, align 8, !dbg !1951
  %x_last_basic_block5 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 5, !dbg !1951
  %6 = load i32, i32* %x_last_basic_block5, align 8, !dbg !1951
  %call6 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %6, i32 %n_exprs) #6, !dbg !1952
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call6, metadata !1941, metadata !DIExpression()), !dbg !1946
  tail call void @compute_available(%struct.simple_bitmap_def** %avloc, %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def** %call6, %struct.simple_bitmap_def** %call2) #7, !dbg !1953
  %7 = bitcast %struct.simple_bitmap_def** %call2 to i8*, !dbg !1954
  tail call void @free(i8* %7) #6, !dbg !1954
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1955
  %cfg8 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !1955
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg8, align 8, !dbg !1955
  %x_last_basic_block9 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 5, !dbg !1955
  %10 = load i32, i32* %x_last_basic_block9, align 8, !dbg !1955
  %call10 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %10, i32 %n_exprs) #6, !dbg !1956
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call10, metadata !1937, metadata !DIExpression()), !dbg !1946
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1957
  %cfg12 = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 1, !dbg !1957
  %12 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg12, align 8, !dbg !1957
  %x_last_basic_block13 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 5, !dbg !1957
  %13 = load i32, i32* %x_last_basic_block13, align 8, !dbg !1957
  %call14 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %13, i32 %n_exprs) #6, !dbg !1958
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call14, metadata !1938, metadata !DIExpression()), !dbg !1946
  tail call fastcc void @compute_antinout_edge(%struct.simple_bitmap_def** %antloc, %struct.simple_bitmap_def** %transp, %struct.simple_bitmap_def** %call10, %struct.simple_bitmap_def** %call14) #7, !dbg !1959
  %call15 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %0, i32 %n_exprs) #6, !dbg !1960
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call15, metadata !1939, metadata !DIExpression()), !dbg !1946
  tail call fastcc void @compute_earliest(%struct.edge_list* %call, i32 %n_exprs, %struct.simple_bitmap_def** %call10, %struct.simple_bitmap_def** %call14, %struct.simple_bitmap_def** %call6, %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def** %call15) #7, !dbg !1961
  %14 = bitcast %struct.simple_bitmap_def** %call14 to i8*, !dbg !1962
  tail call void @free(i8* %14) #6, !dbg !1962
  %15 = bitcast %struct.simple_bitmap_def** %call10 to i8*, !dbg !1963
  tail call void @free(i8* %15) #6, !dbg !1963
  %16 = bitcast %struct.simple_bitmap_def** %call6 to i8*, !dbg !1964
  tail call void @free(i8* %16) #6, !dbg !1964
  %call16 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %0, i32 %n_exprs) #6, !dbg !1965
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call16, metadata !1942, metadata !DIExpression()), !dbg !1946
  %17 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1966
  %cfg18 = getelementptr inbounds %struct.function, %struct.function* %17, i64 0, i32 1, !dbg !1966
  %18 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg18, align 8, !dbg !1966
  %x_last_basic_block19 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %18, i64 0, i32 5, !dbg !1966
  %19 = load i32, i32* %x_last_basic_block19, align 8, !dbg !1966
  %add = add nsw i32 %19, 1, !dbg !1967
  %call20 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %add, i32 %n_exprs) #6, !dbg !1968
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call20, metadata !1943, metadata !DIExpression()), !dbg !1946
  tail call fastcc void @compute_laterin(%struct.edge_list* %call, %struct.simple_bitmap_def** %call15, %struct.simple_bitmap_def** %antloc, %struct.simple_bitmap_def** %call16, %struct.simple_bitmap_def** %call20) #7, !dbg !1969
  %20 = bitcast %struct.simple_bitmap_def** %call15 to i8*, !dbg !1970
  tail call void @free(i8* %20) #6, !dbg !1970
  %call21 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %0, i32 %n_exprs) #6, !dbg !1971
  store %struct.simple_bitmap_def** %call21, %struct.simple_bitmap_def*** %insert, align 8, !dbg !1972
  %21 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1973
  %cfg23 = getelementptr inbounds %struct.function, %struct.function* %21, i64 0, i32 1, !dbg !1973
  %22 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg23, align 8, !dbg !1973
  %x_last_basic_block24 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %22, i64 0, i32 5, !dbg !1973
  %23 = load i32, i32* %x_last_basic_block24, align 8, !dbg !1973
  %call25 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %23, i32 %n_exprs) #6, !dbg !1974
  store %struct.simple_bitmap_def** %call25, %struct.simple_bitmap_def*** %del, align 8, !dbg !1975
  %24 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %insert, align 8, !dbg !1976
  tail call fastcc void @compute_insert_delete(%struct.edge_list* %call, %struct.simple_bitmap_def** %antloc, %struct.simple_bitmap_def** %call16, %struct.simple_bitmap_def** %call20, %struct.simple_bitmap_def** %24, %struct.simple_bitmap_def** %call25) #7, !dbg !1977
  %25 = bitcast %struct.simple_bitmap_def** %call20 to i8*, !dbg !1978
  tail call void @free(i8* %25) #6, !dbg !1978
  %26 = bitcast %struct.simple_bitmap_def** %call16 to i8*, !dbg !1979
  tail call void @free(i8* %26) #6, !dbg !1979
  ret %struct.edge_list* %call, !dbg !1980
}

declare dso_local %struct.edge_list* @create_edge_list() local_unnamed_addr #1

declare dso_local %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @compute_available(%struct.simple_bitmap_def** %avloc, %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def** %avout, %struct.simple_bitmap_def** %avin) local_unnamed_addr #4 !dbg !1981 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp64 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %avloc, metadata !1985, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %kill, metadata !1986, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %avout, metadata !1987, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %avin, metadata !1988, metadata !DIExpression()), !dbg !2003
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2004
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2004
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2005
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2005
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2006
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2006
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2006
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 3, !dbg !2006
  %4 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2006
  %sub = add nsw i32 %4, -2, !dbg !2006
  %conv = sext i32 %sub to i64, !dbg !2006
  %mul = shl nsw i64 %conv, 3, !dbg !2006
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2006
  %5 = bitcast i8* %call to %struct.basic_block_def**, !dbg !2006
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %5, metadata !1990, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %5, metadata !1992, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %5, metadata !1991, metadata !DIExpression()), !dbg !2003
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2007
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 1, !dbg !2007
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !2007
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 5, !dbg !2007
  %8 = load i32, i32* %x_last_basic_block, align 8, !dbg !2007
  tail call void @sbitmap_vector_ones(%struct.simple_bitmap_def** %avout, i32 %8) #6, !dbg !2008
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2009
  %cfg4 = getelementptr inbounds %struct.function, %struct.function* %9, i64 0, i32 1, !dbg !2009
  %10 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg4, align 8, !dbg !2009
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 0, !dbg !2009
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2009
  br label %for.cond, !dbg !2009

for.cond:                                         ; preds = %for.body, %entry
  %12 = phi %struct.control_flow_graph* [ %10, %entry ], [ %.pre2, %for.body ], !dbg !2011
  %qin.0 = phi %struct.basic_block_def** [ %5, %entry ], [ %incdec.ptr, %for.body ], !dbg !2003
  %.pn = phi %struct.basic_block_def* [ %11, %entry ], [ %bb.0, %for.body ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2013
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2013
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !1994, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.0, metadata !1991, metadata !DIExpression()), !dbg !2003
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 1, !dbg !2011
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2011
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %13, !dbg !2011
  br i1 %cmp, label %for.end, label %for.body, !dbg !2009

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %qin.0, i64 1, !dbg !2014
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr, metadata !1991, metadata !DIExpression()), !dbg !2003
  store %struct.basic_block_def* %bb.0, %struct.basic_block_def** %qin.0, align 8, !dbg !2016
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !2017
  %14 = bitcast i8** %aux to %struct.basic_block_def**, !dbg !2018
  store %struct.basic_block_def* %bb.0, %struct.basic_block_def** %14, align 8, !dbg !2018
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2011
  %cfg6.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2019
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6.phi.trans.insert, align 8, !dbg !2011
  br label %for.cond, !dbg !2011, !llvm.loop !2020

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct.control_flow_graph* [ %12, %for.cond ], !dbg !2011
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %5, metadata !1991, metadata !DIExpression()), !dbg !2003
  %x_n_basic_blocks11 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa, i64 0, i32 3, !dbg !2022
  %15 = load i32, i32* %x_n_basic_blocks11, align 8, !dbg !2022
  %sub12 = add nsw i32 %15, -2, !dbg !2023
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %arrayidx, metadata !1993, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i32 %sub12, metadata !1995, metadata !DIExpression()), !dbg !2003
  %16 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2024
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #8, !dbg !2024
  %x_entry_block_ptr19 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa, i64 0, i32 0, !dbg !2024
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr19, align 8, !dbg !2024
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i64 0, i32 1, !dbg !2024
  %call20 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2024
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2024
  %19 = extractvalue { i32, %struct.VEC_edge_gc** } %call20, 0, !dbg !2024
  store i32 %19, i32* %18, align 8, !dbg !2024
  %20 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2024
  %21 = extractvalue { i32, %struct.VEC_edge_gc** } %call20, 1, !dbg !2024
  store %struct.VEC_edge_gc** %21, %struct.VEC_edge_gc*** %20, align 8, !dbg !2024
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %16, i64 16, i1 false), !dbg !2024
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #8, !dbg !2024
  %22 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2026
  %23 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2026
  br label %for.cond21, !dbg !2024

for.cond21:                                       ; preds = %for.body23, %for.end
  %24 = load i32, i32* %22, align 8, !dbg !2028
  %25 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %23, align 8, !dbg !2028
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !1989, metadata !DIExpression(DW_OP_deref)), !dbg !2003
  %call22 = call fastcc zeroext i8 @ei_cond(i32 %24, %struct.VEC_edge_gc** %25, %struct.edge_def** nonnull %e) #7, !dbg !2028
  %tobool = icmp eq i8 %call22, 0, !dbg !2024
  br i1 %tobool, label %while.cond.preheader, label %for.body23, !dbg !2024

while.cond.preheader:                             ; preds = %for.cond21
  %idxprom = sext i32 %sub12 to i64, !dbg !2029
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %5, i64 %idxprom, !dbg !2029
  %26 = bitcast %struct.edge_iterator* %tmp64 to i8*, !dbg !2030
  %27 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp64, i64 0, i32 0, !dbg !2030
  %28 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp64, i64 0, i32 1, !dbg !2030
  %29 = bitcast %struct.edge_def** %e to i64*, !dbg !2034
  br label %while.cond, !dbg !2038

for.body23:                                       ; preds = %for.cond21
  %30 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2039
  %cfg25 = getelementptr inbounds %struct.function, %struct.function* %30, i64 0, i32 1, !dbg !2039
  %31 = bitcast %struct.control_flow_graph** %cfg25 to i64**, !dbg !2039
  %32 = load i64*, i64** %31, align 8, !dbg !2039
  %33 = load i64, i64* %32, align 8, !dbg !2039
  %34 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2040
  call void @llvm.dbg.value(metadata %struct.edge_def* %34, metadata !1989, metadata !DIExpression()), !dbg !2003
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i64 0, i32 1, !dbg !2041
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2041
  %aux27 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i64 0, i32 2, !dbg !2042
  %36 = bitcast i8** %aux27 to i64*, !dbg !2043
  store i64 %33, i64* %36, align 8, !dbg !2043
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !1996, metadata !DIExpression(DW_OP_deref)), !dbg !2003
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2028
  br label %for.cond21, !dbg !2028, !llvm.loop !2044

while.cond:                                       ; preds = %while.cond.preheader, %if.end92
  %qin.1 = phi %struct.basic_block_def** [ %qin.5, %if.end92 ], [ %5, %while.cond.preheader ], !dbg !2046
  %qout.0 = phi %struct.basic_block_def** [ %spec.select, %if.end92 ], [ %5, %while.cond.preheader ], !dbg !2003
  %qlen.0 = phi i32 [ %qlen.3, %if.end92 ], [ %sub12, %while.cond.preheader ], !dbg !2003
  call void @llvm.dbg.value(metadata i32 %qlen.0, metadata !1995, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qout.0, metadata !1992, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.1, metadata !1991, metadata !DIExpression()), !dbg !2003
  %tobool30 = icmp eq i32 %qlen.0, 0, !dbg !2038
  br i1 %tobool30, label %while.end, label %while.body, !dbg !2038

while.body:                                       ; preds = %while.cond
  %incdec.ptr31 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %qout.0, i64 1, !dbg !2047
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr31, metadata !1992, metadata !DIExpression()), !dbg !2003
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %qout.0, align 8, !dbg !2048
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %37, metadata !1994, metadata !DIExpression()), !dbg !2003
  %dec = add i32 %qlen.0, -1, !dbg !2049
  call void @llvm.dbg.value(metadata i32 %dec, metadata !1995, metadata !DIExpression()), !dbg !2003
  %cmp32 = icmp ult %struct.basic_block_def** %incdec.ptr31, %arrayidx, !dbg !2050
  %spec.select = select i1 %cmp32, %struct.basic_block_def** %incdec.ptr31, %struct.basic_block_def** %5, !dbg !2052
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %spec.select, metadata !1992, metadata !DIExpression()), !dbg !2003
  %aux34 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i64 0, i32 2, !dbg !2053
  %38 = load i8*, i8** %aux34, align 8, !dbg !2053
  %39 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2055
  %cfg36 = getelementptr inbounds %struct.function, %struct.function* %39, i64 0, i32 1, !dbg !2055
  %40 = bitcast %struct.control_flow_graph** %cfg36 to i8***, !dbg !2055
  %41 = load i8**, i8*** %40, align 8, !dbg !2055
  %42 = load i8*, i8** %41, align 8, !dbg !2055
  %cmp38 = icmp eq i8* %38, %42, !dbg !2056
  br i1 %cmp38, label %if.then40, label %if.else, !dbg !2057

if.then40:                                        ; preds = %while.body
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i64 0, i32 9, !dbg !2058
  %43 = load i32, i32* %index, align 8, !dbg !2058
  %idxprom41 = sext i32 %43 to i64, !dbg !2059
  %arrayidx42 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %avin, i64 %idxprom41, !dbg !2059
  %44 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx42, align 8, !dbg !2059
  call void @sbitmap_zero(%struct.simple_bitmap_def* %44) #6, !dbg !2060
  br label %if.end48, !dbg !2060

if.else:                                          ; preds = %while.body
  store i8* null, i8** %aux34, align 8, !dbg !2061
  %index44 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i64 0, i32 9, !dbg !2063
  %45 = load i32, i32* %index44, align 8, !dbg !2063
  %idxprom45 = sext i32 %45 to i64, !dbg !2064
  %arrayidx46 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %avin, i64 %idxprom45, !dbg !2064
  %46 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx46, align 8, !dbg !2064
  call void @sbitmap_intersection_of_preds(%struct.simple_bitmap_def* %46, %struct.simple_bitmap_def** %avout, i32 %45) #6, !dbg !2065
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then40
  %index49 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i64 0, i32 9, !dbg !2066
  %47 = load i32, i32* %index49, align 8, !dbg !2066
  %idxprom50 = sext i32 %47 to i64, !dbg !2067
  %arrayidx51 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %avout, i64 %idxprom50, !dbg !2067
  %48 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx51, align 8, !dbg !2067
  %arrayidx54 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %avloc, i64 %idxprom50, !dbg !2068
  %49 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx54, align 8, !dbg !2068
  %arrayidx57 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %avin, i64 %idxprom50, !dbg !2069
  %50 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx57, align 8, !dbg !2069
  %arrayidx60 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %kill, i64 %idxprom50, !dbg !2070
  %51 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx60, align 8, !dbg !2070
  %call61 = call zeroext i8 @sbitmap_union_of_diff_cg(%struct.simple_bitmap_def* %48, %struct.simple_bitmap_def* %49, %struct.simple_bitmap_def* %50, %struct.simple_bitmap_def* %51) #6, !dbg !2071
  %tobool62 = icmp eq i8 %call61, 0, !dbg !2071
  br i1 %tobool62, label %if.end92, label %if.then63, !dbg !2072

if.then63:                                        ; preds = %if.end48
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #8, !dbg !2073
  %succs65 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i64 0, i32 1, !dbg !2073
  %call66 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs65) #7, !dbg !2073
  %52 = extractvalue { i32, %struct.VEC_edge_gc** } %call66, 0, !dbg !2073
  store i32 %52, i32* %27, align 8, !dbg !2073
  %53 = extractvalue { i32, %struct.VEC_edge_gc** } %call66, 1, !dbg !2073
  store %struct.VEC_edge_gc** %53, %struct.VEC_edge_gc*** %28, align 8, !dbg !2073
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %26, i64 16, i1 false), !dbg !2073
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #8, !dbg !2073
  br label %for.cond67, !dbg !2073

for.cond67:                                       ; preds = %for.inc90, %if.then63
  %qin.2 = phi %struct.basic_block_def** [ %qin.1, %if.then63 ], [ %qin.4, %for.inc90 ], !dbg !2046
  %qlen.1 = phi i32 [ %dec, %if.then63 ], [ %qlen.2, %for.inc90 ], !dbg !2049
  call void @llvm.dbg.value(metadata i32 %qlen.1, metadata !1995, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.2, metadata !1991, metadata !DIExpression()), !dbg !2003
  %54 = load i32, i32* %22, align 8, !dbg !2074
  %55 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %23, align 8, !dbg !2074
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !1989, metadata !DIExpression(DW_OP_deref)), !dbg !2003
  %call68 = call fastcc zeroext i8 @ei_cond(i32 %54, %struct.VEC_edge_gc** %55, %struct.edge_def** nonnull %e) #7, !dbg !2074
  %tobool69 = icmp eq i8 %call68, 0, !dbg !2073
  br i1 %tobool69, label %if.end92.loopexit, label %for.body70, !dbg !2073

for.body70:                                       ; preds = %for.cond67
  %56 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2075
  call void @llvm.dbg.value(metadata %struct.edge_def* %56, metadata !1989, metadata !DIExpression()), !dbg !2003
  %dest71 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %56, i64 0, i32 1, !dbg !2076
  %57 = load %struct.basic_block_def*, %struct.basic_block_def** %dest71, align 8, !dbg !2076
  %aux72 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %57, i64 0, i32 2, !dbg !2077
  %58 = load i8*, i8** %aux72, align 8, !dbg !2077
  %tobool73 = icmp eq i8* %58, null, !dbg !2075
  %59 = ptrtoint %struct.basic_block_def* %57 to i64, !dbg !2078
  br i1 %tobool73, label %land.lhs.true, label %for.inc90, !dbg !2078

land.lhs.true:                                    ; preds = %for.body70
  call void @llvm.dbg.value(metadata %struct.edge_def* %56, metadata !1989, metadata !DIExpression()), !dbg !2003
  %60 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2079
  %cfg76 = getelementptr inbounds %struct.function, %struct.function* %60, i64 0, i32 1, !dbg !2079
  %61 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg76, align 8, !dbg !2079
  %x_exit_block_ptr77 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %61, i64 0, i32 1, !dbg !2079
  %62 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr77, align 8, !dbg !2079
  %cmp78 = icmp eq %struct.basic_block_def* %57, %62, !dbg !2080
  br i1 %cmp78, label %for.inc90, label %if.then80, !dbg !2081

if.then80:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.edge_def* %56, metadata !1989, metadata !DIExpression()), !dbg !2003
  %incdec.ptr82 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %qin.2, i64 1, !dbg !2082
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr82, metadata !1991, metadata !DIExpression()), !dbg !2003
  %63 = bitcast %struct.basic_block_def** %qin.2 to i64*, !dbg !2083
  store i64 %59, i64* %63, align 8, !dbg !2083
  %64 = load i64, i64* %29, align 8, !dbg !2084
  %.cast = inttoptr i64 %64 to %struct.edge_def*, !dbg !2085
  call void @llvm.dbg.value(metadata %struct.edge_def* %.cast, metadata !1989, metadata !DIExpression()), !dbg !2003
  %dest83 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %.cast, i64 0, i32 1, !dbg !2086
  %65 = load %struct.basic_block_def*, %struct.basic_block_def** %dest83, align 8, !dbg !2086
  %aux84 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %65, i64 0, i32 2, !dbg !2087
  %66 = bitcast i8** %aux84 to i64*, !dbg !2088
  store i64 %64, i64* %66, align 8, !dbg !2088
  %inc = add i32 %qlen.1, 1, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1995, metadata !DIExpression()), !dbg !2003
  %cmp85 = icmp ult %struct.basic_block_def** %incdec.ptr82, %arrayidx, !dbg !2090
  %spec.select1 = select i1 %cmp85, %struct.basic_block_def** %incdec.ptr82, %struct.basic_block_def** %5, !dbg !2092
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %spec.select1, metadata !1991, metadata !DIExpression()), !dbg !2003
  br label %for.inc90, !dbg !2093

for.inc90:                                        ; preds = %land.lhs.true, %for.body70, %if.then80
  %qin.4 = phi %struct.basic_block_def** [ %qin.2, %for.body70 ], [ %spec.select1, %if.then80 ], [ %qin.2, %land.lhs.true ], !dbg !2003
  %qlen.2 = phi i32 [ %qlen.1, %for.body70 ], [ %inc, %if.then80 ], [ %qlen.1, %land.lhs.true ], !dbg !2094
  call void @llvm.dbg.value(metadata i32 %qlen.2, metadata !1995, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.4, metadata !1991, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !1996, metadata !DIExpression(DW_OP_deref)), !dbg !2003
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2074
  br label %for.cond67, !dbg !2074, !llvm.loop !2095

if.end92.loopexit:                                ; preds = %for.cond67
  %qin.2.lcssa = phi %struct.basic_block_def** [ %qin.2, %for.cond67 ], !dbg !2046
  %qlen.1.lcssa = phi i32 [ %qlen.1, %for.cond67 ], !dbg !2049
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.2.lcssa, metadata !1991, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i32 %qlen.1.lcssa, metadata !1995, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.2.lcssa, metadata !1991, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i32 %qlen.1.lcssa, metadata !1995, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.2.lcssa, metadata !1991, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i32 %qlen.1.lcssa, metadata !1995, metadata !DIExpression()), !dbg !2003
  br label %if.end92, !dbg !2038

if.end92:                                         ; preds = %if.end92.loopexit, %if.end48
  %qin.5 = phi %struct.basic_block_def** [ %qin.1, %if.end48 ], [ %qin.2.lcssa, %if.end92.loopexit ], !dbg !2046
  %qlen.3 = phi i32 [ %dec, %if.end48 ], [ %qlen.1.lcssa, %if.end92.loopexit ], !dbg !2049
  call void @llvm.dbg.value(metadata i32 %qlen.3, metadata !1995, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.5, metadata !1991, metadata !DIExpression()), !dbg !2003
  br label %while.cond, !dbg !2038, !llvm.loop !2097

while.end:                                        ; preds = %while.cond
  call void @clear_aux_for_edges() #6, !dbg !2099
  call void @clear_aux_for_blocks() #6, !dbg !2100
  call void @free(i8* %call) #6, !dbg !2101
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2102
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2102
  ret void, !dbg !2102
}

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_antinout_edge(%struct.simple_bitmap_def** %antloc, %struct.simple_bitmap_def** %transp, %struct.simple_bitmap_def** %antin, %struct.simple_bitmap_def** %antout) unnamed_addr #4 !dbg !2103 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp63 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %antloc, metadata !2105, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %transp, metadata !2106, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %antin, metadata !2107, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %antout, metadata !2108, metadata !DIExpression()), !dbg !2117
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2118
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2118
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2119
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2119
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2120
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2120
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2120
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 3, !dbg !2120
  %4 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2120
  %conv = sext i32 %4 to i64, !dbg !2120
  %mul = shl nsw i64 %conv, 3, !dbg !2120
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2120
  %5 = bitcast i8* %call to %struct.basic_block_def**, !dbg !2120
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %5, metadata !2111, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %5, metadata !2113, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %5, metadata !2112, metadata !DIExpression()), !dbg !2117
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2121
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 1, !dbg !2121
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !2121
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 5, !dbg !2121
  %8 = load i32, i32* %x_last_basic_block, align 8, !dbg !2121
  tail call void @sbitmap_vector_ones(%struct.simple_bitmap_def** %antin, i32 %8) #6, !dbg !2122
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2123
  %cfg4 = getelementptr inbounds %struct.function, %struct.function* %9, i64 0, i32 1, !dbg !2123
  %10 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg4, align 8, !dbg !2123
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 1, !dbg !2123
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2123
  br label %for.cond, !dbg !2123

for.cond:                                         ; preds = %for.body, %entry
  %12 = phi %struct.control_flow_graph* [ %10, %entry ], [ %.pre2, %for.body ], !dbg !2125
  %.pn = phi %struct.basic_block_def* [ %11, %entry ], [ %bb.0, %for.body ]
  %qin.0 = phi %struct.basic_block_def** [ %5, %entry ], [ %incdec.ptr, %for.body ], !dbg !2117
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 5, !dbg !2127
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2127
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.0, metadata !2112, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2109, metadata !DIExpression()), !dbg !2117
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 0, !dbg !2125
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2125
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %13, !dbg !2125
  br i1 %cmp, label %for.end, label %for.body, !dbg !2123

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %qin.0, i64 1, !dbg !2128
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr, metadata !2112, metadata !DIExpression()), !dbg !2117
  store %struct.basic_block_def* %bb.0, %struct.basic_block_def** %qin.0, align 8, !dbg !2130
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !2131
  %14 = bitcast i8** %aux to %struct.basic_block_def**, !dbg !2132
  store %struct.basic_block_def* %bb.0, %struct.basic_block_def** %14, align 8, !dbg !2132
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2125
  %cfg6.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2133
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6.phi.trans.insert, align 8, !dbg !2125
  br label %for.cond, !dbg !2125, !llvm.loop !2134

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct.control_flow_graph* [ %12, %for.cond ], !dbg !2125
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %5, metadata !2112, metadata !DIExpression()), !dbg !2117
  %x_n_basic_blocks11 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa, i64 0, i32 3, !dbg !2136
  %15 = load i32, i32* %x_n_basic_blocks11, align 8, !dbg !2136
  %sub = add nsw i32 %15, -2, !dbg !2137
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %arrayidx, metadata !2114, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2115, metadata !DIExpression()), !dbg !2117
  %16 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2138
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #8, !dbg !2138
  %x_exit_block_ptr18 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa, i64 0, i32 1, !dbg !2138
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr18, align 8, !dbg !2138
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i64 0, i32 0, !dbg !2138
  %call19 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !2138
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2138
  %19 = extractvalue { i32, %struct.VEC_edge_gc** } %call19, 0, !dbg !2138
  store i32 %19, i32* %18, align 8, !dbg !2138
  %20 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2138
  %21 = extractvalue { i32, %struct.VEC_edge_gc** } %call19, 1, !dbg !2138
  store %struct.VEC_edge_gc** %21, %struct.VEC_edge_gc*** %20, align 8, !dbg !2138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %16, i64 16, i1 false), !dbg !2138
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #8, !dbg !2138
  %22 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2140
  %23 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2140
  br label %for.cond20, !dbg !2138

for.cond20:                                       ; preds = %for.body22, %for.end
  %24 = load i32, i32* %22, align 8, !dbg !2142
  %25 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %23, align 8, !dbg !2142
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2110, metadata !DIExpression(DW_OP_deref)), !dbg !2117
  %call21 = call fastcc zeroext i8 @ei_cond(i32 %24, %struct.VEC_edge_gc** %25, %struct.edge_def** nonnull %e) #7, !dbg !2142
  %tobool = icmp eq i8 %call21, 0, !dbg !2138
  br i1 %tobool, label %while.cond.preheader, label %for.body22, !dbg !2138

while.cond.preheader:                             ; preds = %for.cond20
  %idxprom = sext i32 %sub to i64, !dbg !2143
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %5, i64 %idxprom, !dbg !2143
  %26 = bitcast %struct.edge_iterator* %tmp63 to i8*, !dbg !2144
  %27 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp63, i64 0, i32 0, !dbg !2144
  %28 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp63, i64 0, i32 1, !dbg !2144
  %29 = bitcast %struct.edge_def** %e to i64*, !dbg !2148
  br label %while.cond, !dbg !2152

for.body22:                                       ; preds = %for.cond20
  %30 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2153
  %cfg24 = getelementptr inbounds %struct.function, %struct.function* %30, i64 0, i32 1, !dbg !2153
  %31 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg24, align 8, !dbg !2153
  %x_exit_block_ptr25 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %31, i64 0, i32 1, !dbg !2153
  %32 = bitcast %struct.basic_block_def** %x_exit_block_ptr25 to i64*, !dbg !2153
  %33 = load i64, i64* %32, align 8, !dbg !2153
  %34 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2154
  call void @llvm.dbg.value(metadata %struct.edge_def* %34, metadata !2110, metadata !DIExpression()), !dbg !2117
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i64 0, i32 0, !dbg !2155
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2155
  %aux26 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i64 0, i32 2, !dbg !2156
  %36 = bitcast i8** %aux26 to i64*, !dbg !2157
  store i64 %33, i64* %36, align 8, !dbg !2157
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2116, metadata !DIExpression(DW_OP_deref)), !dbg !2117
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2142
  br label %for.cond20, !dbg !2142, !llvm.loop !2158

while.cond:                                       ; preds = %while.cond.preheader, %if.end91
  %qin.1 = phi %struct.basic_block_def** [ %qin.5, %if.end91 ], [ %5, %while.cond.preheader ], !dbg !2160
  %qout.0 = phi %struct.basic_block_def** [ %spec.select, %if.end91 ], [ %5, %while.cond.preheader ], !dbg !2117
  %qlen.0 = phi i32 [ %qlen.3, %if.end91 ], [ %sub, %while.cond.preheader ], !dbg !2117
  call void @llvm.dbg.value(metadata i32 %qlen.0, metadata !2115, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qout.0, metadata !2113, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.1, metadata !2112, metadata !DIExpression()), !dbg !2117
  %tobool29 = icmp eq i32 %qlen.0, 0, !dbg !2152
  br i1 %tobool29, label %while.end, label %while.body, !dbg !2152

while.body:                                       ; preds = %while.cond
  %incdec.ptr30 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %qout.0, i64 1, !dbg !2161
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr30, metadata !2113, metadata !DIExpression()), !dbg !2117
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %qout.0, align 8, !dbg !2162
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %37, metadata !2109, metadata !DIExpression()), !dbg !2117
  %dec = add i32 %qlen.0, -1, !dbg !2163
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2115, metadata !DIExpression()), !dbg !2117
  %cmp31 = icmp ult %struct.basic_block_def** %incdec.ptr30, %arrayidx, !dbg !2164
  %spec.select = select i1 %cmp31, %struct.basic_block_def** %incdec.ptr30, %struct.basic_block_def** %5, !dbg !2166
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %spec.select, metadata !2113, metadata !DIExpression()), !dbg !2117
  %aux33 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i64 0, i32 2, !dbg !2167
  %38 = load i8*, i8** %aux33, align 8, !dbg !2167
  %39 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2169
  %cfg35 = getelementptr inbounds %struct.function, %struct.function* %39, i64 0, i32 1, !dbg !2169
  %40 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg35, align 8, !dbg !2169
  %x_exit_block_ptr36 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %40, i64 0, i32 1, !dbg !2169
  %41 = bitcast %struct.basic_block_def** %x_exit_block_ptr36 to i8**, !dbg !2169
  %42 = load i8*, i8** %41, align 8, !dbg !2169
  %cmp37 = icmp eq i8* %38, %42, !dbg !2170
  br i1 %cmp37, label %if.then39, label %if.else, !dbg !2171

if.then39:                                        ; preds = %while.body
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i64 0, i32 9, !dbg !2172
  %43 = load i32, i32* %index, align 8, !dbg !2172
  %idxprom40 = sext i32 %43 to i64, !dbg !2173
  %arrayidx41 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %antout, i64 %idxprom40, !dbg !2173
  %44 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx41, align 8, !dbg !2173
  call void @sbitmap_zero(%struct.simple_bitmap_def* %44) #6, !dbg !2174
  br label %if.end47, !dbg !2174

if.else:                                          ; preds = %while.body
  store i8* null, i8** %aux33, align 8, !dbg !2175
  %index43 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i64 0, i32 9, !dbg !2177
  %45 = load i32, i32* %index43, align 8, !dbg !2177
  %idxprom44 = sext i32 %45 to i64, !dbg !2178
  %arrayidx45 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %antout, i64 %idxprom44, !dbg !2178
  %46 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx45, align 8, !dbg !2178
  call void @sbitmap_intersection_of_succs(%struct.simple_bitmap_def* %46, %struct.simple_bitmap_def** %antin, i32 %45) #6, !dbg !2179
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then39
  %index48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i64 0, i32 9, !dbg !2180
  %47 = load i32, i32* %index48, align 8, !dbg !2180
  %idxprom49 = sext i32 %47 to i64, !dbg !2181
  %arrayidx50 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %antin, i64 %idxprom49, !dbg !2181
  %48 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx50, align 8, !dbg !2181
  %arrayidx53 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %antloc, i64 %idxprom49, !dbg !2182
  %49 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx53, align 8, !dbg !2182
  %arrayidx56 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %transp, i64 %idxprom49, !dbg !2183
  %50 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx56, align 8, !dbg !2183
  %arrayidx59 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %antout, i64 %idxprom49, !dbg !2184
  %51 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx59, align 8, !dbg !2184
  %call60 = call zeroext i8 @sbitmap_a_or_b_and_c_cg(%struct.simple_bitmap_def* %48, %struct.simple_bitmap_def* %49, %struct.simple_bitmap_def* %50, %struct.simple_bitmap_def* %51) #6, !dbg !2185
  %tobool61 = icmp eq i8 %call60, 0, !dbg !2185
  br i1 %tobool61, label %if.end91, label %if.then62, !dbg !2186

if.then62:                                        ; preds = %if.end47
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #8, !dbg !2187
  %preds64 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i64 0, i32 0, !dbg !2187
  %call65 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds64) #7, !dbg !2187
  %52 = extractvalue { i32, %struct.VEC_edge_gc** } %call65, 0, !dbg !2187
  store i32 %52, i32* %27, align 8, !dbg !2187
  %53 = extractvalue { i32, %struct.VEC_edge_gc** } %call65, 1, !dbg !2187
  store %struct.VEC_edge_gc** %53, %struct.VEC_edge_gc*** %28, align 8, !dbg !2187
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %26, i64 16, i1 false), !dbg !2187
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #8, !dbg !2187
  br label %for.cond66, !dbg !2187

for.cond66:                                       ; preds = %for.inc89, %if.then62
  %qin.2 = phi %struct.basic_block_def** [ %qin.1, %if.then62 ], [ %qin.4, %for.inc89 ], !dbg !2160
  %qlen.1 = phi i32 [ %dec, %if.then62 ], [ %qlen.2, %for.inc89 ], !dbg !2163
  call void @llvm.dbg.value(metadata i32 %qlen.1, metadata !2115, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.2, metadata !2112, metadata !DIExpression()), !dbg !2117
  %54 = load i32, i32* %22, align 8, !dbg !2188
  %55 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %23, align 8, !dbg !2188
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2110, metadata !DIExpression(DW_OP_deref)), !dbg !2117
  %call67 = call fastcc zeroext i8 @ei_cond(i32 %54, %struct.VEC_edge_gc** %55, %struct.edge_def** nonnull %e) #7, !dbg !2188
  %tobool68 = icmp eq i8 %call67, 0, !dbg !2187
  br i1 %tobool68, label %if.end91.loopexit, label %for.body69, !dbg !2187

for.body69:                                       ; preds = %for.cond66
  %56 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2189
  call void @llvm.dbg.value(metadata %struct.edge_def* %56, metadata !2110, metadata !DIExpression()), !dbg !2117
  %src70 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %56, i64 0, i32 0, !dbg !2190
  %57 = load %struct.basic_block_def*, %struct.basic_block_def** %src70, align 8, !dbg !2190
  %aux71 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %57, i64 0, i32 2, !dbg !2191
  %58 = load i8*, i8** %aux71, align 8, !dbg !2191
  %tobool72 = icmp eq i8* %58, null, !dbg !2189
  %59 = ptrtoint %struct.basic_block_def* %57 to i64, !dbg !2192
  br i1 %tobool72, label %land.lhs.true, label %for.inc89, !dbg !2192

land.lhs.true:                                    ; preds = %for.body69
  call void @llvm.dbg.value(metadata %struct.edge_def* %56, metadata !2110, metadata !DIExpression()), !dbg !2117
  %60 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2193
  %cfg75 = getelementptr inbounds %struct.function, %struct.function* %60, i64 0, i32 1, !dbg !2193
  %61 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg75, align 8, !dbg !2193
  %x_entry_block_ptr76 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %61, i64 0, i32 0, !dbg !2193
  %62 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr76, align 8, !dbg !2193
  %cmp77 = icmp eq %struct.basic_block_def* %57, %62, !dbg !2194
  br i1 %cmp77, label %for.inc89, label %if.then79, !dbg !2195

if.then79:                                        ; preds = %land.lhs.true
  %incdec.ptr81 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %qin.2, i64 1, !dbg !2196
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr81, metadata !2112, metadata !DIExpression()), !dbg !2117
  %63 = bitcast %struct.basic_block_def** %qin.2 to i64*, !dbg !2197
  store i64 %59, i64* %63, align 8, !dbg !2197
  %64 = load i64, i64* %29, align 8, !dbg !2198
  %.cast = inttoptr i64 %64 to %struct.edge_def*, !dbg !2199
  call void @llvm.dbg.value(metadata %struct.edge_def* %.cast, metadata !2110, metadata !DIExpression()), !dbg !2117
  %src82 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %.cast, i64 0, i32 0, !dbg !2200
  %65 = load %struct.basic_block_def*, %struct.basic_block_def** %src82, align 8, !dbg !2200
  %aux83 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %65, i64 0, i32 2, !dbg !2201
  %66 = bitcast i8** %aux83 to i64*, !dbg !2202
  store i64 %64, i64* %66, align 8, !dbg !2202
  %inc = add i32 %qlen.1, 1, !dbg !2203
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2115, metadata !DIExpression()), !dbg !2117
  %cmp84 = icmp ult %struct.basic_block_def** %incdec.ptr81, %arrayidx, !dbg !2204
  %spec.select1 = select i1 %cmp84, %struct.basic_block_def** %incdec.ptr81, %struct.basic_block_def** %5, !dbg !2206
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %spec.select1, metadata !2112, metadata !DIExpression()), !dbg !2117
  br label %for.inc89, !dbg !2207

for.inc89:                                        ; preds = %land.lhs.true, %for.body69, %if.then79
  %qin.4 = phi %struct.basic_block_def** [ %qin.2, %for.body69 ], [ %spec.select1, %if.then79 ], [ %qin.2, %land.lhs.true ], !dbg !2117
  %qlen.2 = phi i32 [ %qlen.1, %for.body69 ], [ %inc, %if.then79 ], [ %qlen.1, %land.lhs.true ], !dbg !2208
  call void @llvm.dbg.value(metadata i32 %qlen.2, metadata !2115, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.4, metadata !2112, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2116, metadata !DIExpression(DW_OP_deref)), !dbg !2117
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2188
  br label %for.cond66, !dbg !2188, !llvm.loop !2209

if.end91.loopexit:                                ; preds = %for.cond66
  %qin.2.lcssa = phi %struct.basic_block_def** [ %qin.2, %for.cond66 ], !dbg !2160
  %qlen.1.lcssa = phi i32 [ %qlen.1, %for.cond66 ], !dbg !2163
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.2.lcssa, metadata !2112, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i32 %qlen.1.lcssa, metadata !2115, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.2.lcssa, metadata !2112, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i32 %qlen.1.lcssa, metadata !2115, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.2.lcssa, metadata !2112, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i32 %qlen.1.lcssa, metadata !2115, metadata !DIExpression()), !dbg !2117
  br label %if.end91, !dbg !2152

if.end91:                                         ; preds = %if.end91.loopexit, %if.end47
  %qin.5 = phi %struct.basic_block_def** [ %qin.1, %if.end47 ], [ %qin.2.lcssa, %if.end91.loopexit ], !dbg !2160
  %qlen.3 = phi i32 [ %dec, %if.end47 ], [ %qlen.1.lcssa, %if.end91.loopexit ], !dbg !2163
  call void @llvm.dbg.value(metadata i32 %qlen.3, metadata !2115, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.5, metadata !2112, metadata !DIExpression()), !dbg !2117
  br label %while.cond, !dbg !2152, !llvm.loop !2211

while.end:                                        ; preds = %while.cond
  call void @clear_aux_for_edges() #6, !dbg !2213
  call void @clear_aux_for_blocks() #6, !dbg !2214
  call void @free(i8* %call) #6, !dbg !2215
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2216
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2216
  ret void, !dbg !2216
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_earliest(%struct.edge_list* %edge_list, i32 %n_exprs, %struct.simple_bitmap_def** %antin, %struct.simple_bitmap_def** %antout, %struct.simple_bitmap_def** %avout, %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def** %earliest) unnamed_addr #4 !dbg !2217 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_list* %edge_list, metadata !2221, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i32 %n_exprs, metadata !2222, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %antin, metadata !2223, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %antout, metadata !2224, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %avout, metadata !2225, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %kill, metadata !2226, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %earliest, metadata !2227, metadata !DIExpression()), !dbg !2234
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %edge_list, i64 0, i32 1, !dbg !2235
  %0 = load i32, i32* %num_edges1, align 4, !dbg !2235
  call void @llvm.dbg.value(metadata i32 %0, metadata !2231, metadata !DIExpression()), !dbg !2234
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %n_exprs) #6, !dbg !2236
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !2228, metadata !DIExpression()), !dbg !2234
  %call2 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %n_exprs) #6, !dbg !2237
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call2, metadata !2229, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i32 0, metadata !2230, metadata !DIExpression()), !dbg !2234
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %edge_list, i64 0, i32 2, !dbg !2238
  %1 = sext i32 %0 to i64, !dbg !2242
  br label %for.cond, !dbg !2242

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !2243
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2230, metadata !DIExpression()), !dbg !2234
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !2244
  br i1 %cmp, label %for.body, label %for.end, !dbg !2245

for.body:                                         ; preds = %for.cond
  %2 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !2246
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %2, i64 %indvars.iv, !dbg !2246
  %3 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2246
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i64 0, i32 0, !dbg !2246
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2246
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %4, metadata !2232, metadata !DIExpression()), !dbg !2234
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i64 0, i32 1, !dbg !2247
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2247
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %5, metadata !2233, metadata !DIExpression()), !dbg !2234
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2248
  %cfg = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 1, !dbg !2248
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2248
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 0, !dbg !2248
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2248
  %cmp6 = icmp eq %struct.basic_block_def* %4, %8, !dbg !2250
  br i1 %cmp6, label %if.then, label %if.else, !dbg !2251

if.then:                                          ; preds = %for.body
  %arrayidx8 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %earliest, i64 %indvars.iv, !dbg !2252
  %9 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx8, align 8, !dbg !2252
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 9, !dbg !2253
  %10 = load i32, i32* %index, align 8, !dbg !2253
  %idxprom9 = sext i32 %10 to i64, !dbg !2254
  %arrayidx10 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %antin, i64 %idxprom9, !dbg !2254
  %11 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx10, align 8, !dbg !2254
  tail call void @sbitmap_copy(%struct.simple_bitmap_def* %9, %struct.simple_bitmap_def* %11) #6, !dbg !2255
  br label %for.inc, !dbg !2255

if.else:                                          ; preds = %for.body
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 1, !dbg !2256
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2256
  %cmp13 = icmp eq %struct.basic_block_def* %5, %12, !dbg !2259
  br i1 %cmp13, label %if.then14, label %if.else17, !dbg !2260

if.then14:                                        ; preds = %if.else
  %arrayidx16 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %earliest, i64 %indvars.iv, !dbg !2261
  %13 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx16, align 8, !dbg !2261
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %13) #6, !dbg !2262
  br label %for.inc, !dbg !2262

if.else17:                                        ; preds = %if.else
  %index18 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 9, !dbg !2263
  %14 = load i32, i32* %index18, align 8, !dbg !2263
  %idxprom19 = sext i32 %14 to i64, !dbg !2265
  %arrayidx20 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %antin, i64 %idxprom19, !dbg !2265
  %15 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx20, align 8, !dbg !2265
  %index21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 9, !dbg !2266
  %16 = load i32, i32* %index21, align 8, !dbg !2266
  %idxprom22 = sext i32 %16 to i64, !dbg !2267
  %arrayidx23 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %avout, i64 %idxprom22, !dbg !2267
  %17 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx23, align 8, !dbg !2267
  tail call void @sbitmap_difference(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %15, %struct.simple_bitmap_def* %17) #6, !dbg !2268
  %18 = load i32, i32* %index21, align 8, !dbg !2269
  %idxprom25 = sext i32 %18 to i64, !dbg !2270
  %arrayidx26 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %antout, i64 %idxprom25, !dbg !2270
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx26, align 8, !dbg !2270
  tail call void @sbitmap_not(%struct.simple_bitmap_def* %call2, %struct.simple_bitmap_def* %19) #6, !dbg !2271
  %arrayidx28 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %earliest, i64 %indvars.iv, !dbg !2272
  %20 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx28, align 8, !dbg !2272
  %21 = load i32, i32* %index21, align 8, !dbg !2273
  %idxprom30 = sext i32 %21 to i64, !dbg !2274
  %arrayidx31 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %kill, i64 %idxprom30, !dbg !2274
  %22 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx31, align 8, !dbg !2274
  tail call void @sbitmap_a_and_b_or_c(%struct.simple_bitmap_def* %20, %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %22, %struct.simple_bitmap_def* %call2) #6, !dbg !2275
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else17, %if.then14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2276
  call void @llvm.dbg.value(metadata i32 undef, metadata !2230, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2234
  br label %for.cond, !dbg !2277, !llvm.loop !2278

for.end:                                          ; preds = %for.cond
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call2, i64 0, i32 0, !dbg !2280
  %23 = load i8*, i8** %popcount, align 8, !dbg !2280
  tail call void @free(i8* %23) #6, !dbg !2280
  %24 = bitcast %struct.simple_bitmap_def* %call2 to i8*, !dbg !2280
  tail call void @free(i8* %24) #6, !dbg !2280
  %popcount33 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 0, !dbg !2281
  %25 = load i8*, i8** %popcount33, align 8, !dbg !2281
  tail call void @free(i8* %25) #6, !dbg !2281
  %26 = bitcast %struct.simple_bitmap_def* %call to i8*, !dbg !2281
  tail call void @free(i8* %26) #6, !dbg !2281
  ret void, !dbg !2282
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_laterin(%struct.edge_list* %edge_list, %struct.simple_bitmap_def** %earliest, %struct.simple_bitmap_def** %antloc, %struct.simple_bitmap_def** %later, %struct.simple_bitmap_def** %laterin) unnamed_addr #4 !dbg !2283 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp45 = alloca %struct.edge_iterator, align 8
  %tmp61 = alloca %struct.edge_iterator, align 8
  %tmp109 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_list* %edge_list, metadata !2287, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %earliest, metadata !2288, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %antloc, metadata !2289, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %later, metadata !2290, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %laterin, metadata !2291, metadata !DIExpression()), !dbg !2302
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2303
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2303
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2304
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2304
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %edge_list, i64 0, i32 1, !dbg !2305
  %2 = load i32, i32* %num_edges1, align 4, !dbg !2305
  call void @llvm.dbg.value(metadata i32 %2, metadata !2292, metadata !DIExpression()), !dbg !2302
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2306
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !2306
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2306
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 3, !dbg !2306
  %5 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2306
  %conv = sext i32 %5 to i64, !dbg !2306
  %mul = shl nsw i64 %conv, 3, !dbg !2306
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2306
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %27, metadata !2295, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %27, metadata !2297, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %27, metadata !2296, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i32 0, metadata !2293, metadata !DIExpression()), !dbg !2302
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %edge_list, i64 0, i32 2, !dbg !2307
  %6 = sext i32 %2 to i64, !dbg !2310
  br label %for.cond, !dbg !2310

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !2311
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2293, metadata !DIExpression()), !dbg !2302
  %cmp = icmp slt i64 %indvars.iv, %6, !dbg !2312
  br i1 %cmp, label %for.body, label %for.end, !dbg !2313

for.body:                                         ; preds = %for.cond
  %7 = inttoptr i64 %indvars.iv to i8*, !dbg !2314
  %8 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !2315
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %8, i64 %indvars.iv, !dbg !2315
  %9 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2315
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %9, i64 0, i32 3, !dbg !2316
  store i8* %7, i8** %aux, align 8, !dbg !2317
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2318
  call void @llvm.dbg.value(metadata i32 undef, metadata !2293, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2302
  br label %for.cond, !dbg !2319, !llvm.loop !2320

for.end:                                          ; preds = %for.cond
  tail call void @sbitmap_vector_ones(%struct.simple_bitmap_def** %later, i32 %2) #6, !dbg !2322
  %10 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2323
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #8, !dbg !2323
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2323
  %cfg5 = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 1, !dbg !2323
  %12 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg5, align 8, !dbg !2323
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 0, !dbg !2323
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2323
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 1, !dbg !2323
  %call6 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2323
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2323
  %15 = extractvalue { i32, %struct.VEC_edge_gc** } %call6, 0, !dbg !2323
  store i32 %15, i32* %14, align 8, !dbg !2323
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2323
  %17 = extractvalue { i32, %struct.VEC_edge_gc** } %call6, 1, !dbg !2323
  store %struct.VEC_edge_gc** %17, %struct.VEC_edge_gc*** %16, align 8, !dbg !2323
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %10, i64 16, i1 false), !dbg !2323
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #8, !dbg !2323
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2325
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2325
  br label %for.cond7, !dbg !2323

for.cond7:                                        ; preds = %for.body9, %for.end
  %20 = load i32, i32* %18, align 8, !dbg !2327
  %21 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %19, align 8, !dbg !2327
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2294, metadata !DIExpression(DW_OP_deref)), !dbg !2302
  %call8 = call fastcc zeroext i8 @ei_cond(i32 %20, %struct.VEC_edge_gc** %21, %struct.edge_def** nonnull %e) #7, !dbg !2327
  %tobool = icmp eq i8 %call8, 0, !dbg !2323
  br i1 %tobool, label %for.end15, label %for.body9, !dbg !2323

for.body9:                                        ; preds = %for.cond7
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2328
  call void @llvm.dbg.value(metadata %struct.edge_def* %22, metadata !2294, metadata !DIExpression()), !dbg !2302
  %aux10 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %22, i64 0, i32 3, !dbg !2329
  %23 = bitcast i8** %aux10 to i64*, !dbg !2329
  %24 = load i64, i64* %23, align 8, !dbg !2329
  %arrayidx11 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %later, i64 %24, !dbg !2330
  %25 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx11, align 8, !dbg !2330
  call void @llvm.dbg.value(metadata %struct.edge_def* %22, metadata !2294, metadata !DIExpression()), !dbg !2302
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %earliest, i64 %24, !dbg !2331
  %26 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx13, align 8, !dbg !2331
  call void @sbitmap_copy(%struct.simple_bitmap_def* %25, %struct.simple_bitmap_def* %26) #6, !dbg !2332
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2301, metadata !DIExpression(DW_OP_deref)), !dbg !2302
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2327
  br label %for.cond7, !dbg !2327, !llvm.loop !2333

for.end15:                                        ; preds = %for.cond7
  %27 = bitcast i8* %call to %struct.basic_block_def**, !dbg !2306
  %28 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2335
  %cfg17 = getelementptr inbounds %struct.function, %struct.function* %28, i64 0, i32 1, !dbg !2335
  %29 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg17, align 8, !dbg !2335
  %x_entry_block_ptr18 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %29, i64 0, i32 0, !dbg !2335
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr18, align 8, !dbg !2335
  br label %for.cond19, !dbg !2335

for.cond19:                                       ; preds = %for.body24, %for.end15
  %31 = phi %struct.control_flow_graph* [ %29, %for.end15 ], [ %.pre2, %for.body24 ], !dbg !2337
  %qin.0 = phi %struct.basic_block_def** [ %27, %for.end15 ], [ %incdec.ptr, %for.body24 ], !dbg !2302
  %.pn = phi %struct.basic_block_def* [ %30, %for.end15 ], [ %bb.0, %for.body24 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2339
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2339
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2299, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.0, metadata !2296, metadata !DIExpression()), !dbg !2302
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %31, i64 0, i32 1, !dbg !2337
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2337
  %cmp22 = icmp eq %struct.basic_block_def* %bb.0, %32, !dbg !2337
  br i1 %cmp22, label %for.end28, label %for.body24, !dbg !2335

for.body24:                                       ; preds = %for.cond19
  %incdec.ptr = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %qin.0, i64 1, !dbg !2340
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr, metadata !2296, metadata !DIExpression()), !dbg !2302
  store %struct.basic_block_def* %bb.0, %struct.basic_block_def** %qin.0, align 8, !dbg !2342
  %aux25 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !2343
  %33 = bitcast i8** %aux25 to %struct.basic_block_def**, !dbg !2344
  store %struct.basic_block_def* %bb.0, %struct.basic_block_def** %33, align 8, !dbg !2344
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2337
  %cfg21.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2345
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg21.phi.trans.insert, align 8, !dbg !2337
  br label %for.cond19, !dbg !2337, !llvm.loop !2346

for.end28:                                        ; preds = %for.cond19
  %.lcssa = phi %struct.control_flow_graph* [ %31, %for.cond19 ], !dbg !2337
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %27, metadata !2296, metadata !DIExpression()), !dbg !2302
  %x_n_basic_blocks31 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa, i64 0, i32 3, !dbg !2348
  %34 = load i32, i32* %x_n_basic_blocks31, align 8, !dbg !2348
  %sub = add nsw i32 %34, -2, !dbg !2349
  %idxprom32 = sext i32 %sub to i64, !dbg !2350
  %arrayidx33 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %27, i64 %idxprom32, !dbg !2350
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %arrayidx33, metadata !2298, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2300, metadata !DIExpression()), !dbg !2302
  %35 = bitcast %struct.edge_iterator* %tmp45 to i8*, !dbg !2351
  %36 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp45, i64 0, i32 0, !dbg !2351
  %37 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp45, i64 0, i32 1, !dbg !2351
  %38 = bitcast %struct.edge_iterator* %tmp61 to i8*, !dbg !2354
  %39 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp61, i64 0, i32 0, !dbg !2354
  %40 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp61, i64 0, i32 1, !dbg !2354
  %41 = bitcast %struct.edge_def** %e to i64*, !dbg !2356
  br label %while.cond, !dbg !2360

while.cond.loopexit:                              ; preds = %for.cond64
  %qin.2.lcssa = phi %struct.basic_block_def** [ %qin.2, %for.cond64 ], !dbg !2302
  %qlen.1.lcssa = phi i32 [ %qlen.1, %for.cond64 ], !dbg !2361
  %cmp41 = icmp ult %struct.basic_block_def** %incdec.ptr39, %arrayidx33, !dbg !2362
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.2.lcssa, metadata !2296, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i32 %qlen.1.lcssa, metadata !2300, metadata !DIExpression()), !dbg !2302
  %spec.select = select i1 %cmp41, %struct.basic_block_def** %incdec.ptr39, %struct.basic_block_def** %27, !dbg !2364
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.2.lcssa, metadata !2296, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i32 %qlen.1.lcssa, metadata !2300, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.2.lcssa, metadata !2296, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i32 %qlen.1.lcssa, metadata !2300, metadata !DIExpression()), !dbg !2302
  br label %while.cond, !dbg !2360

while.cond:                                       ; preds = %while.cond.loopexit, %for.end28
  %qin.1 = phi %struct.basic_block_def** [ %27, %for.end28 ], [ %qin.2.lcssa, %while.cond.loopexit ], !dbg !2365
  %qout.0 = phi %struct.basic_block_def** [ %27, %for.end28 ], [ %spec.select, %while.cond.loopexit ], !dbg !2302
  %qlen.0 = phi i32 [ %sub, %for.end28 ], [ %qlen.1.lcssa, %while.cond.loopexit ], !dbg !2302
  call void @llvm.dbg.value(metadata i32 %qlen.0, metadata !2300, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qout.0, metadata !2297, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.1, metadata !2296, metadata !DIExpression()), !dbg !2302
  %tobool38 = icmp eq i32 %qlen.0, 0, !dbg !2360
  br i1 %tobool38, label %while.end, label %while.body, !dbg !2360

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr39, metadata !2297, metadata !DIExpression()), !dbg !2302
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %qout.0, align 8, !dbg !2366
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %42, metadata !2299, metadata !DIExpression()), !dbg !2302
  %aux40 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i64 0, i32 2, !dbg !2367
  store i8* null, i8** %aux40, align 8, !dbg !2368
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2300, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %spec.select, metadata !2297, metadata !DIExpression()), !dbg !2302
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i64 0, i32 9, !dbg !2369
  %43 = load i32, i32* %index, align 8, !dbg !2369
  %idxprom43 = sext i32 %43 to i64, !dbg !2370
  %arrayidx44 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %laterin, i64 %idxprom43, !dbg !2370
  %44 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx44, align 8, !dbg !2370
  call void @sbitmap_ones(%struct.simple_bitmap_def* %44) #6, !dbg !2371
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %35) #8, !dbg !2372
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i64 0, i32 0, !dbg !2372
  %call46 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !2372
  %45 = extractvalue { i32, %struct.VEC_edge_gc** } %call46, 0, !dbg !2372
  store i32 %45, i32* %36, align 8, !dbg !2372
  %46 = extractvalue { i32, %struct.VEC_edge_gc** } %call46, 1, !dbg !2372
  store %struct.VEC_edge_gc** %46, %struct.VEC_edge_gc*** %37, align 8, !dbg !2372
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %35, i64 16, i1 false), !dbg !2372
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %35) #8, !dbg !2372
  br label %for.cond47, !dbg !2372

for.cond47:                                       ; preds = %for.body50, %while.body
  %47 = load i32, i32* %18, align 8, !dbg !2373
  %48 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %19, align 8, !dbg !2373
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2294, metadata !DIExpression(DW_OP_deref)), !dbg !2302
  %call48 = call fastcc zeroext i8 @ei_cond(i32 %47, %struct.VEC_edge_gc** %48, %struct.edge_def** nonnull %e) #7, !dbg !2373
  %tobool49 = icmp eq i8 %call48, 0, !dbg !2372
  br i1 %tobool49, label %for.end60, label %for.body50, !dbg !2372

for.body50:                                       ; preds = %for.cond47
  %49 = load i32, i32* %index, align 8, !dbg !2375
  %idxprom52 = sext i32 %49 to i64, !dbg !2376
  %arrayidx53 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %laterin, i64 %idxprom52, !dbg !2376
  %50 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx53, align 8, !dbg !2376
  %51 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2377
  call void @llvm.dbg.value(metadata %struct.edge_def* %51, metadata !2294, metadata !DIExpression()), !dbg !2302
  %aux57 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %51, i64 0, i32 3, !dbg !2378
  %52 = bitcast i8** %aux57 to i64*, !dbg !2378
  %53 = load i64, i64* %52, align 8, !dbg !2378
  %arrayidx58 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %later, i64 %53, !dbg !2379
  %54 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx58, align 8, !dbg !2379
  call void @sbitmap_a_and_b(%struct.simple_bitmap_def* %50, %struct.simple_bitmap_def* %50, %struct.simple_bitmap_def* %54) #6, !dbg !2380
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2301, metadata !DIExpression(DW_OP_deref)), !dbg !2302
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2373
  br label %for.cond47, !dbg !2373, !llvm.loop !2381

for.end60:                                        ; preds = %for.cond47
  %incdec.ptr39 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %qout.0, i64 1, !dbg !2383
  %dec = add i32 %qlen.0, -1, !dbg !2384
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %38) #8, !dbg !2385
  %succs62 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i64 0, i32 1, !dbg !2385
  %call63 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs62) #7, !dbg !2385
  %55 = extractvalue { i32, %struct.VEC_edge_gc** } %call63, 0, !dbg !2385
  store i32 %55, i32* %39, align 8, !dbg !2385
  %56 = extractvalue { i32, %struct.VEC_edge_gc** } %call63, 1, !dbg !2385
  store %struct.VEC_edge_gc** %56, %struct.VEC_edge_gc*** %40, align 8, !dbg !2385
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %38, i64 16, i1 false), !dbg !2385
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38) #8, !dbg !2385
  br label %for.cond64, !dbg !2385

for.cond64:                                       ; preds = %for.inc103, %for.end60
  %qin.2 = phi %struct.basic_block_def** [ %qin.1, %for.end60 ], [ %qin.4, %for.inc103 ], !dbg !2302
  %qlen.1 = phi i32 [ %dec, %for.end60 ], [ %qlen.2, %for.inc103 ], !dbg !2361
  call void @llvm.dbg.value(metadata i32 %qlen.1, metadata !2300, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.2, metadata !2296, metadata !DIExpression()), !dbg !2302
  %57 = load i32, i32* %18, align 8, !dbg !2386
  %58 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %19, align 8, !dbg !2386
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2294, metadata !DIExpression(DW_OP_deref)), !dbg !2302
  %call65 = call fastcc zeroext i8 @ei_cond(i32 %57, %struct.VEC_edge_gc** %58, %struct.edge_def** nonnull %e) #7, !dbg !2386
  %tobool66 = icmp eq i8 %call65, 0, !dbg !2385
  br i1 %tobool66, label %while.cond.loopexit, label %for.body67, !dbg !2385, !llvm.loop !2387

for.body67:                                       ; preds = %for.cond64
  %59 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2389
  call void @llvm.dbg.value(metadata %struct.edge_def* %59, metadata !2294, metadata !DIExpression()), !dbg !2302
  %aux68 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %59, i64 0, i32 3, !dbg !2390
  %60 = bitcast i8** %aux68 to i64*, !dbg !2390
  %61 = load i64, i64* %60, align 8, !dbg !2390
  %arrayidx69 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %later, i64 %61, !dbg !2391
  %62 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx69, align 8, !dbg !2391
  call void @llvm.dbg.value(metadata %struct.edge_def* %59, metadata !2294, metadata !DIExpression()), !dbg !2302
  %arrayidx71 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %earliest, i64 %61, !dbg !2392
  %63 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx71, align 8, !dbg !2392
  call void @llvm.dbg.value(metadata %struct.edge_def* %59, metadata !2294, metadata !DIExpression()), !dbg !2302
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %59, i64 0, i32 0, !dbg !2393
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2393
  %index72 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %64, i64 0, i32 9, !dbg !2394
  %65 = load i32, i32* %index72, align 8, !dbg !2394
  %idxprom73 = sext i32 %65 to i64, !dbg !2395
  %arrayidx74 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %laterin, i64 %idxprom73, !dbg !2395
  %66 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx74, align 8, !dbg !2395
  call void @llvm.dbg.value(metadata %struct.edge_def* %59, metadata !2294, metadata !DIExpression()), !dbg !2302
  %arrayidx78 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %antloc, i64 %idxprom73, !dbg !2396
  %67 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx78, align 8, !dbg !2396
  %call79 = call zeroext i8 @sbitmap_union_of_diff_cg(%struct.simple_bitmap_def* %62, %struct.simple_bitmap_def* %63, %struct.simple_bitmap_def* %66, %struct.simple_bitmap_def* %67) #6, !dbg !2397
  %tobool81 = icmp eq i8 %call79, 0, !dbg !2397
  br i1 %tobool81, label %for.inc103, label %land.lhs.true, !dbg !2398

land.lhs.true:                                    ; preds = %for.body67
  %68 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2399
  call void @llvm.dbg.value(metadata %struct.edge_def* %68, metadata !2294, metadata !DIExpression()), !dbg !2302
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %68, i64 0, i32 1, !dbg !2400
  %69 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2400
  %70 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2401
  %cfg83 = getelementptr inbounds %struct.function, %struct.function* %70, i64 0, i32 1, !dbg !2401
  %71 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg83, align 8, !dbg !2401
  %x_exit_block_ptr84 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %71, i64 0, i32 1, !dbg !2401
  %72 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr84, align 8, !dbg !2401
  %cmp85 = icmp eq %struct.basic_block_def* %69, %72, !dbg !2402
  %73 = ptrtoint %struct.basic_block_def* %69 to i64, !dbg !2403
  br i1 %cmp85, label %for.inc103, label %land.lhs.true87, !dbg !2403

land.lhs.true87:                                  ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.edge_def* %68, metadata !2294, metadata !DIExpression()), !dbg !2302
  %aux89 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %69, i64 0, i32 2, !dbg !2404
  %74 = load i8*, i8** %aux89, align 8, !dbg !2404
  %cmp90 = icmp eq i8* %74, null, !dbg !2405
  br i1 %cmp90, label %if.then92, label %for.inc103, !dbg !2406

if.then92:                                        ; preds = %land.lhs.true87
  call void @llvm.dbg.value(metadata %struct.edge_def* %68, metadata !2294, metadata !DIExpression()), !dbg !2302
  %incdec.ptr94 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %qin.2, i64 1, !dbg !2407
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr94, metadata !2296, metadata !DIExpression()), !dbg !2302
  %75 = bitcast %struct.basic_block_def** %qin.2 to i64*, !dbg !2408
  store i64 %73, i64* %75, align 8, !dbg !2408
  %76 = load i64, i64* %41, align 8, !dbg !2409
  %.cast = inttoptr i64 %76 to %struct.edge_def*, !dbg !2410
  call void @llvm.dbg.value(metadata %struct.edge_def* %.cast, metadata !2294, metadata !DIExpression()), !dbg !2302
  %dest95 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %.cast, i64 0, i32 1, !dbg !2411
  %77 = load %struct.basic_block_def*, %struct.basic_block_def** %dest95, align 8, !dbg !2411
  %aux96 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %77, i64 0, i32 2, !dbg !2412
  %78 = bitcast i8** %aux96 to i64*, !dbg !2413
  store i64 %76, i64* %78, align 8, !dbg !2413
  %inc97 = add i32 %qlen.1, 1, !dbg !2414
  call void @llvm.dbg.value(metadata i32 %inc97, metadata !2300, metadata !DIExpression()), !dbg !2302
  %cmp98 = icmp ult %struct.basic_block_def** %incdec.ptr94, %arrayidx33, !dbg !2415
  %spec.select1 = select i1 %cmp98, %struct.basic_block_def** %incdec.ptr94, %struct.basic_block_def** %27, !dbg !2417
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %spec.select1, metadata !2296, metadata !DIExpression()), !dbg !2302
  br label %for.inc103, !dbg !2418

for.inc103:                                       ; preds = %land.lhs.true, %for.body67, %land.lhs.true87, %if.then92
  %qin.4 = phi %struct.basic_block_def** [ %spec.select1, %if.then92 ], [ %qin.2, %land.lhs.true87 ], [ %qin.2, %land.lhs.true ], [ %qin.2, %for.body67 ], !dbg !2302
  %qlen.2 = phi i32 [ %inc97, %if.then92 ], [ %qlen.1, %land.lhs.true87 ], [ %qlen.1, %land.lhs.true ], [ %qlen.1, %for.body67 ], !dbg !2361
  call void @llvm.dbg.value(metadata i32 %qlen.2, metadata !2300, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %qin.4, metadata !2296, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2301, metadata !DIExpression(DW_OP_deref)), !dbg !2302
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2386
  br label %for.cond64, !dbg !2386, !llvm.loop !2419

while.end:                                        ; preds = %while.cond
  %79 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2421
  %cfg106 = getelementptr inbounds %struct.function, %struct.function* %79, i64 0, i32 1, !dbg !2421
  %80 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg106, align 8, !dbg !2421
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %80, i64 0, i32 5, !dbg !2421
  %81 = load i32, i32* %x_last_basic_block, align 8, !dbg !2421
  %idxprom107 = sext i32 %81 to i64, !dbg !2422
  %arrayidx108 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %laterin, i64 %idxprom107, !dbg !2422
  %82 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx108, align 8, !dbg !2422
  call void @sbitmap_ones(%struct.simple_bitmap_def* %82) #6, !dbg !2423
  %83 = bitcast %struct.edge_iterator* %tmp109 to i8*, !dbg !2424
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %83) #8, !dbg !2424
  %84 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2424
  %cfg111 = getelementptr inbounds %struct.function, %struct.function* %84, i64 0, i32 1, !dbg !2424
  %85 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg111, align 8, !dbg !2424
  %x_exit_block_ptr112 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %85, i64 0, i32 1, !dbg !2424
  %86 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr112, align 8, !dbg !2424
  %preds113 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %86, i64 0, i32 0, !dbg !2424
  %call114 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds113) #7, !dbg !2424
  %87 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp109, i64 0, i32 0, !dbg !2424
  %88 = extractvalue { i32, %struct.VEC_edge_gc** } %call114, 0, !dbg !2424
  store i32 %88, i32* %87, align 8, !dbg !2424
  %89 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp109, i64 0, i32 1, !dbg !2424
  %90 = extractvalue { i32, %struct.VEC_edge_gc** } %call114, 1, !dbg !2424
  store %struct.VEC_edge_gc** %90, %struct.VEC_edge_gc*** %89, align 8, !dbg !2424
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %83, i64 16, i1 false), !dbg !2424
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %83) #8, !dbg !2424
  br label %for.cond115, !dbg !2424

for.cond115:                                      ; preds = %for.body118, %while.end
  %91 = load i32, i32* %18, align 8, !dbg !2426
  %92 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %19, align 8, !dbg !2426
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2294, metadata !DIExpression(DW_OP_deref)), !dbg !2302
  %call116 = call fastcc zeroext i8 @ei_cond(i32 %91, %struct.VEC_edge_gc** %92, %struct.edge_def** nonnull %e) #7, !dbg !2426
  %tobool117 = icmp eq i8 %call116, 0, !dbg !2424
  br i1 %tobool117, label %for.end132, label %for.body118, !dbg !2424

for.body118:                                      ; preds = %for.cond115
  %93 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2428
  %cfg120 = getelementptr inbounds %struct.function, %struct.function* %93, i64 0, i32 1, !dbg !2428
  %94 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg120, align 8, !dbg !2428
  %x_last_basic_block121 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %94, i64 0, i32 5, !dbg !2428
  %95 = load i32, i32* %x_last_basic_block121, align 8, !dbg !2428
  %idxprom122 = sext i32 %95 to i64, !dbg !2429
  %arrayidx123 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %laterin, i64 %idxprom122, !dbg !2429
  %96 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx123, align 8, !dbg !2429
  %97 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2430
  call void @llvm.dbg.value(metadata %struct.edge_def* %97, metadata !2294, metadata !DIExpression()), !dbg !2302
  %aux129 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %97, i64 0, i32 3, !dbg !2431
  %98 = bitcast i8** %aux129 to i64*, !dbg !2431
  %99 = load i64, i64* %98, align 8, !dbg !2431
  %arrayidx130 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %later, i64 %99, !dbg !2432
  %100 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx130, align 8, !dbg !2432
  call void @sbitmap_a_and_b(%struct.simple_bitmap_def* %96, %struct.simple_bitmap_def* %96, %struct.simple_bitmap_def* %100) #6, !dbg !2433
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2301, metadata !DIExpression(DW_OP_deref)), !dbg !2302
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2426
  br label %for.cond115, !dbg !2426, !llvm.loop !2434

for.end132:                                       ; preds = %for.cond115
  call void @clear_aux_for_edges() #6, !dbg !2436
  call void @free(i8* %call) #6, !dbg !2437
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2438
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2438
  ret void, !dbg !2438
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_insert_delete(%struct.edge_list* %edge_list, %struct.simple_bitmap_def** %antloc, %struct.simple_bitmap_def** %later, %struct.simple_bitmap_def** %laterin, %struct.simple_bitmap_def** %insert, %struct.simple_bitmap_def** %del) unnamed_addr #4 !dbg !2439 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_list* %edge_list, metadata !2443, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %antloc, metadata !2444, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %later, metadata !2445, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %laterin, metadata !2446, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %insert, metadata !2447, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %del, metadata !2448, metadata !DIExpression()), !dbg !2455
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2456
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2456
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2456
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2456
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2456
  br label %for.cond, !dbg !2456

for.cond:                                         ; preds = %for.body, %entry
  %3 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre1, %for.body ], !dbg !2458
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.body ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2460
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2460
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2450, metadata !DIExpression()), !dbg !2455
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !2458
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2458
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %4, !dbg !2458
  br i1 %cmp, label %for.cond10.preheader, label %for.body, !dbg !2456

for.cond10.preheader:                             ; preds = %for.cond
  %num_edges = getelementptr inbounds %struct.edge_list, %struct.edge_list* %edge_list, i64 0, i32 1, !dbg !2461
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %edge_list, i64 0, i32 2, !dbg !2462
  br label %for.cond10, !dbg !2463

for.body:                                         ; preds = %for.cond
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2464
  %5 = load i32, i32* %index, align 8, !dbg !2464
  %idxprom = sext i32 %5 to i64, !dbg !2465
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %del, i64 %idxprom, !dbg !2465
  %6 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8, !dbg !2465
  %arrayidx5 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %antloc, i64 %idxprom, !dbg !2466
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx5, align 8, !dbg !2466
  %arrayidx8 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %laterin, i64 %idxprom, !dbg !2467
  %8 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx8, align 8, !dbg !2467
  tail call void @sbitmap_difference(%struct.simple_bitmap_def* %6, %struct.simple_bitmap_def* %7, %struct.simple_bitmap_def* %8) #6, !dbg !2468
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2458
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2469
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2458
  br label %for.cond, !dbg !2458, !llvm.loop !2470

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc34
  %indvars.iv = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next, %for.inc34 ], !dbg !2472
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2449, metadata !DIExpression()), !dbg !2455
  %9 = load i32, i32* %num_edges, align 4, !dbg !2473
  %10 = sext i32 %9 to i64, !dbg !2474
  %cmp11 = icmp slt i64 %indvars.iv, %10, !dbg !2474
  br i1 %cmp11, label %for.body12, label %for.end35, !dbg !2463

for.body12:                                       ; preds = %for.cond10
  %11 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !2475
  %arrayidx14 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %11, i64 %indvars.iv, !dbg !2475
  %12 = load %struct.edge_def*, %struct.edge_def** %arrayidx14, align 8, !dbg !2475
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 1, !dbg !2475
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2475
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %13, metadata !2451, metadata !DIExpression()), !dbg !2462
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2476
  %cfg16 = getelementptr inbounds %struct.function, %struct.function* %14, i64 0, i32 1, !dbg !2476
  %15 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg16, align 8, !dbg !2476
  %x_exit_block_ptr17 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 1, !dbg !2476
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr17, align 8, !dbg !2476
  %cmp18 = icmp eq %struct.basic_block_def* %13, %16, !dbg !2478
  %arrayidx20 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %insert, i64 %indvars.iv, !dbg !2479
  %17 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx20, align 8, !dbg !2479
  %arrayidx22 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %later, i64 %indvars.iv, !dbg !2479
  %18 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx22, align 8, !dbg !2479
  br i1 %cmp18, label %if.then, label %if.else, !dbg !2480

if.then:                                          ; preds = %for.body12
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 5, !dbg !2481
  %19 = load i32, i32* %x_last_basic_block, align 8, !dbg !2481
  %idxprom25 = sext i32 %19 to i64, !dbg !2482
  %arrayidx26 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %laterin, i64 %idxprom25, !dbg !2482
  %20 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx26, align 8, !dbg !2482
  tail call void @sbitmap_difference(%struct.simple_bitmap_def* %17, %struct.simple_bitmap_def* %18, %struct.simple_bitmap_def* %20) #6, !dbg !2483
  br label %for.inc34, !dbg !2483

if.else:                                          ; preds = %for.body12
  %index31 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 9, !dbg !2484
  %21 = load i32, i32* %index31, align 8, !dbg !2484
  %idxprom32 = sext i32 %21 to i64, !dbg !2485
  %arrayidx33 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %laterin, i64 %idxprom32, !dbg !2485
  %22 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx33, align 8, !dbg !2485
  tail call void @sbitmap_difference(%struct.simple_bitmap_def* %17, %struct.simple_bitmap_def* %18, %struct.simple_bitmap_def* %22) #6, !dbg !2486
  br label %for.inc34

for.inc34:                                        ; preds = %if.then, %if.else
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2487
  call void @llvm.dbg.value(metadata i32 undef, metadata !2449, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2455
  br label %for.cond10, !dbg !2488, !llvm.loop !2489

for.end35:                                        ; preds = %for.cond10
  ret void, !dbg !2491
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local void @sbitmap_vector_ones(%struct.simple_bitmap_def**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2492 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2496, metadata !DIExpression()), !dbg !2498
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2499
  store i32 0, i32* %index, align 8, !dbg !2500
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2501
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2502
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2503
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2503
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2503
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2504 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2509, metadata !DIExpression()), !dbg !2510
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2511
  %tobool = icmp eq i8 %call, 0, !dbg !2511
  br i1 %tobool, label %if.then, label %if.else, !dbg !2513

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2514
  br label %return, !dbg !2516

if.else:                                          ; preds = %entry
  br label %return, !dbg !2517

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2519
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2519
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2519
  ret i8 %retval.0, !dbg !2520
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !2521 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !2526, metadata !DIExpression()), !dbg !2527
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !2528
  %0 = load i32, i32* %index, align 8, !dbg !2528
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !2528
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2528
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !2528
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2528
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2528

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !2528
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2528
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !2528
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2528
  br label %cond.end, !dbg !2528

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2528
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2528
  %cmp = icmp ult i32 %0, %call2, !dbg !2528
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !2528

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2528
  br label %cond.end5, !dbg !2528

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !2529
  %inc = add i32 %5, 1, !dbg !2529
  store i32 %inc, i32* %index, align 8, !dbg !2529
  ret void, !dbg !2530
}

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local void @sbitmap_intersection_of_preds(%struct.simple_bitmap_def*, %struct.simple_bitmap_def**, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @sbitmap_union_of_diff_cg(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local void @clear_aux_for_edges() local_unnamed_addr #1

declare dso_local void @clear_aux_for_blocks() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.edge_list* @pre_edge_rev_lcm(i32 %n_exprs, %struct.simple_bitmap_def** %transp, %struct.simple_bitmap_def** %st_avloc, %struct.simple_bitmap_def** %st_antloc, %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def*** %insert, %struct.simple_bitmap_def*** %del) local_unnamed_addr #4 !dbg !2531 {
entry:
  call void @llvm.dbg.value(metadata i32 %n_exprs, metadata !2533, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %transp, metadata !2534, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %st_avloc, metadata !2535, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %st_antloc, metadata !2536, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %kill, metadata !2537, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def*** %insert, metadata !2538, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def*** %del, metadata !2539, metadata !DIExpression()), !dbg !2549
  %call = tail call %struct.edge_list* @create_edge_list() #6, !dbg !2550
  call void @llvm.dbg.value(metadata %struct.edge_list* %call, metadata !2547, metadata !DIExpression()), !dbg !2549
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %call, i64 0, i32 1, !dbg !2551
  %0 = load i32, i32* %num_edges1, align 4, !dbg !2551
  call void @llvm.dbg.value(metadata i32 %0, metadata !2548, metadata !DIExpression()), !dbg !2549
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2552
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2552
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2552
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 5, !dbg !2552
  %3 = load i32, i32* %x_last_basic_block, align 8, !dbg !2552
  %call2 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %3, i32 %n_exprs) #6, !dbg !2553
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call2, metadata !2540, metadata !DIExpression()), !dbg !2549
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2554
  %cfg4 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !2554
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg4, align 8, !dbg !2554
  %x_last_basic_block5 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 5, !dbg !2554
  %6 = load i32, i32* %x_last_basic_block5, align 8, !dbg !2554
  %call6 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %6, i32 %n_exprs) #6, !dbg !2555
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call6, metadata !2541, metadata !DIExpression()), !dbg !2549
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2556
  %cfg8 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !2556
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg8, align 8, !dbg !2556
  %x_last_basic_block9 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 5, !dbg !2556
  %9 = load i32, i32* %x_last_basic_block9, align 8, !dbg !2556
  tail call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %call2, i32 %9) #6, !dbg !2557
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2558
  %cfg11 = getelementptr inbounds %struct.function, %struct.function* %10, i64 0, i32 1, !dbg !2558
  %11 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg11, align 8, !dbg !2558
  %x_last_basic_block12 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 5, !dbg !2558
  %12 = load i32, i32* %x_last_basic_block12, align 8, !dbg !2558
  tail call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %call6, i32 %12) #6, !dbg !2559
  tail call fastcc void @compute_antinout_edge(%struct.simple_bitmap_def** %st_antloc, %struct.simple_bitmap_def** %transp, %struct.simple_bitmap_def** %call2, %struct.simple_bitmap_def** %call6) #7, !dbg !2560
  %13 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2561
  %cfg14 = getelementptr inbounds %struct.function, %struct.function* %13, i64 0, i32 1, !dbg !2561
  %14 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg14, align 8, !dbg !2561
  %x_last_basic_block15 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %14, i64 0, i32 5, !dbg !2561
  %15 = load i32, i32* %x_last_basic_block15, align 8, !dbg !2561
  %call16 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %15, i32 %n_exprs) #6, !dbg !2562
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call16, metadata !2542, metadata !DIExpression()), !dbg !2549
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2563
  %cfg18 = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 1, !dbg !2563
  %17 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg18, align 8, !dbg !2563
  %x_last_basic_block19 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 5, !dbg !2563
  %18 = load i32, i32* %x_last_basic_block19, align 8, !dbg !2563
  %call20 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %18, i32 %n_exprs) #6, !dbg !2564
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call20, metadata !2543, metadata !DIExpression()), !dbg !2549
  tail call void @compute_available(%struct.simple_bitmap_def** %st_avloc, %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def** %call16, %struct.simple_bitmap_def** %call20) #7, !dbg !2565
  %call21 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %0, i32 %n_exprs) #6, !dbg !2566
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call21, metadata !2544, metadata !DIExpression()), !dbg !2549
  tail call fastcc void @compute_farthest(%struct.edge_list* %call, i32 %n_exprs, %struct.simple_bitmap_def** %call16, %struct.simple_bitmap_def** %call20, %struct.simple_bitmap_def** %call2, %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def** %call21) #7, !dbg !2567
  %19 = bitcast %struct.simple_bitmap_def** %call2 to i8*, !dbg !2568
  tail call void @free(i8* %19) #6, !dbg !2568
  %20 = bitcast %struct.simple_bitmap_def** %call6 to i8*, !dbg !2569
  tail call void @free(i8* %20) #6, !dbg !2569
  %21 = bitcast %struct.simple_bitmap_def** %call20 to i8*, !dbg !2570
  tail call void @free(i8* %21) #6, !dbg !2570
  %22 = bitcast %struct.simple_bitmap_def** %call16 to i8*, !dbg !2571
  tail call void @free(i8* %22) #6, !dbg !2571
  %call22 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %0, i32 %n_exprs) #6, !dbg !2572
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call22, metadata !2545, metadata !DIExpression()), !dbg !2549
  %23 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2573
  %cfg24 = getelementptr inbounds %struct.function, %struct.function* %23, i64 0, i32 1, !dbg !2573
  %24 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg24, align 8, !dbg !2573
  %x_last_basic_block25 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %24, i64 0, i32 5, !dbg !2573
  %25 = load i32, i32* %x_last_basic_block25, align 8, !dbg !2573
  %add = add nsw i32 %25, 1, !dbg !2574
  %call26 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %add, i32 %n_exprs) #6, !dbg !2575
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call26, metadata !2546, metadata !DIExpression()), !dbg !2549
  tail call fastcc void @compute_nearerout(%struct.edge_list* %call, %struct.simple_bitmap_def** %call21, %struct.simple_bitmap_def** %st_avloc, %struct.simple_bitmap_def** %call22, %struct.simple_bitmap_def** %call26) #7, !dbg !2576
  %26 = bitcast %struct.simple_bitmap_def** %call21 to i8*, !dbg !2577
  tail call void @free(i8* %26) #6, !dbg !2577
  %call27 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %0, i32 %n_exprs) #6, !dbg !2578
  store %struct.simple_bitmap_def** %call27, %struct.simple_bitmap_def*** %insert, align 8, !dbg !2579
  %27 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2580
  %cfg29 = getelementptr inbounds %struct.function, %struct.function* %27, i64 0, i32 1, !dbg !2580
  %28 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg29, align 8, !dbg !2580
  %x_last_basic_block30 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %28, i64 0, i32 5, !dbg !2580
  %29 = load i32, i32* %x_last_basic_block30, align 8, !dbg !2580
  %call31 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %29, i32 %n_exprs) #6, !dbg !2581
  store %struct.simple_bitmap_def** %call31, %struct.simple_bitmap_def*** %del, align 8, !dbg !2582
  %30 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %insert, align 8, !dbg !2583
  tail call fastcc void @compute_rev_insert_delete(%struct.edge_list* %call, %struct.simple_bitmap_def** %st_avloc, %struct.simple_bitmap_def** %call22, %struct.simple_bitmap_def** %call26, %struct.simple_bitmap_def** %30, %struct.simple_bitmap_def** %call31) #7, !dbg !2584
  %31 = bitcast %struct.simple_bitmap_def** %call26 to i8*, !dbg !2585
  tail call void @free(i8* %31) #6, !dbg !2585
  %32 = bitcast %struct.simple_bitmap_def** %call22 to i8*, !dbg !2586
  tail call void @free(i8* %32) #6, !dbg !2586
  ret %struct.edge_list* %call, !dbg !2587
}

declare dso_local void @sbitmap_vector_zero(%struct.simple_bitmap_def**, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_farthest(%struct.edge_list* %edge_list, i32 %n_exprs, %struct.simple_bitmap_def** %st_avout, %struct.simple_bitmap_def** %st_avin, %struct.simple_bitmap_def** %st_antin, %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def** %farthest) unnamed_addr #4 !dbg !2588 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_list* %edge_list, metadata !2590, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %n_exprs, metadata !2591, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %st_avout, metadata !2592, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %st_avin, metadata !2593, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %st_antin, metadata !2594, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %kill, metadata !2595, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %farthest, metadata !2596, metadata !DIExpression()), !dbg !2603
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %edge_list, i64 0, i32 1, !dbg !2604
  %0 = load i32, i32* %num_edges1, align 4, !dbg !2604
  call void @llvm.dbg.value(metadata i32 %0, metadata !2600, metadata !DIExpression()), !dbg !2603
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %n_exprs) #6, !dbg !2605
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !2597, metadata !DIExpression()), !dbg !2603
  %call2 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %n_exprs) #6, !dbg !2606
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call2, metadata !2598, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 0, metadata !2599, metadata !DIExpression()), !dbg !2603
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %edge_list, i64 0, i32 2, !dbg !2607
  %1 = sext i32 %0 to i64, !dbg !2611
  br label %for.cond, !dbg !2611

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !2612
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2599, metadata !DIExpression()), !dbg !2603
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !2613
  br i1 %cmp, label %for.body, label %for.end, !dbg !2614

for.body:                                         ; preds = %for.cond
  %2 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !2615
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %2, i64 %indvars.iv, !dbg !2615
  %3 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2615
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i64 0, i32 0, !dbg !2615
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2615
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %4, metadata !2601, metadata !DIExpression()), !dbg !2603
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i64 0, i32 1, !dbg !2616
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2616
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %5, metadata !2602, metadata !DIExpression()), !dbg !2603
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2617
  %cfg = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 1, !dbg !2617
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2617
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 1, !dbg !2617
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2617
  %cmp6 = icmp eq %struct.basic_block_def* %5, %8, !dbg !2619
  br i1 %cmp6, label %if.then, label %if.else, !dbg !2620

if.then:                                          ; preds = %for.body
  %arrayidx8 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %farthest, i64 %indvars.iv, !dbg !2621
  %9 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx8, align 8, !dbg !2621
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 9, !dbg !2622
  %10 = load i32, i32* %index, align 8, !dbg !2622
  %idxprom9 = sext i32 %10 to i64, !dbg !2623
  %arrayidx10 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %st_avout, i64 %idxprom9, !dbg !2623
  %11 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx10, align 8, !dbg !2623
  tail call void @sbitmap_copy(%struct.simple_bitmap_def* %9, %struct.simple_bitmap_def* %11) #6, !dbg !2624
  br label %for.inc, !dbg !2624

if.else:                                          ; preds = %for.body
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 0, !dbg !2625
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2625
  %cmp13 = icmp eq %struct.basic_block_def* %4, %12, !dbg !2628
  br i1 %cmp13, label %if.then14, label %if.else17, !dbg !2629

if.then14:                                        ; preds = %if.else
  %arrayidx16 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %farthest, i64 %indvars.iv, !dbg !2630
  %13 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx16, align 8, !dbg !2630
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %13) #6, !dbg !2631
  br label %for.inc, !dbg !2631

if.else17:                                        ; preds = %if.else
  %index18 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 9, !dbg !2632
  %14 = load i32, i32* %index18, align 8, !dbg !2632
  %idxprom19 = sext i32 %14 to i64, !dbg !2634
  %arrayidx20 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %st_avout, i64 %idxprom19, !dbg !2634
  %15 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx20, align 8, !dbg !2634
  %index21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 9, !dbg !2635
  %16 = load i32, i32* %index21, align 8, !dbg !2635
  %idxprom22 = sext i32 %16 to i64, !dbg !2636
  %arrayidx23 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %st_antin, i64 %idxprom22, !dbg !2636
  %17 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx23, align 8, !dbg !2636
  tail call void @sbitmap_difference(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %15, %struct.simple_bitmap_def* %17) #6, !dbg !2637
  %18 = load i32, i32* %index21, align 8, !dbg !2638
  %idxprom25 = sext i32 %18 to i64, !dbg !2639
  %arrayidx26 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %st_avin, i64 %idxprom25, !dbg !2639
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx26, align 8, !dbg !2639
  tail call void @sbitmap_not(%struct.simple_bitmap_def* %call2, %struct.simple_bitmap_def* %19) #6, !dbg !2640
  %arrayidx28 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %farthest, i64 %indvars.iv, !dbg !2641
  %20 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx28, align 8, !dbg !2641
  %21 = load i32, i32* %index21, align 8, !dbg !2642
  %idxprom30 = sext i32 %21 to i64, !dbg !2643
  %arrayidx31 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %kill, i64 %idxprom30, !dbg !2643
  %22 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx31, align 8, !dbg !2643
  tail call void @sbitmap_a_and_b_or_c(%struct.simple_bitmap_def* %20, %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %22, %struct.simple_bitmap_def* %call2) #6, !dbg !2644
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else17, %if.then14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2645
  call void @llvm.dbg.value(metadata i32 undef, metadata !2599, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2603
  br label %for.cond, !dbg !2646, !llvm.loop !2647

for.end:                                          ; preds = %for.cond
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call2, i64 0, i32 0, !dbg !2649
  %23 = load i8*, i8** %popcount, align 8, !dbg !2649
  tail call void @free(i8* %23) #6, !dbg !2649
  %24 = bitcast %struct.simple_bitmap_def* %call2 to i8*, !dbg !2649
  tail call void @free(i8* %24) #6, !dbg !2649
  %popcount33 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 0, !dbg !2650
  %25 = load i8*, i8** %popcount33, align 8, !dbg !2650
  tail call void @free(i8* %25) #6, !dbg !2650
  %26 = bitcast %struct.simple_bitmap_def* %call to i8*, !dbg !2650
  tail call void @free(i8* %26) #6, !dbg !2650
  ret void, !dbg !2651
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_nearerout(%struct.edge_list* %edge_list, %struct.simple_bitmap_def** %farthest, %struct.simple_bitmap_def** %st_avloc, %struct.simple_bitmap_def** %nearer, %struct.simple_bitmap_def** %nearerout) unnamed_addr #4 !dbg !2652 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp35 = alloca %struct.edge_iterator, align 8
  %tmp51 = alloca %struct.edge_iterator, align 8
  %tmp92 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_list* %edge_list, metadata !2654, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %farthest, metadata !2655, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %st_avloc, metadata !2656, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %nearer, metadata !2657, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %nearerout, metadata !2658, metadata !DIExpression()), !dbg !2666
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2667
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2667
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2668
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2668
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %edge_list, i64 0, i32 1, !dbg !2669
  %2 = load i32, i32* %num_edges1, align 4, !dbg !2669
  call void @llvm.dbg.value(metadata i32 %2, metadata !2659, metadata !DIExpression()), !dbg !2666
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2670
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !2670
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2670
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 3, !dbg !2670
  %5 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2670
  %add = add nsw i32 %5, 1, !dbg !2670
  %conv = sext i32 %add to i64, !dbg !2670
  %mul = shl nsw i64 %conv, 3, !dbg !2670
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2670
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %27, metadata !2662, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %27, metadata !2663, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i32 0, metadata !2660, metadata !DIExpression()), !dbg !2666
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %edge_list, i64 0, i32 2, !dbg !2671
  %6 = sext i32 %2 to i64, !dbg !2674
  br label %for.cond, !dbg !2674

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !2675
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2660, metadata !DIExpression()), !dbg !2666
  %cmp = icmp slt i64 %indvars.iv, %6, !dbg !2676
  br i1 %cmp, label %for.body, label %for.end, !dbg !2677

for.body:                                         ; preds = %for.cond
  %7 = inttoptr i64 %indvars.iv to i8*, !dbg !2678
  %8 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !2679
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %8, i64 %indvars.iv, !dbg !2679
  %9 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2679
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %9, i64 0, i32 3, !dbg !2680
  store i8* %7, i8** %aux, align 8, !dbg !2681
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2682
  call void @llvm.dbg.value(metadata i32 undef, metadata !2660, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2666
  br label %for.cond, !dbg !2683, !llvm.loop !2684

for.end:                                          ; preds = %for.cond
  tail call void @sbitmap_vector_ones(%struct.simple_bitmap_def** %nearer, i32 %2) #6, !dbg !2686
  %10 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2687
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #8, !dbg !2687
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2687
  %cfg5 = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 1, !dbg !2687
  %12 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg5, align 8, !dbg !2687
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 1, !dbg !2687
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2687
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 0, !dbg !2687
  %call6 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !2687
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2687
  %15 = extractvalue { i32, %struct.VEC_edge_gc** } %call6, 0, !dbg !2687
  store i32 %15, i32* %14, align 8, !dbg !2687
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2687
  %17 = extractvalue { i32, %struct.VEC_edge_gc** } %call6, 1, !dbg !2687
  store %struct.VEC_edge_gc** %17, %struct.VEC_edge_gc*** %16, align 8, !dbg !2687
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %10, i64 16, i1 false), !dbg !2687
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #8, !dbg !2687
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2689
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2689
  br label %for.cond7, !dbg !2687

for.cond7:                                        ; preds = %for.body9, %for.end
  %20 = load i32, i32* %18, align 8, !dbg !2691
  %21 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %19, align 8, !dbg !2691
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2661, metadata !DIExpression(DW_OP_deref)), !dbg !2666
  %call8 = call fastcc zeroext i8 @ei_cond(i32 %20, %struct.VEC_edge_gc** %21, %struct.edge_def** nonnull %e) #7, !dbg !2691
  %tobool = icmp eq i8 %call8, 0, !dbg !2687
  br i1 %tobool, label %for.end15, label %for.body9, !dbg !2687

for.body9:                                        ; preds = %for.cond7
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2692
  call void @llvm.dbg.value(metadata %struct.edge_def* %22, metadata !2661, metadata !DIExpression()), !dbg !2666
  %aux10 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %22, i64 0, i32 3, !dbg !2693
  %23 = bitcast i8** %aux10 to i64*, !dbg !2693
  %24 = load i64, i64* %23, align 8, !dbg !2693
  %arrayidx11 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nearer, i64 %24, !dbg !2694
  %25 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx11, align 8, !dbg !2694
  call void @llvm.dbg.value(metadata %struct.edge_def* %22, metadata !2661, metadata !DIExpression()), !dbg !2666
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %farthest, i64 %24, !dbg !2695
  %26 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx13, align 8, !dbg !2695
  call void @sbitmap_copy(%struct.simple_bitmap_def* %25, %struct.simple_bitmap_def* %26) #6, !dbg !2696
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2665, metadata !DIExpression(DW_OP_deref)), !dbg !2666
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2691
  br label %for.cond7, !dbg !2691, !llvm.loop !2697

for.end15:                                        ; preds = %for.cond7
  %27 = bitcast i8* %call to %struct.basic_block_def**, !dbg !2670
  %28 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2699
  %cfg17 = getelementptr inbounds %struct.function, %struct.function* %28, i64 0, i32 1, !dbg !2699
  %29 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg17, align 8, !dbg !2699
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %29, i64 0, i32 0, !dbg !2699
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2699
  br label %for.cond18, !dbg !2699

for.cond18:                                       ; preds = %for.body24, %for.end15
  %31 = phi %struct.control_flow_graph* [ %29, %for.end15 ], [ %.pre1, %for.body24 ], !dbg !2701
  %tos.0 = phi %struct.basic_block_def** [ %27, %for.end15 ], [ %incdec.ptr, %for.body24 ], !dbg !2666
  %.pn = phi %struct.basic_block_def* [ %30, %for.end15 ], [ %bb.0, %for.body24 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2703
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2703
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2664, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.0, metadata !2663, metadata !DIExpression()), !dbg !2666
  %x_exit_block_ptr21 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %31, i64 0, i32 1, !dbg !2701
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr21, align 8, !dbg !2701
  %cmp22 = icmp eq %struct.basic_block_def* %bb.0, %32, !dbg !2701
  br i1 %cmp22, label %while.cond.preheader, label %for.body24, !dbg !2699

while.cond.preheader:                             ; preds = %for.cond18
  %tos.0.lcssa = phi %struct.basic_block_def** [ %tos.0, %for.cond18 ], !dbg !2666
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.0.lcssa, metadata !2663, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.0.lcssa, metadata !2663, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.0.lcssa, metadata !2663, metadata !DIExpression()), !dbg !2666
  %33 = bitcast %struct.edge_iterator* %tmp35 to i8*, !dbg !2704
  %34 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp35, i64 0, i32 0, !dbg !2704
  %35 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp35, i64 0, i32 1, !dbg !2704
  %36 = bitcast %struct.edge_iterator* %tmp51 to i8*, !dbg !2707
  %37 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp51, i64 0, i32 0, !dbg !2707
  %38 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp51, i64 0, i32 1, !dbg !2707
  %39 = bitcast %struct.edge_def** %e to i64*, !dbg !2709
  br label %while.cond, !dbg !2713

for.body24:                                       ; preds = %for.cond18
  %incdec.ptr = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %tos.0, i64 1, !dbg !2714
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr, metadata !2663, metadata !DIExpression()), !dbg !2666
  store %struct.basic_block_def* %bb.0, %struct.basic_block_def** %tos.0, align 8, !dbg !2716
  %aux25 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !2717
  %40 = bitcast i8** %aux25 to %struct.basic_block_def**, !dbg !2718
  store %struct.basic_block_def* %bb.0, %struct.basic_block_def** %40, align 8, !dbg !2718
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2701
  %cfg20.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2719
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg20.phi.trans.insert, align 8, !dbg !2701
  br label %for.cond18, !dbg !2701, !llvm.loop !2720

while.cond.loopexit:                              ; preds = %for.cond54
  %tos.2.lcssa = phi %struct.basic_block_def** [ %tos.2, %for.cond54 ], !dbg !2722
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.2.lcssa, metadata !2663, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.2.lcssa, metadata !2663, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.2.lcssa, metadata !2663, metadata !DIExpression()), !dbg !2666
  br label %while.cond, !dbg !2713

while.cond:                                       ; preds = %while.cond.preheader, %while.cond.loopexit
  %tos.1 = phi %struct.basic_block_def** [ %tos.2.lcssa, %while.cond.loopexit ], [ %tos.0.lcssa, %while.cond.preheader ], !dbg !2666
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.1, metadata !2663, metadata !DIExpression()), !dbg !2666
  %cmp29 = icmp eq %struct.basic_block_def** %tos.1, %27, !dbg !2723
  br i1 %cmp29, label %while.end, label %while.body, !dbg !2713

while.body:                                       ; preds = %while.cond
  %incdec.ptr31 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %tos.1, i64 -1, !dbg !2724
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr31, metadata !2663, metadata !DIExpression()), !dbg !2666
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %incdec.ptr31, align 8, !dbg !2725
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %41, metadata !2664, metadata !DIExpression()), !dbg !2666
  %aux32 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i64 0, i32 2, !dbg !2726
  store i8* null, i8** %aux32, align 8, !dbg !2727
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i64 0, i32 9, !dbg !2728
  %42 = load i32, i32* %index, align 8, !dbg !2728
  %idxprom33 = sext i32 %42 to i64, !dbg !2729
  %arrayidx34 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nearerout, i64 %idxprom33, !dbg !2729
  %43 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx34, align 8, !dbg !2729
  call void @sbitmap_ones(%struct.simple_bitmap_def* %43) #6, !dbg !2730
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %33) #8, !dbg !2731
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i64 0, i32 1, !dbg !2731
  %call36 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2731
  %44 = extractvalue { i32, %struct.VEC_edge_gc** } %call36, 0, !dbg !2731
  store i32 %44, i32* %34, align 8, !dbg !2731
  %45 = extractvalue { i32, %struct.VEC_edge_gc** } %call36, 1, !dbg !2731
  store %struct.VEC_edge_gc** %45, %struct.VEC_edge_gc*** %35, align 8, !dbg !2731
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %33, i64 16, i1 false), !dbg !2731
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %33) #8, !dbg !2731
  br label %for.cond37, !dbg !2731

for.cond37:                                       ; preds = %for.body40, %while.body
  %46 = load i32, i32* %18, align 8, !dbg !2732
  %47 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %19, align 8, !dbg !2732
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2661, metadata !DIExpression(DW_OP_deref)), !dbg !2666
  %call38 = call fastcc zeroext i8 @ei_cond(i32 %46, %struct.VEC_edge_gc** %47, %struct.edge_def** nonnull %e) #7, !dbg !2732
  %tobool39 = icmp eq i8 %call38, 0, !dbg !2731
  br i1 %tobool39, label %for.end50, label %for.body40, !dbg !2731

for.body40:                                       ; preds = %for.cond37
  %48 = load i32, i32* %index, align 8, !dbg !2734
  %idxprom42 = sext i32 %48 to i64, !dbg !2735
  %arrayidx43 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nearerout, i64 %idxprom42, !dbg !2735
  %49 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx43, align 8, !dbg !2735
  %50 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2736
  call void @llvm.dbg.value(metadata %struct.edge_def* %50, metadata !2661, metadata !DIExpression()), !dbg !2666
  %aux47 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %50, i64 0, i32 3, !dbg !2737
  %51 = bitcast i8** %aux47 to i64*, !dbg !2737
  %52 = load i64, i64* %51, align 8, !dbg !2737
  %arrayidx48 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nearer, i64 %52, !dbg !2738
  %53 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx48, align 8, !dbg !2738
  call void @sbitmap_a_and_b(%struct.simple_bitmap_def* %49, %struct.simple_bitmap_def* %49, %struct.simple_bitmap_def* %53) #6, !dbg !2739
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2665, metadata !DIExpression(DW_OP_deref)), !dbg !2666
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2732
  br label %for.cond37, !dbg !2732, !llvm.loop !2740

for.end50:                                        ; preds = %for.cond37
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %36) #8, !dbg !2742
  %preds52 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i64 0, i32 0, !dbg !2742
  %call53 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds52) #7, !dbg !2742
  %54 = extractvalue { i32, %struct.VEC_edge_gc** } %call53, 0, !dbg !2742
  store i32 %54, i32* %37, align 8, !dbg !2742
  %55 = extractvalue { i32, %struct.VEC_edge_gc** } %call53, 1, !dbg !2742
  store %struct.VEC_edge_gc** %55, %struct.VEC_edge_gc*** %38, align 8, !dbg !2742
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %36, i64 16, i1 false), !dbg !2742
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %36) #8, !dbg !2742
  br label %for.cond54, !dbg !2742

for.cond54:                                       ; preds = %for.inc86, %for.end50
  %tos.2 = phi %struct.basic_block_def** [ %incdec.ptr31, %for.end50 ], [ %tos.3, %for.inc86 ], !dbg !2722
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.2, metadata !2663, metadata !DIExpression()), !dbg !2666
  %56 = load i32, i32* %18, align 8, !dbg !2743
  %57 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %19, align 8, !dbg !2743
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2661, metadata !DIExpression(DW_OP_deref)), !dbg !2666
  %call55 = call fastcc zeroext i8 @ei_cond(i32 %56, %struct.VEC_edge_gc** %57, %struct.edge_def** nonnull %e) #7, !dbg !2743
  %tobool56 = icmp eq i8 %call55, 0, !dbg !2742
  br i1 %tobool56, label %while.cond.loopexit, label %for.body57, !dbg !2742, !llvm.loop !2744

for.body57:                                       ; preds = %for.cond54
  %58 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2746
  call void @llvm.dbg.value(metadata %struct.edge_def* %58, metadata !2661, metadata !DIExpression()), !dbg !2666
  %aux58 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %58, i64 0, i32 3, !dbg !2747
  %59 = bitcast i8** %aux58 to i64*, !dbg !2747
  %60 = load i64, i64* %59, align 8, !dbg !2747
  %arrayidx59 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nearer, i64 %60, !dbg !2748
  %61 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx59, align 8, !dbg !2748
  call void @llvm.dbg.value(metadata %struct.edge_def* %58, metadata !2661, metadata !DIExpression()), !dbg !2666
  %arrayidx61 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %farthest, i64 %60, !dbg !2749
  %62 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx61, align 8, !dbg !2749
  call void @llvm.dbg.value(metadata %struct.edge_def* %58, metadata !2661, metadata !DIExpression()), !dbg !2666
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %58, i64 0, i32 1, !dbg !2750
  %63 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2750
  %index62 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %63, i64 0, i32 9, !dbg !2751
  %64 = load i32, i32* %index62, align 8, !dbg !2751
  %idxprom63 = sext i32 %64 to i64, !dbg !2752
  %arrayidx64 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nearerout, i64 %idxprom63, !dbg !2752
  %65 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx64, align 8, !dbg !2752
  call void @llvm.dbg.value(metadata %struct.edge_def* %58, metadata !2661, metadata !DIExpression()), !dbg !2666
  %arrayidx68 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %st_avloc, i64 %idxprom63, !dbg !2753
  %66 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx68, align 8, !dbg !2753
  %call69 = call zeroext i8 @sbitmap_union_of_diff_cg(%struct.simple_bitmap_def* %61, %struct.simple_bitmap_def* %62, %struct.simple_bitmap_def* %65, %struct.simple_bitmap_def* %66) #6, !dbg !2754
  %tobool71 = icmp eq i8 %call69, 0, !dbg !2754
  br i1 %tobool71, label %for.inc86, label %land.lhs.true, !dbg !2755

land.lhs.true:                                    ; preds = %for.body57
  %67 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2756
  call void @llvm.dbg.value(metadata %struct.edge_def* %67, metadata !2661, metadata !DIExpression()), !dbg !2666
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %67, i64 0, i32 0, !dbg !2757
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2757
  %69 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2758
  %cfg73 = getelementptr inbounds %struct.function, %struct.function* %69, i64 0, i32 1, !dbg !2758
  %70 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg73, align 8, !dbg !2758
  %x_entry_block_ptr74 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %70, i64 0, i32 0, !dbg !2758
  %71 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr74, align 8, !dbg !2758
  %cmp75 = icmp eq %struct.basic_block_def* %68, %71, !dbg !2759
  %72 = ptrtoint %struct.basic_block_def* %68 to i64, !dbg !2760
  br i1 %cmp75, label %for.inc86, label %land.lhs.true77, !dbg !2760

land.lhs.true77:                                  ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.edge_def* %67, metadata !2661, metadata !DIExpression()), !dbg !2666
  %aux79 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i64 0, i32 2, !dbg !2761
  %73 = load i8*, i8** %aux79, align 8, !dbg !2761
  %cmp80 = icmp eq i8* %73, null, !dbg !2762
  br i1 %cmp80, label %if.then, label %for.inc86, !dbg !2763

if.then:                                          ; preds = %land.lhs.true77
  %incdec.ptr83 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %tos.2, i64 1, !dbg !2764
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr83, metadata !2663, metadata !DIExpression()), !dbg !2666
  %74 = bitcast %struct.basic_block_def** %tos.2 to i64*, !dbg !2765
  store i64 %72, i64* %74, align 8, !dbg !2765
  %75 = load i64, i64* %39, align 8, !dbg !2766
  %.cast = inttoptr i64 %75 to %struct.edge_def*, !dbg !2767
  call void @llvm.dbg.value(metadata %struct.edge_def* %.cast, metadata !2661, metadata !DIExpression()), !dbg !2666
  %src84 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %.cast, i64 0, i32 0, !dbg !2768
  %76 = load %struct.basic_block_def*, %struct.basic_block_def** %src84, align 8, !dbg !2768
  %aux85 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %76, i64 0, i32 2, !dbg !2769
  %77 = bitcast i8** %aux85 to i64*, !dbg !2770
  store i64 %75, i64* %77, align 8, !dbg !2770
  br label %for.inc86, !dbg !2771

for.inc86:                                        ; preds = %land.lhs.true, %for.body57, %land.lhs.true77, %if.then
  %tos.3 = phi %struct.basic_block_def** [ %incdec.ptr83, %if.then ], [ %tos.2, %land.lhs.true77 ], [ %tos.2, %land.lhs.true ], [ %tos.2, %for.body57 ], !dbg !2722
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.3, metadata !2663, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2665, metadata !DIExpression(DW_OP_deref)), !dbg !2666
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2743
  br label %for.cond54, !dbg !2743, !llvm.loop !2772

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.1, metadata !2663, metadata !DIExpression()), !dbg !2666
  %78 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2774
  %cfg89 = getelementptr inbounds %struct.function, %struct.function* %78, i64 0, i32 1, !dbg !2774
  %79 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg89, align 8, !dbg !2774
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %79, i64 0, i32 5, !dbg !2774
  %80 = load i32, i32* %x_last_basic_block, align 8, !dbg !2774
  %idxprom90 = sext i32 %80 to i64, !dbg !2775
  %arrayidx91 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nearerout, i64 %idxprom90, !dbg !2775
  %81 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx91, align 8, !dbg !2775
  call void @sbitmap_ones(%struct.simple_bitmap_def* %81) #6, !dbg !2776
  %82 = bitcast %struct.edge_iterator* %tmp92 to i8*, !dbg !2777
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %82) #8, !dbg !2777
  %83 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2777
  %cfg94 = getelementptr inbounds %struct.function, %struct.function* %83, i64 0, i32 1, !dbg !2777
  %84 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg94, align 8, !dbg !2777
  %x_entry_block_ptr95 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %84, i64 0, i32 0, !dbg !2777
  %85 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr95, align 8, !dbg !2777
  %succs96 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %85, i64 0, i32 1, !dbg !2777
  %call97 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs96) #7, !dbg !2777
  %86 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp92, i64 0, i32 0, !dbg !2777
  %87 = extractvalue { i32, %struct.VEC_edge_gc** } %call97, 0, !dbg !2777
  store i32 %87, i32* %86, align 8, !dbg !2777
  %88 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp92, i64 0, i32 1, !dbg !2777
  %89 = extractvalue { i32, %struct.VEC_edge_gc** } %call97, 1, !dbg !2777
  store %struct.VEC_edge_gc** %89, %struct.VEC_edge_gc*** %88, align 8, !dbg !2777
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %82, i64 16, i1 false), !dbg !2777
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %82) #8, !dbg !2777
  br label %for.cond98, !dbg !2777

for.cond98:                                       ; preds = %for.body101, %while.end
  %90 = load i32, i32* %18, align 8, !dbg !2779
  %91 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %19, align 8, !dbg !2779
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2661, metadata !DIExpression(DW_OP_deref)), !dbg !2666
  %call99 = call fastcc zeroext i8 @ei_cond(i32 %90, %struct.VEC_edge_gc** %91, %struct.edge_def** nonnull %e) #7, !dbg !2779
  %tobool100 = icmp eq i8 %call99, 0, !dbg !2777
  br i1 %tobool100, label %for.end115, label %for.body101, !dbg !2777

for.body101:                                      ; preds = %for.cond98
  %92 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2781
  %cfg103 = getelementptr inbounds %struct.function, %struct.function* %92, i64 0, i32 1, !dbg !2781
  %93 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg103, align 8, !dbg !2781
  %x_last_basic_block104 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %93, i64 0, i32 5, !dbg !2781
  %94 = load i32, i32* %x_last_basic_block104, align 8, !dbg !2781
  %idxprom105 = sext i32 %94 to i64, !dbg !2782
  %arrayidx106 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nearerout, i64 %idxprom105, !dbg !2782
  %95 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx106, align 8, !dbg !2782
  %96 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2783
  call void @llvm.dbg.value(metadata %struct.edge_def* %96, metadata !2661, metadata !DIExpression()), !dbg !2666
  %aux112 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %96, i64 0, i32 3, !dbg !2784
  %97 = bitcast i8** %aux112 to i64*, !dbg !2784
  %98 = load i64, i64* %97, align 8, !dbg !2784
  %arrayidx113 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nearer, i64 %98, !dbg !2785
  %99 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx113, align 8, !dbg !2785
  call void @sbitmap_a_and_b(%struct.simple_bitmap_def* %95, %struct.simple_bitmap_def* %95, %struct.simple_bitmap_def* %99) #6, !dbg !2786
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2665, metadata !DIExpression(DW_OP_deref)), !dbg !2666
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2779
  br label %for.cond98, !dbg !2779, !llvm.loop !2787

for.end115:                                       ; preds = %for.cond98
  call void @clear_aux_for_edges() #6, !dbg !2789
  call void @free(i8* %call) #6, !dbg !2790
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2791
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2791
  ret void, !dbg !2791
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_rev_insert_delete(%struct.edge_list* %edge_list, %struct.simple_bitmap_def** %st_avloc, %struct.simple_bitmap_def** %nearer, %struct.simple_bitmap_def** %nearerout, %struct.simple_bitmap_def** %insert, %struct.simple_bitmap_def** %del) unnamed_addr #4 !dbg !2792 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_list* %edge_list, metadata !2794, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %st_avloc, metadata !2795, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %nearer, metadata !2796, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %nearerout, metadata !2797, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %insert, metadata !2798, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %del, metadata !2799, metadata !DIExpression()), !dbg !2806
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2807
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2807
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2807
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2807
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2807
  br label %for.cond, !dbg !2807

for.cond:                                         ; preds = %for.body, %entry
  %3 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre1, %for.body ], !dbg !2809
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.body ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2811
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2811
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2801, metadata !DIExpression()), !dbg !2806
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !2809
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2809
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %4, !dbg !2809
  br i1 %cmp, label %for.cond10.preheader, label %for.body, !dbg !2807

for.cond10.preheader:                             ; preds = %for.cond
  %num_edges = getelementptr inbounds %struct.edge_list, %struct.edge_list* %edge_list, i64 0, i32 1, !dbg !2812
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %edge_list, i64 0, i32 2, !dbg !2813
  br label %for.cond10, !dbg !2814

for.body:                                         ; preds = %for.cond
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2815
  %5 = load i32, i32* %index, align 8, !dbg !2815
  %idxprom = sext i32 %5 to i64, !dbg !2816
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %del, i64 %idxprom, !dbg !2816
  %6 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8, !dbg !2816
  %arrayidx5 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %st_avloc, i64 %idxprom, !dbg !2817
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx5, align 8, !dbg !2817
  %arrayidx8 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nearerout, i64 %idxprom, !dbg !2818
  %8 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx8, align 8, !dbg !2818
  tail call void @sbitmap_difference(%struct.simple_bitmap_def* %6, %struct.simple_bitmap_def* %7, %struct.simple_bitmap_def* %8) #6, !dbg !2819
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2809
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2820
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2809
  br label %for.cond, !dbg !2809, !llvm.loop !2821

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc34
  %indvars.iv = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next, %for.inc34 ], !dbg !2823
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2800, metadata !DIExpression()), !dbg !2806
  %9 = load i32, i32* %num_edges, align 4, !dbg !2824
  %10 = sext i32 %9 to i64, !dbg !2825
  %cmp11 = icmp slt i64 %indvars.iv, %10, !dbg !2825
  br i1 %cmp11, label %for.body12, label %for.end35, !dbg !2814

for.body12:                                       ; preds = %for.cond10
  %11 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !2826
  %arrayidx14 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %11, i64 %indvars.iv, !dbg !2826
  %12 = load %struct.edge_def*, %struct.edge_def** %arrayidx14, align 8, !dbg !2826
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 0, !dbg !2826
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2826
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %13, metadata !2802, metadata !DIExpression()), !dbg !2813
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2827
  %cfg16 = getelementptr inbounds %struct.function, %struct.function* %14, i64 0, i32 1, !dbg !2827
  %15 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg16, align 8, !dbg !2827
  %x_entry_block_ptr17 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 0, !dbg !2827
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr17, align 8, !dbg !2827
  %cmp18 = icmp eq %struct.basic_block_def* %13, %16, !dbg !2829
  %arrayidx20 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %insert, i64 %indvars.iv, !dbg !2830
  %17 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx20, align 8, !dbg !2830
  %arrayidx22 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nearer, i64 %indvars.iv, !dbg !2830
  %18 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx22, align 8, !dbg !2830
  br i1 %cmp18, label %if.then, label %if.else, !dbg !2831

if.then:                                          ; preds = %for.body12
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 5, !dbg !2832
  %19 = load i32, i32* %x_last_basic_block, align 8, !dbg !2832
  %idxprom25 = sext i32 %19 to i64, !dbg !2833
  %arrayidx26 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nearerout, i64 %idxprom25, !dbg !2833
  %20 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx26, align 8, !dbg !2833
  tail call void @sbitmap_difference(%struct.simple_bitmap_def* %17, %struct.simple_bitmap_def* %18, %struct.simple_bitmap_def* %20) #6, !dbg !2834
  br label %for.inc34, !dbg !2834

if.else:                                          ; preds = %for.body12
  %index31 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 9, !dbg !2835
  %21 = load i32, i32* %index31, align 8, !dbg !2835
  %idxprom32 = sext i32 %21 to i64, !dbg !2836
  %arrayidx33 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nearerout, i64 %idxprom32, !dbg !2836
  %22 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx33, align 8, !dbg !2836
  tail call void @sbitmap_difference(%struct.simple_bitmap_def* %17, %struct.simple_bitmap_def* %18, %struct.simple_bitmap_def* %22) #6, !dbg !2837
  br label %for.inc34

for.inc34:                                        ; preds = %if.then, %if.else
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2838
  call void @llvm.dbg.value(metadata i32 undef, metadata !2800, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2806
  br label %for.cond10, !dbg !2839, !llvm.loop !2840

for.end35:                                        ; preds = %for.cond10
  ret void, !dbg !2842
}

declare dso_local void @sbitmap_intersection_of_succs(%struct.simple_bitmap_def*, %struct.simple_bitmap_def**, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @sbitmap_a_or_b_and_c_cg(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #1

declare dso_local void @sbitmap_copy(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local void @sbitmap_difference(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local void @sbitmap_not(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local void @sbitmap_a_and_b_or_c(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local void @sbitmap_ones(%struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local void @sbitmap_a_and_b(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2843 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !2848
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2848
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2848

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !2848
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2848
  br label %cond.end, !dbg !2848

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2848
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2848
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !2849
  %conv3 = zext i1 %cmp to i8, !dbg !2850
  ret i8 %conv3, !dbg !2851
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2852 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !2857
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2857
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2857

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !2857
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2857
  br label %cond.end, !dbg !2857

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2857
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !2857
  ret %struct.edge_def* %call2, !dbg !2858
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !2859 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2865, metadata !DIExpression()), !dbg !2866
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !2867
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2867

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !2867
  %0 = load i32, i32* %num, align 8, !dbg !2867
  br label %cond.end, !dbg !2867

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2867
  ret i32 %cond, !dbg !2867
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2868 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !2873
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2873

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2873
  br label %cond.end, !dbg !2873

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !2874
  ret %struct.VEC_edge_gc* %0, !dbg !2875
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2876 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2880, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2881, metadata !DIExpression()), !dbg !2882
  br label %land.end, !dbg !2883

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2883
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2883
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2883
  ret %struct.edge_def* %0, !dbg !2883
}

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
!llvm.module.flags = !{!1457, !1458, !1459}
!llvm.ident = !{!1460}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !375, nameTableKind: None)
!1 = !DIFile(filename: "lcm.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !132, !138, !143, !148, !167, !174, !181}
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
!375 = !{!376, !377, !378, !379, !382, !383, !385, !850}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!378 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !387, line: 111, baseType: !388)
!387 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !133, line: 217, size: 832, elements: !390)
!390 = !{!391, !1422, !1423, !1424, !1427, !1431, !1432, !1433, !1451, !1452, !1453, !1454, !1455, !1456}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !389, file: !133, line: 219, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !133, line: 151, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !133, line: 151, size: 128, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !394, file: !133, line: 151, baseType: !397, size: 128)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !133, line: 150, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !133, line: 150, size: 128, elements: !399)
!399 = !{!400, !401, !402}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !398, file: !133, line: 150, baseType: !5, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !398, file: !133, line: 150, baseType: !5, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !398, file: !133, line: 150, baseType: !403, size: 64, offset: 64)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 64, elements: !453)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !387, line: 108, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !133, line: 122, size: 512, elements: !407)
!407 = !{!408, !409, !410, !1414, !1415, !1416, !1417, !1418, !1419, !1420}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !406, file: !133, line: 124, baseType: !388, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !406, file: !133, line: 125, baseType: !388, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !406, file: !133, line: 131, baseType: !411, size: 64, offset: 128)
!411 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !133, line: 128, size: 64, elements: !412)
!412 = !{!413, !417}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !411, file: !133, line: 129, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !387, line: 66, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !387, line: 65, flags: DIFlagFwdDecl)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !411, file: !133, line: 130, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !387, line: 50, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !421, line: 240, size: 384, elements: !422)
!421 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !420, file: !421, line: 242, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !420, file: !421, line: 245, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !420, file: !421, line: 252, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !420, file: !421, line: 257, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !420, file: !421, line: 265, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !420, file: !421, line: 277, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !420, file: !421, line: 291, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !420, file: !421, line: 298, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !420, file: !421, line: 305, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !420, file: !421, line: 310, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !420, file: !421, line: 321, baseType: !434, size: 320, offset: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !421, line: 315, size: 320, elements: !435)
!435 = !{!436, !1349, !1351, !1412, !1413}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !434, file: !421, line: 316, baseType: !437, size: 64)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 64, elements: !453)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !421, line: 183, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !421, line: 166, size: 64, elements: !440)
!440 = !{!441, !442, !443, !444, !445, !455, !456, !468, !471, !533, !1327, !1328, !1339, !1346}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !439, file: !421, line: 168, baseType: !378, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !439, file: !421, line: 169, baseType: !5, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !439, file: !421, line: 170, baseType: !383, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !439, file: !421, line: 171, baseType: !418, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !439, file: !421, line: 172, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !387, line: 53, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !421, line: 359, size: 128, elements: !449)
!449 = !{!450, !451}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !448, file: !421, line: 360, baseType: !378, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !448, file: !421, line: 361, baseType: !452, size: 64, offset: 64)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 64, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 1)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !439, file: !421, line: 173, baseType: !3, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !439, file: !421, line: 174, baseType: !457, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !421, line: 133, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !421, line: 115, size: 32, elements: !459)
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !458, file: !421, line: 118, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !458, file: !421, line: 120, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !458, file: !421, line: 121, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !458, file: !421, line: 123, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !458, file: !421, line: 125, baseType: !5, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !458, file: !421, line: 127, baseType: !5, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !458, file: !421, line: 130, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !458, file: !421, line: 132, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !439, file: !421, line: 175, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !421, line: 175, flags: DIFlagFwdDecl)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !439, file: !421, line: 176, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !474, line: 75, size: 256, elements: !475)
!474 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!475 = !{!476, !491, !492, !493}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !473, file: !474, line: 76, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !474, line: 68, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !474, line: 63, size: 320, elements: !480)
!480 = !{!481, !483, !484, !485}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !479, file: !474, line: 64, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !479, file: !474, line: 65, baseType: !482, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !479, file: !474, line: 66, baseType: !5, size: 32, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !479, file: !474, line: 67, baseType: !486, size: 128, offset: 192)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 128, elements: !489)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !474, line: 29, baseType: !488)
!488 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!489 = !{!490}
!490 = !DISubrange(count: 2)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !473, file: !474, line: 77, baseType: !477, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !473, file: !474, line: 78, baseType: !5, size: 32, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !473, file: !474, line: 79, baseType: !494, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !474, line: 49, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !474, line: 45, size: 832, elements: !497)
!497 = !{!498, !499, !500}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !496, file: !474, line: 46, baseType: !482, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !496, file: !474, line: 47, baseType: !472, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !496, file: !474, line: 48, baseType: !501, size: 704, offset: 128)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !502, line: 164, size: 704, elements: !503)
!502 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!503 = !{!504, !506, !516, !517, !518, !519, !520, !521, !525, !529, !530, !531, !532}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !501, file: !502, line: 166, baseType: !505, size: 64)
!505 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !501, file: !502, line: 167, baseType: !507, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !502, line: 157, size: 192, elements: !509)
!509 = !{!510, !511, !512}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !508, file: !502, line: 159, baseType: !380, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !508, file: !502, line: 160, baseType: !507, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !508, file: !502, line: 161, baseType: !513, size: 32, offset: 128)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 32, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 4)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !501, file: !502, line: 168, baseType: !380, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !501, file: !502, line: 169, baseType: !380, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !501, file: !502, line: 170, baseType: !380, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !501, file: !502, line: 171, baseType: !505, size: 64, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !501, file: !502, line: 172, baseType: !378, size: 32, offset: 384)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !501, file: !502, line: 176, baseType: !522, size: 64, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!507, !382, !505}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !501, file: !502, line: 177, baseType: !526, size: 64, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !382, !507}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !501, file: !502, line: 178, baseType: !382, size: 64, offset: 576)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !501, file: !502, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !501, file: !502, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !501, file: !502, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !439, file: !421, line: 177, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !387, line: 56, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !149, line: 3371, size: 1792, elements: !537)
!537 = !{!538, !571, !577, !588, !607, !618, !623, !630, !636, !649, !661, !699, !704, !732, !740, !741, !746, !755, !761, !766, !770, !774, !951, !1000, !1006, !1013, !1020, !1046, !1071, !1088, !1100, !1122, !1137, !1309}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !536, file: !149, line: 3372, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !149, line: 360, size: 64, elements: !540)
!540 = !{!541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !539, file: !149, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !539, file: !149, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !539, file: !149, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !539, file: !149, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !539, file: !149, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !539, file: !149, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !539, file: !149, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !539, file: !149, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !539, file: !149, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !539, file: !149, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !539, file: !149, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !539, file: !149, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !539, file: !149, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !539, file: !149, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !539, file: !149, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !539, file: !149, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !539, file: !149, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !539, file: !149, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !539, file: !149, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !539, file: !149, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !539, file: !149, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !539, file: !149, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !539, file: !149, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !539, file: !149, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !539, file: !149, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !539, file: !149, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !539, file: !149, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !539, file: !149, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !539, file: !149, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !539, file: !149, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !536, file: !149, line: 3373, baseType: !572, size: 192)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !149, line: 402, size: 192, elements: !573)
!573 = !{!574, !575, !576}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !572, file: !149, line: 403, baseType: !539, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !572, file: !149, line: 404, baseType: !534, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !572, file: !149, line: 405, baseType: !534, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !536, file: !149, line: 3374, baseType: !578, size: 320)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !149, line: 1384, size: 320, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !578, file: !149, line: 1385, baseType: !572, size: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !578, file: !149, line: 1386, baseType: !582, size: 128, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !583, line: 58, baseType: !584)
!583 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !583, line: 54, size: 128, elements: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !584, file: !583, line: 56, baseType: !488, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !584, file: !583, line: 57, baseType: !505, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !536, file: !149, line: 3375, baseType: !589, size: 256)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !149, line: 1397, size: 256, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !589, file: !149, line: 1398, baseType: !572, size: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !589, file: !149, line: 1399, baseType: !593, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !595, line: 52, size: 256, elements: !596)
!595 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!596 = !{!597, !598, !599, !600, !601, !602, !603}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !594, file: !595, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !594, file: !595, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !594, file: !595, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !594, file: !595, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !594, file: !595, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !594, file: !595, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !594, file: !595, line: 62, baseType: !604, size: 192, offset: 64)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 192, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 3)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !536, file: !149, line: 3376, baseType: !608, size: 256)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !149, line: 1408, size: 256, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !608, file: !149, line: 1409, baseType: !572, size: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !608, file: !149, line: 1410, baseType: !612, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !614, line: 27, size: 192, elements: !615)
!614 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !613, file: !614, line: 29, baseType: !582, size: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !613, file: !614, line: 30, baseType: !3, size: 32, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !536, file: !149, line: 3377, baseType: !619, size: 256)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !149, line: 1437, size: 256, elements: !620)
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !619, file: !149, line: 1438, baseType: !572, size: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !619, file: !149, line: 1439, baseType: !534, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !536, file: !149, line: 3378, baseType: !624, size: 256)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !149, line: 1418, size: 256, elements: !625)
!625 = !{!626, !627, !628}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !624, file: !149, line: 1419, baseType: !572, size: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !624, file: !149, line: 1420, baseType: !378, size: 32, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !624, file: !149, line: 1421, baseType: !629, size: 8, offset: 224)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 8, elements: !453)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !536, file: !149, line: 3379, baseType: !631, size: 320)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !149, line: 1428, size: 320, elements: !632)
!632 = !{!633, !634, !635}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !631, file: !149, line: 1429, baseType: !572, size: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !631, file: !149, line: 1430, baseType: !534, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !631, file: !149, line: 1431, baseType: !534, size: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !536, file: !149, line: 3380, baseType: !637, size: 320)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !149, line: 1460, size: 320, elements: !638)
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !637, file: !149, line: 1461, baseType: !572, size: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !637, file: !149, line: 1462, baseType: !641, size: 128, offset: 192)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !642, line: 31, size: 128, elements: !643)
!642 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!643 = !{!644, !647, !648}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !641, file: !642, line: 32, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !641, file: !642, line: 33, baseType: !5, size: 32, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !641, file: !642, line: 34, baseType: !5, size: 32, offset: 96)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !536, file: !149, line: 3381, baseType: !650, size: 384)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !149, line: 2507, size: 384, elements: !651)
!651 = !{!652, !653, !658, !659, !660}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !650, file: !149, line: 2508, baseType: !572, size: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !650, file: !149, line: 2509, baseType: !654, size: 32, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !655, line: 58, baseType: !656)
!655 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !657, line: 44, baseType: !5)
!657 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!658 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !650, file: !149, line: 2510, baseType: !5, size: 32, offset: 224)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !650, file: !149, line: 2511, baseType: !534, size: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !650, file: !149, line: 2512, baseType: !534, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !536, file: !149, line: 3382, baseType: !662, size: 896)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !149, line: 2652, size: 896, elements: !663)
!663 = !{!664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !662, file: !149, line: 2653, baseType: !650, size: 384)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !662, file: !149, line: 2654, baseType: !534, size: 64, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !662, file: !149, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !662, file: !149, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !662, file: !149, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !662, file: !149, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !662, file: !149, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !662, file: !149, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !662, file: !149, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !662, file: !149, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !662, file: !149, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !662, file: !149, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !662, file: !149, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !662, file: !149, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !662, file: !149, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !662, file: !149, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !662, file: !149, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !662, file: !149, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !662, file: !149, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !662, file: !149, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !662, file: !149, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !662, file: !149, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !662, file: !149, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !662, file: !149, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !662, file: !149, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !662, file: !149, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !662, file: !149, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !662, file: !149, line: 2703, baseType: !5, size: 32, offset: 512)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !662, file: !149, line: 2705, baseType: !534, size: 64, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !662, file: !149, line: 2706, baseType: !534, size: 64, offset: 640)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !662, file: !149, line: 2707, baseType: !534, size: 64, offset: 704)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !662, file: !149, line: 2708, baseType: !534, size: 64, offset: 768)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !662, file: !149, line: 2711, baseType: !697, size: 64, offset: 832)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !149, line: 2711, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !536, file: !149, line: 3383, baseType: !700, size: 960)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !149, line: 2756, size: 960, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !700, file: !149, line: 2757, baseType: !662, size: 896)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !700, file: !149, line: 2758, baseType: !418, size: 64, offset: 896)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !536, file: !149, line: 3384, baseType: !705, size: 1472)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !149, line: 3114, size: 1472, elements: !706)
!706 = !{!707, !728, !729, !730, !731}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !705, file: !149, line: 3115, baseType: !708, size: 1216)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !149, line: 2984, size: 1216, elements: !709)
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !708, file: !149, line: 2985, baseType: !700, size: 960)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !708, file: !149, line: 2986, baseType: !534, size: 64, offset: 960)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !708, file: !149, line: 2987, baseType: !534, size: 64, offset: 1024)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !708, file: !149, line: 2988, baseType: !534, size: 64, offset: 1088)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !708, file: !149, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !708, file: !149, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !708, file: !149, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !708, file: !149, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !708, file: !149, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !708, file: !149, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !708, file: !149, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !708, file: !149, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !708, file: !149, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !708, file: !149, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !708, file: !149, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !708, file: !149, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !708, file: !149, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !708, file: !149, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !705, file: !149, line: 3117, baseType: !534, size: 64, offset: 1216)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !705, file: !149, line: 3119, baseType: !534, size: 64, offset: 1280)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !705, file: !149, line: 3121, baseType: !534, size: 64, offset: 1344)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !705, file: !149, line: 3123, baseType: !534, size: 64, offset: 1408)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !536, file: !149, line: 3385, baseType: !733, size: 1088)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !149, line: 2874, size: 1088, elements: !734)
!734 = !{!735, !736, !737}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !733, file: !149, line: 2875, baseType: !700, size: 960)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !733, file: !149, line: 2876, baseType: !418, size: 64, offset: 960)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !733, file: !149, line: 2877, baseType: !738, size: 64, offset: 1024)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !149, line: 2856, flags: DIFlagFwdDecl)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !536, file: !149, line: 3386, baseType: !708, size: 1216)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !536, file: !149, line: 3387, baseType: !742, size: 1280)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !149, line: 3093, size: 1280, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !742, file: !149, line: 3094, baseType: !708, size: 1216)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !742, file: !149, line: 3095, baseType: !738, size: 64, offset: 1216)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !536, file: !149, line: 3388, baseType: !747, size: 1216)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !149, line: 2824, size: 1216, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !747, file: !149, line: 2825, baseType: !662, size: 896)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !747, file: !149, line: 2827, baseType: !534, size: 64, offset: 896)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !747, file: !149, line: 2828, baseType: !534, size: 64, offset: 960)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !747, file: !149, line: 2829, baseType: !534, size: 64, offset: 1024)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !747, file: !149, line: 2830, baseType: !534, size: 64, offset: 1088)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !747, file: !149, line: 2831, baseType: !534, size: 64, offset: 1152)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !536, file: !149, line: 3389, baseType: !756, size: 1024)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !149, line: 2850, size: 1024, elements: !757)
!757 = !{!758, !759, !760}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !756, file: !149, line: 2851, baseType: !700, size: 960)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !756, file: !149, line: 2852, baseType: !378, size: 32, offset: 960)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !756, file: !149, line: 2853, baseType: !378, size: 32, offset: 992)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !536, file: !149, line: 3390, baseType: !762, size: 1024)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !149, line: 2857, size: 1024, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !762, file: !149, line: 2858, baseType: !700, size: 960)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !762, file: !149, line: 2859, baseType: !738, size: 64, offset: 960)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !536, file: !149, line: 3391, baseType: !767, size: 960)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !149, line: 2862, size: 960, elements: !768)
!768 = !{!769}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !767, file: !149, line: 2863, baseType: !700, size: 960)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !536, file: !149, line: 3392, baseType: !771, size: 1472)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !149, line: 3304, size: 1472, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !771, file: !149, line: 3305, baseType: !705, size: 1472)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !536, file: !149, line: 3393, baseType: !775, size: 1792)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !149, line: 3248, size: 1792, elements: !776)
!776 = !{!777, !778, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !775, file: !149, line: 3249, baseType: !705, size: 1472)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !775, file: !149, line: 3251, baseType: !779, size: 64, offset: 1472)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !781, line: 463, size: 1152, elements: !782)
!781 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!782 = !{!783, !786, !816, !817, !820, !823, !875, !876, !877, !878, !879, !903, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !780, file: !781, line: 464, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !781, line: 464, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !780, file: !781, line: 467, baseType: !787, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !133, line: 374, size: 640, elements: !789)
!789 = !{!790, !791, !792, !805, !806, !807, !808, !809, !810, !812, !814, !815}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !788, file: !133, line: 377, baseType: !386, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !788, file: !133, line: 378, baseType: !386, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !788, file: !133, line: 381, baseType: !793, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !133, line: 282, baseType: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !133, line: 282, size: 128, elements: !796)
!796 = !{!797}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !795, file: !133, line: 282, baseType: !798, size: 128)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !133, line: 281, baseType: !799)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !133, line: 281, size: 128, elements: !800)
!800 = !{!801, !802, !803}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !799, file: !133, line: 281, baseType: !5, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !799, file: !133, line: 281, baseType: !5, size: 32, offset: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !799, file: !133, line: 281, baseType: !804, size: 64, offset: 64)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 64, elements: !453)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !788, file: !133, line: 384, baseType: !378, size: 32, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !788, file: !133, line: 387, baseType: !378, size: 32, offset: 224)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !788, file: !133, line: 390, baseType: !378, size: 32, offset: 256)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !788, file: !133, line: 394, baseType: !793, size: 64, offset: 320)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !788, file: !133, line: 396, baseType: !132, size: 32, offset: 384)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !788, file: !133, line: 399, baseType: !811, size: 64, offset: 416)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !489)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !788, file: !133, line: 402, baseType: !813, size: 64, offset: 480)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !489)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !788, file: !133, line: 406, baseType: !378, size: 32, offset: 544)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !788, file: !133, line: 409, baseType: !378, size: 32, offset: 576)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !780, file: !781, line: 470, baseType: !415, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !780, file: !781, line: 473, baseType: !818, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !781, line: 166, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !780, file: !781, line: 476, baseType: !821, size: 64, offset: 256)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !781, line: 476, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !780, file: !781, line: 479, baseType: !824, size: 64, offset: 320)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !825, line: 144, baseType: !826)
!825 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !825, line: 100, size: 896, elements: !828)
!828 = !{!829, !837, !842, !847, !849, !852, !853, !854, !855, !856, !861, !863, !864, !869, !874}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !827, file: !825, line: 102, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !825, line: 52, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !825, line: 47, baseType: !5)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !827, file: !825, line: 105, baseType: !838, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !825, line: 59, baseType: !839)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!378, !835, !835}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !827, file: !825, line: 108, baseType: !843, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !825, line: 63, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !382}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !827, file: !825, line: 111, baseType: !848, size: 64, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !827, file: !825, line: 114, baseType: !850, size: 64, offset: 256)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !851, line: 46, baseType: !488)
!851 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!852 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !827, file: !825, line: 117, baseType: !850, size: 64, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !827, file: !825, line: 120, baseType: !850, size: 64, offset: 384)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !827, file: !825, line: 124, baseType: !5, size: 32, offset: 448)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !827, file: !825, line: 128, baseType: !5, size: 32, offset: 480)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !827, file: !825, line: 131, baseType: !857, size: 64, offset: 512)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !825, line: 75, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!382, !850, !850}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !827, file: !825, line: 132, baseType: !862, size: 64, offset: 576)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !825, line: 78, baseType: !844)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !827, file: !825, line: 135, baseType: !382, size: 64, offset: 640)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !827, file: !825, line: 136, baseType: !865, size: 64, offset: 704)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !825, line: 82, baseType: !866)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!382, !382, !850, !850}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !827, file: !825, line: 137, baseType: !870, size: 64, offset: 768)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !825, line: 83, baseType: !871)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !382, !382}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !827, file: !825, line: 141, baseType: !5, size: 32, offset: 832)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !780, file: !781, line: 484, baseType: !534, size: 64, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !780, file: !781, line: 488, baseType: !534, size: 64, offset: 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !780, file: !781, line: 493, baseType: !534, size: 64, offset: 512)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !780, file: !781, line: 496, baseType: !534, size: 64, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !780, file: !781, line: 501, baseType: !880, size: 64, offset: 640)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !144, line: 2355, size: 576, elements: !882)
!882 = !{!883, !886, !887, !888, !889, !891, !892, !897, !898, !899, !900, !901, !902}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !881, file: !144, line: 2356, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !144, line: 2356, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !881, file: !144, line: 2357, baseType: !383, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !881, file: !144, line: 2358, baseType: !378, size: 32, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !881, file: !144, line: 2359, baseType: !378, size: 32, offset: 160)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !881, file: !144, line: 2360, baseType: !890, size: 128, offset: 192)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 128, elements: !514)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !881, file: !144, line: 2364, baseType: !378, size: 32, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !881, file: !144, line: 2367, baseType: !893, size: 128, offset: 384)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !144, line: 2349, size: 128, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !893, file: !144, line: 2351, baseType: !418, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !893, file: !144, line: 2352, baseType: !505, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !881, file: !144, line: 2371, baseType: !143, size: 32, offset: 512)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !881, file: !144, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !881, file: !144, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !881, file: !144, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !881, file: !144, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !881, file: !144, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !780, file: !781, line: 504, baseType: !904, size: 64, offset: 704)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !781, line: 504, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !780, file: !781, line: 507, baseType: !824, size: 64, offset: 768)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !780, file: !781, line: 510, baseType: !378, size: 32, offset: 832)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !780, file: !781, line: 513, baseType: !378, size: 32, offset: 864)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !780, file: !781, line: 516, baseType: !654, size: 32, offset: 896)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !780, file: !781, line: 519, baseType: !654, size: 32, offset: 928)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !780, file: !781, line: 522, baseType: !5, size: 32, offset: 960)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !780, file: !781, line: 523, baseType: !5, size: 32, offset: 992)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !780, file: !781, line: 528, baseType: !383, size: 64, offset: 1024)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !780, file: !781, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !780, file: !781, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !780, file: !781, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !780, file: !781, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !780, file: !781, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !780, file: !781, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !780, file: !781, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !780, file: !781, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !780, file: !781, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !780, file: !781, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !780, file: !781, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !780, file: !781, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !780, file: !781, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !780, file: !781, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !780, file: !781, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !780, file: !781, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !775, file: !149, line: 3254, baseType: !534, size: 64, offset: 1536)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !775, file: !149, line: 3257, baseType: !534, size: 64, offset: 1600)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !775, file: !149, line: 3258, baseType: !534, size: 64, offset: 1664)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !775, file: !149, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !775, file: !149, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !775, file: !149, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !775, file: !149, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !775, file: !149, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !775, file: !149, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !775, file: !149, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !775, file: !149, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !775, file: !149, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !775, file: !149, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !775, file: !149, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !775, file: !149, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !775, file: !149, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !775, file: !149, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !775, file: !149, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !775, file: !149, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !775, file: !149, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !775, file: !149, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !536, file: !149, line: 3394, baseType: !952, size: 1344)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !149, line: 2279, size: 1344, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !979, !980, !981, !989, !990, !991, !992, !993, !994, !995, !996, !997}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !952, file: !149, line: 2280, baseType: !572, size: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !952, file: !149, line: 2281, baseType: !534, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !952, file: !149, line: 2282, baseType: !534, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !952, file: !149, line: 2283, baseType: !534, size: 64, offset: 320)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !952, file: !149, line: 2284, baseType: !534, size: 64, offset: 384)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !952, file: !149, line: 2285, baseType: !5, size: 32, offset: 448)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !952, file: !149, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !952, file: !149, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !952, file: !149, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !952, file: !149, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !952, file: !149, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !952, file: !149, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !952, file: !149, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !952, file: !149, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !952, file: !149, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !952, file: !149, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !952, file: !149, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !952, file: !149, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !952, file: !149, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !952, file: !149, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !952, file: !149, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !952, file: !149, line: 2305, baseType: !5, size: 32, offset: 512)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !952, file: !149, line: 2306, baseType: !977, size: 32, offset: 544)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !978, line: 31, baseType: !378)
!978 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!979 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !952, file: !149, line: 2307, baseType: !534, size: 64, offset: 576)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !952, file: !149, line: 2308, baseType: !534, size: 64, offset: 640)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !952, file: !149, line: 2314, baseType: !982, size: 64, offset: 704)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !149, line: 2309, size: 64, elements: !983)
!983 = !{!984, !985, !986}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !982, file: !149, line: 2310, baseType: !378, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !982, file: !149, line: 2311, baseType: !383, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !982, file: !149, line: 2312, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !149, line: 2277, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !952, file: !149, line: 2315, baseType: !534, size: 64, offset: 768)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !952, file: !149, line: 2316, baseType: !534, size: 64, offset: 832)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !952, file: !149, line: 2317, baseType: !534, size: 64, offset: 896)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !952, file: !149, line: 2318, baseType: !534, size: 64, offset: 960)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !952, file: !149, line: 2319, baseType: !534, size: 64, offset: 1024)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !952, file: !149, line: 2320, baseType: !534, size: 64, offset: 1088)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !952, file: !149, line: 2321, baseType: !534, size: 64, offset: 1152)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !952, file: !149, line: 2322, baseType: !534, size: 64, offset: 1216)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !952, file: !149, line: 2324, baseType: !998, size: 64, offset: 1280)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !149, line: 2324, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !536, file: !149, line: 3395, baseType: !1001, size: 320)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !149, line: 1469, size: 320, elements: !1002)
!1002 = !{!1003, !1004, !1005}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1001, file: !149, line: 1470, baseType: !572, size: 192)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1001, file: !149, line: 1471, baseType: !534, size: 64, offset: 192)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1001, file: !149, line: 1472, baseType: !534, size: 64, offset: 256)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !536, file: !149, line: 3396, baseType: !1007, size: 320)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !149, line: 1482, size: 320, elements: !1008)
!1008 = !{!1009, !1010, !1011}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1007, file: !149, line: 1483, baseType: !572, size: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1007, file: !149, line: 1484, baseType: !378, size: 32, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1007, file: !149, line: 1485, baseType: !1012, size: 64, offset: 256)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, size: 64, elements: !453)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !536, file: !149, line: 3397, baseType: !1014, size: 384)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !149, line: 1829, size: 384, elements: !1015)
!1015 = !{!1016, !1017, !1018, !1019}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1014, file: !149, line: 1830, baseType: !572, size: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1014, file: !149, line: 1831, baseType: !654, size: 32, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1014, file: !149, line: 1832, baseType: !534, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1014, file: !149, line: 1835, baseType: !1012, size: 64, offset: 320)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !536, file: !149, line: 3398, baseType: !1021, size: 704)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !149, line: 1898, size: 704, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1029, !1030, !1033}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1021, file: !149, line: 1899, baseType: !572, size: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1021, file: !149, line: 1902, baseType: !534, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1021, file: !149, line: 1905, baseType: !1026, size: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !387, line: 58, baseType: !1027)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !387, line: 57, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1021, file: !149, line: 1908, baseType: !5, size: 32, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1021, file: !149, line: 1911, baseType: !1031, size: 64, offset: 384)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !149, line: 1876, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1021, file: !149, line: 1914, baseType: !1034, size: 256, offset: 448)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !149, line: 1883, size: 256, elements: !1035)
!1035 = !{!1036, !1038, !1039, !1044}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1034, file: !149, line: 1884, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1034, file: !149, line: 1885, baseType: !1037, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1034, file: !149, line: 1891, baseType: !1040, size: 64, offset: 128)
!1040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1034, file: !149, line: 1891, size: 64, elements: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1040, file: !149, line: 1891, baseType: !1026, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1040, file: !149, line: 1891, baseType: !534, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1034, file: !149, line: 1892, baseType: !1045, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !536, file: !149, line: 3399, baseType: !1047, size: 704)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !149, line: 2008, size: 704, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1052, !1053, !1054, !1066, !1067, !1068, !1069, !1070}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1047, file: !149, line: 2009, baseType: !572, size: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1047, file: !149, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1047, file: !149, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1047, file: !149, line: 2014, baseType: !654, size: 32, offset: 224)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1047, file: !149, line: 2016, baseType: !534, size: 64, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1047, file: !149, line: 2017, baseType: !1055, size: 64, offset: 320)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !149, line: 183, baseType: !1057)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !149, line: 183, size: 128, elements: !1058)
!1058 = !{!1059}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1057, file: !149, line: 183, baseType: !1060, size: 128)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !149, line: 182, baseType: !1061)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !149, line: 182, size: 128, elements: !1062)
!1062 = !{!1063, !1064, !1065}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1061, file: !149, line: 182, baseType: !5, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1061, file: !149, line: 182, baseType: !5, size: 32, offset: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1061, file: !149, line: 182, baseType: !1012, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1047, file: !149, line: 2019, baseType: !534, size: 64, offset: 384)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1047, file: !149, line: 2020, baseType: !534, size: 64, offset: 448)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1047, file: !149, line: 2021, baseType: !534, size: 64, offset: 512)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1047, file: !149, line: 2022, baseType: !534, size: 64, offset: 576)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1047, file: !149, line: 2023, baseType: !534, size: 64, offset: 640)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !536, file: !149, line: 3400, baseType: !1072, size: 832)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !149, line: 2430, size: 832, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1072, file: !149, line: 2431, baseType: !572, size: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1072, file: !149, line: 2433, baseType: !534, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1072, file: !149, line: 2434, baseType: !534, size: 64, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1072, file: !149, line: 2435, baseType: !534, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1072, file: !149, line: 2436, baseType: !534, size: 64, offset: 384)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1072, file: !149, line: 2437, baseType: !1055, size: 64, offset: 448)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1072, file: !149, line: 2438, baseType: !534, size: 64, offset: 512)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1072, file: !149, line: 2440, baseType: !534, size: 64, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1072, file: !149, line: 2441, baseType: !534, size: 64, offset: 640)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1072, file: !149, line: 2443, baseType: !1084, size: 128, offset: 704)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !149, line: 182, baseType: !1085)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !149, line: 182, size: 128, elements: !1086)
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1085, file: !149, line: 182, baseType: !1060, size: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !536, file: !149, line: 3401, baseType: !1089, size: 320)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !149, line: 3327, size: 320, elements: !1090)
!1090 = !{!1091, !1092, !1099}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1089, file: !149, line: 3329, baseType: !572, size: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1089, file: !149, line: 3330, baseType: !1093, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !149, line: 3320, size: 192, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1094, file: !149, line: 3322, baseType: !1093, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1094, file: !149, line: 3323, baseType: !1093, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1094, file: !149, line: 3324, baseType: !534, size: 64, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1089, file: !149, line: 3331, baseType: !1093, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !536, file: !149, line: 3402, baseType: !1101, size: 256)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !149, line: 1540, size: 256, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1101, file: !149, line: 1541, baseType: !572, size: 192)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1101, file: !149, line: 1542, baseType: !1105, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !149, line: 1538, baseType: !1107)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !149, line: 1538, size: 192, elements: !1108)
!1108 = !{!1109}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1107, file: !149, line: 1538, baseType: !1110, size: 192)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !149, line: 1537, baseType: !1111)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !149, line: 1537, size: 192, elements: !1112)
!1112 = !{!1113, !1114, !1115}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1111, file: !149, line: 1537, baseType: !5, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1111, file: !149, line: 1537, baseType: !5, size: 32, offset: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1111, file: !149, line: 1537, baseType: !1116, size: 128, offset: 64)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1117, size: 128, elements: !453)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !149, line: 1535, baseType: !1118)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !149, line: 1532, size: 128, elements: !1119)
!1119 = !{!1120, !1121}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1118, file: !149, line: 1533, baseType: !534, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1118, file: !149, line: 1534, baseType: !534, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !536, file: !149, line: 3403, baseType: !1123, size: 512)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !149, line: 1938, size: 512, elements: !1124)
!1124 = !{!1125, !1126, !1127, !1128, !1134, !1135, !1136}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1123, file: !149, line: 1939, baseType: !572, size: 192)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1123, file: !149, line: 1940, baseType: !654, size: 32, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1123, file: !149, line: 1941, baseType: !148, size: 32, offset: 224)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1123, file: !149, line: 1946, baseType: !1129, size: 32, offset: 256)
!1129 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !149, line: 1942, size: 32, elements: !1130)
!1130 = !{!1131, !1132, !1133}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1129, file: !149, line: 1943, baseType: !167, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1129, file: !149, line: 1944, baseType: !174, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1129, file: !149, line: 1945, baseType: !181, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1123, file: !149, line: 1950, baseType: !414, size: 64, offset: 320)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1123, file: !149, line: 1951, baseType: !414, size: 64, offset: 384)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1123, file: !149, line: 1953, baseType: !1012, size: 64, offset: 448)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !536, file: !149, line: 3404, baseType: !1138, size: 1664)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !149, line: 3337, size: 1664, elements: !1139)
!1139 = !{!1140, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1138, file: !149, line: 3338, baseType: !572, size: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1138, file: !149, line: 3341, baseType: !1142, size: 1472, offset: 192)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1143, line: 410, size: 1472, elements: !1144)
!1143 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1142, file: !1143, line: 412, baseType: !378, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1142, file: !1143, line: 413, baseType: !378, size: 32, offset: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1142, file: !1143, line: 414, baseType: !378, size: 32, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1142, file: !1143, line: 415, baseType: !378, size: 32, offset: 96)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1142, file: !1143, line: 416, baseType: !378, size: 32, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1142, file: !1143, line: 417, baseType: !378, size: 32, offset: 160)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1142, file: !1143, line: 418, baseType: !377, size: 8, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1142, file: !1143, line: 419, baseType: !377, size: 8, offset: 200)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1142, file: !1143, line: 420, baseType: !1154, size: 8, offset: 208)
!1154 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1142, file: !1143, line: 421, baseType: !1154, size: 8, offset: 216)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1142, file: !1143, line: 422, baseType: !1154, size: 8, offset: 224)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1142, file: !1143, line: 423, baseType: !1154, size: 8, offset: 232)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1142, file: !1143, line: 424, baseType: !1154, size: 8, offset: 240)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1142, file: !1143, line: 425, baseType: !1154, size: 8, offset: 248)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1142, file: !1143, line: 426, baseType: !1154, size: 8, offset: 256)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1142, file: !1143, line: 427, baseType: !1154, size: 8, offset: 264)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1142, file: !1143, line: 428, baseType: !1154, size: 8, offset: 272)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1142, file: !1143, line: 429, baseType: !1154, size: 8, offset: 280)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1142, file: !1143, line: 430, baseType: !1154, size: 8, offset: 288)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1142, file: !1143, line: 431, baseType: !1154, size: 8, offset: 296)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1142, file: !1143, line: 432, baseType: !1154, size: 8, offset: 304)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1142, file: !1143, line: 433, baseType: !1154, size: 8, offset: 312)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1142, file: !1143, line: 434, baseType: !1154, size: 8, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1142, file: !1143, line: 435, baseType: !1154, size: 8, offset: 328)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1142, file: !1143, line: 436, baseType: !1154, size: 8, offset: 336)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1142, file: !1143, line: 437, baseType: !1154, size: 8, offset: 344)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1142, file: !1143, line: 438, baseType: !1154, size: 8, offset: 352)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1142, file: !1143, line: 439, baseType: !1154, size: 8, offset: 360)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1142, file: !1143, line: 440, baseType: !1154, size: 8, offset: 368)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1142, file: !1143, line: 441, baseType: !1154, size: 8, offset: 376)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1142, file: !1143, line: 442, baseType: !1154, size: 8, offset: 384)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1142, file: !1143, line: 443, baseType: !1154, size: 8, offset: 392)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1142, file: !1143, line: 444, baseType: !1154, size: 8, offset: 400)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1142, file: !1143, line: 445, baseType: !1154, size: 8, offset: 408)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1142, file: !1143, line: 446, baseType: !1154, size: 8, offset: 416)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1142, file: !1143, line: 447, baseType: !1154, size: 8, offset: 424)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1142, file: !1143, line: 448, baseType: !1154, size: 8, offset: 432)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1142, file: !1143, line: 449, baseType: !1154, size: 8, offset: 440)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1142, file: !1143, line: 450, baseType: !1154, size: 8, offset: 448)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1142, file: !1143, line: 451, baseType: !1154, size: 8, offset: 456)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1142, file: !1143, line: 452, baseType: !1154, size: 8, offset: 464)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1142, file: !1143, line: 453, baseType: !1154, size: 8, offset: 472)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1142, file: !1143, line: 454, baseType: !1154, size: 8, offset: 480)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1142, file: !1143, line: 455, baseType: !1154, size: 8, offset: 488)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1142, file: !1143, line: 456, baseType: !1154, size: 8, offset: 496)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1142, file: !1143, line: 457, baseType: !1154, size: 8, offset: 504)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1142, file: !1143, line: 458, baseType: !1154, size: 8, offset: 512)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1142, file: !1143, line: 459, baseType: !1154, size: 8, offset: 520)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1142, file: !1143, line: 460, baseType: !1154, size: 8, offset: 528)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1142, file: !1143, line: 461, baseType: !1154, size: 8, offset: 536)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1142, file: !1143, line: 462, baseType: !1154, size: 8, offset: 544)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1142, file: !1143, line: 463, baseType: !1154, size: 8, offset: 552)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1142, file: !1143, line: 464, baseType: !1154, size: 8, offset: 560)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1142, file: !1143, line: 465, baseType: !1154, size: 8, offset: 568)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1142, file: !1143, line: 466, baseType: !1154, size: 8, offset: 576)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1142, file: !1143, line: 467, baseType: !1154, size: 8, offset: 584)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1142, file: !1143, line: 468, baseType: !1154, size: 8, offset: 592)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1142, file: !1143, line: 469, baseType: !1154, size: 8, offset: 600)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1142, file: !1143, line: 470, baseType: !1154, size: 8, offset: 608)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1142, file: !1143, line: 471, baseType: !1154, size: 8, offset: 616)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1142, file: !1143, line: 472, baseType: !1154, size: 8, offset: 624)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1142, file: !1143, line: 473, baseType: !1154, size: 8, offset: 632)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1142, file: !1143, line: 474, baseType: !1154, size: 8, offset: 640)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1142, file: !1143, line: 475, baseType: !1154, size: 8, offset: 648)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1142, file: !1143, line: 476, baseType: !1154, size: 8, offset: 656)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1142, file: !1143, line: 477, baseType: !1154, size: 8, offset: 664)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1142, file: !1143, line: 478, baseType: !1154, size: 8, offset: 672)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1142, file: !1143, line: 479, baseType: !1154, size: 8, offset: 680)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1142, file: !1143, line: 480, baseType: !1154, size: 8, offset: 688)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1142, file: !1143, line: 481, baseType: !1154, size: 8, offset: 696)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1142, file: !1143, line: 482, baseType: !1154, size: 8, offset: 704)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1142, file: !1143, line: 483, baseType: !1154, size: 8, offset: 712)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1142, file: !1143, line: 484, baseType: !1154, size: 8, offset: 720)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1142, file: !1143, line: 485, baseType: !1154, size: 8, offset: 728)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1142, file: !1143, line: 486, baseType: !1154, size: 8, offset: 736)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1142, file: !1143, line: 487, baseType: !1154, size: 8, offset: 744)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1142, file: !1143, line: 488, baseType: !1154, size: 8, offset: 752)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1142, file: !1143, line: 489, baseType: !1154, size: 8, offset: 760)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1142, file: !1143, line: 490, baseType: !1154, size: 8, offset: 768)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1142, file: !1143, line: 491, baseType: !1154, size: 8, offset: 776)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1142, file: !1143, line: 492, baseType: !1154, size: 8, offset: 784)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1142, file: !1143, line: 493, baseType: !1154, size: 8, offset: 792)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1142, file: !1143, line: 494, baseType: !1154, size: 8, offset: 800)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1142, file: !1143, line: 495, baseType: !1154, size: 8, offset: 808)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1142, file: !1143, line: 496, baseType: !1154, size: 8, offset: 816)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1142, file: !1143, line: 497, baseType: !1154, size: 8, offset: 824)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1142, file: !1143, line: 498, baseType: !1154, size: 8, offset: 832)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1142, file: !1143, line: 499, baseType: !1154, size: 8, offset: 840)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1142, file: !1143, line: 500, baseType: !1154, size: 8, offset: 848)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1142, file: !1143, line: 501, baseType: !1154, size: 8, offset: 856)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1142, file: !1143, line: 502, baseType: !1154, size: 8, offset: 864)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1142, file: !1143, line: 503, baseType: !1154, size: 8, offset: 872)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1142, file: !1143, line: 504, baseType: !1154, size: 8, offset: 880)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1142, file: !1143, line: 505, baseType: !1154, size: 8, offset: 888)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1142, file: !1143, line: 506, baseType: !1154, size: 8, offset: 896)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1142, file: !1143, line: 507, baseType: !1154, size: 8, offset: 904)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1142, file: !1143, line: 508, baseType: !1154, size: 8, offset: 912)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1142, file: !1143, line: 509, baseType: !1154, size: 8, offset: 920)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1142, file: !1143, line: 510, baseType: !1154, size: 8, offset: 928)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1142, file: !1143, line: 511, baseType: !1154, size: 8, offset: 936)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1142, file: !1143, line: 512, baseType: !1154, size: 8, offset: 944)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1142, file: !1143, line: 513, baseType: !1154, size: 8, offset: 952)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1142, file: !1143, line: 514, baseType: !1154, size: 8, offset: 960)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1142, file: !1143, line: 515, baseType: !1154, size: 8, offset: 968)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1142, file: !1143, line: 516, baseType: !1154, size: 8, offset: 976)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1142, file: !1143, line: 517, baseType: !1154, size: 8, offset: 984)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1142, file: !1143, line: 518, baseType: !1154, size: 8, offset: 992)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1142, file: !1143, line: 519, baseType: !1154, size: 8, offset: 1000)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1142, file: !1143, line: 520, baseType: !1154, size: 8, offset: 1008)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1142, file: !1143, line: 521, baseType: !1154, size: 8, offset: 1016)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1142, file: !1143, line: 522, baseType: !1154, size: 8, offset: 1024)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1142, file: !1143, line: 523, baseType: !1154, size: 8, offset: 1032)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1142, file: !1143, line: 524, baseType: !1154, size: 8, offset: 1040)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1142, file: !1143, line: 525, baseType: !1154, size: 8, offset: 1048)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1142, file: !1143, line: 526, baseType: !1154, size: 8, offset: 1056)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1142, file: !1143, line: 527, baseType: !1154, size: 8, offset: 1064)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1142, file: !1143, line: 528, baseType: !1154, size: 8, offset: 1072)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1142, file: !1143, line: 529, baseType: !1154, size: 8, offset: 1080)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1142, file: !1143, line: 530, baseType: !1154, size: 8, offset: 1088)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1142, file: !1143, line: 531, baseType: !1154, size: 8, offset: 1096)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1142, file: !1143, line: 532, baseType: !1154, size: 8, offset: 1104)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1142, file: !1143, line: 533, baseType: !1154, size: 8, offset: 1112)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1142, file: !1143, line: 534, baseType: !1154, size: 8, offset: 1120)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1142, file: !1143, line: 535, baseType: !1154, size: 8, offset: 1128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1142, file: !1143, line: 536, baseType: !1154, size: 8, offset: 1136)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1142, file: !1143, line: 537, baseType: !1154, size: 8, offset: 1144)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1142, file: !1143, line: 538, baseType: !1154, size: 8, offset: 1152)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1142, file: !1143, line: 539, baseType: !1154, size: 8, offset: 1160)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1142, file: !1143, line: 540, baseType: !1154, size: 8, offset: 1168)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1142, file: !1143, line: 541, baseType: !1154, size: 8, offset: 1176)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1142, file: !1143, line: 542, baseType: !1154, size: 8, offset: 1184)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1142, file: !1143, line: 543, baseType: !1154, size: 8, offset: 1192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1142, file: !1143, line: 544, baseType: !1154, size: 8, offset: 1200)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1142, file: !1143, line: 545, baseType: !1154, size: 8, offset: 1208)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1142, file: !1143, line: 546, baseType: !1154, size: 8, offset: 1216)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1142, file: !1143, line: 547, baseType: !1154, size: 8, offset: 1224)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1142, file: !1143, line: 548, baseType: !1154, size: 8, offset: 1232)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1142, file: !1143, line: 549, baseType: !1154, size: 8, offset: 1240)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1142, file: !1143, line: 550, baseType: !1154, size: 8, offset: 1248)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1142, file: !1143, line: 551, baseType: !1154, size: 8, offset: 1256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1142, file: !1143, line: 552, baseType: !1154, size: 8, offset: 1264)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1142, file: !1143, line: 553, baseType: !1154, size: 8, offset: 1272)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1142, file: !1143, line: 554, baseType: !1154, size: 8, offset: 1280)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1142, file: !1143, line: 555, baseType: !1154, size: 8, offset: 1288)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1142, file: !1143, line: 556, baseType: !1154, size: 8, offset: 1296)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1142, file: !1143, line: 557, baseType: !1154, size: 8, offset: 1304)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1142, file: !1143, line: 558, baseType: !1154, size: 8, offset: 1312)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1142, file: !1143, line: 559, baseType: !1154, size: 8, offset: 1320)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1142, file: !1143, line: 560, baseType: !1154, size: 8, offset: 1328)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1142, file: !1143, line: 561, baseType: !1154, size: 8, offset: 1336)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1142, file: !1143, line: 562, baseType: !1154, size: 8, offset: 1344)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1142, file: !1143, line: 563, baseType: !1154, size: 8, offset: 1352)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1142, file: !1143, line: 564, baseType: !1154, size: 8, offset: 1360)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1142, file: !1143, line: 565, baseType: !1154, size: 8, offset: 1368)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1142, file: !1143, line: 566, baseType: !1154, size: 8, offset: 1376)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1142, file: !1143, line: 567, baseType: !1154, size: 8, offset: 1384)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1142, file: !1143, line: 568, baseType: !1154, size: 8, offset: 1392)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1142, file: !1143, line: 569, baseType: !1154, size: 8, offset: 1400)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1142, file: !1143, line: 570, baseType: !1154, size: 8, offset: 1408)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1142, file: !1143, line: 571, baseType: !1154, size: 8, offset: 1416)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1142, file: !1143, line: 572, baseType: !1154, size: 8, offset: 1424)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1142, file: !1143, line: 573, baseType: !1154, size: 8, offset: 1432)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1142, file: !1143, line: 574, baseType: !1154, size: 8, offset: 1440)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !536, file: !149, line: 3405, baseType: !1310, size: 384)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !149, line: 3352, size: 384, elements: !1311)
!1311 = !{!1312, !1313}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1310, file: !149, line: 3353, baseType: !572, size: 192)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1310, file: !149, line: 3356, baseType: !1314, size: 192, offset: 192)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1143, line: 578, size: 192, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1314, file: !1143, line: 580, baseType: !378, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1314, file: !1143, line: 581, baseType: !378, size: 32, offset: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1314, file: !1143, line: 582, baseType: !378, size: 32, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1314, file: !1143, line: 583, baseType: !378, size: 32, offset: 96)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1314, file: !1143, line: 584, baseType: !377, size: 8, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1314, file: !1143, line: 585, baseType: !377, size: 8, offset: 136)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1314, file: !1143, line: 586, baseType: !377, size: 8, offset: 144)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1314, file: !1143, line: 587, baseType: !377, size: 8, offset: 152)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1314, file: !1143, line: 588, baseType: !377, size: 8, offset: 160)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1314, file: !1143, line: 589, baseType: !377, size: 8, offset: 168)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1314, file: !1143, line: 590, baseType: !377, size: 8, offset: 176)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !439, file: !421, line: 178, baseType: !388, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !439, file: !421, line: 179, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !421, line: 150, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !421, line: 142, size: 320, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1331, file: !421, line: 144, baseType: !534, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1331, file: !421, line: 145, baseType: !418, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1331, file: !421, line: 146, baseType: !418, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1331, file: !421, line: 147, baseType: !977, size: 32, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1331, file: !421, line: 148, baseType: !5, size: 32, offset: 224)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1331, file: !421, line: 149, baseType: !377, size: 8, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !439, file: !421, line: 180, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !421, line: 162, baseType: !1342)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !421, line: 159, size: 128, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1342, file: !421, line: 160, baseType: !534, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1342, file: !421, line: 161, baseType: !505, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !439, file: !421, line: 181, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !421, line: 181, flags: DIFlagFwdDecl)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !434, file: !421, line: 317, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 64, elements: !453)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !434, file: !421, line: 318, baseType: !1352, size: 320)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !421, line: 188, size: 320, elements: !1353)
!1353 = !{!1354, !1356, !1411}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1352, file: !421, line: 190, baseType: !1355, size: 192)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 192, elements: !605)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1352, file: !421, line: 193, baseType: !1357, size: 64, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !421, line: 206, size: 320, elements: !1359)
!1359 = !{!1360, !1396, !1397, !1398, !1410}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1358, file: !421, line: 208, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !387, line: 62, baseType: !1363)
!1363 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1364, line: 538, size: 256, elements: !1365)
!1364 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1365 = !{!1366, !1370, !1376, !1387}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1363, file: !1364, line: 539, baseType: !1367, size: 32)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1364, line: 482, size: 32, elements: !1368)
!1368 = !{!1369}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1367, file: !1364, line: 484, baseType: !5, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1363, file: !1364, line: 540, baseType: !1371, size: 192)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1364, line: 488, size: 192, elements: !1372)
!1372 = !{!1373, !1374, !1375}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1371, file: !1364, line: 489, baseType: !1367, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1371, file: !1364, line: 492, baseType: !383, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1371, file: !1364, line: 496, baseType: !534, size: 64, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1363, file: !1364, line: 541, baseType: !1377, size: 256)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1364, line: 504, size: 256, elements: !1378)
!1378 = !{!1379, !1380, !1385, !1386}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1377, file: !1364, line: 505, baseType: !1367, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1377, file: !1364, line: 509, baseType: !1381, size: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1364, line: 501, baseType: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{null, !835}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1377, file: !1364, line: 510, baseType: !835, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1377, file: !1364, line: 513, baseType: !1361, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1363, file: !1364, line: 542, baseType: !1388, size: 128)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1364, line: 530, size: 128, elements: !1389)
!1389 = !{!1390, !1391}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1388, file: !1364, line: 531, baseType: !1367, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1388, file: !1364, line: 534, baseType: !1392, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1364, line: 525, baseType: !1393)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!377, !534, !383, !488, !488}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1358, file: !421, line: 211, baseType: !5, size: 32, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1358, file: !421, line: 214, baseType: !505, size: 64, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1358, file: !421, line: 224, baseType: !1399, size: 64, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !421, line: 202, baseType: !1401)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !421, line: 202, size: 128, elements: !1402)
!1402 = !{!1403}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1401, file: !421, line: 202, baseType: !1404, size: 128)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !421, line: 200, baseType: !1405)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !421, line: 200, size: 128, elements: !1406)
!1406 = !{!1407, !1408, !1409}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1405, file: !421, line: 200, baseType: !5, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1405, file: !421, line: 200, baseType: !5, size: 32, offset: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1405, file: !421, line: 200, baseType: !452, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1358, file: !421, line: 234, baseType: !1399, size: 64, offset: 256)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1352, file: !421, line: 197, baseType: !505, size: 64, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !434, file: !421, line: 319, baseType: !594, size: 256)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !434, file: !421, line: 320, baseType: !613, size: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !406, file: !133, line: 134, baseType: !382, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !406, file: !133, line: 137, baseType: !534, size: 64, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !406, file: !133, line: 138, baseType: !654, size: 32, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !406, file: !133, line: 142, baseType: !5, size: 32, offset: 352)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !406, file: !133, line: 144, baseType: !378, size: 32, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !406, file: !133, line: 145, baseType: !378, size: 32, offset: 416)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !406, file: !133, line: 146, baseType: !1421, size: 64, offset: 448)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !133, line: 119, baseType: !505)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !389, file: !133, line: 220, baseType: !392, size: 64, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !389, file: !133, line: 223, baseType: !382, size: 64, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !389, file: !133, line: 226, baseType: !1425, size: 64, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !133, line: 185, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !389, file: !133, line: 229, baseType: !1428, size: 128, offset: 256)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1429, size: 128, elements: !489)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !133, line: 229, flags: DIFlagFwdDecl)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !389, file: !133, line: 232, baseType: !388, size: 64, offset: 384)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !389, file: !133, line: 233, baseType: !388, size: 64, offset: 448)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !389, file: !133, line: 238, baseType: !1434, size: 64, offset: 512)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !133, line: 235, size: 64, elements: !1435)
!1435 = !{!1436, !1442}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1434, file: !133, line: 236, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !133, line: 273, size: 128, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1438, file: !133, line: 275, baseType: !414, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1438, file: !133, line: 278, baseType: !414, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1434, file: !133, line: 237, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !133, line: 259, size: 320, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1450}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1444, file: !133, line: 261, baseType: !418, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1444, file: !133, line: 262, baseType: !418, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1444, file: !133, line: 266, baseType: !418, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1444, file: !133, line: 267, baseType: !418, size: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1444, file: !133, line: 270, baseType: !378, size: 32, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !389, file: !133, line: 241, baseType: !1421, size: 64, offset: 576)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !389, file: !133, line: 244, baseType: !378, size: 32, offset: 640)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !389, file: !133, line: 247, baseType: !378, size: 32, offset: 672)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !389, file: !133, line: 250, baseType: !378, size: 32, offset: 704)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !389, file: !133, line: 253, baseType: !378, size: 32, offset: 736)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !133, line: 256, baseType: !378, size: 32, offset: 768)
!1457 = !{i32 2, !"Dwarf Version", i32 4}
!1458 = !{i32 2, !"Debug Info Version", i32 3}
!1459 = !{i32 1, !"wchar_size", i32 4}
!1460 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1461 = distinct !DISubprogram(name: "vprintf", scope: !1462, file: !1462, line: 39, type: !1463, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1473)
!1462 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!378, !1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !383)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1467, file: !1, baseType: !5, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1467, file: !1, baseType: !5, size: 32, offset: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1467, file: !1, baseType: !382, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1467, file: !1, baseType: !382, size: 64, offset: 128)
!1473 = !{!1474, !1475}
!1474 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1461, file: !1462, line: 39, type: !1465)
!1475 = !DILocalVariable(name: "__arg", arg: 2, scope: !1461, file: !1462, line: 39, type: !1466)
!1476 = !DILocation(line: 0, scope: !1461)
!1477 = !DILocation(line: 41, column: 20, scope: !1461)
!1478 = !DILocation(line: 41, column: 10, scope: !1461)
!1479 = !DILocation(line: 41, column: 3, scope: !1461)
!1480 = distinct !DISubprogram(name: "getchar", scope: !1462, file: !1462, line: 47, type: !1481, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1483)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!378}
!1483 = !{}
!1484 = !DILocation(line: 49, column: 16, scope: !1480)
!1485 = !DILocation(line: 49, column: 10, scope: !1480)
!1486 = !DILocation(line: 49, column: 3, scope: !1480)
!1487 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1462, file: !1462, line: 56, type: !1488, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1541)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!378, !1490}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1492, line: 7, baseType: !1493)
!1492 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1494, line: 49, size: 1728, elements: !1495)
!1494 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1495 = !{!1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1511, !1513, !1514, !1515, !1518, !1520, !1521, !1522, !1525, !1527, !1530, !1533, !1534, !1535, !1536, !1537}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1493, file: !1494, line: 51, baseType: !378, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1493, file: !1494, line: 54, baseType: !380, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1493, file: !1494, line: 55, baseType: !380, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1493, file: !1494, line: 56, baseType: !380, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1493, file: !1494, line: 57, baseType: !380, size: 64, offset: 256)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1493, file: !1494, line: 58, baseType: !380, size: 64, offset: 320)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1493, file: !1494, line: 59, baseType: !380, size: 64, offset: 384)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1493, file: !1494, line: 60, baseType: !380, size: 64, offset: 448)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1493, file: !1494, line: 61, baseType: !380, size: 64, offset: 512)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1493, file: !1494, line: 64, baseType: !380, size: 64, offset: 576)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1493, file: !1494, line: 65, baseType: !380, size: 64, offset: 640)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1493, file: !1494, line: 66, baseType: !380, size: 64, offset: 704)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1493, file: !1494, line: 68, baseType: !1509, size: 64, offset: 768)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1494, line: 36, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1493, file: !1494, line: 70, baseType: !1512, size: 64, offset: 832)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1493, file: !1494, line: 72, baseType: !378, size: 32, offset: 896)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1493, file: !1494, line: 73, baseType: !378, size: 32, offset: 928)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1493, file: !1494, line: 74, baseType: !1516, size: 64, offset: 960)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1517, line: 152, baseType: !505)
!1517 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1493, file: !1494, line: 77, baseType: !1519, size: 16, offset: 1024)
!1519 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1493, file: !1494, line: 78, baseType: !1154, size: 8, offset: 1040)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1493, file: !1494, line: 79, baseType: !629, size: 8, offset: 1048)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1493, file: !1494, line: 81, baseType: !1523, size: 64, offset: 1088)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1494, line: 43, baseType: null)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1493, file: !1494, line: 89, baseType: !1526, size: 64, offset: 1152)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1517, line: 153, baseType: !505)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1493, file: !1494, line: 91, baseType: !1528, size: 64, offset: 1216)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1494, line: 37, flags: DIFlagFwdDecl)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1493, file: !1494, line: 92, baseType: !1531, size: 64, offset: 1280)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1494, line: 38, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1493, file: !1494, line: 93, baseType: !1512, size: 64, offset: 1344)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1493, file: !1494, line: 94, baseType: !382, size: 64, offset: 1408)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1493, file: !1494, line: 95, baseType: !850, size: 64, offset: 1472)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1493, file: !1494, line: 96, baseType: !378, size: 32, offset: 1536)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1493, file: !1494, line: 98, baseType: !1538, size: 160, offset: 1568)
!1538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 160, elements: !1539)
!1539 = !{!1540}
!1540 = !DISubrange(count: 20)
!1541 = !{!1542}
!1542 = !DILocalVariable(name: "__fp", arg: 1, scope: !1487, file: !1462, line: 56, type: !1490)
!1543 = !DILocation(line: 0, scope: !1487)
!1544 = !DILocation(line: 58, column: 10, scope: !1487)
!1545 = !DILocation(line: 58, column: 3, scope: !1487)
!1546 = distinct !DISubprogram(name: "getc_unlocked", scope: !1462, file: !1462, line: 66, type: !1488, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1547)
!1547 = !{!1548}
!1548 = !DILocalVariable(name: "__fp", arg: 1, scope: !1546, file: !1462, line: 66, type: !1490)
!1549 = !DILocation(line: 0, scope: !1546)
!1550 = !DILocation(line: 68, column: 10, scope: !1546)
!1551 = !DILocation(line: 68, column: 3, scope: !1546)
!1552 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1462, file: !1462, line: 73, type: !1481, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1483)
!1553 = !DILocation(line: 75, column: 10, scope: !1552)
!1554 = !DILocation(line: 75, column: 3, scope: !1552)
!1555 = distinct !DISubprogram(name: "putchar", scope: !1462, file: !1462, line: 82, type: !1556, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1558)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!378, !378}
!1558 = !{!1559}
!1559 = !DILocalVariable(name: "__c", arg: 1, scope: !1555, file: !1462, line: 82, type: !378)
!1560 = !DILocation(line: 0, scope: !1555)
!1561 = !DILocation(line: 84, column: 21, scope: !1555)
!1562 = !DILocation(line: 84, column: 10, scope: !1555)
!1563 = !DILocation(line: 84, column: 3, scope: !1555)
!1564 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1462, file: !1462, line: 91, type: !1565, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1567)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!378, !378, !1490}
!1567 = !{!1568, !1569}
!1568 = !DILocalVariable(name: "__c", arg: 1, scope: !1564, file: !1462, line: 91, type: !378)
!1569 = !DILocalVariable(name: "__stream", arg: 2, scope: !1564, file: !1462, line: 91, type: !1490)
!1570 = !DILocation(line: 0, scope: !1564)
!1571 = !DILocation(line: 93, column: 10, scope: !1564)
!1572 = !DILocation(line: 93, column: 3, scope: !1564)
!1573 = distinct !DISubprogram(name: "putc_unlocked", scope: !1462, file: !1462, line: 101, type: !1565, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1574)
!1574 = !{!1575, !1576}
!1575 = !DILocalVariable(name: "__c", arg: 1, scope: !1573, file: !1462, line: 101, type: !378)
!1576 = !DILocalVariable(name: "__stream", arg: 2, scope: !1573, file: !1462, line: 101, type: !1490)
!1577 = !DILocation(line: 0, scope: !1573)
!1578 = !DILocation(line: 103, column: 10, scope: !1573)
!1579 = !DILocation(line: 103, column: 3, scope: !1573)
!1580 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1462, file: !1462, line: 108, type: !1556, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1581)
!1581 = !{!1582}
!1582 = !DILocalVariable(name: "__c", arg: 1, scope: !1580, file: !1462, line: 108, type: !378)
!1583 = !DILocation(line: 0, scope: !1580)
!1584 = !DILocation(line: 110, column: 10, scope: !1580)
!1585 = !DILocation(line: 110, column: 3, scope: !1580)
!1586 = distinct !DISubprogram(name: "getline", scope: !1462, file: !1462, line: 118, type: !1587, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1591)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!1589, !379, !1590, !1490}
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1517, line: 193, baseType: !505)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!1591 = !{!1592, !1593, !1594}
!1592 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1586, file: !1462, line: 118, type: !379)
!1593 = !DILocalVariable(name: "__n", arg: 2, scope: !1586, file: !1462, line: 118, type: !1590)
!1594 = !DILocalVariable(name: "__stream", arg: 3, scope: !1586, file: !1462, line: 118, type: !1490)
!1595 = !DILocation(line: 0, scope: !1586)
!1596 = !DILocation(line: 120, column: 10, scope: !1586)
!1597 = !DILocation(line: 120, column: 3, scope: !1586)
!1598 = distinct !DISubprogram(name: "feof_unlocked", scope: !1462, file: !1462, line: 128, type: !1488, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1599)
!1599 = !{!1600}
!1600 = !DILocalVariable(name: "__stream", arg: 1, scope: !1598, file: !1462, line: 128, type: !1490)
!1601 = !DILocation(line: 0, scope: !1598)
!1602 = !DILocation(line: 130, column: 10, scope: !1598)
!1603 = !DILocation(line: 130, column: 3, scope: !1598)
!1604 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1462, file: !1462, line: 135, type: !1488, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1605)
!1605 = !{!1606}
!1606 = !DILocalVariable(name: "__stream", arg: 1, scope: !1604, file: !1462, line: 135, type: !1490)
!1607 = !DILocation(line: 0, scope: !1604)
!1608 = !DILocation(line: 137, column: 10, scope: !1604)
!1609 = !DILocation(line: 137, column: 3, scope: !1604)
!1610 = distinct !DISubprogram(name: "tolower", scope: !1611, file: !1611, line: 207, type: !1556, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1612)
!1611 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1612 = !{!1613}
!1613 = !DILocalVariable(name: "__c", arg: 1, scope: !1610, file: !1611, line: 207, type: !378)
!1614 = !DILocation(line: 0, scope: !1610)
!1615 = !DILocation(line: 209, column: 22, scope: !1610)
!1616 = !DILocation(line: 209, column: 39, scope: !1610)
!1617 = !DILocation(line: 209, column: 38, scope: !1610)
!1618 = !DILocation(line: 209, column: 37, scope: !1610)
!1619 = !DILocation(line: 209, column: 10, scope: !1610)
!1620 = !DILocation(line: 209, column: 3, scope: !1610)
!1621 = distinct !DISubprogram(name: "toupper", scope: !1611, file: !1611, line: 213, type: !1556, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1622)
!1622 = !{!1623}
!1623 = !DILocalVariable(name: "__c", arg: 1, scope: !1621, file: !1611, line: 213, type: !378)
!1624 = !DILocation(line: 0, scope: !1621)
!1625 = !DILocation(line: 215, column: 22, scope: !1621)
!1626 = !DILocation(line: 215, column: 39, scope: !1621)
!1627 = !DILocation(line: 215, column: 38, scope: !1621)
!1628 = !DILocation(line: 215, column: 37, scope: !1621)
!1629 = !DILocation(line: 215, column: 10, scope: !1621)
!1630 = !DILocation(line: 215, column: 3, scope: !1621)
!1631 = distinct !DISubprogram(name: "atoi", scope: !1632, file: !1632, line: 361, type: !1633, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1635)
!1632 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!378, !383}
!1635 = !{!1636}
!1636 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1631, file: !1632, line: 361, type: !383)
!1637 = !DILocation(line: 0, scope: !1631)
!1638 = !DILocation(line: 363, column: 16, scope: !1631)
!1639 = !DILocation(line: 363, column: 10, scope: !1631)
!1640 = !DILocation(line: 363, column: 3, scope: !1631)
!1641 = distinct !DISubprogram(name: "atol", scope: !1632, file: !1632, line: 366, type: !1642, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1644)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!505, !383}
!1644 = !{!1645}
!1645 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1641, file: !1632, line: 366, type: !383)
!1646 = !DILocation(line: 0, scope: !1641)
!1647 = !DILocation(line: 368, column: 10, scope: !1641)
!1648 = !DILocation(line: 368, column: 3, scope: !1641)
!1649 = distinct !DISubprogram(name: "atoll", scope: !1632, file: !1632, line: 373, type: !1650, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1653)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!1652, !383}
!1652 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1653 = !{!1654}
!1654 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1649, file: !1632, line: 373, type: !383)
!1655 = !DILocation(line: 0, scope: !1649)
!1656 = !DILocation(line: 375, column: 10, scope: !1649)
!1657 = !DILocation(line: 375, column: 3, scope: !1649)
!1658 = distinct !DISubprogram(name: "bsearch", scope: !1659, file: !1659, line: 20, type: !1660, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1663)
!1659 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!382, !835, !835, !850, !850, !1662}
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1632, line: 808, baseType: !839)
!1663 = !{!1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673}
!1664 = !DILocalVariable(name: "__key", arg: 1, scope: !1658, file: !1659, line: 20, type: !835)
!1665 = !DILocalVariable(name: "__base", arg: 2, scope: !1658, file: !1659, line: 20, type: !835)
!1666 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1658, file: !1659, line: 20, type: !850)
!1667 = !DILocalVariable(name: "__size", arg: 4, scope: !1658, file: !1659, line: 20, type: !850)
!1668 = !DILocalVariable(name: "__compar", arg: 5, scope: !1658, file: !1659, line: 21, type: !1662)
!1669 = !DILocalVariable(name: "__l", scope: !1658, file: !1659, line: 23, type: !850)
!1670 = !DILocalVariable(name: "__u", scope: !1658, file: !1659, line: 23, type: !850)
!1671 = !DILocalVariable(name: "__idx", scope: !1658, file: !1659, line: 23, type: !850)
!1672 = !DILocalVariable(name: "__p", scope: !1658, file: !1659, line: 24, type: !835)
!1673 = !DILocalVariable(name: "__comparison", scope: !1658, file: !1659, line: 25, type: !378)
!1674 = !DILocation(line: 0, scope: !1658)
!1675 = !DILocation(line: 29, column: 3, scope: !1658)
!1676 = !DILocation(line: 27, column: 7, scope: !1658)
!1677 = !DILocation(line: 29, column: 14, scope: !1658)
!1678 = !DILocation(line: 31, column: 20, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1658, file: !1659, line: 30, column: 5)
!1680 = !DILocation(line: 31, column: 27, scope: !1679)
!1681 = !DILocation(line: 32, column: 56, scope: !1679)
!1682 = !DILocation(line: 32, column: 47, scope: !1679)
!1683 = !DILocation(line: 33, column: 22, scope: !1679)
!1684 = !DILocation(line: 34, column: 24, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1679, file: !1659, line: 34, column: 11)
!1686 = !DILocation(line: 34, column: 11, scope: !1679)
!1687 = !DILocation(line: 36, column: 29, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1685, file: !1659, line: 36, column: 16)
!1689 = !DILocation(line: 36, column: 16, scope: !1685)
!1690 = !DILocation(line: 37, column: 14, scope: !1688)
!1691 = distinct !{!1691, !1675, !1692}
!1692 = !DILocation(line: 40, column: 5, scope: !1658)
!1693 = !DILocation(line: 43, column: 1, scope: !1658)
!1694 = distinct !DISubprogram(name: "atof", scope: !1695, file: !1695, line: 25, type: !1696, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1699)
!1695 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!1698, !383}
!1698 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1699 = !{!1700}
!1700 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1694, file: !1695, line: 25, type: !383)
!1701 = !DILocation(line: 0, scope: !1694)
!1702 = !DILocation(line: 27, column: 10, scope: !1694)
!1703 = !DILocation(line: 27, column: 3, scope: !1694)
!1704 = distinct !DISubprogram(name: "strtoimax", scope: !1705, file: !1705, line: 324, type: !1706, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1712)
!1705 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!1708, !1465, !1711, !378}
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1709, line: 101, baseType: !1710)
!1709 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1517, line: 72, baseType: !505)
!1711 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !379)
!1712 = !{!1713, !1714, !1715}
!1713 = !DILocalVariable(name: "nptr", arg: 1, scope: !1704, file: !1705, line: 324, type: !1465)
!1714 = !DILocalVariable(name: "endptr", arg: 2, scope: !1704, file: !1705, line: 324, type: !1711)
!1715 = !DILocalVariable(name: "base", arg: 3, scope: !1704, file: !1705, line: 324, type: !378)
!1716 = !DILocation(line: 0, scope: !1704)
!1717 = !DILocation(line: 327, column: 10, scope: !1704)
!1718 = !DILocation(line: 327, column: 3, scope: !1704)
!1719 = distinct !DISubprogram(name: "strtoumax", scope: !1705, file: !1705, line: 336, type: !1720, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1724)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!1722, !1465, !1711, !378}
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1709, line: 102, baseType: !1723)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1517, line: 73, baseType: !488)
!1724 = !{!1725, !1726, !1727}
!1725 = !DILocalVariable(name: "nptr", arg: 1, scope: !1719, file: !1705, line: 336, type: !1465)
!1726 = !DILocalVariable(name: "endptr", arg: 2, scope: !1719, file: !1705, line: 336, type: !1711)
!1727 = !DILocalVariable(name: "base", arg: 3, scope: !1719, file: !1705, line: 336, type: !378)
!1728 = !DILocation(line: 0, scope: !1719)
!1729 = !DILocation(line: 339, column: 10, scope: !1719)
!1730 = !DILocation(line: 339, column: 3, scope: !1719)
!1731 = distinct !DISubprogram(name: "wcstoimax", scope: !1705, file: !1705, line: 348, type: !1732, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1741)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!1708, !1734, !1738, !378}
!1734 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1735)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1737)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1705, line: 34, baseType: !378)
!1738 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1739)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1741 = !{!1742, !1743, !1744}
!1742 = !DILocalVariable(name: "nptr", arg: 1, scope: !1731, file: !1705, line: 348, type: !1734)
!1743 = !DILocalVariable(name: "endptr", arg: 2, scope: !1731, file: !1705, line: 348, type: !1738)
!1744 = !DILocalVariable(name: "base", arg: 3, scope: !1731, file: !1705, line: 348, type: !378)
!1745 = !DILocation(line: 0, scope: !1731)
!1746 = !DILocation(line: 351, column: 10, scope: !1731)
!1747 = !DILocation(line: 351, column: 3, scope: !1731)
!1748 = distinct !DISubprogram(name: "wcstoumax", scope: !1705, file: !1705, line: 362, type: !1749, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1751)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!1722, !1734, !1738, !378}
!1751 = !{!1752, !1753, !1754}
!1752 = !DILocalVariable(name: "nptr", arg: 1, scope: !1748, file: !1705, line: 362, type: !1734)
!1753 = !DILocalVariable(name: "endptr", arg: 2, scope: !1748, file: !1705, line: 362, type: !1738)
!1754 = !DILocalVariable(name: "base", arg: 3, scope: !1748, file: !1705, line: 362, type: !378)
!1755 = !DILocation(line: 0, scope: !1748)
!1756 = !DILocation(line: 365, column: 10, scope: !1748)
!1757 = !DILocation(line: 365, column: 3, scope: !1748)
!1758 = distinct !DISubprogram(name: "stat", scope: !1759, file: !1759, line: 453, type: !1760, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1797)
!1759 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!378, !383, !1762}
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1764, line: 46, size: 1152, elements: !1765)
!1764 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1765 = !{!1766, !1768, !1770, !1772, !1774, !1776, !1778, !1779, !1780, !1781, !1783, !1785, !1793, !1794, !1795}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1763, file: !1764, line: 48, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1517, line: 145, baseType: !488)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1763, file: !1764, line: 53, baseType: !1769, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1517, line: 148, baseType: !488)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1763, file: !1764, line: 61, baseType: !1771, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1517, line: 151, baseType: !488)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1763, file: !1764, line: 62, baseType: !1773, size: 32, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1517, line: 150, baseType: !5)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1763, file: !1764, line: 64, baseType: !1775, size: 32, offset: 224)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1517, line: 146, baseType: !5)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1763, file: !1764, line: 65, baseType: !1777, size: 32, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1517, line: 147, baseType: !5)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1763, file: !1764, line: 67, baseType: !378, size: 32, offset: 288)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1763, file: !1764, line: 69, baseType: !1767, size: 64, offset: 320)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1763, file: !1764, line: 74, baseType: !1516, size: 64, offset: 384)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1763, file: !1764, line: 78, baseType: !1782, size: 64, offset: 448)
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1517, line: 174, baseType: !505)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1763, file: !1764, line: 80, baseType: !1784, size: 64, offset: 512)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1517, line: 179, baseType: !505)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1763, file: !1764, line: 91, baseType: !1786, size: 128, offset: 576)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1787, line: 10, size: 128, elements: !1788)
!1787 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1788 = !{!1789, !1791}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1786, file: !1787, line: 12, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1517, line: 160, baseType: !505)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1786, file: !1787, line: 16, baseType: !1792, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1517, line: 196, baseType: !505)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1763, file: !1764, line: 92, baseType: !1786, size: 128, offset: 704)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1763, file: !1764, line: 93, baseType: !1786, size: 128, offset: 832)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1763, file: !1764, line: 106, baseType: !1796, size: 192, offset: 960)
!1796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1792, size: 192, elements: !605)
!1797 = !{!1798, !1799}
!1798 = !DILocalVariable(name: "__path", arg: 1, scope: !1758, file: !1759, line: 453, type: !383)
!1799 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1758, file: !1759, line: 453, type: !1762)
!1800 = !DILocation(line: 0, scope: !1758)
!1801 = !DILocation(line: 455, column: 10, scope: !1758)
!1802 = !DILocation(line: 455, column: 3, scope: !1758)
!1803 = distinct !DISubprogram(name: "lstat", scope: !1759, file: !1759, line: 460, type: !1760, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1804)
!1804 = !{!1805, !1806}
!1805 = !DILocalVariable(name: "__path", arg: 1, scope: !1803, file: !1759, line: 460, type: !383)
!1806 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1803, file: !1759, line: 460, type: !1762)
!1807 = !DILocation(line: 0, scope: !1803)
!1808 = !DILocation(line: 462, column: 10, scope: !1803)
!1809 = !DILocation(line: 462, column: 3, scope: !1803)
!1810 = distinct !DISubprogram(name: "fstat", scope: !1759, file: !1759, line: 467, type: !1811, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1813)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!378, !378, !1762}
!1813 = !{!1814, !1815}
!1814 = !DILocalVariable(name: "__fd", arg: 1, scope: !1810, file: !1759, line: 467, type: !378)
!1815 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1810, file: !1759, line: 467, type: !1762)
!1816 = !DILocation(line: 0, scope: !1810)
!1817 = !DILocation(line: 469, column: 10, scope: !1810)
!1818 = !DILocation(line: 469, column: 3, scope: !1810)
!1819 = distinct !DISubprogram(name: "fstatat", scope: !1759, file: !1759, line: 474, type: !1820, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1822)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!378, !378, !383, !1762, !378}
!1822 = !{!1823, !1824, !1825, !1826}
!1823 = !DILocalVariable(name: "__fd", arg: 1, scope: !1819, file: !1759, line: 474, type: !378)
!1824 = !DILocalVariable(name: "__filename", arg: 2, scope: !1819, file: !1759, line: 474, type: !383)
!1825 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1819, file: !1759, line: 474, type: !1762)
!1826 = !DILocalVariable(name: "__flag", arg: 4, scope: !1819, file: !1759, line: 474, type: !378)
!1827 = !DILocation(line: 0, scope: !1819)
!1828 = !DILocation(line: 477, column: 10, scope: !1819)
!1829 = !DILocation(line: 477, column: 3, scope: !1819)
!1830 = distinct !DISubprogram(name: "mknod", scope: !1759, file: !1759, line: 483, type: !1831, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1833)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!378, !383, !1773, !1767}
!1833 = !{!1834, !1835, !1836}
!1834 = !DILocalVariable(name: "__path", arg: 1, scope: !1830, file: !1759, line: 483, type: !383)
!1835 = !DILocalVariable(name: "__mode", arg: 2, scope: !1830, file: !1759, line: 483, type: !1773)
!1836 = !DILocalVariable(name: "__dev", arg: 3, scope: !1830, file: !1759, line: 483, type: !1767)
!1837 = !DILocation(line: 0, scope: !1830)
!1838 = !DILocation(line: 485, column: 10, scope: !1830)
!1839 = !DILocation(line: 485, column: 3, scope: !1830)
!1840 = distinct !DISubprogram(name: "mknodat", scope: !1759, file: !1759, line: 491, type: !1841, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1843)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!378, !378, !383, !1773, !1767}
!1843 = !{!1844, !1845, !1846, !1847}
!1844 = !DILocalVariable(name: "__fd", arg: 1, scope: !1840, file: !1759, line: 491, type: !378)
!1845 = !DILocalVariable(name: "__path", arg: 2, scope: !1840, file: !1759, line: 491, type: !383)
!1846 = !DILocalVariable(name: "__mode", arg: 3, scope: !1840, file: !1759, line: 491, type: !1773)
!1847 = !DILocalVariable(name: "__dev", arg: 4, scope: !1840, file: !1759, line: 491, type: !1767)
!1848 = !DILocation(line: 0, scope: !1840)
!1849 = !DILocation(line: 494, column: 10, scope: !1840)
!1850 = !DILocation(line: 494, column: 3, scope: !1840)
!1851 = distinct !DISubprogram(name: "stat64", scope: !1759, file: !1759, line: 502, type: !1852, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1874)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!378, !383, !1854}
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1764, line: 119, size: 1152, elements: !1856)
!1856 = !{!1857, !1858, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1870, !1871, !1872, !1873}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1855, file: !1764, line: 121, baseType: !1767, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1855, file: !1764, line: 123, baseType: !1859, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1517, line: 149, baseType: !488)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1855, file: !1764, line: 124, baseType: !1771, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1855, file: !1764, line: 125, baseType: !1773, size: 32, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1855, file: !1764, line: 132, baseType: !1775, size: 32, offset: 224)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1855, file: !1764, line: 133, baseType: !1777, size: 32, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1855, file: !1764, line: 135, baseType: !378, size: 32, offset: 288)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1855, file: !1764, line: 136, baseType: !1767, size: 64, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1855, file: !1764, line: 137, baseType: !1516, size: 64, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1855, file: !1764, line: 143, baseType: !1782, size: 64, offset: 448)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1855, file: !1764, line: 144, baseType: !1869, size: 64, offset: 512)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1517, line: 180, baseType: !505)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1855, file: !1764, line: 152, baseType: !1786, size: 128, offset: 576)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1855, file: !1764, line: 153, baseType: !1786, size: 128, offset: 704)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1855, file: !1764, line: 154, baseType: !1786, size: 128, offset: 832)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1855, file: !1764, line: 164, baseType: !1796, size: 192, offset: 960)
!1874 = !{!1875, !1876}
!1875 = !DILocalVariable(name: "__path", arg: 1, scope: !1851, file: !1759, line: 502, type: !383)
!1876 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1851, file: !1759, line: 502, type: !1854)
!1877 = !DILocation(line: 0, scope: !1851)
!1878 = !DILocation(line: 504, column: 10, scope: !1851)
!1879 = !DILocation(line: 504, column: 3, scope: !1851)
!1880 = distinct !DISubprogram(name: "lstat64", scope: !1759, file: !1759, line: 509, type: !1852, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1881)
!1881 = !{!1882, !1883}
!1882 = !DILocalVariable(name: "__path", arg: 1, scope: !1880, file: !1759, line: 509, type: !383)
!1883 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1880, file: !1759, line: 509, type: !1854)
!1884 = !DILocation(line: 0, scope: !1880)
!1885 = !DILocation(line: 511, column: 10, scope: !1880)
!1886 = !DILocation(line: 511, column: 3, scope: !1880)
!1887 = distinct !DISubprogram(name: "fstat64", scope: !1759, file: !1759, line: 516, type: !1888, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1890)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!378, !378, !1854}
!1890 = !{!1891, !1892}
!1891 = !DILocalVariable(name: "__fd", arg: 1, scope: !1887, file: !1759, line: 516, type: !378)
!1892 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1887, file: !1759, line: 516, type: !1854)
!1893 = !DILocation(line: 0, scope: !1887)
!1894 = !DILocation(line: 518, column: 10, scope: !1887)
!1895 = !DILocation(line: 518, column: 3, scope: !1887)
!1896 = distinct !DISubprogram(name: "fstatat64", scope: !1759, file: !1759, line: 523, type: !1897, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1899)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!378, !378, !383, !1854, !378}
!1899 = !{!1900, !1901, !1902, !1903}
!1900 = !DILocalVariable(name: "__fd", arg: 1, scope: !1896, file: !1759, line: 523, type: !378)
!1901 = !DILocalVariable(name: "__filename", arg: 2, scope: !1896, file: !1759, line: 523, type: !383)
!1902 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1896, file: !1759, line: 523, type: !1854)
!1903 = !DILocalVariable(name: "__flag", arg: 4, scope: !1896, file: !1759, line: 523, type: !378)
!1904 = !DILocation(line: 0, scope: !1896)
!1905 = !DILocation(line: 526, column: 10, scope: !1896)
!1906 = !DILocation(line: 526, column: 3, scope: !1896)
!1907 = distinct !DISubprogram(name: "pre_edge_lcm", scope: !1, file: !1, line: 378, type: !1908, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1929)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!1910, !378, !1917, !1917, !1917, !1917, !1928, !1928}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_list", file: !133, line: 572, size: 128, elements: !1912)
!1912 = !{!1913, !1914, !1915}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !1911, file: !133, line: 574, baseType: !378, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "num_edges", scope: !1911, file: !133, line: 575, baseType: !378, size: 32, offset: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "index_to_edge", scope: !1911, file: !133, line: 576, baseType: !1916, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !1919, line: 45, baseType: !1920)
!1919 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !1919, line: 39, size: 192, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1926}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !1921, file: !1919, line: 41, baseType: !376, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !1921, file: !1919, line: 42, baseType: !5, size: 32, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1921, file: !1919, line: 43, baseType: !5, size: 32, offset: 96)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !1921, file: !1919, line: 44, baseType: !1927, size: 64, offset: 128)
!1927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 64, elements: !453)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1929 = !{!1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945}
!1930 = !DILocalVariable(name: "n_exprs", arg: 1, scope: !1907, file: !1, line: 378, type: !378)
!1931 = !DILocalVariable(name: "transp", arg: 2, scope: !1907, file: !1, line: 378, type: !1917)
!1932 = !DILocalVariable(name: "avloc", arg: 3, scope: !1907, file: !1, line: 379, type: !1917)
!1933 = !DILocalVariable(name: "antloc", arg: 4, scope: !1907, file: !1, line: 379, type: !1917)
!1934 = !DILocalVariable(name: "kill", arg: 5, scope: !1907, file: !1, line: 379, type: !1917)
!1935 = !DILocalVariable(name: "insert", arg: 6, scope: !1907, file: !1, line: 380, type: !1928)
!1936 = !DILocalVariable(name: "del", arg: 7, scope: !1907, file: !1, line: 380, type: !1928)
!1937 = !DILocalVariable(name: "antin", scope: !1907, file: !1, line: 382, type: !1917)
!1938 = !DILocalVariable(name: "antout", scope: !1907, file: !1, line: 382, type: !1917)
!1939 = !DILocalVariable(name: "earliest", scope: !1907, file: !1, line: 382, type: !1917)
!1940 = !DILocalVariable(name: "avin", scope: !1907, file: !1, line: 383, type: !1917)
!1941 = !DILocalVariable(name: "avout", scope: !1907, file: !1, line: 383, type: !1917)
!1942 = !DILocalVariable(name: "later", scope: !1907, file: !1, line: 384, type: !1917)
!1943 = !DILocalVariable(name: "laterin", scope: !1907, file: !1, line: 384, type: !1917)
!1944 = !DILocalVariable(name: "edge_list", scope: !1907, file: !1, line: 385, type: !1910)
!1945 = !DILocalVariable(name: "num_edges", scope: !1907, file: !1, line: 386, type: !378)
!1946 = !DILocation(line: 0, scope: !1907)
!1947 = !DILocation(line: 388, column: 15, scope: !1907)
!1948 = !DILocation(line: 389, column: 15, scope: !1907)
!1949 = !DILocation(line: 405, column: 32, scope: !1907)
!1950 = !DILocation(line: 405, column: 10, scope: !1907)
!1951 = !DILocation(line: 406, column: 33, scope: !1907)
!1952 = !DILocation(line: 406, column: 11, scope: !1907)
!1953 = !DILocation(line: 407, column: 3, scope: !1907)
!1954 = !DILocation(line: 408, column: 3, scope: !1907)
!1955 = !DILocation(line: 411, column: 33, scope: !1907)
!1956 = !DILocation(line: 411, column: 11, scope: !1907)
!1957 = !DILocation(line: 412, column: 34, scope: !1907)
!1958 = !DILocation(line: 412, column: 12, scope: !1907)
!1959 = !DILocation(line: 413, column: 3, scope: !1907)
!1960 = !DILocation(line: 424, column: 14, scope: !1907)
!1961 = !DILocation(line: 425, column: 3, scope: !1907)
!1962 = !DILocation(line: 432, column: 3, scope: !1907)
!1963 = !DILocation(line: 433, column: 3, scope: !1907)
!1964 = !DILocation(line: 434, column: 3, scope: !1907)
!1965 = !DILocation(line: 436, column: 11, scope: !1907)
!1966 = !DILocation(line: 439, column: 35, scope: !1907)
!1967 = !DILocation(line: 439, column: 52, scope: !1907)
!1968 = !DILocation(line: 439, column: 13, scope: !1907)
!1969 = !DILocation(line: 440, column: 3, scope: !1907)
!1970 = !DILocation(line: 450, column: 3, scope: !1907)
!1971 = !DILocation(line: 452, column: 13, scope: !1907)
!1972 = !DILocation(line: 452, column: 11, scope: !1907)
!1973 = !DILocation(line: 453, column: 32, scope: !1907)
!1974 = !DILocation(line: 453, column: 10, scope: !1907)
!1975 = !DILocation(line: 453, column: 8, scope: !1907)
!1976 = !DILocation(line: 454, column: 61, scope: !1907)
!1977 = !DILocation(line: 454, column: 3, scope: !1907)
!1978 = !DILocation(line: 456, column: 3, scope: !1907)
!1979 = !DILocation(line: 457, column: 3, scope: !1907)
!1980 = !DILocation(line: 468, column: 3, scope: !1907)
!1981 = distinct !DISubprogram(name: "compute_available", scope: !1, file: !1, line: 475, type: !1982, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1984)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1917, !1917, !1917, !1917}
!1984 = !{!1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996}
!1985 = !DILocalVariable(name: "avloc", arg: 1, scope: !1981, file: !1, line: 475, type: !1917)
!1986 = !DILocalVariable(name: "kill", arg: 2, scope: !1981, file: !1, line: 475, type: !1917)
!1987 = !DILocalVariable(name: "avout", arg: 3, scope: !1981, file: !1, line: 475, type: !1917)
!1988 = !DILocalVariable(name: "avin", arg: 4, scope: !1981, file: !1, line: 476, type: !1917)
!1989 = !DILocalVariable(name: "e", scope: !1981, file: !1, line: 478, type: !404)
!1990 = !DILocalVariable(name: "worklist", scope: !1981, file: !1, line: 479, type: !385)
!1991 = !DILocalVariable(name: "qin", scope: !1981, file: !1, line: 479, type: !385)
!1992 = !DILocalVariable(name: "qout", scope: !1981, file: !1, line: 479, type: !385)
!1993 = !DILocalVariable(name: "qend", scope: !1981, file: !1, line: 479, type: !385)
!1994 = !DILocalVariable(name: "bb", scope: !1981, file: !1, line: 479, type: !386)
!1995 = !DILocalVariable(name: "qlen", scope: !1981, file: !1, line: 480, type: !5)
!1996 = !DILocalVariable(name: "ei", scope: !1981, file: !1, line: 481, type: !1997)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !133, line: 682, baseType: !1998)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !133, line: 679, size: 128, elements: !1999)
!1999 = !{!2000, !2001}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1998, file: !133, line: 680, baseType: !5, size: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !1998, file: !133, line: 681, baseType: !2002, size: 64, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!2003 = !DILocation(line: 0, scope: !1981)
!2004 = !DILocation(line: 478, column: 3, scope: !1981)
!2005 = !DILocation(line: 481, column: 3, scope: !1981)
!2006 = !DILocation(line: 487, column: 5, scope: !1981)
!2007 = !DILocation(line: 490, column: 31, scope: !1981)
!2008 = !DILocation(line: 490, column: 3, scope: !1981)
!2009 = !DILocation(line: 494, column: 3, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1981, file: !1, line: 494, column: 3)
!2011 = !DILocation(line: 494, column: 3, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2010, file: !1, line: 494, column: 3)
!2013 = !DILocation(line: 0, scope: !2010)
!2014 = !DILocation(line: 496, column: 11, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2012, file: !1, line: 495, column: 5)
!2016 = !DILocation(line: 496, column: 14, scope: !2015)
!2017 = !DILocation(line: 497, column: 11, scope: !2015)
!2018 = !DILocation(line: 497, column: 15, scope: !2015)
!2019 = !DILocation(line: 0, scope: !2012)
!2020 = distinct !{!2020, !2009, !2021}
!2021 = !DILocation(line: 498, column: 5, scope: !2010)
!2022 = !DILocation(line: 501, column: 20, scope: !1981)
!2023 = !DILocation(line: 501, column: 35, scope: !1981)
!2024 = !DILocation(line: 506, column: 3, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1981, file: !1, line: 506, column: 3)
!2026 = !DILocation(line: 0, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2025, file: !1, line: 506, column: 3)
!2028 = !DILocation(line: 506, column: 3, scope: !2027)
!2029 = !DILocation(line: 501, column: 11, scope: !1981)
!2030 = !DILocation(line: 0, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !1, line: 539, column: 2)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !1, line: 534, column: 11)
!2033 = distinct !DILexicalBlock(scope: !1981, file: !1, line: 511, column: 5)
!2034 = !DILocation(line: 0, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !1, line: 541, column: 6)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 540, column: 8)
!2037 = distinct !DILexicalBlock(scope: !2031, file: !1, line: 539, column: 2)
!2038 = !DILocation(line: 510, column: 3, scope: !1981)
!2039 = !DILocation(line: 507, column: 20, scope: !2027)
!2040 = !DILocation(line: 507, column: 5, scope: !2027)
!2041 = !DILocation(line: 507, column: 8, scope: !2027)
!2042 = !DILocation(line: 507, column: 14, scope: !2027)
!2043 = !DILocation(line: 507, column: 18, scope: !2027)
!2044 = distinct !{!2044, !2024, !2045}
!2045 = !DILocation(line: 507, column: 20, scope: !2025)
!2046 = !DILocation(line: 500, column: 7, scope: !1981)
!2047 = !DILocation(line: 513, column: 17, scope: !2033)
!2048 = !DILocation(line: 513, column: 12, scope: !2033)
!2049 = !DILocation(line: 514, column: 11, scope: !2033)
!2050 = !DILocation(line: 516, column: 16, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2033, file: !1, line: 516, column: 11)
!2052 = !DILocation(line: 516, column: 11, scope: !2033)
!2053 = !DILocation(line: 522, column: 15, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2033, file: !1, line: 522, column: 11)
!2055 = !DILocation(line: 522, column: 22, scope: !2054)
!2056 = !DILocation(line: 522, column: 19, scope: !2054)
!2057 = !DILocation(line: 522, column: 11, scope: !2033)
!2058 = !DILocation(line: 525, column: 25, scope: !2054)
!2059 = !DILocation(line: 525, column: 16, scope: !2054)
!2060 = !DILocation(line: 525, column: 2, scope: !2054)
!2061 = !DILocation(line: 530, column: 12, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2054, file: !1, line: 527, column: 2)
!2063 = !DILocation(line: 531, column: 44, scope: !2062)
!2064 = !DILocation(line: 531, column: 35, scope: !2062)
!2065 = !DILocation(line: 531, column: 4, scope: !2062)
!2066 = !DILocation(line: 534, column: 47, scope: !2032)
!2067 = !DILocation(line: 534, column: 37, scope: !2032)
!2068 = !DILocation(line: 534, column: 55, scope: !2032)
!2069 = !DILocation(line: 535, column: 9, scope: !2032)
!2070 = !DILocation(line: 535, column: 26, scope: !2032)
!2071 = !DILocation(line: 534, column: 11, scope: !2032)
!2072 = !DILocation(line: 534, column: 11, scope: !2033)
!2073 = !DILocation(line: 539, column: 2, scope: !2031)
!2074 = !DILocation(line: 539, column: 2, scope: !2037)
!2075 = !DILocation(line: 540, column: 9, scope: !2036)
!2076 = !DILocation(line: 540, column: 12, scope: !2036)
!2077 = !DILocation(line: 540, column: 18, scope: !2036)
!2078 = !DILocation(line: 540, column: 22, scope: !2036)
!2079 = !DILocation(line: 540, column: 36, scope: !2036)
!2080 = !DILocation(line: 540, column: 33, scope: !2036)
!2081 = !DILocation(line: 540, column: 8, scope: !2037)
!2082 = !DILocation(line: 542, column: 12, scope: !2035)
!2083 = !DILocation(line: 542, column: 15, scope: !2035)
!2084 = !DILocation(line: 543, column: 23, scope: !2035)
!2085 = !DILocation(line: 543, column: 8, scope: !2035)
!2086 = !DILocation(line: 543, column: 11, scope: !2035)
!2087 = !DILocation(line: 543, column: 17, scope: !2035)
!2088 = !DILocation(line: 543, column: 21, scope: !2035)
!2089 = !DILocation(line: 544, column: 12, scope: !2035)
!2090 = !DILocation(line: 546, column: 16, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 546, column: 12)
!2092 = !DILocation(line: 546, column: 12, scope: !2035)
!2093 = !DILocation(line: 548, column: 6, scope: !2035)
!2094 = !DILocation(line: 0, scope: !2033)
!2095 = distinct !{!2095, !2073, !2096}
!2096 = !DILocation(line: 548, column: 6, scope: !2031)
!2097 = distinct !{!2097, !2038, !2098}
!2098 = !DILocation(line: 549, column: 5, scope: !1981)
!2099 = !DILocation(line: 551, column: 3, scope: !1981)
!2100 = !DILocation(line: 552, column: 3, scope: !1981)
!2101 = !DILocation(line: 553, column: 3, scope: !1981)
!2102 = !DILocation(line: 554, column: 1, scope: !1981)
!2103 = distinct !DISubprogram(name: "compute_antinout_edge", scope: !1, file: !1, line: 97, type: !1982, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2104)
!2104 = !{!2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116}
!2105 = !DILocalVariable(name: "antloc", arg: 1, scope: !2103, file: !1, line: 97, type: !1917)
!2106 = !DILocalVariable(name: "transp", arg: 2, scope: !2103, file: !1, line: 97, type: !1917)
!2107 = !DILocalVariable(name: "antin", arg: 3, scope: !2103, file: !1, line: 97, type: !1917)
!2108 = !DILocalVariable(name: "antout", arg: 4, scope: !2103, file: !1, line: 98, type: !1917)
!2109 = !DILocalVariable(name: "bb", scope: !2103, file: !1, line: 100, type: !386)
!2110 = !DILocalVariable(name: "e", scope: !2103, file: !1, line: 101, type: !404)
!2111 = !DILocalVariable(name: "worklist", scope: !2103, file: !1, line: 102, type: !385)
!2112 = !DILocalVariable(name: "qin", scope: !2103, file: !1, line: 102, type: !385)
!2113 = !DILocalVariable(name: "qout", scope: !2103, file: !1, line: 102, type: !385)
!2114 = !DILocalVariable(name: "qend", scope: !2103, file: !1, line: 102, type: !385)
!2115 = !DILocalVariable(name: "qlen", scope: !2103, file: !1, line: 103, type: !5)
!2116 = !DILocalVariable(name: "ei", scope: !2103, file: !1, line: 104, type: !1997)
!2117 = !DILocation(line: 0, scope: !2103)
!2118 = !DILocation(line: 101, column: 3, scope: !2103)
!2119 = !DILocation(line: 104, column: 3, scope: !2103)
!2120 = !DILocation(line: 109, column: 27, scope: !2103)
!2121 = !DILocation(line: 113, column: 31, scope: !2103)
!2122 = !DILocation(line: 113, column: 3, scope: !2103)
!2123 = !DILocation(line: 117, column: 3, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2103, file: !1, line: 117, column: 3)
!2125 = !DILocation(line: 117, column: 3, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2124, file: !1, line: 117, column: 3)
!2127 = !DILocation(line: 0, scope: !2124)
!2128 = !DILocation(line: 119, column: 11, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2126, file: !1, line: 118, column: 5)
!2130 = !DILocation(line: 119, column: 14, scope: !2129)
!2131 = !DILocation(line: 120, column: 11, scope: !2129)
!2132 = !DILocation(line: 120, column: 15, scope: !2129)
!2133 = !DILocation(line: 0, scope: !2126)
!2134 = distinct !{!2134, !2123, !2135}
!2135 = !DILocation(line: 121, column: 5, scope: !2124)
!2136 = !DILocation(line: 124, column: 20, scope: !2103)
!2137 = !DILocation(line: 124, column: 35, scope: !2103)
!2138 = !DILocation(line: 129, column: 3, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2103, file: !1, line: 129, column: 3)
!2140 = !DILocation(line: 0, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2139, file: !1, line: 129, column: 3)
!2142 = !DILocation(line: 129, column: 3, scope: !2141)
!2143 = !DILocation(line: 124, column: 11, scope: !2103)
!2144 = !DILocation(line: 0, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !1, line: 160, column: 2)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !1, line: 155, column: 11)
!2147 = distinct !DILexicalBlock(scope: !2103, file: !1, line: 134, column: 5)
!2148 = !DILocation(line: 0, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !1, line: 162, column: 6)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !1, line: 161, column: 8)
!2151 = distinct !DILexicalBlock(scope: !2145, file: !1, line: 160, column: 2)
!2152 = !DILocation(line: 133, column: 3, scope: !2103)
!2153 = !DILocation(line: 130, column: 19, scope: !2141)
!2154 = !DILocation(line: 130, column: 5, scope: !2141)
!2155 = !DILocation(line: 130, column: 8, scope: !2141)
!2156 = !DILocation(line: 130, column: 13, scope: !2141)
!2157 = !DILocation(line: 130, column: 17, scope: !2141)
!2158 = distinct !{!2158, !2138, !2159}
!2159 = !DILocation(line: 130, column: 19, scope: !2139)
!2160 = !DILocation(line: 123, column: 7, scope: !2103)
!2161 = !DILocation(line: 136, column: 17, scope: !2147)
!2162 = !DILocation(line: 136, column: 12, scope: !2147)
!2163 = !DILocation(line: 137, column: 11, scope: !2147)
!2164 = !DILocation(line: 139, column: 16, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2147, file: !1, line: 139, column: 11)
!2166 = !DILocation(line: 139, column: 11, scope: !2147)
!2167 = !DILocation(line: 142, column: 15, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2147, file: !1, line: 142, column: 11)
!2169 = !DILocation(line: 142, column: 22, scope: !2168)
!2170 = !DILocation(line: 142, column: 19, scope: !2168)
!2171 = !DILocation(line: 142, column: 11, scope: !2147)
!2172 = !DILocation(line: 146, column: 27, scope: !2168)
!2173 = !DILocation(line: 146, column: 16, scope: !2168)
!2174 = !DILocation(line: 146, column: 2, scope: !2168)
!2175 = !DILocation(line: 151, column: 12, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2168, file: !1, line: 148, column: 2)
!2177 = !DILocation(line: 152, column: 46, scope: !2176)
!2178 = !DILocation(line: 152, column: 35, scope: !2176)
!2179 = !DILocation(line: 152, column: 4, scope: !2176)
!2180 = !DILocation(line: 155, column: 46, scope: !2146)
!2181 = !DILocation(line: 155, column: 36, scope: !2146)
!2182 = !DILocation(line: 155, column: 54, scope: !2146)
!2183 = !DILocation(line: 156, column: 8, scope: !2146)
!2184 = !DILocation(line: 156, column: 27, scope: !2146)
!2185 = !DILocation(line: 155, column: 11, scope: !2146)
!2186 = !DILocation(line: 155, column: 11, scope: !2147)
!2187 = !DILocation(line: 160, column: 2, scope: !2145)
!2188 = !DILocation(line: 160, column: 2, scope: !2151)
!2189 = !DILocation(line: 161, column: 9, scope: !2150)
!2190 = !DILocation(line: 161, column: 12, scope: !2150)
!2191 = !DILocation(line: 161, column: 17, scope: !2150)
!2192 = !DILocation(line: 161, column: 21, scope: !2150)
!2193 = !DILocation(line: 161, column: 34, scope: !2150)
!2194 = !DILocation(line: 161, column: 31, scope: !2150)
!2195 = !DILocation(line: 161, column: 8, scope: !2151)
!2196 = !DILocation(line: 163, column: 12, scope: !2149)
!2197 = !DILocation(line: 163, column: 15, scope: !2149)
!2198 = !DILocation(line: 164, column: 22, scope: !2149)
!2199 = !DILocation(line: 164, column: 8, scope: !2149)
!2200 = !DILocation(line: 164, column: 11, scope: !2149)
!2201 = !DILocation(line: 164, column: 16, scope: !2149)
!2202 = !DILocation(line: 164, column: 20, scope: !2149)
!2203 = !DILocation(line: 165, column: 12, scope: !2149)
!2204 = !DILocation(line: 166, column: 16, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2149, file: !1, line: 166, column: 12)
!2206 = !DILocation(line: 166, column: 12, scope: !2149)
!2207 = !DILocation(line: 168, column: 6, scope: !2149)
!2208 = !DILocation(line: 0, scope: !2147)
!2209 = distinct !{!2209, !2187, !2210}
!2210 = !DILocation(line: 168, column: 6, scope: !2145)
!2211 = distinct !{!2211, !2152, !2212}
!2212 = !DILocation(line: 169, column: 5, scope: !2103)
!2213 = !DILocation(line: 171, column: 3, scope: !2103)
!2214 = !DILocation(line: 172, column: 3, scope: !2103)
!2215 = !DILocation(line: 173, column: 3, scope: !2103)
!2216 = !DILocation(line: 174, column: 1, scope: !2103)
!2217 = distinct !DISubprogram(name: "compute_earliest", scope: !1, file: !1, line: 179, type: !2218, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !1910, !378, !1917, !1917, !1917, !1917, !1917}
!2220 = !{!2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233}
!2221 = !DILocalVariable(name: "edge_list", arg: 1, scope: !2217, file: !1, line: 179, type: !1910)
!2222 = !DILocalVariable(name: "n_exprs", arg: 2, scope: !2217, file: !1, line: 179, type: !378)
!2223 = !DILocalVariable(name: "antin", arg: 3, scope: !2217, file: !1, line: 179, type: !1917)
!2224 = !DILocalVariable(name: "antout", arg: 4, scope: !2217, file: !1, line: 180, type: !1917)
!2225 = !DILocalVariable(name: "avout", arg: 5, scope: !2217, file: !1, line: 180, type: !1917)
!2226 = !DILocalVariable(name: "kill", arg: 6, scope: !2217, file: !1, line: 180, type: !1917)
!2227 = !DILocalVariable(name: "earliest", arg: 7, scope: !2217, file: !1, line: 181, type: !1917)
!2228 = !DILocalVariable(name: "difference", scope: !2217, file: !1, line: 183, type: !1918)
!2229 = !DILocalVariable(name: "temp_bitmap", scope: !2217, file: !1, line: 183, type: !1918)
!2230 = !DILocalVariable(name: "x", scope: !2217, file: !1, line: 184, type: !378)
!2231 = !DILocalVariable(name: "num_edges", scope: !2217, file: !1, line: 184, type: !378)
!2232 = !DILocalVariable(name: "pred", scope: !2217, file: !1, line: 185, type: !386)
!2233 = !DILocalVariable(name: "succ", scope: !2217, file: !1, line: 185, type: !386)
!2234 = !DILocation(line: 0, scope: !2217)
!2235 = !DILocation(line: 187, column: 15, scope: !2217)
!2236 = !DILocation(line: 189, column: 16, scope: !2217)
!2237 = !DILocation(line: 190, column: 17, scope: !2217)
!2238 = !DILocation(line: 0, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !1, line: 193, column: 5)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !1, line: 192, column: 3)
!2241 = distinct !DILexicalBlock(scope: !2217, file: !1, line: 192, column: 3)
!2242 = !DILocation(line: 192, column: 8, scope: !2241)
!2243 = !DILocation(line: 0, scope: !2241)
!2244 = !DILocation(line: 192, column: 17, scope: !2240)
!2245 = !DILocation(line: 192, column: 3, scope: !2241)
!2246 = !DILocation(line: 194, column: 14, scope: !2239)
!2247 = !DILocation(line: 195, column: 14, scope: !2239)
!2248 = !DILocation(line: 196, column: 19, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2239, file: !1, line: 196, column: 11)
!2250 = !DILocation(line: 196, column: 16, scope: !2249)
!2251 = !DILocation(line: 196, column: 11, scope: !2239)
!2252 = !DILocation(line: 197, column: 16, scope: !2249)
!2253 = !DILocation(line: 197, column: 41, scope: !2249)
!2254 = !DILocation(line: 197, column: 29, scope: !2249)
!2255 = !DILocation(line: 197, column: 2, scope: !2249)
!2256 = !DILocation(line: 200, column: 16, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !1, line: 200, column: 8)
!2258 = distinct !DILexicalBlock(scope: !2249, file: !1, line: 199, column: 2)
!2259 = !DILocation(line: 200, column: 13, scope: !2257)
!2260 = !DILocation(line: 200, column: 8, scope: !2258)
!2261 = !DILocation(line: 201, column: 20, scope: !2257)
!2262 = !DILocation(line: 201, column: 6, scope: !2257)
!2263 = !DILocation(line: 204, column: 52, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2257, file: !1, line: 203, column: 6)
!2265 = !DILocation(line: 204, column: 40, scope: !2264)
!2266 = !DILocation(line: 205, column: 19, scope: !2264)
!2267 = !DILocation(line: 205, column: 7, scope: !2264)
!2268 = !DILocation(line: 204, column: 8, scope: !2264)
!2269 = !DILocation(line: 206, column: 47, scope: !2264)
!2270 = !DILocation(line: 206, column: 34, scope: !2264)
!2271 = !DILocation(line: 206, column: 8, scope: !2264)
!2272 = !DILocation(line: 207, column: 30, scope: !2264)
!2273 = !DILocation(line: 208, column: 20, scope: !2264)
!2274 = !DILocation(line: 208, column: 9, scope: !2264)
!2275 = !DILocation(line: 207, column: 8, scope: !2264)
!2276 = !DILocation(line: 192, column: 31, scope: !2240)
!2277 = !DILocation(line: 192, column: 3, scope: !2240)
!2278 = distinct !{!2278, !2245, !2279}
!2279 = !DILocation(line: 211, column: 5, scope: !2241)
!2280 = !DILocation(line: 213, column: 3, scope: !2217)
!2281 = !DILocation(line: 214, column: 3, scope: !2217)
!2282 = !DILocation(line: 215, column: 1, scope: !2217)
!2283 = distinct !DISubprogram(name: "compute_laterin", scope: !1, file: !1, line: 247, type: !2284, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2286)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{null, !1910, !1917, !1917, !1917, !1917}
!2286 = !{!2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301}
!2287 = !DILocalVariable(name: "edge_list", arg: 1, scope: !2283, file: !1, line: 247, type: !1910)
!2288 = !DILocalVariable(name: "earliest", arg: 2, scope: !2283, file: !1, line: 247, type: !1917)
!2289 = !DILocalVariable(name: "antloc", arg: 3, scope: !2283, file: !1, line: 248, type: !1917)
!2290 = !DILocalVariable(name: "later", arg: 4, scope: !2283, file: !1, line: 248, type: !1917)
!2291 = !DILocalVariable(name: "laterin", arg: 5, scope: !2283, file: !1, line: 248, type: !1917)
!2292 = !DILocalVariable(name: "num_edges", scope: !2283, file: !1, line: 250, type: !378)
!2293 = !DILocalVariable(name: "i", scope: !2283, file: !1, line: 250, type: !378)
!2294 = !DILocalVariable(name: "e", scope: !2283, file: !1, line: 251, type: !404)
!2295 = !DILocalVariable(name: "worklist", scope: !2283, file: !1, line: 252, type: !385)
!2296 = !DILocalVariable(name: "qin", scope: !2283, file: !1, line: 252, type: !385)
!2297 = !DILocalVariable(name: "qout", scope: !2283, file: !1, line: 252, type: !385)
!2298 = !DILocalVariable(name: "qend", scope: !2283, file: !1, line: 252, type: !385)
!2299 = !DILocalVariable(name: "bb", scope: !2283, file: !1, line: 252, type: !386)
!2300 = !DILocalVariable(name: "qlen", scope: !2283, file: !1, line: 253, type: !5)
!2301 = !DILocalVariable(name: "ei", scope: !2283, file: !1, line: 254, type: !1997)
!2302 = !DILocation(line: 0, scope: !2283)
!2303 = !DILocation(line: 251, column: 3, scope: !2283)
!2304 = !DILocation(line: 254, column: 3, scope: !2283)
!2305 = !DILocation(line: 256, column: 15, scope: !2283)
!2306 = !DILocation(line: 262, column: 7, scope: !2283)
!2307 = !DILocation(line: 0, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !1, line: 265, column: 3)
!2309 = distinct !DILexicalBlock(scope: !2283, file: !1, line: 265, column: 3)
!2310 = !DILocation(line: 265, column: 8, scope: !2309)
!2311 = !DILocation(line: 0, scope: !2309)
!2312 = !DILocation(line: 265, column: 17, scope: !2308)
!2313 = !DILocation(line: 265, column: 3, scope: !2309)
!2314 = !DILocation(line: 266, column: 38, scope: !2308)
!2315 = !DILocation(line: 266, column: 5, scope: !2308)
!2316 = !DILocation(line: 266, column: 32, scope: !2308)
!2317 = !DILocation(line: 266, column: 36, scope: !2308)
!2318 = !DILocation(line: 265, column: 31, scope: !2308)
!2319 = !DILocation(line: 265, column: 3, scope: !2308)
!2320 = distinct !{!2320, !2313, !2321}
!2321 = !DILocation(line: 266, column: 56, scope: !2309)
!2322 = !DILocation(line: 278, column: 3, scope: !2283)
!2323 = !DILocation(line: 284, column: 3, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2283, file: !1, line: 284, column: 3)
!2325 = !DILocation(line: 0, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2324, file: !1, line: 284, column: 3)
!2327 = !DILocation(line: 284, column: 3, scope: !2326)
!2328 = !DILocation(line: 285, column: 34, scope: !2326)
!2329 = !DILocation(line: 285, column: 37, scope: !2326)
!2330 = !DILocation(line: 285, column: 19, scope: !2326)
!2331 = !DILocation(line: 285, column: 43, scope: !2326)
!2332 = !DILocation(line: 285, column: 5, scope: !2326)
!2333 = distinct !{!2333, !2323, !2334}
!2334 = !DILocation(line: 285, column: 68, scope: !2324)
!2335 = !DILocation(line: 289, column: 3, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2283, file: !1, line: 289, column: 3)
!2337 = !DILocation(line: 289, column: 3, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2336, file: !1, line: 289, column: 3)
!2339 = !DILocation(line: 0, scope: !2336)
!2340 = !DILocation(line: 291, column: 11, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !1, line: 290, column: 5)
!2342 = !DILocation(line: 291, column: 14, scope: !2341)
!2343 = !DILocation(line: 292, column: 11, scope: !2341)
!2344 = !DILocation(line: 292, column: 15, scope: !2341)
!2345 = !DILocation(line: 0, scope: !2338)
!2346 = distinct !{!2346, !2335, !2347}
!2347 = !DILocation(line: 293, column: 5, scope: !2336)
!2348 = !DILocation(line: 298, column: 20, scope: !2283)
!2349 = !DILocation(line: 298, column: 35, scope: !2283)
!2350 = !DILocation(line: 298, column: 11, scope: !2283)
!2351 = !DILocation(line: 0, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !1, line: 313, column: 7)
!2353 = distinct !DILexicalBlock(scope: !2283, file: !1, line: 303, column: 5)
!2354 = !DILocation(line: 0, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2353, file: !1, line: 318, column: 7)
!2356 = !DILocation(line: 0, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !1, line: 326, column: 4)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !1, line: 319, column: 6)
!2359 = distinct !DILexicalBlock(scope: !2355, file: !1, line: 318, column: 7)
!2360 = !DILocation(line: 302, column: 3, scope: !2283)
!2361 = !DILocation(line: 0, scope: !2353)
!2362 = !DILocation(line: 308, column: 16, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2353, file: !1, line: 308, column: 11)
!2364 = !DILocation(line: 308, column: 11, scope: !2353)
!2365 = !DILocation(line: 297, column: 7, scope: !2283)
!2366 = !DILocation(line: 305, column: 12, scope: !2353)
!2367 = !DILocation(line: 306, column: 11, scope: !2353)
!2368 = !DILocation(line: 306, column: 15, scope: !2353)
!2369 = !DILocation(line: 312, column: 33, scope: !2353)
!2370 = !DILocation(line: 312, column: 21, scope: !2353)
!2371 = !DILocation(line: 312, column: 7, scope: !2353)
!2372 = !DILocation(line: 313, column: 7, scope: !2352)
!2373 = !DILocation(line: 313, column: 7, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2352, file: !1, line: 313, column: 7)
!2375 = !DILocation(line: 314, column: 31, scope: !2374)
!2376 = !DILocation(line: 314, column: 19, scope: !2374)
!2377 = !DILocation(line: 315, column: 19, scope: !2374)
!2378 = !DILocation(line: 315, column: 22, scope: !2374)
!2379 = !DILocation(line: 315, column: 5, scope: !2374)
!2380 = !DILocation(line: 314, column: 2, scope: !2374)
!2381 = distinct !{!2381, !2372, !2382}
!2382 = !DILocation(line: 315, column: 26, scope: !2352)
!2383 = !DILocation(line: 305, column: 17, scope: !2353)
!2384 = !DILocation(line: 307, column: 11, scope: !2353)
!2385 = !DILocation(line: 318, column: 7, scope: !2355)
!2386 = !DILocation(line: 318, column: 7, scope: !2359)
!2387 = distinct !{!2387, !2360, !2388}
!2388 = !DILocation(line: 333, column: 5, scope: !2283)
!2389 = !DILocation(line: 319, column: 47, scope: !2358)
!2390 = !DILocation(line: 319, column: 50, scope: !2358)
!2391 = !DILocation(line: 319, column: 32, scope: !2358)
!2392 = !DILocation(line: 320, column: 11, scope: !2358)
!2393 = !DILocation(line: 321, column: 22, scope: !2358)
!2394 = !DILocation(line: 321, column: 27, scope: !2358)
!2395 = !DILocation(line: 321, column: 11, scope: !2358)
!2396 = !DILocation(line: 322, column: 11, scope: !2358)
!2397 = !DILocation(line: 319, column: 6, scope: !2358)
!2398 = !DILocation(line: 325, column: 6, scope: !2358)
!2399 = !DILocation(line: 325, column: 9, scope: !2358)
!2400 = !DILocation(line: 325, column: 12, scope: !2358)
!2401 = !DILocation(line: 325, column: 20, scope: !2358)
!2402 = !DILocation(line: 325, column: 17, scope: !2358)
!2403 = !DILocation(line: 325, column: 35, scope: !2358)
!2404 = !DILocation(line: 325, column: 47, scope: !2358)
!2405 = !DILocation(line: 325, column: 51, scope: !2358)
!2406 = !DILocation(line: 319, column: 6, scope: !2359)
!2407 = !DILocation(line: 327, column: 10, scope: !2357)
!2408 = !DILocation(line: 327, column: 13, scope: !2357)
!2409 = !DILocation(line: 328, column: 21, scope: !2357)
!2410 = !DILocation(line: 328, column: 6, scope: !2357)
!2411 = !DILocation(line: 328, column: 9, scope: !2357)
!2412 = !DILocation(line: 328, column: 15, scope: !2357)
!2413 = !DILocation(line: 328, column: 19, scope: !2357)
!2414 = !DILocation(line: 329, column: 10, scope: !2357)
!2415 = !DILocation(line: 330, column: 14, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2357, file: !1, line: 330, column: 10)
!2417 = !DILocation(line: 330, column: 10, scope: !2357)
!2418 = !DILocation(line: 332, column: 4, scope: !2357)
!2419 = distinct !{!2419, !2385, !2420}
!2420 = !DILocation(line: 332, column: 4, scope: !2355)
!2421 = !DILocation(line: 338, column: 25, scope: !2283)
!2422 = !DILocation(line: 338, column: 17, scope: !2283)
!2423 = !DILocation(line: 338, column: 3, scope: !2283)
!2424 = !DILocation(line: 339, column: 3, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2283, file: !1, line: 339, column: 3)
!2426 = !DILocation(line: 339, column: 3, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2425, file: !1, line: 339, column: 3)
!2428 = !DILocation(line: 340, column: 30, scope: !2427)
!2429 = !DILocation(line: 340, column: 22, scope: !2427)
!2430 = !DILocation(line: 342, column: 23, scope: !2427)
!2431 = !DILocation(line: 342, column: 26, scope: !2427)
!2432 = !DILocation(line: 342, column: 8, scope: !2427)
!2433 = !DILocation(line: 340, column: 5, scope: !2427)
!2434 = distinct !{!2434, !2424, !2435}
!2435 = !DILocation(line: 342, column: 30, scope: !2425)
!2436 = !DILocation(line: 344, column: 3, scope: !2283)
!2437 = !DILocation(line: 345, column: 3, scope: !2283)
!2438 = !DILocation(line: 346, column: 1, scope: !2283)
!2439 = distinct !DISubprogram(name: "compute_insert_delete", scope: !1, file: !1, line: 351, type: !2440, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2442)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{null, !1910, !1917, !1917, !1917, !1917, !1917}
!2442 = !{!2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451}
!2443 = !DILocalVariable(name: "edge_list", arg: 1, scope: !2439, file: !1, line: 351, type: !1910)
!2444 = !DILocalVariable(name: "antloc", arg: 2, scope: !2439, file: !1, line: 351, type: !1917)
!2445 = !DILocalVariable(name: "later", arg: 3, scope: !2439, file: !1, line: 352, type: !1917)
!2446 = !DILocalVariable(name: "laterin", arg: 4, scope: !2439, file: !1, line: 352, type: !1917)
!2447 = !DILocalVariable(name: "insert", arg: 5, scope: !2439, file: !1, line: 352, type: !1917)
!2448 = !DILocalVariable(name: "del", arg: 6, scope: !2439, file: !1, line: 353, type: !1917)
!2449 = !DILocalVariable(name: "x", scope: !2439, file: !1, line: 355, type: !378)
!2450 = !DILocalVariable(name: "bb", scope: !2439, file: !1, line: 356, type: !386)
!2451 = !DILocalVariable(name: "b", scope: !2452, file: !1, line: 364, type: !386)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !1, line: 363, column: 5)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !1, line: 362, column: 3)
!2454 = distinct !DILexicalBlock(scope: !2439, file: !1, line: 362, column: 3)
!2455 = !DILocation(line: 0, scope: !2439)
!2456 = !DILocation(line: 358, column: 3, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2439, file: !1, line: 358, column: 3)
!2458 = !DILocation(line: 358, column: 3, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2457, file: !1, line: 358, column: 3)
!2460 = !DILocation(line: 0, scope: !2457)
!2461 = !DILocation(line: 0, scope: !2453)
!2462 = !DILocation(line: 0, scope: !2452)
!2463 = !DILocation(line: 362, column: 3, scope: !2454)
!2464 = !DILocation(line: 359, column: 33, scope: !2459)
!2465 = !DILocation(line: 359, column: 25, scope: !2459)
!2466 = !DILocation(line: 359, column: 41, scope: !2459)
!2467 = !DILocation(line: 360, column: 4, scope: !2459)
!2468 = !DILocation(line: 359, column: 5, scope: !2459)
!2469 = !DILocation(line: 0, scope: !2459)
!2470 = distinct !{!2470, !2456, !2471}
!2471 = !DILocation(line: 360, column: 22, scope: !2457)
!2472 = !DILocation(line: 0, scope: !2454)
!2473 = !DILocation(line: 362, column: 19, scope: !2453)
!2474 = !DILocation(line: 362, column: 17, scope: !2453)
!2475 = !DILocation(line: 364, column: 23, scope: !2452)
!2476 = !DILocation(line: 366, column: 16, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2452, file: !1, line: 366, column: 11)
!2478 = !DILocation(line: 366, column: 13, scope: !2477)
!2479 = !DILocation(line: 0, scope: !2477)
!2480 = !DILocation(line: 366, column: 11, scope: !2452)
!2481 = !DILocation(line: 367, column: 51, scope: !2477)
!2482 = !DILocation(line: 367, column: 43, scope: !2477)
!2483 = !DILocation(line: 367, column: 2, scope: !2477)
!2484 = !DILocation(line: 369, column: 54, scope: !2477)
!2485 = !DILocation(line: 369, column: 43, scope: !2477)
!2486 = !DILocation(line: 369, column: 2, scope: !2477)
!2487 = !DILocation(line: 362, column: 43, scope: !2453)
!2488 = !DILocation(line: 362, column: 3, scope: !2453)
!2489 = distinct !{!2489, !2463, !2490}
!2490 = !DILocation(line: 370, column: 5, scope: !2454)
!2491 = !DILocation(line: 371, column: 1, scope: !2439)
!2492 = distinct !DISubprogram(name: "ei_start_1", scope: !133, file: !133, line: 696, type: !2493, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2495)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!1997, !2002}
!2495 = !{!2496, !2497}
!2496 = !DILocalVariable(name: "ev", arg: 1, scope: !2492, file: !133, line: 696, type: !2002)
!2497 = !DILocalVariable(name: "i", scope: !2492, file: !133, line: 698, type: !1997)
!2498 = !DILocation(line: 0, scope: !2492)
!2499 = !DILocation(line: 700, column: 5, scope: !2492)
!2500 = !DILocation(line: 700, column: 11, scope: !2492)
!2501 = !DILocation(line: 701, column: 5, scope: !2492)
!2502 = !DILocation(line: 701, column: 15, scope: !2492)
!2503 = !DILocation(line: 703, column: 3, scope: !2492)
!2504 = distinct !DISubprogram(name: "ei_cond", scope: !133, file: !133, line: 771, type: !2505, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2507)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!377, !1997, !1916}
!2507 = !{!2508, !2509}
!2508 = !DILocalVariable(name: "ei", arg: 1, scope: !2504, file: !133, line: 771, type: !1997)
!2509 = !DILocalVariable(name: "p", arg: 2, scope: !2504, file: !133, line: 771, type: !1916)
!2510 = !DILocation(line: 0, scope: !2504)
!2511 = !DILocation(line: 773, column: 8, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2504, file: !133, line: 773, column: 7)
!2513 = !DILocation(line: 773, column: 7, scope: !2504)
!2514 = !DILocation(line: 775, column: 12, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2512, file: !133, line: 774, column: 5)
!2516 = !DILocation(line: 776, column: 7, scope: !2515)
!2517 = !DILocation(line: 781, column: 7, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2512, file: !133, line: 779, column: 5)
!2519 = !DILocation(line: 0, scope: !2512)
!2520 = !DILocation(line: 783, column: 1, scope: !2504)
!2521 = distinct !DISubprogram(name: "ei_next", scope: !133, file: !133, line: 736, type: !2522, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2525)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{null, !2524}
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!2525 = !{!2526}
!2526 = !DILocalVariable(name: "i", arg: 1, scope: !2521, file: !133, line: 736, type: !2524)
!2527 = !DILocation(line: 0, scope: !2521)
!2528 = !DILocation(line: 738, column: 3, scope: !2521)
!2529 = !DILocation(line: 739, column: 11, scope: !2521)
!2530 = !DILocation(line: 740, column: 1, scope: !2521)
!2531 = distinct !DISubprogram(name: "pre_edge_rev_lcm", scope: !1, file: !1, line: 712, type: !1908, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2532)
!2532 = !{!2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548}
!2533 = !DILocalVariable(name: "n_exprs", arg: 1, scope: !2531, file: !1, line: 712, type: !378)
!2534 = !DILocalVariable(name: "transp", arg: 2, scope: !2531, file: !1, line: 712, type: !1917)
!2535 = !DILocalVariable(name: "st_avloc", arg: 3, scope: !2531, file: !1, line: 713, type: !1917)
!2536 = !DILocalVariable(name: "st_antloc", arg: 4, scope: !2531, file: !1, line: 713, type: !1917)
!2537 = !DILocalVariable(name: "kill", arg: 5, scope: !2531, file: !1, line: 713, type: !1917)
!2538 = !DILocalVariable(name: "insert", arg: 6, scope: !2531, file: !1, line: 714, type: !1928)
!2539 = !DILocalVariable(name: "del", arg: 7, scope: !2531, file: !1, line: 714, type: !1928)
!2540 = !DILocalVariable(name: "st_antin", scope: !2531, file: !1, line: 716, type: !1917)
!2541 = !DILocalVariable(name: "st_antout", scope: !2531, file: !1, line: 716, type: !1917)
!2542 = !DILocalVariable(name: "st_avout", scope: !2531, file: !1, line: 717, type: !1917)
!2543 = !DILocalVariable(name: "st_avin", scope: !2531, file: !1, line: 717, type: !1917)
!2544 = !DILocalVariable(name: "farthest", scope: !2531, file: !1, line: 717, type: !1917)
!2545 = !DILocalVariable(name: "nearer", scope: !2531, file: !1, line: 718, type: !1917)
!2546 = !DILocalVariable(name: "nearerout", scope: !2531, file: !1, line: 718, type: !1917)
!2547 = !DILocalVariable(name: "edge_list", scope: !2531, file: !1, line: 719, type: !1910)
!2548 = !DILocalVariable(name: "num_edges", scope: !2531, file: !1, line: 720, type: !378)
!2549 = !DILocation(line: 0, scope: !2531)
!2550 = !DILocation(line: 722, column: 15, scope: !2531)
!2551 = !DILocation(line: 723, column: 15, scope: !2531)
!2552 = !DILocation(line: 725, column: 36, scope: !2531)
!2553 = !DILocation(line: 725, column: 14, scope: !2531)
!2554 = !DILocation(line: 726, column: 37, scope: !2531)
!2555 = !DILocation(line: 726, column: 15, scope: !2531)
!2556 = !DILocation(line: 727, column: 34, scope: !2531)
!2557 = !DILocation(line: 727, column: 3, scope: !2531)
!2558 = !DILocation(line: 728, column: 35, scope: !2531)
!2559 = !DILocation(line: 728, column: 3, scope: !2531)
!2560 = !DILocation(line: 729, column: 3, scope: !2531)
!2561 = !DILocation(line: 732, column: 36, scope: !2531)
!2562 = !DILocation(line: 732, column: 14, scope: !2531)
!2563 = !DILocation(line: 733, column: 35, scope: !2531)
!2564 = !DILocation(line: 733, column: 13, scope: !2531)
!2565 = !DILocation(line: 734, column: 3, scope: !2531)
!2566 = !DILocation(line: 760, column: 14, scope: !2531)
!2567 = !DILocation(line: 761, column: 3, scope: !2531)
!2568 = !DILocation(line: 769, column: 3, scope: !2531)
!2569 = !DILocation(line: 770, column: 3, scope: !2531)
!2570 = !DILocation(line: 772, column: 3, scope: !2531)
!2571 = !DILocation(line: 773, column: 3, scope: !2531)
!2572 = !DILocation(line: 775, column: 12, scope: !2531)
!2573 = !DILocation(line: 778, column: 37, scope: !2531)
!2574 = !DILocation(line: 778, column: 54, scope: !2531)
!2575 = !DILocation(line: 778, column: 15, scope: !2531)
!2576 = !DILocation(line: 779, column: 3, scope: !2531)
!2577 = !DILocation(line: 790, column: 3, scope: !2531)
!2578 = !DILocation(line: 792, column: 13, scope: !2531)
!2579 = !DILocation(line: 792, column: 11, scope: !2531)
!2580 = !DILocation(line: 793, column: 32, scope: !2531)
!2581 = !DILocation(line: 793, column: 10, scope: !2531)
!2582 = !DILocation(line: 793, column: 8, scope: !2531)
!2583 = !DILocation(line: 795, column: 9, scope: !2531)
!2584 = !DILocation(line: 794, column: 3, scope: !2531)
!2585 = !DILocation(line: 797, column: 3, scope: !2531)
!2586 = !DILocation(line: 798, column: 3, scope: !2531)
!2587 = !DILocation(line: 808, column: 3, scope: !2531)
!2588 = distinct !DISubprogram(name: "compute_farthest", scope: !1, file: !1, line: 559, type: !2218, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2589)
!2589 = !{!2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602}
!2590 = !DILocalVariable(name: "edge_list", arg: 1, scope: !2588, file: !1, line: 559, type: !1910)
!2591 = !DILocalVariable(name: "n_exprs", arg: 2, scope: !2588, file: !1, line: 559, type: !378)
!2592 = !DILocalVariable(name: "st_avout", arg: 3, scope: !2588, file: !1, line: 560, type: !1917)
!2593 = !DILocalVariable(name: "st_avin", arg: 4, scope: !2588, file: !1, line: 560, type: !1917)
!2594 = !DILocalVariable(name: "st_antin", arg: 5, scope: !2588, file: !1, line: 560, type: !1917)
!2595 = !DILocalVariable(name: "kill", arg: 6, scope: !2588, file: !1, line: 561, type: !1917)
!2596 = !DILocalVariable(name: "farthest", arg: 7, scope: !2588, file: !1, line: 561, type: !1917)
!2597 = !DILocalVariable(name: "difference", scope: !2588, file: !1, line: 563, type: !1918)
!2598 = !DILocalVariable(name: "temp_bitmap", scope: !2588, file: !1, line: 563, type: !1918)
!2599 = !DILocalVariable(name: "x", scope: !2588, file: !1, line: 564, type: !378)
!2600 = !DILocalVariable(name: "num_edges", scope: !2588, file: !1, line: 564, type: !378)
!2601 = !DILocalVariable(name: "pred", scope: !2588, file: !1, line: 565, type: !386)
!2602 = !DILocalVariable(name: "succ", scope: !2588, file: !1, line: 565, type: !386)
!2603 = !DILocation(line: 0, scope: !2588)
!2604 = !DILocation(line: 567, column: 15, scope: !2588)
!2605 = !DILocation(line: 569, column: 16, scope: !2588)
!2606 = !DILocation(line: 570, column: 17, scope: !2588)
!2607 = !DILocation(line: 0, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !1, line: 573, column: 5)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !1, line: 572, column: 3)
!2610 = distinct !DILexicalBlock(scope: !2588, file: !1, line: 572, column: 3)
!2611 = !DILocation(line: 572, column: 8, scope: !2610)
!2612 = !DILocation(line: 0, scope: !2610)
!2613 = !DILocation(line: 572, column: 17, scope: !2609)
!2614 = !DILocation(line: 572, column: 3, scope: !2610)
!2615 = !DILocation(line: 574, column: 14, scope: !2608)
!2616 = !DILocation(line: 575, column: 14, scope: !2608)
!2617 = !DILocation(line: 576, column: 19, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2608, file: !1, line: 576, column: 11)
!2619 = !DILocation(line: 576, column: 16, scope: !2618)
!2620 = !DILocation(line: 576, column: 11, scope: !2608)
!2621 = !DILocation(line: 577, column: 16, scope: !2618)
!2622 = !DILocation(line: 577, column: 44, scope: !2618)
!2623 = !DILocation(line: 577, column: 29, scope: !2618)
!2624 = !DILocation(line: 577, column: 2, scope: !2618)
!2625 = !DILocation(line: 580, column: 16, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !1, line: 580, column: 8)
!2627 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 579, column: 2)
!2628 = !DILocation(line: 580, column: 13, scope: !2626)
!2629 = !DILocation(line: 580, column: 8, scope: !2627)
!2630 = !DILocation(line: 581, column: 20, scope: !2626)
!2631 = !DILocation(line: 581, column: 6, scope: !2626)
!2632 = !DILocation(line: 584, column: 55, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2626, file: !1, line: 583, column: 6)
!2634 = !DILocation(line: 584, column: 40, scope: !2633)
!2635 = !DILocation(line: 585, column: 22, scope: !2633)
!2636 = !DILocation(line: 585, column: 7, scope: !2633)
!2637 = !DILocation(line: 584, column: 8, scope: !2633)
!2638 = !DILocation(line: 586, column: 48, scope: !2633)
!2639 = !DILocation(line: 586, column: 34, scope: !2633)
!2640 = !DILocation(line: 586, column: 8, scope: !2633)
!2641 = !DILocation(line: 587, column: 30, scope: !2633)
!2642 = !DILocation(line: 588, column: 20, scope: !2633)
!2643 = !DILocation(line: 588, column: 9, scope: !2633)
!2644 = !DILocation(line: 587, column: 8, scope: !2633)
!2645 = !DILocation(line: 572, column: 31, scope: !2609)
!2646 = !DILocation(line: 572, column: 3, scope: !2609)
!2647 = distinct !{!2647, !2614, !2648}
!2648 = !DILocation(line: 591, column: 5, scope: !2610)
!2649 = !DILocation(line: 593, column: 3, scope: !2588)
!2650 = !DILocation(line: 594, column: 3, scope: !2588)
!2651 = !DILocation(line: 595, column: 1, scope: !2588)
!2652 = distinct !DISubprogram(name: "compute_nearerout", scope: !1, file: !1, line: 603, type: !2284, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2653)
!2653 = !{!2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665}
!2654 = !DILocalVariable(name: "edge_list", arg: 1, scope: !2652, file: !1, line: 603, type: !1910)
!2655 = !DILocalVariable(name: "farthest", arg: 2, scope: !2652, file: !1, line: 603, type: !1917)
!2656 = !DILocalVariable(name: "st_avloc", arg: 3, scope: !2652, file: !1, line: 604, type: !1917)
!2657 = !DILocalVariable(name: "nearer", arg: 4, scope: !2652, file: !1, line: 604, type: !1917)
!2658 = !DILocalVariable(name: "nearerout", arg: 5, scope: !2652, file: !1, line: 604, type: !1917)
!2659 = !DILocalVariable(name: "num_edges", scope: !2652, file: !1, line: 606, type: !378)
!2660 = !DILocalVariable(name: "i", scope: !2652, file: !1, line: 606, type: !378)
!2661 = !DILocalVariable(name: "e", scope: !2652, file: !1, line: 607, type: !404)
!2662 = !DILocalVariable(name: "worklist", scope: !2652, file: !1, line: 608, type: !385)
!2663 = !DILocalVariable(name: "tos", scope: !2652, file: !1, line: 608, type: !385)
!2664 = !DILocalVariable(name: "bb", scope: !2652, file: !1, line: 608, type: !386)
!2665 = !DILocalVariable(name: "ei", scope: !2652, file: !1, line: 609, type: !1997)
!2666 = !DILocation(line: 0, scope: !2652)
!2667 = !DILocation(line: 607, column: 3, scope: !2652)
!2668 = !DILocation(line: 609, column: 3, scope: !2652)
!2669 = !DILocation(line: 611, column: 15, scope: !2652)
!2670 = !DILocation(line: 616, column: 20, scope: !2652)
!2671 = !DILocation(line: 0, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !1, line: 620, column: 3)
!2673 = distinct !DILexicalBlock(scope: !2652, file: !1, line: 620, column: 3)
!2674 = !DILocation(line: 620, column: 8, scope: !2673)
!2675 = !DILocation(line: 0, scope: !2673)
!2676 = !DILocation(line: 620, column: 17, scope: !2672)
!2677 = !DILocation(line: 620, column: 3, scope: !2673)
!2678 = !DILocation(line: 621, column: 38, scope: !2672)
!2679 = !DILocation(line: 621, column: 5, scope: !2672)
!2680 = !DILocation(line: 621, column: 32, scope: !2672)
!2681 = !DILocation(line: 621, column: 36, scope: !2672)
!2682 = !DILocation(line: 620, column: 31, scope: !2672)
!2683 = !DILocation(line: 620, column: 3, scope: !2672)
!2684 = distinct !{!2684, !2677, !2685}
!2685 = !DILocation(line: 621, column: 56, scope: !2673)
!2686 = !DILocation(line: 624, column: 3, scope: !2652)
!2687 = !DILocation(line: 630, column: 3, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2652, file: !1, line: 630, column: 3)
!2689 = !DILocation(line: 0, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2688, file: !1, line: 630, column: 3)
!2691 = !DILocation(line: 630, column: 3, scope: !2690)
!2692 = !DILocation(line: 631, column: 34, scope: !2690)
!2693 = !DILocation(line: 631, column: 37, scope: !2690)
!2694 = !DILocation(line: 631, column: 19, scope: !2690)
!2695 = !DILocation(line: 631, column: 43, scope: !2690)
!2696 = !DILocation(line: 631, column: 5, scope: !2690)
!2697 = distinct !{!2697, !2687, !2698}
!2698 = !DILocation(line: 631, column: 67, scope: !2688)
!2699 = !DILocation(line: 635, column: 3, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2652, file: !1, line: 635, column: 3)
!2701 = !DILocation(line: 635, column: 3, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2700, file: !1, line: 635, column: 3)
!2703 = !DILocation(line: 0, scope: !2700)
!2704 = !DILocation(line: 0, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !1, line: 650, column: 7)
!2706 = distinct !DILexicalBlock(scope: !2652, file: !1, line: 643, column: 5)
!2707 = !DILocation(line: 0, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2706, file: !1, line: 655, column: 7)
!2709 = !DILocation(line: 0, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !1, line: 663, column: 4)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 656, column: 6)
!2712 = distinct !DILexicalBlock(scope: !2708, file: !1, line: 655, column: 7)
!2713 = !DILocation(line: 642, column: 3, scope: !2652)
!2714 = !DILocation(line: 637, column: 11, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2702, file: !1, line: 636, column: 5)
!2716 = !DILocation(line: 637, column: 14, scope: !2715)
!2717 = !DILocation(line: 638, column: 11, scope: !2715)
!2718 = !DILocation(line: 638, column: 15, scope: !2715)
!2719 = !DILocation(line: 0, scope: !2702)
!2720 = distinct !{!2720, !2699, !2721}
!2721 = !DILocation(line: 639, column: 5, scope: !2700)
!2722 = !DILocation(line: 0, scope: !2706)
!2723 = !DILocation(line: 642, column: 14, scope: !2652)
!2724 = !DILocation(line: 645, column: 13, scope: !2706)
!2725 = !DILocation(line: 645, column: 12, scope: !2706)
!2726 = !DILocation(line: 646, column: 11, scope: !2706)
!2727 = !DILocation(line: 646, column: 15, scope: !2706)
!2728 = !DILocation(line: 649, column: 35, scope: !2706)
!2729 = !DILocation(line: 649, column: 21, scope: !2706)
!2730 = !DILocation(line: 649, column: 7, scope: !2706)
!2731 = !DILocation(line: 650, column: 7, scope: !2705)
!2732 = !DILocation(line: 650, column: 7, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2705, file: !1, line: 650, column: 7)
!2734 = !DILocation(line: 651, column: 33, scope: !2733)
!2735 = !DILocation(line: 651, column: 19, scope: !2733)
!2736 = !DILocation(line: 652, column: 21, scope: !2733)
!2737 = !DILocation(line: 652, column: 24, scope: !2733)
!2738 = !DILocation(line: 652, column: 5, scope: !2733)
!2739 = !DILocation(line: 651, column: 2, scope: !2733)
!2740 = distinct !{!2740, !2731, !2741}
!2741 = !DILocation(line: 652, column: 28, scope: !2705)
!2742 = !DILocation(line: 655, column: 7, scope: !2708)
!2743 = !DILocation(line: 655, column: 7, scope: !2712)
!2744 = distinct !{!2744, !2713, !2745}
!2745 = !DILocation(line: 667, column: 5, scope: !2652)
!2746 = !DILocation(line: 656, column: 48, scope: !2711)
!2747 = !DILocation(line: 656, column: 51, scope: !2711)
!2748 = !DILocation(line: 656, column: 32, scope: !2711)
!2749 = !DILocation(line: 657, column: 11, scope: !2711)
!2750 = !DILocation(line: 658, column: 24, scope: !2711)
!2751 = !DILocation(line: 658, column: 30, scope: !2711)
!2752 = !DILocation(line: 658, column: 11, scope: !2711)
!2753 = !DILocation(line: 659, column: 11, scope: !2711)
!2754 = !DILocation(line: 656, column: 6, scope: !2711)
!2755 = !DILocation(line: 662, column: 6, scope: !2711)
!2756 = !DILocation(line: 662, column: 9, scope: !2711)
!2757 = !DILocation(line: 662, column: 12, scope: !2711)
!2758 = !DILocation(line: 662, column: 19, scope: !2711)
!2759 = !DILocation(line: 662, column: 16, scope: !2711)
!2760 = !DILocation(line: 662, column: 35, scope: !2711)
!2761 = !DILocation(line: 662, column: 46, scope: !2711)
!2762 = !DILocation(line: 662, column: 50, scope: !2711)
!2763 = !DILocation(line: 656, column: 6, scope: !2712)
!2764 = !DILocation(line: 664, column: 10, scope: !2710)
!2765 = !DILocation(line: 664, column: 13, scope: !2710)
!2766 = !DILocation(line: 665, column: 20, scope: !2710)
!2767 = !DILocation(line: 665, column: 6, scope: !2710)
!2768 = !DILocation(line: 665, column: 9, scope: !2710)
!2769 = !DILocation(line: 665, column: 14, scope: !2710)
!2770 = !DILocation(line: 665, column: 18, scope: !2710)
!2771 = !DILocation(line: 666, column: 4, scope: !2710)
!2772 = distinct !{!2772, !2742, !2773}
!2773 = !DILocation(line: 666, column: 4, scope: !2708)
!2774 = !DILocation(line: 672, column: 27, scope: !2652)
!2775 = !DILocation(line: 672, column: 17, scope: !2652)
!2776 = !DILocation(line: 672, column: 3, scope: !2652)
!2777 = !DILocation(line: 673, column: 3, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2652, file: !1, line: 673, column: 3)
!2779 = !DILocation(line: 673, column: 3, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2778, file: !1, line: 673, column: 3)
!2781 = !DILocation(line: 674, column: 32, scope: !2780)
!2782 = !DILocation(line: 674, column: 22, scope: !2780)
!2783 = !DILocation(line: 676, column: 24, scope: !2780)
!2784 = !DILocation(line: 676, column: 27, scope: !2780)
!2785 = !DILocation(line: 676, column: 8, scope: !2780)
!2786 = !DILocation(line: 674, column: 5, scope: !2780)
!2787 = distinct !{!2787, !2777, !2788}
!2788 = !DILocation(line: 676, column: 31, scope: !2778)
!2789 = !DILocation(line: 678, column: 3, scope: !2652)
!2790 = !DILocation(line: 679, column: 3, scope: !2652)
!2791 = !DILocation(line: 680, column: 1, scope: !2652)
!2792 = distinct !DISubprogram(name: "compute_rev_insert_delete", scope: !1, file: !1, line: 685, type: !2440, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2793)
!2793 = !{!2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802}
!2794 = !DILocalVariable(name: "edge_list", arg: 1, scope: !2792, file: !1, line: 685, type: !1910)
!2795 = !DILocalVariable(name: "st_avloc", arg: 2, scope: !2792, file: !1, line: 685, type: !1917)
!2796 = !DILocalVariable(name: "nearer", arg: 3, scope: !2792, file: !1, line: 686, type: !1917)
!2797 = !DILocalVariable(name: "nearerout", arg: 4, scope: !2792, file: !1, line: 686, type: !1917)
!2798 = !DILocalVariable(name: "insert", arg: 5, scope: !2792, file: !1, line: 687, type: !1917)
!2799 = !DILocalVariable(name: "del", arg: 6, scope: !2792, file: !1, line: 687, type: !1917)
!2800 = !DILocalVariable(name: "x", scope: !2792, file: !1, line: 689, type: !378)
!2801 = !DILocalVariable(name: "bb", scope: !2792, file: !1, line: 690, type: !386)
!2802 = !DILocalVariable(name: "b", scope: !2803, file: !1, line: 698, type: !386)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !1, line: 697, column: 5)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !1, line: 696, column: 3)
!2805 = distinct !DILexicalBlock(scope: !2792, file: !1, line: 696, column: 3)
!2806 = !DILocation(line: 0, scope: !2792)
!2807 = !DILocation(line: 692, column: 3, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2792, file: !1, line: 692, column: 3)
!2809 = !DILocation(line: 692, column: 3, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2808, file: !1, line: 692, column: 3)
!2811 = !DILocation(line: 0, scope: !2808)
!2812 = !DILocation(line: 0, scope: !2804)
!2813 = !DILocation(line: 0, scope: !2803)
!2814 = !DILocation(line: 696, column: 3, scope: !2805)
!2815 = !DILocation(line: 693, column: 33, scope: !2810)
!2816 = !DILocation(line: 693, column: 25, scope: !2810)
!2817 = !DILocation(line: 693, column: 41, scope: !2810)
!2818 = !DILocation(line: 694, column: 4, scope: !2810)
!2819 = !DILocation(line: 693, column: 5, scope: !2810)
!2820 = !DILocation(line: 0, scope: !2810)
!2821 = distinct !{!2821, !2807, !2822}
!2822 = !DILocation(line: 694, column: 24, scope: !2808)
!2823 = !DILocation(line: 0, scope: !2805)
!2824 = !DILocation(line: 696, column: 19, scope: !2804)
!2825 = !DILocation(line: 696, column: 17, scope: !2804)
!2826 = !DILocation(line: 698, column: 23, scope: !2803)
!2827 = !DILocation(line: 699, column: 16, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2803, file: !1, line: 699, column: 11)
!2829 = !DILocation(line: 699, column: 13, scope: !2828)
!2830 = !DILocation(line: 0, scope: !2828)
!2831 = !DILocation(line: 699, column: 11, scope: !2803)
!2832 = !DILocation(line: 700, column: 54, scope: !2828)
!2833 = !DILocation(line: 700, column: 44, scope: !2828)
!2834 = !DILocation(line: 700, column: 2, scope: !2828)
!2835 = !DILocation(line: 702, column: 57, scope: !2828)
!2836 = !DILocation(line: 702, column: 44, scope: !2828)
!2837 = !DILocation(line: 702, column: 2, scope: !2828)
!2838 = !DILocation(line: 696, column: 43, scope: !2804)
!2839 = !DILocation(line: 696, column: 3, scope: !2804)
!2840 = distinct !{!2840, !2814, !2841}
!2841 = !DILocation(line: 703, column: 5, scope: !2805)
!2842 = !DILocation(line: 704, column: 1, scope: !2792)
!2843 = distinct !DISubprogram(name: "ei_end_p", scope: !133, file: !133, line: 721, type: !2844, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2846)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!377, !1997}
!2846 = !{!2847}
!2847 = !DILocalVariable(name: "i", arg: 1, scope: !2843, file: !133, line: 721, type: !1997)
!2848 = !DILocation(line: 723, column: 22, scope: !2843)
!2849 = !DILocation(line: 723, column: 19, scope: !2843)
!2850 = !DILocation(line: 723, column: 10, scope: !2843)
!2851 = !DILocation(line: 723, column: 3, scope: !2843)
!2852 = distinct !DISubprogram(name: "ei_edge", scope: !133, file: !133, line: 752, type: !2853, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2855)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!404, !1997}
!2855 = !{!2856}
!2856 = !DILocalVariable(name: "i", arg: 1, scope: !2852, file: !133, line: 752, type: !1997)
!2857 = !DILocation(line: 754, column: 10, scope: !2852)
!2858 = !DILocation(line: 754, column: 3, scope: !2852)
!2859 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !133, file: !133, line: 150, type: !2860, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2864)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!5, !2862}
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!2864 = !{!2865}
!2865 = !DILocalVariable(name: "vec_", arg: 1, scope: !2859, file: !133, line: 150, type: !2862)
!2866 = !DILocation(line: 0, scope: !2859)
!2867 = !DILocation(line: 150, column: 1, scope: !2859)
!2868 = distinct !DISubprogram(name: "ei_container", scope: !133, file: !133, line: 685, type: !2869, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2871)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!392, !1997}
!2871 = !{!2872}
!2872 = !DILocalVariable(name: "i", arg: 1, scope: !2868, file: !133, line: 685, type: !1997)
!2873 = !DILocation(line: 687, column: 3, scope: !2868)
!2874 = !DILocation(line: 688, column: 10, scope: !2868)
!2875 = !DILocation(line: 688, column: 3, scope: !2868)
!2876 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !133, file: !133, line: 150, type: !2877, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2879)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!404, !2862, !5}
!2879 = !{!2880, !2881}
!2880 = !DILocalVariable(name: "vec_", arg: 1, scope: !2876, file: !133, line: 150, type: !2862)
!2881 = !DILocalVariable(name: "ix_", arg: 2, scope: !2876, file: !133, line: 150, type: !5)
!2882 = !DILocation(line: 0, scope: !2876)
!2883 = !DILocation(line: 150, column: 1, scope: !2876)
