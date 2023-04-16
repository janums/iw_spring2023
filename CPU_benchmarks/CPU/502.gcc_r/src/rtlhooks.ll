; ModuleID = 'rtlhooks.bc'
source_filename = "rtlhooks.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rtl_hooks = type { %struct.rtx_def* (i32, %struct.rtx_def*)*, %struct.rtx_def* (i32, %struct.rtx_def*)*, %struct.rtx_def* (%struct.rtx_def*, i32, %struct.rtx_def*, i32, i64, i64*)*, %struct.rtx_def* (%struct.rtx_def*, i32, %struct.rtx_def*, i32, i32, i32*)*, i8 (i32, %struct.rtx_def*)* }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], %struct.object_block*, i64 }
%union.rtunion_def = type { i8* }
%struct.object_block = type { %union.section*, i32, i64, %struct.VEC_rtx_gc*, %struct.VEC_rtx_gc* }
%union.section = type opaque
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.mem_attrs = type { %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32, i8 }
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
%struct.control_flow_graph = type opaque
%struct.gimple_seq_d = type opaque
%struct.gimple_df = type opaque
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@general_rtl_hooks = dso_local local_unnamed_addr constant %struct.rtl_hooks { %struct.rtx_def* (i32, %struct.rtx_def*)* @gen_lowpart_general, %struct.rtx_def* (i32, %struct.rtx_def*)* @gen_lowpart_no_emit_general, %struct.rtx_def* (%struct.rtx_def*, i32, %struct.rtx_def*, i32, i64, i64*)* @reg_nonzero_bits_general, %struct.rtx_def* (%struct.rtx_def*, i32, %struct.rtx_def*, i32, i32, i32*)* @reg_num_sign_bit_copies_general, i8 (i32, %struct.rtx_def*)* @reg_truncated_to_mode_general }, align 8, !dbg !0
@rtl_hooks = dso_local local_unnamed_addr global %struct.rtl_hooks { %struct.rtx_def* (i32, %struct.rtx_def*)* @gen_lowpart_general, %struct.rtx_def* (i32, %struct.rtx_def*)* @gen_lowpart_no_emit_general, %struct.rtx_def* (%struct.rtx_def*, i32, %struct.rtx_def*, i32, i64, i64*)* @reg_nonzero_bits_general, %struct.rtx_def* (%struct.rtx_def*, i32, %struct.rtx_def*, i32, i32, i32*)* @reg_num_sign_bit_copies_general, i8 (i32, %struct.rtx_def*)* @reg_truncated_to_mode_general }, align 8, !dbg !543
@.str = private unnamed_addr constant [11 x i8] c"rtlhooks.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mode_size = external dso_local local_unnamed_addr global [87 x i8], align 16
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@reload_completed = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1461 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1474, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1475, metadata !DIExpression()), !dbg !1476
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1477
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !1478
  ret i32 %call, !dbg !1479
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1480 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1484
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !1485
  ret i32 %call, !dbg !1486
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1487 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1541, metadata !DIExpression()), !dbg !1542
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1543
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1543
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1543
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1543
  %cmp = icmp uge i8* %0, %1, !dbg !1543
  %conv1 = zext i1 %cmp to i64, !dbg !1543
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1543
  %tobool = icmp eq i64 %expval, 0, !dbg !1543
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1543

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !1543
  br label %cond.end, !dbg !1543

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1543
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1543
  %2 = load i8, i8* %0, align 1, !dbg !1543
  %conv3 = zext i8 %2 to i32, !dbg !1543
  br label %cond.end, !dbg !1543

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1543
  ret i32 %cond, !dbg !1544
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1545 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1547, metadata !DIExpression()), !dbg !1548
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1549
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1549
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1549
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1549
  %cmp = icmp uge i8* %0, %1, !dbg !1549
  %conv1 = zext i1 %cmp to i64, !dbg !1549
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1549
  %tobool = icmp eq i64 %expval, 0, !dbg !1549
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1549

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !1549
  br label %cond.end, !dbg !1549

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1549
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1549
  %2 = load i8, i8* %0, align 1, !dbg !1549
  %conv3 = zext i8 %2 to i32, !dbg !1549
  br label %cond.end, !dbg !1549

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1549
  ret i32 %cond, !dbg !1550
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1551 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1552
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1552
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1552
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1552
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1552
  %cmp = icmp uge i8* %1, %2, !dbg !1552
  %conv1 = zext i1 %cmp to i64, !dbg !1552
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1552
  %tobool = icmp eq i64 %expval, 0, !dbg !1552
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1552

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !1552
  br label %cond.end, !dbg !1552

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1552
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1552
  %3 = load i8, i8* %1, align 1, !dbg !1552
  %conv3 = zext i8 %3 to i32, !dbg !1552
  br label %cond.end, !dbg !1552

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1552
  ret i32 %cond, !dbg !1553
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1554 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1558, metadata !DIExpression()), !dbg !1559
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1560
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !1561
  ret i32 %call, !dbg !1562
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1563 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1567, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1568, metadata !DIExpression()), !dbg !1569
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1570
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1570
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1570
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1570
  %cmp = icmp uge i8* %0, %1, !dbg !1570
  %conv1 = zext i1 %cmp to i64, !dbg !1570
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1570
  %tobool = icmp eq i64 %expval, 0, !dbg !1570
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1570

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1570
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !1570
  br label %cond.end, !dbg !1570

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1570
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1570
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1570
  store i8 %conv2, i8* %0, align 1, !dbg !1570
  %conv6 = and i32 %__c, 255, !dbg !1570
  br label %cond.end, !dbg !1570

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1570
  ret i32 %cond, !dbg !1571
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1572 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1574, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1575, metadata !DIExpression()), !dbg !1576
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1577
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1577
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1577
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1577
  %cmp = icmp uge i8* %0, %1, !dbg !1577
  %conv1 = zext i1 %cmp to i64, !dbg !1577
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1577
  %tobool = icmp eq i64 %expval, 0, !dbg !1577
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1577

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1577
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !1577
  br label %cond.end, !dbg !1577

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1577
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1577
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1577
  store i8 %conv2, i8* %0, align 1, !dbg !1577
  %conv6 = and i32 %__c, 255, !dbg !1577
  br label %cond.end, !dbg !1577

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1577
  ret i32 %cond, !dbg !1578
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1579 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1581, metadata !DIExpression()), !dbg !1582
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1583
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1583
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1583
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1583
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1583
  %cmp = icmp uge i8* %1, %2, !dbg !1583
  %conv1 = zext i1 %cmp to i64, !dbg !1583
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1583
  %tobool = icmp eq i64 %expval, 0, !dbg !1583
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1583

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1583
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !1583
  br label %cond.end, !dbg !1583

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1583
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1583
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1583
  store i8 %conv4, i8* %1, align 1, !dbg !1583
  %conv6 = and i32 %__c, 255, !dbg !1583
  br label %cond.end, !dbg !1583

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1583
  ret i32 %cond, !dbg !1584
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1585 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1591, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1592, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1593, metadata !DIExpression()), !dbg !1594
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !1595
  ret i64 %call, !dbg !1596
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1597 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1599, metadata !DIExpression()), !dbg !1600
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1601
  %0 = load i32, i32* %_flags, align 8, !dbg !1601
  %and = lshr i32 %0, 4, !dbg !1601
  %and.lobit = and i32 %and, 1, !dbg !1601
  ret i32 %and.lobit, !dbg !1602
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1603 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1605, metadata !DIExpression()), !dbg !1606
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1607
  %0 = load i32, i32* %_flags, align 8, !dbg !1607
  %and = lshr i32 %0, 5, !dbg !1607
  %and.lobit = and i32 %and, 1, !dbg !1607
  ret i32 %and.lobit, !dbg !1608
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1609 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1612, metadata !DIExpression()), !dbg !1613
  %__c.off = add i32 %__c, 128, !dbg !1614
  %0 = icmp ult i32 %__c.off, 384, !dbg !1614
  br i1 %0, label %cond.true, label %cond.end, !dbg !1614

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !1615
  %1 = load i32*, i32** %call, align 8, !dbg !1616
  %idxprom = sext i32 %__c to i64, !dbg !1617
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1617
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1617
  br label %cond.end, !dbg !1618

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1618
  ret i32 %cond, !dbg !1619
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1620 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1622, metadata !DIExpression()), !dbg !1623
  %__c.off = add i32 %__c, 128, !dbg !1624
  %0 = icmp ult i32 %__c.off, 384, !dbg !1624
  br i1 %0, label %cond.true, label %cond.end, !dbg !1624

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !1625
  %1 = load i32*, i32** %call, align 8, !dbg !1626
  %idxprom = sext i32 %__c to i64, !dbg !1627
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1627
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1627
  br label %cond.end, !dbg !1628

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1628
  ret i32 %cond, !dbg !1629
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1630 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1635, metadata !DIExpression()), !dbg !1636
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !1637
  %conv = trunc i64 %call to i32, !dbg !1638
  ret i32 %conv, !dbg !1639
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1640 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1644, metadata !DIExpression()), !dbg !1645
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !1646
  ret i64 %call, !dbg !1647
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1648 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1653, metadata !DIExpression()), !dbg !1654
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !1655
  ret i64 %call, !dbg !1656
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1657 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1663, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1664, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1665, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1666, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1667, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i64 0, metadata !1668, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1669, metadata !DIExpression()), !dbg !1673
  br label %while.cond, !dbg !1674

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1675
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1673
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1669, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1668, metadata !DIExpression()), !dbg !1673
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1676
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1674

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1677
  %div = lshr i64 %add, 1, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %div, metadata !1670, metadata !DIExpression()), !dbg !1673
  %mul = mul i64 %div, %__size, !dbg !1680
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1681
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1671, metadata !DIExpression()), !dbg !1673
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !1682
  call void @llvm.dbg.value(metadata i32 %call, metadata !1672, metadata !DIExpression()), !dbg !1673
  %cmp1 = icmp slt i32 %call, 0, !dbg !1683
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1685

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1686
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1688

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1689
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1668, metadata !DIExpression()), !dbg !1673
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1673
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1673
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1669, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1668, metadata !DIExpression()), !dbg !1673
  br label %while.cond, !dbg !1674, !llvm.loop !1690

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1673
  ret i8* %retval.0, !dbg !1692
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1693 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1699, metadata !DIExpression()), !dbg !1700
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !1701
  ret double %call, !dbg !1702
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1703 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1712, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1713, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i32 %base, metadata !1714, metadata !DIExpression()), !dbg !1715
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !1716
  ret i64 %call, !dbg !1717
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1718 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1724, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1725, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i32 %base, metadata !1726, metadata !DIExpression()), !dbg !1727
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !1728
  ret i64 %call, !dbg !1729
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1730 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1741, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1742, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i32 %base, metadata !1743, metadata !DIExpression()), !dbg !1744
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !1745
  ret i64 %call, !dbg !1746
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1747 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1751, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1752, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i32 %base, metadata !1753, metadata !DIExpression()), !dbg !1754
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !1755
  ret i64 %call, !dbg !1756
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1757 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1797, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1798, metadata !DIExpression()), !dbg !1799
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !1800
  ret i32 %call, !dbg !1801
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1802 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1804, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1805, metadata !DIExpression()), !dbg !1806
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !1807
  ret i32 %call, !dbg !1808
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1809 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1813, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1814, metadata !DIExpression()), !dbg !1815
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !1816
  ret i32 %call, !dbg !1817
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1818 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1822, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1823, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1824, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1825, metadata !DIExpression()), !dbg !1826
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !1827
  ret i32 %call, !dbg !1828
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1829 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1833, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1834, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1835, metadata !DIExpression()), !dbg !1836
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1835, metadata !DIExpression(DW_OP_deref)), !dbg !1836
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !1837
  ret i32 %call, !dbg !1838
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1839 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1843, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1844, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1845, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1846, metadata !DIExpression()), !dbg !1847
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1846, metadata !DIExpression(DW_OP_deref)), !dbg !1847
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !1848
  ret i32 %call, !dbg !1849
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1850 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1874, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1875, metadata !DIExpression()), !dbg !1876
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !1877
  ret i32 %call, !dbg !1878
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1879 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1881, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1882, metadata !DIExpression()), !dbg !1883
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !1884
  ret i32 %call, !dbg !1885
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1886 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1890, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1891, metadata !DIExpression()), !dbg !1892
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !1893
  ret i32 %call, !dbg !1894
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1895 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1899, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1900, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1901, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1902, metadata !DIExpression()), !dbg !1903
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !1904
  ret i32 %call, !dbg !1905
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_lowpart_general(i32 %mode, %struct.rtx_def* %x) #3 !dbg !1906 {
entry:
  br label %tailrecurse, !dbg !1915

tailrecurse:                                      ; preds = %if.then40, %entry
  %x.tr = phi %struct.rtx_def* [ %x, %entry ], [ %call44, %if.then40 ]
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1908, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr, metadata !1909, metadata !DIExpression()), !dbg !1917
  %call = tail call %struct.rtx_def* @gen_lowpart_common(i32 %mode, %struct.rtx_def* %x.tr) #5, !dbg !1918
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1910, metadata !DIExpression()), !dbg !1917
  %tobool = icmp eq %struct.rtx_def* %call, null, !dbg !1919
  br i1 %tobool, label %if.else, label %cleanup48.loopexit, !dbg !1920

if.else:                                          ; preds = %tailrecurse
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 0, !dbg !1921
  %bf.load = load i32, i32* %0, align 8, !dbg !1921
  %bf.clear = and i32 %bf.load, 65535, !dbg !1921
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !1921
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !1922

lor.lhs.false:                                    ; preds = %if.else
  %cmp3 = icmp eq i32 %bf.clear, 39, !dbg !1923
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !1924

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  %x.tr.lcssa12 = phi %struct.rtx_def* [ %x.tr, %lor.lhs.false ], [ %x.tr, %if.else ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa12, metadata !1909, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa12, metadata !1909, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa12, metadata !1909, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa12, metadata !1909, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa12, metadata !1909, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa12, metadata !1909, metadata !DIExpression()), !dbg !1917
  %call5 = tail call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %x.tr.lcssa12) #5, !dbg !1925
  %call6 = tail call %struct.rtx_def* @gen_lowpart_common(i32 %mode, %struct.rtx_def* %call5) #5, !dbg !1927
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call6, metadata !1910, metadata !DIExpression()), !dbg !1917
  %cmp7 = icmp eq %struct.rtx_def* %call6, null, !dbg !1928
  br i1 %cmp7, label %cond.true, label %cleanup48, !dbg !1928

cond.true:                                        ; preds = %if.then4
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1928
  br label %cleanup48, !dbg !1928

if.else8:                                         ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata i32 0, metadata !1911, metadata !DIExpression()), !dbg !1929
  %cmp11 = icmp eq i32 %bf.clear, 43, !dbg !1930
  br i1 %cmp11, label %cond.end14, label %cond.true12, !dbg !1930

cond.true12:                                      ; preds = %if.else8
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1930
  %bf.load16.pre = load i32, i32* %0, align 8, !dbg !1931
  br label %cond.end14, !dbg !1930

cond.end14:                                       ; preds = %if.else8, %cond.true12
  %bf.load41 = phi i32 [ %bf.load, %if.else8 ], [ %bf.load16.pre, %cond.true12 ], !dbg !1931
  %bf.lshr = lshr i32 %bf.load41, 16, !dbg !1931
  %bf.clear17 = and i32 %bf.lshr, 255, !dbg !1931
  %idxprom = zext i32 %bf.clear17 to i64, !dbg !1931
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !1931
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1931
  %cmp19 = icmp ult i8 %1, 5, !dbg !1932
  br i1 %cmp19, label %land.lhs.true, label %if.end, !dbg !1933

land.lhs.true:                                    ; preds = %cond.end14
  %arrayidx25 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !1934
  %2 = load i8, i8* %arrayidx25, align 1, !dbg !1934
  %cmp27 = icmp eq i8 %2, 2, !dbg !1934
  br i1 %cmp27, label %land.lhs.true38, label %lor.lhs.false29, !dbg !1934

lor.lhs.false29:                                  ; preds = %land.lhs.true
  %cmp36 = icmp eq i8 %2, 3, !dbg !1934
  br i1 %cmp36, label %land.lhs.true38, label %if.end, !dbg !1935

land.lhs.true38:                                  ; preds = %lor.lhs.false29, %land.lhs.true
  %3 = load i32, i32* @reload_completed, align 4, !dbg !1936
  %tobool39 = icmp eq i32 %3, 0, !dbg !1936
  br i1 %tobool39, label %if.then40, label %if.end, !dbg !1937

if.then40:                                        ; preds = %land.lhs.true38
  %call44 = tail call %struct.rtx_def* @force_reg(i32 %bf.clear17, %struct.rtx_def* %x.tr) #5, !dbg !1938
  br label %tailrecurse, !dbg !1915

if.end:                                           ; preds = %land.lhs.true38, %lor.lhs.false29, %cond.end14
  %x.tr.lcssa13 = phi %struct.rtx_def* [ %x.tr, %land.lhs.true38 ], [ %x.tr, %lor.lhs.false29 ], [ %x.tr, %cond.end14 ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa13, metadata !1909, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa13, metadata !1909, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa13, metadata !1909, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa13, metadata !1909, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa13, metadata !1909, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa13, metadata !1909, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa13, metadata !1909, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa13, metadata !1909, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa13, metadata !1909, metadata !DIExpression()), !dbg !1917
  %call47 = tail call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %x.tr.lcssa13, i32 %mode, i64 0, i32 1, i32 1) #5, !dbg !1939
  br label %cleanup48, !dbg !1940

cleanup48.loopexit:                               ; preds = %tailrecurse
  %call.lcssa = phi %struct.rtx_def* [ %call, %tailrecurse ], !dbg !1918
  br label %cleanup48, !dbg !1941

cleanup48:                                        ; preds = %cleanup48.loopexit, %if.then4, %if.end, %cond.true
  %retval.1 = phi %struct.rtx_def* [ %call6, %if.then4 ], [ null, %cond.true ], [ %call47, %if.end ], [ %call.lcssa, %cleanup48.loopexit ], !dbg !1942
  ret %struct.rtx_def* %retval.1, !dbg !1941
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_lowpart_no_emit_general(i32 %mode, %struct.rtx_def* %x) #3 !dbg !1943 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1945, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !1946, metadata !DIExpression()), !dbg !1948
  %call = tail call %struct.rtx_def* @gen_lowpart_if_possible(i32 %mode, %struct.rtx_def* %x) #6, !dbg !1949
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1947, metadata !DIExpression()), !dbg !1948
  %tobool = icmp eq %struct.rtx_def* %call, null, !dbg !1950
  %call.x = select i1 %tobool, %struct.rtx_def* %x, %struct.rtx_def* %call, !dbg !1952
  ret %struct.rtx_def* %call.x, !dbg !1953
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @reg_nonzero_bits_general(%struct.rtx_def* %x, i32 %mode, %struct.rtx_def* %known_x, i32 %known_mode, i64 %known_ret, i64* %nonzero) #3 !dbg !1954 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !1956, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1957, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata %struct.rtx_def* %known_x, metadata !1958, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i32 %known_mode, metadata !1959, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64 %known_ret, metadata !1960, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64* %nonzero, metadata !1961, metadata !DIExpression()), !dbg !1962
  ret %struct.rtx_def* null, !dbg !1963
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @reg_num_sign_bit_copies_general(%struct.rtx_def* %x, i32 %mode, %struct.rtx_def* %known_x, i32 %known_mode, i32 %known_ret, i32* %result) #3 !dbg !1964 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !1966, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1967, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata %struct.rtx_def* %known_x, metadata !1968, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i32 %known_mode, metadata !1969, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i32 %known_ret, metadata !1970, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i32* %result, metadata !1971, metadata !DIExpression()), !dbg !1972
  ret %struct.rtx_def* null, !dbg !1973
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @reg_truncated_to_mode_general(i32 %mode, %struct.rtx_def* %x) #3 !dbg !1974 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1976, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !1977, metadata !DIExpression()), !dbg !1978
  ret i8 0, !dbg !1979
}

declare dso_local %struct.rtx_def* @gen_lowpart_common(i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @copy_to_reg(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @force_reg(i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @adjust_address_1(%struct.rtx_def*, i32, i64, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @gen_lowpart_if_possible(i32 %mode, %struct.rtx_def* %x) local_unnamed_addr #3 !dbg !1980 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1982, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !1983, metadata !DIExpression()), !dbg !1990
  %call = tail call %struct.rtx_def* @gen_lowpart_common(i32 %mode, %struct.rtx_def* %x) #5, !dbg !1991
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !1984, metadata !DIExpression()), !dbg !1990
  %tobool = icmp eq %struct.rtx_def* %call, null, !dbg !1992
  br i1 %tobool, label %if.else, label %cleanup42, !dbg !1993

if.else:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !1994
  %bf.load = load i32, i32* %0, align 8, !dbg !1994
  %bf.clear = and i32 %bf.load, 65535, !dbg !1994
  %cmp = icmp eq i32 %bf.clear, 43, !dbg !1994
  br i1 %cmp, label %if.then1, label %if.else18, !dbg !1995

if.then1:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 0, metadata !1985, metadata !DIExpression()), !dbg !1996
  %call2 = tail call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %x, i32 %mode, i64 0, i32 0, i32 1) #5, !dbg !1997
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call2, metadata !1989, metadata !DIExpression()), !dbg !1996
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call2, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1998
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !1998
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !1998
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2000
  %rt_mem = bitcast %union.rtunion_def* %2 to %struct.mem_attrs**, !dbg !2000
  %3 = load %struct.mem_attrs*, %struct.mem_attrs** %rt_mem, align 8, !dbg !2000
  %cmp6 = icmp eq %struct.mem_attrs* %3, null, !dbg !2000
  br i1 %cmp6, label %cond.end, label %cond.false, !dbg !2000

cond.false:                                       ; preds = %if.then1
  %addrspace = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %3, i64 0, i32 5, !dbg !2000
  %4 = load i8, i8* %addrspace, align 8, !dbg !2000
  br label %cond.end, !dbg !2000

cond.end:                                         ; preds = %if.then1, %cond.false
  %cond = phi i8 [ %4, %cond.false ], [ 0, %if.then1 ]
  %call14 = tail call i32 @memory_address_addr_space_p(i32 %mode, %struct.rtx_def* %1, i8 zeroext %cond) #5, !dbg !2001
  %tobool15 = icmp eq i32 %call14, 0, !dbg !2001
  %call2. = select i1 %tobool15, %struct.rtx_def* null, %struct.rtx_def* %call2, !dbg !1996
  br label %cleanup42

if.else18:                                        ; preds = %if.else
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2002
  %bf.clear20 = and i32 %bf.lshr, 255, !dbg !2002
  %cmp21 = icmp eq i32 %bf.clear20, %mode, !dbg !2004
  br i1 %cmp21, label %cleanup42, label %land.lhs.true, !dbg !2005

land.lhs.true:                                    ; preds = %if.else18
  %bf.clear25 = and i32 %bf.load, 16711680, !dbg !2006
  %cmp26 = icmp eq i32 %bf.clear25, 0, !dbg !2007
  br i1 %cmp26, label %cleanup42, label %land.lhs.true28, !dbg !2008

land.lhs.true28:                                  ; preds = %land.lhs.true
  %call35 = tail call i32 @subreg_lowpart_offset(i32 %mode, i32 %bf.clear20) #5, !dbg !2009
  %call36 = tail call zeroext i8 @validate_subreg(i32 %mode, i32 %bf.clear20, %struct.rtx_def* %x, i32 %call35) #5, !dbg !2010
  %tobool38 = icmp eq i8 %call36, 0, !dbg !2010
  br i1 %tobool38, label %cleanup42, label %if.then39, !dbg !2011

if.then39:                                        ; preds = %land.lhs.true28
  %call40 = tail call %struct.rtx_def* @gen_lowpart_SUBREG(i32 %mode, %struct.rtx_def* %x) #5, !dbg !2012
  br label %cleanup42, !dbg !2013

cleanup42:                                        ; preds = %land.lhs.true28, %land.lhs.true, %if.else18, %entry, %if.then39, %cond.end
  %retval.1 = phi %struct.rtx_def* [ %call2., %cond.end ], [ %call40, %if.then39 ], [ %call, %entry ], [ null, %land.lhs.true28 ], [ null, %land.lhs.true ], [ null, %if.else18 ], !dbg !2014
  ret %struct.rtx_def* %retval.1, !dbg !2015
}

declare dso_local i32 @memory_address_addr_space_p(i32, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #1

declare dso_local zeroext i8 @validate_subreg(i32, i32, %struct.rtx_def*, i32) local_unnamed_addr #1

declare dso_local i32 @subreg_lowpart_offset(i32, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_lowpart_SUBREG(i32, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1457, !1458, !1459}
!llvm.ident = !{!1460}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "general_rtl_hooks", scope: !2, file: !3, line: 36, type: !1456, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !531, globals: !542, nameTableKind: None)
!3 = !DIFile(filename: "rtlhooks.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !139, !158, !165, !172, !366, !509}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !135, line: 474, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138}
!137 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !140, line: 280, baseType: !7, size: 32, elements: !141)
!140 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!142 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!143 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!144 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!145 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!146 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!147 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!148 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!149 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!150 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!151 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!152 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!153 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!154 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!155 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!156 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!157 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !140, line: 1817, baseType: !7, size: 32, elements: !159)
!159 = !{!160, !161, !162, !163, !164}
!160 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !140, line: 1805, baseType: !7, size: 32, elements: !166)
!166 = !{!167, !168, !169, !170, !171}
!167 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !140, line: 39, baseType: !7, size: 32, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365}
!174 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!175 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!176 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!177 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!178 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!179 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!180 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!181 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!182 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!183 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!184 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!185 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!186 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!187 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!188 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!189 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!190 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!191 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!192 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!193 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!194 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!195 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!196 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!197 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!198 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!199 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!200 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!201 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!202 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!203 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!204 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!205 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!206 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!207 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!208 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!209 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!210 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!211 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!212 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!213 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!214 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!215 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!216 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!217 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!218 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!219 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!220 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!221 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!222 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!223 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!224 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!225 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!226 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!227 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!228 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!229 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!230 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!231 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!232 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!233 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!234 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!235 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!236 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!237 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!238 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!239 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!240 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!241 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!242 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!243 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!244 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!245 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!246 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!247 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!248 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!249 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!250 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!251 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!252 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!253 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!254 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!255 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!256 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!257 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!258 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!259 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!260 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!261 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!262 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!263 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!264 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!265 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!266 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!267 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!268 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!269 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!270 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!271 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!272 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!273 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!274 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!275 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!276 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!277 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!278 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!279 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!280 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!281 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!282 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!283 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!284 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!285 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!286 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!287 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!288 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!289 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!290 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!291 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!292 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!293 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!294 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!295 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!296 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!297 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!298 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!299 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!300 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!301 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!302 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!303 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!304 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!305 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!306 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!307 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!308 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!309 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!310 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!311 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!312 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!313 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!314 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!315 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!316 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!317 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!318 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!319 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!320 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!321 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!322 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!323 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!324 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!325 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!326 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!327 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!328 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!329 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!330 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!331 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!332 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!333 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!334 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!335 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!336 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!337 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!338 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!339 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!340 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!341 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!342 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!343 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!344 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!345 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!346 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!347 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!348 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!349 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!350 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!351 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!352 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!353 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!354 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!355 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!356 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!357 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!358 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!359 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!360 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!361 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!362 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!363 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!364 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!365 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !367, line: 45, baseType: !7, size: 32, elements: !368)
!367 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508}
!369 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!370 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!371 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!372 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!373 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!374 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!375 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!376 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!377 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!378 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!379 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!380 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!381 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!382 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!383 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!384 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!385 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!386 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!387 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!388 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!389 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!390 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!391 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!392 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!393 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!394 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!395 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!396 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!397 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!398 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!399 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!400 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!401 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!402 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!403 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!404 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!405 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!406 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!407 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!408 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!409 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!410 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!411 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!412 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!413 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!414 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!415 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!416 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!417 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!418 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!419 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!420 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!421 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!422 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!423 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!424 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!425 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!426 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!427 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!428 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!429 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!430 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!431 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!432 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!433 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!434 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!435 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!436 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!437 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!438 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!439 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!440 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!441 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!442 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!443 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!444 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!445 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!446 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!447 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!448 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!449 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!450 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!451 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!452 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!453 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!454 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!455 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!456 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!457 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!458 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!459 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!460 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!461 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!462 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!463 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!464 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!465 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!466 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!467 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!468 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!469 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!470 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!471 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!472 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!473 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!474 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!475 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!476 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!477 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!478 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!479 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!480 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!481 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!482 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!483 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!484 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!485 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!486 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!487 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!488 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!489 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!490 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!491 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!492 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!493 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!494 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!495 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!496 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!497 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!498 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!499 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!500 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!501 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!502 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!503 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!504 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!505 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!506 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!507 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!508 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!509 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !510, line: 36, baseType: !7, size: 32, elements: !511)
!510 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!511 = !{!512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530}
!512 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!513 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!514 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!515 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!516 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!517 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!518 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!519 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!520 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!521 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!522 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!523 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!524 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!525 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!526 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!527 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!528 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!529 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!530 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!531 = !{!532, !533, !534, !535, !538, !539, !366, !541, !5, !509}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!534 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !537)
!541 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!542 = !{!0, !543}
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "rtl_hooks", scope: !2, file: !3, line: 37, type: !545, isLocal: false, isDefinition: true)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_hooks", file: !367, line: 2441, size: 320, elements: !546)
!546 = !{!547, !1438, !1439, !1447, !1452}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "gen_lowpart", scope: !545, file: !367, line: 2443, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!551, !5, !551}
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !552, line: 50, baseType: !553)
!552 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !367, line: 240, size: 384, elements: !555)
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !554, file: !367, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !554, file: !367, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !554, file: !367, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !554, file: !367, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !554, file: !367, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !554, file: !367, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !554, file: !367, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !554, file: !367, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !554, file: !367, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !554, file: !367, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !554, file: !367, line: 321, baseType: !567, size: 320, offset: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !367, line: 315, size: 320, elements: !568)
!568 = !{!569, !1405, !1407, !1436, !1437}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !567, file: !367, line: 316, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 64, elements: !586)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !367, line: 183, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !367, line: 166, size: 64, elements: !573)
!573 = !{!574, !575, !576, !577, !578, !588, !589, !601, !604, !607, !1381, !1384, !1395, !1402}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !572, file: !367, line: 168, baseType: !534, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !572, file: !367, line: 169, baseType: !7, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !572, file: !367, line: 170, baseType: !539, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !572, file: !367, line: 171, baseType: !551, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !572, file: !367, line: 172, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !552, line: 53, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !367, line: 359, size: 128, elements: !582)
!582 = !{!583, !584}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !581, file: !367, line: 360, baseType: !534, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !581, file: !367, line: 361, baseType: !585, size: 64, offset: 64)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 64, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 1)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !572, file: !367, line: 173, baseType: !5, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !572, file: !367, line: 174, baseType: !590, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !367, line: 133, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 115, size: 32, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599, !600}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !591, file: !367, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !591, file: !367, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !591, file: !367, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !591, file: !367, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !591, file: !367, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !591, file: !367, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !591, file: !367, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !591, file: !367, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !572, file: !367, line: 175, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !367, line: 175, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !572, file: !367, line: 176, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !552, line: 46, flags: DIFlagFwdDecl)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !572, file: !367, line: 177, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !552, line: 56, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !140, line: 3371, size: 1792, elements: !611)
!611 = !{!612, !645, !651, !664, !683, !694, !699, !706, !712, !725, !737, !775, !780, !808, !816, !817, !822, !831, !837, !842, !846, !850, !1004, !1053, !1059, !1066, !1073, !1099, !1124, !1141, !1153, !1175, !1191, !1363}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !610, file: !140, line: 3372, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !140, line: 360, size: 64, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !613, file: !140, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !613, file: !140, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !613, file: !140, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !613, file: !140, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !613, file: !140, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !613, file: !140, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !613, file: !140, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !613, file: !140, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !613, file: !140, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !613, file: !140, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !613, file: !140, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !613, file: !140, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !613, file: !140, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !613, file: !140, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !613, file: !140, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !613, file: !140, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !613, file: !140, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !613, file: !140, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !613, file: !140, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !613, file: !140, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !613, file: !140, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !613, file: !140, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !613, file: !140, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !613, file: !140, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !613, file: !140, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !613, file: !140, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !613, file: !140, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !613, file: !140, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !613, file: !140, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !613, file: !140, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !610, file: !140, line: 3373, baseType: !646, size: 192)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !140, line: 402, size: 192, elements: !647)
!647 = !{!648, !649, !650}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !646, file: !140, line: 403, baseType: !613, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !646, file: !140, line: 404, baseType: !608, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !646, file: !140, line: 405, baseType: !608, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !610, file: !140, line: 3374, baseType: !652, size: 320)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !140, line: 1384, size: 320, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !652, file: !140, line: 1385, baseType: !646, size: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !652, file: !140, line: 1386, baseType: !656, size: 128, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !657, line: 58, baseType: !658)
!657 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !657, line: 54, size: 128, elements: !659)
!659 = !{!660, !662}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !658, file: !657, line: 56, baseType: !661, size: 64)
!661 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !658, file: !657, line: 57, baseType: !663, size: 64, offset: 64)
!663 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !610, file: !140, line: 3375, baseType: !665, size: 256)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !140, line: 1397, size: 256, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !665, file: !140, line: 1398, baseType: !646, size: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !665, file: !140, line: 1399, baseType: !669, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !671, line: 52, size: 256, elements: !672)
!671 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!672 = !{!673, !674, !675, !676, !677, !678, !679}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !670, file: !671, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !670, file: !671, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !670, file: !671, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !670, file: !671, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !670, file: !671, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !670, file: !671, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !670, file: !671, line: 62, baseType: !680, size: 192, offset: 64)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 192, elements: !681)
!681 = !{!682}
!682 = !DISubrange(count: 3)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !610, file: !140, line: 3376, baseType: !684, size: 256)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !140, line: 1408, size: 256, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !684, file: !140, line: 1409, baseType: !646, size: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !684, file: !140, line: 1410, baseType: !688, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !690, line: 27, size: 192, elements: !691)
!690 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !689, file: !690, line: 29, baseType: !656, size: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !689, file: !690, line: 30, baseType: !5, size: 32, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !610, file: !140, line: 3377, baseType: !695, size: 256)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !140, line: 1437, size: 256, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !695, file: !140, line: 1438, baseType: !646, size: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !695, file: !140, line: 1439, baseType: !608, size: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !610, file: !140, line: 3378, baseType: !700, size: 256)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !140, line: 1418, size: 256, elements: !701)
!701 = !{!702, !703, !704}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !700, file: !140, line: 1419, baseType: !646, size: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !700, file: !140, line: 1420, baseType: !534, size: 32, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !700, file: !140, line: 1421, baseType: !705, size: 8, offset: 224)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 8, elements: !586)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !610, file: !140, line: 3379, baseType: !707, size: 320)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !140, line: 1428, size: 320, elements: !708)
!708 = !{!709, !710, !711}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !707, file: !140, line: 1429, baseType: !646, size: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !707, file: !140, line: 1430, baseType: !608, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !707, file: !140, line: 1431, baseType: !608, size: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !610, file: !140, line: 3380, baseType: !713, size: 320)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !140, line: 1460, size: 320, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !713, file: !140, line: 1461, baseType: !646, size: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !713, file: !140, line: 1462, baseType: !717, size: 128, offset: 192)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !718, line: 31, size: 128, elements: !719)
!718 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!719 = !{!720, !723, !724}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !717, file: !718, line: 32, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !533)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !717, file: !718, line: 33, baseType: !7, size: 32, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !717, file: !718, line: 34, baseType: !7, size: 32, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !610, file: !140, line: 3381, baseType: !726, size: 384)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !140, line: 2507, size: 384, elements: !727)
!727 = !{!728, !729, !734, !735, !736}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !726, file: !140, line: 2508, baseType: !646, size: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !726, file: !140, line: 2509, baseType: !730, size: 32, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !731, line: 58, baseType: !732)
!731 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !733, line: 44, baseType: !7)
!733 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!734 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !726, file: !140, line: 2510, baseType: !7, size: 32, offset: 224)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !726, file: !140, line: 2511, baseType: !608, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !726, file: !140, line: 2512, baseType: !608, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !610, file: !140, line: 3382, baseType: !738, size: 896)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !140, line: 2652, size: 896, elements: !739)
!739 = !{!740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !738, file: !140, line: 2653, baseType: !726, size: 384)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !738, file: !140, line: 2654, baseType: !608, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !738, file: !140, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !738, file: !140, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !738, file: !140, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !738, file: !140, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !738, file: !140, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !738, file: !140, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !738, file: !140, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !738, file: !140, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !738, file: !140, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !738, file: !140, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !738, file: !140, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !738, file: !140, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !738, file: !140, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !738, file: !140, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !738, file: !140, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !738, file: !140, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !738, file: !140, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !738, file: !140, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !738, file: !140, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !738, file: !140, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !738, file: !140, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !738, file: !140, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !738, file: !140, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !738, file: !140, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !738, file: !140, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !738, file: !140, line: 2703, baseType: !7, size: 32, offset: 512)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !738, file: !140, line: 2705, baseType: !608, size: 64, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !738, file: !140, line: 2706, baseType: !608, size: 64, offset: 640)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !738, file: !140, line: 2707, baseType: !608, size: 64, offset: 704)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !738, file: !140, line: 2708, baseType: !608, size: 64, offset: 768)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !738, file: !140, line: 2711, baseType: !773, size: 64, offset: 832)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !140, line: 2711, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !610, file: !140, line: 3383, baseType: !776, size: 960)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !140, line: 2756, size: 960, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !776, file: !140, line: 2757, baseType: !738, size: 896)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !776, file: !140, line: 2758, baseType: !551, size: 64, offset: 896)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !610, file: !140, line: 3384, baseType: !781, size: 1472)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !140, line: 3114, size: 1472, elements: !782)
!782 = !{!783, !804, !805, !806, !807}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !781, file: !140, line: 3115, baseType: !784, size: 1216)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !140, line: 2984, size: 1216, elements: !785)
!785 = !{!786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !784, file: !140, line: 2985, baseType: !776, size: 960)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !784, file: !140, line: 2986, baseType: !608, size: 64, offset: 960)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !784, file: !140, line: 2987, baseType: !608, size: 64, offset: 1024)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !784, file: !140, line: 2988, baseType: !608, size: 64, offset: 1088)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !784, file: !140, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !784, file: !140, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !784, file: !140, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !784, file: !140, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !784, file: !140, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !784, file: !140, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !784, file: !140, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !784, file: !140, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !784, file: !140, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !784, file: !140, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !784, file: !140, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !784, file: !140, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !784, file: !140, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !784, file: !140, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !781, file: !140, line: 3117, baseType: !608, size: 64, offset: 1216)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !781, file: !140, line: 3119, baseType: !608, size: 64, offset: 1280)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !781, file: !140, line: 3121, baseType: !608, size: 64, offset: 1344)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !781, file: !140, line: 3123, baseType: !608, size: 64, offset: 1408)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !610, file: !140, line: 3385, baseType: !809, size: 1088)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !140, line: 2874, size: 1088, elements: !810)
!810 = !{!811, !812, !813}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !809, file: !140, line: 2875, baseType: !776, size: 960)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !809, file: !140, line: 2876, baseType: !551, size: 64, offset: 960)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !809, file: !140, line: 2877, baseType: !814, size: 64, offset: 1024)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !140, line: 2856, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !610, file: !140, line: 3386, baseType: !784, size: 1216)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !610, file: !140, line: 3387, baseType: !818, size: 1280)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !140, line: 3093, size: 1280, elements: !819)
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !818, file: !140, line: 3094, baseType: !784, size: 1216)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !818, file: !140, line: 3095, baseType: !814, size: 64, offset: 1216)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !610, file: !140, line: 3388, baseType: !823, size: 1216)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !140, line: 2824, size: 1216, elements: !824)
!824 = !{!825, !826, !827, !828, !829, !830}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !823, file: !140, line: 2825, baseType: !738, size: 896)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !823, file: !140, line: 2827, baseType: !608, size: 64, offset: 896)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !823, file: !140, line: 2828, baseType: !608, size: 64, offset: 960)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !823, file: !140, line: 2829, baseType: !608, size: 64, offset: 1024)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !823, file: !140, line: 2830, baseType: !608, size: 64, offset: 1088)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !823, file: !140, line: 2831, baseType: !608, size: 64, offset: 1152)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !610, file: !140, line: 3389, baseType: !832, size: 1024)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !140, line: 2850, size: 1024, elements: !833)
!833 = !{!834, !835, !836}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !832, file: !140, line: 2851, baseType: !776, size: 960)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !832, file: !140, line: 2852, baseType: !534, size: 32, offset: 960)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !832, file: !140, line: 2853, baseType: !534, size: 32, offset: 992)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !610, file: !140, line: 3390, baseType: !838, size: 1024)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !140, line: 2857, size: 1024, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !838, file: !140, line: 2858, baseType: !776, size: 960)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !838, file: !140, line: 2859, baseType: !814, size: 64, offset: 960)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !610, file: !140, line: 3391, baseType: !843, size: 960)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !140, line: 2862, size: 960, elements: !844)
!844 = !{!845}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !843, file: !140, line: 2863, baseType: !776, size: 960)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !610, file: !140, line: 3392, baseType: !847, size: 1472)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !140, line: 3304, size: 1472, elements: !848)
!848 = !{!849}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !847, file: !140, line: 3305, baseType: !781, size: 1472)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !610, file: !140, line: 3393, baseType: !851, size: 1792)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !140, line: 3248, size: 1792, elements: !852)
!852 = !{!853, !854, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !851, file: !140, line: 3249, baseType: !781, size: 1472)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !851, file: !140, line: 3251, baseType: !855, size: 64, offset: 1472)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !857, line: 463, size: 1152, elements: !858)
!857 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!858 = !{!859, !862, !865, !868, !871, !874, !926, !927, !928, !929, !930, !956, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !856, file: !857, line: 464, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !857, line: 464, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !856, file: !857, line: 467, baseType: !863, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !857, line: 467, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !856, file: !857, line: 470, baseType: !866, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !552, line: 65, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !856, file: !857, line: 473, baseType: !869, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !857, line: 166, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !856, file: !857, line: 476, baseType: !872, size: 64, offset: 256)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !857, line: 476, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !856, file: !857, line: 479, baseType: !875, size: 64, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !876, line: 144, baseType: !877)
!876 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !876, line: 100, size: 896, elements: !879)
!879 = !{!880, !888, !893, !898, !900, !903, !904, !905, !906, !907, !912, !914, !915, !920, !925}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !878, file: !876, line: 102, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !876, line: 52, baseType: !882)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !876, line: 47, baseType: !7)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !878, file: !876, line: 105, baseType: !889, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !876, line: 59, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!534, !886, !886}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !878, file: !876, line: 108, baseType: !894, size: 64, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !876, line: 63, baseType: !895)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !538}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !878, file: !876, line: 111, baseType: !899, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !878, file: !876, line: 114, baseType: !901, size: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !902, line: 46, baseType: !661)
!902 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!903 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !878, file: !876, line: 117, baseType: !901, size: 64, offset: 320)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !878, file: !876, line: 120, baseType: !901, size: 64, offset: 384)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !878, file: !876, line: 124, baseType: !7, size: 32, offset: 448)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !878, file: !876, line: 128, baseType: !7, size: 32, offset: 480)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !878, file: !876, line: 131, baseType: !908, size: 64, offset: 512)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !876, line: 75, baseType: !909)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!538, !901, !901}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !878, file: !876, line: 132, baseType: !913, size: 64, offset: 576)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !876, line: 78, baseType: !895)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !878, file: !876, line: 135, baseType: !538, size: 64, offset: 640)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !878, file: !876, line: 136, baseType: !916, size: 64, offset: 704)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !876, line: 82, baseType: !917)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!538, !538, !901, !901}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !878, file: !876, line: 137, baseType: !921, size: 64, offset: 768)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !876, line: 83, baseType: !922)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !538, !538}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !878, file: !876, line: 141, baseType: !7, size: 32, offset: 832)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !856, file: !857, line: 484, baseType: !608, size: 64, offset: 384)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !856, file: !857, line: 488, baseType: !608, size: 64, offset: 448)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !856, file: !857, line: 493, baseType: !608, size: 64, offset: 512)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !856, file: !857, line: 496, baseType: !608, size: 64, offset: 576)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !856, file: !857, line: 501, baseType: !931, size: 64, offset: 640)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !135, line: 2355, size: 576, elements: !933)
!933 = !{!934, !937, !938, !939, !940, !944, !945, !950, !951, !952, !953, !954, !955}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !932, file: !135, line: 2356, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !135, line: 2356, flags: DIFlagFwdDecl)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !932, file: !135, line: 2357, baseType: !539, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !932, file: !135, line: 2358, baseType: !534, size: 32, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !932, file: !135, line: 2359, baseType: !534, size: 32, offset: 160)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !932, file: !135, line: 2360, baseType: !941, size: 128, offset: 192)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, size: 128, elements: !942)
!942 = !{!943}
!943 = !DISubrange(count: 4)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !932, file: !135, line: 2364, baseType: !534, size: 32, offset: 320)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !932, file: !135, line: 2367, baseType: !946, size: 128, offset: 384)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !135, line: 2349, size: 128, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !946, file: !135, line: 2351, baseType: !551, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !946, file: !135, line: 2352, baseType: !663, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !932, file: !135, line: 2371, baseType: !134, size: 32, offset: 512)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !932, file: !135, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !932, file: !135, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !932, file: !135, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !932, file: !135, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !932, file: !135, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !856, file: !857, line: 504, baseType: !957, size: 64, offset: 704)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !857, line: 504, flags: DIFlagFwdDecl)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !856, file: !857, line: 507, baseType: !875, size: 64, offset: 768)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !856, file: !857, line: 510, baseType: !534, size: 32, offset: 832)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !856, file: !857, line: 513, baseType: !534, size: 32, offset: 864)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !856, file: !857, line: 516, baseType: !730, size: 32, offset: 896)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !856, file: !857, line: 519, baseType: !730, size: 32, offset: 928)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !856, file: !857, line: 522, baseType: !7, size: 32, offset: 960)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !856, file: !857, line: 523, baseType: !7, size: 32, offset: 992)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !856, file: !857, line: 528, baseType: !539, size: 64, offset: 1024)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !856, file: !857, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !856, file: !857, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !856, file: !857, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !856, file: !857, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !856, file: !857, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !856, file: !857, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !856, file: !857, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !856, file: !857, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !856, file: !857, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !856, file: !857, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !856, file: !857, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !856, file: !857, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !856, file: !857, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !856, file: !857, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !856, file: !857, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !856, file: !857, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !851, file: !140, line: 3254, baseType: !608, size: 64, offset: 1536)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !851, file: !140, line: 3257, baseType: !608, size: 64, offset: 1600)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !851, file: !140, line: 3258, baseType: !608, size: 64, offset: 1664)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !851, file: !140, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !851, file: !140, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !851, file: !140, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !851, file: !140, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !851, file: !140, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !851, file: !140, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !851, file: !140, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !851, file: !140, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !851, file: !140, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !851, file: !140, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !851, file: !140, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !851, file: !140, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !851, file: !140, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !851, file: !140, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !851, file: !140, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !851, file: !140, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !851, file: !140, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !851, file: !140, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !610, file: !140, line: 3394, baseType: !1005, size: 1344)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !140, line: 2279, size: 1344, elements: !1006)
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1032, !1033, !1034, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1005, file: !140, line: 2280, baseType: !646, size: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1005, file: !140, line: 2281, baseType: !608, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1005, file: !140, line: 2282, baseType: !608, size: 64, offset: 256)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1005, file: !140, line: 2283, baseType: !608, size: 64, offset: 320)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1005, file: !140, line: 2284, baseType: !608, size: 64, offset: 384)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1005, file: !140, line: 2285, baseType: !7, size: 32, offset: 448)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1005, file: !140, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1005, file: !140, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1005, file: !140, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1005, file: !140, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1005, file: !140, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1005, file: !140, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1005, file: !140, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1005, file: !140, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1005, file: !140, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1005, file: !140, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1005, file: !140, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1005, file: !140, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1005, file: !140, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1005, file: !140, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1005, file: !140, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1005, file: !140, line: 2305, baseType: !7, size: 32, offset: 512)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1005, file: !140, line: 2306, baseType: !1030, size: 32, offset: 544)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1031, line: 31, baseType: !534)
!1031 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1005, file: !140, line: 2307, baseType: !608, size: 64, offset: 576)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1005, file: !140, line: 2308, baseType: !608, size: 64, offset: 640)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1005, file: !140, line: 2314, baseType: !1035, size: 64, offset: 704)
!1035 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !140, line: 2309, size: 64, elements: !1036)
!1036 = !{!1037, !1038, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1035, file: !140, line: 2310, baseType: !534, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1035, file: !140, line: 2311, baseType: !539, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1035, file: !140, line: 2312, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !140, line: 2277, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1005, file: !140, line: 2315, baseType: !608, size: 64, offset: 768)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1005, file: !140, line: 2316, baseType: !608, size: 64, offset: 832)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1005, file: !140, line: 2317, baseType: !608, size: 64, offset: 896)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1005, file: !140, line: 2318, baseType: !608, size: 64, offset: 960)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1005, file: !140, line: 2319, baseType: !608, size: 64, offset: 1024)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1005, file: !140, line: 2320, baseType: !608, size: 64, offset: 1088)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1005, file: !140, line: 2321, baseType: !608, size: 64, offset: 1152)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1005, file: !140, line: 2322, baseType: !608, size: 64, offset: 1216)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1005, file: !140, line: 2324, baseType: !1051, size: 64, offset: 1280)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !140, line: 2324, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !610, file: !140, line: 3395, baseType: !1054, size: 320)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !140, line: 1469, size: 320, elements: !1055)
!1055 = !{!1056, !1057, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1054, file: !140, line: 1470, baseType: !646, size: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1054, file: !140, line: 1471, baseType: !608, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1054, file: !140, line: 1472, baseType: !608, size: 64, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !610, file: !140, line: 3396, baseType: !1060, size: 320)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !140, line: 1482, size: 320, elements: !1061)
!1061 = !{!1062, !1063, !1064}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1060, file: !140, line: 1483, baseType: !646, size: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1060, file: !140, line: 1484, baseType: !534, size: 32, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1060, file: !140, line: 1485, baseType: !1065, size: 64, offset: 256)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 64, elements: !586)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !610, file: !140, line: 3397, baseType: !1067, size: 384)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !140, line: 1829, size: 384, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1067, file: !140, line: 1830, baseType: !646, size: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1067, file: !140, line: 1831, baseType: !730, size: 32, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1067, file: !140, line: 1832, baseType: !608, size: 64, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1067, file: !140, line: 1835, baseType: !1065, size: 64, offset: 320)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !610, file: !140, line: 3398, baseType: !1074, size: 704)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !140, line: 1898, size: 704, elements: !1075)
!1075 = !{!1076, !1077, !1078, !1082, !1083, !1086}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1074, file: !140, line: 1899, baseType: !646, size: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1074, file: !140, line: 1902, baseType: !608, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1074, file: !140, line: 1905, baseType: !1079, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !552, line: 58, baseType: !1080)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !552, line: 57, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1074, file: !140, line: 1908, baseType: !7, size: 32, offset: 320)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1074, file: !140, line: 1911, baseType: !1084, size: 64, offset: 384)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !140, line: 1876, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1074, file: !140, line: 1914, baseType: !1087, size: 256, offset: 448)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !140, line: 1883, size: 256, elements: !1088)
!1088 = !{!1089, !1091, !1092, !1097}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1087, file: !140, line: 1884, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1087, file: !140, line: 1885, baseType: !1090, size: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1087, file: !140, line: 1891, baseType: !1093, size: 64, offset: 128)
!1093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !140, line: 1891, size: 64, elements: !1094)
!1094 = !{!1095, !1096}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1093, file: !140, line: 1891, baseType: !1079, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1093, file: !140, line: 1891, baseType: !608, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1087, file: !140, line: 1892, baseType: !1098, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !610, file: !140, line: 3399, baseType: !1100, size: 704)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !140, line: 2008, size: 704, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1105, !1106, !1107, !1119, !1120, !1121, !1122, !1123}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1100, file: !140, line: 2009, baseType: !646, size: 192)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1100, file: !140, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1100, file: !140, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1100, file: !140, line: 2014, baseType: !730, size: 32, offset: 224)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1100, file: !140, line: 2016, baseType: !608, size: 64, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1100, file: !140, line: 2017, baseType: !1108, size: 64, offset: 320)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !140, line: 183, baseType: !1110)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !140, line: 183, size: 128, elements: !1111)
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1110, file: !140, line: 183, baseType: !1113, size: 128)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !140, line: 182, baseType: !1114)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !140, line: 182, size: 128, elements: !1115)
!1115 = !{!1116, !1117, !1118}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1114, file: !140, line: 182, baseType: !7, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1114, file: !140, line: 182, baseType: !7, size: 32, offset: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1114, file: !140, line: 182, baseType: !1065, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1100, file: !140, line: 2019, baseType: !608, size: 64, offset: 384)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1100, file: !140, line: 2020, baseType: !608, size: 64, offset: 448)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1100, file: !140, line: 2021, baseType: !608, size: 64, offset: 512)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1100, file: !140, line: 2022, baseType: !608, size: 64, offset: 576)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1100, file: !140, line: 2023, baseType: !608, size: 64, offset: 640)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !610, file: !140, line: 3400, baseType: !1125, size: 832)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !140, line: 2430, size: 832, elements: !1126)
!1126 = !{!1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1125, file: !140, line: 2431, baseType: !646, size: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1125, file: !140, line: 2433, baseType: !608, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1125, file: !140, line: 2434, baseType: !608, size: 64, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1125, file: !140, line: 2435, baseType: !608, size: 64, offset: 320)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1125, file: !140, line: 2436, baseType: !608, size: 64, offset: 384)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1125, file: !140, line: 2437, baseType: !1108, size: 64, offset: 448)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1125, file: !140, line: 2438, baseType: !608, size: 64, offset: 512)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1125, file: !140, line: 2440, baseType: !608, size: 64, offset: 576)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1125, file: !140, line: 2441, baseType: !608, size: 64, offset: 640)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1125, file: !140, line: 2443, baseType: !1137, size: 128, offset: 704)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !140, line: 182, baseType: !1138)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !140, line: 182, size: 128, elements: !1139)
!1139 = !{!1140}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1138, file: !140, line: 182, baseType: !1113, size: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !610, file: !140, line: 3401, baseType: !1142, size: 320)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !140, line: 3327, size: 320, elements: !1143)
!1143 = !{!1144, !1145, !1152}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1142, file: !140, line: 3329, baseType: !646, size: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1142, file: !140, line: 3330, baseType: !1146, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !140, line: 3320, size: 192, elements: !1148)
!1148 = !{!1149, !1150, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1147, file: !140, line: 3322, baseType: !1146, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1147, file: !140, line: 3323, baseType: !1146, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1147, file: !140, line: 3324, baseType: !608, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1142, file: !140, line: 3331, baseType: !1146, size: 64, offset: 256)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !610, file: !140, line: 3402, baseType: !1154, size: 256)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !140, line: 1540, size: 256, elements: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1154, file: !140, line: 1541, baseType: !646, size: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1154, file: !140, line: 1542, baseType: !1158, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !140, line: 1538, baseType: !1160)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !140, line: 1538, size: 192, elements: !1161)
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1160, file: !140, line: 1538, baseType: !1163, size: 192)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !140, line: 1537, baseType: !1164)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !140, line: 1537, size: 192, elements: !1165)
!1165 = !{!1166, !1167, !1168}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1164, file: !140, line: 1537, baseType: !7, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1164, file: !140, line: 1537, baseType: !7, size: 32, offset: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1164, file: !140, line: 1537, baseType: !1169, size: 128, offset: 64)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1170, size: 128, elements: !586)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !140, line: 1535, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !140, line: 1532, size: 128, elements: !1172)
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1171, file: !140, line: 1533, baseType: !608, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1171, file: !140, line: 1534, baseType: !608, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !610, file: !140, line: 3403, baseType: !1176, size: 512)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !140, line: 1938, size: 512, elements: !1177)
!1177 = !{!1178, !1179, !1180, !1181, !1187, !1189, !1190}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1176, file: !140, line: 1939, baseType: !646, size: 192)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1176, file: !140, line: 1940, baseType: !730, size: 32, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1176, file: !140, line: 1941, baseType: !139, size: 32, offset: 224)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1176, file: !140, line: 1946, baseType: !1182, size: 32, offset: 256)
!1182 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !140, line: 1942, size: 32, elements: !1183)
!1183 = !{!1184, !1185, !1186}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1182, file: !140, line: 1943, baseType: !158, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1182, file: !140, line: 1944, baseType: !165, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1182, file: !140, line: 1945, baseType: !172, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1176, file: !140, line: 1950, baseType: !1188, size: 64, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !552, line: 66, baseType: !866)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1176, file: !140, line: 1951, baseType: !1188, size: 64, offset: 384)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1176, file: !140, line: 1953, baseType: !1065, size: 64, offset: 448)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !610, file: !140, line: 3404, baseType: !1192, size: 1664)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !140, line: 3337, size: 1664, elements: !1193)
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1192, file: !140, line: 3338, baseType: !646, size: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1192, file: !140, line: 3341, baseType: !1196, size: 1472, offset: 192)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1197, line: 410, size: 1472, elements: !1198)
!1197 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1196, file: !1197, line: 412, baseType: !534, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1196, file: !1197, line: 413, baseType: !534, size: 32, offset: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1196, file: !1197, line: 414, baseType: !534, size: 32, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1196, file: !1197, line: 415, baseType: !534, size: 32, offset: 96)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1196, file: !1197, line: 416, baseType: !534, size: 32, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1196, file: !1197, line: 417, baseType: !534, size: 32, offset: 160)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1196, file: !1197, line: 418, baseType: !533, size: 8, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1196, file: !1197, line: 419, baseType: !533, size: 8, offset: 200)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1196, file: !1197, line: 420, baseType: !1208, size: 8, offset: 208)
!1208 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1196, file: !1197, line: 421, baseType: !1208, size: 8, offset: 216)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1196, file: !1197, line: 422, baseType: !1208, size: 8, offset: 224)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1196, file: !1197, line: 423, baseType: !1208, size: 8, offset: 232)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1196, file: !1197, line: 424, baseType: !1208, size: 8, offset: 240)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1196, file: !1197, line: 425, baseType: !1208, size: 8, offset: 248)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1196, file: !1197, line: 426, baseType: !1208, size: 8, offset: 256)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1196, file: !1197, line: 427, baseType: !1208, size: 8, offset: 264)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1196, file: !1197, line: 428, baseType: !1208, size: 8, offset: 272)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1196, file: !1197, line: 429, baseType: !1208, size: 8, offset: 280)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1196, file: !1197, line: 430, baseType: !1208, size: 8, offset: 288)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1196, file: !1197, line: 431, baseType: !1208, size: 8, offset: 296)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1196, file: !1197, line: 432, baseType: !1208, size: 8, offset: 304)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1196, file: !1197, line: 433, baseType: !1208, size: 8, offset: 312)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1196, file: !1197, line: 434, baseType: !1208, size: 8, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1196, file: !1197, line: 435, baseType: !1208, size: 8, offset: 328)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1196, file: !1197, line: 436, baseType: !1208, size: 8, offset: 336)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1196, file: !1197, line: 437, baseType: !1208, size: 8, offset: 344)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1196, file: !1197, line: 438, baseType: !1208, size: 8, offset: 352)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1196, file: !1197, line: 439, baseType: !1208, size: 8, offset: 360)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1196, file: !1197, line: 440, baseType: !1208, size: 8, offset: 368)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1196, file: !1197, line: 441, baseType: !1208, size: 8, offset: 376)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1196, file: !1197, line: 442, baseType: !1208, size: 8, offset: 384)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1196, file: !1197, line: 443, baseType: !1208, size: 8, offset: 392)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1196, file: !1197, line: 444, baseType: !1208, size: 8, offset: 400)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1196, file: !1197, line: 445, baseType: !1208, size: 8, offset: 408)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1196, file: !1197, line: 446, baseType: !1208, size: 8, offset: 416)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1196, file: !1197, line: 447, baseType: !1208, size: 8, offset: 424)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1196, file: !1197, line: 448, baseType: !1208, size: 8, offset: 432)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1196, file: !1197, line: 449, baseType: !1208, size: 8, offset: 440)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1196, file: !1197, line: 450, baseType: !1208, size: 8, offset: 448)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1196, file: !1197, line: 451, baseType: !1208, size: 8, offset: 456)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1196, file: !1197, line: 452, baseType: !1208, size: 8, offset: 464)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1196, file: !1197, line: 453, baseType: !1208, size: 8, offset: 472)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1196, file: !1197, line: 454, baseType: !1208, size: 8, offset: 480)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1196, file: !1197, line: 455, baseType: !1208, size: 8, offset: 488)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1196, file: !1197, line: 456, baseType: !1208, size: 8, offset: 496)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1196, file: !1197, line: 457, baseType: !1208, size: 8, offset: 504)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1196, file: !1197, line: 458, baseType: !1208, size: 8, offset: 512)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1196, file: !1197, line: 459, baseType: !1208, size: 8, offset: 520)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1196, file: !1197, line: 460, baseType: !1208, size: 8, offset: 528)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1196, file: !1197, line: 461, baseType: !1208, size: 8, offset: 536)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1196, file: !1197, line: 462, baseType: !1208, size: 8, offset: 544)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1196, file: !1197, line: 463, baseType: !1208, size: 8, offset: 552)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1196, file: !1197, line: 464, baseType: !1208, size: 8, offset: 560)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1196, file: !1197, line: 465, baseType: !1208, size: 8, offset: 568)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1196, file: !1197, line: 466, baseType: !1208, size: 8, offset: 576)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1196, file: !1197, line: 467, baseType: !1208, size: 8, offset: 584)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1196, file: !1197, line: 468, baseType: !1208, size: 8, offset: 592)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1196, file: !1197, line: 469, baseType: !1208, size: 8, offset: 600)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1196, file: !1197, line: 470, baseType: !1208, size: 8, offset: 608)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1196, file: !1197, line: 471, baseType: !1208, size: 8, offset: 616)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1196, file: !1197, line: 472, baseType: !1208, size: 8, offset: 624)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1196, file: !1197, line: 473, baseType: !1208, size: 8, offset: 632)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1196, file: !1197, line: 474, baseType: !1208, size: 8, offset: 640)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1196, file: !1197, line: 475, baseType: !1208, size: 8, offset: 648)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1196, file: !1197, line: 476, baseType: !1208, size: 8, offset: 656)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1196, file: !1197, line: 477, baseType: !1208, size: 8, offset: 664)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1196, file: !1197, line: 478, baseType: !1208, size: 8, offset: 672)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1196, file: !1197, line: 479, baseType: !1208, size: 8, offset: 680)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1196, file: !1197, line: 480, baseType: !1208, size: 8, offset: 688)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1196, file: !1197, line: 481, baseType: !1208, size: 8, offset: 696)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1196, file: !1197, line: 482, baseType: !1208, size: 8, offset: 704)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1196, file: !1197, line: 483, baseType: !1208, size: 8, offset: 712)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1196, file: !1197, line: 484, baseType: !1208, size: 8, offset: 720)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1196, file: !1197, line: 485, baseType: !1208, size: 8, offset: 728)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1196, file: !1197, line: 486, baseType: !1208, size: 8, offset: 736)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1196, file: !1197, line: 487, baseType: !1208, size: 8, offset: 744)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1196, file: !1197, line: 488, baseType: !1208, size: 8, offset: 752)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1196, file: !1197, line: 489, baseType: !1208, size: 8, offset: 760)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1196, file: !1197, line: 490, baseType: !1208, size: 8, offset: 768)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1196, file: !1197, line: 491, baseType: !1208, size: 8, offset: 776)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1196, file: !1197, line: 492, baseType: !1208, size: 8, offset: 784)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1196, file: !1197, line: 493, baseType: !1208, size: 8, offset: 792)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1196, file: !1197, line: 494, baseType: !1208, size: 8, offset: 800)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1196, file: !1197, line: 495, baseType: !1208, size: 8, offset: 808)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1196, file: !1197, line: 496, baseType: !1208, size: 8, offset: 816)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1196, file: !1197, line: 497, baseType: !1208, size: 8, offset: 824)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1196, file: !1197, line: 498, baseType: !1208, size: 8, offset: 832)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1196, file: !1197, line: 499, baseType: !1208, size: 8, offset: 840)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1196, file: !1197, line: 500, baseType: !1208, size: 8, offset: 848)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1196, file: !1197, line: 501, baseType: !1208, size: 8, offset: 856)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1196, file: !1197, line: 502, baseType: !1208, size: 8, offset: 864)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1196, file: !1197, line: 503, baseType: !1208, size: 8, offset: 872)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1196, file: !1197, line: 504, baseType: !1208, size: 8, offset: 880)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1196, file: !1197, line: 505, baseType: !1208, size: 8, offset: 888)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1196, file: !1197, line: 506, baseType: !1208, size: 8, offset: 896)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1196, file: !1197, line: 507, baseType: !1208, size: 8, offset: 904)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1196, file: !1197, line: 508, baseType: !1208, size: 8, offset: 912)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1196, file: !1197, line: 509, baseType: !1208, size: 8, offset: 920)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1196, file: !1197, line: 510, baseType: !1208, size: 8, offset: 928)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1196, file: !1197, line: 511, baseType: !1208, size: 8, offset: 936)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1196, file: !1197, line: 512, baseType: !1208, size: 8, offset: 944)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1196, file: !1197, line: 513, baseType: !1208, size: 8, offset: 952)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1196, file: !1197, line: 514, baseType: !1208, size: 8, offset: 960)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1196, file: !1197, line: 515, baseType: !1208, size: 8, offset: 968)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1196, file: !1197, line: 516, baseType: !1208, size: 8, offset: 976)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1196, file: !1197, line: 517, baseType: !1208, size: 8, offset: 984)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1196, file: !1197, line: 518, baseType: !1208, size: 8, offset: 992)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1196, file: !1197, line: 519, baseType: !1208, size: 8, offset: 1000)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1196, file: !1197, line: 520, baseType: !1208, size: 8, offset: 1008)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1196, file: !1197, line: 521, baseType: !1208, size: 8, offset: 1016)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1196, file: !1197, line: 522, baseType: !1208, size: 8, offset: 1024)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1196, file: !1197, line: 523, baseType: !1208, size: 8, offset: 1032)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1196, file: !1197, line: 524, baseType: !1208, size: 8, offset: 1040)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1196, file: !1197, line: 525, baseType: !1208, size: 8, offset: 1048)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1196, file: !1197, line: 526, baseType: !1208, size: 8, offset: 1056)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1196, file: !1197, line: 527, baseType: !1208, size: 8, offset: 1064)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1196, file: !1197, line: 528, baseType: !1208, size: 8, offset: 1072)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1196, file: !1197, line: 529, baseType: !1208, size: 8, offset: 1080)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1196, file: !1197, line: 530, baseType: !1208, size: 8, offset: 1088)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1196, file: !1197, line: 531, baseType: !1208, size: 8, offset: 1096)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1196, file: !1197, line: 532, baseType: !1208, size: 8, offset: 1104)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1196, file: !1197, line: 533, baseType: !1208, size: 8, offset: 1112)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1196, file: !1197, line: 534, baseType: !1208, size: 8, offset: 1120)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1196, file: !1197, line: 535, baseType: !1208, size: 8, offset: 1128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1196, file: !1197, line: 536, baseType: !1208, size: 8, offset: 1136)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1196, file: !1197, line: 537, baseType: !1208, size: 8, offset: 1144)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1196, file: !1197, line: 538, baseType: !1208, size: 8, offset: 1152)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1196, file: !1197, line: 539, baseType: !1208, size: 8, offset: 1160)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1196, file: !1197, line: 540, baseType: !1208, size: 8, offset: 1168)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1196, file: !1197, line: 541, baseType: !1208, size: 8, offset: 1176)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1196, file: !1197, line: 542, baseType: !1208, size: 8, offset: 1184)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1196, file: !1197, line: 543, baseType: !1208, size: 8, offset: 1192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1196, file: !1197, line: 544, baseType: !1208, size: 8, offset: 1200)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1196, file: !1197, line: 545, baseType: !1208, size: 8, offset: 1208)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1196, file: !1197, line: 546, baseType: !1208, size: 8, offset: 1216)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1196, file: !1197, line: 547, baseType: !1208, size: 8, offset: 1224)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1196, file: !1197, line: 548, baseType: !1208, size: 8, offset: 1232)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1196, file: !1197, line: 549, baseType: !1208, size: 8, offset: 1240)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1196, file: !1197, line: 550, baseType: !1208, size: 8, offset: 1248)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1196, file: !1197, line: 551, baseType: !1208, size: 8, offset: 1256)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1196, file: !1197, line: 552, baseType: !1208, size: 8, offset: 1264)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1196, file: !1197, line: 553, baseType: !1208, size: 8, offset: 1272)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1196, file: !1197, line: 554, baseType: !1208, size: 8, offset: 1280)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1196, file: !1197, line: 555, baseType: !1208, size: 8, offset: 1288)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1196, file: !1197, line: 556, baseType: !1208, size: 8, offset: 1296)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1196, file: !1197, line: 557, baseType: !1208, size: 8, offset: 1304)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1196, file: !1197, line: 558, baseType: !1208, size: 8, offset: 1312)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1196, file: !1197, line: 559, baseType: !1208, size: 8, offset: 1320)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1196, file: !1197, line: 560, baseType: !1208, size: 8, offset: 1328)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1196, file: !1197, line: 561, baseType: !1208, size: 8, offset: 1336)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1196, file: !1197, line: 562, baseType: !1208, size: 8, offset: 1344)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1196, file: !1197, line: 563, baseType: !1208, size: 8, offset: 1352)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1196, file: !1197, line: 564, baseType: !1208, size: 8, offset: 1360)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1196, file: !1197, line: 565, baseType: !1208, size: 8, offset: 1368)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1196, file: !1197, line: 566, baseType: !1208, size: 8, offset: 1376)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1196, file: !1197, line: 567, baseType: !1208, size: 8, offset: 1384)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1196, file: !1197, line: 568, baseType: !1208, size: 8, offset: 1392)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1196, file: !1197, line: 569, baseType: !1208, size: 8, offset: 1400)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1196, file: !1197, line: 570, baseType: !1208, size: 8, offset: 1408)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1196, file: !1197, line: 571, baseType: !1208, size: 8, offset: 1416)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1196, file: !1197, line: 572, baseType: !1208, size: 8, offset: 1424)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1196, file: !1197, line: 573, baseType: !1208, size: 8, offset: 1432)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1196, file: !1197, line: 574, baseType: !1208, size: 8, offset: 1440)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !610, file: !140, line: 3405, baseType: !1364, size: 384)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !140, line: 3352, size: 384, elements: !1365)
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1364, file: !140, line: 3353, baseType: !646, size: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1364, file: !140, line: 3356, baseType: !1368, size: 192, offset: 192)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1197, line: 578, size: 192, elements: !1369)
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1368, file: !1197, line: 580, baseType: !534, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1368, file: !1197, line: 581, baseType: !534, size: 32, offset: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1368, file: !1197, line: 582, baseType: !534, size: 32, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1368, file: !1197, line: 583, baseType: !534, size: 32, offset: 96)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1368, file: !1197, line: 584, baseType: !533, size: 8, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1368, file: !1197, line: 585, baseType: !533, size: 8, offset: 136)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1368, file: !1197, line: 586, baseType: !533, size: 8, offset: 144)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1368, file: !1197, line: 587, baseType: !533, size: 8, offset: 152)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1368, file: !1197, line: 588, baseType: !533, size: 8, offset: 160)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1368, file: !1197, line: 589, baseType: !533, size: 8, offset: 168)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1368, file: !1197, line: 590, baseType: !533, size: 8, offset: 176)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !572, file: !367, line: 178, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !552, line: 110, flags: DIFlagFwdDecl)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !572, file: !367, line: 179, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !367, line: 150, baseType: !1387)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !367, line: 142, size: 320, elements: !1388)
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1387, file: !367, line: 144, baseType: !608, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1387, file: !367, line: 145, baseType: !551, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1387, file: !367, line: 146, baseType: !551, size: 64, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1387, file: !367, line: 147, baseType: !1030, size: 32, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1387, file: !367, line: 148, baseType: !7, size: 32, offset: 224)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1387, file: !367, line: 149, baseType: !533, size: 8, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !572, file: !367, line: 180, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !367, line: 162, baseType: !1398)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !367, line: 159, size: 128, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1398, file: !367, line: 160, baseType: !608, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1398, file: !367, line: 161, baseType: !663, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !572, file: !367, line: 181, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !367, line: 181, flags: DIFlagFwdDecl)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !567, file: !367, line: 317, baseType: !1406, size: 64)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 64, elements: !586)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !567, file: !367, line: 318, baseType: !1408, size: 320)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !367, line: 188, size: 320, elements: !1409)
!1409 = !{!1410, !1412, !1435}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1408, file: !367, line: 190, baseType: !1411, size: 192)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 192, elements: !681)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1408, file: !367, line: 193, baseType: !1413, size: 64, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !367, line: 206, size: 320, elements: !1415)
!1415 = !{!1416, !1420, !1421, !1422, !1434}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1414, file: !367, line: 208, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !552, line: 62, baseType: !1419)
!1419 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !552, line: 61, flags: DIFlagFwdDecl)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1414, file: !367, line: 211, baseType: !7, size: 32, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1414, file: !367, line: 214, baseType: !663, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1414, file: !367, line: 224, baseType: !1423, size: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !367, line: 202, baseType: !1425)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !367, line: 202, size: 128, elements: !1426)
!1426 = !{!1427}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1425, file: !367, line: 202, baseType: !1428, size: 128)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !367, line: 200, baseType: !1429)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !367, line: 200, size: 128, elements: !1430)
!1430 = !{!1431, !1432, !1433}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1429, file: !367, line: 200, baseType: !7, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1429, file: !367, line: 200, baseType: !7, size: 32, offset: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1429, file: !367, line: 200, baseType: !585, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1414, file: !367, line: 234, baseType: !1423, size: 64, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1408, file: !367, line: 197, baseType: !663, size: 64, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !567, file: !367, line: 319, baseType: !670, size: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !567, file: !367, line: 320, baseType: !689, size: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "gen_lowpart_no_emit", scope: !545, file: !367, line: 2444, baseType: !548, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "reg_nonzero_bits", scope: !545, file: !367, line: 2445, baseType: !1440, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!551, !1443, !5, !1443, !5, !661, !1446}
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !552, line: 51, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "reg_num_sign_bit_copies", scope: !545, file: !367, line: 2447, baseType: !1448, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!551, !1443, !5, !1443, !5, !7, !1451}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "reg_truncated_to_mode", scope: !545, file: !367, line: 2449, baseType: !1453, size: 64, offset: 256)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!533, !5, !1443}
!1456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!1457 = !{i32 2, !"Dwarf Version", i32 4}
!1458 = !{i32 2, !"Debug Info Version", i32 3}
!1459 = !{i32 1, !"wchar_size", i32 4}
!1460 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1461 = distinct !DISubprogram(name: "vprintf", scope: !1462, file: !1462, line: 39, type: !1463, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1473)
!1462 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!534, !1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !539)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1467, file: !3, baseType: !7, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1467, file: !3, baseType: !7, size: 32, offset: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1467, file: !3, baseType: !538, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1467, file: !3, baseType: !538, size: 64, offset: 128)
!1473 = !{!1474, !1475}
!1474 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1461, file: !1462, line: 39, type: !1465)
!1475 = !DILocalVariable(name: "__arg", arg: 2, scope: !1461, file: !1462, line: 39, type: !1466)
!1476 = !DILocation(line: 0, scope: !1461)
!1477 = !DILocation(line: 41, column: 20, scope: !1461)
!1478 = !DILocation(line: 41, column: 10, scope: !1461)
!1479 = !DILocation(line: 41, column: 3, scope: !1461)
!1480 = distinct !DISubprogram(name: "getchar", scope: !1462, file: !1462, line: 47, type: !1481, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1483)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!534}
!1483 = !{}
!1484 = !DILocation(line: 49, column: 16, scope: !1480)
!1485 = !DILocation(line: 49, column: 10, scope: !1480)
!1486 = !DILocation(line: 49, column: 3, scope: !1480)
!1487 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1462, file: !1462, line: 56, type: !1488, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1540)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!534, !1490}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1492, line: 7, baseType: !1493)
!1492 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1494, line: 49, size: 1728, elements: !1495)
!1494 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1495 = !{!1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1511, !1513, !1514, !1515, !1518, !1519, !1520, !1521, !1524, !1526, !1529, !1532, !1533, !1534, !1535, !1536}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1493, file: !1494, line: 51, baseType: !534, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1493, file: !1494, line: 54, baseType: !536, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1493, file: !1494, line: 55, baseType: !536, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1493, file: !1494, line: 56, baseType: !536, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1493, file: !1494, line: 57, baseType: !536, size: 64, offset: 256)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1493, file: !1494, line: 58, baseType: !536, size: 64, offset: 320)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1493, file: !1494, line: 59, baseType: !536, size: 64, offset: 384)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1493, file: !1494, line: 60, baseType: !536, size: 64, offset: 448)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1493, file: !1494, line: 61, baseType: !536, size: 64, offset: 512)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1493, file: !1494, line: 64, baseType: !536, size: 64, offset: 576)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1493, file: !1494, line: 65, baseType: !536, size: 64, offset: 640)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1493, file: !1494, line: 66, baseType: !536, size: 64, offset: 704)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1493, file: !1494, line: 68, baseType: !1509, size: 64, offset: 768)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1494, line: 36, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1493, file: !1494, line: 70, baseType: !1512, size: 64, offset: 832)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1493, file: !1494, line: 72, baseType: !534, size: 32, offset: 896)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1493, file: !1494, line: 73, baseType: !534, size: 32, offset: 928)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1493, file: !1494, line: 74, baseType: !1516, size: 64, offset: 960)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1517, line: 152, baseType: !663)
!1517 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1493, file: !1494, line: 77, baseType: !541, size: 16, offset: 1024)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1493, file: !1494, line: 78, baseType: !1208, size: 8, offset: 1040)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1493, file: !1494, line: 79, baseType: !705, size: 8, offset: 1048)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1493, file: !1494, line: 81, baseType: !1522, size: 64, offset: 1088)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1494, line: 43, baseType: null)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1493, file: !1494, line: 89, baseType: !1525, size: 64, offset: 1152)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1517, line: 153, baseType: !663)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1493, file: !1494, line: 91, baseType: !1527, size: 64, offset: 1216)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1494, line: 37, flags: DIFlagFwdDecl)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1493, file: !1494, line: 92, baseType: !1530, size: 64, offset: 1280)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1494, line: 38, flags: DIFlagFwdDecl)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1493, file: !1494, line: 93, baseType: !1512, size: 64, offset: 1344)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1493, file: !1494, line: 94, baseType: !538, size: 64, offset: 1408)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1493, file: !1494, line: 95, baseType: !901, size: 64, offset: 1472)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1493, file: !1494, line: 96, baseType: !534, size: 32, offset: 1536)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1493, file: !1494, line: 98, baseType: !1537, size: 160, offset: 1568)
!1537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 160, elements: !1538)
!1538 = !{!1539}
!1539 = !DISubrange(count: 20)
!1540 = !{!1541}
!1541 = !DILocalVariable(name: "__fp", arg: 1, scope: !1487, file: !1462, line: 56, type: !1490)
!1542 = !DILocation(line: 0, scope: !1487)
!1543 = !DILocation(line: 58, column: 10, scope: !1487)
!1544 = !DILocation(line: 58, column: 3, scope: !1487)
!1545 = distinct !DISubprogram(name: "getc_unlocked", scope: !1462, file: !1462, line: 66, type: !1488, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1546)
!1546 = !{!1547}
!1547 = !DILocalVariable(name: "__fp", arg: 1, scope: !1545, file: !1462, line: 66, type: !1490)
!1548 = !DILocation(line: 0, scope: !1545)
!1549 = !DILocation(line: 68, column: 10, scope: !1545)
!1550 = !DILocation(line: 68, column: 3, scope: !1545)
!1551 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1462, file: !1462, line: 73, type: !1481, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1483)
!1552 = !DILocation(line: 75, column: 10, scope: !1551)
!1553 = !DILocation(line: 75, column: 3, scope: !1551)
!1554 = distinct !DISubprogram(name: "putchar", scope: !1462, file: !1462, line: 82, type: !1555, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1557)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!534, !534}
!1557 = !{!1558}
!1558 = !DILocalVariable(name: "__c", arg: 1, scope: !1554, file: !1462, line: 82, type: !534)
!1559 = !DILocation(line: 0, scope: !1554)
!1560 = !DILocation(line: 84, column: 21, scope: !1554)
!1561 = !DILocation(line: 84, column: 10, scope: !1554)
!1562 = !DILocation(line: 84, column: 3, scope: !1554)
!1563 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1462, file: !1462, line: 91, type: !1564, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1566)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!534, !534, !1490}
!1566 = !{!1567, !1568}
!1567 = !DILocalVariable(name: "__c", arg: 1, scope: !1563, file: !1462, line: 91, type: !534)
!1568 = !DILocalVariable(name: "__stream", arg: 2, scope: !1563, file: !1462, line: 91, type: !1490)
!1569 = !DILocation(line: 0, scope: !1563)
!1570 = !DILocation(line: 93, column: 10, scope: !1563)
!1571 = !DILocation(line: 93, column: 3, scope: !1563)
!1572 = distinct !DISubprogram(name: "putc_unlocked", scope: !1462, file: !1462, line: 101, type: !1564, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1573)
!1573 = !{!1574, !1575}
!1574 = !DILocalVariable(name: "__c", arg: 1, scope: !1572, file: !1462, line: 101, type: !534)
!1575 = !DILocalVariable(name: "__stream", arg: 2, scope: !1572, file: !1462, line: 101, type: !1490)
!1576 = !DILocation(line: 0, scope: !1572)
!1577 = !DILocation(line: 103, column: 10, scope: !1572)
!1578 = !DILocation(line: 103, column: 3, scope: !1572)
!1579 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1462, file: !1462, line: 108, type: !1555, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1580)
!1580 = !{!1581}
!1581 = !DILocalVariable(name: "__c", arg: 1, scope: !1579, file: !1462, line: 108, type: !534)
!1582 = !DILocation(line: 0, scope: !1579)
!1583 = !DILocation(line: 110, column: 10, scope: !1579)
!1584 = !DILocation(line: 110, column: 3, scope: !1579)
!1585 = distinct !DISubprogram(name: "getline", scope: !1462, file: !1462, line: 118, type: !1586, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1590)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!1588, !535, !1589, !1490}
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1517, line: 193, baseType: !663)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!1590 = !{!1591, !1592, !1593}
!1591 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1585, file: !1462, line: 118, type: !535)
!1592 = !DILocalVariable(name: "__n", arg: 2, scope: !1585, file: !1462, line: 118, type: !1589)
!1593 = !DILocalVariable(name: "__stream", arg: 3, scope: !1585, file: !1462, line: 118, type: !1490)
!1594 = !DILocation(line: 0, scope: !1585)
!1595 = !DILocation(line: 120, column: 10, scope: !1585)
!1596 = !DILocation(line: 120, column: 3, scope: !1585)
!1597 = distinct !DISubprogram(name: "feof_unlocked", scope: !1462, file: !1462, line: 128, type: !1488, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1598)
!1598 = !{!1599}
!1599 = !DILocalVariable(name: "__stream", arg: 1, scope: !1597, file: !1462, line: 128, type: !1490)
!1600 = !DILocation(line: 0, scope: !1597)
!1601 = !DILocation(line: 130, column: 10, scope: !1597)
!1602 = !DILocation(line: 130, column: 3, scope: !1597)
!1603 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1462, file: !1462, line: 135, type: !1488, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1604)
!1604 = !{!1605}
!1605 = !DILocalVariable(name: "__stream", arg: 1, scope: !1603, file: !1462, line: 135, type: !1490)
!1606 = !DILocation(line: 0, scope: !1603)
!1607 = !DILocation(line: 137, column: 10, scope: !1603)
!1608 = !DILocation(line: 137, column: 3, scope: !1603)
!1609 = distinct !DISubprogram(name: "tolower", scope: !1610, file: !1610, line: 207, type: !1555, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1611)
!1610 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1611 = !{!1612}
!1612 = !DILocalVariable(name: "__c", arg: 1, scope: !1609, file: !1610, line: 207, type: !534)
!1613 = !DILocation(line: 0, scope: !1609)
!1614 = !DILocation(line: 209, column: 22, scope: !1609)
!1615 = !DILocation(line: 209, column: 39, scope: !1609)
!1616 = !DILocation(line: 209, column: 38, scope: !1609)
!1617 = !DILocation(line: 209, column: 37, scope: !1609)
!1618 = !DILocation(line: 209, column: 10, scope: !1609)
!1619 = !DILocation(line: 209, column: 3, scope: !1609)
!1620 = distinct !DISubprogram(name: "toupper", scope: !1610, file: !1610, line: 213, type: !1555, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1621)
!1621 = !{!1622}
!1622 = !DILocalVariable(name: "__c", arg: 1, scope: !1620, file: !1610, line: 213, type: !534)
!1623 = !DILocation(line: 0, scope: !1620)
!1624 = !DILocation(line: 215, column: 22, scope: !1620)
!1625 = !DILocation(line: 215, column: 39, scope: !1620)
!1626 = !DILocation(line: 215, column: 38, scope: !1620)
!1627 = !DILocation(line: 215, column: 37, scope: !1620)
!1628 = !DILocation(line: 215, column: 10, scope: !1620)
!1629 = !DILocation(line: 215, column: 3, scope: !1620)
!1630 = distinct !DISubprogram(name: "atoi", scope: !1631, file: !1631, line: 361, type: !1632, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1634)
!1631 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!534, !539}
!1634 = !{!1635}
!1635 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1630, file: !1631, line: 361, type: !539)
!1636 = !DILocation(line: 0, scope: !1630)
!1637 = !DILocation(line: 363, column: 16, scope: !1630)
!1638 = !DILocation(line: 363, column: 10, scope: !1630)
!1639 = !DILocation(line: 363, column: 3, scope: !1630)
!1640 = distinct !DISubprogram(name: "atol", scope: !1631, file: !1631, line: 366, type: !1641, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1643)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!663, !539}
!1643 = !{!1644}
!1644 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1640, file: !1631, line: 366, type: !539)
!1645 = !DILocation(line: 0, scope: !1640)
!1646 = !DILocation(line: 368, column: 10, scope: !1640)
!1647 = !DILocation(line: 368, column: 3, scope: !1640)
!1648 = distinct !DISubprogram(name: "atoll", scope: !1631, file: !1631, line: 373, type: !1649, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1652)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!1651, !539}
!1651 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1652 = !{!1653}
!1653 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1648, file: !1631, line: 373, type: !539)
!1654 = !DILocation(line: 0, scope: !1648)
!1655 = !DILocation(line: 375, column: 10, scope: !1648)
!1656 = !DILocation(line: 375, column: 3, scope: !1648)
!1657 = distinct !DISubprogram(name: "bsearch", scope: !1658, file: !1658, line: 20, type: !1659, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1662)
!1658 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!538, !886, !886, !901, !901, !1661}
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1631, line: 808, baseType: !890)
!1662 = !{!1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672}
!1663 = !DILocalVariable(name: "__key", arg: 1, scope: !1657, file: !1658, line: 20, type: !886)
!1664 = !DILocalVariable(name: "__base", arg: 2, scope: !1657, file: !1658, line: 20, type: !886)
!1665 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1657, file: !1658, line: 20, type: !901)
!1666 = !DILocalVariable(name: "__size", arg: 4, scope: !1657, file: !1658, line: 20, type: !901)
!1667 = !DILocalVariable(name: "__compar", arg: 5, scope: !1657, file: !1658, line: 21, type: !1661)
!1668 = !DILocalVariable(name: "__l", scope: !1657, file: !1658, line: 23, type: !901)
!1669 = !DILocalVariable(name: "__u", scope: !1657, file: !1658, line: 23, type: !901)
!1670 = !DILocalVariable(name: "__idx", scope: !1657, file: !1658, line: 23, type: !901)
!1671 = !DILocalVariable(name: "__p", scope: !1657, file: !1658, line: 24, type: !886)
!1672 = !DILocalVariable(name: "__comparison", scope: !1657, file: !1658, line: 25, type: !534)
!1673 = !DILocation(line: 0, scope: !1657)
!1674 = !DILocation(line: 29, column: 3, scope: !1657)
!1675 = !DILocation(line: 27, column: 7, scope: !1657)
!1676 = !DILocation(line: 29, column: 14, scope: !1657)
!1677 = !DILocation(line: 31, column: 20, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1657, file: !1658, line: 30, column: 5)
!1679 = !DILocation(line: 31, column: 27, scope: !1678)
!1680 = !DILocation(line: 32, column: 56, scope: !1678)
!1681 = !DILocation(line: 32, column: 47, scope: !1678)
!1682 = !DILocation(line: 33, column: 22, scope: !1678)
!1683 = !DILocation(line: 34, column: 24, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1678, file: !1658, line: 34, column: 11)
!1685 = !DILocation(line: 34, column: 11, scope: !1678)
!1686 = !DILocation(line: 36, column: 29, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1684, file: !1658, line: 36, column: 16)
!1688 = !DILocation(line: 36, column: 16, scope: !1684)
!1689 = !DILocation(line: 37, column: 14, scope: !1687)
!1690 = distinct !{!1690, !1674, !1691}
!1691 = !DILocation(line: 40, column: 5, scope: !1657)
!1692 = !DILocation(line: 43, column: 1, scope: !1657)
!1693 = distinct !DISubprogram(name: "atof", scope: !1694, file: !1694, line: 25, type: !1695, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1698)
!1694 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!1697, !539}
!1697 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1698 = !{!1699}
!1699 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1693, file: !1694, line: 25, type: !539)
!1700 = !DILocation(line: 0, scope: !1693)
!1701 = !DILocation(line: 27, column: 10, scope: !1693)
!1702 = !DILocation(line: 27, column: 3, scope: !1693)
!1703 = distinct !DISubprogram(name: "strtoimax", scope: !1704, file: !1704, line: 324, type: !1705, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1711)
!1704 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!1707, !1465, !1710, !534}
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1708, line: 101, baseType: !1709)
!1708 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1517, line: 72, baseType: !663)
!1710 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !535)
!1711 = !{!1712, !1713, !1714}
!1712 = !DILocalVariable(name: "nptr", arg: 1, scope: !1703, file: !1704, line: 324, type: !1465)
!1713 = !DILocalVariable(name: "endptr", arg: 2, scope: !1703, file: !1704, line: 324, type: !1710)
!1714 = !DILocalVariable(name: "base", arg: 3, scope: !1703, file: !1704, line: 324, type: !534)
!1715 = !DILocation(line: 0, scope: !1703)
!1716 = !DILocation(line: 327, column: 10, scope: !1703)
!1717 = !DILocation(line: 327, column: 3, scope: !1703)
!1718 = distinct !DISubprogram(name: "strtoumax", scope: !1704, file: !1704, line: 336, type: !1719, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1723)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!1721, !1465, !1710, !534}
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1708, line: 102, baseType: !1722)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1517, line: 73, baseType: !661)
!1723 = !{!1724, !1725, !1726}
!1724 = !DILocalVariable(name: "nptr", arg: 1, scope: !1718, file: !1704, line: 336, type: !1465)
!1725 = !DILocalVariable(name: "endptr", arg: 2, scope: !1718, file: !1704, line: 336, type: !1710)
!1726 = !DILocalVariable(name: "base", arg: 3, scope: !1718, file: !1704, line: 336, type: !534)
!1727 = !DILocation(line: 0, scope: !1718)
!1728 = !DILocation(line: 339, column: 10, scope: !1718)
!1729 = !DILocation(line: 339, column: 3, scope: !1718)
!1730 = distinct !DISubprogram(name: "wcstoimax", scope: !1704, file: !1704, line: 348, type: !1731, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1740)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!1707, !1733, !1737, !534}
!1733 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1734)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1736)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1704, line: 34, baseType: !534)
!1737 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1738)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1740 = !{!1741, !1742, !1743}
!1741 = !DILocalVariable(name: "nptr", arg: 1, scope: !1730, file: !1704, line: 348, type: !1733)
!1742 = !DILocalVariable(name: "endptr", arg: 2, scope: !1730, file: !1704, line: 348, type: !1737)
!1743 = !DILocalVariable(name: "base", arg: 3, scope: !1730, file: !1704, line: 348, type: !534)
!1744 = !DILocation(line: 0, scope: !1730)
!1745 = !DILocation(line: 351, column: 10, scope: !1730)
!1746 = !DILocation(line: 351, column: 3, scope: !1730)
!1747 = distinct !DISubprogram(name: "wcstoumax", scope: !1704, file: !1704, line: 362, type: !1748, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1750)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!1721, !1733, !1737, !534}
!1750 = !{!1751, !1752, !1753}
!1751 = !DILocalVariable(name: "nptr", arg: 1, scope: !1747, file: !1704, line: 362, type: !1733)
!1752 = !DILocalVariable(name: "endptr", arg: 2, scope: !1747, file: !1704, line: 362, type: !1737)
!1753 = !DILocalVariable(name: "base", arg: 3, scope: !1747, file: !1704, line: 362, type: !534)
!1754 = !DILocation(line: 0, scope: !1747)
!1755 = !DILocation(line: 365, column: 10, scope: !1747)
!1756 = !DILocation(line: 365, column: 3, scope: !1747)
!1757 = distinct !DISubprogram(name: "stat", scope: !1758, file: !1758, line: 453, type: !1759, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1796)
!1758 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!534, !539, !1761}
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1763, line: 46, size: 1152, elements: !1764)
!1763 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1764 = !{!1765, !1767, !1769, !1771, !1773, !1775, !1777, !1778, !1779, !1780, !1782, !1784, !1792, !1793, !1794}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1762, file: !1763, line: 48, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1517, line: 145, baseType: !661)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1762, file: !1763, line: 53, baseType: !1768, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1517, line: 148, baseType: !661)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1762, file: !1763, line: 61, baseType: !1770, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1517, line: 151, baseType: !661)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1762, file: !1763, line: 62, baseType: !1772, size: 32, offset: 192)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1517, line: 150, baseType: !7)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1762, file: !1763, line: 64, baseType: !1774, size: 32, offset: 224)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1517, line: 146, baseType: !7)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1762, file: !1763, line: 65, baseType: !1776, size: 32, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1517, line: 147, baseType: !7)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1762, file: !1763, line: 67, baseType: !534, size: 32, offset: 288)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1762, file: !1763, line: 69, baseType: !1766, size: 64, offset: 320)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1762, file: !1763, line: 74, baseType: !1516, size: 64, offset: 384)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1762, file: !1763, line: 78, baseType: !1781, size: 64, offset: 448)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1517, line: 174, baseType: !663)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1762, file: !1763, line: 80, baseType: !1783, size: 64, offset: 512)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1517, line: 179, baseType: !663)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1762, file: !1763, line: 91, baseType: !1785, size: 128, offset: 576)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1786, line: 10, size: 128, elements: !1787)
!1786 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1787 = !{!1788, !1790}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1785, file: !1786, line: 12, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1517, line: 160, baseType: !663)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1785, file: !1786, line: 16, baseType: !1791, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1517, line: 196, baseType: !663)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1762, file: !1763, line: 92, baseType: !1785, size: 128, offset: 704)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1762, file: !1763, line: 93, baseType: !1785, size: 128, offset: 832)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1762, file: !1763, line: 106, baseType: !1795, size: 192, offset: 960)
!1795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1791, size: 192, elements: !681)
!1796 = !{!1797, !1798}
!1797 = !DILocalVariable(name: "__path", arg: 1, scope: !1757, file: !1758, line: 453, type: !539)
!1798 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1757, file: !1758, line: 453, type: !1761)
!1799 = !DILocation(line: 0, scope: !1757)
!1800 = !DILocation(line: 455, column: 10, scope: !1757)
!1801 = !DILocation(line: 455, column: 3, scope: !1757)
!1802 = distinct !DISubprogram(name: "lstat", scope: !1758, file: !1758, line: 460, type: !1759, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1803)
!1803 = !{!1804, !1805}
!1804 = !DILocalVariable(name: "__path", arg: 1, scope: !1802, file: !1758, line: 460, type: !539)
!1805 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1802, file: !1758, line: 460, type: !1761)
!1806 = !DILocation(line: 0, scope: !1802)
!1807 = !DILocation(line: 462, column: 10, scope: !1802)
!1808 = !DILocation(line: 462, column: 3, scope: !1802)
!1809 = distinct !DISubprogram(name: "fstat", scope: !1758, file: !1758, line: 467, type: !1810, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1812)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!534, !534, !1761}
!1812 = !{!1813, !1814}
!1813 = !DILocalVariable(name: "__fd", arg: 1, scope: !1809, file: !1758, line: 467, type: !534)
!1814 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1809, file: !1758, line: 467, type: !1761)
!1815 = !DILocation(line: 0, scope: !1809)
!1816 = !DILocation(line: 469, column: 10, scope: !1809)
!1817 = !DILocation(line: 469, column: 3, scope: !1809)
!1818 = distinct !DISubprogram(name: "fstatat", scope: !1758, file: !1758, line: 474, type: !1819, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1821)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!534, !534, !539, !1761, !534}
!1821 = !{!1822, !1823, !1824, !1825}
!1822 = !DILocalVariable(name: "__fd", arg: 1, scope: !1818, file: !1758, line: 474, type: !534)
!1823 = !DILocalVariable(name: "__filename", arg: 2, scope: !1818, file: !1758, line: 474, type: !539)
!1824 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1818, file: !1758, line: 474, type: !1761)
!1825 = !DILocalVariable(name: "__flag", arg: 4, scope: !1818, file: !1758, line: 474, type: !534)
!1826 = !DILocation(line: 0, scope: !1818)
!1827 = !DILocation(line: 477, column: 10, scope: !1818)
!1828 = !DILocation(line: 477, column: 3, scope: !1818)
!1829 = distinct !DISubprogram(name: "mknod", scope: !1758, file: !1758, line: 483, type: !1830, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1832)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!534, !539, !1772, !1766}
!1832 = !{!1833, !1834, !1835}
!1833 = !DILocalVariable(name: "__path", arg: 1, scope: !1829, file: !1758, line: 483, type: !539)
!1834 = !DILocalVariable(name: "__mode", arg: 2, scope: !1829, file: !1758, line: 483, type: !1772)
!1835 = !DILocalVariable(name: "__dev", arg: 3, scope: !1829, file: !1758, line: 483, type: !1766)
!1836 = !DILocation(line: 0, scope: !1829)
!1837 = !DILocation(line: 485, column: 10, scope: !1829)
!1838 = !DILocation(line: 485, column: 3, scope: !1829)
!1839 = distinct !DISubprogram(name: "mknodat", scope: !1758, file: !1758, line: 491, type: !1840, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1842)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!534, !534, !539, !1772, !1766}
!1842 = !{!1843, !1844, !1845, !1846}
!1843 = !DILocalVariable(name: "__fd", arg: 1, scope: !1839, file: !1758, line: 491, type: !534)
!1844 = !DILocalVariable(name: "__path", arg: 2, scope: !1839, file: !1758, line: 491, type: !539)
!1845 = !DILocalVariable(name: "__mode", arg: 3, scope: !1839, file: !1758, line: 491, type: !1772)
!1846 = !DILocalVariable(name: "__dev", arg: 4, scope: !1839, file: !1758, line: 491, type: !1766)
!1847 = !DILocation(line: 0, scope: !1839)
!1848 = !DILocation(line: 494, column: 10, scope: !1839)
!1849 = !DILocation(line: 494, column: 3, scope: !1839)
!1850 = distinct !DISubprogram(name: "stat64", scope: !1758, file: !1758, line: 502, type: !1851, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1873)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!534, !539, !1853}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1763, line: 119, size: 1152, elements: !1855)
!1855 = !{!1856, !1857, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1869, !1870, !1871, !1872}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1854, file: !1763, line: 121, baseType: !1766, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1854, file: !1763, line: 123, baseType: !1858, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1517, line: 149, baseType: !661)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1854, file: !1763, line: 124, baseType: !1770, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1854, file: !1763, line: 125, baseType: !1772, size: 32, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1854, file: !1763, line: 132, baseType: !1774, size: 32, offset: 224)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1854, file: !1763, line: 133, baseType: !1776, size: 32, offset: 256)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1854, file: !1763, line: 135, baseType: !534, size: 32, offset: 288)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1854, file: !1763, line: 136, baseType: !1766, size: 64, offset: 320)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1854, file: !1763, line: 137, baseType: !1516, size: 64, offset: 384)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1854, file: !1763, line: 143, baseType: !1781, size: 64, offset: 448)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1854, file: !1763, line: 144, baseType: !1868, size: 64, offset: 512)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1517, line: 180, baseType: !663)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1854, file: !1763, line: 152, baseType: !1785, size: 128, offset: 576)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1854, file: !1763, line: 153, baseType: !1785, size: 128, offset: 704)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1854, file: !1763, line: 154, baseType: !1785, size: 128, offset: 832)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1854, file: !1763, line: 164, baseType: !1795, size: 192, offset: 960)
!1873 = !{!1874, !1875}
!1874 = !DILocalVariable(name: "__path", arg: 1, scope: !1850, file: !1758, line: 502, type: !539)
!1875 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1850, file: !1758, line: 502, type: !1853)
!1876 = !DILocation(line: 0, scope: !1850)
!1877 = !DILocation(line: 504, column: 10, scope: !1850)
!1878 = !DILocation(line: 504, column: 3, scope: !1850)
!1879 = distinct !DISubprogram(name: "lstat64", scope: !1758, file: !1758, line: 509, type: !1851, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1880)
!1880 = !{!1881, !1882}
!1881 = !DILocalVariable(name: "__path", arg: 1, scope: !1879, file: !1758, line: 509, type: !539)
!1882 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1879, file: !1758, line: 509, type: !1853)
!1883 = !DILocation(line: 0, scope: !1879)
!1884 = !DILocation(line: 511, column: 10, scope: !1879)
!1885 = !DILocation(line: 511, column: 3, scope: !1879)
!1886 = distinct !DISubprogram(name: "fstat64", scope: !1758, file: !1758, line: 516, type: !1887, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1889)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!534, !534, !1853}
!1889 = !{!1890, !1891}
!1890 = !DILocalVariable(name: "__fd", arg: 1, scope: !1886, file: !1758, line: 516, type: !534)
!1891 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1886, file: !1758, line: 516, type: !1853)
!1892 = !DILocation(line: 0, scope: !1886)
!1893 = !DILocation(line: 518, column: 10, scope: !1886)
!1894 = !DILocation(line: 518, column: 3, scope: !1886)
!1895 = distinct !DISubprogram(name: "fstatat64", scope: !1758, file: !1758, line: 523, type: !1896, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1898)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!534, !534, !539, !1853, !534}
!1898 = !{!1899, !1900, !1901, !1902}
!1899 = !DILocalVariable(name: "__fd", arg: 1, scope: !1895, file: !1758, line: 523, type: !534)
!1900 = !DILocalVariable(name: "__filename", arg: 2, scope: !1895, file: !1758, line: 523, type: !539)
!1901 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1895, file: !1758, line: 523, type: !1853)
!1902 = !DILocalVariable(name: "__flag", arg: 4, scope: !1895, file: !1758, line: 523, type: !534)
!1903 = !DILocation(line: 0, scope: !1895)
!1904 = !DILocation(line: 526, column: 10, scope: !1895)
!1905 = !DILocation(line: 526, column: 3, scope: !1895)
!1906 = distinct !DISubprogram(name: "gen_lowpart_general", scope: !3, file: !3, line: 40, type: !549, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1907)
!1907 = !{!1908, !1909, !1910, !1911}
!1908 = !DILocalVariable(name: "mode", arg: 1, scope: !1906, file: !3, line: 40, type: !5)
!1909 = !DILocalVariable(name: "x", arg: 2, scope: !1906, file: !3, line: 40, type: !551)
!1910 = !DILocalVariable(name: "result", scope: !1906, file: !3, line: 42, type: !551)
!1911 = !DILocalVariable(name: "offset", scope: !1912, file: !3, line: 56, type: !534)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 55, column: 5)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 48, column: 12)
!1914 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 44, column: 7)
!1915 = !DILocation(line: 67, column: 9, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 62, column: 11)
!1917 = !DILocation(line: 0, scope: !1906)
!1918 = !DILocation(line: 42, column: 16, scope: !1906)
!1919 = !DILocation(line: 44, column: 7, scope: !1914)
!1920 = !DILocation(line: 44, column: 7, scope: !1906)
!1921 = !DILocation(line: 48, column: 12, scope: !1913)
!1922 = !DILocation(line: 48, column: 22, scope: !1913)
!1923 = !DILocation(line: 48, column: 38, scope: !1913)
!1924 = !DILocation(line: 48, column: 12, scope: !1914)
!1925 = !DILocation(line: 50, column: 42, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 49, column: 5)
!1927 = !DILocation(line: 50, column: 16, scope: !1926)
!1928 = !DILocation(line: 51, column: 7, scope: !1926)
!1929 = !DILocation(line: 0, scope: !1912)
!1930 = !DILocation(line: 59, column: 7, scope: !1912)
!1931 = !DILocation(line: 62, column: 11, scope: !1916)
!1932 = !DILocation(line: 62, column: 40, scope: !1916)
!1933 = !DILocation(line: 63, column: 4, scope: !1916)
!1934 = !DILocation(line: 63, column: 7, scope: !1916)
!1935 = !DILocation(line: 66, column: 4, scope: !1916)
!1936 = !DILocation(line: 66, column: 8, scope: !1916)
!1937 = !DILocation(line: 62, column: 11, scope: !1912)
!1938 = !DILocation(line: 67, column: 36, scope: !1916)
!1939 = !DILocation(line: 79, column: 14, scope: !1912)
!1940 = !DILocation(line: 79, column: 7, scope: !1912)
!1941 = !DILocation(line: 81, column: 1, scope: !1906)
!1942 = !DILocation(line: 0, scope: !1914)
!1943 = distinct !DISubprogram(name: "gen_lowpart_no_emit_general", scope: !3, file: !3, line: 86, type: !549, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1944)
!1944 = !{!1945, !1946, !1947}
!1945 = !DILocalVariable(name: "mode", arg: 1, scope: !1943, file: !3, line: 86, type: !5)
!1946 = !DILocalVariable(name: "x", arg: 2, scope: !1943, file: !3, line: 86, type: !551)
!1947 = !DILocalVariable(name: "result", scope: !1943, file: !3, line: 88, type: !551)
!1948 = !DILocation(line: 0, scope: !1943)
!1949 = !DILocation(line: 88, column: 16, scope: !1943)
!1950 = !DILocation(line: 89, column: 7, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 89, column: 7)
!1952 = !DILocation(line: 0, scope: !1951)
!1953 = !DILocation(line: 93, column: 1, scope: !1943)
!1954 = distinct !DISubprogram(name: "reg_nonzero_bits_general", scope: !3, file: !3, line: 107, type: !1441, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!1955 = !{!1956, !1957, !1958, !1959, !1960, !1961}
!1956 = !DILocalVariable(name: "x", arg: 1, scope: !1954, file: !3, line: 107, type: !1443)
!1957 = !DILocalVariable(name: "mode", arg: 2, scope: !1954, file: !3, line: 108, type: !5)
!1958 = !DILocalVariable(name: "known_x", arg: 3, scope: !1954, file: !3, line: 109, type: !1443)
!1959 = !DILocalVariable(name: "known_mode", arg: 4, scope: !1954, file: !3, line: 110, type: !5)
!1960 = !DILocalVariable(name: "known_ret", arg: 5, scope: !1954, file: !3, line: 111, type: !661)
!1961 = !DILocalVariable(name: "nonzero", arg: 6, scope: !1954, file: !3, line: 112, type: !1446)
!1962 = !DILocation(line: 0, scope: !1954)
!1963 = !DILocation(line: 114, column: 3, scope: !1954)
!1964 = distinct !DISubprogram(name: "reg_num_sign_bit_copies_general", scope: !3, file: !3, line: 96, type: !1449, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1965)
!1965 = !{!1966, !1967, !1968, !1969, !1970, !1971}
!1966 = !DILocalVariable(name: "x", arg: 1, scope: !1964, file: !3, line: 96, type: !1443)
!1967 = !DILocalVariable(name: "mode", arg: 2, scope: !1964, file: !3, line: 97, type: !5)
!1968 = !DILocalVariable(name: "known_x", arg: 3, scope: !1964, file: !3, line: 98, type: !1443)
!1969 = !DILocalVariable(name: "known_mode", arg: 4, scope: !1964, file: !3, line: 99, type: !5)
!1970 = !DILocalVariable(name: "known_ret", arg: 5, scope: !1964, file: !3, line: 100, type: !7)
!1971 = !DILocalVariable(name: "result", arg: 6, scope: !1964, file: !3, line: 101, type: !1451)
!1972 = !DILocation(line: 0, scope: !1964)
!1973 = !DILocation(line: 103, column: 3, scope: !1964)
!1974 = distinct !DISubprogram(name: "reg_truncated_to_mode_general", scope: !3, file: !3, line: 118, type: !1454, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1975)
!1975 = !{!1976, !1977}
!1976 = !DILocalVariable(name: "mode", arg: 1, scope: !1974, file: !3, line: 118, type: !5)
!1977 = !DILocalVariable(name: "x", arg: 2, scope: !1974, file: !3, line: 119, type: !1443)
!1978 = !DILocation(line: 0, scope: !1974)
!1979 = !DILocation(line: 121, column: 3, scope: !1974)
!1980 = distinct !DISubprogram(name: "gen_lowpart_if_possible", scope: !3, file: !3, line: 134, type: !549, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1981)
!1981 = !{!1982, !1983, !1984, !1985, !1989}
!1982 = !DILocalVariable(name: "mode", arg: 1, scope: !1980, file: !3, line: 134, type: !5)
!1983 = !DILocalVariable(name: "x", arg: 2, scope: !1980, file: !3, line: 134, type: !551)
!1984 = !DILocalVariable(name: "result", scope: !1980, file: !3, line: 136, type: !551)
!1985 = !DILocalVariable(name: "offset", scope: !1986, file: !3, line: 143, type: !534)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 141, column: 5)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 140, column: 12)
!1988 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 138, column: 7)
!1989 = !DILocalVariable(name: "new_rtx", scope: !1986, file: !3, line: 144, type: !551)
!1990 = !DILocation(line: 0, scope: !1980)
!1991 = !DILocation(line: 136, column: 16, scope: !1980)
!1992 = !DILocation(line: 138, column: 7, scope: !1988)
!1993 = !DILocation(line: 138, column: 7, scope: !1980)
!1994 = !DILocation(line: 140, column: 12, scope: !1987)
!1995 = !DILocation(line: 140, column: 12, scope: !1988)
!1996 = !DILocation(line: 0, scope: !1986)
!1997 = !DILocation(line: 155, column: 17, scope: !1986)
!1998 = !DILocation(line: 156, column: 48, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 156, column: 11)
!2000 = !DILocation(line: 157, column: 7, scope: !1999)
!2001 = !DILocation(line: 156, column: 13, scope: !1999)
!2002 = !DILocation(line: 162, column: 20, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 162, column: 12)
!2004 = !DILocation(line: 162, column: 17, scope: !2003)
!2005 = !DILocation(line: 162, column: 33, scope: !2003)
!2006 = !DILocation(line: 162, column: 36, scope: !2003)
!2007 = !DILocation(line: 162, column: 49, scope: !2003)
!2008 = !DILocation(line: 163, column: 5, scope: !2003)
!2009 = !DILocation(line: 164, column: 12, scope: !2003)
!2010 = !DILocation(line: 163, column: 8, scope: !2003)
!2011 = !DILocation(line: 162, column: 12, scope: !1987)
!2012 = !DILocation(line: 165, column: 12, scope: !2003)
!2013 = !DILocation(line: 165, column: 5, scope: !2003)
!2014 = !DILocation(line: 0, scope: !1988)
!2015 = !DILocation(line: 168, column: 1, scope: !1980)
