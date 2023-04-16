; ModuleID = 'tree-iterator.bc'
source_filename = "tree-iterator.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.rtx_def = type opaque
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
%struct.gimple_seq_d = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_d* }
%struct.gimple_seq_node_d = type { %union.gimple_statement_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d* }
%union.gimple_statement_d = type { %struct.gimple_statement_phi }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, %union.tree_node*, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, %struct.basic_block_def*, %union.tree_node* }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, %union.tree_node*, i32 }
%struct.ssa_use_operand_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %union.anon, %union.tree_node** }
%union.anon = type { %union.gimple_statement_d* }
%struct.gimple_df = type opaque
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.tree_statement_list_node = type { %struct.tree_statement_list_node*, %struct.tree_statement_list_node*, %union.tree_node* }
%struct.tree_stmt_iterator = type { %struct.tree_statement_list_node*, %union.tree_node* }
%struct.tree_statement_list = type { %struct.tree_common, %struct.tree_statement_list_node*, %struct.tree_statement_list_node* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stmt_list_cache = internal global %union.tree_node* null, align 8, !dbg !0
@.str = private unnamed_addr constant [16 x i8] c"tree-iterator.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@gt_ggc_rd_gt_tree_iterator_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%union.tree_node** @stmt_list_cache to i8*), i64 1, i64 8, void (i8*)* null, void (i8*)* null }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !1325

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1343 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1356, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1357, metadata !DIExpression()), !dbg !1358
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1359
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !1360
  ret i32 %call, !dbg !1361
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1362 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1366
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !1367
  ret i32 %call, !dbg !1368
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1369 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1424, metadata !DIExpression()), !dbg !1425
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1426
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1426
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1426
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1426
  %cmp = icmp uge i8* %0, %1, !dbg !1426
  %conv1 = zext i1 %cmp to i64, !dbg !1426
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1426
  %tobool = icmp eq i64 %expval, 0, !dbg !1426
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1426

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !1426
  br label %cond.end, !dbg !1426

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1426
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1426
  %2 = load i8, i8* %0, align 1, !dbg !1426
  %conv3 = zext i8 %2 to i32, !dbg !1426
  br label %cond.end, !dbg !1426

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1426
  ret i32 %cond, !dbg !1427
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1428 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1430, metadata !DIExpression()), !dbg !1431
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1432
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1432
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1432
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1432
  %cmp = icmp uge i8* %0, %1, !dbg !1432
  %conv1 = zext i1 %cmp to i64, !dbg !1432
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1432
  %tobool = icmp eq i64 %expval, 0, !dbg !1432
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1432

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !1432
  br label %cond.end, !dbg !1432

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1432
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1432
  %2 = load i8, i8* %0, align 1, !dbg !1432
  %conv3 = zext i8 %2 to i32, !dbg !1432
  br label %cond.end, !dbg !1432

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1432
  ret i32 %cond, !dbg !1433
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1434 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1435
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1435
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1435
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1435
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1435
  %cmp = icmp uge i8* %1, %2, !dbg !1435
  %conv1 = zext i1 %cmp to i64, !dbg !1435
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1435
  %tobool = icmp eq i64 %expval, 0, !dbg !1435
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1435

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !1435
  br label %cond.end, !dbg !1435

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1435
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1435
  %3 = load i8, i8* %1, align 1, !dbg !1435
  %conv3 = zext i8 %3 to i32, !dbg !1435
  br label %cond.end, !dbg !1435

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1435
  ret i32 %cond, !dbg !1436
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1437 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1441, metadata !DIExpression()), !dbg !1442
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1443
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !1444
  ret i32 %call, !dbg !1445
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1446 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1450, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1451, metadata !DIExpression()), !dbg !1452
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1453
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1453
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1453
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1453
  %cmp = icmp uge i8* %0, %1, !dbg !1453
  %conv1 = zext i1 %cmp to i64, !dbg !1453
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1453
  %tobool = icmp eq i64 %expval, 0, !dbg !1453
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1453

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1453
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !1453
  br label %cond.end, !dbg !1453

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1453
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1453
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1453
  store i8 %conv2, i8* %0, align 1, !dbg !1453
  %conv6 = and i32 %__c, 255, !dbg !1453
  br label %cond.end, !dbg !1453

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1453
  ret i32 %cond, !dbg !1454
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1455 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1457, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1458, metadata !DIExpression()), !dbg !1459
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1460
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1460
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1460
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1460
  %cmp = icmp uge i8* %0, %1, !dbg !1460
  %conv1 = zext i1 %cmp to i64, !dbg !1460
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1460
  %tobool = icmp eq i64 %expval, 0, !dbg !1460
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1460

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1460
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !1460
  br label %cond.end, !dbg !1460

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1460
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1460
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1460
  store i8 %conv2, i8* %0, align 1, !dbg !1460
  %conv6 = and i32 %__c, 255, !dbg !1460
  br label %cond.end, !dbg !1460

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1460
  ret i32 %cond, !dbg !1461
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1462 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1464, metadata !DIExpression()), !dbg !1465
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1466
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1466
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1466
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1466
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1466
  %cmp = icmp uge i8* %1, %2, !dbg !1466
  %conv1 = zext i1 %cmp to i64, !dbg !1466
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1466
  %tobool = icmp eq i64 %expval, 0, !dbg !1466
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1466

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1466
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !1466
  br label %cond.end, !dbg !1466

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1466
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1466
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1466
  store i8 %conv4, i8* %1, align 1, !dbg !1466
  %conv6 = and i32 %__c, 255, !dbg !1466
  br label %cond.end, !dbg !1466

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1466
  ret i32 %cond, !dbg !1467
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1468 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1474, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1475, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1476, metadata !DIExpression()), !dbg !1477
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !1478
  ret i64 %call, !dbg !1479
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1480 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1482, metadata !DIExpression()), !dbg !1483
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1484
  %0 = load i32, i32* %_flags, align 8, !dbg !1484
  %and = lshr i32 %0, 4, !dbg !1484
  %and.lobit = and i32 %and, 1, !dbg !1484
  ret i32 %and.lobit, !dbg !1485
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1486 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1488, metadata !DIExpression()), !dbg !1489
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1490
  %0 = load i32, i32* %_flags, align 8, !dbg !1490
  %and = lshr i32 %0, 5, !dbg !1490
  %and.lobit = and i32 %and, 1, !dbg !1490
  ret i32 %and.lobit, !dbg !1491
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1492 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1495, metadata !DIExpression()), !dbg !1496
  %__c.off = add i32 %__c, 128, !dbg !1497
  %0 = icmp ult i32 %__c.off, 384, !dbg !1497
  br i1 %0, label %cond.true, label %cond.end, !dbg !1497

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !1498
  %1 = load i32*, i32** %call, align 8, !dbg !1499
  %idxprom = sext i32 %__c to i64, !dbg !1500
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1500
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1500
  br label %cond.end, !dbg !1501

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1501
  ret i32 %cond, !dbg !1502
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1503 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1505, metadata !DIExpression()), !dbg !1506
  %__c.off = add i32 %__c, 128, !dbg !1507
  %0 = icmp ult i32 %__c.off, 384, !dbg !1507
  br i1 %0, label %cond.true, label %cond.end, !dbg !1507

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !1508
  %1 = load i32*, i32** %call, align 8, !dbg !1509
  %idxprom = sext i32 %__c to i64, !dbg !1510
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1510
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1510
  br label %cond.end, !dbg !1511

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1511
  ret i32 %cond, !dbg !1512
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1513 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1518, metadata !DIExpression()), !dbg !1519
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !1520
  %conv = trunc i64 %call to i32, !dbg !1521
  ret i32 %conv, !dbg !1522
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1523 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1527, metadata !DIExpression()), !dbg !1528
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !1529
  ret i64 %call, !dbg !1530
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1531 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1536, metadata !DIExpression()), !dbg !1537
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !1538
  ret i64 %call, !dbg !1539
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1540 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1546, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1547, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1548, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1549, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1550, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 0, metadata !1551, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1552, metadata !DIExpression()), !dbg !1556
  br label %while.cond, !dbg !1557

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1558
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1556
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1552, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1551, metadata !DIExpression()), !dbg !1556
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1559
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1557

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1560
  %div = lshr i64 %add, 1, !dbg !1562
  call void @llvm.dbg.value(metadata i64 %div, metadata !1553, metadata !DIExpression()), !dbg !1556
  %mul = mul i64 %div, %__size, !dbg !1563
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1564
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1554, metadata !DIExpression()), !dbg !1556
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !1565
  call void @llvm.dbg.value(metadata i32 %call, metadata !1555, metadata !DIExpression()), !dbg !1556
  %cmp1 = icmp slt i32 %call, 0, !dbg !1566
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1568

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1569
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1571

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1551, metadata !DIExpression()), !dbg !1556
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1556
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1556
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1552, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1551, metadata !DIExpression()), !dbg !1556
  br label %while.cond, !dbg !1557, !llvm.loop !1573

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1556
  ret i8* %retval.0, !dbg !1575
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1576 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1582, metadata !DIExpression()), !dbg !1583
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !1584
  ret double %call, !dbg !1585
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1586 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1595, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1596, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata i32 %base, metadata !1597, metadata !DIExpression()), !dbg !1598
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !1599
  ret i64 %call, !dbg !1600
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1601 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1607, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1608, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i32 %base, metadata !1609, metadata !DIExpression()), !dbg !1610
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !1611
  ret i64 %call, !dbg !1612
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1613 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1624, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1625, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i32 %base, metadata !1626, metadata !DIExpression()), !dbg !1627
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !1628
  ret i64 %call, !dbg !1629
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1630 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1634, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1635, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 %base, metadata !1636, metadata !DIExpression()), !dbg !1637
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !1638
  ret i64 %call, !dbg !1639
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1640 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1682, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1683, metadata !DIExpression()), !dbg !1684
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !1685
  ret i32 %call, !dbg !1686
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1687 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1689, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1690, metadata !DIExpression()), !dbg !1691
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !1692
  ret i32 %call, !dbg !1693
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1694 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1698, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1699, metadata !DIExpression()), !dbg !1700
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !1701
  ret i32 %call, !dbg !1702
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1703 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1707, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1708, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1709, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1710, metadata !DIExpression()), !dbg !1711
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !1712
  ret i32 %call, !dbg !1713
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1714 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1718, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1719, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1720, metadata !DIExpression()), !dbg !1721
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1720, metadata !DIExpression(DW_OP_deref)), !dbg !1721
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !1722
  ret i32 %call, !dbg !1723
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1724 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1728, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1729, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1730, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1731, metadata !DIExpression()), !dbg !1732
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1731, metadata !DIExpression(DW_OP_deref)), !dbg !1732
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !1733
  ret i32 %call, !dbg !1734
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1735 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1759, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1760, metadata !DIExpression()), !dbg !1761
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !1762
  ret i32 %call, !dbg !1763
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1764 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1766, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1767, metadata !DIExpression()), !dbg !1768
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !1769
  ret i32 %call, !dbg !1770
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1771 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1775, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1776, metadata !DIExpression()), !dbg !1777
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !1778
  ret i32 %call, !dbg !1779
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1780 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1784, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1785, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1786, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1787, metadata !DIExpression()), !dbg !1788
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !1789
  ret i32 %call, !dbg !1790
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @alloc_stmt_list() local_unnamed_addr #3 !dbg !1791 {
entry:
  %0 = load %union.tree_node*, %union.tree_node** @stmt_list_cache, align 8, !dbg !1796
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !1795, metadata !DIExpression()), !dbg !1797
  %tobool = icmp eq %union.tree_node* %0, null, !dbg !1798
  br i1 %tobool, label %if.else, label %if.then, !dbg !1800

if.then:                                          ; preds = %entry
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1801
  %1 = bitcast %union.tree_node** %chain to i64*, !dbg !1801
  %2 = load i64, i64* %1, align 8, !dbg !1801
  store i64 %2, i64* bitcast (%union.tree_node** @stmt_list_cache to i64*), align 8, !dbg !1803
  %.cast = inttoptr i64 %2 to %union.tree_node*, !dbg !1804
  %cmp = icmp eq %union.tree_node* %0, %.cast, !dbg !1804
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !1804

cond.true:                                        ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1804
  br label %cond.end, !dbg !1804

cond.end:                                         ; preds = %if.then, %cond.true
  %3 = bitcast %union.tree_node* %0 to i8*, !dbg !1805
  %call = tail call i8* @memset(i8* nonnull %3, i32 0, i64 24) #5, !dbg !1806
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1807
  %bf.load = load i64, i64* %4, align 8, !dbg !1807
  %bf.clear = and i64 %bf.load, -65536, !dbg !1807
  %bf.set = or i64 %bf.clear, 147, !dbg !1807
  store i64 %bf.set, i64* %4, align 8, !dbg !1807
  br label %if.end, !dbg !1808

if.else:                                          ; preds = %entry
  %call1 = tail call %union.tree_node* @make_node_stat(i32 147) #5, !dbg !1809
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !1795, metadata !DIExpression()), !dbg !1797
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %list.0 = phi %union.tree_node* [ %0, %cond.end ], [ %call1, %if.else ], !dbg !1797
  call void @llvm.dbg.value(metadata %union.tree_node* %list.0, metadata !1795, metadata !DIExpression()), !dbg !1797
  %5 = load i64, i64* bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38) to i64*), align 16, !dbg !1810
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %list.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !1811
  %6 = bitcast %union.tree_node** %type to i64*, !dbg !1812
  store i64 %5, i64* %6, align 8, !dbg !1812
  ret %union.tree_node* %list.0, !dbg !1813
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

declare dso_local %union.tree_node* @make_node_stat(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @free_stmt_list(%union.tree_node* %t) local_unnamed_addr #3 !dbg !1814 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !1818, metadata !DIExpression()), !dbg !1819
  %head = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1820
  %0 = bitcast i32* %head to %struct.tree_statement_list_node**, !dbg !1820
  %1 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %0, align 8, !dbg !1820
  %tobool = icmp eq %struct.tree_statement_list_node* %1, null, !dbg !1820
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1820

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1820
  br label %cond.end, !dbg !1820

cond.end:                                         ; preds = %entry, %cond.true
  %tail = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1821
  %2 = bitcast %union.tree_node** %tail to %struct.tree_statement_list_node**, !dbg !1821
  %3 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %2, align 8, !dbg !1821
  %tobool2 = icmp eq %struct.tree_statement_list_node* %3, null, !dbg !1821
  br i1 %tobool2, label %cond.end5, label %cond.true3, !dbg !1821

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1821
  br label %cond.end5, !dbg !1821

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %4 = load %union.tree_node*, %union.tree_node** @stmt_list_cache, align 8, !dbg !1822
  %cmp = icmp ne %union.tree_node* %4, %t, !dbg !1822
  %cmp7 = icmp eq %union.tree_node* %4, null, !dbg !1822
  %or.cond = or i1 %cmp, %cmp7, !dbg !1822
  %5 = ptrtoint %union.tree_node* %4 to i64, !dbg !1822
  br i1 %or.cond, label %cond.end10, label %cond.true8, !dbg !1822

cond.true8:                                       ; preds = %cond.end5
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1822
  %.pre = load i64, i64* bitcast (%union.tree_node** @stmt_list_cache to i64*), align 8, !dbg !1823
  br label %cond.end10, !dbg !1822

cond.end10:                                       ; preds = %cond.end5, %cond.true8
  %6 = phi i64 [ %5, %cond.end5 ], [ %.pre, %cond.true8 ], !dbg !1823
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1824
  %7 = bitcast %union.tree_node** %chain to i64*, !dbg !1825
  store i64 %6, i64* %7, align 8, !dbg !1825
  store %union.tree_node* %t, %union.tree_node** @stmt_list_cache, align 8, !dbg !1826
  ret void, !dbg !1827
}

; Function Attrs: nounwind uwtable
define dso_local void @tsi_link_before(%struct.tree_stmt_iterator* %i, %union.tree_node* %t, i32 %mode) local_unnamed_addr #3 !dbg !1828 {
entry:
  call void @llvm.dbg.value(metadata %struct.tree_stmt_iterator* %i, metadata !1838, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !1839, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1840, metadata !DIExpression()), !dbg !1844
  %container = getelementptr inbounds %struct.tree_stmt_iterator, %struct.tree_stmt_iterator* %i, i64 0, i32 1, !dbg !1845
  %0 = load %union.tree_node*, %union.tree_node** %container, align 8, !dbg !1845
  %cmp = icmp eq %union.tree_node* %0, %t, !dbg !1845
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !1845

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1845
  br label %cond.end, !dbg !1845

cond.end:                                         ; preds = %entry, %cond.true
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1846
  %bf.load = load i64, i64* %1, align 8, !dbg !1846
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !1848
  %cmp1 = icmp eq i64 %bf.cast1, 147, !dbg !1848
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1849

if.then:                                          ; preds = %cond.end
  %head2 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1850
  %2 = bitcast i32* %head2 to %struct.tree_statement_list_node**, !dbg !1850
  %3 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %2, align 8, !dbg !1850
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %3, metadata !1841, metadata !DIExpression()), !dbg !1844
  %tail4 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1852
  %4 = bitcast %union.tree_node** %tail4 to %struct.tree_statement_list_node**, !dbg !1852
  %5 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %4, align 8, !dbg !1852
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %5, metadata !1842, metadata !DIExpression()), !dbg !1844
  store %struct.tree_statement_list_node* null, %struct.tree_statement_list_node** %2, align 8, !dbg !1853
  store %struct.tree_statement_list_node* null, %struct.tree_statement_list_node** %4, align 8, !dbg !1854
  tail call void @free_stmt_list(%union.tree_node* %t) #6, !dbg !1855
  %tobool = icmp ne %struct.tree_statement_list_node* %3, null, !dbg !1856
  %tobool9 = icmp ne %struct.tree_statement_list_node* %5, null, !dbg !1858
  %or.cond = and i1 %tobool, %tobool9, !dbg !1859
  br i1 %or.cond, label %if.end16, label %if.then10, !dbg !1859

if.then10:                                        ; preds = %if.then
  %cmp11 = icmp eq %struct.tree_statement_list_node* %3, %5, !dbg !1860
  br i1 %cmp11, label %cleanup.cont, label %cond.true12, !dbg !1860

cond.true12:                                      ; preds = %if.then10
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1860
  br label %cleanup.cont, !dbg !1860

if.else:                                          ; preds = %cond.end
  %call = tail call i8* @ggc_alloc_stat(i64 24) #5, !dbg !1862
  %6 = bitcast i8* %call to %struct.tree_statement_list_node*, !dbg !1862
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %6, metadata !1841, metadata !DIExpression()), !dbg !1844
  %prev = bitcast i8* %call to %struct.tree_statement_list_node**, !dbg !1864
  store %struct.tree_statement_list_node* null, %struct.tree_statement_list_node** %prev, align 8, !dbg !1865
  %next = getelementptr inbounds i8, i8* %call, i64 8, !dbg !1866
  %7 = bitcast i8* %next to %struct.tree_statement_list_node**, !dbg !1866
  store %struct.tree_statement_list_node* null, %struct.tree_statement_list_node** %7, align 8, !dbg !1867
  %stmt = getelementptr inbounds i8, i8* %call, i64 16, !dbg !1868
  %8 = bitcast i8* %stmt to %union.tree_node**, !dbg !1868
  store %union.tree_node* %t, %union.tree_node** %8, align 8, !dbg !1869
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %6, metadata !1842, metadata !DIExpression()), !dbg !1844
  br label %if.end16

if.end16:                                         ; preds = %if.then, %if.else
  %head.0 = phi %struct.tree_statement_list_node* [ %6, %if.else ], [ %3, %if.then ], !dbg !1870
  %tail.0 = phi %struct.tree_statement_list_node* [ %6, %if.else ], [ %5, %if.then ], !dbg !1870
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %tail.0, metadata !1842, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %head.0, metadata !1841, metadata !DIExpression()), !dbg !1844
  %9 = bitcast %union.tree_node** %container to i64**, !dbg !1871
  %10 = load i64*, i64** %9, align 8, !dbg !1871
  %bf.load19 = load i64, i64* %10, align 8, !dbg !1872
  %bf.set = or i64 %bf.load19, 65536, !dbg !1872
  store i64 %bf.set, i64* %10, align 8, !dbg !1872
  %ptr = getelementptr inbounds %struct.tree_stmt_iterator, %struct.tree_stmt_iterator* %i, i64 0, i32 0, !dbg !1873
  %11 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %ptr, align 8, !dbg !1873
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %11, metadata !1843, metadata !DIExpression()), !dbg !1844
  %tobool21 = icmp eq %struct.tree_statement_list_node* %11, null, !dbg !1874
  br i1 %tobool21, label %if.else37, label %if.then22, !dbg !1876

if.then22:                                        ; preds = %if.end16
  %12 = bitcast %struct.tree_statement_list_node* %11 to i64*, !dbg !1877
  %13 = load i64, i64* %12, align 8, !dbg !1877
  %14 = bitcast %struct.tree_statement_list_node* %head.0 to i64*, !dbg !1879
  store i64 %13, i64* %14, align 8, !dbg !1879
  %tobool26 = icmp eq i64 %13, 0, !dbg !1880
  br i1 %tobool26, label %if.else30, label %if.then27, !dbg !1882

if.then27:                                        ; preds = %if.then22
  %15 = inttoptr i64 %13 to %struct.tree_statement_list_node*, !dbg !1882
  %next29 = getelementptr inbounds %struct.tree_statement_list_node, %struct.tree_statement_list_node* %15, i64 0, i32 1, !dbg !1883
  store %struct.tree_statement_list_node* %head.0, %struct.tree_statement_list_node** %next29, align 8, !dbg !1884
  br label %if.end34, !dbg !1885

if.else30:                                        ; preds = %if.then22
  %16 = bitcast %union.tree_node** %container to %struct.tree_statement_list**, !dbg !1886
  %17 = load %struct.tree_statement_list*, %struct.tree_statement_list** %16, align 8, !dbg !1886
  %head33 = getelementptr inbounds %struct.tree_statement_list, %struct.tree_statement_list* %17, i64 0, i32 1, !dbg !1886
  store %struct.tree_statement_list_node* %head.0, %struct.tree_statement_list_node** %head33, align 8, !dbg !1887
  br label %if.end34

if.end34:                                         ; preds = %if.else30, %if.then27
  %next35 = getelementptr inbounds %struct.tree_statement_list_node, %struct.tree_statement_list_node* %tail.0, i64 0, i32 1, !dbg !1888
  store %struct.tree_statement_list_node* %11, %struct.tree_statement_list_node** %next35, align 8, !dbg !1889
  %prev36 = getelementptr inbounds %struct.tree_statement_list_node, %struct.tree_statement_list_node* %11, i64 0, i32 0, !dbg !1890
  store %struct.tree_statement_list_node* %tail.0, %struct.tree_statement_list_node** %prev36, align 8, !dbg !1891
  br label %if.end55, !dbg !1892

if.else37:                                        ; preds = %if.end16
  %18 = bitcast %union.tree_node** %container to %struct.tree_statement_list**, !dbg !1893
  %19 = load %struct.tree_statement_list*, %struct.tree_statement_list** %18, align 8, !dbg !1893
  %tail40 = getelementptr inbounds %struct.tree_statement_list, %struct.tree_statement_list* %19, i64 0, i32 2, !dbg !1893
  %20 = bitcast %struct.tree_statement_list_node** %tail40 to i64*, !dbg !1893
  %21 = load i64, i64* %20, align 8, !dbg !1893
  %22 = bitcast %struct.tree_statement_list_node* %head.0 to i64*, !dbg !1895
  store i64 %21, i64* %22, align 8, !dbg !1895
  %tobool43 = icmp eq i64 %21, 0, !dbg !1896
  br i1 %tobool43, label %if.else47, label %if.then44, !dbg !1898

if.then44:                                        ; preds = %if.else37
  %23 = inttoptr i64 %21 to %struct.tree_statement_list_node*, !dbg !1898
  %next46 = getelementptr inbounds %struct.tree_statement_list_node, %struct.tree_statement_list_node* %23, i64 0, i32 1, !dbg !1899
  store %struct.tree_statement_list_node* %head.0, %struct.tree_statement_list_node** %next46, align 8, !dbg !1900
  br label %if.end51, !dbg !1901

if.else47:                                        ; preds = %if.else37
  %24 = load %struct.tree_statement_list*, %struct.tree_statement_list** %18, align 8, !dbg !1902
  %head50 = getelementptr inbounds %struct.tree_statement_list, %struct.tree_statement_list* %24, i64 0, i32 1, !dbg !1902
  store %struct.tree_statement_list_node* %head.0, %struct.tree_statement_list_node** %head50, align 8, !dbg !1903
  br label %if.end51

if.end51:                                         ; preds = %if.else47, %if.then44
  %25 = load %struct.tree_statement_list*, %struct.tree_statement_list** %18, align 8, !dbg !1904
  %tail54 = getelementptr inbounds %struct.tree_statement_list, %struct.tree_statement_list* %25, i64 0, i32 2, !dbg !1904
  store %struct.tree_statement_list_node* %tail.0, %struct.tree_statement_list_node** %tail54, align 8, !dbg !1905
  br label %if.end55

if.end55:                                         ; preds = %if.end51, %if.end34
  switch i32 %mode, label %cleanup.cont [
    i32 0, label %sw.bb
    i32 4, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb57
  ], !dbg !1906

sw.bb:                                            ; preds = %if.end55, %if.end55, %if.end55
  store %struct.tree_statement_list_node* %head.0, %struct.tree_statement_list_node** %ptr, align 8, !dbg !1907
  br label %cleanup.cont, !dbg !1909

sw.bb57:                                          ; preds = %if.end55
  store %struct.tree_statement_list_node* %tail.0, %struct.tree_statement_list_node** %ptr, align 8, !dbg !1910
  br label %cleanup.cont, !dbg !1911

cleanup.cont:                                     ; preds = %if.then10, %cond.true12, %if.end55, %sw.bb57, %sw.bb
  ret void, !dbg !1912
}

declare dso_local i8* @ggc_alloc_stat(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @tsi_link_after(%struct.tree_stmt_iterator* %i, %union.tree_node* %t, i32 %mode) local_unnamed_addr #3 !dbg !1913 {
entry:
  call void @llvm.dbg.value(metadata %struct.tree_stmt_iterator* %i, metadata !1915, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !1916, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1917, metadata !DIExpression()), !dbg !1921
  %container = getelementptr inbounds %struct.tree_stmt_iterator, %struct.tree_stmt_iterator* %i, i64 0, i32 1, !dbg !1922
  %0 = load %union.tree_node*, %union.tree_node** %container, align 8, !dbg !1922
  %cmp = icmp eq %union.tree_node* %0, %t, !dbg !1922
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !1922

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1922
  br label %cond.end, !dbg !1922

cond.end:                                         ; preds = %entry, %cond.true
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1923
  %bf.load = load i64, i64* %1, align 8, !dbg !1923
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !1925
  %cmp1 = icmp eq i64 %bf.cast1, 147, !dbg !1925
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1926

if.then:                                          ; preds = %cond.end
  %head2 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1927
  %2 = bitcast i32* %head2 to %struct.tree_statement_list_node**, !dbg !1927
  %3 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %2, align 8, !dbg !1927
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %3, metadata !1918, metadata !DIExpression()), !dbg !1921
  %tail4 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1929
  %4 = bitcast %union.tree_node** %tail4 to %struct.tree_statement_list_node**, !dbg !1929
  %5 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %4, align 8, !dbg !1929
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %5, metadata !1919, metadata !DIExpression()), !dbg !1921
  store %struct.tree_statement_list_node* null, %struct.tree_statement_list_node** %2, align 8, !dbg !1930
  store %struct.tree_statement_list_node* null, %struct.tree_statement_list_node** %4, align 8, !dbg !1931
  tail call void @free_stmt_list(%union.tree_node* %t) #6, !dbg !1932
  %tobool = icmp ne %struct.tree_statement_list_node* %3, null, !dbg !1933
  %tobool9 = icmp ne %struct.tree_statement_list_node* %5, null, !dbg !1935
  %or.cond = and i1 %tobool, %tobool9, !dbg !1936
  br i1 %or.cond, label %if.end16, label %if.then10, !dbg !1936

if.then10:                                        ; preds = %if.then
  %cmp11 = icmp eq %struct.tree_statement_list_node* %3, %5, !dbg !1937
  br i1 %cmp11, label %cleanup.cont, label %cond.true12, !dbg !1937

cond.true12:                                      ; preds = %if.then10
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1937
  br label %cleanup.cont, !dbg !1937

if.else:                                          ; preds = %cond.end
  %call = tail call i8* @ggc_alloc_stat(i64 24) #5, !dbg !1939
  %6 = bitcast i8* %call to %struct.tree_statement_list_node*, !dbg !1939
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %6, metadata !1918, metadata !DIExpression()), !dbg !1921
  %prev = bitcast i8* %call to %struct.tree_statement_list_node**, !dbg !1941
  store %struct.tree_statement_list_node* null, %struct.tree_statement_list_node** %prev, align 8, !dbg !1942
  %next = getelementptr inbounds i8, i8* %call, i64 8, !dbg !1943
  %7 = bitcast i8* %next to %struct.tree_statement_list_node**, !dbg !1943
  store %struct.tree_statement_list_node* null, %struct.tree_statement_list_node** %7, align 8, !dbg !1944
  %stmt = getelementptr inbounds i8, i8* %call, i64 16, !dbg !1945
  %8 = bitcast i8* %stmt to %union.tree_node**, !dbg !1945
  store %union.tree_node* %t, %union.tree_node** %8, align 8, !dbg !1946
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %6, metadata !1919, metadata !DIExpression()), !dbg !1921
  br label %if.end16

if.end16:                                         ; preds = %if.then, %if.else
  %head.0 = phi %struct.tree_statement_list_node* [ %6, %if.else ], [ %3, %if.then ], !dbg !1947
  %tail.0 = phi %struct.tree_statement_list_node* [ %6, %if.else ], [ %5, %if.then ], !dbg !1947
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %tail.0, metadata !1919, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %head.0, metadata !1918, metadata !DIExpression()), !dbg !1921
  %9 = bitcast %union.tree_node** %container to i64**, !dbg !1948
  %10 = load i64*, i64** %9, align 8, !dbg !1948
  %bf.load19 = load i64, i64* %10, align 8, !dbg !1949
  %bf.set = or i64 %bf.load19, 65536, !dbg !1949
  store i64 %bf.set, i64* %10, align 8, !dbg !1949
  %ptr = getelementptr inbounds %struct.tree_stmt_iterator, %struct.tree_stmt_iterator* %i, i64 0, i32 0, !dbg !1950
  %11 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %ptr, align 8, !dbg !1950
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %11, metadata !1920, metadata !DIExpression()), !dbg !1921
  %tobool21 = icmp eq %struct.tree_statement_list_node* %11, null, !dbg !1951
  br i1 %tobool21, label %if.else37, label %if.then22, !dbg !1953

if.then22:                                        ; preds = %if.end16
  %next23 = getelementptr inbounds %struct.tree_statement_list_node, %struct.tree_statement_list_node* %11, i64 0, i32 1, !dbg !1954
  %12 = bitcast %struct.tree_statement_list_node** %next23 to i64*, !dbg !1954
  %13 = load i64, i64* %12, align 8, !dbg !1954
  %next24 = getelementptr inbounds %struct.tree_statement_list_node, %struct.tree_statement_list_node* %tail.0, i64 0, i32 1, !dbg !1956
  %14 = bitcast %struct.tree_statement_list_node** %next24 to i64*, !dbg !1957
  store i64 %13, i64* %14, align 8, !dbg !1957
  %tobool26 = icmp eq i64 %13, 0, !dbg !1958
  br i1 %tobool26, label %if.else30, label %if.then27, !dbg !1960

if.then27:                                        ; preds = %if.then22
  %15 = inttoptr i64 %13 to %struct.tree_statement_list_node*, !dbg !1960
  %prev29 = getelementptr inbounds %struct.tree_statement_list_node, %struct.tree_statement_list_node* %15, i64 0, i32 0, !dbg !1961
  store %struct.tree_statement_list_node* %tail.0, %struct.tree_statement_list_node** %prev29, align 8, !dbg !1962
  br label %if.end34, !dbg !1963

if.else30:                                        ; preds = %if.then22
  %16 = bitcast %union.tree_node** %container to %struct.tree_statement_list**, !dbg !1964
  %17 = load %struct.tree_statement_list*, %struct.tree_statement_list** %16, align 8, !dbg !1964
  %tail33 = getelementptr inbounds %struct.tree_statement_list, %struct.tree_statement_list* %17, i64 0, i32 2, !dbg !1964
  store %struct.tree_statement_list_node* %tail.0, %struct.tree_statement_list_node** %tail33, align 8, !dbg !1965
  br label %if.end34

if.end34:                                         ; preds = %if.else30, %if.then27
  %prev35 = getelementptr inbounds %struct.tree_statement_list_node, %struct.tree_statement_list_node* %head.0, i64 0, i32 0, !dbg !1966
  store %struct.tree_statement_list_node* %11, %struct.tree_statement_list_node** %prev35, align 8, !dbg !1967
  store %struct.tree_statement_list_node* %head.0, %struct.tree_statement_list_node** %next23, align 8, !dbg !1968
  br label %if.end52, !dbg !1969

if.else37:                                        ; preds = %if.end16
  %18 = bitcast %union.tree_node** %container to %struct.tree_statement_list**, !dbg !1970
  %19 = load %struct.tree_statement_list*, %struct.tree_statement_list** %18, align 8, !dbg !1970
  %tail40 = getelementptr inbounds %struct.tree_statement_list, %struct.tree_statement_list* %19, i64 0, i32 2, !dbg !1970
  %20 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %tail40, align 8, !dbg !1970
  %tobool41 = icmp eq %struct.tree_statement_list_node* %20, null, !dbg !1970
  br i1 %tobool41, label %cond.end44, label %cond.true42, !dbg !1970

cond.true42:                                      ; preds = %if.else37
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 192, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1970
  %.pre = load %struct.tree_statement_list*, %struct.tree_statement_list** %18, align 8, !dbg !1972
  br label %cond.end44, !dbg !1970

cond.end44:                                       ; preds = %if.else37, %cond.true42
  %21 = phi %struct.tree_statement_list* [ %19, %if.else37 ], [ %.pre, %cond.true42 ], !dbg !1972
  %head48 = getelementptr inbounds %struct.tree_statement_list, %struct.tree_statement_list* %21, i64 0, i32 1, !dbg !1972
  store %struct.tree_statement_list_node* %head.0, %struct.tree_statement_list_node** %head48, align 8, !dbg !1973
  %22 = load %struct.tree_statement_list*, %struct.tree_statement_list** %18, align 8, !dbg !1974
  %tail51 = getelementptr inbounds %struct.tree_statement_list, %struct.tree_statement_list* %22, i64 0, i32 2, !dbg !1974
  store %struct.tree_statement_list_node* %tail.0, %struct.tree_statement_list_node** %tail51, align 8, !dbg !1975
  br label %if.end52

if.end52:                                         ; preds = %cond.end44, %if.end34
  switch i32 %mode, label %cleanup.cont [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb54
    i32 3, label %sw.bb54
    i32 1, label %sw.bb56
  ], !dbg !1976

sw.bb:                                            ; preds = %if.end52, %if.end52
  store %struct.tree_statement_list_node* %head.0, %struct.tree_statement_list_node** %ptr, align 8, !dbg !1977
  br label %cleanup.cont, !dbg !1979

sw.bb54:                                          ; preds = %if.end52, %if.end52
  store %struct.tree_statement_list_node* %tail.0, %struct.tree_statement_list_node** %ptr, align 8, !dbg !1980
  br label %cleanup.cont, !dbg !1981

sw.bb56:                                          ; preds = %if.end52
  br i1 %tobool21, label %cond.true58, label %cleanup.cont, !dbg !1982

cond.true58:                                      ; preds = %sw.bb56
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 209, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1982
  br label %cleanup.cont, !dbg !1982

cleanup.cont:                                     ; preds = %sw.bb56, %if.then10, %cond.true12, %cond.true58, %if.end52, %sw.bb54, %sw.bb
  ret void, !dbg !1983
}

; Function Attrs: nounwind uwtable
define dso_local void @tsi_delink(%struct.tree_stmt_iterator* %i) local_unnamed_addr #3 !dbg !1984 {
entry:
  call void @llvm.dbg.value(metadata %struct.tree_stmt_iterator* %i, metadata !1988, metadata !DIExpression()), !dbg !1992
  %ptr = getelementptr inbounds %struct.tree_stmt_iterator, %struct.tree_stmt_iterator* %i, i64 0, i32 0, !dbg !1993
  %0 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %ptr, align 8, !dbg !1993
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %0, metadata !1989, metadata !DIExpression()), !dbg !1992
  %next1 = getelementptr inbounds %struct.tree_statement_list_node, %struct.tree_statement_list_node* %0, i64 0, i32 1, !dbg !1994
  %1 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %next1, align 8, !dbg !1994
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %1, metadata !1990, metadata !DIExpression()), !dbg !1992
  %prev2 = getelementptr inbounds %struct.tree_statement_list_node, %struct.tree_statement_list_node* %0, i64 0, i32 0, !dbg !1995
  %2 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %prev2, align 8, !dbg !1995
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %2, metadata !1991, metadata !DIExpression()), !dbg !1992
  %tobool = icmp eq %struct.tree_statement_list_node* %2, null, !dbg !1996
  br i1 %tobool, label %if.else, label %if.then, !dbg !1998

if.then:                                          ; preds = %entry
  %next3 = getelementptr inbounds %struct.tree_statement_list_node, %struct.tree_statement_list_node* %2, i64 0, i32 1, !dbg !1999
  store %struct.tree_statement_list_node* %1, %struct.tree_statement_list_node** %next3, align 8, !dbg !2000
  br label %if.end, !dbg !2001

if.else:                                          ; preds = %entry
  %container = getelementptr inbounds %struct.tree_stmt_iterator, %struct.tree_stmt_iterator* %i, i64 0, i32 1, !dbg !2002
  %3 = bitcast %union.tree_node** %container to %struct.tree_statement_list**, !dbg !2002
  %4 = load %struct.tree_statement_list*, %struct.tree_statement_list** %3, align 8, !dbg !2002
  %head = getelementptr inbounds %struct.tree_statement_list, %struct.tree_statement_list* %4, i64 0, i32 1, !dbg !2002
  store %struct.tree_statement_list_node* %1, %struct.tree_statement_list_node** %head, align 8, !dbg !2003
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tobool4 = icmp eq %struct.tree_statement_list_node* %1, null, !dbg !2004
  br i1 %tobool4, label %if.else7, label %if.then5, !dbg !2006

if.then5:                                         ; preds = %if.end
  %prev6 = getelementptr inbounds %struct.tree_statement_list_node, %struct.tree_statement_list_node* %1, i64 0, i32 0, !dbg !2007
  store %struct.tree_statement_list_node* %2, %struct.tree_statement_list_node** %prev6, align 8, !dbg !2008
  br label %if.end10, !dbg !2009

if.else7:                                         ; preds = %if.end
  %container8 = getelementptr inbounds %struct.tree_stmt_iterator, %struct.tree_stmt_iterator* %i, i64 0, i32 1, !dbg !2010
  %5 = bitcast %union.tree_node** %container8 to %struct.tree_statement_list**, !dbg !2010
  %6 = load %struct.tree_statement_list*, %struct.tree_statement_list** %5, align 8, !dbg !2010
  %tail = getelementptr inbounds %struct.tree_statement_list, %struct.tree_statement_list* %6, i64 0, i32 2, !dbg !2010
  store %struct.tree_statement_list_node* %2, %struct.tree_statement_list_node** %tail, align 8, !dbg !2011
  br label %if.end10

if.end10:                                         ; preds = %if.else7, %if.then5
  %tobool11 = icmp ne %struct.tree_statement_list_node* %1, null, !dbg !2012
  %tobool12 = icmp ne %struct.tree_statement_list_node* %2, null, !dbg !2014
  %or.cond = or i1 %tobool11, %tobool12, !dbg !2015
  br i1 %or.cond, label %if.end15, label %if.then13, !dbg !2015

if.then13:                                        ; preds = %if.end10
  %container14 = getelementptr inbounds %struct.tree_stmt_iterator, %struct.tree_stmt_iterator* %i, i64 0, i32 1, !dbg !2016
  %7 = bitcast %union.tree_node** %container14 to i64**, !dbg !2016
  %8 = load i64*, i64** %7, align 8, !dbg !2016
  %bf.load = load i64, i64* %8, align 8, !dbg !2017
  %bf.clear = and i64 %bf.load, -65537, !dbg !2017
  store i64 %bf.clear, i64* %8, align 8, !dbg !2017
  br label %if.end15, !dbg !2016

if.end15:                                         ; preds = %if.then13, %if.end10
  store %struct.tree_statement_list_node* %1, %struct.tree_statement_list_node** %ptr, align 8, !dbg !2018
  ret void, !dbg !2019
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @expr_first(%union.tree_node* %expr) local_unnamed_addr #3 !dbg !2020 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !2024, metadata !DIExpression()), !dbg !2028
  %cmp = icmp eq %union.tree_node* %expr, null, !dbg !2029
  br i1 %cmp, label %return, label %if.end, !dbg !2031

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2032
  %bf.load = load i64, i64* %0, align 8, !dbg !2032
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2033
  %cmp1 = icmp eq i64 %bf.cast1, 147, !dbg !2033
  br i1 %cmp1, label %if.then2, label %while.cond.preheader, !dbg !2034

while.cond.preheader:                             ; preds = %if.end
  br label %while.cond, !dbg !2035

if.then2:                                         ; preds = %if.end
  %head = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2036
  %1 = bitcast i32* %head to %struct.tree_statement_list_node**, !dbg !2036
  %2 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %1, align 8, !dbg !2036
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %2, metadata !2025, metadata !DIExpression()), !dbg !2037
  %tobool = icmp eq %struct.tree_statement_list_node* %2, null, !dbg !2038
  br i1 %tobool, label %return, label %cond.true, !dbg !2038

cond.true:                                        ; preds = %if.then2
  %stmt = getelementptr inbounds %struct.tree_statement_list_node, %struct.tree_statement_list_node* %2, i64 0, i32 2, !dbg !2039
  %3 = load %union.tree_node*, %union.tree_node** %stmt, align 8, !dbg !2039
  br label %return, !dbg !2038

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %bf.load5 = phi i64 [ %bf.load5.pre, %while.body ], [ %bf.load, %while.cond.preheader ], !dbg !2040
  %expr.addr.0 = phi %union.tree_node* [ %4, %while.body ], [ %expr, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.0, metadata !2024, metadata !DIExpression()), !dbg !2028
  %bf.cast72 = and i64 %bf.load5, 65535, !dbg !2041
  %cmp8 = icmp eq i64 %bf.cast72, 52, !dbg !2041
  br i1 %cmp8, label %while.body, label %return.loopexit, !dbg !2035

while.body:                                       ; preds = %while.cond
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2042
  %4 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2042
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !2024, metadata !DIExpression()), !dbg !2028
  %.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2028
  %bf.load5.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !2040
  br label %while.cond, !dbg !2035, !llvm.loop !2043

return.loopexit:                                  ; preds = %while.cond
  %expr.addr.0.lcssa = phi %union.tree_node* [ %expr.addr.0, %while.cond ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.0.lcssa, metadata !2024, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.0.lcssa, metadata !2024, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.0.lcssa, metadata !2024, metadata !DIExpression()), !dbg !2028
  br label %return, !dbg !2044

return:                                           ; preds = %return.loopexit, %if.then2, %cond.true, %entry
  %retval.0 = phi %union.tree_node* [ null, %entry ], [ %3, %cond.true ], [ null, %if.then2 ], [ %expr.addr.0.lcssa, %return.loopexit ], !dbg !2028
  ret %union.tree_node* %retval.0, !dbg !2044
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @expr_last(%union.tree_node* %expr) local_unnamed_addr #3 !dbg !2045 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !2047, metadata !DIExpression()), !dbg !2051
  %cmp = icmp eq %union.tree_node* %expr, null, !dbg !2052
  br i1 %cmp, label %return, label %if.end, !dbg !2054

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2055
  %bf.load = load i64, i64* %0, align 8, !dbg !2055
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2056
  %cmp1 = icmp eq i64 %bf.cast1, 147, !dbg !2056
  br i1 %cmp1, label %if.then2, label %while.cond.preheader, !dbg !2057

while.cond.preheader:                             ; preds = %if.end
  br label %while.cond, !dbg !2058

if.then2:                                         ; preds = %if.end
  %tail = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2059
  %1 = bitcast %union.tree_node** %tail to %struct.tree_statement_list_node**, !dbg !2059
  %2 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %1, align 8, !dbg !2059
  call void @llvm.dbg.value(metadata %struct.tree_statement_list_node* %2, metadata !2048, metadata !DIExpression()), !dbg !2060
  %tobool = icmp eq %struct.tree_statement_list_node* %2, null, !dbg !2061
  br i1 %tobool, label %return, label %cond.true, !dbg !2061

cond.true:                                        ; preds = %if.then2
  %stmt = getelementptr inbounds %struct.tree_statement_list_node, %struct.tree_statement_list_node* %2, i64 0, i32 2, !dbg !2062
  %3 = load %union.tree_node*, %union.tree_node** %stmt, align 8, !dbg !2062
  br label %return, !dbg !2061

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %bf.load5 = phi i64 [ %bf.load5.pre, %while.body ], [ %bf.load, %while.cond.preheader ], !dbg !2063
  %expr.addr.0 = phi %union.tree_node* [ %4, %while.body ], [ %expr, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.0, metadata !2047, metadata !DIExpression()), !dbg !2051
  %bf.cast72 = and i64 %bf.load5, 65535, !dbg !2064
  %cmp8 = icmp eq i64 %bf.cast72, 52, !dbg !2064
  br i1 %cmp8, label %while.body, label %return.loopexit, !dbg !2058

while.body:                                       ; preds = %while.cond
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2065
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2065
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2065
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !2047, metadata !DIExpression()), !dbg !2051
  %.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2051
  %bf.load5.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !2063
  br label %while.cond, !dbg !2058, !llvm.loop !2066

return.loopexit:                                  ; preds = %while.cond
  %expr.addr.0.lcssa = phi %union.tree_node* [ %expr.addr.0, %while.cond ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.0.lcssa, metadata !2047, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.0.lcssa, metadata !2047, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.0.lcssa, metadata !2047, metadata !DIExpression()), !dbg !2051
  br label %return, !dbg !2067

return:                                           ; preds = %return.loopexit, %if.then2, %cond.true, %entry
  %retval.0 = phi %union.tree_node* [ null, %entry ], [ %3, %cond.true ], [ null, %if.then2 ], [ %expr.addr.0.lcssa, %return.loopexit ], !dbg !2051
  ret %union.tree_node* %retval.0, !dbg !2067
}

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
!llvm.module.flags = !{!1339, !1340, !1341}
!llvm.ident = !{!1342}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "stmt_list_cache", scope: !2, file: !3, line: 33, type: !273, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !257, globals: !1324, nameTableKind: None)
!3 = !DIFile(filename: "tree-iterator.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !201, !207, !212, !217, !235, !242, !249}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !6, line: 39, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200}
!9 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!34 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!35 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!36 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!37 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!38 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!39 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!40 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!41 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!42 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!43 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!44 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!45 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!46 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!47 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!48 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!49 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!50 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!51 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!52 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!53 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!54 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!55 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!56 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!57 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!58 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!59 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!60 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!61 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!62 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!63 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!64 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!65 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!66 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!67 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!68 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!69 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!70 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!71 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!72 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!73 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!74 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!75 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!76 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!77 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!78 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!79 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!80 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!81 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!82 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!83 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!84 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!85 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!86 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!87 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!88 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!89 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!90 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!91 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!92 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!93 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!94 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!95 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!96 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!97 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!98 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!99 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!100 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!101 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!102 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!103 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!104 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!105 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!106 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!107 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!108 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!109 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!110 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!111 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!112 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!113 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!114 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!115 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!116 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!117 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!118 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!119 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!120 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!121 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!122 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!123 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!124 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!125 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!126 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!127 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!128 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!129 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!130 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!131 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!132 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!133 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!134 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!135 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!136 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!137 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!138 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!139 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!140 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!141 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!142 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!143 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!144 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!145 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!146 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!147 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!148 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!149 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!150 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!151 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!152 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!153 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!154 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!155 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!156 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!157 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!158 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!159 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!160 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!161 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!173 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!174 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!175 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!176 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!177 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!178 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!179 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!180 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!181 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!182 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!183 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!184 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!185 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!186 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!187 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!188 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!189 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!190 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!191 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!192 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!193 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!194 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!195 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!196 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!197 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!198 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!199 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!200 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !202, line: 363, baseType: !7, size: 32, elements: !203)
!202 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!203 = !{!204, !205, !206}
!204 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!205 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!206 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !202, line: 355, baseType: !7, size: 32, elements: !208)
!208 = !{!209, !210, !211}
!209 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!210 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!211 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !213, line: 474, baseType: !7, size: 32, elements: !214)
!213 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!214 = !{!215, !216}
!215 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!216 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !6, line: 280, baseType: !7, size: 32, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234}
!219 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!220 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!221 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!222 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!223 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!224 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!225 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!226 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!227 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!228 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!229 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!230 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!231 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!232 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!233 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!234 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !6, line: 1817, baseType: !7, size: 32, elements: !236)
!236 = !{!237, !238, !239, !240, !241}
!237 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!238 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!239 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!240 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!241 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !6, line: 1805, baseType: !7, size: 32, elements: !243)
!243 = !{!244, !245, !246, !247, !248}
!244 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!245 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!246 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!247 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!248 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tsi_iterator_update", file: !250, line: 95, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./tree-iterator.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!251 = !{!252, !253, !254, !255, !256}
!252 = !DIEnumerator(name: "TSI_NEW_STMT", value: 0, isUnsigned: true)
!253 = !DIEnumerator(name: "TSI_SAME_STMT", value: 1, isUnsigned: true)
!254 = !DIEnumerator(name: "TSI_CHAIN_START", value: 2, isUnsigned: true)
!255 = !DIEnumerator(name: "TSI_CHAIN_END", value: 3, isUnsigned: true)
!256 = !DIEnumerator(name: "TSI_CONTINUE_LINKING", value: 4, isUnsigned: true)
!257 = !{!258, !259, !260, !261, !264, !265, !5, !267, !273}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!260 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !6, line: 3320, size: 192, elements: !269)
!269 = !{!270, !271, !272}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !268, file: !6, line: 3322, baseType: !267, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !6, line: 3323, baseType: !267, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !268, file: !6, line: 3324, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !274, line: 56, baseType: !275)
!274 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !6, line: 3371, size: 1792, elements: !277)
!277 = !{!278, !311, !317, !330, !337, !344, !349, !358, !364, !377, !389, !427, !435, !463, !471, !472, !477, !486, !492, !497, !501, !505, !970, !1019, !1025, !1031, !1038, !1049, !1074, !1091, !1097, !1119, !1134, !1306}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !276, file: !6, line: 3372, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !6, line: 360, size: 64, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !279, file: !6, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !279, file: !6, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !279, file: !6, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !279, file: !6, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !279, file: !6, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !279, file: !6, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !279, file: !6, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !279, file: !6, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !279, file: !6, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !279, file: !6, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !279, file: !6, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !279, file: !6, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !279, file: !6, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !279, file: !6, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !279, file: !6, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !279, file: !6, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !279, file: !6, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !279, file: !6, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !279, file: !6, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !279, file: !6, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !279, file: !6, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !279, file: !6, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !279, file: !6, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !279, file: !6, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !279, file: !6, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !279, file: !6, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !279, file: !6, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !279, file: !6, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !279, file: !6, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !279, file: !6, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !276, file: !6, line: 3373, baseType: !312, size: 192)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !6, line: 402, size: 192, elements: !313)
!313 = !{!314, !315, !316}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !312, file: !6, line: 403, baseType: !279, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !312, file: !6, line: 404, baseType: !273, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !312, file: !6, line: 405, baseType: !273, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !276, file: !6, line: 3374, baseType: !318, size: 320)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !6, line: 1384, size: 320, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !318, file: !6, line: 1385, baseType: !312, size: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !318, file: !6, line: 1386, baseType: !322, size: 128, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !323, line: 58, baseType: !324)
!323 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !323, line: 54, size: 128, elements: !325)
!325 = !{!326, !328}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !324, file: !323, line: 56, baseType: !327, size: 64)
!327 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !324, file: !323, line: 57, baseType: !329, size: 64, offset: 64)
!329 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !276, file: !6, line: 3375, baseType: !331, size: 256)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !6, line: 1397, size: 256, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !331, file: !6, line: 1398, baseType: !312, size: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !331, file: !6, line: 1399, baseType: !335, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !6, line: 1392, flags: DIFlagFwdDecl)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !276, file: !6, line: 3376, baseType: !338, size: 256)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !6, line: 1408, size: 256, elements: !339)
!339 = !{!340, !341}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !338, file: !6, line: 1409, baseType: !312, size: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !338, file: !6, line: 1410, baseType: !342, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !6, line: 1403, flags: DIFlagFwdDecl)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !276, file: !6, line: 3377, baseType: !345, size: 256)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !6, line: 1437, size: 256, elements: !346)
!346 = !{!347, !348}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !345, file: !6, line: 1438, baseType: !312, size: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !345, file: !6, line: 1439, baseType: !273, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !276, file: !6, line: 3378, baseType: !350, size: 256)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !6, line: 1418, size: 256, elements: !351)
!351 = !{!352, !353, !354}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !350, file: !6, line: 1419, baseType: !312, size: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !350, file: !6, line: 1420, baseType: !260, size: 32, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !350, file: !6, line: 1421, baseType: !355, size: 8, offset: 224)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 8, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 1)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !276, file: !6, line: 3379, baseType: !359, size: 320)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !6, line: 1428, size: 320, elements: !360)
!360 = !{!361, !362, !363}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !359, file: !6, line: 1429, baseType: !312, size: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !359, file: !6, line: 1430, baseType: !273, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !359, file: !6, line: 1431, baseType: !273, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !276, file: !6, line: 3380, baseType: !365, size: 320)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !6, line: 1460, size: 320, elements: !366)
!366 = !{!367, !368}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !365, file: !6, line: 1461, baseType: !312, size: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !365, file: !6, line: 1462, baseType: !369, size: 128, offset: 192)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !370, line: 31, size: 128, elements: !371)
!370 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!371 = !{!372, !375, !376}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !369, file: !370, line: 32, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !369, file: !370, line: 33, baseType: !7, size: 32, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !369, file: !370, line: 34, baseType: !7, size: 32, offset: 96)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !276, file: !6, line: 3381, baseType: !378, size: 384)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !6, line: 2507, size: 384, elements: !379)
!379 = !{!380, !381, !386, !387, !388}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !378, file: !6, line: 2508, baseType: !312, size: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !378, file: !6, line: 2509, baseType: !382, size: 32, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !383, line: 58, baseType: !384)
!383 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !385, line: 44, baseType: !7)
!385 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!386 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !378, file: !6, line: 2510, baseType: !7, size: 32, offset: 224)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !378, file: !6, line: 2511, baseType: !273, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !378, file: !6, line: 2512, baseType: !273, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !276, file: !6, line: 3382, baseType: !390, size: 896)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !6, line: 2652, size: 896, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !390, file: !6, line: 2653, baseType: !378, size: 384)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !390, file: !6, line: 2654, baseType: !273, size: 64, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !390, file: !6, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !390, file: !6, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !390, file: !6, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !390, file: !6, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !390, file: !6, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !390, file: !6, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !390, file: !6, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !390, file: !6, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !390, file: !6, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !390, file: !6, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !390, file: !6, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !390, file: !6, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !390, file: !6, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !390, file: !6, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !390, file: !6, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !390, file: !6, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !390, file: !6, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !390, file: !6, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !390, file: !6, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !390, file: !6, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !390, file: !6, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !390, file: !6, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !390, file: !6, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !390, file: !6, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !390, file: !6, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !390, file: !6, line: 2703, baseType: !7, size: 32, offset: 512)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !390, file: !6, line: 2705, baseType: !273, size: 64, offset: 576)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !390, file: !6, line: 2706, baseType: !273, size: 64, offset: 640)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !390, file: !6, line: 2707, baseType: !273, size: 64, offset: 704)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !390, file: !6, line: 2708, baseType: !273, size: 64, offset: 768)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !390, file: !6, line: 2711, baseType: !425, size: 64, offset: 832)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !6, line: 2711, flags: DIFlagFwdDecl)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !276, file: !6, line: 3383, baseType: !428, size: 960)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !6, line: 2756, size: 960, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !428, file: !6, line: 2757, baseType: !390, size: 896)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !428, file: !6, line: 2758, baseType: !432, size: 64, offset: 896)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !274, line: 50, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !274, line: 49, flags: DIFlagFwdDecl)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !276, file: !6, line: 3384, baseType: !436, size: 1472)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !6, line: 3114, size: 1472, elements: !437)
!437 = !{!438, !459, !460, !461, !462}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !436, file: !6, line: 3115, baseType: !439, size: 1216)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !6, line: 2984, size: 1216, elements: !440)
!440 = !{!441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !439, file: !6, line: 2985, baseType: !428, size: 960)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !439, file: !6, line: 2986, baseType: !273, size: 64, offset: 960)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !439, file: !6, line: 2987, baseType: !273, size: 64, offset: 1024)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !439, file: !6, line: 2988, baseType: !273, size: 64, offset: 1088)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !439, file: !6, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !439, file: !6, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !439, file: !6, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !439, file: !6, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !439, file: !6, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !439, file: !6, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !439, file: !6, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !439, file: !6, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !439, file: !6, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !439, file: !6, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !439, file: !6, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !439, file: !6, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !439, file: !6, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !439, file: !6, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !436, file: !6, line: 3117, baseType: !273, size: 64, offset: 1216)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !436, file: !6, line: 3119, baseType: !273, size: 64, offset: 1280)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !436, file: !6, line: 3121, baseType: !273, size: 64, offset: 1344)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !436, file: !6, line: 3123, baseType: !273, size: 64, offset: 1408)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !276, file: !6, line: 3385, baseType: !464, size: 1088)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !6, line: 2874, size: 1088, elements: !465)
!465 = !{!466, !467, !468}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !464, file: !6, line: 2875, baseType: !428, size: 960)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !464, file: !6, line: 2876, baseType: !432, size: 64, offset: 960)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !464, file: !6, line: 2877, baseType: !469, size: 64, offset: 1024)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !6, line: 2856, flags: DIFlagFwdDecl)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !276, file: !6, line: 3386, baseType: !439, size: 1216)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !276, file: !6, line: 3387, baseType: !473, size: 1280)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !6, line: 3093, size: 1280, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !473, file: !6, line: 3094, baseType: !439, size: 1216)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !473, file: !6, line: 3095, baseType: !469, size: 64, offset: 1216)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !276, file: !6, line: 3388, baseType: !478, size: 1216)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !6, line: 2824, size: 1216, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !478, file: !6, line: 2825, baseType: !390, size: 896)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !478, file: !6, line: 2827, baseType: !273, size: 64, offset: 896)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !478, file: !6, line: 2828, baseType: !273, size: 64, offset: 960)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !478, file: !6, line: 2829, baseType: !273, size: 64, offset: 1024)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !478, file: !6, line: 2830, baseType: !273, size: 64, offset: 1088)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !478, file: !6, line: 2831, baseType: !273, size: 64, offset: 1152)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !276, file: !6, line: 3389, baseType: !487, size: 1024)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !6, line: 2850, size: 1024, elements: !488)
!488 = !{!489, !490, !491}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !487, file: !6, line: 2851, baseType: !428, size: 960)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !487, file: !6, line: 2852, baseType: !260, size: 32, offset: 960)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !487, file: !6, line: 2853, baseType: !260, size: 32, offset: 992)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !276, file: !6, line: 3390, baseType: !493, size: 1024)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !6, line: 2857, size: 1024, elements: !494)
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !493, file: !6, line: 2858, baseType: !428, size: 960)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !493, file: !6, line: 2859, baseType: !469, size: 64, offset: 960)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !276, file: !6, line: 3391, baseType: !498, size: 960)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !6, line: 2862, size: 960, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !498, file: !6, line: 2863, baseType: !428, size: 960)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !276, file: !6, line: 3392, baseType: !502, size: 1472)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !6, line: 3304, size: 1472, elements: !503)
!503 = !{!504}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !502, file: !6, line: 3305, baseType: !436, size: 1472)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !276, file: !6, line: 3393, baseType: !506, size: 1792)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !6, line: 3248, size: 1792, elements: !507)
!507 = !{!508, !509, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !506, file: !6, line: 3249, baseType: !436, size: 1472)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !506, file: !6, line: 3251, baseType: !510, size: 64, offset: 1472)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !512, line: 463, size: 1152, elements: !513)
!512 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!513 = !{!514, !517, !835, !836, !839, !842, !892, !893, !894, !895, !896, !922, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !511, file: !512, line: 464, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !512, line: 464, flags: DIFlagFwdDecl)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !511, file: !512, line: 467, baseType: !518, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !202, line: 374, size: 640, elements: !520)
!520 = !{!521, !810, !811, !824, !825, !826, !827, !828, !829, !831, !833, !834}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !519, file: !202, line: 377, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !274, line: 111, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !202, line: 217, size: 832, elements: !525)
!525 = !{!526, !773, !774, !775, !778, !784, !785, !786, !804, !805, !806, !807, !808, !809}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !524, file: !202, line: 219, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !202, line: 151, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !202, line: 151, size: 128, elements: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !529, file: !202, line: 151, baseType: !532, size: 128)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !202, line: 150, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !202, line: 150, size: 128, elements: !534)
!534 = !{!535, !536, !537}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !533, file: !202, line: 150, baseType: !7, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !533, file: !202, line: 150, baseType: !7, size: 32, offset: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !533, file: !202, line: 150, baseType: !538, size: 64, offset: 64)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 64, elements: !356)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !274, line: 108, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !202, line: 122, size: 512, elements: !542)
!542 = !{!543, !544, !545, !765, !766, !767, !768, !769, !770, !771}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !541, file: !202, line: 124, baseType: !523, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !541, file: !202, line: 125, baseType: !523, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !541, file: !202, line: 131, baseType: !546, size: 64, offset: 128)
!546 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !202, line: 128, size: 64, elements: !547)
!547 = !{!548, !764}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !546, file: !202, line: 129, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !274, line: 66, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !552, line: 143, size: 192, elements: !553)
!552 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!553 = !{!554, !762, !763}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !551, file: !552, line: 145, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !274, line: 69, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !552, line: 136, size: 192, elements: !558)
!558 = !{!559, !760, !761}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !557, file: !552, line: 137, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !274, line: 58, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !552, line: 737, size: 768, elements: !563)
!563 = !{!564, !581, !615, !621, !626, !631, !638, !644, !650, !655, !669, !674, !680, !685, !695, !700, !718, !725, !732, !738, !743, !749, !755}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !562, file: !552, line: 738, baseType: !565, size: 256)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !552, line: 271, size: 256, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !565, file: !552, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !565, file: !552, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !565, file: !552, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !565, file: !552, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !565, file: !552, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !565, file: !552, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !565, file: !552, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !565, file: !552, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !565, file: !552, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !565, file: !552, line: 312, baseType: !7, size: 32, offset: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !565, file: !552, line: 316, baseType: !382, size: 32, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !565, file: !552, line: 319, baseType: !7, size: 32, offset: 96)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !565, file: !552, line: 323, baseType: !523, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !565, file: !552, line: 327, baseType: !273, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !562, file: !552, line: 739, baseType: !582, size: 448)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !552, line: 350, size: 448, elements: !583)
!583 = !{!584, !613}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !582, file: !552, line: 353, baseType: !585, size: 384)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !552, line: 333, size: 384, elements: !586)
!586 = !{!587, !588, !596}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !585, file: !552, line: 336, baseType: !565, size: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !585, file: !552, line: 343, baseType: !589, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !591, line: 37, size: 128, elements: !592)
!591 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !590, file: !591, line: 39, baseType: !589, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !590, file: !591, line: 40, baseType: !595, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !585, file: !552, line: 344, baseType: !597, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !591, line: 45, size: 320, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !598, file: !591, line: 47, baseType: !597, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !598, file: !591, line: 48, baseType: !602, size: 256, offset: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !6, line: 1883, size: 256, elements: !603)
!603 = !{!604, !606, !607, !612}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !602, file: !6, line: 1884, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !602, file: !6, line: 1885, baseType: !605, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !602, file: !6, line: 1891, baseType: !608, size: 64, offset: 128)
!608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !602, file: !6, line: 1891, size: 64, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !608, file: !6, line: 1891, baseType: !560, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !608, file: !6, line: 1891, baseType: !273, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !602, file: !6, line: 1892, baseType: !595, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !582, file: !552, line: 359, baseType: !614, size: 64, offset: 384)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 64, elements: !356)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !562, file: !552, line: 740, baseType: !616, size: 512)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !552, line: 365, size: 512, elements: !617)
!617 = !{!618, !619, !620}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !616, file: !552, line: 368, baseType: !585, size: 384)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !616, file: !552, line: 373, baseType: !273, size: 64, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !616, file: !552, line: 374, baseType: !273, size: 64, offset: 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !562, file: !552, line: 741, baseType: !622, size: 576)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !552, line: 380, size: 576, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !622, file: !552, line: 383, baseType: !616, size: 512)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !622, file: !552, line: 389, baseType: !614, size: 64, offset: 512)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !562, file: !552, line: 742, baseType: !627, size: 320)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !552, line: 395, size: 320, elements: !628)
!628 = !{!629, !630}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !627, file: !552, line: 397, baseType: !565, size: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !627, file: !552, line: 400, baseType: !549, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !562, file: !552, line: 743, baseType: !632, size: 448)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !552, line: 406, size: 448, elements: !633)
!633 = !{!634, !635, !636, !637}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !632, file: !552, line: 408, baseType: !565, size: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !632, file: !552, line: 412, baseType: !273, size: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !632, file: !552, line: 420, baseType: !273, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !632, file: !552, line: 423, baseType: !549, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !562, file: !552, line: 744, baseType: !639, size: 384)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !552, line: 429, size: 384, elements: !640)
!640 = !{!641, !642, !643}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !639, file: !552, line: 431, baseType: !565, size: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !639, file: !552, line: 434, baseType: !273, size: 64, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !639, file: !552, line: 437, baseType: !549, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !562, file: !552, line: 745, baseType: !645, size: 384)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !552, line: 443, size: 384, elements: !646)
!646 = !{!647, !648, !649}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !645, file: !552, line: 445, baseType: !565, size: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !645, file: !552, line: 449, baseType: !273, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !645, file: !552, line: 453, baseType: !549, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !562, file: !552, line: 746, baseType: !651, size: 320)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !552, line: 459, size: 320, elements: !652)
!652 = !{!653, !654}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !651, file: !552, line: 461, baseType: !565, size: 256)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !651, file: !552, line: 464, baseType: !273, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !562, file: !552, line: 747, baseType: !656, size: 768)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !552, line: 469, size: 768, elements: !657)
!657 = !{!658, !659, !660, !661, !662}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !656, file: !552, line: 471, baseType: !565, size: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !656, file: !552, line: 474, baseType: !7, size: 32, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !656, file: !552, line: 475, baseType: !7, size: 32, offset: 288)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !656, file: !552, line: 478, baseType: !273, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !656, file: !552, line: 481, baseType: !663, size: 384, offset: 384)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 384, elements: !356)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !6, line: 1917, size: 384, elements: !665)
!665 = !{!666, !667, !668}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !664, file: !6, line: 1920, baseType: !602, size: 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !664, file: !6, line: 1921, baseType: !273, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !664, file: !6, line: 1922, baseType: !382, size: 32, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !562, file: !552, line: 748, baseType: !670, size: 320)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !552, line: 487, size: 320, elements: !671)
!671 = !{!672, !673}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !670, file: !552, line: 490, baseType: !565, size: 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !670, file: !552, line: 494, baseType: !260, size: 32, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !562, file: !552, line: 749, baseType: !675, size: 384)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !552, line: 500, size: 384, elements: !676)
!676 = !{!677, !678, !679}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !675, file: !552, line: 502, baseType: !565, size: 256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !675, file: !552, line: 506, baseType: !549, size: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !675, file: !552, line: 510, baseType: !549, size: 64, offset: 320)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !562, file: !552, line: 750, baseType: !681, size: 320)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !552, line: 529, size: 320, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !681, file: !552, line: 531, baseType: !565, size: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !681, file: !552, line: 540, baseType: !549, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !562, file: !552, line: 751, baseType: !686, size: 704)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !552, line: 546, size: 704, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !686, file: !552, line: 549, baseType: !616, size: 512)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !686, file: !552, line: 553, baseType: !265, size: 64, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !686, file: !552, line: 557, baseType: !259, size: 8, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !686, file: !552, line: 558, baseType: !259, size: 8, offset: 584)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !686, file: !552, line: 559, baseType: !259, size: 8, offset: 592)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !686, file: !552, line: 560, baseType: !259, size: 8, offset: 600)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !686, file: !552, line: 566, baseType: !614, size: 64, offset: 640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !562, file: !552, line: 752, baseType: !696, size: 384)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !552, line: 571, size: 384, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !696, file: !552, line: 573, baseType: !627, size: 320)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !696, file: !552, line: 577, baseType: !273, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !562, file: !552, line: 753, baseType: !701, size: 576)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !552, line: 600, size: 576, elements: !702)
!702 = !{!703, !704, !705, !708, !717}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !701, file: !552, line: 602, baseType: !627, size: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !701, file: !552, line: 605, baseType: !273, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !701, file: !552, line: 609, baseType: !706, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !707, line: 46, baseType: !327)
!707 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!708 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !701, file: !552, line: 612, baseType: !709, size: 64, offset: 448)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !552, line: 581, size: 320, elements: !711)
!711 = !{!712, !713, !714, !715, !716}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !710, file: !552, line: 583, baseType: !5, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !710, file: !552, line: 586, baseType: !273, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !710, file: !552, line: 589, baseType: !273, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !710, file: !552, line: 592, baseType: !273, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !710, file: !552, line: 595, baseType: !273, size: 64, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !701, file: !552, line: 616, baseType: !549, size: 64, offset: 512)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !562, file: !552, line: 754, baseType: !719, size: 512)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !552, line: 622, size: 512, elements: !720)
!720 = !{!721, !722, !723, !724}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !719, file: !552, line: 624, baseType: !627, size: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !719, file: !552, line: 628, baseType: !273, size: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !719, file: !552, line: 632, baseType: !273, size: 64, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !719, file: !552, line: 636, baseType: !273, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !562, file: !552, line: 755, baseType: !726, size: 704)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !552, line: 642, size: 704, elements: !727)
!727 = !{!728, !729, !730, !731}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !726, file: !552, line: 644, baseType: !719, size: 512)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !726, file: !552, line: 648, baseType: !273, size: 64, offset: 512)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !726, file: !552, line: 652, baseType: !273, size: 64, offset: 576)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !726, file: !552, line: 653, baseType: !273, size: 64, offset: 640)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !562, file: !552, line: 756, baseType: !733, size: 448)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !552, line: 663, size: 448, elements: !734)
!734 = !{!735, !736, !737}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !733, file: !552, line: 665, baseType: !627, size: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !733, file: !552, line: 668, baseType: !273, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !733, file: !552, line: 673, baseType: !273, size: 64, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !562, file: !552, line: 757, baseType: !739, size: 384)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !552, line: 694, size: 384, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !739, file: !552, line: 696, baseType: !627, size: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !739, file: !552, line: 699, baseType: !273, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !562, file: !552, line: 758, baseType: !744, size: 384)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !552, line: 681, size: 384, elements: !745)
!745 = !{!746, !747, !748}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !744, file: !552, line: 683, baseType: !565, size: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !744, file: !552, line: 686, baseType: !273, size: 64, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !744, file: !552, line: 689, baseType: !273, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !562, file: !552, line: 759, baseType: !750, size: 384)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !552, line: 707, size: 384, elements: !751)
!751 = !{!752, !753, !754}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !750, file: !552, line: 709, baseType: !565, size: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !750, file: !552, line: 712, baseType: !273, size: 64, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !750, file: !552, line: 712, baseType: !273, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !562, file: !552, line: 760, baseType: !756, size: 320)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !552, line: 718, size: 320, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !756, file: !552, line: 720, baseType: !565, size: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !756, file: !552, line: 723, baseType: !273, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !557, file: !552, line: 138, baseType: !556, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !557, file: !552, line: 139, baseType: !556, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !551, file: !552, line: 146, baseType: !555, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !551, file: !552, line: 152, baseType: !549, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !546, file: !202, line: 130, baseType: !432, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !541, file: !202, line: 134, baseType: !264, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !541, file: !202, line: 137, baseType: !273, size: 64, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !541, file: !202, line: 138, baseType: !382, size: 32, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !541, file: !202, line: 142, baseType: !7, size: 32, offset: 352)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !541, file: !202, line: 144, baseType: !260, size: 32, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !541, file: !202, line: 145, baseType: !260, size: 32, offset: 416)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !541, file: !202, line: 146, baseType: !772, size: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !202, line: 119, baseType: !329)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !524, file: !202, line: 220, baseType: !527, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !524, file: !202, line: 223, baseType: !264, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !524, file: !202, line: 226, baseType: !776, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !202, line: 185, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !524, file: !202, line: 229, baseType: !779, size: 128, offset: 256)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !780, size: 128, elements: !782)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !202, line: 229, flags: DIFlagFwdDecl)
!782 = !{!783}
!783 = !DISubrange(count: 2)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !524, file: !202, line: 232, baseType: !523, size: 64, offset: 384)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !524, file: !202, line: 233, baseType: !523, size: 64, offset: 448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !524, file: !202, line: 238, baseType: !787, size: 64, offset: 512)
!787 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !202, line: 235, size: 64, elements: !788)
!788 = !{!789, !795}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !787, file: !202, line: 236, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !202, line: 273, size: 128, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !791, file: !202, line: 275, baseType: !549, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !791, file: !202, line: 278, baseType: !549, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !787, file: !202, line: 237, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !202, line: 259, size: 320, elements: !798)
!798 = !{!799, !800, !801, !802, !803}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !797, file: !202, line: 261, baseType: !432, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !797, file: !202, line: 262, baseType: !432, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !797, file: !202, line: 266, baseType: !432, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !797, file: !202, line: 267, baseType: !432, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !797, file: !202, line: 270, baseType: !260, size: 32, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !524, file: !202, line: 241, baseType: !772, size: 64, offset: 576)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !524, file: !202, line: 244, baseType: !260, size: 32, offset: 640)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !524, file: !202, line: 247, baseType: !260, size: 32, offset: 672)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !524, file: !202, line: 250, baseType: !260, size: 32, offset: 704)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !524, file: !202, line: 253, baseType: !260, size: 32, offset: 736)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !524, file: !202, line: 256, baseType: !260, size: 32, offset: 768)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !519, file: !202, line: 378, baseType: !522, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !519, file: !202, line: 381, baseType: !812, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !202, line: 282, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !202, line: 282, size: 128, elements: !815)
!815 = !{!816}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !814, file: !202, line: 282, baseType: !817, size: 128)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !202, line: 281, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !202, line: 281, size: 128, elements: !819)
!819 = !{!820, !821, !822}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !818, file: !202, line: 281, baseType: !7, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !818, file: !202, line: 281, baseType: !7, size: 32, offset: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !818, file: !202, line: 281, baseType: !823, size: 64, offset: 64)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 64, elements: !356)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !519, file: !202, line: 384, baseType: !260, size: 32, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !519, file: !202, line: 387, baseType: !260, size: 32, offset: 224)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !519, file: !202, line: 390, baseType: !260, size: 32, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !519, file: !202, line: 394, baseType: !812, size: 64, offset: 320)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !519, file: !202, line: 396, baseType: !201, size: 32, offset: 384)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !519, file: !202, line: 399, baseType: !830, size: 64, offset: 416)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 64, elements: !782)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !519, file: !202, line: 402, baseType: !832, size: 64, offset: 480)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !782)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !519, file: !202, line: 406, baseType: !260, size: 32, offset: 544)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !519, file: !202, line: 409, baseType: !260, size: 32, offset: 576)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !511, file: !512, line: 470, baseType: !550, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !511, file: !512, line: 473, baseType: !837, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !512, line: 166, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !511, file: !512, line: 476, baseType: !840, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !512, line: 476, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !511, file: !512, line: 479, baseType: !843, size: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !844, line: 144, baseType: !845)
!844 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !844, line: 100, size: 896, elements: !847)
!847 = !{!848, !856, !861, !866, !868, !869, !870, !871, !872, !873, !878, !880, !881, !886, !891}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !846, file: !844, line: 102, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !844, line: 52, baseType: !850)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !844, line: 47, baseType: !7)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !846, file: !844, line: 105, baseType: !857, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !844, line: 59, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!260, !854, !854}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !846, file: !844, line: 108, baseType: !862, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !844, line: 63, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !264}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !846, file: !844, line: 111, baseType: !867, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !846, file: !844, line: 114, baseType: !706, size: 64, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !846, file: !844, line: 117, baseType: !706, size: 64, offset: 320)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !846, file: !844, line: 120, baseType: !706, size: 64, offset: 384)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !846, file: !844, line: 124, baseType: !7, size: 32, offset: 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !846, file: !844, line: 128, baseType: !7, size: 32, offset: 480)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !846, file: !844, line: 131, baseType: !874, size: 64, offset: 512)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !844, line: 75, baseType: !875)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!264, !706, !706}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !846, file: !844, line: 132, baseType: !879, size: 64, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !844, line: 78, baseType: !863)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !846, file: !844, line: 135, baseType: !264, size: 64, offset: 640)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !846, file: !844, line: 136, baseType: !882, size: 64, offset: 704)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !844, line: 82, baseType: !883)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!264, !264, !706, !706}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !846, file: !844, line: 137, baseType: !887, size: 64, offset: 768)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !844, line: 83, baseType: !888)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !264, !264}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !846, file: !844, line: 141, baseType: !7, size: 32, offset: 832)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !511, file: !512, line: 484, baseType: !273, size: 64, offset: 384)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !511, file: !512, line: 488, baseType: !273, size: 64, offset: 448)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !511, file: !512, line: 493, baseType: !273, size: 64, offset: 512)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !511, file: !512, line: 496, baseType: !273, size: 64, offset: 576)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !511, file: !512, line: 501, baseType: !897, size: 64, offset: 640)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !213, line: 2355, size: 576, elements: !899)
!899 = !{!900, !903, !904, !905, !906, !910, !911, !916, !917, !918, !919, !920, !921}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !898, file: !213, line: 2356, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !213, line: 2356, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !898, file: !213, line: 2357, baseType: !265, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !898, file: !213, line: 2358, baseType: !260, size: 32, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !898, file: !213, line: 2359, baseType: !260, size: 32, offset: 160)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !898, file: !213, line: 2360, baseType: !907, size: 128, offset: 192)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 128, elements: !908)
!908 = !{!909}
!909 = !DISubrange(count: 4)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !898, file: !213, line: 2364, baseType: !260, size: 32, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !898, file: !213, line: 2367, baseType: !912, size: 128, offset: 384)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !213, line: 2349, size: 128, elements: !913)
!913 = !{!914, !915}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !912, file: !213, line: 2351, baseType: !432, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !912, file: !213, line: 2352, baseType: !329, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !898, file: !213, line: 2371, baseType: !212, size: 32, offset: 512)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !898, file: !213, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !898, file: !213, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !898, file: !213, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !898, file: !213, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !898, file: !213, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !511, file: !512, line: 504, baseType: !923, size: 64, offset: 704)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !512, line: 504, flags: DIFlagFwdDecl)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !511, file: !512, line: 507, baseType: !843, size: 64, offset: 768)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !511, file: !512, line: 510, baseType: !260, size: 32, offset: 832)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !511, file: !512, line: 513, baseType: !260, size: 32, offset: 864)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !511, file: !512, line: 516, baseType: !382, size: 32, offset: 896)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !511, file: !512, line: 519, baseType: !382, size: 32, offset: 928)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !511, file: !512, line: 522, baseType: !7, size: 32, offset: 960)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !511, file: !512, line: 523, baseType: !7, size: 32, offset: 992)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !511, file: !512, line: 528, baseType: !265, size: 64, offset: 1024)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !511, file: !512, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !511, file: !512, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !511, file: !512, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !511, file: !512, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !511, file: !512, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !511, file: !512, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !511, file: !512, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !511, file: !512, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !511, file: !512, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !511, file: !512, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !511, file: !512, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !511, file: !512, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !511, file: !512, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !511, file: !512, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !511, file: !512, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !511, file: !512, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !506, file: !6, line: 3254, baseType: !273, size: 64, offset: 1536)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !506, file: !6, line: 3257, baseType: !273, size: 64, offset: 1600)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !506, file: !6, line: 3258, baseType: !273, size: 64, offset: 1664)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !506, file: !6, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !506, file: !6, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !506, file: !6, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !506, file: !6, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !506, file: !6, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !506, file: !6, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !506, file: !6, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !506, file: !6, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !506, file: !6, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !506, file: !6, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !506, file: !6, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !506, file: !6, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !506, file: !6, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !506, file: !6, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !506, file: !6, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !506, file: !6, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !506, file: !6, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !506, file: !6, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !276, file: !6, line: 3394, baseType: !971, size: 1344)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !6, line: 2279, size: 1344, elements: !972)
!972 = !{!973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !998, !999, !1000, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !971, file: !6, line: 2280, baseType: !312, size: 192)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !971, file: !6, line: 2281, baseType: !273, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !971, file: !6, line: 2282, baseType: !273, size: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !971, file: !6, line: 2283, baseType: !273, size: 64, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !971, file: !6, line: 2284, baseType: !273, size: 64, offset: 384)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !971, file: !6, line: 2285, baseType: !7, size: 32, offset: 448)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !971, file: !6, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !971, file: !6, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !971, file: !6, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !971, file: !6, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !971, file: !6, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !971, file: !6, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !971, file: !6, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !971, file: !6, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !971, file: !6, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !971, file: !6, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !971, file: !6, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !971, file: !6, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !971, file: !6, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !971, file: !6, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !971, file: !6, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !971, file: !6, line: 2305, baseType: !7, size: 32, offset: 512)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !971, file: !6, line: 2306, baseType: !996, size: 32, offset: 544)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !997, line: 31, baseType: !260)
!997 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!998 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !971, file: !6, line: 2307, baseType: !273, size: 64, offset: 576)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !971, file: !6, line: 2308, baseType: !273, size: 64, offset: 640)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !971, file: !6, line: 2314, baseType: !1001, size: 64, offset: 704)
!1001 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !6, line: 2309, size: 64, elements: !1002)
!1002 = !{!1003, !1004, !1005}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1001, file: !6, line: 2310, baseType: !260, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1001, file: !6, line: 2311, baseType: !265, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1001, file: !6, line: 2312, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !6, line: 2277, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !971, file: !6, line: 2315, baseType: !273, size: 64, offset: 768)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !971, file: !6, line: 2316, baseType: !273, size: 64, offset: 832)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !971, file: !6, line: 2317, baseType: !273, size: 64, offset: 896)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !971, file: !6, line: 2318, baseType: !273, size: 64, offset: 960)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !971, file: !6, line: 2319, baseType: !273, size: 64, offset: 1024)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !971, file: !6, line: 2320, baseType: !273, size: 64, offset: 1088)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !971, file: !6, line: 2321, baseType: !273, size: 64, offset: 1152)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !971, file: !6, line: 2322, baseType: !273, size: 64, offset: 1216)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !971, file: !6, line: 2324, baseType: !1017, size: 64, offset: 1280)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !6, line: 2324, flags: DIFlagFwdDecl)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !276, file: !6, line: 3395, baseType: !1020, size: 320)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !6, line: 1469, size: 320, elements: !1021)
!1021 = !{!1022, !1023, !1024}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1020, file: !6, line: 1470, baseType: !312, size: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1020, file: !6, line: 1471, baseType: !273, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1020, file: !6, line: 1472, baseType: !273, size: 64, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !276, file: !6, line: 3396, baseType: !1026, size: 320)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !6, line: 1482, size: 320, elements: !1027)
!1027 = !{!1028, !1029, !1030}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1026, file: !6, line: 1483, baseType: !312, size: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1026, file: !6, line: 1484, baseType: !260, size: 32, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1026, file: !6, line: 1485, baseType: !614, size: 64, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !276, file: !6, line: 3397, baseType: !1032, size: 384)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !6, line: 1829, size: 384, elements: !1033)
!1033 = !{!1034, !1035, !1036, !1037}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1032, file: !6, line: 1830, baseType: !312, size: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1032, file: !6, line: 1831, baseType: !382, size: 32, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1032, file: !6, line: 1832, baseType: !273, size: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1032, file: !6, line: 1835, baseType: !614, size: 64, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !276, file: !6, line: 3398, baseType: !1039, size: 704)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !6, line: 1898, size: 704, elements: !1040)
!1040 = !{!1041, !1042, !1043, !1044, !1045, !1048}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1039, file: !6, line: 1899, baseType: !312, size: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1039, file: !6, line: 1902, baseType: !273, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1039, file: !6, line: 1905, baseType: !560, size: 64, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1039, file: !6, line: 1908, baseType: !7, size: 32, offset: 320)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1039, file: !6, line: 1911, baseType: !1046, size: 64, offset: 384)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !6, line: 1876, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1039, file: !6, line: 1914, baseType: !602, size: 256, offset: 448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !276, file: !6, line: 3399, baseType: !1050, size: 704)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !6, line: 2008, size: 704, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1069, !1070, !1071, !1072, !1073}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1050, file: !6, line: 2009, baseType: !312, size: 192)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1050, file: !6, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1050, file: !6, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1050, file: !6, line: 2014, baseType: !382, size: 32, offset: 224)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1050, file: !6, line: 2016, baseType: !273, size: 64, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1050, file: !6, line: 2017, baseType: !1058, size: 64, offset: 320)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !6, line: 183, baseType: !1060)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !6, line: 183, size: 128, elements: !1061)
!1061 = !{!1062}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1060, file: !6, line: 183, baseType: !1063, size: 128)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !6, line: 182, baseType: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !6, line: 182, size: 128, elements: !1065)
!1065 = !{!1066, !1067, !1068}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1064, file: !6, line: 182, baseType: !7, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1064, file: !6, line: 182, baseType: !7, size: 32, offset: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1064, file: !6, line: 182, baseType: !614, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1050, file: !6, line: 2019, baseType: !273, size: 64, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1050, file: !6, line: 2020, baseType: !273, size: 64, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1050, file: !6, line: 2021, baseType: !273, size: 64, offset: 512)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1050, file: !6, line: 2022, baseType: !273, size: 64, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1050, file: !6, line: 2023, baseType: !273, size: 64, offset: 640)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !276, file: !6, line: 3400, baseType: !1075, size: 832)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !6, line: 2430, size: 832, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1075, file: !6, line: 2431, baseType: !312, size: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1075, file: !6, line: 2433, baseType: !273, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1075, file: !6, line: 2434, baseType: !273, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1075, file: !6, line: 2435, baseType: !273, size: 64, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1075, file: !6, line: 2436, baseType: !273, size: 64, offset: 384)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1075, file: !6, line: 2437, baseType: !1058, size: 64, offset: 448)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1075, file: !6, line: 2438, baseType: !273, size: 64, offset: 512)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1075, file: !6, line: 2440, baseType: !273, size: 64, offset: 576)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1075, file: !6, line: 2441, baseType: !273, size: 64, offset: 640)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1075, file: !6, line: 2443, baseType: !1087, size: 128, offset: 704)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !6, line: 182, baseType: !1088)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !6, line: 182, size: 128, elements: !1089)
!1089 = !{!1090}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1088, file: !6, line: 182, baseType: !1063, size: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !276, file: !6, line: 3401, baseType: !1092, size: 320)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !6, line: 3327, size: 320, elements: !1093)
!1093 = !{!1094, !1095, !1096}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1092, file: !6, line: 3329, baseType: !312, size: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1092, file: !6, line: 3330, baseType: !267, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1092, file: !6, line: 3331, baseType: !267, size: 64, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !276, file: !6, line: 3402, baseType: !1098, size: 256)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !6, line: 1540, size: 256, elements: !1099)
!1099 = !{!1100, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1098, file: !6, line: 1541, baseType: !312, size: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1098, file: !6, line: 1542, baseType: !1102, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !6, line: 1538, baseType: !1104)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !6, line: 1538, size: 192, elements: !1105)
!1105 = !{!1106}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1104, file: !6, line: 1538, baseType: !1107, size: 192)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !6, line: 1537, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !6, line: 1537, size: 192, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1108, file: !6, line: 1537, baseType: !7, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1108, file: !6, line: 1537, baseType: !7, size: 32, offset: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1108, file: !6, line: 1537, baseType: !1113, size: 128, offset: 64)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1114, size: 128, elements: !356)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !6, line: 1535, baseType: !1115)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !6, line: 1532, size: 128, elements: !1116)
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1115, file: !6, line: 1533, baseType: !273, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1115, file: !6, line: 1534, baseType: !273, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !276, file: !6, line: 3403, baseType: !1120, size: 512)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !6, line: 1938, size: 512, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1125, !1131, !1132, !1133}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1120, file: !6, line: 1939, baseType: !312, size: 192)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1120, file: !6, line: 1940, baseType: !382, size: 32, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1120, file: !6, line: 1941, baseType: !217, size: 32, offset: 224)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1120, file: !6, line: 1946, baseType: !1126, size: 32, offset: 256)
!1126 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !6, line: 1942, size: 32, elements: !1127)
!1127 = !{!1128, !1129, !1130}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1126, file: !6, line: 1943, baseType: !235, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1126, file: !6, line: 1944, baseType: !242, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1126, file: !6, line: 1945, baseType: !5, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1120, file: !6, line: 1950, baseType: !549, size: 64, offset: 320)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1120, file: !6, line: 1951, baseType: !549, size: 64, offset: 384)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1120, file: !6, line: 1953, baseType: !614, size: 64, offset: 448)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !276, file: !6, line: 3404, baseType: !1135, size: 1664)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !6, line: 3337, size: 1664, elements: !1136)
!1136 = !{!1137, !1138}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1135, file: !6, line: 3338, baseType: !312, size: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1135, file: !6, line: 3341, baseType: !1139, size: 1472, offset: 192)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1140, line: 410, size: 1472, elements: !1141)
!1140 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1139, file: !1140, line: 412, baseType: !260, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1139, file: !1140, line: 413, baseType: !260, size: 32, offset: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1139, file: !1140, line: 414, baseType: !260, size: 32, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1139, file: !1140, line: 415, baseType: !260, size: 32, offset: 96)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1139, file: !1140, line: 416, baseType: !260, size: 32, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1139, file: !1140, line: 417, baseType: !260, size: 32, offset: 160)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1139, file: !1140, line: 418, baseType: !259, size: 8, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1139, file: !1140, line: 419, baseType: !259, size: 8, offset: 200)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1139, file: !1140, line: 420, baseType: !1151, size: 8, offset: 208)
!1151 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1139, file: !1140, line: 421, baseType: !1151, size: 8, offset: 216)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1139, file: !1140, line: 422, baseType: !1151, size: 8, offset: 224)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1139, file: !1140, line: 423, baseType: !1151, size: 8, offset: 232)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1139, file: !1140, line: 424, baseType: !1151, size: 8, offset: 240)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1139, file: !1140, line: 425, baseType: !1151, size: 8, offset: 248)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1139, file: !1140, line: 426, baseType: !1151, size: 8, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1139, file: !1140, line: 427, baseType: !1151, size: 8, offset: 264)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1139, file: !1140, line: 428, baseType: !1151, size: 8, offset: 272)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1139, file: !1140, line: 429, baseType: !1151, size: 8, offset: 280)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1139, file: !1140, line: 430, baseType: !1151, size: 8, offset: 288)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1139, file: !1140, line: 431, baseType: !1151, size: 8, offset: 296)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1139, file: !1140, line: 432, baseType: !1151, size: 8, offset: 304)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1139, file: !1140, line: 433, baseType: !1151, size: 8, offset: 312)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1139, file: !1140, line: 434, baseType: !1151, size: 8, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1139, file: !1140, line: 435, baseType: !1151, size: 8, offset: 328)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1139, file: !1140, line: 436, baseType: !1151, size: 8, offset: 336)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1139, file: !1140, line: 437, baseType: !1151, size: 8, offset: 344)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1139, file: !1140, line: 438, baseType: !1151, size: 8, offset: 352)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1139, file: !1140, line: 439, baseType: !1151, size: 8, offset: 360)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1139, file: !1140, line: 440, baseType: !1151, size: 8, offset: 368)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1139, file: !1140, line: 441, baseType: !1151, size: 8, offset: 376)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1139, file: !1140, line: 442, baseType: !1151, size: 8, offset: 384)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1139, file: !1140, line: 443, baseType: !1151, size: 8, offset: 392)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1139, file: !1140, line: 444, baseType: !1151, size: 8, offset: 400)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1139, file: !1140, line: 445, baseType: !1151, size: 8, offset: 408)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1139, file: !1140, line: 446, baseType: !1151, size: 8, offset: 416)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1139, file: !1140, line: 447, baseType: !1151, size: 8, offset: 424)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1139, file: !1140, line: 448, baseType: !1151, size: 8, offset: 432)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1139, file: !1140, line: 449, baseType: !1151, size: 8, offset: 440)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1139, file: !1140, line: 450, baseType: !1151, size: 8, offset: 448)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1139, file: !1140, line: 451, baseType: !1151, size: 8, offset: 456)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1139, file: !1140, line: 452, baseType: !1151, size: 8, offset: 464)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1139, file: !1140, line: 453, baseType: !1151, size: 8, offset: 472)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1139, file: !1140, line: 454, baseType: !1151, size: 8, offset: 480)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1139, file: !1140, line: 455, baseType: !1151, size: 8, offset: 488)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1139, file: !1140, line: 456, baseType: !1151, size: 8, offset: 496)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1139, file: !1140, line: 457, baseType: !1151, size: 8, offset: 504)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1139, file: !1140, line: 458, baseType: !1151, size: 8, offset: 512)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1139, file: !1140, line: 459, baseType: !1151, size: 8, offset: 520)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1139, file: !1140, line: 460, baseType: !1151, size: 8, offset: 528)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1139, file: !1140, line: 461, baseType: !1151, size: 8, offset: 536)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1139, file: !1140, line: 462, baseType: !1151, size: 8, offset: 544)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1139, file: !1140, line: 463, baseType: !1151, size: 8, offset: 552)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1139, file: !1140, line: 464, baseType: !1151, size: 8, offset: 560)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1139, file: !1140, line: 465, baseType: !1151, size: 8, offset: 568)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1139, file: !1140, line: 466, baseType: !1151, size: 8, offset: 576)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1139, file: !1140, line: 467, baseType: !1151, size: 8, offset: 584)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1139, file: !1140, line: 468, baseType: !1151, size: 8, offset: 592)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1139, file: !1140, line: 469, baseType: !1151, size: 8, offset: 600)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1139, file: !1140, line: 470, baseType: !1151, size: 8, offset: 608)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1139, file: !1140, line: 471, baseType: !1151, size: 8, offset: 616)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1139, file: !1140, line: 472, baseType: !1151, size: 8, offset: 624)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1139, file: !1140, line: 473, baseType: !1151, size: 8, offset: 632)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1139, file: !1140, line: 474, baseType: !1151, size: 8, offset: 640)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1139, file: !1140, line: 475, baseType: !1151, size: 8, offset: 648)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1139, file: !1140, line: 476, baseType: !1151, size: 8, offset: 656)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1139, file: !1140, line: 477, baseType: !1151, size: 8, offset: 664)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1139, file: !1140, line: 478, baseType: !1151, size: 8, offset: 672)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1139, file: !1140, line: 479, baseType: !1151, size: 8, offset: 680)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1139, file: !1140, line: 480, baseType: !1151, size: 8, offset: 688)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1139, file: !1140, line: 481, baseType: !1151, size: 8, offset: 696)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1139, file: !1140, line: 482, baseType: !1151, size: 8, offset: 704)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1139, file: !1140, line: 483, baseType: !1151, size: 8, offset: 712)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1139, file: !1140, line: 484, baseType: !1151, size: 8, offset: 720)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1139, file: !1140, line: 485, baseType: !1151, size: 8, offset: 728)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1139, file: !1140, line: 486, baseType: !1151, size: 8, offset: 736)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1139, file: !1140, line: 487, baseType: !1151, size: 8, offset: 744)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1139, file: !1140, line: 488, baseType: !1151, size: 8, offset: 752)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1139, file: !1140, line: 489, baseType: !1151, size: 8, offset: 760)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1139, file: !1140, line: 490, baseType: !1151, size: 8, offset: 768)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1139, file: !1140, line: 491, baseType: !1151, size: 8, offset: 776)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1139, file: !1140, line: 492, baseType: !1151, size: 8, offset: 784)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1139, file: !1140, line: 493, baseType: !1151, size: 8, offset: 792)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1139, file: !1140, line: 494, baseType: !1151, size: 8, offset: 800)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1139, file: !1140, line: 495, baseType: !1151, size: 8, offset: 808)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1139, file: !1140, line: 496, baseType: !1151, size: 8, offset: 816)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1139, file: !1140, line: 497, baseType: !1151, size: 8, offset: 824)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1139, file: !1140, line: 498, baseType: !1151, size: 8, offset: 832)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1139, file: !1140, line: 499, baseType: !1151, size: 8, offset: 840)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1139, file: !1140, line: 500, baseType: !1151, size: 8, offset: 848)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1139, file: !1140, line: 501, baseType: !1151, size: 8, offset: 856)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1139, file: !1140, line: 502, baseType: !1151, size: 8, offset: 864)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1139, file: !1140, line: 503, baseType: !1151, size: 8, offset: 872)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1139, file: !1140, line: 504, baseType: !1151, size: 8, offset: 880)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1139, file: !1140, line: 505, baseType: !1151, size: 8, offset: 888)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1139, file: !1140, line: 506, baseType: !1151, size: 8, offset: 896)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1139, file: !1140, line: 507, baseType: !1151, size: 8, offset: 904)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1139, file: !1140, line: 508, baseType: !1151, size: 8, offset: 912)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1139, file: !1140, line: 509, baseType: !1151, size: 8, offset: 920)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1139, file: !1140, line: 510, baseType: !1151, size: 8, offset: 928)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1139, file: !1140, line: 511, baseType: !1151, size: 8, offset: 936)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1139, file: !1140, line: 512, baseType: !1151, size: 8, offset: 944)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1139, file: !1140, line: 513, baseType: !1151, size: 8, offset: 952)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1139, file: !1140, line: 514, baseType: !1151, size: 8, offset: 960)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1139, file: !1140, line: 515, baseType: !1151, size: 8, offset: 968)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1139, file: !1140, line: 516, baseType: !1151, size: 8, offset: 976)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1139, file: !1140, line: 517, baseType: !1151, size: 8, offset: 984)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1139, file: !1140, line: 518, baseType: !1151, size: 8, offset: 992)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1139, file: !1140, line: 519, baseType: !1151, size: 8, offset: 1000)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1139, file: !1140, line: 520, baseType: !1151, size: 8, offset: 1008)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1139, file: !1140, line: 521, baseType: !1151, size: 8, offset: 1016)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1139, file: !1140, line: 522, baseType: !1151, size: 8, offset: 1024)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1139, file: !1140, line: 523, baseType: !1151, size: 8, offset: 1032)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1139, file: !1140, line: 524, baseType: !1151, size: 8, offset: 1040)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1139, file: !1140, line: 525, baseType: !1151, size: 8, offset: 1048)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1139, file: !1140, line: 526, baseType: !1151, size: 8, offset: 1056)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1139, file: !1140, line: 527, baseType: !1151, size: 8, offset: 1064)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1139, file: !1140, line: 528, baseType: !1151, size: 8, offset: 1072)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1139, file: !1140, line: 529, baseType: !1151, size: 8, offset: 1080)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1139, file: !1140, line: 530, baseType: !1151, size: 8, offset: 1088)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1139, file: !1140, line: 531, baseType: !1151, size: 8, offset: 1096)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1139, file: !1140, line: 532, baseType: !1151, size: 8, offset: 1104)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1139, file: !1140, line: 533, baseType: !1151, size: 8, offset: 1112)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1139, file: !1140, line: 534, baseType: !1151, size: 8, offset: 1120)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1139, file: !1140, line: 535, baseType: !1151, size: 8, offset: 1128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1139, file: !1140, line: 536, baseType: !1151, size: 8, offset: 1136)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1139, file: !1140, line: 537, baseType: !1151, size: 8, offset: 1144)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1139, file: !1140, line: 538, baseType: !1151, size: 8, offset: 1152)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1139, file: !1140, line: 539, baseType: !1151, size: 8, offset: 1160)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1139, file: !1140, line: 540, baseType: !1151, size: 8, offset: 1168)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1139, file: !1140, line: 541, baseType: !1151, size: 8, offset: 1176)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1139, file: !1140, line: 542, baseType: !1151, size: 8, offset: 1184)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1139, file: !1140, line: 543, baseType: !1151, size: 8, offset: 1192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1139, file: !1140, line: 544, baseType: !1151, size: 8, offset: 1200)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1139, file: !1140, line: 545, baseType: !1151, size: 8, offset: 1208)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1139, file: !1140, line: 546, baseType: !1151, size: 8, offset: 1216)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1139, file: !1140, line: 547, baseType: !1151, size: 8, offset: 1224)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1139, file: !1140, line: 548, baseType: !1151, size: 8, offset: 1232)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1139, file: !1140, line: 549, baseType: !1151, size: 8, offset: 1240)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1139, file: !1140, line: 550, baseType: !1151, size: 8, offset: 1248)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1139, file: !1140, line: 551, baseType: !1151, size: 8, offset: 1256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1139, file: !1140, line: 552, baseType: !1151, size: 8, offset: 1264)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1139, file: !1140, line: 553, baseType: !1151, size: 8, offset: 1272)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1139, file: !1140, line: 554, baseType: !1151, size: 8, offset: 1280)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1139, file: !1140, line: 555, baseType: !1151, size: 8, offset: 1288)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1139, file: !1140, line: 556, baseType: !1151, size: 8, offset: 1296)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1139, file: !1140, line: 557, baseType: !1151, size: 8, offset: 1304)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1139, file: !1140, line: 558, baseType: !1151, size: 8, offset: 1312)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1139, file: !1140, line: 559, baseType: !1151, size: 8, offset: 1320)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1139, file: !1140, line: 560, baseType: !1151, size: 8, offset: 1328)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1139, file: !1140, line: 561, baseType: !1151, size: 8, offset: 1336)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1139, file: !1140, line: 562, baseType: !1151, size: 8, offset: 1344)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1139, file: !1140, line: 563, baseType: !1151, size: 8, offset: 1352)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1139, file: !1140, line: 564, baseType: !1151, size: 8, offset: 1360)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1139, file: !1140, line: 565, baseType: !1151, size: 8, offset: 1368)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1139, file: !1140, line: 566, baseType: !1151, size: 8, offset: 1376)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1139, file: !1140, line: 567, baseType: !1151, size: 8, offset: 1384)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1139, file: !1140, line: 568, baseType: !1151, size: 8, offset: 1392)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1139, file: !1140, line: 569, baseType: !1151, size: 8, offset: 1400)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1139, file: !1140, line: 570, baseType: !1151, size: 8, offset: 1408)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1139, file: !1140, line: 571, baseType: !1151, size: 8, offset: 1416)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1139, file: !1140, line: 572, baseType: !1151, size: 8, offset: 1424)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1139, file: !1140, line: 573, baseType: !1151, size: 8, offset: 1432)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1139, file: !1140, line: 574, baseType: !1151, size: 8, offset: 1440)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !276, file: !6, line: 3405, baseType: !1307, size: 384)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !6, line: 3352, size: 384, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1307, file: !6, line: 3353, baseType: !312, size: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1307, file: !6, line: 3356, baseType: !1311, size: 192, offset: 192)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1140, line: 578, size: 192, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1311, file: !1140, line: 580, baseType: !260, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1311, file: !1140, line: 581, baseType: !260, size: 32, offset: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1311, file: !1140, line: 582, baseType: !260, size: 32, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1311, file: !1140, line: 583, baseType: !260, size: 32, offset: 96)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1311, file: !1140, line: 584, baseType: !259, size: 8, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1311, file: !1140, line: 585, baseType: !259, size: 8, offset: 136)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1311, file: !1140, line: 586, baseType: !259, size: 8, offset: 144)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1311, file: !1140, line: 587, baseType: !259, size: 8, offset: 152)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1311, file: !1140, line: 588, baseType: !259, size: 8, offset: 160)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1311, file: !1140, line: 589, baseType: !259, size: 8, offset: 168)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1311, file: !1140, line: 590, baseType: !259, size: 8, offset: 176)
!1324 = !{!1325, !0}
!1325 = !DIGlobalVariableExpression(var: !1326, expr: !DIExpression())
!1326 = distinct !DIGlobalVariable(name: "gt_ggc_rd_gt_tree_iterator_h", scope: !2, file: !1327, line: 24, type: !1328, isLocal: false, isDefinition: true)
!1327 = !DIFile(filename: "./gt-tree-iterator.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1329, size: 640, elements: !782)
!1329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1330)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !1331, line: 69, size: 320, elements: !1332)
!1331 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1332 = !{!1333, !1334, !1335, !1336, !1338}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1330, file: !1331, line: 70, baseType: !264, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !1330, file: !1331, line: 71, baseType: !706, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1330, file: !1331, line: 72, baseType: !706, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1330, file: !1331, line: 73, baseType: !1337, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !1331, line: 65, baseType: !863)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !1330, file: !1331, line: 74, baseType: !1337, size: 64, offset: 256)
!1339 = !{i32 2, !"Dwarf Version", i32 4}
!1340 = !{i32 2, !"Debug Info Version", i32 3}
!1341 = !{i32 1, !"wchar_size", i32 4}
!1342 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1343 = distinct !DISubprogram(name: "vprintf", scope: !1344, file: !1344, line: 39, type: !1345, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1355)
!1344 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!260, !1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !265)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1350)
!1350 = !{!1351, !1352, !1353, !1354}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1349, file: !3, baseType: !7, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1349, file: !3, baseType: !7, size: 32, offset: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1349, file: !3, baseType: !264, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1349, file: !3, baseType: !264, size: 64, offset: 128)
!1355 = !{!1356, !1357}
!1356 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1343, file: !1344, line: 39, type: !1347)
!1357 = !DILocalVariable(name: "__arg", arg: 2, scope: !1343, file: !1344, line: 39, type: !1348)
!1358 = !DILocation(line: 0, scope: !1343)
!1359 = !DILocation(line: 41, column: 20, scope: !1343)
!1360 = !DILocation(line: 41, column: 10, scope: !1343)
!1361 = !DILocation(line: 41, column: 3, scope: !1343)
!1362 = distinct !DISubprogram(name: "getchar", scope: !1344, file: !1344, line: 47, type: !1363, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1365)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!260}
!1365 = !{}
!1366 = !DILocation(line: 49, column: 16, scope: !1362)
!1367 = !DILocation(line: 49, column: 10, scope: !1362)
!1368 = !DILocation(line: 49, column: 3, scope: !1362)
!1369 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1344, file: !1344, line: 56, type: !1370, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1423)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!260, !1372}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1374, line: 7, baseType: !1375)
!1374 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1376, line: 49, size: 1728, elements: !1377)
!1376 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1377 = !{!1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1393, !1395, !1396, !1397, !1400, !1402, !1403, !1404, !1407, !1409, !1412, !1415, !1416, !1417, !1418, !1419}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1375, file: !1376, line: 51, baseType: !260, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1375, file: !1376, line: 54, baseType: !262, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1375, file: !1376, line: 55, baseType: !262, size: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1375, file: !1376, line: 56, baseType: !262, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1375, file: !1376, line: 57, baseType: !262, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1375, file: !1376, line: 58, baseType: !262, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1375, file: !1376, line: 59, baseType: !262, size: 64, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1375, file: !1376, line: 60, baseType: !262, size: 64, offset: 448)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1375, file: !1376, line: 61, baseType: !262, size: 64, offset: 512)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1375, file: !1376, line: 64, baseType: !262, size: 64, offset: 576)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1375, file: !1376, line: 65, baseType: !262, size: 64, offset: 640)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1375, file: !1376, line: 66, baseType: !262, size: 64, offset: 704)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1375, file: !1376, line: 68, baseType: !1391, size: 64, offset: 768)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1376, line: 36, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1375, file: !1376, line: 70, baseType: !1394, size: 64, offset: 832)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1375, file: !1376, line: 72, baseType: !260, size: 32, offset: 896)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1375, file: !1376, line: 73, baseType: !260, size: 32, offset: 928)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1375, file: !1376, line: 74, baseType: !1398, size: 64, offset: 960)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1399, line: 152, baseType: !329)
!1399 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1375, file: !1376, line: 77, baseType: !1401, size: 16, offset: 1024)
!1401 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1375, file: !1376, line: 78, baseType: !1151, size: 8, offset: 1040)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1375, file: !1376, line: 79, baseType: !355, size: 8, offset: 1048)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1375, file: !1376, line: 81, baseType: !1405, size: 64, offset: 1088)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1376, line: 43, baseType: null)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1375, file: !1376, line: 89, baseType: !1408, size: 64, offset: 1152)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1399, line: 153, baseType: !329)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1375, file: !1376, line: 91, baseType: !1410, size: 64, offset: 1216)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1376, line: 37, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1375, file: !1376, line: 92, baseType: !1413, size: 64, offset: 1280)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1376, line: 38, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1375, file: !1376, line: 93, baseType: !1394, size: 64, offset: 1344)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1375, file: !1376, line: 94, baseType: !264, size: 64, offset: 1408)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1375, file: !1376, line: 95, baseType: !706, size: 64, offset: 1472)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1375, file: !1376, line: 96, baseType: !260, size: 32, offset: 1536)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1375, file: !1376, line: 98, baseType: !1420, size: 160, offset: 1568)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 160, elements: !1421)
!1421 = !{!1422}
!1422 = !DISubrange(count: 20)
!1423 = !{!1424}
!1424 = !DILocalVariable(name: "__fp", arg: 1, scope: !1369, file: !1344, line: 56, type: !1372)
!1425 = !DILocation(line: 0, scope: !1369)
!1426 = !DILocation(line: 58, column: 10, scope: !1369)
!1427 = !DILocation(line: 58, column: 3, scope: !1369)
!1428 = distinct !DISubprogram(name: "getc_unlocked", scope: !1344, file: !1344, line: 66, type: !1370, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1429)
!1429 = !{!1430}
!1430 = !DILocalVariable(name: "__fp", arg: 1, scope: !1428, file: !1344, line: 66, type: !1372)
!1431 = !DILocation(line: 0, scope: !1428)
!1432 = !DILocation(line: 68, column: 10, scope: !1428)
!1433 = !DILocation(line: 68, column: 3, scope: !1428)
!1434 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1344, file: !1344, line: 73, type: !1363, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1365)
!1435 = !DILocation(line: 75, column: 10, scope: !1434)
!1436 = !DILocation(line: 75, column: 3, scope: !1434)
!1437 = distinct !DISubprogram(name: "putchar", scope: !1344, file: !1344, line: 82, type: !1438, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1440)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!260, !260}
!1440 = !{!1441}
!1441 = !DILocalVariable(name: "__c", arg: 1, scope: !1437, file: !1344, line: 82, type: !260)
!1442 = !DILocation(line: 0, scope: !1437)
!1443 = !DILocation(line: 84, column: 21, scope: !1437)
!1444 = !DILocation(line: 84, column: 10, scope: !1437)
!1445 = !DILocation(line: 84, column: 3, scope: !1437)
!1446 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1344, file: !1344, line: 91, type: !1447, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1449)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!260, !260, !1372}
!1449 = !{!1450, !1451}
!1450 = !DILocalVariable(name: "__c", arg: 1, scope: !1446, file: !1344, line: 91, type: !260)
!1451 = !DILocalVariable(name: "__stream", arg: 2, scope: !1446, file: !1344, line: 91, type: !1372)
!1452 = !DILocation(line: 0, scope: !1446)
!1453 = !DILocation(line: 93, column: 10, scope: !1446)
!1454 = !DILocation(line: 93, column: 3, scope: !1446)
!1455 = distinct !DISubprogram(name: "putc_unlocked", scope: !1344, file: !1344, line: 101, type: !1447, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1456)
!1456 = !{!1457, !1458}
!1457 = !DILocalVariable(name: "__c", arg: 1, scope: !1455, file: !1344, line: 101, type: !260)
!1458 = !DILocalVariable(name: "__stream", arg: 2, scope: !1455, file: !1344, line: 101, type: !1372)
!1459 = !DILocation(line: 0, scope: !1455)
!1460 = !DILocation(line: 103, column: 10, scope: !1455)
!1461 = !DILocation(line: 103, column: 3, scope: !1455)
!1462 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1344, file: !1344, line: 108, type: !1438, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1463)
!1463 = !{!1464}
!1464 = !DILocalVariable(name: "__c", arg: 1, scope: !1462, file: !1344, line: 108, type: !260)
!1465 = !DILocation(line: 0, scope: !1462)
!1466 = !DILocation(line: 110, column: 10, scope: !1462)
!1467 = !DILocation(line: 110, column: 3, scope: !1462)
!1468 = distinct !DISubprogram(name: "getline", scope: !1344, file: !1344, line: 118, type: !1469, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1473)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!1471, !261, !1472, !1372}
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1399, line: 193, baseType: !329)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!1473 = !{!1474, !1475, !1476}
!1474 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1468, file: !1344, line: 118, type: !261)
!1475 = !DILocalVariable(name: "__n", arg: 2, scope: !1468, file: !1344, line: 118, type: !1472)
!1476 = !DILocalVariable(name: "__stream", arg: 3, scope: !1468, file: !1344, line: 118, type: !1372)
!1477 = !DILocation(line: 0, scope: !1468)
!1478 = !DILocation(line: 120, column: 10, scope: !1468)
!1479 = !DILocation(line: 120, column: 3, scope: !1468)
!1480 = distinct !DISubprogram(name: "feof_unlocked", scope: !1344, file: !1344, line: 128, type: !1370, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1481)
!1481 = !{!1482}
!1482 = !DILocalVariable(name: "__stream", arg: 1, scope: !1480, file: !1344, line: 128, type: !1372)
!1483 = !DILocation(line: 0, scope: !1480)
!1484 = !DILocation(line: 130, column: 10, scope: !1480)
!1485 = !DILocation(line: 130, column: 3, scope: !1480)
!1486 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1344, file: !1344, line: 135, type: !1370, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1487)
!1487 = !{!1488}
!1488 = !DILocalVariable(name: "__stream", arg: 1, scope: !1486, file: !1344, line: 135, type: !1372)
!1489 = !DILocation(line: 0, scope: !1486)
!1490 = !DILocation(line: 137, column: 10, scope: !1486)
!1491 = !DILocation(line: 137, column: 3, scope: !1486)
!1492 = distinct !DISubprogram(name: "tolower", scope: !1493, file: !1493, line: 207, type: !1438, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1494)
!1493 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1494 = !{!1495}
!1495 = !DILocalVariable(name: "__c", arg: 1, scope: !1492, file: !1493, line: 207, type: !260)
!1496 = !DILocation(line: 0, scope: !1492)
!1497 = !DILocation(line: 209, column: 22, scope: !1492)
!1498 = !DILocation(line: 209, column: 39, scope: !1492)
!1499 = !DILocation(line: 209, column: 38, scope: !1492)
!1500 = !DILocation(line: 209, column: 37, scope: !1492)
!1501 = !DILocation(line: 209, column: 10, scope: !1492)
!1502 = !DILocation(line: 209, column: 3, scope: !1492)
!1503 = distinct !DISubprogram(name: "toupper", scope: !1493, file: !1493, line: 213, type: !1438, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1504)
!1504 = !{!1505}
!1505 = !DILocalVariable(name: "__c", arg: 1, scope: !1503, file: !1493, line: 213, type: !260)
!1506 = !DILocation(line: 0, scope: !1503)
!1507 = !DILocation(line: 215, column: 22, scope: !1503)
!1508 = !DILocation(line: 215, column: 39, scope: !1503)
!1509 = !DILocation(line: 215, column: 38, scope: !1503)
!1510 = !DILocation(line: 215, column: 37, scope: !1503)
!1511 = !DILocation(line: 215, column: 10, scope: !1503)
!1512 = !DILocation(line: 215, column: 3, scope: !1503)
!1513 = distinct !DISubprogram(name: "atoi", scope: !1514, file: !1514, line: 361, type: !1515, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1517)
!1514 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!260, !265}
!1517 = !{!1518}
!1518 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1513, file: !1514, line: 361, type: !265)
!1519 = !DILocation(line: 0, scope: !1513)
!1520 = !DILocation(line: 363, column: 16, scope: !1513)
!1521 = !DILocation(line: 363, column: 10, scope: !1513)
!1522 = !DILocation(line: 363, column: 3, scope: !1513)
!1523 = distinct !DISubprogram(name: "atol", scope: !1514, file: !1514, line: 366, type: !1524, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1526)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!329, !265}
!1526 = !{!1527}
!1527 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1523, file: !1514, line: 366, type: !265)
!1528 = !DILocation(line: 0, scope: !1523)
!1529 = !DILocation(line: 368, column: 10, scope: !1523)
!1530 = !DILocation(line: 368, column: 3, scope: !1523)
!1531 = distinct !DISubprogram(name: "atoll", scope: !1514, file: !1514, line: 373, type: !1532, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1535)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!1534, !265}
!1534 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1535 = !{!1536}
!1536 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1531, file: !1514, line: 373, type: !265)
!1537 = !DILocation(line: 0, scope: !1531)
!1538 = !DILocation(line: 375, column: 10, scope: !1531)
!1539 = !DILocation(line: 375, column: 3, scope: !1531)
!1540 = distinct !DISubprogram(name: "bsearch", scope: !1541, file: !1541, line: 20, type: !1542, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1545)
!1541 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!264, !854, !854, !706, !706, !1544}
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1514, line: 808, baseType: !858)
!1545 = !{!1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555}
!1546 = !DILocalVariable(name: "__key", arg: 1, scope: !1540, file: !1541, line: 20, type: !854)
!1547 = !DILocalVariable(name: "__base", arg: 2, scope: !1540, file: !1541, line: 20, type: !854)
!1548 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1540, file: !1541, line: 20, type: !706)
!1549 = !DILocalVariable(name: "__size", arg: 4, scope: !1540, file: !1541, line: 20, type: !706)
!1550 = !DILocalVariable(name: "__compar", arg: 5, scope: !1540, file: !1541, line: 21, type: !1544)
!1551 = !DILocalVariable(name: "__l", scope: !1540, file: !1541, line: 23, type: !706)
!1552 = !DILocalVariable(name: "__u", scope: !1540, file: !1541, line: 23, type: !706)
!1553 = !DILocalVariable(name: "__idx", scope: !1540, file: !1541, line: 23, type: !706)
!1554 = !DILocalVariable(name: "__p", scope: !1540, file: !1541, line: 24, type: !854)
!1555 = !DILocalVariable(name: "__comparison", scope: !1540, file: !1541, line: 25, type: !260)
!1556 = !DILocation(line: 0, scope: !1540)
!1557 = !DILocation(line: 29, column: 3, scope: !1540)
!1558 = !DILocation(line: 27, column: 7, scope: !1540)
!1559 = !DILocation(line: 29, column: 14, scope: !1540)
!1560 = !DILocation(line: 31, column: 20, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1540, file: !1541, line: 30, column: 5)
!1562 = !DILocation(line: 31, column: 27, scope: !1561)
!1563 = !DILocation(line: 32, column: 56, scope: !1561)
!1564 = !DILocation(line: 32, column: 47, scope: !1561)
!1565 = !DILocation(line: 33, column: 22, scope: !1561)
!1566 = !DILocation(line: 34, column: 24, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1561, file: !1541, line: 34, column: 11)
!1568 = !DILocation(line: 34, column: 11, scope: !1561)
!1569 = !DILocation(line: 36, column: 29, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1567, file: !1541, line: 36, column: 16)
!1571 = !DILocation(line: 36, column: 16, scope: !1567)
!1572 = !DILocation(line: 37, column: 14, scope: !1570)
!1573 = distinct !{!1573, !1557, !1574}
!1574 = !DILocation(line: 40, column: 5, scope: !1540)
!1575 = !DILocation(line: 43, column: 1, scope: !1540)
!1576 = distinct !DISubprogram(name: "atof", scope: !1577, file: !1577, line: 25, type: !1578, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1581)
!1577 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!1580, !265}
!1580 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1581 = !{!1582}
!1582 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1576, file: !1577, line: 25, type: !265)
!1583 = !DILocation(line: 0, scope: !1576)
!1584 = !DILocation(line: 27, column: 10, scope: !1576)
!1585 = !DILocation(line: 27, column: 3, scope: !1576)
!1586 = distinct !DISubprogram(name: "strtoimax", scope: !1587, file: !1587, line: 324, type: !1588, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1594)
!1587 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!1590, !1347, !1593, !260}
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1591, line: 101, baseType: !1592)
!1591 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1399, line: 72, baseType: !329)
!1593 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !261)
!1594 = !{!1595, !1596, !1597}
!1595 = !DILocalVariable(name: "nptr", arg: 1, scope: !1586, file: !1587, line: 324, type: !1347)
!1596 = !DILocalVariable(name: "endptr", arg: 2, scope: !1586, file: !1587, line: 324, type: !1593)
!1597 = !DILocalVariable(name: "base", arg: 3, scope: !1586, file: !1587, line: 324, type: !260)
!1598 = !DILocation(line: 0, scope: !1586)
!1599 = !DILocation(line: 327, column: 10, scope: !1586)
!1600 = !DILocation(line: 327, column: 3, scope: !1586)
!1601 = distinct !DISubprogram(name: "strtoumax", scope: !1587, file: !1587, line: 336, type: !1602, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1606)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!1604, !1347, !1593, !260}
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1591, line: 102, baseType: !1605)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1399, line: 73, baseType: !327)
!1606 = !{!1607, !1608, !1609}
!1607 = !DILocalVariable(name: "nptr", arg: 1, scope: !1601, file: !1587, line: 336, type: !1347)
!1608 = !DILocalVariable(name: "endptr", arg: 2, scope: !1601, file: !1587, line: 336, type: !1593)
!1609 = !DILocalVariable(name: "base", arg: 3, scope: !1601, file: !1587, line: 336, type: !260)
!1610 = !DILocation(line: 0, scope: !1601)
!1611 = !DILocation(line: 339, column: 10, scope: !1601)
!1612 = !DILocation(line: 339, column: 3, scope: !1601)
!1613 = distinct !DISubprogram(name: "wcstoimax", scope: !1587, file: !1587, line: 348, type: !1614, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1623)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!1590, !1616, !1620, !260}
!1616 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1617)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1619)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1587, line: 34, baseType: !260)
!1620 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1621)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1623 = !{!1624, !1625, !1626}
!1624 = !DILocalVariable(name: "nptr", arg: 1, scope: !1613, file: !1587, line: 348, type: !1616)
!1625 = !DILocalVariable(name: "endptr", arg: 2, scope: !1613, file: !1587, line: 348, type: !1620)
!1626 = !DILocalVariable(name: "base", arg: 3, scope: !1613, file: !1587, line: 348, type: !260)
!1627 = !DILocation(line: 0, scope: !1613)
!1628 = !DILocation(line: 351, column: 10, scope: !1613)
!1629 = !DILocation(line: 351, column: 3, scope: !1613)
!1630 = distinct !DISubprogram(name: "wcstoumax", scope: !1587, file: !1587, line: 362, type: !1631, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1633)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!1604, !1616, !1620, !260}
!1633 = !{!1634, !1635, !1636}
!1634 = !DILocalVariable(name: "nptr", arg: 1, scope: !1630, file: !1587, line: 362, type: !1616)
!1635 = !DILocalVariable(name: "endptr", arg: 2, scope: !1630, file: !1587, line: 362, type: !1620)
!1636 = !DILocalVariable(name: "base", arg: 3, scope: !1630, file: !1587, line: 362, type: !260)
!1637 = !DILocation(line: 0, scope: !1630)
!1638 = !DILocation(line: 365, column: 10, scope: !1630)
!1639 = !DILocation(line: 365, column: 3, scope: !1630)
!1640 = distinct !DISubprogram(name: "stat", scope: !1641, file: !1641, line: 453, type: !1642, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1681)
!1641 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!260, !265, !1644}
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1646, line: 46, size: 1152, elements: !1647)
!1646 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1647 = !{!1648, !1650, !1652, !1654, !1656, !1658, !1660, !1661, !1662, !1663, !1665, !1667, !1675, !1676, !1677}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1645, file: !1646, line: 48, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1399, line: 145, baseType: !327)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1645, file: !1646, line: 53, baseType: !1651, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1399, line: 148, baseType: !327)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1645, file: !1646, line: 61, baseType: !1653, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1399, line: 151, baseType: !327)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1645, file: !1646, line: 62, baseType: !1655, size: 32, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1399, line: 150, baseType: !7)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1645, file: !1646, line: 64, baseType: !1657, size: 32, offset: 224)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1399, line: 146, baseType: !7)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1645, file: !1646, line: 65, baseType: !1659, size: 32, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1399, line: 147, baseType: !7)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1645, file: !1646, line: 67, baseType: !260, size: 32, offset: 288)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1645, file: !1646, line: 69, baseType: !1649, size: 64, offset: 320)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1645, file: !1646, line: 74, baseType: !1398, size: 64, offset: 384)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1645, file: !1646, line: 78, baseType: !1664, size: 64, offset: 448)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1399, line: 174, baseType: !329)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1645, file: !1646, line: 80, baseType: !1666, size: 64, offset: 512)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1399, line: 179, baseType: !329)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1645, file: !1646, line: 91, baseType: !1668, size: 128, offset: 576)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1669, line: 10, size: 128, elements: !1670)
!1669 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1670 = !{!1671, !1673}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1668, file: !1669, line: 12, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1399, line: 160, baseType: !329)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1668, file: !1669, line: 16, baseType: !1674, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1399, line: 196, baseType: !329)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1645, file: !1646, line: 92, baseType: !1668, size: 128, offset: 704)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1645, file: !1646, line: 93, baseType: !1668, size: 128, offset: 832)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1645, file: !1646, line: 106, baseType: !1678, size: 192, offset: 960)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1674, size: 192, elements: !1679)
!1679 = !{!1680}
!1680 = !DISubrange(count: 3)
!1681 = !{!1682, !1683}
!1682 = !DILocalVariable(name: "__path", arg: 1, scope: !1640, file: !1641, line: 453, type: !265)
!1683 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1640, file: !1641, line: 453, type: !1644)
!1684 = !DILocation(line: 0, scope: !1640)
!1685 = !DILocation(line: 455, column: 10, scope: !1640)
!1686 = !DILocation(line: 455, column: 3, scope: !1640)
!1687 = distinct !DISubprogram(name: "lstat", scope: !1641, file: !1641, line: 460, type: !1642, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1688)
!1688 = !{!1689, !1690}
!1689 = !DILocalVariable(name: "__path", arg: 1, scope: !1687, file: !1641, line: 460, type: !265)
!1690 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1687, file: !1641, line: 460, type: !1644)
!1691 = !DILocation(line: 0, scope: !1687)
!1692 = !DILocation(line: 462, column: 10, scope: !1687)
!1693 = !DILocation(line: 462, column: 3, scope: !1687)
!1694 = distinct !DISubprogram(name: "fstat", scope: !1641, file: !1641, line: 467, type: !1695, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1697)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!260, !260, !1644}
!1697 = !{!1698, !1699}
!1698 = !DILocalVariable(name: "__fd", arg: 1, scope: !1694, file: !1641, line: 467, type: !260)
!1699 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1694, file: !1641, line: 467, type: !1644)
!1700 = !DILocation(line: 0, scope: !1694)
!1701 = !DILocation(line: 469, column: 10, scope: !1694)
!1702 = !DILocation(line: 469, column: 3, scope: !1694)
!1703 = distinct !DISubprogram(name: "fstatat", scope: !1641, file: !1641, line: 474, type: !1704, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1706)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!260, !260, !265, !1644, !260}
!1706 = !{!1707, !1708, !1709, !1710}
!1707 = !DILocalVariable(name: "__fd", arg: 1, scope: !1703, file: !1641, line: 474, type: !260)
!1708 = !DILocalVariable(name: "__filename", arg: 2, scope: !1703, file: !1641, line: 474, type: !265)
!1709 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1703, file: !1641, line: 474, type: !1644)
!1710 = !DILocalVariable(name: "__flag", arg: 4, scope: !1703, file: !1641, line: 474, type: !260)
!1711 = !DILocation(line: 0, scope: !1703)
!1712 = !DILocation(line: 477, column: 10, scope: !1703)
!1713 = !DILocation(line: 477, column: 3, scope: !1703)
!1714 = distinct !DISubprogram(name: "mknod", scope: !1641, file: !1641, line: 483, type: !1715, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1717)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!260, !265, !1655, !1649}
!1717 = !{!1718, !1719, !1720}
!1718 = !DILocalVariable(name: "__path", arg: 1, scope: !1714, file: !1641, line: 483, type: !265)
!1719 = !DILocalVariable(name: "__mode", arg: 2, scope: !1714, file: !1641, line: 483, type: !1655)
!1720 = !DILocalVariable(name: "__dev", arg: 3, scope: !1714, file: !1641, line: 483, type: !1649)
!1721 = !DILocation(line: 0, scope: !1714)
!1722 = !DILocation(line: 485, column: 10, scope: !1714)
!1723 = !DILocation(line: 485, column: 3, scope: !1714)
!1724 = distinct !DISubprogram(name: "mknodat", scope: !1641, file: !1641, line: 491, type: !1725, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1727)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!260, !260, !265, !1655, !1649}
!1727 = !{!1728, !1729, !1730, !1731}
!1728 = !DILocalVariable(name: "__fd", arg: 1, scope: !1724, file: !1641, line: 491, type: !260)
!1729 = !DILocalVariable(name: "__path", arg: 2, scope: !1724, file: !1641, line: 491, type: !265)
!1730 = !DILocalVariable(name: "__mode", arg: 3, scope: !1724, file: !1641, line: 491, type: !1655)
!1731 = !DILocalVariable(name: "__dev", arg: 4, scope: !1724, file: !1641, line: 491, type: !1649)
!1732 = !DILocation(line: 0, scope: !1724)
!1733 = !DILocation(line: 494, column: 10, scope: !1724)
!1734 = !DILocation(line: 494, column: 3, scope: !1724)
!1735 = distinct !DISubprogram(name: "stat64", scope: !1641, file: !1641, line: 502, type: !1736, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!260, !265, !1738}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1646, line: 119, size: 1152, elements: !1740)
!1740 = !{!1741, !1742, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1754, !1755, !1756, !1757}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1739, file: !1646, line: 121, baseType: !1649, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1739, file: !1646, line: 123, baseType: !1743, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1399, line: 149, baseType: !327)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1739, file: !1646, line: 124, baseType: !1653, size: 64, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1739, file: !1646, line: 125, baseType: !1655, size: 32, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1739, file: !1646, line: 132, baseType: !1657, size: 32, offset: 224)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1739, file: !1646, line: 133, baseType: !1659, size: 32, offset: 256)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1739, file: !1646, line: 135, baseType: !260, size: 32, offset: 288)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1739, file: !1646, line: 136, baseType: !1649, size: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1739, file: !1646, line: 137, baseType: !1398, size: 64, offset: 384)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1739, file: !1646, line: 143, baseType: !1664, size: 64, offset: 448)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1739, file: !1646, line: 144, baseType: !1753, size: 64, offset: 512)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1399, line: 180, baseType: !329)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1739, file: !1646, line: 152, baseType: !1668, size: 128, offset: 576)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1739, file: !1646, line: 153, baseType: !1668, size: 128, offset: 704)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1739, file: !1646, line: 154, baseType: !1668, size: 128, offset: 832)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1739, file: !1646, line: 164, baseType: !1678, size: 192, offset: 960)
!1758 = !{!1759, !1760}
!1759 = !DILocalVariable(name: "__path", arg: 1, scope: !1735, file: !1641, line: 502, type: !265)
!1760 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1735, file: !1641, line: 502, type: !1738)
!1761 = !DILocation(line: 0, scope: !1735)
!1762 = !DILocation(line: 504, column: 10, scope: !1735)
!1763 = !DILocation(line: 504, column: 3, scope: !1735)
!1764 = distinct !DISubprogram(name: "lstat64", scope: !1641, file: !1641, line: 509, type: !1736, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1765)
!1765 = !{!1766, !1767}
!1766 = !DILocalVariable(name: "__path", arg: 1, scope: !1764, file: !1641, line: 509, type: !265)
!1767 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1764, file: !1641, line: 509, type: !1738)
!1768 = !DILocation(line: 0, scope: !1764)
!1769 = !DILocation(line: 511, column: 10, scope: !1764)
!1770 = !DILocation(line: 511, column: 3, scope: !1764)
!1771 = distinct !DISubprogram(name: "fstat64", scope: !1641, file: !1641, line: 516, type: !1772, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1774)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!260, !260, !1738}
!1774 = !{!1775, !1776}
!1775 = !DILocalVariable(name: "__fd", arg: 1, scope: !1771, file: !1641, line: 516, type: !260)
!1776 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1771, file: !1641, line: 516, type: !1738)
!1777 = !DILocation(line: 0, scope: !1771)
!1778 = !DILocation(line: 518, column: 10, scope: !1771)
!1779 = !DILocation(line: 518, column: 3, scope: !1771)
!1780 = distinct !DISubprogram(name: "fstatat64", scope: !1641, file: !1641, line: 523, type: !1781, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1783)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!260, !260, !265, !1738, !260}
!1783 = !{!1784, !1785, !1786, !1787}
!1784 = !DILocalVariable(name: "__fd", arg: 1, scope: !1780, file: !1641, line: 523, type: !260)
!1785 = !DILocalVariable(name: "__filename", arg: 2, scope: !1780, file: !1641, line: 523, type: !265)
!1786 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1780, file: !1641, line: 523, type: !1738)
!1787 = !DILocalVariable(name: "__flag", arg: 4, scope: !1780, file: !1641, line: 523, type: !260)
!1788 = !DILocation(line: 0, scope: !1780)
!1789 = !DILocation(line: 526, column: 10, scope: !1780)
!1790 = !DILocation(line: 526, column: 3, scope: !1780)
!1791 = distinct !DISubprogram(name: "alloc_stmt_list", scope: !3, file: !3, line: 36, type: !1792, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1794)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!273}
!1794 = !{!1795}
!1795 = !DILocalVariable(name: "list", scope: !1791, file: !3, line: 38, type: !273)
!1796 = !DILocation(line: 38, column: 15, scope: !1791)
!1797 = !DILocation(line: 0, scope: !1791)
!1798 = !DILocation(line: 39, column: 7, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 39, column: 7)
!1800 = !DILocation(line: 39, column: 7, scope: !1791)
!1801 = !DILocation(line: 41, column: 25, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 40, column: 5)
!1803 = !DILocation(line: 41, column: 23, scope: !1802)
!1804 = !DILocation(line: 42, column: 7, scope: !1802)
!1805 = !DILocation(line: 43, column: 15, scope: !1802)
!1806 = !DILocation(line: 43, column: 7, scope: !1802)
!1807 = !DILocation(line: 44, column: 7, scope: !1802)
!1808 = !DILocation(line: 45, column: 5, scope: !1802)
!1809 = !DILocation(line: 47, column: 12, scope: !1799)
!1810 = !DILocation(line: 48, column: 22, scope: !1791)
!1811 = !DILocation(line: 48, column: 3, scope: !1791)
!1812 = !DILocation(line: 48, column: 20, scope: !1791)
!1813 = !DILocation(line: 49, column: 3, scope: !1791)
!1814 = distinct !DISubprogram(name: "free_stmt_list", scope: !3, file: !3, line: 53, type: !1815, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !273}
!1817 = !{!1818}
!1818 = !DILocalVariable(name: "t", arg: 1, scope: !1814, file: !3, line: 53, type: !273)
!1819 = !DILocation(line: 0, scope: !1814)
!1820 = !DILocation(line: 55, column: 3, scope: !1814)
!1821 = !DILocation(line: 56, column: 3, scope: !1814)
!1822 = !DILocation(line: 59, column: 3, scope: !1814)
!1823 = !DILocation(line: 60, column: 20, scope: !1814)
!1824 = !DILocation(line: 60, column: 3, scope: !1814)
!1825 = !DILocation(line: 60, column: 18, scope: !1814)
!1826 = !DILocation(line: 61, column: 19, scope: !1814)
!1827 = !DILocation(line: 62, column: 1, scope: !1814)
!1828 = distinct !DISubprogram(name: "tsi_link_before", scope: !3, file: !3, line: 67, type: !1829, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1837)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !1831, !273, !249}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree_stmt_iterator", file: !250, line: 35, baseType: !1833)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !250, line: 32, size: 128, elements: !1834)
!1834 = !{!1835, !1836}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1833, file: !250, line: 33, baseType: !267, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !1833, file: !250, line: 34, baseType: !273, size: 64, offset: 64)
!1837 = !{!1838, !1839, !1840, !1841, !1842, !1843}
!1838 = !DILocalVariable(name: "i", arg: 1, scope: !1828, file: !3, line: 67, type: !1831)
!1839 = !DILocalVariable(name: "t", arg: 2, scope: !1828, file: !3, line: 67, type: !273)
!1840 = !DILocalVariable(name: "mode", arg: 3, scope: !1828, file: !3, line: 67, type: !249)
!1841 = !DILocalVariable(name: "head", scope: !1828, file: !3, line: 69, type: !267)
!1842 = !DILocalVariable(name: "tail", scope: !1828, file: !3, line: 69, type: !267)
!1843 = !DILocalVariable(name: "cur", scope: !1828, file: !3, line: 69, type: !267)
!1844 = !DILocation(line: 0, scope: !1828)
!1845 = !DILocation(line: 72, column: 3, scope: !1828)
!1846 = !DILocation(line: 74, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 74, column: 7)
!1848 = !DILocation(line: 74, column: 21, scope: !1847)
!1849 = !DILocation(line: 74, column: 7, scope: !1828)
!1850 = !DILocation(line: 76, column: 14, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 75, column: 5)
!1852 = !DILocation(line: 77, column: 14, scope: !1851)
!1853 = !DILocation(line: 78, column: 31, scope: !1851)
!1854 = !DILocation(line: 79, column: 31, scope: !1851)
!1855 = !DILocation(line: 81, column: 7, scope: !1851)
!1856 = !DILocation(line: 84, column: 12, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 84, column: 11)
!1858 = !DILocation(line: 84, column: 21, scope: !1857)
!1859 = !DILocation(line: 84, column: 17, scope: !1857)
!1860 = !DILocation(line: 86, column: 4, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 85, column: 2)
!1862 = !DILocation(line: 92, column: 14, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 91, column: 5)
!1864 = !DILocation(line: 93, column: 13, scope: !1863)
!1865 = !DILocation(line: 93, column: 18, scope: !1863)
!1866 = !DILocation(line: 94, column: 13, scope: !1863)
!1867 = !DILocation(line: 94, column: 18, scope: !1863)
!1868 = !DILocation(line: 95, column: 13, scope: !1863)
!1869 = !DILocation(line: 95, column: 18, scope: !1863)
!1870 = !DILocation(line: 0, scope: !1847)
!1871 = !DILocation(line: 99, column: 3, scope: !1828)
!1872 = !DILocation(line: 99, column: 36, scope: !1828)
!1873 = !DILocation(line: 101, column: 12, scope: !1828)
!1874 = !DILocation(line: 104, column: 7, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 104, column: 7)
!1876 = !DILocation(line: 104, column: 7, scope: !1828)
!1877 = !DILocation(line: 106, column: 25, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 105, column: 5)
!1879 = !DILocation(line: 106, column: 18, scope: !1878)
!1880 = !DILocation(line: 107, column: 11, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 107, column: 11)
!1882 = !DILocation(line: 107, column: 11, scope: !1878)
!1883 = !DILocation(line: 108, column: 14, scope: !1881)
!1884 = !DILocation(line: 108, column: 19, scope: !1881)
!1885 = !DILocation(line: 108, column: 2, scope: !1881)
!1886 = !DILocation(line: 110, column: 2, scope: !1881)
!1887 = !DILocation(line: 110, column: 37, scope: !1881)
!1888 = !DILocation(line: 111, column: 13, scope: !1878)
!1889 = !DILocation(line: 111, column: 18, scope: !1878)
!1890 = !DILocation(line: 112, column: 12, scope: !1878)
!1891 = !DILocation(line: 112, column: 17, scope: !1878)
!1892 = !DILocation(line: 113, column: 5, scope: !1878)
!1893 = !DILocation(line: 116, column: 20, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 115, column: 5)
!1895 = !DILocation(line: 116, column: 18, scope: !1894)
!1896 = !DILocation(line: 117, column: 11, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 117, column: 11)
!1898 = !DILocation(line: 117, column: 11, scope: !1894)
!1899 = !DILocation(line: 118, column: 20, scope: !1897)
!1900 = !DILocation(line: 118, column: 25, scope: !1897)
!1901 = !DILocation(line: 118, column: 8, scope: !1897)
!1902 = !DILocation(line: 120, column: 8, scope: !1897)
!1903 = !DILocation(line: 120, column: 43, scope: !1897)
!1904 = !DILocation(line: 121, column: 7, scope: !1894)
!1905 = !DILocation(line: 121, column: 42, scope: !1894)
!1906 = !DILocation(line: 125, column: 3, scope: !1828)
!1907 = !DILocation(line: 130, column: 14, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 126, column: 5)
!1909 = !DILocation(line: 131, column: 7, scope: !1908)
!1910 = !DILocation(line: 133, column: 14, scope: !1908)
!1911 = !DILocation(line: 134, column: 7, scope: !1908)
!1912 = !DILocation(line: 138, column: 1, scope: !1828)
!1913 = distinct !DISubprogram(name: "tsi_link_after", scope: !3, file: !3, line: 143, type: !1829, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1914)
!1914 = !{!1915, !1916, !1917, !1918, !1919, !1920}
!1915 = !DILocalVariable(name: "i", arg: 1, scope: !1913, file: !3, line: 143, type: !1831)
!1916 = !DILocalVariable(name: "t", arg: 2, scope: !1913, file: !3, line: 143, type: !273)
!1917 = !DILocalVariable(name: "mode", arg: 3, scope: !1913, file: !3, line: 143, type: !249)
!1918 = !DILocalVariable(name: "head", scope: !1913, file: !3, line: 145, type: !267)
!1919 = !DILocalVariable(name: "tail", scope: !1913, file: !3, line: 145, type: !267)
!1920 = !DILocalVariable(name: "cur", scope: !1913, file: !3, line: 145, type: !267)
!1921 = !DILocation(line: 0, scope: !1913)
!1922 = !DILocation(line: 148, column: 3, scope: !1913)
!1923 = !DILocation(line: 150, column: 7, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 150, column: 7)
!1925 = !DILocation(line: 150, column: 21, scope: !1924)
!1926 = !DILocation(line: 150, column: 7, scope: !1913)
!1927 = !DILocation(line: 152, column: 14, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 151, column: 5)
!1929 = !DILocation(line: 153, column: 14, scope: !1928)
!1930 = !DILocation(line: 154, column: 31, scope: !1928)
!1931 = !DILocation(line: 155, column: 31, scope: !1928)
!1932 = !DILocation(line: 157, column: 7, scope: !1928)
!1933 = !DILocation(line: 160, column: 12, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 160, column: 11)
!1935 = !DILocation(line: 160, column: 21, scope: !1934)
!1936 = !DILocation(line: 160, column: 17, scope: !1934)
!1937 = !DILocation(line: 162, column: 4, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 161, column: 2)
!1939 = !DILocation(line: 168, column: 14, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 167, column: 5)
!1941 = !DILocation(line: 169, column: 13, scope: !1940)
!1942 = !DILocation(line: 169, column: 18, scope: !1940)
!1943 = !DILocation(line: 170, column: 13, scope: !1940)
!1944 = !DILocation(line: 170, column: 18, scope: !1940)
!1945 = !DILocation(line: 171, column: 13, scope: !1940)
!1946 = !DILocation(line: 171, column: 18, scope: !1940)
!1947 = !DILocation(line: 0, scope: !1924)
!1948 = !DILocation(line: 175, column: 3, scope: !1913)
!1949 = !DILocation(line: 175, column: 36, scope: !1913)
!1950 = !DILocation(line: 177, column: 12, scope: !1913)
!1951 = !DILocation(line: 180, column: 7, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 180, column: 7)
!1953 = !DILocation(line: 180, column: 7, scope: !1913)
!1954 = !DILocation(line: 182, column: 25, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 181, column: 5)
!1956 = !DILocation(line: 182, column: 13, scope: !1955)
!1957 = !DILocation(line: 182, column: 18, scope: !1955)
!1958 = !DILocation(line: 183, column: 11, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 183, column: 11)
!1960 = !DILocation(line: 183, column: 11, scope: !1955)
!1961 = !DILocation(line: 184, column: 14, scope: !1959)
!1962 = !DILocation(line: 184, column: 19, scope: !1959)
!1963 = !DILocation(line: 184, column: 2, scope: !1959)
!1964 = !DILocation(line: 186, column: 2, scope: !1959)
!1965 = !DILocation(line: 186, column: 37, scope: !1959)
!1966 = !DILocation(line: 187, column: 13, scope: !1955)
!1967 = !DILocation(line: 187, column: 18, scope: !1955)
!1968 = !DILocation(line: 188, column: 17, scope: !1955)
!1969 = !DILocation(line: 189, column: 5, scope: !1955)
!1970 = !DILocation(line: 192, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 191, column: 5)
!1972 = !DILocation(line: 193, column: 7, scope: !1971)
!1973 = !DILocation(line: 193, column: 42, scope: !1971)
!1974 = !DILocation(line: 194, column: 7, scope: !1971)
!1975 = !DILocation(line: 194, column: 42, scope: !1971)
!1976 = !DILocation(line: 198, column: 3, scope: !1913)
!1977 = !DILocation(line: 202, column: 14, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 199, column: 5)
!1979 = !DILocation(line: 203, column: 7, scope: !1978)
!1980 = !DILocation(line: 206, column: 14, scope: !1978)
!1981 = !DILocation(line: 207, column: 7, scope: !1978)
!1982 = !DILocation(line: 209, column: 7, scope: !1978)
!1983 = !DILocation(line: 212, column: 1, scope: !1913)
!1984 = distinct !DISubprogram(name: "tsi_delink", scope: !3, file: !3, line: 218, type: !1985, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1987)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{null, !1831}
!1987 = !{!1988, !1989, !1990, !1991}
!1988 = !DILocalVariable(name: "i", arg: 1, scope: !1984, file: !3, line: 218, type: !1831)
!1989 = !DILocalVariable(name: "cur", scope: !1984, file: !3, line: 220, type: !267)
!1990 = !DILocalVariable(name: "next", scope: !1984, file: !3, line: 220, type: !267)
!1991 = !DILocalVariable(name: "prev", scope: !1984, file: !3, line: 220, type: !267)
!1992 = !DILocation(line: 0, scope: !1984)
!1993 = !DILocation(line: 222, column: 12, scope: !1984)
!1994 = !DILocation(line: 223, column: 15, scope: !1984)
!1995 = !DILocation(line: 224, column: 15, scope: !1984)
!1996 = !DILocation(line: 226, column: 7, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 226, column: 7)
!1998 = !DILocation(line: 226, column: 7, scope: !1984)
!1999 = !DILocation(line: 227, column: 11, scope: !1997)
!2000 = !DILocation(line: 227, column: 16, scope: !1997)
!2001 = !DILocation(line: 227, column: 5, scope: !1997)
!2002 = !DILocation(line: 229, column: 5, scope: !1997)
!2003 = !DILocation(line: 229, column: 40, scope: !1997)
!2004 = !DILocation(line: 230, column: 7, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 230, column: 7)
!2006 = !DILocation(line: 230, column: 7, scope: !1984)
!2007 = !DILocation(line: 231, column: 11, scope: !2005)
!2008 = !DILocation(line: 231, column: 16, scope: !2005)
!2009 = !DILocation(line: 231, column: 5, scope: !2005)
!2010 = !DILocation(line: 233, column: 5, scope: !2005)
!2011 = !DILocation(line: 233, column: 40, scope: !2005)
!2012 = !DILocation(line: 235, column: 8, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 235, column: 7)
!2014 = !DILocation(line: 235, column: 17, scope: !2013)
!2015 = !DILocation(line: 235, column: 13, scope: !2013)
!2016 = !DILocation(line: 236, column: 5, scope: !2013)
!2017 = !DILocation(line: 236, column: 38, scope: !2013)
!2018 = !DILocation(line: 238, column: 10, scope: !1984)
!2019 = !DILocation(line: 239, column: 1, scope: !1984)
!2020 = distinct !DISubprogram(name: "expr_first", scope: !3, file: !3, line: 245, type: !2021, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2023)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!273, !273}
!2023 = !{!2024, !2025}
!2024 = !DILocalVariable(name: "expr", arg: 1, scope: !2020, file: !3, line: 245, type: !273)
!2025 = !DILocalVariable(name: "n", scope: !2026, file: !3, line: 252, type: !267)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 251, column: 5)
!2027 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 250, column: 7)
!2028 = !DILocation(line: 0, scope: !2020)
!2029 = !DILocation(line: 247, column: 12, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 247, column: 7)
!2031 = !DILocation(line: 247, column: 7, scope: !2020)
!2032 = !DILocation(line: 250, column: 7, scope: !2027)
!2033 = !DILocation(line: 250, column: 24, scope: !2027)
!2034 = !DILocation(line: 250, column: 7, scope: !2020)
!2035 = !DILocation(line: 256, column: 3, scope: !2020)
!2036 = !DILocation(line: 252, column: 44, scope: !2026)
!2037 = !DILocation(line: 0, scope: !2026)
!2038 = !DILocation(line: 253, column: 14, scope: !2026)
!2039 = !DILocation(line: 253, column: 21, scope: !2026)
!2040 = !DILocation(line: 256, column: 10, scope: !2020)
!2041 = !DILocation(line: 256, column: 27, scope: !2020)
!2042 = !DILocation(line: 257, column: 12, scope: !2020)
!2043 = distinct !{!2043, !2035, !2042}
!2044 = !DILocation(line: 260, column: 1, scope: !2020)
!2045 = distinct !DISubprogram(name: "expr_last", scope: !3, file: !3, line: 266, type: !2021, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2046)
!2046 = !{!2047, !2048}
!2047 = !DILocalVariable(name: "expr", arg: 1, scope: !2045, file: !3, line: 266, type: !273)
!2048 = !DILocalVariable(name: "n", scope: !2049, file: !3, line: 273, type: !267)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 272, column: 5)
!2050 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 271, column: 7)
!2051 = !DILocation(line: 0, scope: !2045)
!2052 = !DILocation(line: 268, column: 12, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 268, column: 7)
!2054 = !DILocation(line: 268, column: 7, scope: !2045)
!2055 = !DILocation(line: 271, column: 7, scope: !2050)
!2056 = !DILocation(line: 271, column: 24, scope: !2050)
!2057 = !DILocation(line: 271, column: 7, scope: !2045)
!2058 = !DILocation(line: 277, column: 3, scope: !2045)
!2059 = !DILocation(line: 273, column: 44, scope: !2049)
!2060 = !DILocation(line: 0, scope: !2049)
!2061 = !DILocation(line: 274, column: 14, scope: !2049)
!2062 = !DILocation(line: 274, column: 21, scope: !2049)
!2063 = !DILocation(line: 277, column: 10, scope: !2045)
!2064 = !DILocation(line: 277, column: 27, scope: !2045)
!2065 = !DILocation(line: 278, column: 12, scope: !2045)
!2066 = distinct !{!2066, !2058, !2065}
!2067 = !DILocation(line: 281, column: 1, scope: !2045)
